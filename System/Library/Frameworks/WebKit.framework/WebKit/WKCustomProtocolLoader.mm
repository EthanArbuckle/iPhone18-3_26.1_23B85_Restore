@interface WKCustomProtocolLoader
- (WKCustomProtocolLoader)initWithLegacyCustomProtocolManagerProxy:(void *)proxy customProtocolID:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)f :(id)a5 ObjectIdentifierThreadSafeAccessTraits<uint64_t> :LegacyCustomProtocolIDType request:;
- (id).cxx_construct;
- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response;
- (void)cancel;
- (void)connection:(id)connection didFailWithError:(id)error;
- (void)connection:(id)connection didReceiveData:(id)data;
- (void)connection:(id)connection didReceiveResponse:(id)response;
- (void)connectionDidFinishLoading:(id)loading;
- (void)dealloc;
@end

@implementation WKCustomProtocolLoader

- (WKCustomProtocolLoader)initWithLegacyCustomProtocolManagerProxy:(void *)proxy customProtocolID:()ObjectIdentifierGeneric<WebKit:()WTF:(unsigned long long>)f :(id)a5 ObjectIdentifierThreadSafeAccessTraits<uint64_t> :LegacyCustomProtocolIDType request:
{
  v17.receiver = self;
  v17.super_class = WKCustomProtocolLoader;
  v8 = [(WKCustomProtocolLoader *)&v17 init];
  if (v8)
  {
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(proxy + 2, proxy);
    v10 = *(proxy + 1);
    atomic_fetch_add(v10, 1u);
    m_ptr = v8->_customProtocolManagerProxy.m_impl.m_ptr;
    v8->_customProtocolManagerProxy.m_impl.m_ptr = v10;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v9);
    }

    v8->_customProtocolID.m_value = f;
    v8->_storagePolicy = 2;
    v12 = [objc_alloc(MEMORY[0x1E695AC40]) initWithRequest:a5 delegate:v8 startImmediately:0];
    v13 = v8->_urlConnection.m_ptr;
    v8->_urlConnection.m_ptr = v12;
    if (v13)
    {

      v14 = v8->_urlConnection.m_ptr;
    }

    else
    {
      v14 = v12;
    }

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v14 scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];
    [(NSURLConnection *)v8->_urlConnection.m_ptr start];
  }

  return v8;
}

- (void)dealloc
{
  [(NSURLConnection *)self->_urlConnection.m_ptr cancel];
  v3.receiver = self;
  v3.super_class = WKCustomProtocolLoader;
  [(WKCustomProtocolLoader *)&v3 dealloc];
}

- (void)cancel
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  self->_customProtocolManagerProxy.m_impl.m_ptr = 0;
  if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, m_ptr);
    WTF::fastFree(m_ptr, a2);
  }

  v4 = self->_urlConnection.m_ptr;

  [(NSURLConnection *)v4 cancel];
}

- (void)connection:(id)connection didFailWithError:(id)error
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v5 = *(m_ptr + 1);
  if (!v5)
  {
    return;
  }

  v6 = *(*(v5 + 2) + 8);
  if (!v6)
  {
    __break(0xC471u);
    goto LABEL_22;
  }

  atomic_fetch_add((v6 + 16), 1u);
  MEMORY[0x19EB04D40](&v15, error, connection);
  m_identifier = self->_customProtocolID.m_value.m_identifier;
  if (!m_identifier)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC131F0);
  }

  WebKit::LegacyCustomProtocolManagerProxy::didFailWithError(v5, m_identifier, &v15);
  v9 = self->_customProtocolID.m_value.m_identifier;
  if (!v9)
  {
    __break(0xC471u);
LABEL_22:
    JUMPOUT(0x19DC131D0);
  }

  WebKit::LegacyCustomProtocolManagerProxy::stopLoading(v5, v9);
  v11 = v18;
  v18 = 0;
  if (v11)
  {
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v10);
  }

  v14 = v15;
  v15 = 0;
  if (v14)
  {
    if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }
  }

  WebKit::LegacyCustomProtocolManagerProxy::deref(v5);
}

