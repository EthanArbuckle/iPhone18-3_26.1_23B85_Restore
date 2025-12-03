@interface _WKTextInputContext
- (BOOL)isEqual:(id)equal;
- (CGRect)boundingRect;
- (id).cxx_construct;
- (id)_initWithTextInputContext:(const void *)context;
@end

@implementation _WKTextInputContext

- (id)_initWithTextInputContext:(const void *)context
{
  v8.receiver = self;
  v8.super_class = _WKTextInputContext;
  result = [(_WKTextInputContext *)&v8 init];
  if (result)
  {
    *(result + 1) = *context;
    v5 = *(context + 1);
    v6 = *(context + 2);
    v7 = *(context + 3);
    *(result + 10) = *(context + 8);
    *(result + 3) = v6;
    *(result + 4) = v7;
    *(result + 2) = v5;
  }

  return result;
}

- (CGRect)boundingRect
{
  WebCore::FloatRect::operator CGRect();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = WTF::dynamic_objc_cast<_WKTextInputContext>(equal);
    if (v4)
    {
      v5 = self->_textInputContext.boundingRect.m_location.m_x == *(v4 + 16) && self->_textInputContext.boundingRect.m_location.m_y == *(v4 + 20);
      if (v5 && (self->_textInputContext.boundingRect.m_size.m_width == *(v4 + 24) ? (v6 = self->_textInputContext.boundingRect.m_size.m_height == *(v4 + 28)) : (v6 = 0), v6))
      {

        LOBYTE(v4) = WebCore::ElementContext::isSameElement(&self->_textInputContext, (v4 + 16));
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 10) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

@end