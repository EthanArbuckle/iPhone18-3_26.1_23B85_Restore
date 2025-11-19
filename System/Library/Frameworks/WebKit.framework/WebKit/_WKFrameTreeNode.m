@interface _WKFrameTreeNode
- (NSArray)childFrames;
- (WKFrameInfo)info;
- (void)dealloc;
@end

@implementation _WKFrameTreeNode

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::FrameTreeNode::~FrameTreeNode(&self->_node, v4);
    v5.receiver = self;
    v5.super_class = _WKFrameTreeNode;
    [(_WKFrameTreeNode *)&v5 dealloc];
  }
}

- (WKFrameInfo)info
{
  v21 = *MEMORY[0x1E69E9840];
  WebKit::FrameInfoData::FrameInfoData(&v15, &self->_node.m_storage.data[16]);
  v3 = *self[6]._node.m_storage.data;
  CFRetain(*(v3 + 8));
  v14 = v3;
  v4 = API::Object::newObject(0x180uLL, 59);
  v5 = *(API::FrameInfo::FrameInfo(v4, &v15, &v14) + 8);
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      result = 117;
      __break(0xC471u);
      return result;
    }

    v6 = v5;
    v7 = v5;
    v8 = *(v4 + 8);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v8);
  if (v14)
  {
    CFRelease(*(v14 + 8));
  }

  v10 = cf;
  cf = 0;
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = v19;
  v19 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v18);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
  }

  WebCore::ResourceRequestBase::~ResourceRequestBase(&v16);
  return v5;
}

- (NSArray)childFrames
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self[6]._anon_8[4]];
  v4 = *&self[6]._anon_8[4];
  if (v4)
  {
    isa = self[6].super.isa;
    v6 = 368 * v4;
    while (1)
    {
      WebKit::FrameInfoData::FrameInfoData(&v19, isa);
      WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, isa + 44);
      API::FrameTreeNode::create(&v19, *self[6]._node.m_storage.data, &v18);
      v7 = *(v18 + 8);
      if (!v7)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        result = 117;
        __break(0xC471u);
        return result;
      }

      v8 = v7;
      v10 = v18;
      v18 = 0;
      if (v10)
      {
        v11 = *(v10 + 8);
LABEL_8:
        CFRelease(v11);
      }

      WTF::Vector<WebKit::FrameTreeNodeData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v9);
      v13 = cf;
      cf = 0;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v23;
      v23 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v22);
      v15 = v21;
      v21 = 0;
      if (v15)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(&v20);
      if (v7)
      {
        [(NSArray *)v3 addObject:v7];
      }

      isa += 46;
      v6 -= 368;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    v11 = 0;
    v18 = 0;
    goto LABEL_8;
  }

LABEL_19:
  if (v3)
  {
    v16 = v3;
  }

  return v3;
}

@end