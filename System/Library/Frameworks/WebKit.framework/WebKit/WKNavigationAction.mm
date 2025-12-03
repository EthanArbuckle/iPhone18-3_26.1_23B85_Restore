@interface WKNavigationAction
- (CGPoint)_clickLocationInRootViewCoordinates;
- (NSInteger)buttonNumber;
- (NSString)_targetFrameName;
- (NSString)description;
- (NSURL)_originalURL;
- (NSURLRequest)request;
- (WKFrameInfo)sourceFrame;
- (WKFrameInfo)targetFrame;
- (WKNavigation)_mainFrameNavigation;
- (WKNavigationType)navigationType;
- (_WKHitTestResult)_hitTestResult;
- (_WKUserInitiatedAction)_userInitiatedAction;
- (int64_t)_syntheticClickType;
- (void)_storeSKAdNetworkAttribution;
- (void)dealloc;
@end

@implementation WKNavigationAction

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    API::NavigationAction::~NavigationAction(&self->_navigationAction, v4);
    v5.receiver = self;
    v5.super_class = WKNavigationAction;
    [(WKNavigationAction *)&v5 dealloc];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  navigationType = [(WKNavigationAction *)self navigationType];
  _syntheticClickType = [(WKNavigationAction *)self _syntheticClickType];
  [(WKNavigationAction *)self _clickLocationInRootViewCoordinates];
  v9 = v8;
  [(WKNavigationAction *)self _clickLocationInRootViewCoordinates];
  return [v3 stringWithFormat:@"<%@: %p; navigationType = %ld; syntheticClickType = %ld; position x = %.2f y = %.2f request = %@; sourceFrame = %@; targetFrame = %@>", v5, self, navigationType, _syntheticClickType, v9, v10, -[WKNavigationAction request](self, "request"), -[WKNavigationAction sourceFrame](self, "sourceFrame"), -[WKNavigationAction targetFrame](self, "targetFrame")];
}

- (WKFrameInfo)sourceFrame
{
  CFRetain(*&self->_navigationAction.m_storage.data[8]);
  v3 = *&self->_navigationAction.m_storage.data[16];
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DAA6428);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(*&self->_navigationAction.m_storage.data[8]);
  return v4;
}

- (WKFrameInfo)targetFrame
{
  v2 = *&self->_navigationAction.m_storage.data[24];
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(v2 + 8);
LABEL_6:
    CFRelease(v4);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKNavigationType)navigationType
{
  v2 = self->_anon_40[256];
  if (v2 > 5)
  {
    return -1;
  }

  else
  {
    return qword_19E7034C8[v2];
  }
}

- (NSURLRequest)request
{
  v3 = WebCore::ResourceRequest::nsURLRequest();
  if (v3)
  {
    v5 = v3;
    v6 = v3;
    v7 = v5;
  }

  else
  {
    v9 = MEMORY[0x1E695AC68];
    WTF::URL::createCFURL(&cf, &self->_anon_40[3152], v4);
    v5 = [v9 requestWithURL:cf];
    v10 = cf;
    cf = 0;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  return v5;
}

- (int64_t)_syntheticClickType
{
  v2 = self->_anon_40[259];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (CGPoint)_clickLocationInRootViewCoordinates
{
  WebCore::FloatPoint::operator CGPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

- (NSInteger)buttonNumber
{
  v2 = self->_anon_40[258];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_19E7034F8[v2];
  }
}

- (NSURL)_originalURL
{
  CFRetain(*&self->_navigationAction.m_storage.data[8]);
  if (*&self->_anon_40[192])
  {
    v3 = &self->_anon_40[192];
  }

  else
  {
    v3 = WebCore::ResourceRequestBase::url(&self->_navigationAction.m_storage.data[40]);
  }

  WTF::URL::createCFURL(&v8, v3);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v8;
    v8 = 0;
    if (v6)
    {
    }
  }

  CFRelease(*&self->_navigationAction.m_storage.data[8]);
  return v4;
}

- (_WKUserInitiatedAction)_userInitiatedAction
{
  v2 = *&self->_anon_40[240];
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(v2 + 8);
LABEL_6:
    CFRelease(v4);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (WKNavigation)_mainFrameNavigation
{
  v2 = *&self->_anon_40[3168];
  if (!v2)
  {
    return 0;
  }

  CFRetain(*(v2 + 8));
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(v2 + 8);
LABEL_6:
    CFRelease(v4);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (void)_storeSKAdNetworkAttribution
{
  v2 = *&self->_anon_40[3168];
  if (v2)
  {
    CFRetain(*(v2 + 8));
    if (*(v2 + 3424) == 1 && *(v2 + 1384) == 1 && *(v2 + 1120) == 1)
    {
      v4 = *&self->_navigationAction.m_storage.data[16];
      if (v4)
      {
        CFRetain(*(v4 + 8));
        v5 = *(v4 + 368);
        if (v5)
        {
          CFRetain(*(v5 + 8));
          v6 = *(v5 + 408);
          CFRetain(v6[1]);
          WebKit::WebsiteDataStore::storePrivateClickMeasurement(v6, (v2 + 1072));
          CFRelease(v6[1]);
          CFRelease(*(v5 + 8));
        }

        CFRelease(*(v4 + 8));
      }
    }

    v7 = *(v2 + 8);

    CFRelease(v7);
  }
}

- (_WKHitTestResult)_hitTestResult
{
  if (self->_anon_40[2000] != 1)
  {
    return 0;
  }

  v3 = *&self->_navigationAction.m_storage.data[16];
  if (!v3)
  {
    return 0;
  }

  CFRetain(*(v3 + 8));
  v4 = *(v3 + 368);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_11;
  }

  CFRetain(v4[1]);
  if (self->_anon_40[2000])
  {
    v5 = API::Object::newObject(0x370uLL, 66);
    v6 = *(API::HitTestResult::HitTestResult(v5, &self->_anon_40[1152], v4) + 1);
    if (!v6)
    {
      v9 = 0;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = v6;
      v9 = *(v5 + 1);
LABEL_10:
      CFRelease(v9);
      CFRelease(v4[1]);
LABEL_11:
      CFRelease(*(v3 + 8));
      return v6;
    }
  }

  else
  {
    std::__throw_bad_optional_access[abi:sn200100]();
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSString)_targetFrameName
{
  v2 = *&self->_navigationAction.m_storage.data[32];
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v2, a2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }

    v2 = v7;
    v7 = 0;
    if (v2)
    {
      v4 = v2;
      v5 = v7;
      v7 = 0;
      if (v5)
      {
      }
    }
  }

  return v2;
}

@end