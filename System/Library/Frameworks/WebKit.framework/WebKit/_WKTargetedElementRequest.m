@interface _WKTargetedElementRequest
- (_WKTargetedElementRequest)init;
- (_WKTargetedElementRequest)initWithPoint:(CGPoint)a3;
- (_WKTargetedElementRequest)initWithSearchText:(id)a3;
- (_WKTargetedElementRequest)initWithSelectors:(id)a3;
- (void)dealloc;
@end

@implementation _WKTargetedElementRequest

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    if (self->_request.m_storage.data[32] > 1u)
    {
      if (self->_request.m_storage.data[32] == 2)
      {
        WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&self->_request.m_storage.data[16], v4);
      }
    }

    else if (self->_request.m_storage.data[32])
    {
      v5 = *&self->_request.m_storage.data[16];
      *&self->_request.m_storage.data[16] = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, v4);
        }
      }
    }

    self->_request.m_storage.data[32] = -1;
    v6.receiver = self;
    v6.super_class = _WKTargetedElementRequest;
    [(_WKTargetedElementRequest *)&v6 dealloc];
  }
}

- (_WKTargetedElementRequest)init
{
  v9.receiver = self;
  v9.super_class = _WKTargetedElementRequest;
  v2 = [(_WKTargetedElementRequest *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(_WKTargetedElementRequest *)v3 _apiObject];
    v11 = v3;
    v12 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    v6 = [(_WKTargetedElementRequest *)v3 _apiObject];
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    v7 = API::Object::Object(v6);
    *v7 = &unk_1F10FBBB0;
    *(v7 + 2) = 0;
    *(v7 + 32) = 0;
    *(v7 + 20) = 257;
  }

  return v3;
}

- (_WKTargetedElementRequest)initWithSearchText:(id)a3
{
  v4 = [(_WKTargetedElementRequest *)self init];
  if (v4)
  {
    MEMORY[0x19EB02040](&v8, a3);
    API::TargetedElementRequest::setSearchText(&v4->_request, &v8);
    v6 = v8;
    v8 = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v5);
      }
    }
  }

  return v4;
}

- (_WKTargetedElementRequest)initWithPoint:(CGPoint)a3
{
  v7 = a3;
  v3 = [(_WKTargetedElementRequest *)self init];
  if (v3)
  {
    WebCore::FloatPoint::FloatPoint(v6, &v7);
    API::TargetedElementRequest::setPoint(&v3->_request, v4, v6[0], v6[1]);
  }

  return v3;
}

- (_WKTargetedElementRequest)initWithSelectors:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [(_WKTargetedElementRequest *)self init];
  if (!v4)
  {
    return v4;
  }

  v35 = 0;
  v36 = 0;
  result = [a3 count];
  if (!result)
  {
LABEL_5:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        v8 = 0;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v31 + 1) + 8 * v8);
          v30 = 0;
          v10 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::computeBestTableSize([v9 count]);
          v11 = WTF::fastZeroedMalloc((8 * v10 + 16));
          v30 = (v11 + 16);
          *(v11 + 8) = v10 - 1;
          *(v11 + 12) = v10;
          *v11 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
          if (v13)
          {
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v9);
                }

                MEMORY[0x19EB02040](&v25, *(*(&v26 + 1) + 8 * i));
                WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v30, &v25, v16, &v24);
                v18 = v25;
                v25 = 0;
                if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v18, v17);
                }
              }

              v13 = [v9 countByEnumeratingWithState:&v26 objects:v37 count:16];
            }

            while (v13);
          }

          v19 = HIDWORD(v36);
          if (HIDWORD(v36) == v36)
          {
            v20 = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v35, HIDWORD(v36) + 1, &v30);
            v19 = HIDWORD(v36);
            v21 = v35;
            *(v35 + 8 * HIDWORD(v36)) = 0;
            v22 = *v20;
            *v20 = 0;
          }

          else
          {
            v21 = v35;
            *(v35 + 8 * HIDWORD(v36)) = 0;
            v22 = v30;
            v30 = 0;
          }

          *(v21 + 8 * v19) = v22;
          HIDWORD(v36) = v19 + 1;
          if (v30)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v30, v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [a3 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v6);
    }

    API::TargetedElementRequest::setSelectors(&v4->_request, &v35);
    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v35, v23);
    return v4;
  }

  if (!(result >> 29))
  {
    LODWORD(v36) = result;
    v35 = WTF::fastMalloc((8 * result));
    goto LABEL_5;
  }

  __break(0xC471u);
  return result;
}

@end