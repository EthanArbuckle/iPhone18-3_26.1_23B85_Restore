@interface WKHTTPCookieStore
- (Ref<API::HTTPCookieStore,)_protectedCookieStore;
- (uint64_t)deleteCookie:(WTF *)this completionHandler:(void *)a2;
- (uint64_t)deleteCookie:(uint64_t)a1 completionHandler:;
- (uint64_t)getAllCookies:(WTF *)this;
- (uint64_t)getAllCookies:(uint64_t)a1;
- (uint64_t)getCookiePolicy:(const void *)a1;
- (uint64_t)getCookiePolicy:(uint64_t)a1;
- (uint64_t)setCookie:(WTF *)this completionHandler:(void *)a2;
- (uint64_t)setCookie:(uint64_t)a1 completionHandler:;
- (uint64_t)setCookiePolicy:(const void *)a1 completionHandler:;
- (uint64_t)setCookiePolicy:(uint64_t)a1 completionHandler:;
- (uint64_t)setCookies:(const void *)a1 completionHandler:;
- (uint64_t)setCookies:(uint64_t)a1 completionHandler:;
- (void)_flushCookiesToDiskWithCompletionHandler:(id)a3;
- (void)_getCookiesForURL:(id)a3 completionHandler:(id)a4;
- (void)_setCookieAcceptPolicy:(unint64_t)a3 completionHandler:(id)a4;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)deleteCookie:(NSHTTPCookie *)cookie completionHandler:(void *)completionHandler;
- (void)deleteCookie:(void *)a1 completionHandler:;
- (void)getAllCookies:(void *)a1;
- (void)getAllCookies:(void *)completionHandler;
- (void)getCookiePolicy:(void *)completionHandler;
- (void)removeObserver:(id)observer;
- (void)setCookie:(NSHTTPCookie *)cookie completionHandler:(void *)completionHandler;
- (void)setCookie:(void *)a1 completionHandler:;
- (void)setCookiePolicy:(WKCookiePolicy)policy completionHandler:(void *)completionHandler;
- (void)setCookies:(id)a3 completionHandler:(id)a4;
@end

@implementation WKHTTPCookieStore

- (Ref<API::HTTPCookieStore,)_protectedCookieStore
{
  v3 = v2;
  p_cookieStore = &self->_cookieStore;
  v5 = CFRetain(*&self->_cookieStore.m_storage.data[8]);
  *v3 = p_cookieStore;
  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if (WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self))
  {
    return;
  }

  m_table = self->_observers.m_impl.m_table;
  if (m_table)
  {
    v6 = *(m_table - 1);
    v7 = &m_table[4 * v6];
    if (*(m_table - 3))
    {
      if (v6)
      {
        v8 = 16 * v6;
        v9 = self->_observers.m_impl.m_table;
        while ((*v9 + 1) <= 1)
        {
          v9 += 2;
          v8 -= 16;
          if (!v8)
          {
            v9 = v7;
            goto LABEL_14;
          }
        }
      }

      else
      {
        v9 = self->_observers.m_impl.m_table;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = v7;
  v7 = &m_table[4 * v6];
  if (m_table)
  {
LABEL_14:
    v10 = &m_table[4 * *(m_table - 1)];
    goto LABEL_15;
  }

  v10 = 0;
LABEL_15:
  while (v9 != v10)
  {
    v11 = v9[1];
    if (v11)
    {
      ++*(v11 + 16);
    }

    [(WKHTTPCookieStore *)self _protectedCookieStore];
    API::HTTPCookieStore::unregisterObserver(v14, v11);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      CFRelease(*(v12 + 8));
    }

    if (*(v11 + 16) == 1)
    {
      (*(*v11 + 8))(v11);
    }

    else
    {
      --*(v11 + 16);
    }

    do
    {
      v9 += 2;
    }

    while (v9 != v7 && (*v9 + 1) <= 1);
  }

  API::HTTPCookieStore::~HTTPCookieStore(&self->_cookieStore, v4);
  v13.receiver = self;
  v13.super_class = WKHTTPCookieStore;
  [(WKHTTPCookieStore *)&v13 dealloc];
}

- (void)getAllCookies:(void *)completionHandler
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v5 = [completionHandler copy];
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F6668;
  v6[1] = v5;
  v9 = v6;
  API::HTTPCookieStore::cookies(v4, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(*(v8 + 8));
  }
}

