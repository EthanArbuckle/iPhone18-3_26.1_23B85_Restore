@interface _WKInspectorConfiguration
- (WKProcessPool)processPool;
- (_WKInspectorConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyToWebViewConfiguration:(id)a3;
- (void)dealloc;
- (void)setProcessPool:(id)a3;
- (void)setURLSchemeHandler:(id)a3 forURLScheme:(id)a4;
@end

@implementation _WKInspectorConfiguration

- (_WKInspectorConfiguration)init
{
  v9.receiver = self;
  v9.super_class = _WKInspectorConfiguration;
  v2 = [(_WKInspectorConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(_WKInspectorConfiguration *)v3 _apiObject];
    v11 = v3;
    v12 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    v6 = [(_WKInspectorConfiguration *)v3 _apiObject];
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;
    v7 = API::Object::Object(v6);
    *v7 = &unk_1F111B510;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 2) = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::InspectorConfiguration::~InspectorConfiguration(&self->_configuration, v4);
    v5.receiver = self;
    v5.super_class = _WKInspectorConfiguration;
    [(_WKInspectorConfiguration *)&v5 dealloc];
  }
}

- (void)setURLSchemeHandler:(id)a3 forURLScheme:(id)a4
{
  WebKit::WebURLSchemeHandlerCocoa::create(a3, &v9);
  v10 = v9;
  MEMORY[0x19EB02040](&v8, a4);
  API::InspectorConfiguration::addURLSchemeHandler(&self->_configuration, &v10, &v8);
  v7 = v8;
  v8 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  if (v10)
  {
    if (v10[2] == 1)
    {
      (*(*v10 + 8))();
    }

    else
    {
      --v10[2];
    }
  }
}

- (void)setProcessPool:(id)a3
{
  if (a3)
  {
    v3 = (a3 + 8);
  }

  else
  {
    v3 = 0;
  }

  API::InspectorConfiguration::setProcessPool(&self->_configuration, v3);
}

- (WKProcessPool)processPool
{
  v2 = *&self->_configuration.m_storage.data[32];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19DB6AC2CLL);
    }
  }

  return v3;
}

- (void)applyToWebViewConfiguration:(id)a3
{
  v5 = *&self->_configuration.m_storage.data[28];
  if (v5)
  {
    v6 = *&self->_configuration.m_storage.data[16];
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      ++*(*v6 + 2);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      if (((*(*v8 + 24))(v8, a2) & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      ++*(v8 + 2);
      v10 = v8[6];
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v16, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v11);
        }
      }

      else
      {
        v16 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      [a3 setURLSchemeHandler:v10 forURLScheme:v16];
      v13 = v16;
      v16 = 0;
      if (v13)
      {
      }

      if (*(v8 + 2) == 1)
      {
        (*(*v8 + 8))(v8);
        if (v9)
        {
LABEL_14:
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, a2);
          }
        }
      }

      else
      {
        --*(v8 + 2);
        if (v9)
        {
          goto LABEL_14;
        }
      }

      if (*(v8 + 2) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 2);
      }

      v6 += 2;
    }

    while (v6 != v7);
  }

  v14 = [(_WKInspectorConfiguration *)self processPool];
  if (v14)
  {
    [a3 setProcessPool:v14];
  }

  v15 = [(_WKInspectorConfiguration *)self groupIdentifier];
  if (v15)
  {
    [a3 _setGroupIdentifier:v15];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = *&self->_configuration.m_storage.data[28];
  if (v5)
  {
    v6 = *&self->_configuration.m_storage.data[16];
    v7 = &v6[2 * v5];
    do
    {
      v8 = *v6;
      v9 = v6[1];
      ++*(*v6 + 2);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      if (((*(*v8 + 24))(v8) & 1) == 0)
      {
        result = 96;
        __break(0xC471u);
        return result;
      }

      ++*(v8 + 2);
      v10 = v8[6];
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v18, v9);
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v11);
        }
      }

      else
      {
        v18 = &stru_1F1147748;
        v12 = &stru_1F1147748;
      }

      [v4 setURLSchemeHandler:v10 forURLScheme:v18];
      v14 = v18;
      v18 = 0;
      if (v14)
      {
      }

      if (*(v8 + 2) == 1)
      {
        (*(*v8 + 8))(v8);
        if (v9)
        {
LABEL_14:
          if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v9, v13);
          }
        }
      }

      else
      {
        --*(v8 + 2);
        if (v9)
        {
          goto LABEL_14;
        }
      }

      if (*(v8 + 2) == 1)
      {
        (*(*v8 + 8))(v8);
      }

      else
      {
        --*(v8 + 2);
      }

      v6 += 2;
    }

    while (v6 != v7);
  }

  v15 = [(_WKInspectorConfiguration *)self processPool];
  if (v15)
  {
    [v4 setProcessPool:v15];
  }

  v16 = [(_WKInspectorConfiguration *)self groupIdentifier];
  if (v16)
  {
    [v4 setGroupIdentifier:v16];
  }

  return v4;
}

@end