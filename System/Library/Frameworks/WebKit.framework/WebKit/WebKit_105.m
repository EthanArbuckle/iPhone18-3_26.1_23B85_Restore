WebKit::RemoteRenderingBackend **IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::operator=(WebKit::RemoteRenderingBackend **a1, WebKit::RemoteRenderingBackend **a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>(a1);
    }

    v4 = *a2;
    *a2 = 0;
    v5 = *a1;
    *a1 = v4;
    if (v5 && atomic_fetch_add(v5 + 4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 4);
      (*(*(v5 + 1) + 8))();
    }
  }

  return a1;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
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
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(a1, a2);
  }

  return a1;
}

WebKit::RemoteRenderingBackend **WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, uint64_t a2)
{
  *a2 = -1;
  result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>::~ScopedActiveMessageReceiveQueue((a2 + 8));
  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( a1,  a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(*a2);
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

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteRenderingBackend,WTF::RefPtr<WebKit::RemoteRenderingBackend,WTF::RawPtrTraits<WebKit::RemoteRenderingBackend>,WTF::DefaultRefDerefTraits<WebKit::RemoteRenderingBackend>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RenderingBackendIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB49C3CLL);
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::GraphicsContextGLIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    do
    {
      v13 = (v4 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = (v15 + 16 * v22);
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(v24 + 1);
          *v24 = *v13;
          v24[1] = v13[1];
          v13[1] = 0;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
        }

        else
        {
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGraphicsContextGL,WTF::RefPtr<WebKit::RemoteGraphicsContextGL,WTF::RawPtrTraits<WebKit::RemoteGraphicsContextGL>,WTF::DefaultRefDerefTraits<WebKit::RemoteGraphicsContextGL>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::MediaPlayer &)> &&)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FAE08;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v2 + 16));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::MediaPlayer &)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FAE08;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v3 + 16));
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::GPUConnectionToWebProcess::performWithMediaPlayerOnMainThread(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Function<void ()(WebCore::MediaPlayer &)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 128);
  ++v2[4];
  result = WebKit::RemoteMediaPlayerManagerProxy::mediaPlayer(v2, *(a1 + 16), 1, &v5);
  if (v2[4] == 1)
  {
    result = (*(*v2 + 24))(v2);
  }

  else
  {
    --v2[4];
  }

  v4 = v5;
  if (v5)
  {
    (*(***(a1 + 24) + 16))(**(a1 + 24), v5);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v4);
  }

  return result;
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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

  v7 = WTF::fastMalloc((16 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 16 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    v12 = v5;
    do
    {
      v13 = (v4 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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

          v17 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v18 = 9 * ((v17 + ~(v17 << 13)) ^ ((v17 + ~(v17 << 13)) >> 8));
          v19 = (v18 ^ (v18 >> 15)) + ~((v18 ^ (v18 >> 15)) << 27);
          v20 = v16 & ((v19 >> 31) ^ v19);
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = *(v15 + 16 * v20);
            v20 = (v20 + v21++) & v16;
          }

          while (v23);
          v24 = v15 + 16 * v22;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue((v24 + 8));
          *v24 = *v13;
          *(v24 + 8) = v13[1];
          v13[1] = 0;
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
        }

        else
        {
          IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteGPU,WTF::RefPtr<WebKit::RemoteGPU,WTF::RawPtrTraits<WebKit::RemoteGPU>,WTF::DefaultRefDerefTraits<WebKit::RemoteGPU>>>::~ScopedActiveMessageReceiveQueue(v13 + 1);
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else if (!v4)
  {
    return;
  }

  WTF::fastFree((v4 - 16), v8);
}

void *WTF::Detail::CallableWrapper<WebKit::GPUConnectionToWebProcess::releaseGPU(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FAE30;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 34);
    (*(*v2 + 24))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUConnectionToWebProcess::releaseGPU(WTF::ObjectIdentifierGeneric<WebKit::WebGPUIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FAE30;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 34);
    (*(*v3 + 24))(v3);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteAudioHardwareListenerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
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
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
          v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
          v17 = v13 & ((v16 >> 31) ^ v16);
          v18 = 1;
          do
          {
            v19 = v17;
            v20 = *(v12 + 16 * v17);
            v17 = (v17 + v18++) & v13;
          }

          while (v20);
          v21 = v12 + 16 * v19;
          std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100]((v21 + 8), 0);
          *v21 = *v10;
          v22 = v10[1];
          v10[1] = 0;
          *(v21 + 8) = v22;
          std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100](v10 + 1, 0);
        }

        else
        {
          std::unique_ptr<WebKit::RemoteAudioHardwareListenerProxy>::reset[abi:sn200100](v10 + 1, 0);
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::CoreIPCAuditToken,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::CoreIPCAuditToken>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB4A59CLL);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 40 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 40 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 40 * *(v2 - 4));
  }

  return result;
}

WebCore::TimerBase *WebCore::Timer::Timer<WebKit::GPUProcess,WebKit::GPUProcess>(WebCore::TimerBase *a1, uint64_t a2)
{
  *WebCore::TimerBase::TimerBase(a1) = &unk_1F10EB388;
  v4 = WTF::fastMalloc(0x20);
  *v4 = &unk_1F10FAE58;
  v4[1] = a2;
  v4[2] = WebKit::GPUProcess::tryExitIfUnused;
  v4[3] = 0;
  *(a1 + 6) = v4;
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebCore::Timer::Timer<WebKit::GPUProcess,WebKit::GPUProcess>(WebKit::GPUProcess &,void (WebKit::GPUProcess::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  atomic_fetch_add(v1 + 34, 1u);
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  result = v2(v4);
  if (v1 && atomic_fetch_add(v1 + 34, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 34);
    v6 = *(*v1 + 24);

    return v6(v1);
  }

  return result;
}

uint64_t *WTF::ScopeExit<WTF::CompletionHandler<void ()(void)>>::~ScopeExit(uint64_t *a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    (*(*v2 + 16))(v2);
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = (v2 + 16 * *(v2 - 4));
    if (v3 == a2)
    {
      return result;
    }
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v3 = 0;
  }

  if (v3 != a2)
  {
    *a2 = -1;
    v4 = vadd_s32(*(v2 - 16), 0xFFFFFFFF00000001);
    *(v2 - 16) = v4;
    v5 = *(v2 - 4);
    if (6 * v4.i32[1] < v5 && v5 >= 9)
    {
      return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v5 >> 1, 0);
    }
  }

  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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

  v9 = WTF::fastMalloc((16 * a2 + 16));
  if (a2)
  {
    v11 = a2;
    v12 = v9 + 6;
    do
    {
      *(v12 - 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v12 += 4;
      --v11;
    }

    while (v11);
  }

  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = (v6 + 16 * v13);
      if ((*v15 + 1) >= 2)
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

        v18 = (*v15 + ~(*v15 << 32)) ^ ((*v15 + ~(*v15 << 32)) >> 22);
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
        *v25 = *v15;
        if (v15 == a3)
        {
          v14 = v25;
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v14;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1, a2);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4AAD0);
  }

  if (!a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4AAF0);
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
      return v2 + 16 * v7;
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return v2 + 16 * v7;
      }
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMapTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4AB20);
  }

  return result;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
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
          v16 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(*a1, v14);
          v17 = v14[1];
          v14[1] = 0;
          if (v17)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v17 + 16));
          }

          if (v14 == a3)
          {
            v11 = v16;
          }
        }

        else
        {
          v15 = v14[1];
          v14[1] = 0;
          if (v15)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v15 + 16));
          }
        }
      }

      v14 += 2;
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

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::reinsert(uint64_t a1, void *a2)
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v12 + 16));
  }

  *v11 = *a2;
  v13 = a2[1];
  a2[1] = 0;
  v11[1] = v13;
  return v11;
}

void *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::GPUConnectionToWebProcess,WTF::RawPtrTraits<WebKit::GPUConnectionToWebProcess>,WTF::DefaultRefDerefTraits<WebKit::GPUConnectionToWebProcess>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[2 * v1];
  if (!*(result - 3))
  {
    return &result[2 * v1];
  }

  if (v1)
  {
    v3 = 16 * v1;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v3 -= 16;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FAE80;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FAE80;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_0,void,WTF::Critical,WTF::Synchronous>::call(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      atomic_fetch_add(v4 + 34, 1u);
      result = WebKit::GPUProcess::lowMemoryHandler(v4, a2, a3);
      if (atomic_fetch_add(v4 + 34, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v4 + 34);
        v5 = *(*v4 + 24);

        return v5(v4);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WTF::CompletionHandler<void ()(void)>>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FAEA8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WTF::CompletionHandler<void ()(void)>>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FAEA8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUProcess::initializeGPUProcess(WebKit::GPUProcessCreationParameters &&,WTF::CompletionHandler<void ()(void)> &&)::$_1,void,WTF::CompletionHandler<void ()(void)>>::call(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
LABEL_10:
    (*(*v2 + 16))(v2);
    return (*(*v2 + 8))(v2);
  }

  atomic_fetch_add((v4 + 136), 1u);
  v5 = *(v4 + 40);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10FAED0;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
  {
    v7 = v6;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 66;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v17[1] = IdentifierInternal;
    v18 = v10;
    v17[0] = v7;
    IPC::Connection::sendMessageWithAsyncReply(v5, &v18, v17, 0, 0);
    v12 = v17[0];
    v17[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v11);
      bmalloc::api::tzoneFree(v15, v16);
    }

    if (atomic_fetch_add((v4 + 136), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v4 + 136));
      (*(*v4 + 24))(v4);
    }

    goto LABEL_10;
  }

  result = 141;
  __break(0xC471u);
  return result;
}

uint64_t Messages::GPUProcessProxy::DidDrawRemoteToPDF::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a2, *(a1 + 8));
  v4 = **(a1 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, v4);
}

void *WTF::Detail::CallableWrapper<WebKit::GPUProcess::enableMicrophoneMuteStatusAPI(void)::$_0,void,BOOL>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FAEF8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::GPUProcess::enableMicrophoneMuteStatusAPI(void)::$_0,void,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FAEF8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::GPUProcess::enableMicrophoneMuteStatusAPI(void)::$_0,void,BOOL>::call(void *result, char a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      atomic_fetch_add((v3 + 136), 1u);
      v5 = *(v3 + 40);
      if (v5)
      {
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
        v8 = a2;
        IPC::Connection::send<Messages::GPUProcessProxy::MicrophoneMuteStatusChanged>(v5, &v8);
        result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5);
      }

      else
      {
        v8 = a2;
        result = IPC::Connection::send<Messages::GPUProcessProxy::MicrophoneMuteStatusChanged>(0, &v8);
      }

      if (atomic_fetch_add((v3 + 136), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, (v3 + 136));
        return (*(*v3 + 24))(v3);
      }
    }
  }

  return result;
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::MicrophoneMuteStatusChanged>(uint64_t *a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 61;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Encoder::operator<<<BOOL &>(v4, a2);
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

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::GPUProcess::MediaCaptureAccess,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::GPUProcess::MediaCaptureAccess>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

uint64_t WTF::Vector<WebCore::MockMediaDevice,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 96 * v3;
    do
    {
      if (*(v4 + 88) != 255)
      {
        mpark::detail::visitation::alt::visit_alt<mpark::detail::dtor,mpark::detail::destructor<mpark::detail::traits<WebCore::MockMicrophoneProperties,WebCore::MockSpeakerProperties,WebCore::MockCameraProperties,WebCore::MockDisplayProperties>,(mpark::detail::Trait)1> &>(&v10, v4 + 3);
      }

      *(v4 + 88) = -1;
      v6 = *(v4 + 1);
      *(v4 + 1) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *v4;
      *v4 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v4 = (v4 + 96);
      v5 -= 96;
    }

    while (v5);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::GPUProcess::setShouldListenToVoiceActivity(BOOL)::$_0,void>::call(uint64_t a1, void *a2)
{
  {
    WebKit::GPUProcess::GPUProcess(&WebKit::GPUProcess::singleton(void)::gpuProcess);
  }

  v2 = qword_1EB01DB88;
  if (qword_1EB01DB88)
  {
    while (1)
    {
      v3 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v4 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v4, v3 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_8:
    IPC::Connection::send<Messages::GPUProcessProxy::VoiceActivityDetected>(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  else
  {

    return IPC::Connection::send<Messages::GPUProcessProxy::VoiceActivityDetected>(0, a2);
  }
}

IPC::Encoder *IPC::Connection::send<Messages::GPUProcessProxy::VoiceActivityDetected>(uint64_t *a1, void *a2)
{
  v3 = IPC::Encoder::operator new(0x238, a2);
  *v3 = 69;
  *(v3 + 68) = 0;
  *(v3 + 70) = 0;
  *(v3 + 69) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *(v3 + 1) = 0;
  IPC::Encoder::encodeHeader(v3);
  v8 = v3;
  IPC::Connection::sendMessageImpl(a1, &v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v4);
    return bmalloc::api::tzoneFree(v6, v7);
  }

  return result;
}

uint64_t WTF::checkHashTableKey<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4B714);
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl *a2)
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

  return WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

WTF::StringImpl **WTF::HashMapTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>::translate<PAL::SessionID const&,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>,PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>>> WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<PAL::SessionID const&,WebKit::GPUProcess::GPUSession>(PAL::SessionID const&,WebKit::GPUProcess::GPUSession &&)::{lambda(void)#1}>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v6 = v3;
  WebKit::GPUProcess::GPUSession::operator=((a1 + 8), &v6);
  return WTF::KeyValuePair<WTF::String,WTF::String>::~KeyValuePair(&v6, v4);
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl *a3)
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

  v9 = WTF::fastMalloc((24 * a2 + 16));
  v11 = v9;
  v12 = v9 + 16;
  if (a2)
  {
    bzero((v9 + 16), 24 * a2);
  }

  *a1 = v12;
  v11[2] = a2 - 1;
  v11[3] = a2;
  *v11 = 0;
  v11[1] = v8;
  v13 = 0;
  if (v7)
  {
    v15 = v7;
    v16 = v6;
    do
    {
      if (*v16 != -1)
      {
        if (*v16)
        {
          v17 = WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(*a1, v16);
          WebCore::CrossOriginOpenerPolicy::~CrossOriginOpenerPolicy(v16, v18);
          if (v16 == a3)
          {
            v13 = v17;
          }
        }

        else
        {
          WebCore::CrossOriginOpenerPolicy::~CrossOriginOpenerPolicy(v16, v10);
        }
      }

      v16 = (v16 + 24);
      --v15;
    }

    while (v15);
    goto LABEL_16;
  }

  result = 0;
  if (v6)
  {
LABEL_16:
    WTF::fastFree((v6 - 16), v10);
    return v13;
  }

  return result;
}

void *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::reinsert(uint64_t a1, WTF::StringImpl *a2)
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
    v9 = (a1 + 24 * v7);
    v7 = (v7 + v8++) & v3;
  }

  while (*v9);
  v10 = v9[2];
  v9[2] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  v11 = v9[1];
  v9[1] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, a2);
  }

  v12 = *a2;
  v13 = *(a2 + 1);
  *(a2 + 1) = 0;
  *v9 = v12;
  v9[1] = v13;
  v14 = *(a2 + 2);
  *(a2 + 2) = 0;
  v9[2] = v14;
  return v9;
}

WTF::StringImpl **WebKit::GPUProcess::GPUSession::operator=(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 1);
  *(a2 + 1) = 0;
  v7 = a1[1];
  a1[1] = v6;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WebKit::GPUProcess::GPUSession>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<PAL::SessionID,WebKit::GPUProcess::GPUSession,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WebKit::GPUProcess::GPUSession>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<PAL::SessionID>>,(WTF::ShouldValidateKey)1,PAL::SessionID>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB4BAF0);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  result = (v2 + 24 * v8);
  v10 = *result;
  if (*result != v3)
  {
    v11 = 1;
    while (v10)
    {
      v8 = (v8 + v11) & v4;
      result = (v2 + 24 * v8);
      v10 = *result;
      ++v11;
      if (*result == v3)
      {
        return result;
      }
    }

    return (v2 + 24 * *(v2 - 4));
  }

  return result;
}

uint64_t WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::ensure<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::add(IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>> const&,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>)::{lambda(void)#1}>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == 0 || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB4BD28);
  }

  v8 = *a1;
  if (*a1
    || (WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0),
        (v8 = *a1) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  v12 = result & v9;
  v13 = v8 + 56 * (result & v9);
  v14 = *v13;
  v15 = *(v13 + 8);
  if (*v13 != 0)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (*a2 == v14 && a2[1] == v15)
      {
        v24 = *a1;
        if (*a1)
        {
          v25 = *(v24 - 4);
        }

        else
        {
          v25 = 0;
        }

        v27 = 0;
        v26 = v24 + 56 * v25;
        goto LABEL_33;
      }

      if (v14 == -1)
      {
        v16 = v13;
      }

      v12 = (v12 + v17) & v9;
      v13 = v8 + 56 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      ++v17;
    }

    while (*v13 != 0);
    if (v16)
    {
      *(v16 + 48) = 0;
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0u;
      *v16 = 0u;
      --*(*a1 - 16);
      v13 = v16;
    }
  }

  *v13 = *a2;
  v18 = **a3;
  **a3 = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  if (*(v13 + 48))
  {
    v19 = *(v13 + 40);
    *(v13 + 40) = v18;
    if (v19)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v19 + 8), v11);
    }
  }

  else
  {
    *(v13 + 40) = v18;
    *(v13 + 48) = 1;
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
LABEL_24:
      result = WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v13);
      v13 = result;
      v20 = *a1;
      if (*a1)
      {
        LODWORD(v23) = *(v20 - 4);
      }

      else
      {
        LODWORD(v23) = 0;
      }
    }
  }

  else if (3 * v23 <= 4 * v22)
  {
    goto LABEL_24;
  }

  v26 = v20 + 56 * v23;
  v27 = 1;
LABEL_33:
  *a4 = v13;
  *(a4 + 8) = v26;
  *(a4 + 16) = v27;
  return result;
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((56 * a2 + 16));
  v10 = v8;
  v11 = v8 + 16;
  if (a2)
  {
    bzero((v8 + 16), 56 * a2);
  }

  *a1 = v11;
  v10[2] = a2 - 1;
  v10[3] = a2;
  *v10 = 0;
  v10[1] = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 56 * v12;
      v15 = *v14;
      if (*v14 != -1)
      {
        v9 = *(v14 + 8);
        if (v15 | v9)
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

          v19 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v15, v9);
          v20 = 0;
          do
          {
            v21 = v17 + 56 * (v19 & v18);
            v19 = ++v20 + (v19 & v18);
          }

          while (*v21 != 0);
          if (*(v21 + 48) == 1)
          {
            v22 = *(v21 + 40);
            *(v21 + 40) = 0;
            if (v22)
            {
              WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v22 + 8), v9);
            }
          }

          *v21 = *v14;
          v23 = *(v14 + 16);
          *(v21 + 32) = *(v14 + 32);
          *(v21 + 16) = v23;
          *(v21 + 40) = 0;
          *(v21 + 48) = 0;
          if (*(v14 + 48) == 1)
          {
            v24 = *(v14 + 40);
            *(v14 + 40) = 0;
            *(v21 + 40) = v24;
            *(v21 + 48) = 1;
            if (*(v14 + 48))
            {
              v25 = *(v14 + 40);
              *(v14 + 40) = 0;
              if (v25)
              {
                WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v25 + 8), v9);
              }
            }
          }

          if (v14 == a3)
          {
            v13 = v21;
          }
        }

        else if (*(v14 + 48) == 1)
        {
          v16 = *(v14 + 40);
          *(v14 + 40) = 0;
          if (v16)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v16 + 8), v9);
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

