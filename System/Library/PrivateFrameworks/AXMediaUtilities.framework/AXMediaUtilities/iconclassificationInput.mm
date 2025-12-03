@interface iconclassificationInput
- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)image error:(id *)error;
- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error;
- (iconclassificationInput)initWithImage_Placeholder:(__CVBuffer *)placeholder;
- (iconclassificationInput)initWithImage_PlaceholderAtURL:(id)l error:(id *)error;
- (iconclassificationInput)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation iconclassificationInput

- (iconclassificationInput)initWithImage_Placeholder:(__CVBuffer *)placeholder
{
  v7.receiver = self;
  v7.super_class = iconclassificationInput;
  v4 = [(iconclassificationInput *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_image_Placeholder = placeholder;
    CVPixelBufferRetain(placeholder);
  }

  return v5;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_image_Placeholder);
  v3.receiver = self;
  v3.super_class = iconclassificationInput;
  [(iconclassificationInput *)&v3 dealloc];
}

- (iconclassificationInput)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:image pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    selfCopy = -[iconclassificationInput initWithImage_Placeholder:](selfCopy, "initWithImage_Placeholder:", [v8 imageBufferValue]);
    v10 = selfCopy;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v10;
}

- (iconclassificationInput)initWithImage_PlaceholderAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:lCopy pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      self = -[iconclassificationInput initWithImage_Placeholder:](self, "initWithImage_Placeholder:", [v8 imageBufferValue]);
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)image error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithCGImage:image pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    CVPixelBufferRelease(self->_image_Placeholder);
    imageBufferValue = [v8 imageBufferValue];
    self->_image_Placeholder = imageBufferValue;
    CVPixelBufferRetain(imageBufferValue);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x1E695FE60] featureValueWithImageAtURL:lCopy pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    CVPixelBufferRelease(self->_image_Placeholder);
    imageBufferValue = [v8 imageBufferValue];
    self->_image_Placeholder = imageBufferValue;
    CVPixelBufferRetain(imageBufferValue);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"image/Placeholder"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:self->_image_Placeholder];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end