@interface _WKUserContentFilter
- (id)_initWithWKContentRuleList:(id)a3;
@end

@implementation _WKUserContentFilter

- (id)_initWithWKContentRuleList:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKUserContentFilter;
  v4 = [(_WKUserContentFilter *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->_contentRuleList.m_ptr;
    v4->_contentRuleList.m_ptr = a3;
    if (m_ptr)
    {
    }
  }

  return v4;
}

@end