atomic_uchar **WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::remove(atomic_uchar **result, _BYTE *a2)
{
  v2 = result;
  *a2 = xmmword_19E7035E0;
  if (a2[48] == 1)
  {
    v3 = *(a2 + 5);
    *(a2 + 5) = 0;
    if (v3)
    {
      result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
    }
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>>,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState,WTF::DefaultHash<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<IPC::ThreadSafeObjectHeap<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::ReferenceState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<IPC::ObjectIdentifierReference<WTF::ObjectIdentifierGeneric<WebKit::RemoteSerializedImageBufferIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::GenericHashTraits<WTF::RefPtr<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>::take<WebCore::ImageBuffer*>(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2)
  {
    while (1)
    {
      v4 = *(a2 + 8);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v5 = *(a2 + 8);
      atomic_compare_exchange_strong_explicit((a2 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_4;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
  }

LABEL_4:
  *v3 = a2;
  return result;
}

uint64_t WTF::Vector<WebCore::ShapeDetection::DetectedBarcode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 48 * v3;
    v5 = *a1 + 32;
    do
    {
      v6 = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        WTF::fastFree(v6, a2);
      }

      v7 = *(v5 - 16);
      *(v5 - 16) = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v5 += 48;
      v4 -= 48;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::ShapeDetection::DetectedFace,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 40 * v3;
    v6 = v4 + 16;
    do
    {
      if (*(v6 + 16) == 1)
      {
        v6 = WTF::Vector<WebCore::ShapeDetection::Landmark,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, a2);
      }

      v6 += 40;
      v5 -= 40;
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

uint64_t WTF::Vector<WebCore::ShapeDetection::DetectedText,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 40 * v3;
    v5 = *a1 + 16;
    do
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        WTF::fastFree(v6, a2);
      }

      v7 = *v5;
      *v5 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v5 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v8, a2);
  }

  return a1;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
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
    v13 = v7;
    do
    {
      v14 = (v6 + 16 * v11);
      v15 = *v14;
      if (*v14 != -1)
      {
        if (v15)
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

          v19 = (v15 + ~(v15 << 32)) ^ ((v15 + ~(v15 << 32)) >> 22);
          v20 = 9 * ((v19 + ~(v19 << 13)) ^ ((v19 + ~(v19 << 13)) >> 8));
          v21 = (v20 ^ (v20 >> 15)) + ~((v20 ^ (v20 >> 15)) << 27);
          v22 = v18 & ((v21 >> 31) ^ v21);
          v23 = 1;
          do
          {
            v24 = v22;
            v25 = *(v17 + 16 * v22);
            v22 = (v22 + v23++) & v18;
          }

          while (v25);
          v26 = (v17 + 16 * v24);
          v27 = v26[1];
          v26[1] = 0;
          if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v27 + 2);
            (*(*v27 + 8))(v27);
          }

          *v26 = *v14;
          v28 = v14[1];
          v14[1] = 0;
          v26[1] = v28;
          v29 = v14[1];
          v14[1] = 0;
          if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29 + 2);
            (*(*v29 + 8))(v29);
          }

          if (v14 == a3)
          {
            v12 = v26;
          }
        }

        else
        {
          v16 = v14[1];
          v14[1] = 0;
          if (v16)
          {
            if (atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v16 + 2);
              (*(*v16 + 8))(v16);
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v13);
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

unsigned int *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  result = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 8))(result);
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteBarcodeDetector,WTF::RawPtrTraits<WebKit::RemoteBarcodeDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteBarcodeDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB4C610);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteFaceDetector,WTF::RawPtrTraits<WebKit::RemoteFaceDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteFaceDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB4C704);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteTextDetector,WTF::RawPtrTraits<WebKit::RemoteTextDetector>,WTF::DefaultRefDerefTraits<WebKit::RemoteTextDetector>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::ShapeDetectionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19DB4C7F8);
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

void sub_19DB4CD24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4D218(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4D53C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v56 = *(v54 - 56);
  *(v54 - 56) = 0;
  if (v56)
  {
    if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v56, a2);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB4DE70(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, WTF::StringImpl *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, WTF *a47, uint64_t a48, WTF::StringImpl *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, WTF::StringImpl *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, WTF::StringImpl *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a45, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a43, v73);
  if ((a42 & 0x8000000000000) != 0)
  {
    v84 = (a42 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a42 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v84);
      WTF::fastFree(v84, v74);
    }
  }

  if ((a41 & 0x8000000000000) != 0)
  {
    v83 = (a41 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a41 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v83);
      WTF::fastFree(v83, v74);
    }
  }

  if (a36 && atomic_fetch_add_explicit(a36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a36, v74);
  }

  if (a31 && atomic_fetch_add_explicit(a31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a31, v74);
  }

  if (a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, v74);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, v74);
  }

  if (a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, v74);
  }

  if (a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, v74);
  }

  if (a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, v74);
  }

  if (a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, v74);
  }

  v75 = a49;
  a49 = 0;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v74);
  }

  v76 = a54;
  a54 = 0;
  if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v76, v74);
  }

  v77 = a59;
  a59 = 0;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v74);
  }

  v78 = a64;
  a64 = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v74);
  }

  v79 = a69;
  a69 = 0;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v74);
  }

  v80 = a70;
  a70 = 0;
  if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v80, v74);
  }

  v81 = a71;
  a71 = 0;
  if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v81, v74);
  }

  v82 = a72;
  a72 = 0;
  if (v82)
  {
    if (atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v82, v74);
    }
  }

  _Unwind_Resume(a1);
}

void sub_19DB4E614(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CFTypeRef *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, char a21)
{
  if (a15)
  {
    CFRelease(a15[1]);
  }

  WebCore::ApplicationManifest::~ApplicationManifest(&a21, a2);
  _Unwind_Resume(a1);
}

void sub_19DB4E720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void *nullableNSString(void *result, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
    result = MEMORY[0x19EB00B70](a2);
    if (atomic_fetch_add_explicit(a2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {

      return WTF::StringImpl::destroy(a2, v3);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_19DB4E7A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4E8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4E928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4E99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4EA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4EA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4EB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4EB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4ECCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4EDC0(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB4EE80(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DB4EEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4F380(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_19DB4FA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4FB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4FBD4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4FCCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB4FFA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DB50360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

unsigned int *WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WebCore::ApplicationManifest::Icon>(NSArray *)::{lambda(unsigned long)#1}>(unsigned int *result, unint64_t a2, id **a3)
{
  v3 = result;
  v47[16] = *MEMORY[0x1E69E9840];
  *result = 0;
  *(result + 1) = 0;
  if (!a2)
  {
LABEL_26:
    WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v3, a2);
    return v3;
  }

  v4 = a2;
  if (a2 < 0x38E38E4)
  {
    v6 = 72 * a2;
    v7 = WTF::fastMalloc((72 * a2));
    v8 = 0;
    v3[2] = v6 / 0x48;
    *v3 = v7;
    do
    {
      v9 = [**a3 objectAtIndexedSubscript:v8];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MEMORY[0x19EB01DE0](&v36, [v9 src]);
          v47[0] = [v9 sizes];
          v10 = [v47[0] count];
          *&v43 = v47;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v39, v10, &v43, 0);
          MEMORY[0x19EB02040](&v41, [v9 type]);
          v11 = [v9 purposes];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v12 = 0;
          v14 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v14)
          {
            v15 = *v44;
            do
            {
              v16 = 0;
              do
              {
                if (*v44 != v15)
                {
                  objc_enumerationMutation(v11);
                }

                v12 |= [*(*(&v43 + 1) + 8 * v16++) integerValue];
              }

              while (v14 != v16);
              v14 = [v11 countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v14);
          }

          v42 = v12;
          v17 = v36;
          v36 = 0;
          v28 = v17;
          v29 = v37;
          v30 = v38;
          LODWORD(v37) = v37 & 0xFFFFFFFE;
          v31 = v39;
          v18 = v40;
          v39 = 0;
          v40 = 0;
          v32 = v18;
          v33 = v41;
          v34 = v12;
          v35 = 1;
          v41 = 0;
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v13);
          v20 = v36;
          v36 = 0;
          if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v20, v19);
          }

          if (v35)
          {
            WTF::URL::URL(*v3 + 72 * v3[3], &v28);
            *(v22 + 40) = 0;
            *(v22 + 48) = 0;
            v23 = v31;
            v31 = 0;
            *(v22 + 40) = v23;
            LODWORD(v23) = v32;
            LODWORD(v32) = 0;
            *(v22 + 48) = v23;
            LODWORD(v23) = HIDWORD(v32);
            HIDWORD(v32) = 0;
            *(v22 + 52) = v23;
            v24 = v33;
            v33 = 0;
            *(v22 + 56) = v24;
            *(v22 + 64) = v34;
            ++v3[3];
            if (v35)
            {
              v25 = v33;
              v33 = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v21);
              }

              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v21);
              v27 = v28;
              v28 = 0;
              if (v27)
              {
                if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v27, v26);
                }
              }
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != v4);
    a2 = v3[3];
    goto LABEL_26;
  }

  __break(0xC471u);
  return result;
}

void sub_19DB506C8(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, char a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27)
{
  v29 = *v27;
  if (*v27)
  {
    *v27 = 0;
    *(v27 + 8) = 0;
    WTF::fastFree(v29, a2);
  }

  _Unwind_Resume(exception_object);
}

WebCore::ImageBufferAllocator *WebKit::ImageBufferShareableAllocator::ImageBufferShareableAllocator(WebCore::ImageBufferAllocator *a1, const WTF::MachSendRight *a2)
{
  v4 = WebCore::ImageBufferAllocator::ImageBufferAllocator(a1);
  *v4 = &unk_1F10FB008;
  WTF::MachSendRight::MachSendRight((v4 + 1), a2);
  return a1;
}

uint64_t WebKit::ImageBufferShareableAllocator::createImageBuffer@<X0>(uint64_t *a1@<X1>, CFTypeRef *a2@<X2>, uint64_t *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  WebCore::ImageBuffer::create<WebKit::ImageBufferShareableBitmapBackend,WebCore::ImageBuffer>(a1, a2, 1, 0, v9, &v12, 1.0);
  WebCore::ImageBufferCreationContext::~ImageBufferCreationContext(v9);
  result = v12;
  if (v12)
  {
    v5 = (*(*v12 + 136))(v12);
    if ((*(*v5 + 16))(v5))
    {
      (*(*v5 + 40))(&v11, v5);
      result = v11;
      if (v11)
      {
        WebCore::ShareableBitmap::createHandle();
        if (v10 == 1)
        {
          WebCore::SharedMemoryHandle::setOwnershipOfMemory();
          v7 = v12;
          v12 = 0;
        }

        else
        {
          v7 = 0;
        }

        *a3 = v7;
        std::optional<WebCore::ShareableBitmapHandle>::~optional(v9);
        result = v11;
        v11 = 0;
        if (result)
        {
          result = WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(result, v6);
        }
      }

      else
      {
        *a3 = 0;
      }

      v8 = v12;
      v12 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v8 + 8), v6);
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
    *a3 = 0;
  }

  return result;
}

void WebCore::ImageBufferCreationContext::~ImageBufferCreationContext(atomic_uint **this)
{
  WTF::MachSendRight::~MachSendRight((this + 12));
  v2 = *this;
  *this = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v2);
  }
}

_DWORD *WebKit::ImageBufferShareableAllocator::createPixelBuffer@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  WebKit::ShareablePixelBuffer::tryCreate(a1, a2, &v11);
  result = v11;
  if (!v11)
  {
    *a3 = 0;
    return result;
  }

  WebKit::ShareablePixelBuffer::protectedData(v11, &v8);
  WebCore::SharedMemory::createHandle();
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v5);
  }

  if (v10 == 1)
  {
    result = WebCore::SharedMemoryHandle::setOwnershipOfMemory();
    v6 = v11;
    v11 = 0;
    v7 = v10;
    *a3 = v6;
    if ((v7 & 1) == 0)
    {
      return result;
    }

    WTF::MachSendRight::~MachSendRight(v9);
  }

  else
  {
    *a3 = 0;
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::startListeningForIPC(WebKit::RemoteDisplayListRecorder *this)
{
  v1 = *(*(this + 5) + 40);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::startReceivingMessages(v1, this, 0x4Eu, *(this + 4));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::RemoteDisplayListRecorder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_1F10FB038;
  while (1)
  {
    v8 = *(a2 + 8);
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = *(a2 + 8);
    atomic_compare_exchange_strong_explicit((a2 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v9 == v8)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(a2 + 8));
LABEL_4:
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  atomic_fetch_add((a4 + 16), 1u);
  *(a1 + 40) = a4;
  v10 = *(a4 + 56);
  atomic_fetch_add((v10 + 16), 1u);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v10;
  return a1;
}

void WebKit::RemoteDisplayListRecorder::~RemoteDisplayListRecorder(WebKit::SharedVideoFrameReader **this)
{
  *this = &unk_1F10FB038;
  std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](this + 8, 0);
  v3 = this[7];
  this[7] = 0;
  if (v3)
  {
    if (*(v3 + 2) == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }

  v4 = this[6];
  this[6] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v4 + 4);
  }

  v5 = this[5];
  this[5] = 0;
  if (v5 && atomic_fetch_add(v5 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 4);
    (*(*(v5 + 1) + 8))();
  }

  v6 = this[3];
  this[3] = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6 + 1, v2);
  }

  v7 = this[2];
  if (v7)
  {
    *(v7 + 1) = 0;
    v8 = this[2];
    this[2] = 0;
    if (v8)
    {
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v2);
      }
    }
  }
}

{
  WebKit::RemoteDisplayListRecorder::~RemoteDisplayListRecorder(this);

  WTF::fastFree(v1, v2);
}

uint64_t WebKit::RemoteRenderingBackend::imageBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  result = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>((a1 + 144), &v9);
  if (result)
  {
    v5 = result;
    atomic_fetch_add((result + 8), 1u);
    v6 = *(result + 16);
    while (1)
    {
      v7 = *(v6 + 8);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(v6 + 8);
      atomic_compare_exchange_strong_explicit((v6 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_5;
      }
    }

    result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v6 + 8));
LABEL_5:
    *a3 = v6;
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      return (*(*v5 + 8))(v5);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

atomic_uchar **WebKit::RemoteDisplayListRecorder::sourceImage(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  WebKit::RemoteResourceCache::cachedNativeImage(&v23, *(*(a2 + 40) + 72), a3);
  v6 = v23;
  if (v23)
  {
    while (1)
    {
      v7 = v6[1];
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = v6[1];
      atomic_compare_exchange_strong_explicit(v6 + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[1]);
LABEL_4:
    v20 = v6;
    v21 = 0;
    WebCore::SourceImage::SourceImage();
    WebCore::SourceImage::SourceImage();
    a1[40] = 1;
    MEMORY[0x19EB03E10](v22);
    result = mpark::variant<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v20, v9);
    v23 = 0;
    do
    {
      v12 = v6[1];
      if ((v12 & 1) == 0)
      {
        return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v6[1], v11);
      }

      v13 = v6[1];
      atomic_compare_exchange_strong_explicit(v6 + 1, &v13, v12 - 2, memory_order_relaxed, memory_order_relaxed);
    }

    while (v13 != v12);
    if (v12 == 3)
    {
      return (*(*v6 + 8))(v6);
    }
  }

  else
  {
    result = WebKit::RemoteRenderingBackend::imageBuffer(*(a2 + 40), a3, &v23);
    v14 = v23;
    if (v23)
    {
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15;
        if ((*v15 & 1) == 0)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          goto LABEL_13;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v15);
LABEL_13:
      v20 = v14;
      v21 = 1;
      WebCore::SourceImage::SourceImage();
      WebCore::SourceImage::SourceImage();
      a1[40] = 1;
      MEMORY[0x19EB03E10](v22);
      mpark::variant<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>::~variant(&v20, v18);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v15, v19);
    }

    else
    {
      *a1 = 0;
      a1[40] = 0;
    }
  }

  return result;
}

void *WebKit::RemoteResourceCache::cachedNativeImage(void *result, void *a2, uint64_t a3)
{
  if (!a2)
  {
LABEL_12:
    v16 = 0;
    v14 = result;
    WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v16, a2);
    result = v14;
    v9 = 0;
    goto LABEL_6;
  }

  v3 = *(a2 - 2);
  v4 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
  v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
  v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
  v7 = v3 & ((v6 >> 31) ^ v6);
  v8 = *(a2 + 2 * v7);
  if (v8 != a3)
  {
    v12 = 1;
    while (v8)
    {
      v7 = (v7 + v12) & v3;
      v8 = *(a2 + 2 * v7);
      ++v12;
      if (v8 == a3)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_12;
  }

LABEL_3:
  v9 = *(a2 + 2 * v7 + 1);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_6;
      }
    }

    v13 = result;
    v15 = v9;
    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
    result = v13;
    v9 = v15;
  }

LABEL_6:
  *result = v9;
  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::rotate(WebKit::RemoteDisplayListRecorder *this, float a2)
{
  v3 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 664);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

uint64_t WebCore::GraphicsContext::setFillColor(WebCore::GraphicsContext *this, const WebCore::Color *a2)
{
  v3 = *a2;
  v8.m_colorAndFlags = v3;
  if ((v3 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v10 = 0;
  WebCore::GraphicsContextState::setProperty<WebCore::SourceBrush>(this + 8, 1uLL, 0, &v8);
  if (v10 && v10 != 255)
  {
    if (v10 == 1)
    {
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v9, v4);
    }

    else
    {
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v7);
      }
    }
  }

  v10 = -1;
  if ((v8.m_colorAndFlags & 0x8000000000000) != 0)
  {
    v6 = (v8.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }
  }

  return (*(*this + 96))(this, this + 8, 0);
}

uint64_t WebKit::RemoteDisplayListRecorder::setFillColor(WebKit::RemoteDisplayListRecorder *this, const WebCore::Color *a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));

  return WebCore::GraphicsContext::setFillColor(v3, a2);
}

