@interface _WKFileUploadItem
- (_WKFileUploadItem)initWithFileURL:(id)l;
- (void)setFileURL:(id)l;
@end

@implementation _WKFileUploadItem

- (_WKFileUploadItem)initWithFileURL:(id)l
{
  v8.receiver = self;
  v8.super_class = _WKFileUploadItem;
  v4 = [(_WKFileUploadItem *)&v8 init];
  if (v4)
  {
    if (l)
    {
      lCopy = l;
    }

    m_ptr = v4->_fileURL.m_ptr;
    v4->_fileURL.m_ptr = l;
    if (m_ptr)
    {
    }
  }

  return v4;
}

- (void)setFileURL:(id)l
{
  if (l)
  {
    lCopy = l;
  }

  m_ptr = self->_fileURL.m_ptr;
  self->_fileURL.m_ptr = l;
  if (m_ptr)
  {
  }
}

@end