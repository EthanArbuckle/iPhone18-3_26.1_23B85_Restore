@interface _WKUserContentFilter
- (id)_initWithWKContentRuleList:(id)list;
@end

@implementation _WKUserContentFilter

- (id)_initWithWKContentRuleList:(id)list
{
  v8.receiver = self;
  v8.super_class = _WKUserContentFilter;
  v4 = [(_WKUserContentFilter *)&v8 init];
  if (v4)
  {
    if (list)
    {
      listCopy = list;
    }

    m_ptr = v4->_contentRuleList.m_ptr;
    v4->_contentRuleList.m_ptr = list;
    if (m_ptr)
    {
    }
  }

  return v4;
}

@end