atomic_uchar ***WebKit::RemoteDisplayListRecorder::setFillCachedGradient(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteResourceCache::cachedNativeImage(&v8, *(*(a1 + 40) + 80), a2);
  v4 = v8;
  if (v8)
  {
    v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = v4;
    WebCore::SourceBrush::setGradient();
    v5[38] |= 1u;
    (*(*v5 + 96))(v5, v5 + 2, 0);
    return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v7, v6);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::setFillGradient(uint64_t a1)
{
  v1 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  WebCore::SourceBrush::setGradient();
  v1[38] |= 1u;
  v2 = *(*v1 + 96);

  return v2(v1, v1 + 2, 0);
}

_DWORD *WebKit::RemoteDisplayListRecorder::setFillPattern(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteDisplayListRecorder::sourceImage(v6, a1, a2);
  if (v7 == 1)
  {
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    if (v7)
    {
      v4 = result;
      WebCore::Pattern::create();
      WebCore::SourceBrush::setPattern();
      v4[38] |= 1u;
      (*(*v4 + 96))(v4, v4 + 2, 0);
      result = v5;
      if (v5)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v5);
      }

      if (v7)
      {
        return MEMORY[0x19EB03E10](v6);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::setFillRule(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (*(v3 + 160) != a2)
  {
    *(v3 + 160) = a2;
    *(v3 + 152) |= 2u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

unsigned int *WebKit::RemoteDisplayListRecorder::setStrokePackedColor(uint64_t a1, unsigned int a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v6 = a2 | 0x1104000000000000;
  result = WebCore::GraphicsContext::setStrokeColor(v3, &v6);
  if ((v6 & 0x8000000000000) != 0)
  {
    result = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

uint64_t WebCore::GraphicsContext::setStrokeColor(WebCore::GraphicsContext *this, const WebCore::Color *a2)
{
  v3 = *a2;
  v8.m_colorAndFlags = v3;
  if ((v3 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v10 = 0;
  WebCore::GraphicsContextState::setProperty<WebCore::SourceBrush>(this + 8, 4uLL, 0x48, &v8);
  if (v10 && v10 != 255)
  {
    if (v10 == 1)
    {
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v9, v4);
    }

    else
    {
      v7 = v9;
      v9 = 0;
      if (v7)
      {
        WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v7);
      }
    }
  }

  v10 = -1;
  if ((v8.m_colorAndFlags & 0x8000000000000) != 0)
  {
    v6 = (v8.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v8.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }
  }

  return (*(*this + 96))(this, this + 8, 2);
}

uint64_t WebKit::RemoteDisplayListRecorder::setStrokeColor(WebKit::RemoteDisplayListRecorder *this, const WebCore::Color *a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));

  return WebCore::GraphicsContext::setStrokeColor(v3, a2);
}

atomic_uchar ***WebKit::RemoteDisplayListRecorder::setStrokeCachedGradient(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteResourceCache::cachedNativeImage(&v8, *(*(a1 + 40) + 80), a2);
  v4 = v8;
  if (v8)
  {
    v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v7 = v4;
    WebCore::SourceBrush::setGradient();
    v5[38] |= 4u;
    (*(*v5 + 96))(v5, v5 + 2, 2);
    return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v7, v6);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::setStrokeGradient(uint64_t a1)
{
  v1 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  WebCore::SourceBrush::setGradient();
  v1[38] |= 4u;
  v2 = *(*v1 + 96);

  return v2(v1, v1 + 2, 2);
}

_DWORD *WebKit::RemoteDisplayListRecorder::setStrokePattern(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteDisplayListRecorder::sourceImage(v6, a1, a2);
  if (v7 == 1)
  {
    result = (*(**(a1 + 24) + 16))(*(a1 + 24));
    if (v7)
    {
      v4 = result;
      WebCore::Pattern::create();
      WebCore::SourceBrush::setPattern();
      v4[38] |= 4u;
      (*(*v4 + 96))(v4, v4 + 2, 2);
      result = v5;
      if (v5)
      {
        result = WTF::ThreadSafeRefCounted<WebCore::Pattern,(WTF::DestructionThread)0>::deref(v5);
      }

      if (v7)
      {
        return MEMORY[0x19EB03E10](v6);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::setStrokeStyle(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (*(v3 + 161) != a2)
  {
    *(v3 + 161) = a2;
    *(v3 + 152) |= 0x10u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebCore::GraphicsContext::setCompositeMode(uint64_t a1, __int16 a2)
{
  if (__PAIR64__(*(a1 + 163), *(a1 + 162)) != __PAIR64__(HIBYTE(a2), a2))
  {
    *(a1 + 162) = a2;
    *(a1 + 152) |= 0x20u;
  }

  return (*(*a1 + 96))(a1, a1 + 8, 5);
}

WebCore::GraphicsContext *WebKit::RemoteDisplayListRecorder::setDropShadow(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  result = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (v3 == 1)
  {
    if (*(a2 + 32))
    {

      return WebCore::GraphicsContext::setDropShadow(result, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return WebCore::GraphicsContext::clearDropShadow(result);
  }

  return result;
}

uint64_t WebCore::GraphicsContext::setDropShadow(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v3 = a2[2];
  v9 = v3;
  if ((v3 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v3 & 0xFFFFFFFFFFFFLL), 1u);
  }

  v10 = a2[3];
  v11 = 1;
  WebCore::GraphicsContextState::setProperty<std::optional<WebCore::GraphicsDropShadow>>(a1 + 8, 0x40uLL, 160, &v7);
  if (v11 == 1 && (v9 & 0x8000000000000) != 0)
  {
    v6 = (v9 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v9 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }
  }

  return (*(*a1 + 96))(a1, a1 + 8, 6);
}

uint64_t WebCore::GraphicsContext::clearDropShadow(WebCore::GraphicsContext *this)
{
  v5[0] = 0;
  v7 = 0;
  WebCore::GraphicsContextState::setProperty<std::optional<WebCore::GraphicsDropShadow>>(this + 8, 0x40uLL, 160, v5);
  if (v7 == 1 && (v6 & 0x8000000000000) != 0)
  {
    v4 = (v6 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v2);
    }
  }

  return (*(*this + 96))(this, this + 8, 6);
}

uint64_t WebKit::RemoteDisplayListRecorder::setStyle(uint64_t a1, float *a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v5 = (v3 + 208);
  v6 = *(v3 + 296);
  v7 = *(a2 + 88);
  v8 = v6 != 1 || v7 == 0;
  if (v8)
  {
    v11 = v6 ^ v7 ^ 1;
  }

  else
  {
    v9 = *(v3 + 288);
    v10 = *(a2 + 80);
    v11 = v10 == v9;
    if (v9 != 255 && v10 == v9)
    {
      if (!*(v3 + 288))
      {
        v16 = *(v3 + 208) == *a2 && *(v3 + 212) == a2[1];
        if (v16 && *(v3 + 216) == a2[2])
        {
          v17 = *(v3 + 224);
          v18 = *(a2 + 2);
          if ((v17 & 0x8000000000000) != 0)
          {
            if ((v18 & 0x8000000000000) != 0)
            {
              v30 = 0;
              v31 = 0;
              v36 = *((v17 & 0xFFFFFFFFFFFFLL) + 4);
              v35 = *((v18 & 0xFFFFFFFFFFFFLL) + 4);
              do
              {
                if (*(&v36 + v31) != *(&v35 + v31))
                {
                  break;
                }

                v30 = v31++ > 2;
              }

              while (v31 != 4);
              if (!((v18 ^ v17) >> 56) && v30 && BYTE6(v17) == BYTE6(v18))
              {
                goto LABEL_15;
              }
            }
          }

          else if (v17 == v18 && (v18 & 0x8000000000000) == 0)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_12;
      }

      if (v9 == 1)
      {
        if (*(v3 + 208) == *a2 && *(v3 + 212) == a2[1])
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      v20 = 0;
      do
      {
        v21 = *(v5 + v20 * 4);
        v22 = a2[v20];
        v11 = v21 == v22;
        if (v21 != v22)
        {
          break;
        }

        v8 = v20++ == 19;
      }

      while (!v8);
    }
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v6 != v7)
  {
    v33 = v3;
    if (v6)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(v3 + 208, v4);
      v3 = v33;
      *(v33 + 296) = 0;
      goto LABEL_14;
    }

    *(v3 + 208) = 0;
    *(v3 + 288) = -1;
    if (*(a2 + 80) > 1u)
    {
      if (*(a2 + 80) != 2)
      {
LABEL_63:
        *(v3 + 296) = 1;
        goto LABEL_14;
      }

      *v5 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 2);
      v28 = *(a2 + 4);
      *(v3 + 256) = *(a2 + 3);
      *(v3 + 272) = v28;
      *(v3 + 224) = v26;
      *(v3 + 240) = v27;
    }

    else if (*(a2 + 80))
    {
      *v5 = *a2;
    }

    else
    {
      v24 = *a2;
      *(v3 + 216) = a2[2];
      *v5 = v24;
      v25 = *(a2 + 2);
      *(v3 + 224) = v25;
      if ((v25 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 1u);
      }

      *(v3 + 232) = *(a2 + 3);
    }

    *(v3 + 288) = *(a2 + 80);
    goto LABEL_63;
  }

  if (v6)
  {
    v34 = v3;
    v23 = *(a2 + 80);
    if (*(v3 + 288) == 255)
    {
      if (v23 == 255)
      {
        goto LABEL_14;
      }
    }

    else if (v23 == 255)
    {
      if (!*(v3 + 288))
      {
        v29 = *(v3 + 224);
        if ((v29 & 0x8000000000000) != 0)
        {
          v32 = (v29 & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((v29 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v32);
            WTF::fastFree(v32, v4);
          }
        }
      }

      v3 = v34;
      *(v34 + 288) = -1;
      goto LABEL_14;
    }

    *&v36 = v3 + 208;
    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN7WebCore18GraphicsDropShadowENS6_20GraphicsGaussianBlurENS6_19GraphicsColorMatrixEEEEE14generic_assignIRKNS0_15copy_assignmentISA_LNS0_5TraitE1EEEEEvOT_EUlRSI_OT0_E_JRSB_SH_EEEDcmSJ_DpOT0_(v23, &v36, v5, a2);
    v3 = v34;
  }

LABEL_14:
  *(v3 + 152) |= 0x80u;
LABEL_15:
  v13 = *(*v3 + 96);

  return v13();
}

uint64_t WebKit::RemoteDisplayListRecorder::setAlpha(WebKit::RemoteDisplayListRecorder *this, float a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 304) != a2)
  {
    *(v3 + 304) = a2;
    *(v3 + 152) |= 0x100u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setTextDrawingMode(uint64_t a1, unsigned __int8 a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (*(v3 + 309) != a2)
  {
    *(v3 + 309) = a2;
    *(v3 + 152) |= 0x200u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setImageInterpolationQuality(uint64_t a1, int a2)
{
  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  if (*(v3 + 308) != a2)
  {
    *(v3 + 308) = a2;
    *(v3 + 152) |= 0x400u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setShouldAntialias(WebKit::RemoteDisplayListRecorder *this, int a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 310) != a2)
  {
    *(v3 + 310) = a2;
    *(v3 + 152) |= 0x800u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setShouldSmoothFonts(WebKit::RemoteDisplayListRecorder *this, int a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 311) != a2)
  {
    *(v3 + 311) = a2;
    *(v3 + 152) |= 0x1000u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setShouldSubpixelQuantizeFonts(WebKit::RemoteDisplayListRecorder *this, int a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 312) != a2)
  {
    *(v3 + 312) = a2;
    *(v3 + 152) |= 0x2000u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setShadowsIgnoreTransforms(WebKit::RemoteDisplayListRecorder *this, int a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 313) != a2)
  {
    *(v3 + 313) = a2;
    *(v3 + 152) |= 0x4000u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

uint64_t WebKit::RemoteDisplayListRecorder::setDrawLuminanceMask(WebKit::RemoteDisplayListRecorder *this, int a2)
{
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  if (*(v3 + 314) != a2)
  {
    *(v3 + 314) = a2;
    *(v3 + 152) |= 0x8000u;
  }

  v4 = *(*v3 + 96);

  return v4();
}

WTF *WebKit::RemoteDisplayListRecorder::setLineDash(uint64_t a1, uint64_t **a2, float a3)
{
  v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v6 = *a2;
  if (*a2)
  {
    v10 = v5;
    v11 = *v6;
    if (v11)
    {
      WTF::EmbeddedFixedVector<double,WTF::FastMalloc>::create<double const,18446744073709551615ul>(v6 + 1, v11, &v12);
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    v5 = v10;
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  (*(*v5 + 312))(v5, &v12, a3);
  result = v12;
  v12 = 0;
  if (result)
  {
    return WTF::fastFree(result, v8);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::clip(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 488);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::clipRoundedRect(WebKit::RemoteDisplayListRecorder *this, const FloatRoundedRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 496);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::clipOut(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 504);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::clipOutRoundedRect(WebKit::RemoteDisplayListRecorder *this, const FloatRoundedRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 520);

  return v2();
}

atomic_uchar **WebKit::RemoteDisplayListRecorder::clipToImageBuffer(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteRenderingBackend::imageBuffer(*(a1 + 40), a2, &v7);
  v4 = v7;
  if (v7)
  {
    v5 = *(*(**(a1 + 24) + 16))(*(a1 + 24));
    (*(v5 + 536))();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), v6);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::clipOutToPath(WebKit::RemoteDisplayListRecorder *this, const Path *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 512);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::clipPath(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 528);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::resetClip(WebKit::RemoteDisplayListRecorder *this)
{
  v1 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 480);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::drawFilteredImageBufferInternal(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    result = WebKit::RemoteRenderingBackend::imageBuffer(*(a1 + 40), a2, v22);
    v8 = v22[0];
    if (!v22[0])
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
  }

  (*(*a5 + 96))(&v25, a5, 12);
  if (v26)
  {
    v12 = v25;
    v13 = &v25[v26];
    while (1)
    {
      v14 = *v12;
      if (*(*v12 + 48) != 12)
      {
        break;
      }

      while (1)
      {
        v15 = *(v14 + 8);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v16 = *(v14 + 8);
        atomic_compare_exchange_strong_explicit((v14 + 8), &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v15)
        {
          goto LABEL_12;
        }
      }

      v21 = v14;
      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v14 + 8));
      v14 = v21;
LABEL_12:
      v24 = v14;
      v17 = WebCore::SourceImage::imageIdentifier((v14 + 64));
      WebKit::RemoteDisplayListRecorder::sourceImage(v22, a1, v17);
      if (v23 != 1)
      {
        WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v24, v18);
        result = WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v20);
        goto LABEL_5;
      }

      WebCore::SourceImage::operator=();
      if (v23 == 1)
      {
        MEMORY[0x19EB03E10](v22);
      }

      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v24, v19);
      if (++v12 == v13)
      {
        goto LABEL_4;
      }
    }

    result = 96;
    __break(0xC471u);
  }

  else
  {
LABEL_4:
    WTF::Vector<WTF::Ref<WebCore::FilterEffect,WTF::RawPtrTraits<WebCore::FilterEffect>,WTF::DefaultRefDerefTraits<WebCore::FilterEffect>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v9);
    v10 = *(*(**(a1 + 24) + 16))(*(a1 + 24));
    result = (*(v10 + 440))();
LABEL_5:
    if (v8)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v8 + 8), v11);
    }
  }

  return result;
}

void WebKit::RemoteDisplayListRecorder::drawFilteredImageBuffer(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  while (1)
  {
    v11 = *(v10 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v10 + 8);
    atomic_compare_exchange_strong_explicit((v10 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v10 + 8));
LABEL_4:
  v42 = v10;
  v13 = *(v10 + 48);
  if (v13 == 1)
  {
    v42 = 0;
    WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v42, a2);
    if (*(v10 + 40))
    {
      if (*(*a5 + 40))
      {
        v15 = *(*(a1 + 40) + 96);
        if (v15)
        {
          v16 = *(*a5 + 32);
          v17 = *(v15 - 8);
          v18 = (v16 + ~(v16 << 32)) ^ ((v16 + ~(v16 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = *(v15 + 16 * v21);
          if (v22 == v16)
          {
LABEL_9:
            v23 = *(v15 + 16 * v21 + 8);
            if (!v23)
            {
              goto LABEL_20;
            }

            while (1)
            {
              v24 = *(v23 + 8);
              if ((v24 & 1) == 0)
              {
                break;
              }

              v25 = *(v23 + 8);
              atomic_compare_exchange_strong_explicit((v23 + 8), &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v25 == v24)
              {
                goto LABEL_12;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v23 + 8));
LABEL_12:
            if (*(v23 + 48) == 1)
            {
              WebCore::SVGFilter::mergeEffects();
              v26 = WTF::fastMalloc(0x10);
              *v26 = &unk_1F10FB1A0;
              *(v26 + 8) = a1;
              v41[0] = v26;
              WebCore::SVGFilter::ensureResults();
              if (v41[0])
              {
                (*(*v41[0] + 1))(v41[0]);
              }

              WebKit::RemoteDisplayListRecorder::drawFilteredImageBufferInternal(a1, a2, a3, a4, v23);
              while (1)
              {
                v27 = *(v23 + 8);
                if ((v27 & 1) == 0)
                {
                  break;
                }

                v28 = v27 - 2;
                v29 = *(v23 + 8);
                atomic_compare_exchange_strong_explicit((v23 + 8), &v29, v27 - 2, memory_order_relaxed, memory_order_relaxed);
                if (v29 == v27)
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              while (1)
              {
                v37 = *(v23 + 8);
                if ((v37 & 1) == 0)
                {
                  break;
                }

                v28 = v37 - 2;
                v38 = *(v23 + 8);
                atomic_compare_exchange_strong_explicit((v23 + 8), &v38, v37 - 2, memory_order_relaxed, memory_order_relaxed);
                if (v38 == v37)
                {
LABEL_18:
                  if (v28 == 1)
                  {
                    (*(*v23 + 8))(v23);
                  }

                  goto LABEL_20;
                }
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(v23 + 8), v14);
            goto LABEL_20;
          }

          v36 = 1;
          while (v22)
          {
            v21 = (v21 + v36) & v17;
            v22 = *(v15 + 16 * v21);
            ++v36;
            if (v22 == v16)
            {
              goto LABEL_9;
            }
          }
        }

        v41[0] = 0;
        WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(v41, v14);
        goto LABEL_20;
      }

      __break(1u);
LABEL_36:
      WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(v10 + 8), v14);
      return;
    }
  }

  else
  {
    WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v42, a2);
    v10 = 0;
  }

  v32 = *(a1 + 48);
  v33 = WebKit::ImageBufferShareableAllocator::operator new(0x10, v14);
  v39 = 0;
  v40 = WebKit::ImageBufferShareableAllocator::ImageBufferShareableAllocator(v33, (v32 + 48));
  WebCore::FilterResults::FilterResults();
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  std::unique_ptr<WebKit::ImageBufferShareableAllocator>::~unique_ptr[abi:sn200100](&v39);
  WebKit::RemoteDisplayListRecorder::drawFilteredImageBufferInternal(a1, a2, a3, a4, *a5);
  WebCore::FilterResults::~FilterResults(v41, v35);
  if (v13 == 1)
  {
LABEL_20:
    while (1)
    {
      v30 = *(v10 + 8);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v31 = *(v10 + 8);
      atomic_compare_exchange_strong_explicit((v10 + 8), &v31, v30 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v31 == v30)
      {
        if (v30 == 3)
        {
          (*(*v10 + 8))(v10);
        }

        return;
      }
    }

    goto LABEL_36;
  }
}

uint64_t *std::unique_ptr<WebKit::ImageBufferShareableAllocator>::~unique_ptr[abi:sn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    WTF::MachSendRight::~MachSendRight((v2 + 8));
    WebCore::ImageBufferAllocator::~ImageBufferAllocator(v2);
    bmalloc::api::tzoneFree(v3, v4);
  }

  return a1;
}

WTF *WebKit::RemoteDisplayListRecorder::drawGlyphs(WTF *result, uint64_t a2, unint64_t *a3, uint64_t a4, float a5, float a6)
{
  *v26 = a5;
  *&v26[1] = a6;
  v6 = *(*(result + 5) + 104);
  if (!v6)
  {
LABEL_14:
    v23 = 0;
    return WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v23);
  }

  v9 = *(v6 - 8);
  v10 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = *(v6 + 16 * v13);
  if (v14 != a2)
  {
    v20 = 1;
    while (v14)
    {
      v13 = (v13 + v20) & v9;
      v14 = *(v6 + 16 * v13);
      ++v20;
      if (v14 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_14;
  }

LABEL_3:
  v15 = *(v6 + 16 * v13 + 8);
  if (v15)
  {
    ++*v15;
    v16 = (*(**(result + 3) + 16))(*(result + 3));
    v18 = *a3;
    v17 = a3[1];
    WTF::Vector<CGSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WebCore::FloatSize const,18446744073709551615ul>(&v23, a3[2], *a3);
    (*(*v16 + 576))(v16, v15, v17, v18, v23, v25, v26, a4);
    result = v23;
    if (v23)
    {
      v23 = 0;
      v24 = 0;
      result = WTF::fastFree(result, v19);
    }

    if (*v15 == 1)
    {
      v21 = MEMORY[0x19EB0DCB0](v15);
      return WTF::fastFree(v21, v22);
    }

    else
    {
      --*v15;
    }
  }

  return result;
}

_DWORD **WebKit::RemoteDisplayListRecorder::drawDecomposedGlyphs(_DWORD **result, void *a2, uint64_t a3)
{
  v3 = result[5];
  v4 = *(v3 + 13);
  if (!v4)
  {
LABEL_29:
    v31 = 0;
    return WTF::Ref<WebCore::Font,WTF::RawPtrTraits<WebCore::Font>,WTF::DefaultRefDerefTraits<WebCore::Font>>::~Ref(&v31);
  }

  v5 = *(v4 - 8);
  v6 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v4 + 16 * v9);
  if (v10 != a2)
  {
    v27 = 1;
    while (v10)
    {
      v9 = (v9 + v27) & v5;
      v10 = *(v4 + 16 * v9);
      ++v27;
      if (v10 == a2)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_29;
  }

LABEL_3:
  v11 = *(v4 + 16 * v9 + 8);
  if (!v11)
  {
    return result;
  }

  ++*v11;
  v12 = *(v3 + 11);
  if (v12)
  {
    v13 = *(v12 - 8);
    v14 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
    v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
    v17 = v13 & ((v16 >> 31) ^ v16);
    v18 = *(v12 + 16 * v17);
    if (v18 == a3)
    {
LABEL_6:
      v19 = *(v12 + 16 * v17 + 8);
      if (v19)
      {
        while (1)
        {
          v20 = v19[1];
          if ((v20 & 1) == 0)
          {
            break;
          }

          v21 = v19[1];
          atomic_compare_exchange_strong_explicit(v19 + 1, &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v21 == v20)
          {
            goto LABEL_9;
          }
        }

        v30 = result;
        WTF::ThreadSafeWeakPtrControlBlock::strongRef(v19[1]);
        result = v30;
LABEL_9:
        v22 = *(*(*result[3] + 16))(result[3]);
        result = (*(v22 + 584))();
        do
        {
          v24 = v19[1];
          if ((v24 & 1) == 0)
          {
            result = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v19[1], v23);
            goto LABEL_14;
          }

          v25 = v19[1];
          atomic_compare_exchange_strong_explicit(v19 + 1, &v25, v24 - 2, memory_order_relaxed, memory_order_relaxed);
        }

        while (v25 != v24);
        if (v24 == 3)
        {
          result = (*(*v19 + 8))(v19);
        }
      }

      goto LABEL_14;
    }

    v26 = 1;
    while (v18)
    {
      v17 = (v17 + v26) & v13;
      v18 = *(v12 + 16 * v17);
      ++v26;
      if (v18 == a3)
      {
        goto LABEL_6;
      }
    }
  }

  v31 = 0;
  result = WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v31, a2);
LABEL_14:
  if (*v11 == 1)
  {
    v28 = MEMORY[0x19EB0DCB0](v11);
    return WTF::fastFree(v28, v29);
  }

  else
  {
    --*v11;
  }

  return result;
}

atomic_uchar **WebKit::RemoteDisplayListRecorder::drawImageBuffer(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteRenderingBackend::imageBuffer(*(a1 + 40), a2, &v7);
  v4 = v7;
  if (v7)
  {
    v5 = *(*(**(a1 + 24) + 16))(*(a1 + 24));
    (*(v5 + 424))();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), v6);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::drawNativeImage(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteResourceCache::cachedNativeImage(&v10, *(*(a1 + 40) + 72), a2);
  v4 = v10;
  if (v10)
  {
    (*(**(a1 + 24) + 16))(*(a1 + 24));
    result = WebCore::GraphicsContext::drawNativeImage();
    v10 = 0;
    while (1)
    {
      v6 = v4[1];
      if ((v6 & 1) == 0)
      {
        break;
      }

      v7 = v4[1];
      atomic_compare_exchange_strong_explicit(v4 + 1, &v7, v6 - 2, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        if (v6 == 3)
        {
          v8 = *(*v4 + 8);

          return v8(v4);
        }

        return result;
      }
    }

    v9 = v4[1];

    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v9, v5);
  }

  return result;
}

void *WebKit::RemoteDisplayListRecorder::drawSystemImage(uint64_t a1, WebCore::ARKitBadgeSystemImage **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(*a2 + 12) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 40);
  v6 = WebCore::ARKitBadgeSystemImage::imageIdentifier(*a2);
  result = WebKit::RemoteResourceCache::cachedNativeImage(&v14, *(v5 + 72), v6);
  if (!v14)
  {
    return result;
  }

  v12 = v14;
  WebCore::BitmapImage::create();
  v9 = v13;
  ++v13[4];
  v10 = *(v3 + 2);
  *(v3 + 2) = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v10[4] != 1)
  {
    --v10[4];
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  (*(*v10 + 8))(v10);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
LABEL_11:
    if (v9[4] == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --v9[4];
    }
  }

  WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v12, v8);
LABEL_14:
  v11 = *(*(**(a1 + 24) + 16))(*(a1 + 24));
  return (*(v11 + 392))();
}

atomic_uchar **WebKit::RemoteDisplayListRecorder::drawPatternNativeImage(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteResourceCache::cachedNativeImage(&v7, *(*(a1 + 40) + 72), a2);
  v4 = v7;
  if (v7)
  {
    v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    (*(*v5 + 448))(v5, v4);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((v4 + 8), v6);
  }

  return result;
}

atomic_uchar **WebKit::RemoteDisplayListRecorder::drawPatternImageBuffer(uint64_t a1, uint64_t a2)
{
  result = WebKit::RemoteRenderingBackend::imageBuffer(*(a1 + 40), a2, &v7);
  v4 = v7;
  if (v7)
  {
    v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    (*(*v5 + 456))(v5, v4);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v4 + 8), v6);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::beginTransparencyLayerWithCompositeMode(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 624);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::drawRect(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2, float a3)
{
  v4 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 152);
  v5.n128_f32[0] = a3;

  return v4(v5);
}

uint64_t WebKit::RemoteDisplayListRecorder::drawLine(WebKit::RemoteDisplayListRecorder *this, const FloatPoint *a2, const FloatPoint *a3)
{
  v3 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 160);

  return v3();
}

uint64_t WebKit::RemoteDisplayListRecorder::drawLinesForText(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  result = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v16 = result;
  if (a4)
  {
    if (a4 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v17 = WTF::fastMalloc((8 * a4));
    v18 = v17;
    v19 = 0;
    do
    {
      *(v17 + v19) = *(a3 + v19);
      v19 += 8;
    }

    while (8 * a4 != v19);
  }

  else
  {
    v18 = 0;
  }

  result = (*(*v16 + 600))(v16, a2, v18, a4, a5, a6, a7, a8);
  if (v18)
  {

    return WTF::fastFree(v18, v20);
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::drawDotsForDocumentMarker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v9[0] = *a3;
  v6 = *(a3 + 8);
  v10 = v6;
  if ((v6 & 0x8000000000000) != 0)
  {
    atomic_fetch_add((v6 & 0xFFFFFFFFFFFFLL), 1u);
  }

  result = (*(*v5 + 608))(v5, a2, v9);
  if ((v10 & 0x8000000000000) != 0)
  {
    result = (v10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((v10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      return WTF::fastFree(result, v8);
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::drawEllipse(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 168);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::drawPath(WebKit::RemoteDisplayListRecorder *this, const Path *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 200);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::drawFocusRingPath(WebKit::RemoteDisplayListRecorder *this, const Path *a2, float a3, const Color *a4)
{
  v5 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 640);
  v6.n128_f32[0] = a3;

  return v5(v6);
}

uint64_t WebKit::RemoteDisplayListRecorder::drawFocusRingRects(uint64_t a1, float a2, float a3)
{
  v5 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 648);
  v6.n128_f32[0] = a2;
  v7.n128_f32[0] = a3;

  return v5(v6, v7);
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRect(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 224);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRectWithColor(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2, const Color *a3)
{
  v3 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 232);

  return v3();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRectWithGradient(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 248);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRectWithGradientAndSpaceTransform(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 240);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillCompositedRect(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 256);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRoundedRect(uint64_t a1)
{
  v1 = *(*(*(**(a1 + 24) + 16))(*(a1 + 24)) + 272);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::fillRectWithRoundedHole(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2, const FloatRoundedRect *a3, const Color *a4)
{
  v4 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 280);

  return v4();
}

unsigned int *WebKit::RemoteDisplayListRecorder::fillLine(WebKit::RemoteDisplayListRecorder *this, const PathDataLine *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5[0] = *a2;
  v6 = 12;
  v7 = 1;
  result = (*(*v3 + 184))(v3, v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = *&v5[0];
    *&v5[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::fillArc(WebKit::RemoteDisplayListRecorder *this, const PathArc *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = *a2;
  v6 = 5;
  v7 = 1;
  result = (*(*v3 + 184))(v3, &v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = v5.center;
    v5.center = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::fillClosedArc(WebKit::RemoteDisplayListRecorder *this, const PathClosedArc *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = *a2;
  v6 = 6;
  v7 = 1;
  result = (*(*v3 + 184))(v3, &v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = v5.arc.center;
    v5.arc.center = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::fillQuadCurve(WebKit::RemoteDisplayListRecorder *this, const PathDataQuadCurve *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = *a2;
  v6 = 13;
  v7 = 1;
  result = (*(*v3 + 184))(v3, &v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = v5.start;
    v5.start = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::fillBezierCurve(WebKit::RemoteDisplayListRecorder *this, const PathDataBezierCurve *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v4 = *&a2->controlPoint2.m_x;
  v6[0] = *&a2->start.m_x;
  v6[1] = v4;
  v7 = 14;
  v8 = 1;
  result = (*(*v3 + 184))(v3, v6);
  if (v8 >= 2u && v8 != 255)
  {
    result = *&v6[0];
    *&v6[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF *WebKit::RemoteDisplayListRecorder::fillPathSegment(WebKit::RemoteDisplayListRecorder *this, const PathSegment *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v4 = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 1);
  v12 = *&a2->m_data.impl_.data_.dummy_;
  v13 = v4;
  v14 = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 2);
  v15 = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 6);
  v5 = WTF::fastMalloc(0x38);
  v10 = v5;
  v6 = v13;
  *v5 = v12;
  *(v5 + 16) = v6;
  *(v5 + 32) = v14;
  *(v5 + 48) = v15;
  v11 = 0x100000001;
  MEMORY[0x19EB0E620](v16, &v10);
  (*(*v3 + 184))(v3, v16);
  if (v17 >= 2u && v17 != 255)
  {
    v8 = v16[0];
    v16[0] = 0;
    if (v8)
    {
      if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8 + 2);
        (*(*v8 + 8))(v8);
      }
    }
  }

  v17 = -1;
  result = v10;
  if (v10)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    return WTF::fastFree(result, v7);
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::fillEllipse(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 208);

  return v2();
}

WebKit::SharedVideoFrameReader *WebKit::RemoteDisplayListRecorder::sharedVideoFrameReader(WebKit::RemoteDisplayListRecorder *this, void *a2)
{
  v2 = (this + 64);
  if (!*(this + 8))
  {
    v3 = *(*(this + 5) + 48);
    v4 = v3 + 2;
    while (1)
    {
      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        break;
      }

      v6 = *v4;
      atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    v7 = v3[24];
    while (1)
    {
      v8 = *(v7 + 8);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v9 = *(v7 + 8);
      atomic_compare_exchange_strong_explicit((v7 + 8), &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v7 + 8));
LABEL_12:
    v10 = WebKit::SharedVideoFrameReader::operator new(0x50, a2);
    *v10 = v7;
    WTF::MachSendRight::MachSendRight((v10 + 8), (v3 + 12));
    *(v10 + 12) = 1;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 72) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0;
    std::unique_ptr<WebKit::SharedVideoFrameReader>::reset[abi:sn200100](v2, v10);
    if (v3)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v3 + 2);
    }
  }

  return *v2;
}

void WebKit::RemoteDisplayListRecorder::drawVideoFrame(WebKit::RemoteDisplayListRecorder *a1, void *a2)
{
  v4 = WebKit::RemoteDisplayListRecorder::sharedVideoFrameReader(a1, a2);
  WebKit::SharedVideoFrameReader::read(v4, a2, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = *(*(**(a1 + 3) + 16))(*(a1 + 3));
    (*(v6 + 472))();
    v8 = 0;
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5 + 2);
      v7 = *(*v5 + 8);

      v7(v5);
    }
  }
}

IPC::Semaphore *WebKit::RemoteDisplayListRecorder::setSharedVideoFrameSemaphore(WebKit::RemoteDisplayListRecorder *a1, void *a2)
{
  v3 = (WebKit::RemoteDisplayListRecorder::sharedVideoFrameReader(a1, a2) + 16);

  return std::optional<IPC::Semaphore>::operator=[abi:sn200100]<IPC::Semaphore,void>(v3, a2);
}

BOOL WebKit::RemoteDisplayListRecorder::setSharedVideoFrameMemory(WebKit::RemoteDisplayListRecorder *a1, void *a2)
{
  v2 = WebKit::RemoteDisplayListRecorder::sharedVideoFrameReader(a1, a2);

  return WebKit::SharedVideoFrameReader::setSharedMemory(v2);
}

uint64_t WebKit::RemoteDisplayListRecorder::strokeRect(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2, float a3)
{
  v4 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 296);
  v5.n128_f32[0] = a3;

  return v4(v5);
}

unsigned int *WebKit::RemoteDisplayListRecorder::strokeLine(WebKit::RemoteDisplayListRecorder *this, const PathDataLine *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = *a2;
  v5 = 12;
  v6 = 1;
  v2 = (*(**(this + 3) + 16))(*(this + 3));
  result = (*(*v2 + 192))(v2, v4);
  if (v6 >= 2u && v6 != 255)
  {
    result = *&v4[0];
    *&v4[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::strokeLineWithColorAndThickness(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100000000) != 0)
  {
    v7 = a3;
    v8 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    *&v14[0] = v7 | 0x1104000000000000;
    WebCore::GraphicsContext::setStrokeColor(v8, v14);
    if ((*&v14[0] & 0x8000000000000) != 0)
    {
      v13 = (*&v14[0] & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((*&v14[0] & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13);
        WTF::fastFree(v13, v9);
      }
    }
  }

  if ((a4 & 0x100000000) != 0)
  {
    v10 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    if (v10[39] != *&a4)
    {
      *(v10 + 38) |= 8u;
      *(v10 + 39) = a4;
    }

    (*(*v10 + 96))(v10, v10 + 2, 3);
  }

  v14[0] = *a2;
  v15 = 12;
  v16 = 1;
  v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  result = (*(*v11 + 192))(v11, v14);
  if (v16 >= 2u && v16 != 255)
  {
    result = *&v14[0];
    *&v14[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::strokeClosedArc(WebKit::RemoteDisplayListRecorder *this, const PathClosedArc *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = *a2;
  v6 = 6;
  v7 = 1;
  result = (*(*v3 + 192))(v3, &v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = v5.arc.center;
    v5.arc.center = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::strokeQuadCurve(WebKit::RemoteDisplayListRecorder *this, const PathDataQuadCurve *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v5 = *a2;
  v6 = 13;
  v7 = 1;
  result = (*(*v3 + 192))(v3, &v5);
  if (v7 >= 2u && v7 != 255)
  {
    result = v5.start;
    v5.start = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

unsigned int *WebKit::RemoteDisplayListRecorder::strokePathSegment(WebKit::RemoteDisplayListRecorder *this, const PathSegment *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (*(**(this + 3) + 16))(*(this + 3));
  v4 = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 1);
  v6[0] = *&a2->m_data.impl_.data_.dummy_;
  v6[1] = v4;
  v6[2] = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 2);
  v7 = *(&a2->m_data.impl_.data_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_.tail_ + 6);
  v8 = 1;
  result = (*(*v3 + 192))(v3, v6);
  if (v8 >= 2u && v8 != 255)
  {
    result = *&v6[0];
    *&v6[0] = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::strokeEllipse(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 216);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::clearRect(WebKit::RemoteDisplayListRecorder *this, const FloatRect *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 288);

  return v2();
}

_DWORD *WebKit::RemoteDisplayListRecorder::drawControlPart(uint64_t a1, uint64_t *a2, float a3)
{
  v6 = *(a1 + 56);
  if (!v6)
  {
    WebCore::ControlFactory::create(&v13, a1);
    v6 = v13;
    v13 = 0;
    v8 = *(a1 + 56);
    *(a1 + 56) = v6;
    if (!v8)
    {
      goto LABEL_4;
    }

    v12 = v8[2] - 1;
    if (v8[2] == 1)
    {
      (*(*v8 + 8))(v8);
      v8 = v13;
      v13 = 0;
      if (!v8)
      {
        goto LABEL_15;
      }

      v12 = v8[2] - 1;
      if (v8[2] == 1)
      {
        (*(*v8 + 8))(v8);
        goto LABEL_15;
      }
    }

    v8[2] = v12;
LABEL_15:
    v6 = *(a1 + 56);
LABEL_4:
    v7 = *a2;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = *a2;
LABEL_5:
  ++*(v6 + 8);
LABEL_6:
  v9 = *(v7 + 32);
  *(v7 + 32) = v6;
  if (v9)
  {
    if (v9[2] == 1)
    {
      (*(*v9 + 8))(v9);
    }

    else
    {
      --v9[2];
    }
  }

  v10 = *(*(**(a1 + 24) + 16))(*(a1 + 24));
  (*(v10 + 464))(a3);
  result = *(*a2 + 32);
  *(*a2 + 32) = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))(result);
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t WebKit::RemoteDisplayListRecorder::applyStrokePattern(WebKit::RemoteDisplayListRecorder *this)
{
  v1 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 120);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::applyFillPattern(WebKit::RemoteDisplayListRecorder *this)
{
  v1 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 128);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::applyDeviceScaleFactor(WebKit::RemoteDisplayListRecorder *this, float a2)
{
  v3 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 704);
  v4.n128_f32[0] = a2;

  return v3(v4);
}

uint64_t WebKit::RemoteDisplayListRecorder::beginPage(WebKit::RemoteDisplayListRecorder *this, const IntSize *a2)
{
  v2 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 712);

  return v2();
}

uint64_t WebKit::RemoteDisplayListRecorder::endPage(WebKit::RemoteDisplayListRecorder *this)
{
  v1 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 720);

  return v1();
}

uint64_t WebKit::RemoteDisplayListRecorder::setURLForRect(WebKit::RemoteDisplayListRecorder *this, const URL *a2, const FloatRect *a3)
{
  v3 = *(*(*(**(this + 3) + 16))(*(this + 3)) + 728);

  return v3();
}

void *WebKit::remoteGraphicsContextGLStreamWorkQueueSingleton(WebKit *this)
{
  if (atomic_load_explicit(&_MergedGlobals_66, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&_MergedGlobals_66, &v5, std::__call_once_proxy[abi:sn200100]<std::tuple<WebKit::remoteGraphicsContextGLStreamWorkQueueSingleton(void)::$_0 &&>>);
  }

  return &unk_1ED642420;
}

uint64_t WebKit::RemoteGraphicsContextGL::RemoteGraphicsContextGL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = WebCore::GraphicsContextGL::Client::Client(a1);
  *(v10 + 16) = 1;
  *v10 = &unk_1F10FB060;
  *(v10 + 8) = &unk_1F10FB0A8;
  *(v10 + 24) = a2;
  v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16));
  v12 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11);
  *(a1 + 32) = v12;
  WebKit::remoteGraphicsContextGLStreamWorkQueueSingleton(v12);
  while (1)
  {
    v14 = qword_1ED642428[0];
    if ((qword_1ED642428[0] & 1) == 0)
    {
      break;
    }

    v15 = qword_1ED642428[0];
    atomic_compare_exchange_strong_explicit(qword_1ED642428, &v15, qword_1ED642428[0] + 2, memory_order_relaxed, memory_order_relaxed);
    if (v15 == v14)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(qword_1ED642428[0]);
LABEL_6:
  *(a1 + 40) = &unk_1ED642420;
  v16 = *a5;
  *a5 = 0;
  *(a1 + 48) = v16;
  *(a1 + 56) = 0;
  *(a1 + 64) = a3;
  atomic_fetch_add((a4 + 16), 1u);
  *(a1 + 72) = a4;
  WebKit::GPUConnectionToWebProcess::sharedResourceCache(a2, v13, (a1 + 80));
  v17 = *(a2 + 192);
  while (1)
  {
    v18 = *(v17 + 8);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = *(v17 + 8);
    atomic_compare_exchange_strong_explicit((v17 + 8), &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_11;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 8));
LABEL_11:
  *(a1 + 88) = v17;
  while (1)
  {
    v20 = *(v17 + 8);
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = *(v17 + 8);
    atomic_compare_exchange_strong_explicit((v17 + 8), &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v20)
    {
      goto LABEL_16;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v17 + 8));
LABEL_16:
  *(a1 + 96) = v17;
  WTF::MachSendRight::MachSendRight((a1 + 104), (a2 + 96));
  *(a1 + 108) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 176) = 257;
  atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 1u);
  atomic_fetch_add(WebKit::ScopedWebGLRenderingResourcesRequest::s_requests, 1u);
  *(a1 + 184) = *(a2 + 88);
  v22 = *(a2 + 352);
  *(a1 + 192) = *(a2 + 336);
  *(a1 + 208) = v22;
  *(a1 + 216) = 0;
  return a1;
}

void WebKit::RemoteGraphicsContextGL::~RemoteGraphicsContextGL(WebKit::RemoteGraphicsContextGL *this, void *a2)
{
  *this = &unk_1F10FB060;
  *(this + 1) = &unk_1F10FB0A8;
  v3 = *(this + 27);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  WebKit::ScopedWebGLRenderingResourcesRequest::~ScopedWebGLRenderingResourcesRequest((this + 176));
  WebKit::SharedVideoFrameReader::~SharedVideoFrameReader((this + 96));
  v5 = *(this + 11);
  *(this + 11) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), v4);
  }

  v6 = *(this + 10);
  *(this + 10) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v6 + 16));
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7 && atomic_fetch_add((v7 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v7 + 16));
    (*(*(v7 + 8) + 8))();
  }

  v8 = *(this + 7);
  *(this + 7) = 0;
  if (v8)
  {
    if (v8[2] == 1)
    {
      (*(*v8 + 16))(v8);
    }

    else
    {
      --v8[2];
    }
  }

  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9 + 2);
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v10 + 8));
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v4);
  }

  MEMORY[0x1EEE56B70](this);
}

uint64_t WebKit::RemoteGraphicsContextGL::initialize(uint64_t a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = (v4 + 8);
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_6:
  v13 = *a2;
  v14 = *(a2 + 8);
  atomic_fetch_add((a1 + 16), 1u);
  v8 = WTF::fastMalloc(0x20);
  v9 = v13;
  *v8 = &unk_1F10FB1C8;
  *(v8 + 8) = v9;
  *(v8 + 16) = v14;
  *(v8 + 24) = a1;
  v12 = v8;
  IPC::StreamConnectionWorkQueue::dispatch(v4, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
}

uint64_t WebKit::RemoteGraphicsContextGL::stopListeningForIPC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v6 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v6 == v5)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  v7 = *a2;
  *a2 = 0;
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10FB1F0;
  v8[1] = v7;
  v11 = v8;
  IPC::StreamConnectionWorkQueue::dispatch(v3, &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
}

IPC::Encoder *WebKit::RemoteGraphicsContextGL::send<Messages::RemoteGraphicsContextGLProxy::WasCreated>(uint64_t a1, IPC::Semaphore **a2)
{
  v3 = *(a1 + 48);
  atomic_fetch_add((v3 + 8), 1u);
  v4 = *(v3 + 40);
  v5 = *(a1 + 64);
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 1154;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = v5;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v6, *a2);
  IPC::ArgumentCoder<IPC::Semaphore,void>::encode(v6, a2[1]);
  v7 = a2[2];
  if (*(v7 + 24))
  {
    v15 = 1;
    IPC::Encoder::operator<<<BOOL>(v6, &v15);
    if ((*(v7 + 24) & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:sn200100]();
      return WebKit::RemoteGraphicsContextGL::forceContextLost(v13);
    }

    IPC::ArgumentCoder<WebKit::RemoteGraphicsContextGLInitializationState,void>::encode(v6, v7);
  }

  else
  {
    v16 = 0;
    IPC::Encoder::operator<<<BOOL>(v6, &v16);
  }

  IPC::Connection::sendMessageImpl(v4, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    result = bmalloc::api::tzoneFree(v10, v11);
  }

  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 8));
    v12 = *(*v3 + 8);

    return v12(v3);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::send<Messages::RemoteGraphicsContextGLProxy::WasLost>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  atomic_fetch_add((v2 + 8), 1u);
  v3 = IPC::Connection::send<Messages::RemoteGraphicsContextGLProxy::WasLost>(*(v2 + 40), a2, *(a1 + 64), 0, 0);
  if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 8));
    (*(*v2 + 8))(v2);
  }

  return v3;
}

