@interface WKWebViewContentProviderRegistry
- (Class)providerForMIMEType:(const void *)type;
- (Vector<WTF::String,)_mimeTypesWithCustomContentProviders;
- (WKWebViewContentProviderRegistry)initWithConfiguration:(id)configuration;
- (void)registerProvider:(Class)provider forMIMEType:(const void *)type;
@end

@implementation WKWebViewContentProviderRegistry

- (Vector<WTF::String,)_mimeTypesWithCustomContentProviders
{
  v3 = v2;
  m_table = self->_contentProviderForMIMEType.m_impl.m_table;
  if (m_table)
  {
    v5 = *(m_table - 1);
    v6 = &m_table[4 * v5];
    if (*(m_table - 3))
    {
      v7 = self->_contentProviderForMIMEType.m_impl.m_table;
      if (v5)
      {
        v8 = 16 * v5;
        v7 = self->_contentProviderForMIMEType.m_impl.m_table;
        while (*v7 + 1 <= 1)
        {
          v7 += 2;
          v8 -= 16;
          if (!v8)
          {
            v7 = v6;
            goto LABEL_8;
          }
        }
      }

      goto LABEL_8;
    }

    v7 = &m_table[4 * v5];
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v6 = &m_table[4 * v5];
  if (!m_table)
  {
    v9 = 0;
    self = 0;
    *v3 = 0;
    *(v3 + 8) = 0;
    goto LABEL_15;
  }

LABEL_8:
  v9 = &m_table[4 * *(m_table - 1)];
  *v3 = 0;
  *(v3 + 8) = 0;
  v10 = *(m_table - 3);
  if (v10)
  {
    if (v10 >> 29)
    {
      __break(0xC471u);
      goto LABEL_27;
    }

    self = WTF::fastMalloc((8 * v10));
    *(v3 + 8) = v10;
    *v3 = self;
  }

  else
  {
    self = 0;
  }

LABEL_15:
  if (v7 != v9)
  {
    v11 = 0;
    do
    {
      v12 = *v7;
      if (*v7)
      {
        atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      }

      *(&self->super.isa + v11) = v12;
      do
      {
        v7 += 2;
      }

      while (v7 != v6 && *v7 + 1 <= 1);
      ++v11;
    }

    while (v7 != v9);
    *(v3 + 12) = v11;
  }

LABEL_27:
  result.m_capacity = a2;
  result.m_size = HIDWORD(a2);
  result.m_buffer = self;
  return result;
}

- (WKWebViewContentProviderRegistry)initWithConfiguration:(id)configuration
{
  v24.receiver = self;
  v24.super_class = WKWebViewContentProviderRegistry;
  v4 = [(WKWebViewContentProviderRegistry *)&v24 init];
  if (v4)
  {
    if (+[WKPDFView platformSupportsPDFView])
    {
      BoolValueForKey = [configuration preferences];
      if (!BoolValueForKey)
      {
        goto LABEL_7;
      }

      preferences = [configuration preferences];
      {
        atomic_fetch_add_explicit(WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
        WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key = WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::$_0::operator() const(void)::impl;
      }

      BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((preferences + 48), &WebKit::WebPreferencesKey::unifiedPDFEnabledKey(void)::key, v7);
      if ((BoolValueForKey & 1) == 0)
      {
LABEL_7:
        WebCore::MIMETypeRegistry::pdfMIMETypes(&v23, BoolValueForKey);
        v9 = v23;
        if (v23)
        {
          v10 = v23 + 8;
        }

        else
        {
          v10 = 0;
        }

        if (v23)
        {
          v11 = v23 + 16 * *v23 + 8;
        }

        else
        {
          v11 = 0;
        }

        if (v10 != v11)
        {
          do
          {
            v12 = objc_opt_class();
            MEMORY[0x19EB02040](&v22, [MEMORY[0x1E696AEC0] stringWithUTF8String:*v10]);
            [(WKWebViewContentProviderRegistry *)v4 registerProvider:v12 forMIMEType:&v22];
            v13 = v22;
            v22 = 0;
            if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v13, v8);
            }

            v10 += 16;
          }

          while (v10 != v11);
          v9 = v23;
        }

        v23 = 0;
        if (v9)
        {
          WTF::fastFree(v9, v8);
        }
      }
    }

    if ([configuration _systemPreviewEnabled])
    {
      v14 = [objc_msgSend(configuration "preferences")];
      if ((v14 & 1) == 0)
      {
        WebCore::MIMETypeRegistry::usdMIMETypes(&v23, v14);
        v16 = v23;
        if (v23)
        {
          v17 = v23 + 8;
        }

        else
        {
          v17 = 0;
        }

        if (v23)
        {
          v18 = v23 + 16 * *v23 + 8;
        }

        else
        {
          v18 = 0;
        }

        if (v17 != v18)
        {
          do
          {
            v19 = objc_opt_class();
            MEMORY[0x19EB02040](&v22, [MEMORY[0x1E696AEC0] stringWithUTF8String:*v17]);
            [(WKWebViewContentProviderRegistry *)v4 registerProvider:v19 forMIMEType:&v22];
            v20 = v22;
            v22 = 0;
            if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v15);
            }

            v17 += 16;
          }

          while (v17 != v18);
          v16 = v23;
        }

        v23 = 0;
        if (v16)
        {
          WTF::fastFree(v16, v15);
        }
      }
    }
  }

  return v4;
}