- (void)connection:(id)connection didReceiveResponse:(id)response
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v5 = *(m_ptr + 1);
  if (!v5)
  {
    return;
  }

  v6 = *(*(v5 + 2) + 8);
  if (!v6)
  {
    __break(0xC471u);
    goto LABEL_13;
  }

  atomic_fetch_add((v6 + 16), 1u);
  WebCore::ResourceResponse::ResourceResponse(v12, response);
  m_identifier = self->_customProtocolID.m_value.m_identifier;
  if (!m_identifier)
  {
    __break(0xC471u);
LABEL_13:
    JUMPOUT(0x19DC13328);
  }

  storagePolicy = self->_storagePolicy;
  if (storagePolicy >= 3)
  {
    LOBYTE(storagePolicy) = 2;
  }

  WebKit::LegacyCustomProtocolManagerProxy::didReceiveResponse(v5, m_identifier, v12, storagePolicy);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v12, v10);
  WebKit::LegacyCustomProtocolManagerProxy::deref(v5);
}

- (void)connection:(id)connection didReceiveData:(id)data
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 1);
    if (v5)
    {
      v6 = *(*(v5 + 2) + 8);
      if (!v6 || (atomic_fetch_add((v6 + 16), 1u), (m_identifier = self->_customProtocolID.m_value.m_identifier) == 0))
      {
        __break(0xC471u);
        JUMPOUT(0x19DC13430);
      }

      if (data)
      {
        bytes = [data bytes];
        v10 = [data length];
      }

      else
      {
        bytes = 0;
        v10 = 0;
      }

      WebKit::LegacyCustomProtocolManagerProxy::didLoadData(v5, m_identifier, bytes, v10);

      WebKit::LegacyCustomProtocolManagerProxy::deref(v5);
    }
  }
}

- (id)connection:(id)connection willSendRequest:(id)request redirectResponse:(id)response
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v6 = *(m_ptr + 1);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*(v6 + 2) + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  requestCopy = request;
  atomic_fetch_add((v7 + 16), 1u);
  if (response)
  {
    m_identifier = self->_customProtocolID.m_value.m_identifier;
    if (m_identifier)
    {
      MEMORY[0x19EB06210](v16, request, connection);
      WebCore::ResourceResponse::ResourceResponse(v14, response);
      WebKit::LegacyCustomProtocolManagerProxy::wasRedirectedToRequest(v6, m_identifier, v16, v14);
      v12 = v15;
      v15 = 0;
      if (v12)
      {
      }

      WebCore::ResourceResponseBase::~ResourceResponseBase(v14, v11);
      WebCore::ResourceRequest::~ResourceRequest(v16);
      requestCopy = 0;
      goto LABEL_9;
    }

LABEL_12:
    __break(0xC471u);
    JUMPOUT(0x19DC1355CLL);
  }

LABEL_9:
  WebKit::LegacyCustomProtocolManagerProxy::deref(v6);
  return requestCopy;
}

- (void)connectionDidFinishLoading:(id)loading
{
  m_ptr = self->_customProtocolManagerProxy.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      v5 = *(*(v4 + 2) + 8);
      if (!v5)
      {
        goto LABEL_12;
      }

      atomic_fetch_add((v5 + 16), 1u);
      m_identifier = self->_customProtocolID.m_value.m_identifier;
      if (!m_identifier)
      {
        __break(0xC471u);
        JUMPOUT(0x19DC13668);
      }

      WebKit::LegacyCustomProtocolManagerProxy::didFinishLoading(v4, m_identifier);
      v8 = self->_customProtocolID.m_value.m_identifier;
      if (!v8)
      {
LABEL_12:
        __break(0xC471u);
        JUMPOUT(0x19DC13648);
      }

      WebKit::LegacyCustomProtocolManagerProxy::stopLoading(v4, v8);

      WebKit::LegacyCustomProtocolManagerProxy::deref(v4);
    }
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end