IPC::Encoder *WebKit::RemoteGraphicsContextGL::addDebugMessage(WebKit::RemoteGraphicsContextGL *this, void *a2, int a3, int a4, const WTF::String *a5)
{
  v8 = a2;
  v9 = *(this + 6);
  atomic_fetch_add((v9 + 8), 1u);
  v10 = *(v9 + 40);
  v11 = *(this + 8);
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 1156;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v11;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v17 = v12;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, v8);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a3);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v12, a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a5);
  IPC::Connection::sendMessageImpl(v10, &v17, 0, 0);
  result = v17;
  v17 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v13);
    result = bmalloc::api::tzoneFree(v15, v16);
  }

  if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v9 + 8));
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::reshape(WebKit::RemoteGraphicsContextGL *this, int a2, int a3)
{
  if (!a2 || !a3)
  {
    return WebKit::RemoteGraphicsContextGL::send<Messages::RemoteGraphicsContextGLProxy::WasLost>(this, &v6);
  }

  v3 = *(this + 7);
  if (v3)
  {
    ++*(v3 + 2);
    result = WebCore::GraphicsContextGLANGLE::reshape(v3);
    if (*(v3 + 2) == 1)
    {
      v5 = *(*v3 + 16);

      return v5(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }

  else
  {

    return WebCore::GraphicsContextGLANGLE::reshape(0);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getErrors(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    ++*(v3 + 2);
  }

  Errors = WebCore::GraphicsContextGLANGLE::getErrors(v3);
  v5 = *a2;
  *a2 = 0;
  (*(*v5 + 16))(v5, Errors);
  result = (*(*v5 + 8))(v5);
  if (v3)
  {
    if (*(v3 + 2) == 1)
    {
      v7 = *(*v3 + 16);

      return v7(v3);
    }

    else
    {
      --*(v3 + 2);
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::ensureExtensionEnabled(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    ++v1[2];
  }

  result = (*(*v1 + 1968))(v1);
  if (v1[2] == 1)
  {
    v3 = *(*v1 + 16);

    return v3(v1);
  }

  else
  {
    --v1[2];
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::drawSurfaceBufferToImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    ++v7[2];
  }

  (*(*v7 + 2296))(&v20, v7);
  if (v7[2] == 1)
  {
    (*(*v7 + 16))(v7);
  }

  else
  {
    --v7[2];
  }

  v8 = v20;
  if (v20)
  {
    v9 = *(a1 + 72);
    v22 = 0;
    v21 = 0;
    atomic_fetch_add((v9 + 16), 1u);
    atomic_fetch_add((v9 + 16), 1u);
    while (1)
    {
      v10 = *(v8 + 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = *(v8 + 8);
      atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_9:
    v12 = WTF::fastMalloc(0x38);
    *v12 = &unk_1F10FB218;
    v12[1] = v9;
    v12[2] = v8;
    v12[3] = a3;
    v12[4] = &v22 + 1;
    v12[5] = &v22;
    v12[6] = &v21;
    v23 = v12;
    WebKit::RemoteRenderingBackend::dispatch(v9, &v23);
    v14 = v23;
    v23 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = 0;
    atomic_compare_exchange_strong_explicit(&v22 + 1, &v15, 1u, memory_order_acquire, memory_order_acquire);
    if (v15)
    {
      MEMORY[0x19EB01E30](&v22 + 1);
    }

    if ((v21 & 1) == 0)
    {
      do
      {
        v23 = 0x7FF0000000000000;
        v24 = 0;
        WTF::Condition::waitUntilUnchecked<WTF::Lock>(&v22, &v22 + 1, &v23);
      }

      while (v21 != 1);
    }

    v16 = 1;
    atomic_compare_exchange_strong_explicit(&v22 + 1, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 == 1)
    {
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      WTF::Lock::unlockSlow((&v22 + 1));
      if (v9)
      {
LABEL_17:
        if (atomic_fetch_add((v9 + 16), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, (v9 + 16));
          (*(*(v9 + 8) + 8))(v9 + 8);
        }
      }
    }

    v17 = v20;
    v20 = 0;
    if (v17)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref((v17 + 8), v13);
    }
  }

  v18 = *a4;
  *a4 = 0;
  (*(*v18 + 16))(v18);
  return (*(*v18 + 8))(v18);
}

uint64_t WebKit::RemoteGraphicsContextGL::surfaceBufferToVideoFrame(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  LOBYTE(v20[0]) = 0;
  v22 = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
    WebCore::GraphicsContextGLCocoa::surfaceBufferToVideoFrame();
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  else
  {
    WebCore::GraphicsContextGLCocoa::surfaceBufferToVideoFrame();
  }

  v6 = v19;
  if (v19)
  {
    v7 = *(a1 + 88);
    v8 = (v7 + 8);
    while (1)
    {
      v9 = *v8;
      if ((*v8 & 1) == 0)
      {
        break;
      }

      v10 = *v8;
      atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
    v6 = v19;
LABEL_10:
    v16 = v6;
    v19 = 0;
    WebKit::RemoteVideoFrameObjectHeap::add(v7, &v16, v17);
    v20[0] = v17[0];
    v20[1] = v17[1];
    v20[2] = v17[2];
    v21 = v18;
    v22 = 1;
    v12 = v16;
    v16 = 0;
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v12 + 2);
      (*(*v12 + 8))(v12);
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v7 + 8), v11);
    v13 = v19;
    v19 = 0;
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13 + 2);
      (*(*v13 + 8))(v13);
    }
  }

  v14 = *a3;
  *a3 = 0;
  (*(*v14 + 16))(v14, v20);
  return (*(*v14 + 8))(v14);
}

uint64_t WebKit::RemoteRenderingBackend::dispatch(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 + 8);
  while (1)
  {
    v5 = *v4;
    if ((*v4 & 1) == 0)
    {
      break;
    }

    v7 = *v4;
    atomic_compare_exchange_strong_explicit(v4, &v7, v5 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v5)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_4:
  IPC::StreamConnectionWorkQueue::dispatch(v3, a2);

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
}

uint64_t WebKit::RemoteGraphicsContextGL::webXREnabled(WebKit::RemoteGraphicsContextGL *this)
{
  v4 = *(this + 4);
  if (v4)
  {
    v7[1] = v1;
    v7[2] = v2;
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v4, *(this + 3), v7);
    v6 = v7[0];
    v7[0] = 0;
    if (v6)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v6 + 16));
    }
  }

  return 0;
}