- (void)registerProvider:(Class)provider forMIMEType:(const void *)type
{
  if (*type == -1 || !*type)
  {
    __break(0xC471u);
    JUMPOUT(0x19DCD87CCLL);
  }

  m_table = self->_contentProviderForMIMEType.m_impl.m_table;
  if (m_table || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::ASCIICaseInsensitiveHash,WTF::HashMap<WTF::String,objc_class  {objcproto24WKWebViewContentProvider},WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_class  {objcproto24WKWebViewContentProvider}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(&self->_contentProviderForMIMEType), (m_table = self->_contentProviderForMIMEType.m_impl.m_table) != 0))
  {
    v8 = *(m_table - 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = WTF::ASCIICaseInsensitiveHash::hash(*type, a2);
  v10 = 0;
  for (i = 1; ; ++i)
  {
    v12 = v9 & v8;
    v13 = &m_table[4 * (v9 & v8)];
    v14 = *v13;
    if (*v13 == -1)
    {
      v10 = &m_table[4 * v12];
      goto LABEL_12;
    }

    if (!v14)
    {
      break;
    }

    if (WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(v14, *type))
    {
      v13[1] = provider;
      return;
    }

LABEL_12:
    v9 = i + v12;
  }

  if (v10)
  {
    *v10 = 0;
    v10[1] = 0;
    --*(self->_contentProviderForMIMEType.m_impl.m_table - 4);
    v13 = v10;
  }

  WTF::String::operator=(v13, type);
  v13[1] = provider;
  v15 = self->_contentProviderForMIMEType.m_impl.m_table;
  if (v15)
  {
    v16 = *(v15 - 3) + 1;
  }

  else
  {
    v16 = 1;
  }

  *(v15 - 3) = v16;
  v17 = (*(v15 - 4) + v16);
  v18 = *(v15 - 1);
  if (v18 > 0x400)
  {
    if (v18 <= 2 * v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (3 * v18 > 4 * v17)
    {
      return;
    }

LABEL_23:

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::ASCIICaseInsensitiveHash,WTF::HashMap<WTF::String,objc_class  {objcproto24WKWebViewContentProvider},WTF::KeyValuePairKeyExtractor<objc_class  {objcproto24WKWebViewContentProvider}*>,WTF::HashTraits<WTF::String>,WTF::HashMap<objc_class  {objcproto24WKWebViewContentProvider}>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits,WTF::ShouldValidateKey>::expand(&self->_contentProviderForMIMEType);
  }
}

- (Class)providerForMIMEType:(const void *)type
{
  result = *type;
  if (*type)
  {
    if (!*(result + 1))
    {
      return 0;
    }

    m_table = self->_contentProviderForMIMEType.m_impl.m_table;
    if (!m_table)
    {
      return 0;
    }

    if (result == -1 || !result)
    {
      __break(0xC471u);
      JUMPOUT(0x19DCD88DCLL);
    }

    v7 = *(m_table - 2);
    v8 = WTF::ASCIICaseInsensitiveHash::hash(result, a2);
    for (i = 0; ; v8 = ++i + v10)
    {
      v10 = v8 & v7;
      v11 = *&m_table[4 * v10];
      if (v11 != -1)
      {
        if (!v11)
        {
          v12 = self->_contentProviderForMIMEType.m_impl.m_table;
          if (!v12)
          {
            return 0;
          }

          v13 = &v12[2 * *(v12 - 1)];
          goto LABEL_14;
        }

        if (WTF::equalIgnoringASCIICaseCommon<WTF::StringImpl,WTF::StringImpl>(v11, *type))
        {
          break;
        }
      }
    }

    v13 = &m_table[4 * v10];
    v12 = self->_contentProviderForMIMEType.m_impl.m_table;
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_14:
    v12 += 2 * *(v12 - 1);
LABEL_15:
    if (v12 != v13)
    {
      return v13[1];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end