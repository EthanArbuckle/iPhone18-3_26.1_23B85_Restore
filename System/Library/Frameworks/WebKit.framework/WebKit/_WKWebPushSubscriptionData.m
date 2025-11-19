@interface _WKWebPushSubscriptionData
- (NSData)applicationServerKey;
- (NSData)authenticationSecret;
- (NSData)ecdhPublicKey;
- (NSURL)endpoint;
- (Ref<API::WebPushSubscriptionData,)_protectedData;
- (void)dealloc;
@end

@implementation _WKWebPushSubscriptionData

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self[1]._data.m_storage.data[24];
    if (v5)
    {
      *&self[1]._data.m_storage.data[24] = 0;
      *&self[1]._data.m_storage.data[32] = 0;
      WTF::fastFree(v5, v4);
    }

    v6 = *&self[1]._data.m_storage.data[8];
    if (v6)
    {
      *&self[1]._data.m_storage.data[8] = 0;
      *&self[1]._data.m_storage.data[16] = 0;
      WTF::fastFree(v6, v4);
    }

    isa = self[1].super.isa;
    if (isa)
    {
      self[1].super.isa = 0;
      *self[1]._data.m_storage.data = 0;
      WTF::fastFree(isa, v4);
    }

    v8 = *&self->_data.m_storage.data[24];
    *&self->_data.m_storage.data[24] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }

    v9.receiver = self;
    v9.super_class = _WKWebPushSubscriptionData;
    [(_WKWebPushSubscriptionData *)&v9 dealloc];
  }
}

- (NSURL)endpoint
{
  [(_WKWebPushSubscriptionData *)self _protectedData];
  WTF::URL::URL(v10, (v9 + 24));
  WTF::URL::createCFURL(&v11, v10);
  v3 = v11;
  v11 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v11;
    v11 = 0;
    if (v5)
    {
    }
  }

  v6 = v10[0];
  v10[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  v7 = v9;
  v9 = 0;
  if (v7)
  {
    CFRelease(*(v7 + 8));
  }

  return v3;
}

- (NSData)applicationServerKey
{
  if (self)
  {
    [(_WKWebPushSubscriptionData *)self _protectedData];
    v2 = v9;
  }

  else
  {
    v2 = 0;
    v9 = 0;
  }

  v3 = *(v2 + 60);
  if (v3)
  {
    v4 = WTF::fastMalloc(*(v2 + 60));
    memcpy(v4, *(v2 + 48), *(v2 + 60));
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v3];
  v7 = v5;
  if (v5)
  {
  }

  if (v4)
  {
    WTF::fastFree(v4, v6);
  }

  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return v7;
}

- (NSData)authenticationSecret
{
  if (self)
  {
    [(_WKWebPushSubscriptionData *)self _protectedData];
    v2 = v9;
  }

  else
  {
    v2 = 0;
    v9 = 0;
  }

  v3 = *(v2 + 92);
  if (v3)
  {
    v4 = WTF::fastMalloc(*(v2 + 92));
    memcpy(v4, *(v2 + 80), *(v2 + 92));
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v3];
  v7 = v5;
  if (v5)
  {
  }

  if (v4)
  {
    WTF::fastFree(v4, v6);
  }

  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return v7;
}

- (NSData)ecdhPublicKey
{
  if (self)
  {
    [(_WKWebPushSubscriptionData *)self _protectedData];
    v2 = v9;
  }

  else
  {
    v2 = 0;
    v9 = 0;
  }

  v3 = *(v2 + 76);
  if (v3)
  {
    v4 = WTF::fastMalloc(*(v2 + 76));
    memcpy(v4, *(v2 + 64), *(v2 + 76));
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v3];
  v7 = v5;
  if (v5)
  {
  }

  if (v4)
  {
    WTF::fastFree(v4, v6);
  }

  if (v9)
  {
    CFRelease(*(v9 + 8));
  }

  return v7;
}

- (Ref<API::WebPushSubscriptionData,)_protectedData
{
  v3 = v2;
  p_data = &self->_data;
  v5 = CFRetain(*&self->_data.m_storage.data[8]);
  *v3 = p_data;
  return v5;
}

@end