uint64_t WebKit::RemoteGraphicsContextGL::simulateEventForTesting(void *a1, int a2)
{
  if (a2 == 1)
  {
    v4 = a1[3];
    v3 = a1[4];
    if (v3)
    {
      v5 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v3);
    }

    else
    {
      v5 = 0;
    }

    v6 = a1[8];
    v7 = WTF::fastMalloc(0x20);
    *v7 = &unk_1F10FB240;
    v7[1] = v4;
    v7[2] = v5;
    v7[3] = v6;
    v11 = v7;
    WTF::callOnMainRunLoop();
    result = v11;
    if (v11)
    {
      return (*(*v11 + 8))(v11);
    }
  }

  else
  {
    v9 = a1[7];
    if (v9)
    {
      ++v9[2];
    }

    result = (*(*v9 + 2264))(v9);
    if (v9[2] == 1)
    {
      v10 = *(*v9 + 16);

      return v10(v9);
    }

    else
    {
      --v9[2];
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::getBufferSubDataInline(uint64_t a1, int a2, int a3, WTF *this, uint64_t *a5)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    ++v7[2];
  }

  if (this - 65537 > 0xFFFFFFFFFFFEFFFFLL)
  {
    WTF::tryFastMalloc(this);
    WTF::fastFree(0, v10);
    WTF::fastFree(0, v11);
    if (v17)
    {
      BufferSubDataWithStatus = WebCore::GraphicsContextGLANGLE::getBufferSubDataWithStatus();
      if (BufferSubDataWithStatus)
      {
        v13 = this;
      }

      else
      {
        v13 = 0;
      }

      if (BufferSubDataWithStatus)
      {
        v14 = v17;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::addError();
      v14 = 0;
      v13 = 0;
    }

    v15 = *a5;
    *a5 = 0;
    (*(*v15 + 16))(v15, v14, v13);
    (*(*v15 + 8))(v15);
    result = WTF::fastFree(v17, v16);
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::addError();
    v8 = *a5;
    *a5 = 0;
    (*(*v8 + 16))(v8, 0, 0);
    result = (*(*v8 + 8))(v8);
  }

  if (v7)
  {
    if (v7[2] == 1)
    {
      return (*(*v7 + 16))(v7);
    }

    else
    {
      --v7[2];
    }
  }

  return result;
}

atomic_uint *WebKit::RemoteGraphicsContextGL::getBufferSubDataSharedMemory(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a4 < 0x6400001)
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      ++v11[2];
    }

    WebCore::SharedMemoryHandle::setOwnershipOfMemory();
    WebCore::SharedMemory::map();
    if (v14 && *(v14 + 8) >= a4)
    {
      BufferSubDataWithStatus = WebCore::GraphicsContextGLANGLE::getBufferSubDataWithStatus();
    }

    else
    {
      WebCore::GraphicsContextGLANGLE::addError();
      BufferSubDataWithStatus = 0;
    }

    v13 = *a6;
    *a6 = 0;
    (*(*v13 + 16))(v13, BufferSubDataWithStatus);
    (*(*v13 + 8))(v13);
    result = v14;
    if (v14)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v14);
    }

    if (v11)
    {
      if (v11[2] == 1)
      {
        return (*(*v11 + 16))(v11);
      }

      else
      {
        --v11[2];
      }
    }
  }

  else
  {
    v7 = *a6;
    *a6 = 0;
    (*(*v7 + 16))(v7, 0);
    v8 = *(*v7 + 8);

    return v8(v7);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::readPixelsInline(uint64_t a1, int a2, unint64_t a3, WebCore::GraphicsContextGL *this, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  v8 = a3;
  v10 = HIDWORD(a3);
  v11 = WebCore::GraphicsContextGL::computeBytesPerGroup(this);
  if (v8 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = -v8;
  }

  if ((v10 & 0x80000000) == 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = -v10;
  }

  v14 = v12 * v13;
  if ((v14 & 0xFFFFFFFF00000000) == 0)
  {
    v15 = v14 * v11;
    if ((v15 & 0xFFFFFFFF00000000) == 0)
    {
      if (v11)
      {
        v16 = v15;
        if ((v15 - 1) >> 16)
        {
          v17 = 0;
          v20 = 0;
        }

        else
        {
          WTF::tryFastMalloc(v15);
          v17 = v32;
          WTF::fastFree(0, v18);
          WTF::fastFree(0, v19);
          if (v32)
          {
            v20 = v15;
          }

          else
          {
            v20 = 0;
          }
        }

        v24 = *(a1 + 56);
        if (v24)
        {
          ++v24[2];
        }

        if (v20 == v15)
        {
          PixelsWithStatus = WebCore::GraphicsContextGLANGLE::readPixelsWithStatus();
          v27 = v25;
          if (v25)
          {
            goto LABEL_25;
          }
        }

        else
        {
          WebCore::GraphicsContextGLANGLE::addError();
          PixelsWithStatus = 0;
          v27 = 0;
        }

        WTF::fastFree(v17, v25);
        WTF::fastFree(0, v28);
        v17 = 0;
        v16 = 0;
LABEL_25:
        v29 = v27;
        v30 = *a7;
        *a7 = 0;
        (*(*v30 + 16))(v30, PixelsWithStatus, v29, v17, v16);
        (*(*v30 + 8))(v30);
        if (v24)
        {
          if (v24[2] == 1)
          {
            (*(*v24 + 16))(v24);
          }

          else
          {
            --v24[2];
          }
        }

        return WTF::fastFree(v17, v31);
      }
    }
  }

  v21 = *a7;
  *a7 = 0;
  (*(*v21 + 16))(v21, 0, 0, 0, 0);
  v22 = *(*v21 + 8);

  return v22(v21);
}

uint64_t WebKit::RemoteGraphicsContextGL::readPixelsSharedMemory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = *(a1 + 56);
  if (v9)
  {
    ++v9[2];
  }

  WebCore::SharedMemoryHandle::setOwnershipOfMemory();
  WebCore::SharedMemory::map();
  if (v15)
  {
    PixelsWithStatus = WebCore::GraphicsContextGLANGLE::readPixelsWithStatus();
    v12 = v11;
  }

  else
  {
    WebCore::GraphicsContextGLANGLE::addError();
    v12 = 0;
    PixelsWithStatus = 0;
  }

  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v15);
  }

  v13 = *a8;
  *a8 = 0;
  (*(*v13 + 16))(v13, PixelsWithStatus, v12);
  result = (*(*v13 + 8))(v13);
  if (v9)
  {
    if (v9[2] == 1)
    {
      return (*(*v9 + 16))(v9);
    }

    else
    {
      --v9[2];
    }
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::multiDrawArraysANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v12, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v9, *(a3 + 16), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
  }

  if (v11 == v14)
  {
    WebCore::GraphicsContextGLANGLE::multiDrawArraysANGLE();
    if (v5)
    {
      if (v5[2] == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --v5[2];
      }
    }

    v7 = v9;
    if (v9)
    {
      v9 = 0;
      v10 = 0;
      WTF::fastFree(v7, v6);
    }

    result = v12;
    if (v12)
    {
      v12 = 0;
      v13 = 0;
      return WTF::fastFree(result, v6);
    }
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v17, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v14, *(a3 + 16), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v11, *(a3 + 24), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
  }

  if (v16 == v19 && v13 == v19)
  {
    WebCore::GraphicsContextGLANGLE::multiDrawArraysInstancedANGLE();
    if (v5)
    {
      if (v5[2] == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --v5[2];
      }
    }

    v8 = v11;
    if (v11)
    {
      v11 = 0;
      v12 = 0;
      WTF::fastFree(v8, v7);
    }

    v9 = v14;
    if (v14)
    {
      v14 = 0;
      v15 = 0;
      WTF::fastFree(v9, v7);
    }

    result = v17;
    if (v17)
    {
      v17 = 0;
      v18 = 0;
      return WTF::fastFree(result, v7);
    }
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::multiDrawElementsANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v7, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v4 = *(a1 + 56);
  if (v4)
  {
    ++v4[2];
  }

  WebCore::GraphicsContextGLANGLE::multiDrawElementsANGLE();
  if (v4)
  {
    if (v4[2] == 1)
    {
      (*(*v4 + 16))(v4);
    }

    else
    {
      --v4[2];
    }
  }

  result = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    return WTF::fastFree(result, v5);
  }

  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v11, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v9, *(a3 + 24), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
  }

  WebCore::GraphicsContextGLANGLE::multiDrawElementsInstancedANGLE();
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v7 = v9;
  if (v9)
  {
    v9 = 0;
    v10 = 0;
    WTF::fastFree(v7, v6);
  }

  result = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

