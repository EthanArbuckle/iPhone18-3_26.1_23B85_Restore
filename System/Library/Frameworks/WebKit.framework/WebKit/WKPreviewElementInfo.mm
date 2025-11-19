@interface WKPreviewElementInfo
- (id)_initWithLinkURL:(id)a3;
@end

@implementation WKPreviewElementInfo

- (id)_initWithLinkURL:(id)a3
{
  v8.receiver = self;
  v8.super_class = WKPreviewElementInfo;
  v4 = [(WKPreviewElementInfo *)&v8 init];
  if (v4)
  {
    v5 = [a3 copy];
    m_ptr = v4->_linkURL.m_ptr;
    v4->_linkURL.m_ptr = v5;
    if (m_ptr)
    {
    }
  }

  return v4;
}

@end