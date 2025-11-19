@interface WKPreferenceObserver
+ (id)sharedInstance;
- (WKPreferenceObserver)init;
- (WTF::StringImpl)preferenceDidChange:(void *)a1 key:encodedValue:;
- (id).cxx_construct;
- (uint64_t)preferenceDidChange:(WTF *)this key:(void *)a2 encodedValue:;
- (void)preferenceDidChange:(id)a3 key:(id)a4 encodedValue:(id)a5;
- (void)preferenceDidChange:(void *)a1 key:encodedValue:;
@end

@implementation WKPreferenceObserver

+ (id)sharedInstance
{
  if (_MergedGlobals_11 == 1)
  {
    return qword_1ED641BB8;
  }

  result = objc_alloc_init(objc_opt_class());
  qword_1ED641BB8 = result;
  _MergedGlobals_11 = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (WKPreferenceObserver)init
{
  v19.receiver = self;
  v19.super_class = WKPreferenceObserver;
  v2 = [(WKPreferenceObserver *)&v19 init];
  if (v2)
  {
    for (i = 0; i != 11; ++i)
    {
      v4 = off_1E7630938[i];
      if (v4)
      {
        v5 = v4;
      }

      v6 = [[WKUserDefaults alloc] initWithSuiteName:v4];
      v18 = v6;
      if (!v6)
      {
        MEMORY[0x19EB02040](&v16, v4);
        WTF::String::utf8();
        WTFLogAlways();
        v11 = v17;
        v17 = 0;
        if (v11)
        {
          if (*v11 == 1)
          {
            WTF::fastFree(v11, v10);
          }

          else
          {
            --*v11;
          }
        }

        v12 = v16;
        v16 = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v10);
        }

        goto LABEL_18;
      }

      objc_storeWeak(&v6->m_observer.m_weakReference, v2);
      [(WKUserDefaults *)v18 addObserver:v18 forKeyPath:@"testkey" options:1 context:0];
      m_size = v2->m_userDefaults.m_size;
      if (m_size == v2->m_userDefaults.m_capacity)
      {
        v8 = WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v2->m_userDefaults, m_size + 1, &v18);
        m_size = v2->m_userDefaults.m_size;
        v9 = *v8;
        *(v2->m_userDefaults.m_buffer + m_size) = *v8;
        if (v9)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = v18;
        *(v2->m_userDefaults.m_buffer + m_size) = v18;
        if (v9)
        {
LABEL_16:
          v13 = v9;
          LODWORD(m_size) = v2->m_userDefaults.m_size;
        }
      }

      v2->m_userDefaults.m_size = m_size + 1;
LABEL_18:
      v14 = v18;
      v18 = 0;
      if (v14)
      {
      }

      if (v4)
      {
      }
    }
  }

  return v2;
}

- (void)preferenceDidChange:(id)a3 key:(id)a4 encodedValue:(id)a5
{
  WTF::RunLoop::mainSingleton(self);
  if (a3)
  {
    v8 = a3;
  }

  if (a4)
  {
    v9 = a4;
  }

  if (a5)
  {
    v10 = a5;
  }

  v11 = WTF::fastMalloc(0x20);
  *v11 = &unk_1F10EA550;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v12 = v11;
  WTF::RunLoop::dispatch();
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }
}

- (void)preferenceDidChange:(void *)a1 key:encodedValue:
{
  *a1 = &unk_1F10EA550;
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
  }

  return a1;
}

- (uint64_t)preferenceDidChange:(WTF *)this key:(void *)a2 encodedValue:
{
  *this = &unk_1F10EA550;
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
  }

  return WTF::fastFree(this, a2);
}

- (WTF::StringImpl)preferenceDidChange:(void *)a1 key:encodedValue:
{
  LOBYTE(v18) = 0;
  v19 = 0;
  if (a1[3])
  {
    MEMORY[0x19EB02040](&v20);
    v3 = v20;
    v20 = 0;
    if (v19 == 1)
    {
      v4 = v18;
      v18 = v3;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v2);
        }

        v5 = v20;
        v20 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v2);
        }
      }
    }

    else
    {
      v18 = v3;
      v19 = 1;
    }
  }

  MEMORY[0x19EB02040](&v17, a1[1]);
  MEMORY[0x19EB02040](&v16, a1[2]);
  {
    if (WebKit::singleton(void)::singleton)
    {
      v6 = *(WebKit::singleton(void)::singleton + 8);
      if (v6)
      {
        v7 = (v6 + 16);
        atomic_fetch_add((v6 + 16), 1u);
        v20 = &v17;
        v21 = &v16;
        v22 = &v18;
        WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(v6, &v20, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  {
    if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
    {
      v8 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8);
      if (v8)
      {
        v9 = (v8 + 16);
        atomic_fetch_add((v8 + 16), 1u);
        v20 = &v17;
        v21 = &v16;
        v22 = &v18;
        WebKit::AuxiliaryProcessProxy::send<Messages::AuxiliaryProcess::PreferenceDidUpdate>(v8, &v20, 0, 0);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9);
      }
    }
  }

  else
  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  WebKit::WebProcessPool::allProcessPools(&v20);
  if (HIDWORD(v21))
  {
    v11 = v20;
    v12 = 8 * HIDWORD(v21);
    do
    {
      WebKit::WebProcessPool::notifyPreferencesChanged(*v11++, &v17, &v16, &v18);
      v12 -= 8;
    }

    while (v12);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v20, v10);
  v14 = v16;
  v16 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  result = v17;
  v17 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v13);
  }

  if (v19 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  return result;
}

@end