@interface _WKCustomHeaderFields
- (NSArray)thirdPartyDomains;
- (NSDictionary)fields;
- (_WKCustomHeaderFields)init;
- (uint64_t)setFields:;
- (void)dealloc;
- (void)setFields:(id)fields;
- (void)setThirdPartyDomains:(id)domains;
@end

@implementation _WKCustomHeaderFields

- (_WKCustomHeaderFields)init
{
  v9.receiver = self;
  v9.super_class = _WKCustomHeaderFields;
  v2 = [(_WKCustomHeaderFields *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    _apiObject = [(_WKCustomHeaderFields *)v3 _apiObject];
    v11 = v3;
    v12 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    _apiObject2 = [(_WKCustomHeaderFields *)v3 _apiObject];
    *_apiObject2 = 0u;
    _apiObject2[1] = 0u;
    _apiObject2[2] = 0u;
    v7 = API::Object::Object(_apiObject2);
    *v7 = &unk_1F10E5F30;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self->_fields.m_storage.data[32], v4);
    WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self->_fields.m_storage.data[16], v5);
    v6.receiver = self;
    v6.super_class = _WKCustomHeaderFields;
    [(_WKCustomHeaderFields *)&v6 dealloc];
  }
}

- (NSDictionary)fields
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:*&self->_fields.m_storage.data[28]];
  v4 = *&self->_fields.m_storage.data[28];
  if (v4)
  {
    v5 = 16 * v4;
    v6 = (*&self->_fields.m_storage.data[16] + 8);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v18, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v18 = &stru_1F1147748;
        v9 = &stru_1F1147748;
      }

      v10 = v18;
      v11 = *(v6 - 1);
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v17, v11);
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v12);
        }
      }

      else
      {
        v17 = &stru_1F1147748;
        v13 = &stru_1F1147748;
      }

      [(NSDictionary *)v3 setObject:v10 forKey:v17, v17];
      v14 = v17;
      v17 = 0;
      if (v14)
      {
      }

      v15 = v18;
      v18 = 0;
      if (v15)
      {
      }

      v6 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return v3;
}

- (void)setFields:(id)fields
{
  v11 = 0;
  v12 = 0;
  v5 = [fields count];
  if (v5)
  {
    if (v5 >> 28)
    {
      __break(0xC471u);
      return;
    }

    LODWORD(v12) = v5;
    v11 = WTF::fastMalloc((16 * v5));
  }

  v6 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
  *v6 = MEMORY[0x1E69E9818];
  v6[1] = 50331650;
  v6[2] = WTF::BlockPtr<void ()(objc_object *,objc_object *,BOOL *)>::fromCallable<[_WKCustomHeaderFields setFields:]::$_0>([_WKCustomHeaderFields setFields:]::$_0)::{lambda(void *,objc_object *,objc_object *,BOOL *)#1}::__invoke;
  v6[3] = &WTF::BlockPtr<void ()(objc_object *,objc_object *,BOOL *)>::fromCallable<[_WKCustomHeaderFields setFields:]::$_0>([_WKCustomHeaderFields setFields:]::$_0)::descriptor;
  v6[4] = &v11;
  [fields enumerateKeysAndObjectsUsingBlock:v6];
  _Block_release(v6);
  v8 = *&self->_fields.m_storage.data[28];
  if (v8)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*&self->_fields.m_storage.data[16], (*&self->_fields.m_storage.data[16] + 16 * v8));
  }

  v9 = *&self->_fields.m_storage.data[16];
  if (v9)
  {
    *&self->_fields.m_storage.data[16] = 0;
    *&self->_fields.m_storage.data[24] = 0;
    WTF::fastFree(v9, v7);
  }

  *&self->_fields.m_storage.data[16] = v11;
  v10 = v12;
  v11 = 0;
  v12 = 0;
  *&self->_fields.m_storage.data[24] = v10;
  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v7);
}

- (NSArray)thirdPartyDomains
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v10, &self->_fields.m_storage.data[32]);
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v2 initWithCapacity:v11];
  if (v11)
  {
    v5 = v10;
    v6 = 8 * v11;
    do
    {
      WTF::makeNSArrayElement(&v12, v5, v3);
      if (v12)
      {
        [(NSArray *)v4 addObject:?];
        v7 = v12;
        v12 = 0;
        if (v7)
        {
        }
      }

      v5 = (v5 + 8);
      v6 -= 8;
    }

    while (v6);
  }

  if (v4)
  {
    v8 = v4;
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v3);
  return v4;
}

- (void)setThirdPartyDomains:(id)domains
{
  domainsCopy = domains;
  v10 = &domainsCopy;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(&v8, [domains count], &v10, 0);
  v5 = *&self->_fields.m_storage.data[44];
  if (v5)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*&self->_fields.m_storage.data[32], (*&self->_fields.m_storage.data[32] + 8 * v5));
  }

  v6 = *&self->_fields.m_storage.data[32];
  if (v6)
  {
    *&self->_fields.m_storage.data[32] = 0;
    *&self->_fields.m_storage.data[40] = 0;
    WTF::fastFree(v6, v4);
  }

  *&self->_fields.m_storage.data[32] = v8;
  v7 = v9;
  v8 = 0;
  v9 = 0;
  *&self->_fields.m_storage.data[40] = v7;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, v4);
}

- (uint64_t)setFields:
{
  MEMORY[0x19EB02040](&v22);
  MEMORY[0x19EB02040](&v21, a3);
  WebCore::HTTPHeaderField::create();
  v6 = v21;
  v21 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  result = v22;
  v22 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

  if (v25 == 1)
  {
    if (v23)
    {
      result = WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(v23, "x-", 2uLL);
      v8 = v25;
      if (!result)
      {
        goto LABEL_13;
      }

      if ((v25 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v9 = *(self + 32);
      v10 = *(v9 + 12);
      if (v10 == *(v9 + 8))
      {
        result = WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v9, v10 + 1, &v23);
        v11 = *(v9 + 12);
        v12 = v11 + 1;
        v13 = (*v9 + 16 * v11);
        v14 = *result;
        *result = 0;
        *v13 = v14;
        v15 = *(result + 8);
        *(result + 8) = 0;
        v13[1] = v15;
        *(v9 + 12) = v12;
        v8 = v25;
LABEL_13:
        if ((v8 & 1) == 0)
        {
          return result;
        }

        goto LABEL_16;
      }

      v16 = v10 + 1;
      v17 = (*v9 + 16 * v10);
      v18 = v23;
      v23 = 0;
      *v17 = v18;
      v19 = v24;
      v24 = 0;
      v17[1] = v19;
      *(v9 + 12) = v16;
    }

LABEL_16:
    v20 = v24;
    v24 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v5);
    }

    result = v23;
    v23 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

@end