uint64_t WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedBaseInstanceANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v20, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v17, *(a3 + 16), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v14, *(a3 + 24), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v11, *(a3 + 32), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
  }

  if (v19 == v22 && v16 == v22 && v13 == v22)
  {
    WebCore::GraphicsContextGLANGLE::multiDrawArraysInstancedBaseInstanceANGLE();
    if (v5)
    {
      if (v5[2] == 1)
      {
        (*(*v5 + 16))(v5);
      }

      else
      {
        --v5[2];
      }
    }

    v7 = v11;
    if (v11)
    {
      v11 = 0;
      v12 = 0;
      WTF::fastFree(v7, v6);
    }

    v8 = v14;
    if (v14)
    {
      v14 = 0;
      v15 = 0;
      WTF::fastFree(v8, v6);
    }

    v9 = v17;
    if (v17)
    {
      v17 = 0;
      v18 = 0;
      WTF::fastFree(v9, v6);
    }

    result = v20;
    if (v20)
    {
      v20 = 0;
      v21 = 0;
      return WTF::fastFree(result, v6);
    }
  }

  else
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedBaseVertexBaseInstanceANGLE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v17, *(a3 + 8), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v15, *(a3 + 24), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v13, *(a3 + 32), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v11, *(a3 + 40), *a3 & 0x3FFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 56);
  if (v5)
  {
    ++v5[2];
  }

  WebCore::GraphicsContextGLANGLE::multiDrawElementsInstancedBaseVertexBaseInstanceANGLE();
  if (v5)
  {
    if (v5[2] == 1)
    {
      (*(*v5 + 16))(v5);
    }

    else
    {
      --v5[2];
    }
  }

  v7 = v11;
  if (v11)
  {
    v11 = 0;
    v12 = 0;
    WTF::fastFree(v7, v6);
  }

  v8 = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v8, v6);
  }

  v9 = v15;
  if (v15)
  {
    v15 = 0;
    v16 = 0;
    WTF::fastFree(v9, v6);
  }

  result = v17;
  if (v17)
  {
    v17 = 0;
    v18 = 0;
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::drawBuffers(uint64_t a1, int *a2, unint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    ++v3[2];
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v6, a2, a3);
  WebCore::GraphicsContextGLANGLE::drawBuffers();
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    result = WTF::fastFree(result, v4);
    if (!v3)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  if (v3[2] == 1)
  {
    return (*(*v3 + 16))(v3);
  }

  --v3[2];
  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::drawBuffersEXT(uint64_t a1, int *a2, unint64_t a3)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    ++v3[2];
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v6, a2, a3);
  (*(*v3 + 1992))(v3, v6, v8);
  result = v6;
  if (v6)
  {
    v6 = 0;
    v7 = 0;
    result = WTF::fastFree(result, v4);
  }

  if (v3[2] == 1)
  {
    return (*(*v3 + 16))(v3);
  }

  --v3[2];
  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::invalidateFramebuffer(uint64_t a1, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++v4[2];
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v7, a3, a4);
  WebCore::GraphicsContextGLANGLE::invalidateFramebuffer();
  result = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    result = WTF::fastFree(result, v5);
    if (!v4)
    {
      return result;
    }
  }

  else if (!v4)
  {
    return result;
  }

  if (v4[2] == 1)
  {
    return (*(*v4 + 16))(v4);
  }

  --v4[2];
  return result;
}

WTF *WebKit::RemoteGraphicsContextGL::invalidateSubFramebuffer(uint64_t a1, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    ++v4[2];
  }

  WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned int const,18446744073709551615ul>(&v7, a3, a4);
  WebCore::GraphicsContextGLANGLE::invalidateSubFramebuffer();
  result = v7;
  if (v7)
  {
    v7 = 0;
    v8 = 0;
    result = WTF::fastFree(result, v5);
    if (!v4)
    {
      return result;
    }
  }

  else if (!v4)
  {
    return result;
  }

  if (v4[2] == 1)
  {
    return (*(*v4 + 16))(v4);
  }

  --v4[2];
  return result;
}

uint64_t WebKit::RemoteImageBuffer::startListeningForIPC(WebKit::RemoteImageBuffer *this)
{
  v1 = *(*(this + 4) + 40);
  atomic_fetch_add(v1 + 2, 1u);
  result = IPC::StreamServerConnection::startReceivingMessages(v1, this, 0x55u, *(this + 3));
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    v3 = *(*v1 + 8);

    return v3(v1);
  }

  return result;
}

uint64_t WebKit::RemoteImageBuffer::RemoteImageBuffer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FB0D0;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = a3;
  atomic_fetch_add((a5 + 16), 1u);
  *(a1 + 32) = a5;
  v9 = *(a1 + 16);
  v10 = WTF::fastMalloc(0x48);
  v11 = WebKit::RemoteDisplayListRecorder::RemoteDisplayListRecorder(v10, v9, a4, a5);
  WebKit::RemoteDisplayListRecorder::startListeningForIPC(v11);
  *(a1 + 40) = v10;
  *(a1 + 48) = 1;
  atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 1u);
  v12 = *(*(a1 + 32) + 56);
  atomic_fetch_add((v12 + 16), 1u);
  v13 = *(a1 + 16);
  v14 = *(v13 + 42);
  v15 = *(v13 + 48);
  if (v14 == 1)
  {
    if (v15 == 1)
    {
      atomic_fetch_add((v12 + 64), 1uLL);
    }

    atomic_fetch_add(&WebKit::globalImageBufferForCanvasCount, 1uLL);
    atomic_fetch_add((v12 + 72), 1uLL);
  }

  if (v15 == 1)
  {
    atomic_fetch_add(&WebKit::globalAcceleratedImageBufferCount, 1uLL);
  }

  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v12 + 16));
  }

  v16 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  if (v16)
  {
    v27 = v16;
    if (((*(*v16 + 16))(v16) & 1) == 0)
    {
      result = 96;
      __break(0xC471u);
      return result;
    }

    (*(*v27 + 24))(v28, v27, 1);
  }

  else
  {
    LOBYTE(v28[0]) = 0;
    v29 = 0;
  }

  v18 = *(*(a1 + 32) + 40);
  atomic_fetch_add((v18 + 8), 1u);
  v19 = *(v18 + 40);
  v20 = *(a1 + 24);
  v21 = IPC::Encoder::operator new(0x238, v17);
  *v21 = 1370;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 1) = v20;
  *(v21 + 68) = 0;
  *(v21 + 70) = 0;
  *(v21 + 69) = 0;
  IPC::Encoder::encodeHeader(v21);
  v30 = v21;
  IPC::ArgumentCoder<std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>,void>::encode<IPC::Encoder,std::optional<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>>>(v21, v28);
  IPC::Connection::sendMessageImpl(v19, &v30, 0, 0);
  v23 = v30;
  v30 = 0;
  if (v23)
  {
    IPC::Encoder::~Encoder(v23, v22);
    bmalloc::api::tzoneFree(v25, v26);
  }

  if (atomic_fetch_add((v18 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v18 + 8));
    (*(*v18 + 8))(v18);
  }

  if (v29 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v28);
  }

  return a1;
}

void WebKit::RemoteImageBuffer::~RemoteImageBuffer(WebKit::RemoteImageBuffer *this)
{
  *this = &unk_1F10FB0D0;
  v2 = *(*(this + 4) + 56);
  atomic_fetch_add((v2 + 16), 1u);
  v3 = *(this + 2);
  v4 = *(v3 + 42);
  v5 = *(v3 + 48);
  if (v4 == 1)
  {
    if (v5 == 1)
    {
      atomic_fetch_add((v2 + 64), 0xFFFFFFFFFFFFFFFFLL);
    }

    atomic_fetch_add(&WebKit::globalImageBufferForCanvasCount, 0xFFFFFFFFFFFFFFFFLL);
    atomic_fetch_add((v2 + 72), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v5 == 1)
  {
    atomic_fetch_add(&WebKit::globalAcceleratedImageBufferCount, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v2 + 16));
  }

  v6 = WebCore::ImageBuffer::volatilityState(*(this + 2));
  if (v6 != 1)
  {
    v6 = *(this + 2);
    if (*(v6 + 14))
    {
      v6 = (*(*v6 + 16))(v6);
      if (*(v6 + 83))
      {
        v11 = v6;
        do
        {
          v6 = (*(*v11 + 112))(v11, 1);
        }

        while (*(v11 + 83));
      }
    }
  }

  if (*(this + 48) == 1)
  {
    atomic_fetch_add(WebKit::ScopedRenderingResourcesRequest::s_requests, 0xFFFFFFFF);
    if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
    {
      WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(v6);
    }
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::~ScopedActiveMessageReceiveQueue(this + 5);
  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9 && atomic_fetch_add((v9 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v9 + 16));
    (*(*(v9 + 8) + 8))();
  }

  v10 = *(this + 2);
  *(this + 2) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v10 + 8), v8);
  }
}

{
  WebKit::RemoteImageBuffer::~RemoteImageBuffer(this);

  WTF::fastFree(v1, v2);
}

void WebKit::RemoteImageBuffer::getPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1 + 32) + 136);
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    if (WebCore::PixelBuffer::supportedPixelFormat())
    {
      *&buf = a3;
      *(&buf + 1) = a4;
      v11 = *(a1 + 16);
      WebCore::ImageBufferAllocator::ImageBufferAllocator(v25);
      (*(*v11 + 88))(&v24, v11, a2, &buf, v25);
      WebCore::ImageBufferAllocator::~ImageBufferAllocator(v25);
      v12 = *(v6 + 8);
      if (!v24)
      {
        bzero(*(v6 + 16), v12);
        goto LABEL_6;
      }

      v13 = *(v24 + 48);
      if (v13 <= v12)
      {
        memcpy(*(v6 + 16), *(v24 + 40), v13);
LABEL_6:
        v14 = v24;
        v24 = 0;
        if (v14)
        {
          if (v14[2] == 1)
          {
            (*(*v14 + 8))(v14);
          }

          else
          {
            --v14[2];
          }
        }

        v15 = *a5;
        *a5 = 0;
        (*(*v15 + 16))(v15);
        (*(*v15 + 8))(v15);
LABEL_10:
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
        return;
      }

      v18 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v25 = 136446210;
        v26 = "void WebKit::RemoteImageBuffer::getPixelBuffer(WebCore::PixelBufferFormat, WebCore::IntPoint, WebCore::IntSize, CompletionHandler<void ()> &&)";
        _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBuffer.cpp 112: Invalid message dispatched %{public}s: Shmem for return of getPixelBuffer is too small", v25, 0xCu);
      }

      v19 = *(*(*(a1 + 32) + 48) + 56);
      if (v19)
      {
        *(v19 + 94) = 1;
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
      {
        v20 = v24;
        v24 = 0;
        if (v20)
        {
          if (v20[2] == 1)
          {
            (*(*v20 + 8))(v20);
          }

          else
          {
            --v20[2];
          }
        }

        goto LABEL_10;
      }

      __break(0xC471u);
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "void WebKit::RemoteImageBuffer::getPixelBuffer(WebCore::PixelBufferFormat, WebCore::IntPoint, WebCore::IntSize, CompletionHandler<void ()> &&)";
        _os_log_fault_impl(&dword_19D52D000, v16, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBuffer.cpp 109: Invalid message dispatched %{public}s: Pixel format not supported", &buf, 0xCu);
      }

      v17 = *(*(*(a1 + 32) + 48) + 56);
      if (v17)
      {
        *(v17 + 94) = 1;
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure != 1)
      {
        goto LABEL_10;
      }

      __break(0xC471u);
    }

    JUMPOUT(0x19DB58B7CLL);
  }

  v21 = *(a1 + 32);
  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "void WebKit::RemoteImageBuffer::getPixelBuffer(WebCore::PixelBufferFormat, WebCore::IntPoint, WebCore::IntSize, CompletionHandler<void ()> &&)";
    _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBuffer.cpp 108: Invalid message dispatched %{public}s: No shared memory for getPixelBufferForImageBuffer", &buf, 0xCu);
    v21 = *(a1 + 32);
  }

  v23 = *(*(v21 + 48) + 56);
  if (v23)
  {
    *(v23 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB58C30);
  }
}

void WebKit::RemoteImageBuffer::getPixelBufferWithNewMemory(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 32);
  v12 = *(v11 + 136);
  *(v11 + 136) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v12);
  }

  WebCore::SharedMemory::map();
  v13 = v23;
  if (v23)
  {
    v14 = *(a1 + 32);
    v23 = 0;
    v15 = *(v14 + 136);
    *(v14 + 136) = v13;
    if (v15)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v15);
    }

    v21 = *a3;
    v16 = *(a3 + 1);
    *(a3 + 1) = 0;
    cf = v16;
    WebKit::RemoteImageBuffer::getPixelBuffer(a1, &v21, a4, a5, a6);
    v17 = cf;
    cf = 0;
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    v18 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v25 = "void WebKit::RemoteImageBuffer::getPixelBufferWithNewMemory(WebCore::SharedMemory::Handle &&, WebCore::PixelBufferFormat, WebCore::IntPoint, WebCore::IntSize, CompletionHandler<void ()> &&)";
      _os_log_fault_impl(&dword_19D52D000, v18, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBuffer.cpp 124: Invalid message dispatched %{public}s: Shared memory could not be mapped.", buf, 0xCu);
    }

    v19 = *(*(*(a1 + 32) + 48) + 56);
    if (v19)
    {
      *(v19 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }
  }

  v20 = v23;
  v23 = 0;
  if (v20)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v20);
  }
}

void WebKit::RemoteImageBuffer::putPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v7 = *(a1 + 16);
  if (v7[6] == 1.0)
  {
    *&buf = a3;
    *(&buf + 1) = a4;
    (*(*v7 + 96))(v7, a2, &buf, &v11, a6);
  }

  else
  {
    v10 = a1;
    v8 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = "void WebKit::RemoteImageBuffer::putPixelBuffer(const WebCore::PixelBufferSourceView &, WebCore::IntPoint, WebCore::IntSize, WebCore::IntPoint, WebCore::AlphaPremultiplication)";
      _os_log_fault_impl(&dword_19D52D000, v8, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBuffer.cpp 133: Invalid message dispatched %{public}s: putPixelBuffer() should not be called if (resolutionScale() != 1)", &buf, 0xCu);
    }

    v9 = *(*(*(v10 + 32) + 48) + 56);
    if (v9)
    {
      *(v9 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB58FA8);
    }
  }
}

void WebKit::RemoteImageBuffer::getShareableBitmap(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v6 = (v5 + 8);
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  v9 = WebCore::ImageBuffer::backendSize(v5);
  v10 = (v5 + 16);
  v11 = *(v5 + 16);
  if ((a2 & 1) == 0)
  {
    WebCore::IntSize::IntSize(&v28, v10);
    v9 = v28;
  }

  v37 = v9;
  if (v9 < 1 || v9 <= 0)
  {
    goto LABEL_23;
  }

  v12 = *(v5 + 32);
  if (v12)
  {
    CFRetain(*(v5 + 32));
  }

  v34 = v12;
  v35 = 1;
  MEMORY[0x19EB0C920](&v28, &v37, &v34, 0, 1.0);
  WebCore::ShareableBitmap::create();
  if (v30 == 1)
  {
    v13 = cf;
    cf = 0;
    if (v13)
    {
      CFRelease(v13);
    }
  }

  if (v35 == 1)
  {
    v14 = v34;
    v34 = 0;
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (v36)
  {
    WebCore::ShareableBitmap::createHandle();
    if (WebCore::ProcessIdentity::operator BOOL())
    {
      if ((v33 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebCore::SharedMemoryHandle::setOwnershipOfMemory();
    }

    WebCore::ShareableBitmap::createGraphicsContext(&v27, v36);
    if (v27)
    {
      v21[0] = 0;
      v21[1] = vcvt_f32_s32(v37);
      v25 = 0;
      v26 = v11;
      (*(*v27 + 424))();
      v24 = 0;
      if (v33 == 1)
      {
        v15.n128_f64[0] = WebCore::ShareableBitmapHandle::ShareableBitmapHandle(v21, &v28);
        v24 = 1;
      }
    }

    else
    {
      LOBYTE(v21[0]) = 0;
      v24 = 0;
    }

    v18 = v27;
    v27 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18, v15);
    }

    if (v33 == 1)
    {
      if (v32 == 1)
      {
        v19 = v31;
        v31 = 0;
        if (v19)
        {
          CFRelease(v19);
        }
      }

      WTF::MachSendRight::~MachSendRight(&v28);
    }

    v20 = v36;
    v36 = 0;
    if (v20)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v20, v10);
    }
  }

  else
  {
LABEL_23:
    LOBYTE(v21[0]) = 0;
    v24 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v5 + 8), v10);
  v16 = *a3;
  *a3 = 0;
  (*(*v16 + 16))(v16, v21);
  (*(*v16 + 8))(v16);
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      v17 = v22;
      v22 = 0;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    WTF::MachSendRight::~MachSendRight(v21);
  }
}

void WebKit::RemoteImageBuffer::filteredNativeImage(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  while (1)
  {
    v7 = *v6;
    if ((*v6 & 1) == 0)
    {
      break;
    }

    v8 = *v6;
    atomic_compare_exchange_strong_explicit(v6, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_4:
  (*(*v5 + 64))(&v38, v5, *a2);
  if (v38)
  {
    v37 = WebCore::NativeImage::size(v38);
    v10 = v5[4];
    if (v10)
    {
      CFRetain(v10);
    }

    v34 = v10;
    v35 = 1;
    MEMORY[0x19EB0C920](v28, &v37, &v34, 0, 1.0);
    WebCore::ShareableBitmap::create();
    if (v30 == 1)
    {
      v11 = cf;
      cf = 0;
      if (v11)
      {
        CFRelease(v11);
      }
    }

    if (v35 == 1)
    {
      v12 = v34;
      v34 = 0;
      if (v12)
      {
        CFRelease(v12);
      }
    }

    if (v36)
    {
      WebCore::ShareableBitmap::createHandle();
      if (WebCore::ProcessIdentity::operator BOOL())
      {
        if ((v33 & 1) == 0)
        {
          __break(1u);
          return;
        }

        WebCore::SharedMemoryHandle::setOwnershipOfMemory();
      }

      WebCore::ShareableBitmap::createGraphicsContext(&v27, v36);
      if (v27)
      {
        v20 = 0;
        v21 = vcvt_f32_s32(v37);
        v25 = 0;
        v26 = v21;
        WebCore::GraphicsContext::drawNativeImage();
        v24 = 0;
        if (v33 == 1)
        {
          v13.n128_f64[0] = WebCore::ShareableBitmapHandle::ShareableBitmapHandle(&v20, v28);
          v24 = 1;
        }
      }

      else
      {
        LOBYTE(v20) = 0;
        v24 = 0;
      }

      v14 = v27;
      v27 = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14, v13);
      }

      if (v33 == 1)
      {
        if (v32 == 1)
        {
          v15 = v31;
          v31 = 0;
          if (v15)
          {
            CFRelease(v15);
          }
        }

        WTF::MachSendRight::~MachSendRight(v28);
      }

      v16 = v36;
      v36 = 0;
      if (v16)
      {
        WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v16, v9);
      }
    }

    else
    {
      LOBYTE(v20) = 0;
      v24 = 0;
    }

    v17 = v38;
    v38 = 0;
    if (v17)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::RenderingResource,(WTF::DestructionThread)0>::deref(v17 + 1, v9);
    }
  }

  else
  {
    LOBYTE(v20) = 0;
    v24 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6, v9);
  v18 = *a3;
  *a3 = 0;
  (*(*v18 + 16))(v18, &v20);
  (*(*v18 + 8))(v18);
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      v19 = v22;
      v22 = 0;
      if (v19)
      {
        CFRelease(v19);
      }
    }

    WTF::MachSendRight::~MachSendRight(&v20);
  }
}