- (void)setCookie:(NSHTTPCookie *)cookie completionHandler:(void *)completionHandler
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  MEMORY[0x19EB0E900](v15, cookie);
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v13, v15, 1uLL);
  v7 = [completionHandler copy];
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F6690;
  v8[1] = v7;
  v12 = v8;
  API::HTTPCookieStore::setCookies(v6, &v13, &v12);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v9);
  WebCore::Cookie::~Cookie(v15, v10);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }
}

- (void)setCookies:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v23;
  }

  else
  {
    v6 = 0;
    v23 = 0;
  }

  v7 = [a3 count];
  v8 = v7;
  v22 = 0uLL;
  if (v7)
  {
    if (v7 >= 0x1C71C72)
    {
      __break(0xC471u);
      return;
    }

    v9 = 144 * v7;
    v10 = WTF::fastMalloc((144 * v7));
    v21 = v6;
    v22.n128_u64[0] = v10;
    v11 = 0;
    v12 = 0;
    v22.n128_u32[2] = v9 / 0x90;
    do
    {
      v13 = [a3 objectAtIndexedSubscript:{v12, v21, v22.n128_u64[0], v22.n128_u64[1]}];
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MEMORY[0x19EB0E900](v26, v13);
          WebCore::Cookie::Cookie(v24, v26);
          v25 = 1;
          WebCore::Cookie::~Cookie(v26, v14);
          if (v25)
          {
            WebCore::Cookie::Cookie(v10 + 144 * v11++, v24);
            v22.n128_u32[3] = v11;
            if (v25)
            {
              WebCore::Cookie::~Cookie(v24, v15);
            }
          }
        }
      }

      ++v12;
    }

    while (v8 != v12);
    v16 = v11;
    v6 = v21;
  }

  else
  {
    v16 = 0;
  }

  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v22, v16);
  v17 = _Block_copy(a4);
  v18 = WTF::fastMalloc(0x10);
  *v18 = &unk_1F10F66B8;
  v18[1] = v17;
  v24[0] = v18;
  API::HTTPCookieStore::setCookies(v6, &v22, v24);
  if (v24[0])
  {
    (*(*v24[0] + 8))(v24[0]);
  }

  _Block_release(0);
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v19);
  v20 = v23;
  v23 = 0;
  if (v20)
  {
    CFRelease(*(v20 + 8));
  }
}

- (void)deleteCookie:(NSHTTPCookie *)cookie completionHandler:(void *)completionHandler
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  MEMORY[0x19EB0E900](v13, cookie);
  v7 = [completionHandler copy];
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F66E0;
  v8[1] = v7;
  v12 = v8;
  API::HTTPCookieStore::deleteCookie(v6, v13, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  WebCore::Cookie::~Cookie(v13, v9);
  v11 = v14;
  v14 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 1));
  }
}

