@interface _WKTextInputContext
- (BOOL)isEqual:(id)a3;
- (CGRect)boundingRect;
- (id).cxx_construct;
- (id)_initWithTextInputContext:(const void *)a3;
@end

@implementation _WKTextInputContext

- (id)_initWithTextInputContext:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = _WKTextInputContext;
  result = [(_WKTextInputContext *)&v8 init];
  if (result)
  {
    *(result + 1) = *a3;
    v5 = *(a3 + 1);
    v6 = *(a3 + 2);
    v7 = *(a3 + 3);
    *(result + 10) = *(a3 + 8);
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = WTF::dynamic_objc_cast<_WKTextInputContext>(a3);
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