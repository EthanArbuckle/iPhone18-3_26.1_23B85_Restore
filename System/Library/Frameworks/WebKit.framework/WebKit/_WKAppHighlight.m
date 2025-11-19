@interface _WKAppHighlight
- (_WKAppHighlight)initWithHighlight:(id)a3 text:(id)a4 image:(id)a5;
- (id).cxx_construct;
@end

@implementation _WKAppHighlight

- (_WKAppHighlight)initWithHighlight:(id)a3 text:(id)a4 image:(id)a5
{
  v16.receiver = self;
  v16.super_class = _WKAppHighlight;
  v8 = [(_WKAppHighlight *)&v16 init];
  if (v8)
  {
    if (a3)
    {
      v9 = a3;
    }

    m_ptr = v8->_highlight.m_ptr;
    v8->_highlight.m_ptr = a3;
    if (m_ptr)
    {
    }

    if (a4)
    {
      v11 = a4;
    }

    v12 = v8->_text.m_ptr;
    v8->_text.m_ptr = a4;
    if (v12)
    {
    }

    if (a5)
    {
      v13 = a5;
    }

    v14 = v8->_image.m_ptr;
    v8->_image.m_ptr = a5;
    if (v14)
    {
    }
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end