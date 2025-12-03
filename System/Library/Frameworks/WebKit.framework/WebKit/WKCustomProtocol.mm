@interface WKCustomProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (WKCustomProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (id).cxx_construct;
- (uint64_t)startLoading;
- (uint64_t)stopLoading;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation WKCustomProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  if (byte_1EB01CFF1)
  {
    v4 = qword_1EB01CFF8;
    if (qword_1EB01CFF8)
    {
      atomic_fetch_add((qword_1EB01CFF8 + 144), 1u);
    }
  }

  else
  {
    v4 = 0;
    qword_1EB01CFF8 = 0;
    byte_1EB01CFF1 = 1;
  }

  v5 = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(v4);
  if (v4 && atomic_fetch_add((v4 + 144), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v4 + 144));
    (*(*v4 + 24))(v4);
  }

  if (v5)
  {
    MEMORY[0x19EB02040](&v9, [objc_msgSend(objc_msgSend(request "URL")]);
    LOBYTE(v4) = WebKit::LegacyCustomProtocolManager::supportsScheme(v5, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v6);
      }
    }
  }

  return (v5 != 0) & v4;
}

- (WKCustomProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v17.receiver = self;
  v17.super_class = WKCustomProtocol;
  v5 = [(NSURLProtocol *)&v17 initWithRequest:request cachedResponse:response client:client];
  if (!v5)
  {
    return v5;
  }

  if (byte_1EB01CFF1)
  {
    v6 = qword_1EB01CFF8;
    if (qword_1EB01CFF8)
    {
      atomic_fetch_add((qword_1EB01CFF8 + 144), 1u);
    }
  }

  else
  {
    v6 = 0;
    qword_1EB01CFF8 = 0;
    byte_1EB01CFF1 = 1;
  }

  v7 = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(v6);
  v8 = v7;
  if (!v7)
  {
LABEL_8:
    if (v6 && atomic_fetch_add(v6 + 36, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 36);
      (*(*v6 + 24))(v6);
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else if (v7)
    {
LABEL_11:
      v16 = v5;
      v10 = v5;
      v5->_customProtocolID.m_value.m_identifier = WebKit::LegacyCustomProtocolManager::addCustomProtocol(v8, &v16);
      v11 = v16;
      v16 = 0;
      if (v11)
      {
      }

      WebKit::LegacyCustomProtocolManager::deref(v8);
    }

    Current = CFRunLoopGetCurrent();
    v13 = Current;
    if (Current)
    {
      CFRetain(Current);
    }

    m_ptr = v5->_initializationRunLoop.m_ptr;
    v5->_initializationRunLoop.m_ptr = v13;
    if (m_ptr)
    {
      CFRelease(m_ptr);
    }

    return v5;
  }

  v9 = *(v7 + 24);
  if (v9)
  {
    atomic_fetch_add((v9 + 144), 1u);
    goto LABEL_8;
  }

  result = 120;
  __break(0xC471u);
  return result;
}

- (void)startLoading
{
  *self = &unk_1F10EC298;
  v2 = self[2];
  self[2] = 0;
  if (v2)
  {
  }

  return self;
}

- (void)stopLoading
{
  v2.m_value.m_identifier = [(WKCustomProtocol *)self customProtocolID];
  if (v2.m_value.m_identifier)
  {
    m_identifier = v2.m_value.m_identifier;
    v4 = WTF::fastMalloc(0x10);
    *v4 = &unk_1F10EC2C0;
    v4[1] = m_identifier;
    v5 = v4;
    WTF::ensureOnMainRunLoop();
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  else
  {
    __break(0xC471u);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (uint64_t)startLoading
{
  if (byte_1EB01CFF1)
  {
    v2 = qword_1EB01CFF8;
    if (qword_1EB01CFF8)
    {
      atomic_fetch_add((qword_1EB01CFF8 + 144), 1u);
    }
  }

  else
  {
    v2 = 0;
    qword_1EB01CFF8 = 0;
    byte_1EB01CFF1 = 1;
  }

  result = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(v2);
  v4 = result;
  if (result)
  {
    v5 = *(result + 24);
    if (!v5)
    {
      result = 120;
      __break(0xC471u);
      return result;
    }

    atomic_fetch_add((v5 + 144), 1u);
  }

  if (!v2 || atomic_fetch_add(v2 + 36, 0xFFFFFFFF) != 1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  atomic_store(1u, v2 + 36);
  result = (*(*v2 + 24))(v2);
  if (v4)
  {
LABEL_10:
    v6 = *(self + 8);
    MEMORY[0x19EB06210](v7, *(self + 16));
    WebKit::LegacyCustomProtocolManager::startLoading(v4, v6, v7);
    WebCore::ResourceRequest::~ResourceRequest(v7);
    return WebKit::LegacyCustomProtocolManager::deref(v4);
  }

  return result;
}

- (uint64_t)stopLoading
{
  if (byte_1EB01CFF1)
  {
    v2 = qword_1EB01CFF8;
    if (qword_1EB01CFF8)
    {
      atomic_fetch_add((qword_1EB01CFF8 + 144), 1u);
    }
  }

  else
  {
    v2 = 0;
    qword_1EB01CFF8 = 0;
    byte_1EB01CFF1 = 1;
  }

  result = WebKit::NetworkProcess::supplement<WebKit::LegacyCustomProtocolManager>(v2);
  v4 = result;
  if (result)
  {
    v5 = *(result + 24);
    if (!v5)
    {
      result = 120;
      __break(0xC471u);
      return result;
    }

    atomic_fetch_add((v5 + 144), 1u);
  }

  if (v2 && atomic_fetch_add(v2 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 36);
    result = (*(*v2 + 24))(v2);
    if (!v4)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  WebKit::LegacyCustomProtocolManager::stopLoading(v4, *(self + 8));
  WebKit::LegacyCustomProtocolManager::removeCustomProtocol(v4, *(self + 8));

  return WebKit::LegacyCustomProtocolManager::deref(v4);
}

@end