@interface _WKAppHighlight
- (_WKAppHighlight)initWithHighlight:(id)highlight text:(id)text image:(id)image;
- (id).cxx_construct;
@end

@implementation _WKAppHighlight

- (_WKAppHighlight)initWithHighlight:(id)highlight text:(id)text image:(id)image
{
  v16.receiver = self;
  v16.super_class = _WKAppHighlight;
  v8 = [(_WKAppHighlight *)&v16 init];
  if (v8)
  {
    if (highlight)
    {
      highlightCopy = highlight;
    }

    m_ptr = v8->_highlight.m_ptr;
    v8->_highlight.m_ptr = highlight;
    if (m_ptr)
    {
    }

    if (text)
    {
      textCopy = text;
    }

    v12 = v8->_text.m_ptr;
    v8->_text.m_ptr = text;
    if (v12)
    {
    }

    if (image)
    {
      imageCopy = image;
    }

    v14 = v8->_image.m_ptr;
    v8->_image.m_ptr = image;
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