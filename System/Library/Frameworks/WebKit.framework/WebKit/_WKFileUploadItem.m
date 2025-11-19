@interface _WKFileUploadItem
- (_WKFileUploadItem)initWithFileURL:(id)a3;
- (void)setFileURL:(id)a3;
@end

@implementation _WKFileUploadItem

- (_WKFileUploadItem)initWithFileURL:(id)a3
{
  v8.receiver = self;
  v8.super_class = _WKFileUploadItem;
  v4 = [(_WKFileUploadItem *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    m_ptr = v4->_fileURL.m_ptr;
    v4->_fileURL.m_ptr = a3;
    if (m_ptr)
    {
    }
  }

  return v4;
}

- (void)setFileURL:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_fileURL.m_ptr;
  self->_fileURL.m_ptr = a3;
  if (m_ptr)
  {
  }
}

@end