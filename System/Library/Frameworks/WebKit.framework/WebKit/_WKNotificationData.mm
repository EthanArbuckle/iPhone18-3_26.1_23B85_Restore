@interface _WKNotificationData
- (NSData)data;
- (NSString)body;
- (NSString)identifier;
- (NSString)lang;
- (NSString)origin;
- (NSString)tag;
- (NSString)title;
- (NSURL)securityOrigin;
- (NSURL)serviceWorkerRegistrationURL;
- (NSUUID)uuid;
- (id).cxx_construct;
- (id)_init;
- (id)_initWithCoreData:(const void *)a3;
- (unint64_t)alert;
- (unint64_t)dir;
- (void)dealloc;
- (void)setAlert:(unint64_t)a3;
- (void)setBody:(id)a3;
- (void)setData:(id)a3;
- (void)setDir:(unint64_t)a3;
- (void)setLang:(id)a3;
- (void)setSecurityOrigin:(id)a3;
- (void)setServiceWorkerRegistrationURL:(id)a3;
- (void)setTag:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUuid:(id)a3;
@end

@implementation _WKNotificationData

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _WKNotificationData;
  return [(_WKNotificationData *)&v3 init];
}

- (id)_initWithCoreData:(const void *)a3
{
  v23.receiver = self;
  v23.super_class = _WKNotificationData;
  v4 = [(_WKNotificationData *)&v23 init];
  v5 = v4;
  if (v4)
  {
    WTF::URL::operator=(&v4->_coreData, a3);
    v7 = *(a3 + 5);
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    m_ptr = v5->_coreData.title.m_impl.m_ptr;
    v5->_coreData.title.m_impl.m_ptr = v7;
    if (m_ptr && atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v6);
    }

    v9 = *(a3 + 6);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v10 = v5->_coreData.body.m_impl.m_ptr;
    v5->_coreData.body.m_impl.m_ptr = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v6);
    }

    v11 = *(a3 + 7);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v12 = v5->_coreData.iconURL.m_impl.m_ptr;
    v5->_coreData.iconURL.m_impl.m_ptr = v11;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v6);
    }

    v13 = *(a3 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v14 = v5->_coreData.tag.m_impl.m_ptr;
    v5->_coreData.tag.m_impl.m_ptr = v13;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v6);
    }

    v15 = *(a3 + 9);
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
    }

    v16 = v5->_coreData.language.m_impl.m_ptr;
    v5->_coreData.language.m_impl.m_ptr = v15;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v6);
    }

    v5->_coreData.direction = *(a3 + 80);
    v17 = *(a3 + 11);
    if (v17)
    {
      atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
    }

    v18 = v5->_coreData.originString.m_impl.m_ptr;
    v5->_coreData.originString.m_impl.m_ptr = v17;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v6);
    }

    WTF::URL::operator=(&v5->_coreData.serviceWorkerRegistrationURL, a3 + 96);
    *&v5->_coreData.notificationID[8] = *(a3 + 9);
    v19 = *(a3 + 13);
    v21 = *(a3 + 10);
    v20 = *(a3 + 11);
    *&v5->_anon_a8[40] = *(a3 + 12);
    *&v5->_anon_a8[56] = v19;
    *&v5->_anon_a8[8] = v21;
    *&v5->_anon_a8[24] = v20;
    WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v5->_anon_a8[72], a3 + 224);
    *&v5->_anon_a8[88] = *(a3 + 120);
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  m_ptr = self->_coreData.title.m_impl.m_ptr;
  self->_coreData.title.m_impl.m_ptr = v5;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (NSString)title
{
  m_ptr = self->_coreData.title.m_impl.m_ptr;
  if (!m_ptr)
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

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setDir:(unint64_t)a3
{
  if (a3 <= 2)
  {
    self->_coreData.direction = a3;
  }
}

- (unint64_t)dir
{
  direction = self->_coreData.direction;
  if (direction == 2)
  {
    return 2;
  }

  else
  {
    return direction == 1;
  }
}

- (void)setLang:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  m_ptr = self->_coreData.language.m_impl.m_ptr;
  self->_coreData.language.m_impl.m_ptr = v5;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (NSString)lang
{
  m_ptr = self->_coreData.language.m_impl.m_ptr;
  if (!m_ptr)
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

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setBody:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  m_ptr = self->_coreData.body.m_impl.m_ptr;
  self->_coreData.body.m_impl.m_ptr = v5;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (NSString)body
{
  m_ptr = self->_coreData.body.m_impl.m_ptr;
  if (!m_ptr)
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

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setTag:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  v8 = 0;
  m_ptr = self->_coreData.tag.m_impl.m_ptr;
  self->_coreData.tag.m_impl.m_ptr = v5;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (NSString)tag
{
  m_ptr = self->_coreData.tag.m_impl.m_ptr;
  if (!m_ptr)
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

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setAlert:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = 256;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    v3 = 257;
LABEL_8:
    *&self->_anon_a8[88] = v3;
    return;
  }

  if (!a3 && self->_anon_a8[89] == 1)
  {
    self->_anon_a8[89] = 0;
  }
}

- (unint64_t)alert
{
  if (self->_anon_a8[89] != 1)
  {
    return 0;
  }

  if (self->_anon_a8[88])
  {
    return 1;
  }

  return 2;
}

- (void)setData:(id)a3
{
  v3 = a3;
  if (a3 && (v5 = [a3 bytes], v6 = objc_msgSend(v3, "length"), (v3 = v6) != 0))
  {
    if (HIDWORD(v6))
    {
      __break(0xC471u);
      return;
    }

    v7 = WTF::fastMalloc(v6);
    v8 = v7;
    v9 = 0;
    do
    {
      v9[v7] = v9[v5];
      ++v9;
    }

    while (v3 != v9);
  }

  else
  {
    v8 = 0;
  }

  v10 = *&self->_anon_a8[72];
  if (v10)
  {
    *&self->_anon_a8[72] = 0;
    *&self->_anon_a8[80] = 0;
    WTF::fastFree(v10, a2);
  }

  *&self->_anon_a8[72] = v8;
  *&self->_anon_a8[80] = v3;
  *&self->_anon_a8[84] = v3;
}

- (NSData)data
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*&self->_anon_a8[72] length:*&self->_anon_a8[84]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (NSString)origin
{
  m_ptr = self->_coreData.originString.m_impl.m_ptr;
  if (!m_ptr)
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

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setSecurityOrigin:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x19EB01DE0](v12, a3);
  WebCore::SecurityOriginData::fromURL(&v14, v12, v4);
  WebCore::SecurityOriginData::toString(&v13, &v14);
  v6 = v13;
  v13 = 0;
  m_ptr = self->_coreData.originString.m_impl.m_ptr;
  self->_coreData.originString.m_impl.m_ptr = v6;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v5);
    }

    v8 = v13;
    v13 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v5);
    }
  }

  if (!v16)
  {
    v9 = v15;
    v15 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v5);
    }

    v10 = v14;
    v14 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v5);
    }
  }

  v16 = -1;
  v11 = v12[0];
  v12[0] = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v5);
    }
  }
}

