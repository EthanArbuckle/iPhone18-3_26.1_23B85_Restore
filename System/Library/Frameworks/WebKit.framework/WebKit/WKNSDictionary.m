@interface WKNSDictionary
- (Ref<API::Dictionary,)_protectedDictionary;
- (WKNSDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation WKNSDictionary

- (Ref<API::Dictionary,)_protectedDictionary
{
  v3 = v2;
  p_dictionary = &self->_dictionary;
  v5 = CFRetain(*&self->_dictionary.m_storage.data[8]);
  *v3 = p_dictionary;
  return v5;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    [(WKNSDictionary *)self _protectedDictionary];
    v5 = v8;
    v6 = *(v8 + 16);
    if (v6)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
      v5 = v8;
      v8 = 0;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(*(v5 + 8));
LABEL_5:
    v7.receiver = self;
    v7.super_class = WKNSDictionary;
    [(WKNSDictionary *)&v7 dealloc];
  }
}

- (WKNSDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = WKNSDictionary;
  return [(WKNSDictionary *)&v6 initWithObjects:a3 forKeys:a4 count:a5];
}

- (unint64_t)count
{
  v2 = *&self->_dictionary.m_storage.data[16];
  if (v2)
  {
    return *(v2 - 12);
  }

  else
  {
    return 0;
  }
}

- (id)objectForKey:(id)a3
{
  v4 = WTF::dynamic_objc_cast<NSString>(a3);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  v7 = v4;
  if (self)
  {
    [(WKNSDictionary *)self _protectedDictionary];
    self = v25;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x19EB02040](&v24, v6);
  v10 = *&self->_dictionary.m_storage.data[8];
  if (!v10)
  {
LABEL_24:
    v19 = 1;
LABEL_25:
    v20 = 1;
    goto LABEL_26;
  }

  if (v24 == -1 || !v24)
  {
    __break(0xC471u);
    JUMPOUT(0x19D9FC0A0);
  }

  v11 = *(v10 - 8);
  v12 = *(v24 + 4);
  if (v12 < 0x100)
  {
    v13 = WTF::StringImpl::hashSlowCase(v24);
  }

  else
  {
    v13 = v12 >> 8;
  }

  for (i = 0; ; v13 = i + v15)
  {
    v15 = v13 & v11;
    v16 = *(v10 + 16 * v15);
    if (v16 == -1)
    {
      goto LABEL_15;
    }

    if (!v16)
    {
      v17 = *&self->_dictionary.m_storage.data[8];
      if (v17)
      {
        v18 = v17 + 16 * *(v17 - 4);
        goto LABEL_19;
      }

LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    if (WTF::equal(v16, v24, v9))
    {
      break;
    }

LABEL_15:
    ++i;
  }

  v18 = v10 + 16 * v15;
  v17 = *&self->_dictionary.m_storage.data[8];
  if (v17)
  {
LABEL_19:
    v17 += 16 * *(v17 - 4);
  }

  if (v17 == v18)
  {
    goto LABEL_23;
  }

  v10 = *(v18 + 8);
  if (!v10)
  {
    v19 = 0;
    goto LABEL_25;
  }

  CFRetain(*(v10 + 8));
  v19 = 0;
  v20 = 0;
LABEL_26:
  v21 = v24;
  v24 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v8);
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    CFRelease(*v22->_dictionary.m_storage.data);
  }

  if (v19)
  {
    v5 = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_37:
    CFRelease(*(v10 + 8));
  }

  else if (v10)
  {
    v5 = *(v10 + 8);
    if ((v20 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    if ((v20 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_33:

  return v5;
}

- (id)keyEnumerator
{
  if (self)
  {
    [(WKNSDictionary *)self _protectedDictionary];
    self = v8;
  }

  else
  {
    v8 = 0;
  }

  API::Dictionary::keys(self, &v9);
  v2 = v9;
  v3 = *(v9 + 1);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v4 = v3;
  }

  v5 = [v3 objectEnumerator];
  if (v3)
  {
  }

  CFRelease(*(v2 + 1));
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    CFRelease(*(v6 + 1));
  }

  return v5;
}

@end