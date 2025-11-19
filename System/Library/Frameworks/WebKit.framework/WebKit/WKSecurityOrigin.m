@interface WKSecurityOrigin
- (BOOL)isSameSiteAsOrigin:(id)a3;
- (BOOL)isSameSiteAsURL:(id)a3;
- (NSInteger)port;
- (NSString)description;
- (NSString)host;
- (NSString)protocol;
- (void)dealloc;
@end

@implementation WKSecurityOrigin

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_securityOrigin.m_storage.data)();
    v4.receiver = self;
    v4.super_class = WKSecurityOrigin;
    [(WKSecurityOrigin *)&v4 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p; protocol = %@; host = %@; port = %li>", NSStringFromClass(v4), self, -[WKSecurityOrigin protocol](self, "protocol"), -[WKSecurityOrigin host](self, "host"), -[WKSecurityOrigin port](self, "port")];
}

- (NSString)protocol
{
  if (self->_securityOrigin.m_storage.data[40])
  {
    if (self->_securityOrigin.m_storage.data[40] != 1)
    {
      mpark::throw_bad_variant_access(self);
    }

    v2 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v2 = &self->_securityOrigin.m_storage.data[16];
  }

  v3 = *v2;
  if (!*v2)
  {
    v5 = &stru_1F1147748;
    v6 = &stru_1F1147748;
    v10 = 0;
LABEL_11:
    v7 = v5;
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }

    return &v5->isa;
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v10, v3, a2);
  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  return &v5->isa;
}

- (NSString)host
{
  if (self->_securityOrigin.m_storage.data[40])
  {
    if (self->_securityOrigin.m_storage.data[40] != 1)
    {
      mpark::throw_bad_variant_access(self);
    }

    v2 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v2 = &self->_securityOrigin.m_storage.data[24];
  }

  v3 = *v2;
  if (!*v2)
  {
    v5 = &stru_1F1147748;
    v6 = &stru_1F1147748;
    v10 = 0;
LABEL_9:
    v7 = v5;
    v8 = v10;
    v10 = 0;
    if (v8)
    {
    }

    return &v5->isa;
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v10, v3, a2);
  if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, v4);
  }

  v5 = v10;
  v10 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  return &v5->isa;
}

- (NSInteger)port
{
  if (!self->_securityOrigin.m_storage.data[40])
  {
    return (*&self->_securityOrigin.m_storage.data[32] & ((*&self->_securityOrigin.m_storage.data[32] >> 1) >> 15));
  }

  if (self->_securityOrigin.m_storage.data[40] != 1)
  {
    mpark::throw_bad_variant_access(self);
  }

  return 0;
}

- (BOOL)isSameSiteAsOrigin:(id)a3
{
  WebCore::SecurityOriginData::securityOrigin(&v10, &self->_securityOrigin.m_storage.data[16]);
  WebCore::SecurityOriginData::securityOrigin(&v9, (a3 + 24));
  isSameSiteAs = WebCore::SecurityOrigin::isSameSiteAs(v10, v9);
  v6 = v9;
  v9 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v6, v4);
  }

  v7 = v10;
  v10 = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v7, v4);
  }

  return isSameSiteAs;
}

- (BOOL)isSameSiteAsURL:(id)a3
{
  WebCore::SecurityOriginData::securityOrigin(&v14, &self->_securityOrigin.m_storage.data[16]);
  MEMORY[0x19EB01DE0](v12, a3);
  WebCore::SecurityOrigin::create(&v13, v12, v4);
  v6 = v12[0];
  v12[0] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  isSameSiteAs = WebCore::SecurityOrigin::isSameSiteAs(v14, v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v9, v7);
  }

  v10 = v14;
  v14 = 0;
  if (v10)
  {
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v10, v7);
  }

  return isSameSiteAs;
}

@end