- (NSURL)securityOrigin
{
  WTF::URL::URL(v8, &self->_coreData.originString);
  WTF::URL::createCFURL(&v9, v8);
  v3 = v9;
  v9 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v9;
    v9 = 0;
    if (v5)
    {
    }
  }

  v6 = v8[0];
  v8[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v2);
  }

  return v3;
}

- (void)setServiceWorkerRegistrationURL:(id)a3
{
  MEMORY[0x19EB01DE0](v6, a3);
  WTF::URL::operator=(&self->_coreData.serviceWorkerRegistrationURL, v6);
  v5 = v6[0];
  v6[0] = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }
}

- (NSURL)serviceWorkerRegistrationURL
{
  WTF::URL::createCFURL(&v6, &self->_coreData.serviceWorkerRegistrationURL);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSString)identifier
{
  WTF::UUID::toString(&v10, &self->_coreData.notificationID[8]);
  v2 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v11, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v11 = &stru_1F1147748;
    v4 = &stru_1F1147748;
  }

  v5 = v11;
  v11 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = v11;
    v11 = 0;
    if (v7)
    {
    }
  }

  v8 = v10;
  v10 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v3);
  }

  return v5;
}

- (void)setUuid:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  WTF::UUID::fromNSUUID(&v4, a3, a2);
  if (v5 == 1)
  {
    *&self->_coreData.notificationID[8] = v4;
  }
}

- (NSUUID)uuid
{
  WTF::UUID::createNSUUID(&v6, &self->_coreData.notificationID[8]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = _WKNotificationData;
    [(_WKNotificationData *)&v4 dealloc];
  }
}

- (id).cxx_construct
{
  WTF::URL::URL(&self->_coreData);
  *&self->_coreData.title.m_impl.m_ptr = 0u;
  self->_coreData.originString.m_impl.m_ptr = 0;
  *&self->_coreData.iconURL.m_impl.m_ptr = 0u;
  self->_coreData.language.m_impl.m_ptr = 0;
  WTF::URL::URL(&self->_coreData.serviceWorkerRegistrationURL);
  WTF::UUID::UUID(v5);
  v3 = v5[1];
  *&self->_coreData.notificationID[8] = v5[0];
  *self->_anon_a8 = v3;
  self->_anon_a8[8] = 0;
  self->_anon_a8[40] = 0;
  *&self->_anon_a8[56] = 1;
  *&self->_anon_a8[64] = 0;
  *&self->_anon_a8[72] = 0;
  *&self->_anon_a8[80] = 0;
  *&self->_anon_a8[88] = 0;
  return self;
}

@end