uint64_t WebKit::RemoteImageBuffer::flushContextSync(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 16) + 24))(*(a1 + 16));
  v3 = *a2;
  *a2 = 0;
  (*(*v3 + 16))(v3);
  v4 = *(*v3 + 8);

  return v4(v3);
}

void WebKit::RemoteImageBufferSet::~RemoteImageBufferSet(WebKit::RemoteImageBufferSet *this)
{
  *this = &unk_1F10FB0F8;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = (v2 + 8);
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
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_5:
    if (WebCore::ImageBuffer::volatilityState(v2) != 1)
    {
      if (*(v2 + 14))
      {
        v7 = (*(*v2 + 16))(v2);
        if (*(v7 + 332))
        {
          v14 = v7;
          do
          {
            (*(*v14 + 112))(v14, 1);
          }

          while (v14[83]);
        }
      }
    }

    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v3, v6);
  }

  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::~ScopedActiveMessageReceiveQueue(this + 15);
  v9 = *(this + 13);
  *(this + 13) = 0;
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10 && atomic_fetch_add((v10 + 16), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v10 + 16));
    (*(*(v10 + 8) + 8))();
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v11 + 8), v8);
  }

  v12 = *(this + 3);
  *(this + 3) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v12 + 8), v8);
  }

  v13 = *(this + 2);
  *(this + 2) = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v13 + 8), v8);
  }
}

{
  WebKit::RemoteImageBufferSet::~RemoteImageBufferSet(this);

  WTF::fastFree(v1, v2);
}

atomic_uchar **WebKit::RemoteImageBufferSet::updateConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 96) = *(a2 + 2);
  *(a1 + 88) = v4;
  v5 = a2[2];
  if (v5)
  {
    CFRetain(a2[2]);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = v5;
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a2 + 6);
  *(a1 + 116) = *(a2 + 28);
  *(a1 + 112) = v7;

  return WebKit::ImageBufferSet::clearBuffers((a1 + 16), a2);
}

uint64_t WebKit::RemoteImageBufferSet::endPrepareForDisplay(void *a1, void *a2)
{
  v5 = a1[15];
  v4 = (a1 + 15);
  if (v5)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    while (1)
    {
      v7 = v6[1];
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = v6[1];
      atomic_compare_exchange_strong_explicit(v6 + 1, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[1]);
LABEL_6:
    (*(*v6 + 24))(v6);
  }

  v36[0] = 0;
  v37 = 0;
  v38 = 2;
  LOBYTE(v39) = 0;
  v40 = 0;
  LOBYTE(v42) = 0;
  v43 = 0;
  LOBYTE(v45) = 0;
  v46 = 0;
  if (v6)
  {
    v9 = (*(*v6 + 136))(v6);
    if (((*(*v9 + 16))(v9) & 1) == 0)
    {
      result = 96;
      __break(0xC471u);
      return result;
    }

    (*(*v9 + 24))(v34, v9, 1);
    std::__optional_storage_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<mpark::variant<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,false>>(v36, v34);
    if (v35 == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v34);
    }

    while (1)
    {
      v10 = v6[1];
      if ((v10 & 1) == 0)
      {
        break;
      }

      v11 = v6[1];
      atomic_compare_exchange_strong_explicit(v6 + 1, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v11 == v10)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v6[1]);
LABEL_13:
    v12 = v6[15];
    v13 = 1;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = a1[3];
  if (v14)
  {
    while (1)
    {
      v15 = *(v14 + 8);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(v14 + 8);
      atomic_compare_exchange_strong_explicit((v14 + 8), &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_17;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v14 + 8));
LABEL_17:
    v17 = *(v14 + 120);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = a1[4];
  if (v19)
  {
    while (1)
    {
      v20 = *(v19 + 8);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(v19 + 8);
      atomic_compare_exchange_strong_explicit((v19 + 8), &v21, v20 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v21 == v20)
      {
        goto LABEL_21;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v19 + 8));
LABEL_21:
    v22 = *(v19 + 120);
    v23 = 1;
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v39 = v12;
  v40 = v13;
  *v41 = v34[0];
  *&v41[3] = *(v34 + 3);
  v42 = v17;
  v43 = v18;
  *v44 = *v33;
  *&v44[3] = *&v33[3];
  v45 = v22;
  v46 = v23;
  *(v47 + 3) = *&v32[3];
  v47[0] = *v32;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v19 + 8), a2);
  }

  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v14 + 8), a2);
  }

  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6 + 1, a2);
  }

  v24 = *(a1[10] + 40);
  atomic_fetch_add((v24 + 8), 1u);
  v25 = *(v24 + 40);
  v26 = a1[8];
  v27 = IPC::Encoder::operator new(0x238, a2);
  *v27 = 1371;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 1) = v26;
  *(v27 + 68) = 0;
  *(v27 + 70) = 0;
  *(v27 + 69) = 0;
  IPC::Encoder::encodeHeader(v27);
  v34[0] = v27;
  IPC::ArgumentCoder<WebKit::ImageBufferSetPrepareBufferForDisplayOutputData,void>::encode(v27, v36);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v27, a2);
  IPC::Connection::sendMessageImpl(v25, v34, 0, 0);
  result = v34[0];
  v34[0] = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v28);
    result = bmalloc::api::tzoneFree(v30, v31);
  }

  if (atomic_fetch_add((v24 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v24 + 8));
    result = (*(*v24 + 8))(v24);
  }

  if (v37 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::ShareableBitmapHandle,WTF::MachSendRight>,(mpark::detail::Trait)1>::~move_constructor(v36);
  }

  if (v6)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6 + 1, v28);
  }

  return result;
}

void WebKit::RemoteImageBufferSet::ensureBufferForDisplay(uint64_t a1, _BYTE *a2, _BYTE *a3, char a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a2[33];
  if (a2[32] == 1)
  {
    *&buf = *(a1 + 88);
    DWORD2(buf) = *(a1 + 96);
    v9 = *(a1 + 104);
    v46 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v47 = *(a1 + 113);
    v48 = *(a1 + 116);
    isSmallLayerBacking = WebKit::isSmallLayerBacking(&buf);
    v11 = WebKit::ImageBufferSet::swapBuffersForDisplay((a1 + 16), v8, !isSmallLayerBacking);
    *a3 = v11;
    if (v9)
    {
      CFRelease(v9);
      v11 = *a3;
    }
  }

  else
  {
    v11 = WebKit::ImageBufferSet::swapBuffersForDisplay((a1 + 16), a2[33], 0);
    *a3 = v11;
  }

  if (!v11)
  {
    v31 = ceilf(*(a1 + 88));
    v32 = 0x7FFFFFFFLL;
    v33 = 0x80000000;
    if (v31 > -2147500000.0)
    {
      v33 = v31;
    }

    if (v31 < 2147500000.0)
    {
      v32 = v33;
    }

    v34 = ceilf(*(a1 + 92));
    if (v34 >= 2147500000.0)
    {
      v35 = 0x7FFFFFFF00000000;
    }

    else if (v34 <= -2147500000.0)
    {
      v35 = 0x8000000000000000;
    }

    else
    {
      v35 = v34 << 32;
    }

    v44.m_location = 0;
    v44.m_size = (v35 | v32);
    if ((a4 & 1) == 0)
    {
      WebCore::Region::Region(&buf, &v44);
      v36 = WebCore::Region::contains((a2 + 8), &buf);
      WebCore::Region::~Region(&buf);
      if ((v36 & 1) == 0)
      {
        v39 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          LODWORD(buf) = 136446210;
          *(&buf + 4) = "void WebKit::RemoteImageBufferSet::ensureBufferForDisplay(ImageBufferSetPrepareBufferForDisplayInputData &, SwapBuffersDisplayRequirement &, BOOL)";
          _os_log_fault_impl(&dword_19D52D000, v39, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteImageBufferSet.cpp 135: Invalid message dispatched %{public}s: Can't asynchronously require full display for a buffer set", &buf, 0xCu);
        }

        v40 = *(*(*(a1 + 80) + 48) + 56);
        if (v40)
        {
          *(v40 + 94) = 1;
        }

        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          JUMPOUT(0x19DB5A170);
        }

        return;
      }
    }

    WebCore::Region::Region(&buf, &v44);
    WebCore::Region::operator=();
    WebCore::Region::~Region(&buf);
  }

  if (!*(a1 + 16))
  {
    buf = 0uLL;
    v21 = *(a1 + 80);
    v22 = *(a1 + 115);
    v23 = *(a1 + 116);
    v24 = *(a1 + 96);
    v25 = *(a1 + 113);
    v41 = 0;
    v42 = 0;
    WTF::MachSendRight::MachSendRight(v43, (&buf + 12));
    WebKit::RemoteRenderingBackend::allocateImageBuffer(&v44.m_location, v21, (a1 + 88), v22, v23, (a1 + 104), v25, &v41, v24);
    v27 = *(a1 + 16);
    *(a1 + 16) = v44.m_location;
    if (v27)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v27 + 8), v26);
    }

    WTF::MachSendRight::~MachSendRight(v43);
    v28 = v41;
    v41 = 0;
    if (v28)
    {
      WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v28);
    }

    *(a1 + 60) = 1;
    WTF::MachSendRight::~MachSendRight((&buf + 12));
    v11 = buf;
    *&buf = 0;
    if (v11)
    {
      v11 = WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v11);
    }
  }

  if (*a3 != 2)
  {
    m_location = *(a1 + 16);
    if (m_location)
    {
      while (1)
      {
        v13 = *(m_location + 8);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = *(m_location + 8);
        atomic_compare_exchange_strong_explicit((m_location + 8), &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v14 == v13)
        {
          goto LABEL_12;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(m_location + 8));
    }

    else
    {
      v37 = WebCore::DestinationColorSpace::SRGB(v11);
      buf = 0uLL;
      WebCore::ImageBuffer::create<WebCore::NullImageBufferBackend,WebCore::ImageBuffer>(&v44.m_location, 0, *v37);
      m_location = v44.m_location;
      v44.m_location = 0;
      WTF::MachSendRight::~MachSendRight((&buf + 12));
      v38 = buf;
      *&buf = 0;
      if (v38)
      {
        WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v38);
      }

      if (!m_location)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB5A0FCLL);
      }
    }

LABEL_12:
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v17 = WTF::fastMalloc(0x48);
    v18 = WebKit::RemoteDisplayListRecorder::RemoteDisplayListRecorder(v17, m_location, v15, v16);
    WebKit::RemoteDisplayListRecorder::startListeningForIPC(v18);
    *&buf = v17;
    v19 = (a1 + 120);
    if (v19 != &buf)
    {
      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>(v19);
        v29 = *v19;
        v30 = buf;
        *&buf = 0;
        *v19 = v30;
        if (v29)
        {
          if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v29 + 2);
            (*(*v29 + 8))(v29);
          }
        }
      }

      else
      {
        *&buf = 0;
        *v19 = v17;
      }
    }

    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteDisplayListRecorder,WTF::RefPtr<WebKit::RemoteDisplayListRecorder,WTF::RawPtrTraits<WebKit::RemoteDisplayListRecorder>,WTF::DefaultRefDerefTraits<WebKit::RemoteDisplayListRecorder>>>::~ScopedActiveMessageReceiveQueue(&buf);
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((m_location + 8), v20);
  }
}

BOOL WebKit::isSmallLayerBacking(uint64_t a1)
{
  v2 = WebCore::ImageBuffer::calculateBackendSize();
  result = 0;
  v4 = HIDWORD(v2);
  if ((v2 & 0x80000000) != 0)
  {
    LODWORD(v2) = -v2;
  }

  if ((v4 & 0x80000000) != 0)
  {
    LODWORD(v4) = -v4;
  }

  v5 = v2 * v4;
  if (*(a1 + 26) == 3 && (v5 & 0xFFFFFFFF00000000) == 0 && v5 <= 0x1000)
  {
    return *(a1 + 24) < 2u;
  }

  return result;
}

void WebKit::RemoteRenderingBackend::allocateImageBuffer(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4, int a5, CFTypeRef *a6, __int16 a7, atomic_uint **a8, float a9)
{
  v13 = a5;
  v17 = *(a2 + 56);
  if (a5 == 1)
  {
    v24 = (v17 + 16);
    atomic_fetch_add((v17 + 16), 1u);
    v25 = atomic_load((v17 + 72));
    if (v25 >> 4 >= 0xC35)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v24);
      goto LABEL_30;
    }

    v27 = atomic_load(&WebKit::globalImageBufferForCanvasCount);
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref(v24);
    if (v27 >> 6 > 0xC34)
    {
LABEL_30:
      v23 = 0;
      goto LABEL_10;
    }

    v18 = WebKit::adjustImageBufferCreationContext(*(a2 + 56), a8, v28);
    if (a4 == 1)
    {
      v29 = atomic_load((*(a2 + 56) + 64));
      if (v29 >> 3 < 0x271)
      {
        goto LABEL_3;
      }

      *a1 = 0;
      v20 = a7;
LABEL_17:
      WebCore::ImageBuffer::create<WebKit::ImageBufferShareableBitmapBackend,WebCore::ImageBuffer>(a3, a6, v20, v13, a8, &v36, a9);
LABEL_18:
      v23 = v36;
      goto LABEL_10;
    }
  }

  else
  {
    v18 = WebKit::adjustImageBufferCreationContext(*(a2 + 56), a8, a3);
    if (a4 == 1)
    {
LABEL_3:
      v19 = atomic_load(&WebKit::globalAcceleratedImageBufferCount);
      *a1 = 0;
      v20 = a7;
      if (v19 >> 4 <= 0x270)
      {
        v36 = *a3;
        v37 = a9;
        v21 = *a6;
        v38 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        v39 = a7;
        v40 = v13;
        isSmallLayerBacking = WebKit::isSmallLayerBacking(&v36);
        if (v21)
        {
          CFRelease(v21);
        }

        if (isSmallLayerBacking)
        {
          WebCore::ImageBuffer::create<WebKit::ImageBufferShareableMappedIOSurfaceBitmapBackend,WebCore::ImageBuffer>(&v36, *a3, *a6, v20, v13, a8, a9);
          v23 = v36;
          if (v36)
          {
            goto LABEL_10;
          }
        }

        WebCore::ImageBuffer::create<WebKit::ImageBufferShareableMappedIOSurfaceBackend,WebCore::ImageBuffer>(a3, a6, v20, v13, a8, &v36, a9);
        v23 = v36;
        if (v36)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_17;
    }
  }

  *a1 = 0;
  v20 = a7;
  if (!a4)
  {
    goto LABEL_17;
  }

  if (a4 == 2)
  {
    WebCore::ImageBuffer::create<WebCore::ImageBufferCGPDFDocumentBackend,WebCore::ImageBuffer>(&v36, *a3, *a6, a7, v13, a9);
    goto LABEL_18;
  }

  if (a4 != 3)
  {
    goto LABEL_30;
  }

  WebCore::ControlFactory::create(&v35, v18);
  WebCore::ImageBufferDisplayListBackend::create();
  v30 = v35;
  v35 = 0;
  if (v30)
  {
    if (v30[2] == 1)
    {
      (*(*v30 + 8))(v30);
    }

    else
    {
      --v30[2];
    }
  }

  v31 = v36;
  if (!v36)
  {
    goto LABEL_30;
  }

  v36 = 0;
  v34 = v31;
  WebCore::ImageBuffer::create<WebCore::ImageBufferDisplayListBackend,WebCore::ImageBuffer>(&v35, a3, a8, &v34);
  v32 = v34;
  v23 = v35;
  v34 = 0;
  v35 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = v36;
  v36 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

LABEL_10:
  *a1 = v23;
}

void WebCore::ImageBuffer::create<WebCore::NullImageBufferBackend,WebCore::ImageBuffer>(uint64_t *a1, uint64_t a2, CFTypeRef cf)
{
  v19 = a2;
  v20 = 1065353216;
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v22 = 1;
  v23 = 0;
  WebCore::ImageBuffer::backendParameters();
  WebCore::NullImageBufferBackend::create();
  if (v17)
  {
    v15[0] = 0;
    WebCore::ImageBufferBackend::calculateBaseTransform();
    v16 = 0;
    v10 = v19;
    v11 = v20;
    cfa = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    v13 = v22;
    v14 = v23;
    v4 = v17;
    v17 = 0;
    v9 = v4;
    WebCore::ImageBuffer::create<WebCore::ImageBuffer>(&v10, v15, a1);
    (*(*v9 + 8))(v9);
    v5 = cfa;
    cfa = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v17;
    v17 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else
  {
    *a1 = 0;
  }

  v7 = v18;
  v18 = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v21;
  v21 = 0;
  if (v8)
  {
    CFRelease(v8);
  }
}

WTF *WebKit::RemoteImageBufferSet::prepareBufferForDisplay(WebKit::RemoteImageBufferSet *this, const WebCore::Region *a2, int a3)
{
  WebKit::ImageBufferSet::computePaintingRects(a2, *(this + 24), &v11);
  v6 = *(this + 11);
  v10[0] = 0;
  v10[1] = v6;
  WebKit::ImageBufferSet::prepareBufferForDisplay(this + 2, v10, a2, &v11, a3);
  result = v11;
  if (&v13 != v11 && v11 != 0)
  {
    v11 = 0;
    v12 = 0;
    return WTF::fastFree(result, v7);
  }

  return result;
}

void *WebKit::RemoteRenderingBackend::create@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, atomic_uint **a4@<X8>)
{
  v8 = WTF::fastMalloc(0xA8);
  v9 = WebKit::RemoteRenderingBackend::RemoteRenderingBackend(v8, a1, a2, a3);
  *a4 = v9;

  return WebKit::RemoteRenderingBackend::startListeningForIPC(v9);
}

