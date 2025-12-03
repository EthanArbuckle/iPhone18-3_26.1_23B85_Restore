@interface _WKResourceLoadInfo
- (NSString)originalHTTPMethod;
- (NSURL)originalURL;
- (NSUUID)documentID;
- (_WKFrameHandle)frame;
- (_WKFrameHandle)parentFrame;
- (_WKResourceLoadInfo)initWithCoder:(id)coder;
- (int64_t)resourceType;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _WKResourceLoadInfo

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *self[2]._anon_8;
    *self[2]._anon_8 = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }

    v6 = *&self[1]._info.m_storage.data[16];
    *&self[1]._info.m_storage.data[16] = 0;
    if (v6)
    {
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v4);
      }
    }

    v7.receiver = self;
    v7.super_class = _WKResourceLoadInfo;
    [(_WKResourceLoadInfo *)&v7 dealloc];
  }
}

- (_WKFrameHandle)frame
{
  if ((*&self->_info.m_storage.data[32] & 1) == 0)
  {
    return 0;
  }

  API::FrameHandle::create(*&self->_info.m_storage.data[24], 1, &v7);
  WebKit::wrapper<API::FrameHandle>(&v7, &v8);
  v2 = v8;
  v8 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    v8 = 0;
    if (v4)
    {
    }
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v2;
}

- (_WKFrameHandle)parentFrame
{
  if ((self[1].super.isa & 1) == 0)
  {
    return 0;
  }

  API::FrameHandle::create(*&self->_info.m_storage.data[40], 1, &v7);
  WebKit::wrapper<API::FrameHandle>(&v7, &v8);
  v2 = v8;
  v8 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    v8 = 0;
    if (v4)
    {
    }
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
    CFRelease(*(v5 + 1));
  }

  return v2;
}

- (NSUUID)documentID
{
  v2 = *&self[1]._info.m_storage.data[8];
  v8[0] = *self[1]._info.m_storage.data;
  v8[1] = v2;
  if (!(v8[0] | v2))
  {
    return 0;
  }

  WTF::UUID::createNSUUID(&v7, v8);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = v3;
    v5 = v7;
    v7 = 0;
    if (v5)
    {
    }
  }

  return v3;
}

- (NSURL)originalURL
{
  WTF::URL::createCFURL(&v6, &self[1]._info.m_storage.data[16]);
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

- (NSString)originalHTTPMethod
{
  v2 = *self[2]._anon_8;
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

- (int64_t)resourceType
{
  v2 = self[2]._info.m_storage.data[9];
  if (v2 > 0xE)
  {
    return -1;
  }

  else
  {
    return qword_19E7036B0[v2];
  }
}

- (_WKResourceLoadInfo)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = _WKResourceLoadInfo;
  v4 = [(_WKResourceLoadInfo *)&v25 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"resourceLoadID"];
  if (!v5 || (v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"frame"]) == 0 || (v7 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"parentFrame"), v8 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"documentID"), (v9 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"originalURL")) == 0) || (v10 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"originalHTTPMethod")) == 0 || (v11 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"eventTimestamp")) == 0 || (v24 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"loadedFromCache")) == 0 || (v12 = objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"type")) == 0)
  {

    return 0;
  }

  v30[0] = [v5 unsignedLongLongValue];
  if ((v30[0] - 1) < 0xFFFFFFFFFFFFFFFELL)
  {
    v14 = *(v6 + 24) != 0;
    v30[1] = *(v6 + 24);
    v31 = v14;
    if (v7)
    {
      v15 = *(v7 + 24);
    }

    else
    {
      v15 = 0;
    }

    v32 = v15;
    v33 = v15 != 0;
    if (v8)
    {
      WTF::UUID::fromNSUUID(&v28, v8, v13);
      if (v29)
      {
        v34 = v28;
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v28) = 0;
      v29 = 0;
    }

    v34 = 0uLL;
LABEL_20:
    MEMORY[0x19EB01DE0](&v35, v9);
    MEMORY[0x19EB02040](v36, v10);
    [v11 timeIntervalSince1970];
    v36[1] = v17;
    bOOLValue = [v24 BOOLValue];
    unsignedCharValue = [v12 unsignedCharValue];
    v38 = unsignedCharValue;
    v19 = API::Object::apiObjectsUnderConstruction(unsignedCharValue);
    _apiObject = [(_WKResourceLoadInfo *)v4 _apiObject];
    v26 = v4;
    v27 = _apiObject;
    WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v19, &v27, &v26, &v28);
    API::ResourceLoadInfo::ResourceLoadInfo([(_WKResourceLoadInfo *)v4 _apiObject], v30);
    v22 = v36[0];
    v36[0] = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v35;
    v35 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }
    }

    return v4;
  }

  result = 153;
  __break(0xC471u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", -[_WKResourceLoadInfo resourceLoadID](self, "resourceLoadID")), @"resourceLoadID"}];
  [coder encodeObject:-[_WKResourceLoadInfo frame](self forKey:{"frame"), @"frame"}];
  [coder encodeObject:-[_WKResourceLoadInfo parentFrame](self forKey:{"parentFrame"), @"parentFrame"}];
  [coder encodeObject:-[_WKResourceLoadInfo documentID](self forKey:{"documentID"), @"documentID"}];
  [coder encodeObject:-[_WKResourceLoadInfo originalURL](self forKey:{"originalURL"), @"originalURL"}];
  [coder encodeObject:-[_WKResourceLoadInfo originalHTTPMethod](self forKey:{"originalHTTPMethod"), @"originalHTTPMethod"}];
  [coder encodeObject:-[_WKResourceLoadInfo eventTimestamp](self forKey:{"eventTimestamp"), @"eventTimestamp"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[_WKResourceLoadInfo loadedFromCache](self, "loadedFromCache")), @"loadedFromCache"}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self[2]._info.m_storage.data[9]];

  [coder encodeObject:v5 forKey:@"type"];
}

@end