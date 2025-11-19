@interface WKContextMenuElementInfo
- (NSURL)linkURL;
- (id)_activatedElementInfo;
- (void)dealloc;
@end

@implementation WKContextMenuElementInfo

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    v5 = *&self[8]._elementInfo.m_storage.data[32];
    *&self[8]._elementInfo.m_storage.data[32] = 0;
    if (v5)
    {
    }

    WebKit::InteractionInformationAtPosition::~InteractionInformationAtPosition(&self->_elementInfo.m_storage.data[16], v4);
    v6.receiver = self;
    v6.super_class = WKContextMenuElementInfo;
    [(WKContextMenuElementInfo *)&v6 dealloc];
  }
}

- (NSURL)linkURL
{
  WTF::URL::createCFURL(&v6, &self[1]._elementInfo.m_storage.data[24]);
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

- (id)_activatedElementInfo
{
  v3 = *&self[8]._elementInfo.m_storage.data[32];
  if (v3)
  {
    v4 = v3;
  }

  v5 = [_WKActivatedElementInfo activatedElementInfoWithInteractionInformationAtPosition:&self->_elementInfo.m_storage.data[16] userInfo:v3];
  if (v3)
  {
  }

  return v5;
}

@end