- (void)addObserver:(id)observer
{
  if (observer == -1 || !observer)
  {
    __break(0xC471u);
    JUMPOUT(0x19DAA503CLL);
  }

  m_table = self->_observers.m_impl.m_table;
  if (!m_table)
  {
    WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(&self->_observers, 0);
    m_table = self->_observers.m_impl.m_table;
  }

  v6 = *(m_table - 2);
  v7 = (observer + ~(observer << 32)) ^ ((observer + ~(observer << 32)) >> 22);
  v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
  v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
  v10 = v6 & ((v9 >> 31) ^ v9);
  v11 = &m_table[4 * v10];
  v12 = *v11;
  if (!*v11)
  {
LABEL_13:
    v15 = v11[1];
    *v11 = observer;
    v11[1] = 0;
    if (v15)
    {
      if (v15[4] == 1)
      {
        (*(*v15 + 8))(v15, a2);
      }

      else
      {
        --v15[4];
      }
    }

    v16 = self->_observers.m_impl.m_table;
    if (v16)
    {
      v17 = *(v16 - 3) + 1;
    }

    else
    {
      v17 = 1;
    }

    *(v16 - 3) = v17;
    v18 = (*(v16 - 4) + v17);
    v19 = *(v16 - 1);
    if (v19 > 0x400)
    {
      if (v19 > 2 * v18)
      {
        goto LABEL_22;
      }
    }

    else if (3 * v19 > 4 * v18)
    {
LABEL_22:
      if (WKHTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WKHTTPCookieStoreObserver::operator new(unsigned long)::s_heapRef, a2);
      }

      else
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompactSlow();
      }

      v21 = NonCompact;
      *(NonCompact + 8) = 0;
      *(NonCompact + 16) = 1;
      *NonCompact = &unk_1F10F6640;
      *(NonCompact + 24) = 0;
      objc_initWeak((NonCompact + 24), observer);
      v22 = v11[1];
      v11[1] = v21;
      if (v22)
      {
        if (v22[4] == 1)
        {
          (*(*v22 + 8))(v22);
        }

        else
        {
          --v22[4];
        }
      }

      [(WKHTTPCookieStore *)self _protectedCookieStore];
      v23 = v11[1];
      ++*(v23 + 16);
      API::HTTPCookieStore::registerObserver(v24, v23);
      if (*(v23 + 16) == 1)
      {
        (*(*v23 + 8))(v23);
      }

      else
      {
        --*(v23 + 16);
      }

      if (v24)
      {
        CFRelease(*(v24 + 8));
      }

      return;
    }

    v11 = WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::expand(&self->_observers, v11);
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 1;
  while (v12 != observer)
  {
    if (v12 == -1)
    {
      v13 = v11;
    }

    v10 = (v10 + v14) & v6;
    v11 = &m_table[4 * v10];
    v12 = *v11;
    ++v14;
    if (!*v11)
    {
      if (v13)
      {
        *v13 = 0;
        v13[1] = 0;
        --*(self->_observers.m_impl.m_table - 4);
        v11 = v13;
      }

      goto LABEL_13;
    }
  }
}

- (void)removeObserver:(id)observer
{
  m_table = self->_observers.m_impl.m_table;
  p_observers = &self->_observers;
  v5 = m_table;
  if (m_table)
  {
    if (observer == -1 || !observer)
    {
      __break(0xC471u);
      JUMPOUT(0x19DAA5264);
    }

    v7 = *(v5 - 2);
    v8 = (observer + ~(observer << 32)) ^ ((observer + ~(observer << 32)) >> 22);
    v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
    v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
    v11 = v7 & ((v10 >> 31) ^ v10);
    v12 = *&v5[4 * v11];
    if (v12 != observer)
    {
      v13 = 1;
      while (v12)
      {
        v11 = (v11 + v13) & v7;
        v12 = *&v5[4 * v11];
        ++v13;
        if (v12 == observer)
        {
          goto LABEL_10;
        }
      }

      v11 = *(v5 - 1);
    }

LABEL_10:
    if (v11 != *(v5 - 1))
    {
      v14 = &v5[4 * v11];
      v15 = v14[1];
      v14[1] = 0;
      v16 = *p_observers;
      if (!*p_observers || (v16 += 16 * *(v16 - 4), v16 != v14))
      {
        if (v16 != v14)
        {
          *v14 = -1;
          v14[1] = 0;
          v17 = *p_observers;
          v18 = vadd_s32(*(*p_observers - 16), 0xFFFFFFFF00000001);
          *(v17 - 16) = v18;
          v19 = *(v17 - 4);
          if (6 * v18.i32[1] < v19 && v19 >= 9)
          {
            WTF::HashTable<void const*,WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>>,WTF::DefaultHash<void const*>,WTF::HashMap<void const*,WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>,WTF::DefaultHash<void const*>,WTF::HashTraits<void const*>,WTF::HashTraits<WTF::RefPtr<WKHTTPCookieStoreObserver,WTF::RawPtrTraits<WKHTTPCookieStoreObserver>,WTF::DefaultRefDerefTraits<WKHTTPCookieStoreObserver>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<void const*>,WTF::FastMalloc>::rehash(p_observers, v19 >> 1, 0);
          }
        }
      }

      if (v15)
      {
        [(WKHTTPCookieStore *)self _protectedCookieStore];
        API::HTTPCookieStore::unregisterObserver(v21, v15);
        if (v21)
        {
          CFRelease(*(v21 + 8));
        }

        if (*(v15 + 16) == 1)
        {
          (*(*v15 + 8))(v15);
        }

        else
        {
          --*(v15 + 16);
        }
      }
    }
  }
}

