@interface _WKSmartCardSlotObserver
- (WTF::StringImpl)observeValueForKeyPath:(WTF::StringImpl *)result ofObject:change:context:;
- (_WKSmartCardSlotObserver)initWithService:(void *)a3;
- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)a2 change:context:;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)observeValueForKeyPath:(void *)a1 ofObject:(void *)a2 change:context:;
@end

@implementation _WKSmartCardSlotObserver

- (_WKSmartCardSlotObserver)initWithService:(void *)a3
{
  v10.receiver = self;
  v10.super_class = _WKSmartCardSlotObserver;
  v4 = [(_WKSmartCardSlotObserver *)&v10 init];
  v6 = v4;
  if (v4)
  {
    v7 = *a3;
    *a3 = 0;
    m_ptr = v4->m_service.m_impl.m_ptr;
    v6->m_service.m_impl.m_ptr = v7;
    if (m_ptr)
    {
      if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, m_ptr);
        WTF::fastFree(m_ptr, v5);
      }
    }
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  m_ptr = self->m_service.m_impl.m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  if (a5)
  {
    v8 = a5;
  }

  v9 = WTF::fastMalloc(0x18);
  *v9 = &unk_1F110B8F8;
  v9[1] = m_ptr;
  v9[2] = a5;
  v10 = v9;
  WTF::callOnMainRunLoop();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(void *)a2 change:context:
{
  *a1 = &unk_1F110B8F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
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

- (uint64_t)observeValueForKeyPath:(WTF *)this ofObject:(void *)a2 change:context:
{
  *this = &unk_1F110B8F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
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

- (WTF::StringImpl)observeValueForKeyPath:(WTF::StringImpl *)result ofObject:change:context:
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = result[1];
  if (!v1)
  {
    return result;
  }

  v2 = *(v1 + 1);
  if (!v2)
  {
    return result;
  }

  v3 = [(WTF::StringImpl *)result[2] objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v54 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v4)
  {
    v5 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v50 + 1) + 8 * i);
        MEMORY[0x19EB02040](&v49, v7);
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v54, &v49, v8, v48);
        v10 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v2 + 104), &v49, v9);
        v12 = *(v2 + 104);
        if (v12)
        {
          v12 += 16 * *(v12 - 4);
        }

        if (v12 == v10)
        {
          v13 = [MEMORY[0x1E69666E8] defaultManager];
          ++*(v2 + 24);
          v14 = v49;
          if (v49)
          {
            atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
          }

          v15 = malloc_type_malloc(0x38uLL, 0x10E004099C88F60uLL);
          *v15 = MEMORY[0x1E69E9818];
          v15[1] = 50331650;
          v15[2] = WTF::BlockPtr<void ()(TKSmartCardSlot *)>::fromCallable<WebKit::CcidService::updateSlots(NSArray *)::$_0>(WebKit::CcidService::updateSlots(NSArray *)::$_0)::{lambda(void *,TKSmartCardSlot *)#1}::__invoke;
          v15[3] = &WTF::BlockPtr<void ()(TKSmartCardSlot *)>::fromCallable<WebKit::CcidService::updateSlots(NSArray *)::$_0>(WebKit::CcidService::updateSlots(NSArray *)::$_0)::descriptor;
          v15[4] = v2;
          v15[5] = v2;
          v15[6] = v14;
          [v13 getSlotWithName:v7 reply:v15];
          _Block_release(v15);
        }

        v16 = v49;
        v49 = 0;
        if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v16, v11);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v4);
  }

  v49 = 0;
  v19 = *(v2 + 104);
  v17 = (v2 + 104);
  v18 = v19;
  v20 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v19);
  v22 = v20;
  v24 = v23;
  if (v19)
  {
    v18 += 2 * *(v18 - 1);
  }

  if (v18 != v20)
  {
    do
    {
      v25 = v54;
      if (v54)
      {
        v26 = *v22;
        if (*v22 == -1 || !v26)
        {
          __break(0xC471u);
          JUMPOUT(0x19DE16158);
        }

        v27 = *(v54 - 2);
        v28 = *(v26 + 4);
        if (v28 < 0x100)
        {
          v29 = WTF::StringImpl::hashSlowCase(v26);
        }

        else
        {
          v29 = v28 >> 8;
        }

        for (j = 0; ; v29 = j + v31)
        {
          v31 = v29 & v27;
          v32 = v25[v29 & v27];
          if (v32 != -1)
          {
            if (!v32)
            {
              goto LABEL_23;
            }

            if (WTF::equal(v32, *v22, v21))
            {
              break;
            }
          }

          ++j;
        }
      }

      else
      {
LABEL_23:
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v49, v22, v21, v48);
        [(WTF::StringImpl *)v22[1] removeObserver];
      }

      do
      {
        v22 += 2;
      }

      while (v22 != v24 && *v22 + 1 <= 1);
    }

    while (v22 != v18);
  }

  v35 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&v49);
  v36 = v33;
  v37 = v49;
  if (v49)
  {
    v38 = (v49 + 8 * *(v49 - 1));
  }

  else
  {
    v38 = 0;
  }

  if (v38 == v35)
  {
    goto LABEL_62;
  }

  do
  {
    v39 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(v17, v35, v34);
    v40 = v39;
    if (*v17)
    {
      v41 = *v17 + 16 * *(*v17 - 4);
      if (v41 == v39)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v39)
      {
        goto LABEL_58;
      }

      v41 = 0;
    }

    if (v41 != v39)
    {
      v42 = *v39;
      *v40 = -1;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v33);
      }

      v43 = v40[1];
      v40[1] = 0;
      if (v43)
      {
      }

      v44 = *v17;
      v45 = vadd_s32(*(*v17 - 16), 0xFFFFFFFF00000001);
      *(v44 - 16) = v45;
      v46 = *(v44 - 4);
      if (6 * v45.i32[1] < v46 && v46 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RetainPtr<_WKSmartCardSlotStateObserver>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RetainPtr<_WKSmartCardSlotStateObserver>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v17, v46 >> 1);
      }
    }

    do
    {
LABEL_58:
      ++v35;
    }

    while (v35 != v36 && *v35 + 1 <= 1);
  }

  while (v35 != v38);
  v37 = v49;
LABEL_62:
  if (v37)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v37, v33);
  }

  result = v54;
  if (v54)
  {
    return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v54, v33);
  }

  return result;
}

@end