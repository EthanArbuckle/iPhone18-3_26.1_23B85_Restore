@interface _WKInspectorDebuggableInfo
- (NSString)targetBuildVersion;
- (NSString)targetPlatformName;
- (NSString)targetProductVersion;
- (_WKInspectorDebuggableInfo)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)debuggableType;
- (void)dealloc;
- (void)setDebuggableType:(int64_t)a3;
- (void)setTargetBuildVersion:(id)a3;
- (void)setTargetPlatformName:(id)a3;
- (void)setTargetProductVersion:(id)a3;
@end

@implementation _WKInspectorDebuggableInfo

- (_WKInspectorDebuggableInfo)init
{
  v9.receiver = self;
  v9.super_class = _WKInspectorDebuggableInfo;
  v2 = [(_WKInspectorDebuggableInfo *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = API::Object::apiObjectsUnderConstruction(v2);
    v5 = [(_WKInspectorDebuggableInfo *)v3 _apiObject];
    v11 = v3;
    v12 = v5;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v4, &v12, &v11, v10);
    v6 = [(_WKInspectorDebuggableInfo *)v3 _apiObject];
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    v7 = API::Object::Object(v6);
    *v7 = &unk_1F111B070;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 3) = 0;
    *(v7 + 48) = 0;
  }

  return v3;
}

- (int64_t)debuggableType
{
  v2 = self->_debuggableInfo.m_storage.data[16];
  if (v2 > 4)
  {
    return 1;
  }

  else
  {
    return qword_19E703688[v2];
  }
}

- (void)setDebuggableType:(int64_t)a3
{
  v3 = 0x402030100uLL >> (8 * a3);
  if (a3 >= 5)
  {
    LOBYTE(v3) = 1;
  }

  self->_debuggableInfo.m_storage.data[16] = v3;
}

- (NSString)targetPlatformName
{
  v2 = *&self->_debuggableInfo.m_storage.data[24];
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

- (void)setTargetPlatformName:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self->_debuggableInfo.m_storage.data[24];
  *&self->_debuggableInfo.m_storage.data[24] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
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

- (NSString)targetBuildVersion
{
  v2 = *&self->_debuggableInfo.m_storage.data[32];
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

- (void)setTargetBuildVersion:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self->_debuggableInfo.m_storage.data[32];
  *&self->_debuggableInfo.m_storage.data[32] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
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

- (NSString)targetProductVersion
{
  v2 = *&self->_debuggableInfo.m_storage.data[40];
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

- (void)setTargetProductVersion:(id)a3
{
  MEMORY[0x19EB02040](&v8, a3);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v6 = *&self->_debuggableInfo.m_storage.data[40];
  *&self->_debuggableInfo.m_storage.data[40] = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
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

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::DebuggableInfo::~DebuggableInfo(&self->_debuggableInfo, v4);
    v5.receiver = self;
    v5.super_class = _WKInspectorDebuggableInfo;
    [(_WKInspectorDebuggableInfo *)&v5 dealloc];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDebuggableType:{-[_WKInspectorDebuggableInfo debuggableType](self, "debuggableType")}];
  [v4 setTargetPlatformName:{-[_WKInspectorDebuggableInfo targetPlatformName](self, "targetPlatformName")}];
  [v4 setTargetBuildVersion:{-[_WKInspectorDebuggableInfo targetBuildVersion](self, "targetBuildVersion")}];
  [v4 setTargetProductVersion:{-[_WKInspectorDebuggableInfo targetProductVersion](self, "targetProductVersion")}];
  [v4 setTargetIsSimulator:{-[_WKInspectorDebuggableInfo targetIsSimulator](self, "targetIsSimulator")}];
  return v4;
}

@end