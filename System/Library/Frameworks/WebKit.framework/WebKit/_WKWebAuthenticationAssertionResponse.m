@interface _WKWebAuthenticationAssertionResponse
- (NSData)credentialID;
- (NSData)userHandle;
- (NSString)accessGroup;
- (NSString)displayName;
- (NSString)group;
- (NSString)name;
- (void)dealloc;
@end

@implementation _WKWebAuthenticationAssertionResponse

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4 = *&self->_response.m_storage.data[16];
    *&self->_response.m_storage.data[16] = 0;
    if (v4)
    {
      if (v4[2] == 1)
      {
        (*(*v4 + 8))(v4);
      }

      else
      {
        --v4[2];
      }
    }

    v5.receiver = self;
    v5.super_class = _WKWebAuthenticationAssertionResponse;
    [(_WKWebAuthenticationAssertionResponse *)&v5 dealloc];
  }
}

- (NSString)name
{
  v2 = *(*&self->_response.m_storage.data[16] + 144);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSString)displayName
{
  v2 = *(*&self->_response.m_storage.data[16] + 152);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSData)userHandle
{
  API::WebAuthenticationAssertionResponse::userHandle(self->_response.m_storage.data, &v7);
  v2 = v7;
  if (!v7)
  {
    return 0;
  }

  v3 = *(v7 + 8);
  if (!v3)
  {
    CFRelease(0);
    return v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    CFRelease(*(v2 + 8));
    v5 = v3;
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSString)group
{
  v2 = *(*&self->_response.m_storage.data[16] + 160);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (NSData)credentialID
{
  API::WebAuthenticationAssertionResponse::credentialID(self->_response.m_storage.data, &v7);
  v2 = v7;
  if (!v7)
  {
    return 0;
  }

  v3 = *(v7 + 8);
  if (!v3)
  {
    CFRelease(0);
    return v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    CFRelease(*(v2 + 8));
    v5 = v3;
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSString)accessGroup
{
  v2 = *(*&self->_response.m_storage.data[16] + 208);
  if (!v2)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, v2, a2);
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

@end