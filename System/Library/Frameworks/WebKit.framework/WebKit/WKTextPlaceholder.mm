@interface WKTextPlaceholder
- (WKTextPlaceholder)initWithElementContext:(const void *)context;
- (id).cxx_construct;
- (id)rects;
@end

@implementation WKTextPlaceholder

- (WKTextPlaceholder)initWithElementContext:(const void *)context
{
  result = [(UITextPlaceholder *)self init];
  if (result)
  {
    result->_elementContext.boundingRect = *context;
    v6 = *(context + 2);
    v5 = *(context + 3);
    v7 = *(context + 1);
    result[1].super._attachment = *(context + 8);
    *(&result->_elementContext.documentIdentifier.m_value + 8) = v6;
    *&result[1].super.super.isa = v5;
    *&result->_elementContext.webPageIdentifier.m_value.m_identifier = v7;
  }

  return result;
}

- (id)rects
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [WKTextSelectionRect alloc];
  WebCore::FloatRect::operator CGRect();
  v3 = [(WKTextSelectionRect *)v2 initWithCGRect:?];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  if (v3)
  {
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end