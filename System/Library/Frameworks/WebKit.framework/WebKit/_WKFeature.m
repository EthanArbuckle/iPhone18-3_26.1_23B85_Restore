@interface _WKFeature
- (BOOL)isKindOfClass:(Class)a3;
- (NSString)description;
- (NSString)details;
- (NSString)key;
- (NSString)name;
- (unint64_t)category;
- (unint64_t)status;
- (void)dealloc;
@end

@implementation _WKFeature

- (unint64_t)status
{
  if (self->_wrappedFeature.m_storage.data[40] - 1 < 7)
  {
    return (self->_wrappedFeature.m_storage.data[40] - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (NSString)key
{
  v2 = *&self->_wrappedFeature.m_storage.data[24];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::Feature::~Feature(&self->_wrappedFeature, v4);
    v5.receiver = self;
    v5.super_class = _WKFeature;
    [(_WKFeature *)&v5 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_WKFeature *)self name];
  v7 = [(_WKFeature *)self key];
  v8 = [(_WKFeature *)self defaultValue];
  v9 = "off";
  if (v8)
  {
    v9 = "on";
  }

  return [v3 stringWithFormat:@"<%@: %p; name = %@; key = %@; defaultValue = %s >", v5, self, v6, v7, v9];
}

- (NSString)name
{
  v2 = *&self->_wrappedFeature.m_storage.data[16];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (unint64_t)category
{
  if (self->_wrappedFeature.m_storage.data[41] - 1 > 9)
  {
    return 0;
  }

  else
  {
    return qword_19E703638[(self->_wrappedFeature.m_storage.data[41] - 1)];
  }
}

- (NSString)details
{
  v2 = *&self->_wrappedFeature.m_storage.data[32];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v4 = v9;
    v9 = 0;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
  }

  v6 = v4;
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v2)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  return &v4->isa;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = _WKFeature;
  if ([(_WKFeature *)&v5 isKindOfClass:?]|| ([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

@end