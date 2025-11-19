@interface WKBrowsingContextController
+ (WTF::StringImpl)registerSchemeForCustomProtocol:(uint64_t)a1;
+ (WTF::StringImpl)unregisterSchemeForCustomProtocol:(uint64_t)a1;
+ (uint64_t)registerSchemeForCustomProtocol:(WTF *)this;
+ (uint64_t)unregisterSchemeForCustomProtocol:(WTF *)this;
+ (void)registerSchemeForCustomProtocol:(id)a3;
+ (void)registerSchemeForCustomProtocol:(void *)a1;
+ (void)unregisterSchemeForCustomProtocol:(id)a3;
+ (void)unregisterSchemeForCustomProtocol:(void *)a1;
@end

@implementation WKBrowsingContextController

+ (void)registerSchemeForCustomProtocol:(id)a3
{
  v4 = [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    MEMORY[0x19EB02040](&v12, a3);
    WebKit::WebProcessPool::registerGlobalURLSchemeAsHavingCustomProtocolHandlers(&v12, v5);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  else
  {
    v8 = WTF::WorkQueue::mainSingleton(v4);
    if (a3)
    {
      v9 = a3;
    }

    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F49D8;
    *(v10 + 1) = a3;
    v12 = v10;
    (*(*v8 + 48))(v8, &v12);
    v11 = v12;
    v12 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

+ (void)unregisterSchemeForCustomProtocol:(id)a3
{
  v4 = [MEMORY[0x1E696AF00] isMainThread];
  if (v4)
  {
    MEMORY[0x19EB02040](&v12, a3);
    WebKit::WebProcessPool::unregisterGlobalURLSchemeAsHavingCustomProtocolHandlers(&v12, v5);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  else
  {
    v8 = WTF::WorkQueue::mainSingleton(v4);
    if (a3)
    {
      v9 = a3;
    }

    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F4A00;
    *(v10 + 1) = a3;
    v12 = v10;
    (*(*v8 + 48))(v8, &v12);
    v11 = v12;
    v12 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }
}

+ (void)registerSchemeForCustomProtocol:(void *)a1
{
  v2 = a1[1];
  *a1 = &unk_1F10F49D8;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

+ (uint64_t)registerSchemeForCustomProtocol:(WTF *)this
{
  v3 = *(this + 1);
  *this = &unk_1F10F49D8;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

+ (WTF::StringImpl)registerSchemeForCustomProtocol:(uint64_t)a1
{
  MEMORY[0x19EB02040](&v4, *(a1 + 8));
  WebKit::WebProcessPool::registerGlobalURLSchemeAsHavingCustomProtocolHandlers(&v4, v1);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

+ (void)unregisterSchemeForCustomProtocol:(void *)a1
{
  v2 = a1[1];
  *a1 = &unk_1F10F4A00;
  a1[1] = 0;
  if (v2)
  {
  }

  return a1;
}

+ (uint64_t)unregisterSchemeForCustomProtocol:(WTF *)this
{
  v3 = *(this + 1);
  *this = &unk_1F10F4A00;
  *(this + 1) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

+ (WTF::StringImpl)unregisterSchemeForCustomProtocol:(uint64_t)a1
{
  MEMORY[0x19EB02040](&v4, *(a1 + 8));
  WebKit::WebProcessPool::unregisterGlobalURLSchemeAsHavingCustomProtocolHandlers(&v4, v1);
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v2);
    }
  }

  return result;
}

@end