- (void)setCookiePolicy:(WKCookiePolicy)policy completionHandler:(void *)completionHandler
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v13;
  }

  else
  {
    v6 = 0;
    v13 = 0;
  }

  if (policy)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = _Block_copy(completionHandler);
  v9 = WTF::fastMalloc(0x10);
  *v9 = &unk_1F10F6708;
  v9[1] = v8;
  v12 = v9;
  API::HTTPCookieStore::setHTTPCookieAcceptPolicy(v6, v7, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Block_release(0);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 1));
  }
}

- (void)getCookiePolicy:(void *)completionHandler
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v5 = _Block_copy(completionHandler);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F6730;
  v6[1] = v5;
  v9 = v6;
  API::HTTPCookieStore::getHTTPCookieAcceptPolicy(v4, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(v8[1]);
  }
}

- (void)_getCookiesForURL:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v15;
  }

  else
  {
    v6 = 0;
    v15 = 0;
  }

  MEMORY[0x19EB01DE0](v14, a3);
  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F6758;
  v8[1] = v7;
  v13 = v8;
  API::HTTPCookieStore::cookiesForURL(v6, v14, &v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  v11 = v14[0];
  v14[0] = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12)
  {
    CFRelease(*(v12 + 8));
  }
}

- (void)_setCookieAcceptPolicy:(unint64_t)a3 completionHandler:(id)a4
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v6 = v12;
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

  if (a3 >= 4)
  {
    LOBYTE(a3) = 1;
  }

  v7 = _Block_copy(a4);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F10F6780;
  v8[1] = v7;
  v11 = v8;
  API::HTTPCookieStore::setHTTPCookieAcceptPolicy(v6, a3, &v11);
  v9 = v11;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Block_release(0);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    CFRelease(*(v10 + 1));
  }
}

- (void)_flushCookiesToDiskWithCompletionHandler:(id)a3
{
  if (self)
  {
    [(WKHTTPCookieStore *)self _protectedCookieStore];
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v10 = 0;
  }

  v5 = _Block_copy(a3);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F10F67A8;
  v6[1] = v5;
  v9 = v6;
  API::HTTPCookieStore::flushCookies(v4, &v9);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  _Block_release(0);
  v8 = v10;
  v10 = 0;
  if (v8)
  {
    CFRelease(v8[1]);
  }
}

- (void)getAllCookies:(void *)a1
{
  v2 = a1[1];
  *a1 = &unk_1F10F6668;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)getAllCookies:(WTF *)this
{
  v3 = *(this + 1);
  *this = &unk_1F10F6668;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)getAllCookies:(uint64_t)a1
{
  v2 = *(a1 + 8);
  v3 = coreCookiesToNSCookies(a2);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)setCookie:(void *)a1 completionHandler:
{
  v2 = a1[1];
  *a1 = &unk_1F10F6690;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)setCookie:(WTF *)this completionHandler:(void *)a2
{
  v3 = *(this + 1);
  *this = &unk_1F10F6690;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)setCookie:(uint64_t)a1 completionHandler:
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (uint64_t)setCookies:(uint64_t)a1 completionHandler:
{
  *a1 = &unk_1F10F66B8;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)setCookies:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F66B8;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (void)deleteCookie:(void *)a1 completionHandler:
{
  v2 = a1[1];
  *a1 = &unk_1F10F66E0;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

- (uint64_t)deleteCookie:(WTF *)this completionHandler:(void *)a2
{
  v3 = *(this + 1);
  *this = &unk_1F10F66E0;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)deleteCookie:(uint64_t)a1 completionHandler:
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (uint64_t)setCookiePolicy:(uint64_t)a1 completionHandler:
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (uint64_t)setCookiePolicy:(const void *)a1 completionHandler:
{
  *a1 = &unk_1F10F6708;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

- (uint64_t)getCookiePolicy:(uint64_t)a1
{
  *a1 = &unk_1F10F6730;
  _Block_release(*(a1 + 8));
  return a1;
}

- (uint64_t)getCookiePolicy:(const void *)a1
{
  *a1 = &unk_1F10F6730;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end