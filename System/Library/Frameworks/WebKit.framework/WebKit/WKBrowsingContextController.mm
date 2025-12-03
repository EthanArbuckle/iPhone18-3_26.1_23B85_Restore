@interface WKBrowsingContextController
+ (WTF::StringImpl)registerSchemeForCustomProtocol:(uint64_t)protocol;
+ (WTF::StringImpl)unregisterSchemeForCustomProtocol:(uint64_t)protocol;
+ (uint64_t)registerSchemeForCustomProtocol:(WTF *)this;
+ (uint64_t)unregisterSchemeForCustomProtocol:(WTF *)this;
+ (void)registerSchemeForCustomProtocol:(id)protocol;
+ (void)registerSchemeForCustomProtocol:(void *)protocol;
+ (void)unregisterSchemeForCustomProtocol:(id)protocol;
+ (void)unregisterSchemeForCustomProtocol:(void *)protocol;
@end

@implementation WKBrowsingContextController

+ (void)registerSchemeForCustomProtocol:(id)protocol
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    MEMORY[0x19EB02040](&v12, protocol);
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
    v8 = WTF::WorkQueue::mainSingleton(isMainThread);
    if (protocol)
    {
      protocolCopy = protocol;
    }

    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F49D8;
    *(v10 + 1) = protocol;
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

+ (void)unregisterSchemeForCustomProtocol:(id)protocol
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    MEMORY[0x19EB02040](&v12, protocol);
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
    v8 = WTF::WorkQueue::mainSingleton(isMainThread);
    if (protocol)
    {
      protocolCopy = protocol;
    }

    v10 = WTF::fastMalloc(0x10);
    *v10 = &unk_1F10F4A00;
    *(v10 + 1) = protocol;
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

+ (void)registerSchemeForCustomProtocol:(void *)protocol
{
  v2 = protocol[1];
  *protocol = &unk_1F10F49D8;
  protocol[1] = 0;
  if (v2)
  {
  }

  return protocol;
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

+ (WTF::StringImpl)registerSchemeForCustomProtocol:(uint64_t)protocol
{
  MEMORY[0x19EB02040](&v4, *(protocol + 8));
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

+ (void)unregisterSchemeForCustomProtocol:(void *)protocol
{
  v2 = protocol[1];
  *protocol = &unk_1F10F4A00;
  protocol[1] = 0;
  if (v2)
  {
  }

  return protocol;
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

+ (WTF::StringImpl)unregisterSchemeForCustomProtocol:(uint64_t)protocol
{
  MEMORY[0x19EB02040](&v4, *(protocol + 8));
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