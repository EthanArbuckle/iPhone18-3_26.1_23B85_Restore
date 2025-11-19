@interface _WKHitTestResult
- (CGRect)elementBoundingBox;
- (NSString)imageMIMEType;
- (NSString)imageSuggestedFilename;
- (NSString)linkLabel;
- (NSString)linkSuggestedFilename;
- (NSString)linkTitle;
- (NSString)lookupText;
- (NSURL)absoluteImageURL;
- (NSURL)absoluteLinkURL;
- (NSURL)absoluteMediaURL;
- (NSURL)absolutePDFURL;
- (NSURLResponse)linkLocalResourceResponse;
- (WKFrameInfo)frameInfo;
- (int64_t)elementType;
- (void)dealloc;
@end

@implementation _WKHitTestResult

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    (**self->_hitTestResult.m_storage.data)();
    v4.receiver = self;
    v4.super_class = _WKHitTestResult;
    [(_WKHitTestResult *)&v4 dealloc];
  }
}

- (NSURL)absoluteImageURL
{
  v2 = *&self->_hitTestResult.m_storage.data[16];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v4 = URLFromString(v2);
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v4;
}

- (NSURL)absolutePDFURL
{
  v2 = *&self->_hitTestResult.m_storage.data[24];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v4 = URLFromString(v2);
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v4;
}

- (NSURL)absoluteLinkURL
{
  v2 = *&self->_hitTestResult.m_storage.data[32];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v4 = URLFromString(v2);
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v4;
}

- (NSURL)absoluteMediaURL
{
  v2 = *&self->_hitTestResult.m_storage.data[40];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  v4 = URLFromString(v2);
  if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, v3);
  }

  return v4;
}

- (NSString)linkLabel
{
  isa = self[1].super.isa;
  if (isa)
  {
    atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(isa, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9, isa, a2);
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v3);
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

  if (isa)
  {
LABEL_10:
    if (atomic_fetch_add_explicit(isa, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(isa, v3);
    }
  }

  return &v4->isa;
}

- (NSString)linkTitle
{
  v2 = *self[1]._anon_8;
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

- (NSString)lookupText
{
  v2 = *self[8]._anon_8;
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

- (NSString)linkSuggestedFilename
{
  v2 = *self[1]._hitTestResult.m_storage.data;
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

- (NSString)imageSuggestedFilename
{
  v2 = *&self[1]._hitTestResult.m_storage.data[8];
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

- (NSString)imageMIMEType
{
  v2 = *&self[8]._hitTestResult.m_storage.data[32];
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

- (CGRect)elementBoundingBox
{
  WebCore::IntRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (int64_t)elementType
{
  v2 = self[1]._hitTestResult.m_storage.data[43];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (NSURLResponse)linkLocalResourceResponse
{
  if (self[13]._anon_8[0] == 1)
  {
    return WebCore::ResourceResponse::nsURLResponse(&self[9]);
  }

  else
  {
    return 0;
  }
}

- (WKFrameInfo)frameInfo
{
  v23 = *MEMORY[0x1E69E9840];
  std::__optional_copy_base<WebKit::FrameInfoData,false>::__optional_copy_base[abi:sn200100](v16, &self[2]);
  if (v22 != 1)
  {
    return 0;
  }

  v3 = *&self[13]._hitTestResult.m_storage.data[32];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      CFRetain(*(v4 - 8));
      v3 = v4 - 16;
    }

    else
    {
      v3 = 0;
    }
  }

  v15 = v3;
  v6 = API::Object::newObject(0x180uLL, 59);
  v5 = *(API::FrameInfo::FrameInfo(v6, v16, &v15) + 8);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = v5;
    v9 = *(v6 + 8);
LABEL_11:
    CFRelease(v9);
    if (v15)
    {
      CFRelease(*(v15 + 8));
    }

    if (v22)
    {
      v11 = cf;
      cf = 0;
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = v20;
      v20 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v10);
      }

      mpark::detail::copy_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~copy_constructor(&v19);
      v13 = v18;
      v18 = 0;
      if (v13)
      {
      }

      WebCore::ResourceRequestBase::~ResourceRequestBase(&v17);
    }

    return v5;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

@end