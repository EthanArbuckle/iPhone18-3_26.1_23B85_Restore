@interface _WKTextPreview
- (CGRect)presentationFrame;
- (_WKTextPreview)initWithSnapshotImage:(CGImage *)a3 presentationFrame:(CGRect)a4;
@end

@implementation _WKTextPreview

- (_WKTextPreview)initWithSnapshotImage:(CGImage *)a3 presentationFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(_WKTextPreview *)self init];
  if (v9)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    m_ptr = v9->_previewImage.m_ptr;
    v9->_previewImage.m_ptr = a3;
    if (m_ptr)
    {
      CFRelease(m_ptr);
    }

    v9->_presentationFrame.origin.x = x;
    v9->_presentationFrame.origin.y = y;
    v9->_presentationFrame.size.width = width;
    v9->_presentationFrame.size.height = height;
  }

  return v9;
}

- (CGRect)presentationFrame
{
  objc_copyStruct(v6, &self->_presentationFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end