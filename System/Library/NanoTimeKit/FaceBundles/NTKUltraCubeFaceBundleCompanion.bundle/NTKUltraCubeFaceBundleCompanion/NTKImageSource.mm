@interface NTKImageSource
+ (NTKImageSource)imageSourceWithData:(id)data;
- (CGImage)CreateCGImageWithSubsampleFactor:(int64_t)factor;
- (id)initImageSourceWithData:(id)data;
- (void)dealloc;
@end

@implementation NTKImageSource

+ (NTKImageSource)imageSourceWithData:(id)data
{
  dataCopy = data;
  v4 = [[NTKImageSource alloc] initImageSourceWithData:dataCopy];

  if ([v4 CGImageSource])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

- (id)initImageSourceWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = NTKImageSource;
  v5 = [(NTKImageSource *)&v9 init];
  if (v5)
  {
    v6 = CGImageSourceCreateWithData(dataCopy, 0);
    v5->_imageSourceRef = v6;
    if (!v6)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[NTKImageSource initImageSourceWithData:]";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: Cannot create image source", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (CGImage)CreateCGImageWithSubsampleFactor:(int64_t)factor
{
  if (!self->_imageSourceRef)
  {
    return 0;
  }

  v8[0] = kCGImageSourceSubsampleFactor;
  v4 = [NSNumber numberWithInteger:factor];
  v8[1] = kCGImageSourceShouldCache;
  v9[0] = v4;
  v9[1] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  ImageAtIndex = CGImageSourceCreateImageAtIndex(self->_imageSourceRef, 0, v5);
  return ImageAtIndex;
}

@end