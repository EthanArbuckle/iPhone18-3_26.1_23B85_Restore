@interface NTKImageSource
+ (id)imageSourceWithData:(id)a3;
- (CGImage)CreateCGImageWithSubsampleFactor:(int64_t)a3;
- (id)initImageSourceWithData:(id)a3;
- (void)dealloc;
@end

@implementation NTKImageSource

+ (id)imageSourceWithData:(id)a3
{
  v3 = a3;
  v4 = [NTKImageSource alloc];
  inited = objc_msgSend_initImageSourceWithData_(v4, v5, v3, v6);

  if (objc_msgSend_CGImageSource(inited, v8, v9, v10))
  {
    v11 = inited;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  imageSourceRef = self->_imageSourceRef;
  if (imageSourceRef)
  {
    CFRelease(imageSourceRef);
  }

  v4.receiver = self;
  v4.super_class = NTKImageSource;
  [(NTKImageSource *)&v4 dealloc];
}

- (id)initImageSourceWithData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKImageSource;
  v5 = [(NTKImageSource *)&v9 init];
  if (v5)
  {
    v6 = CGImageSourceCreateWithData(v4, 0);
    v5->_imageSourceRef = v6;
    if (!v6)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[NTKImageSource initImageSourceWithData:]";
        _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, "%s: Cannot create image source", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (CGImage)CreateCGImageWithSubsampleFactor:(int64_t)a3
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (!self->_imageSourceRef)
  {
    return 0;
  }

  v10[0] = *MEMORY[0x277CD3650];
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3, v3);
  v10[1] = *MEMORY[0x277CD3618];
  v11[0] = v5;
  v11[1] = MEMORY[0x277CBEC28];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v11, v10, 2);

  ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_imageSourceRef, 0, v7);
  return ImageAtIndex;
}

@end