void *WebKit::RemoteRenderingBackend::startListeningForIPC(atomic_uint *this)
{
  atomic_fetch_add(this + 4, 1u);
  v2 = WTF::fastMalloc(0x10);
  *v2 = &unk_1F10FB268;
  v2[1] = this;
  v4 = v2;
  WebKit::RemoteRenderingBackend::dispatch(this, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::RemoteRenderingBackend::RemoteRenderingBackend(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *a1 = &unk_1F10FB120;
  *(a1 + 8) = &unk_1F10FB178;
  v8 = WTF::fastMalloc(0x70);
  *(a1 + 32) = IPC::StreamConnectionWorkQueue::StreamConnectionWorkQueue(v8, "RemoteRenderingBackend work queue", 34);
  v10 = *a4;
  *a4 = 0;
  *(a1 + 40) = v10;
  while (1)
  {
    v11 = a2[2];
    if ((v11 & 1) == 0)
    {
      break;
    }

    v16 = a2[2];
    atomic_compare_exchange_strong_explicit(a2 + 2, &v16, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v16 == v11)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(a2[2]);
LABEL_4:
  *(a1 + 48) = a2;
  v12 = WebKit::GPUConnectionToWebProcess::sharedResourceCache(a2, v9, (a1 + 56));
  *(a1 + 108) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 128) = a3;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v14 = WebKit::ShapeDetection::ObjectHeap::operator new(v12, v13);
  *(a1 + 160) = WebKit::ShapeDetection::ObjectHeap::ObjectHeap(v14);
  return a1;
}

void WebKit::RemoteRenderingBackend::~RemoteRenderingBackend(WebKit::RemoteRenderingBackend *this, void *a2)
{
  *this = &unk_1F10FB120;
  *(this + 1) = &unk_1F10FB178;
  v3 = *(this + 20);
  *(this + 20) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::ShapeDetection::ObjectHeap>::deref((v3 + 8));
  }

  v4 = *(this + 19);
  if (v4)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(this + 18);
  if (v5)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v6);
  }

  WTF::MachSendRight::~MachSendRight((this + 120));
  WebKit::RemoteResourceCache::~RemoteResourceCache((this + 64), v7);
  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v9 + 16));
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v10 + 16));
  }

  v11 = *(this + 5);
  *(this + 5) = 0;
  if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v11 + 2);
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 4);
  *(this + 4) = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v12 + 8));
  }

  WTF::WeakPtrFactory<WebKit::SessionSet,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v8);

  WTF::isIntegralOrPointerType(this);
}

{
  WebKit::RemoteRenderingBackend::~RemoteRenderingBackend(this, a2);

  WTF::fastFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteRenderingBackend::~RemoteRenderingBackend(WebKit::RemoteRenderingBackend *this, void *a2)
{
  WebKit::RemoteRenderingBackend::~RemoteRenderingBackend((this - 8), a2);
}

{
  WebKit::RemoteRenderingBackend::~RemoteRenderingBackend((this - 8), a2);

  WTF::fastFree(v2, v3);
}

uint64_t WebKit::RemoteRenderingBackend::stopListeningForIPC(WebKit::RemoteRenderingBackend *this)
{
  v2 = *(this + 4);
  v3 = (v2 + 8);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v7 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v7, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v4)
    {
      goto LABEL_4;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_4:
  atomic_fetch_add(this + 4, 1u);
  v5 = WTF::fastMalloc(0x10);
  *v5 = &unk_1F10FB290;
  v5[1] = this;
  v8 = v5;
  IPC::StreamConnectionWorkQueue::stopAndWaitForCompletion(v2, &v8);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v2 + 8));
}

IPC::Encoder *WebKit::RemoteRenderingBackend::workQueueInitialize(WebKit::RemoteRenderingBackend *this)
{
  v2 = *(this + 5);
  atomic_fetch_add(v2 + 2, 1u);
  IPC::StreamServerConnection::open(v2, *(this + 4));
  IPC::StreamServerConnection::startReceivingMessages(v2, this + 8, 0x74u, *(this + 16));
  v5[0] = *(this + 4) + 32;
  v5[1] = v2 + 40;
  result = IPC::MessageSender::send<Messages::RemoteRenderingBackendProxy::DidInitialize>(this, v5, *(this + 16));
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    v4 = *(*v2 + 8);

    return v4(v2);
  }

  return result;
}

atomic_ullong *WebKit::RemoteRenderingBackend::workQueueUninitialize(WebKit::RemoteRenderingBackend *this, void *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    *(this + 18) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 19) = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WebKit::RemoteResourceCache::releaseAllResources((this + 64), a2);
  v5 = *(this + 5);
  atomic_fetch_add(v5 + 2, 1u);
  IPC::StreamServerConnection::stopReceivingMessages(v5, 0x74u, *(this + 16));
  result = IPC::StreamServerConnection::invalidate(v5);
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5 + 2);
    v7 = *(*v5 + 8);

    return v7(v5);
  }

  return result;
}

uint64_t WebKit::RemoteResourceCache::releaseAllResources(WebKit::RemoteResourceCache *this, void *a2)
{
  v3 = *this;
  if (v3)
  {
    *this = 0;
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WebKit::RemoteResourceCache::releaseMemory(this, a2);
}

void WebKit::RemoteRenderingBackend::moveToSerializedBuffer(void *a1, uint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1 + 18;
  v6 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( a1[18],  a2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(buf, v5, v6);
  v7 = *buf;
  if (!*buf)
  {
    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(buf);
    v27 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "void WebKit::RemoteRenderingBackend::moveToSerializedBuffer(RenderingResourceIdentifier, RemoteSerializedImageBufferIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 187: Invalid message dispatched %{public}s: Missing ImageBuffer", buf, 0xCu);
    }

    v28 = *(a1[6] + 56);
    if (v28)
    {
      *(v28 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5B170);
    }

    return;
  }

  atomic_fetch_add((*buf + 8), 1u);
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(buf);
  v8 = atomic_load((v7 + 8));
  if (v8 != 1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5B1D4);
  }

  v9 = *(v7 + 16);
  v10 = (v9 + 8);
  while (1)
  {
    v11 = *v10;
    if ((*v10 & 1) == 0)
    {
      break;
    }

    v12 = *v10;
    atomic_compare_exchange_strong_explicit(v10, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v10);
LABEL_6:
  if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v7 + 8));
    (*(*v7 + 8))(v7);
  }

  v13 = *v10;
  if (*v10)
  {
    v16 = v13 >> 1;
  }

  else
  {
    v14 = 0;
    v15 = 1;
    atomic_compare_exchange_strong_explicit(v13, &v14, 1u, memory_order_acquire, memory_order_acquire);
    if (v14)
    {
      MEMORY[0x19EB01E30](v13);
      v15 = 1;
    }

    v16 = *(v13 + 8);
    atomic_compare_exchange_strong_explicit(v13, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      v17 = v13;
      v18 = v16;
      WTF::Lock::unlockSlow(v17);
      v16 = v18;
    }
  }

  if (v16 == 1)
  {
    v19 = a1[7];
    atomic_fetch_add((v19 + 16), 1u);
    v29 = v9;
    v21 = WebKit::RemoteSharedResourceCache::addSerializedImageBuffer(v19, a3, &v29);
    if (v29)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v29 + 8), v20);
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    else if (!v19)
    {
LABEL_18:
      if ((v21 & 1) == 0)
      {
        v25 = qword_1ED6416C8;
        if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "void WebKit::RemoteRenderingBackend::moveToSerializedBuffer(RenderingResourceIdentifier, RemoteSerializedImageBufferIdentifier)";
          _os_log_fault_impl(&dword_19D52D000, v25, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 191: Invalid message dispatched %{public}s: Duplicate SerializedImageBuffer", buf, 0xCu);
        }

        v26 = *(a1[6] + 56);
        if (v26)
        {
          *(v26 + 94) = 1;
        }

        if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
        {
          __break(0xC471u);
          goto LABEL_43;
        }
      }

      return;
    }

    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v19 + 16));
    goto LABEL_18;
  }

  v22 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    *&buf[4] = "void WebKit::RemoteRenderingBackend::moveToSerializedBuffer(RenderingResourceIdentifier, RemoteSerializedImageBufferIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v22, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 189: Invalid message dispatched %{public}s: ImageBuffer in use", buf, 0xCu);
  }

  v24 = *(a1[6] + 56);
  if (v24)
  {
    *(v24 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
LABEL_43:
    JUMPOUT(0x19DB5B094);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v9 + 8), v23);
}

void WebKit::RemoteRenderingBackend::moveToImageBuffer(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = *(a1 + 56);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::RemoteSharedResourceCache::takeSerializedImageBuffer(v6, a2, &v22);
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSharedResourceCache,(WTF::DestructionThread)0>::deref((v6 + 16));
  }

  if (v22)
  {
    v20 = 0;
    v21 = 0;
    WebKit::adjustImageBufferCreationContext(*(a1 + 56), &v20, v7);
    WebCore::ImageBuffer::transferToNewContext();
    v8 = v23;
    v19 = v22;
    v22 = 0;
    v9 = WTF::fastMalloc(0x38);
    *v24 = WebKit::RemoteImageBuffer::RemoteImageBuffer(v9, &v19, v8, a4, a1);
    WebKit::RemoteImageBuffer::startListeningForIPC(*v24);
    WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(buf, (a1 + 144), &v23, v24);
    v11 = *v24;
    *v24 = 0;
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
    }

    if (v19)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v19 + 8), v10);
    }

    if ((v27 & 1) == 0)
    {
      v17 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
      {
        *v24 = 136446210;
        *&v24[4] = "void WebKit::RemoteRenderingBackend::moveToImageBuffer(RemoteSerializedImageBufferIdentifier, RenderingResourceIdentifier, RemoteDisplayListRecorderIdentifier)";
        _os_log_fault_impl(&dword_19D52D000, v17, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 212: Invalid message dispatched %{public}s: Duplicate ImageBuffer", v24, 0xCu);
      }

      v18 = *(*(a1 + 48) + 56);
      if (v18)
      {
        *(v18 + 94) = 1;
      }

      if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB5B3ECLL);
      }
    }

    WTF::MachSendRight::~MachSendRight((&v21 + 4));
    v13 = v20;
    v20 = 0;
    if (v13)
    {
      WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v13);
    }
  }

  else
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v26 = "void WebKit::RemoteRenderingBackend::moveToImageBuffer(RemoteSerializedImageBufferIdentifier, RenderingResourceIdentifier, RemoteDisplayListRecorderIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 206: Invalid message dispatched %{public}s: Missing SerializedImageBuffer", buf, 0xCu);
    }

    v16 = *(*(a1 + 48) + 56);
    if (v16)
    {
      *(v16 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5B3A8);
    }
  }

  v14 = v22;
  v22 = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v14 + 8), v12);
  }
}

uint64_t WebKit::adjustImageBufferCreationContext(WebKit *this, atomic_uint **a2, WebCore::ImageBufferCreationContext *a3)
{
  v3 = *(this + 7);
  atomic_fetch_add(v3, 1u);
  v4 = *a2;
  *a2 = v3;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v4);
  }

  return WebCore::ProcessIdentity::operator=();
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int **a4)
{
  v6 = *a3;
  if (*a3 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5B718);
  }

  v31[7] = v4;
  v31[8] = v5;
  v10 = result;
  v11 = *a2;
  if (!*a2)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, 0);
    v11 = *a2;
    v6 = *a3;
  }

  v12 = *(v11 - 8);
  v13 = (v6 + ~(v6 << 32)) ^ ((v6 + ~(v6 << 32)) >> 22);
  v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
  v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
  v16 = v12 & ((v15 >> 31) ^ v15);
  v17 = (v11 + 16 * v16);
  v18 = *v17;
  if (*v17)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if (v18 == v6)
      {
        v28 = 0;
        v27 = v11 + 16 * *(v11 - 4);
        goto LABEL_21;
      }

      if (v18 == -1)
      {
        v19 = v17;
      }

      v16 = (v16 + v20) & v12;
      v17 = (v11 + 16 * v16);
      v18 = *v17;
      ++v20;
    }

    while (*v17);
    if (v19)
    {
      *v19 = 0;
      v19[1] = 0;
      --*(*a2 - 16);
      v6 = *a3;
      v17 = v19;
    }
  }

  *v17 = v6;
  v21 = (v17 + 1);
  v22 = *a4;
  *a4 = 0;
  v31[0] = v22;
  if (v17 + 1 != v31)
  {
    if (*v21)
    {
      IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(v17 + 1);
      v29 = *v21;
      v30 = v31[0];
      v31[0] = 0;
      *v21 = v30;
      if (v29 && atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29 + 2);
        (*(*v29 + 8))(v29);
      }
    }

    else
    {
      v31[0] = 0;
      *v21 = v22;
    }
  }

  result = IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(v31);
  v23 = *a2;
  if (*a2)
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
      goto LABEL_20;
    }

LABEL_23:
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(a2, v17);
    v17 = result;
    v23 = *a2;
    if (*a2)
    {
      v26 = *(v23 - 4);
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_20;
  }

  if (3 * v26 <= 4 * v25)
  {
    goto LABEL_23;
  }

LABEL_20:
  v27 = v23 + 16 * v26;
  v28 = 1;
LABEL_21:
  *v10 = v17;
  *(v10 + 8) = v27;
  *(v10 + 16) = v28;
  return result;
}

unsigned int *WebKit::RemoteRenderingBackend::didDrawRemoteToPDF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::RemoteRenderingBackend::imageBuffer(a1, a3, &v12);
  result = v12;
  if (v12)
  {
    (*(*v12 + 13))(&v11);
    v7 = v11;
    v11 = 0;
    v8 = WTF::fastMalloc(0x20);
    *v8 = &unk_1F10FB2B8;
    v8[1] = a2;
    v8[2] = v7;
    v8[3] = a4;
    v10 = v8;
    WTF::callOnMainRunLoop();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    result = v11;
    v11 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 8))(result);
    }

    if (v12)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v12 + 1, v9);
    }
  }

  return result;
}

void WebKit::RemoteRenderingBackend::createImageBuffer(void *a1, uint64_t *a2, int a3, int a4, CFTypeRef *a5, __int16 a6, uint64_t a7, uint64_t a8, float a9)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a7;
  v24 = 0;
  v25 = 0;
  WebKit::RemoteRenderingBackend::allocateImageBuffer(&v26, a1, a2, a3, a4, a5, a6, &v24, a9);
  WTF::MachSendRight::~MachSendRight((&v25 + 4));
  v12 = v24;
  v24 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCounted<WebCore::IOSurfacePool,(WTF::DestructionThread)0>::deref(v12);
  }

  v13 = v26;
  if (!v26)
  {
    v17 = qword_1ED6410D0;
    v18 = os_log_type_enabled(qword_1ED6410D0, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v19 = a1[16];
      *buf = 134218240;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = a7;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "[renderingBackend=%llu] RemoteRenderingBackend::createImageBuffer - failed to allocate image buffer %llu", buf, 0x16u);
    }

    v20 = WebCore::DestinationColorSpace::SRGB(v18);
    *buf = 0;
    *&buf[8] = 0;
    WebCore::ImageBuffer::create<WebCore::NullImageBufferBackend,WebCore::ImageBuffer>(v28, 0, *v20);
    v13 = *v28;
    *v28 = 0;
    WebCore::ImageBufferCreationContext::~ImageBufferCreationContext(buf);
    if (!v13)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5BA8CLL);
    }
  }

  v23 = v13;
  v26 = 0;
  v14 = WTF::fastMalloc(0x38);
  *v28 = WebKit::RemoteImageBuffer::RemoteImageBuffer(v14, &v23, a7, a8, a1);
  WebKit::RemoteImageBuffer::startListeningForIPC(*v28);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::Ref<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>(buf, a1 + 18, &v27, v28);
  v16 = *v28;
  *v28 = 0;
  if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16 + 2);
    (*(*v16 + 8))(v16);
  }

  if (v23)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v23 + 8), v15);
  }

  if ((buf[16] & 1) == 0)
  {
    v21 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v28 = 136446210;
      *&v28[4] = "void WebKit::RemoteRenderingBackend::createImageBuffer(const FloatSize &, RenderingMode, RenderingPurpose, float, const DestinationColorSpace &, ImageBufferFormat, RenderingResourceIdentifier, RemoteDisplayListRecorderIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v21, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 310: Invalid message dispatched %{public}s: Duplicate ImageBuffers", v28, 0xCu);
    }

    v22 = *(a1[6] + 56);
    if (v22)
    {
      *(v22 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5BAD0);
    }
  }

  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref((v26 + 8), v15);
  }
}

void WebKit::RemoteRenderingBackend::releaseImageBuffer(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 144);
  v4 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>( *(a1 + 144),  a2);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(v8, v3, v4);
  v5 = *v8;
  IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBuffer,WTF::RefPtr<WebKit::RemoteImageBuffer,WTF::RawPtrTraits<WebKit::RemoteImageBuffer>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBuffer>>>::~ScopedActiveMessageReceiveQueue(v8);
  if (!v5)
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *v8 = 136446210;
      *&v8[4] = "void WebKit::RemoteRenderingBackend::releaseImageBuffer(RenderingResourceIdentifier)";
      _os_log_fault_impl(&dword_19D52D000, v6, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 317: Invalid message dispatched %{public}s: Missing ImageBuffer", v8, 0xCu);
    }

    v7 = *(*(a1 + 48) + 56);
    if (v7)
    {
      *(v7 + 94) = 1;
    }

    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB5BBD8);
    }
  }
}

void WebKit::RemoteRenderingBackend::createImageBufferSet(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = WTF::fastMalloc(0x98);
  *(v6 + 8) = 1;
  *(v6 + 56) = 0;
  *(v6 + 60) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 0;
  *v6 = &unk_1F10FB0F8;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  atomic_fetch_add((a1 + 16), 1u);
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 1065353216;
  v7 = *WebCore::DestinationColorSpace::SRGB(v6);
  *(v6 + 104) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  *(v6 + 112) = 257;
  *(v6 + 116) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  v8 = *(*(v6 + 80) + 40);
  atomic_fetch_add(v8 + 2, 1u);
  IPC::StreamServerConnection::startReceivingMessages(v8, v6, 0x57u, *(v6 + 64));
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 8))(v8);
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DB5C00CLL);
  }

  if (!a2)
  {
    __break(0xC471u);
LABEL_42:
    JUMPOUT(0x19DB5BF78);
  }

  v9 = *(a1 + 152);
  if (!v9)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 152));
    v9 = *(a1 + 152);
  }

  v10 = *(v9 - 8);
  v11 = (a2 + ~(a2 << 32)) ^ ((a2 + ~(a2 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_18:
    *v15 = a2;
    v19 = v15 + 1;
    *v28 = v6;
    if (v15 + 1 != v28)
    {
      if (*v19)
      {
        IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::stopListeningForIPCAndRelease<WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>(v15 + 1);
        v24 = *v19;
        v25 = *v28;
        *v28 = 0;
        *v19 = v25;
        if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v24 + 2);
          (*(*v24 + 8))(v24);
        }
      }

      else
      {
        *v28 = 0;
        *v19 = v6;
      }
    }

    IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>::~ScopedActiveMessageReceiveQueue(v28);
    v20 = *(a1 + 152);
    if (v20)
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
      if (v23 > 2 * v22)
      {
        return;
      }
    }

    else if (3 * v23 > 4 * v22)
    {
      return;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<IPC::ScopedActiveMessageReceiveQueue<WebKit::RemoteImageBufferSet,WTF::RefPtr<WebKit::RemoteImageBufferSet,WTF::RawPtrTraits<WebKit::RemoteImageBufferSet>,WTF::DefaultRefDerefTraits<WebKit::RemoteImageBufferSet>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((a1 + 152));
    return;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != a2)
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
        --*(*(a1 + 152) - 16);
        v15 = v17;
      }

      goto LABEL_18;
    }
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    (*(*v6 + 8))(v6);
  }

  v26 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    *v28 = 136446210;
    *&v28[4] = "void WebKit::RemoteRenderingBackend::createImageBufferSet(RemoteImageBufferSetIdentifier, RemoteDisplayListRecorderIdentifier)";
    _os_log_fault_impl(&dword_19D52D000, v26, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/GPUProcess/graphics/RemoteRenderingBackend.cpp 324: Invalid message dispatched %{public}s: Duplicate ImageBufferSet", v28, 0xCu);
  }

  v27 = *(*(a1 + 48) + 56);
  if (v27)
  {
    *(v27 + 94) = 1;
  }

  if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
  {
    __break(0xC471u);
    goto LABEL_42;
  }
}