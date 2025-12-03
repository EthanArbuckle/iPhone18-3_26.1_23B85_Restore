@interface beam_bridge_2022_v2_1Input
- (BOOL)setImage_PlaceholderWithCGImage:(CGImage *)image error:(id *)error;
- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error;
- (beam_bridge_2022_v2_1Input)initWithImage_Placeholder:(__CVBuffer *)placeholder;
- (beam_bridge_2022_v2_1Input)initWithImage_PlaceholderAtURL:(id)l error:(id *)error;
- (beam_bridge_2022_v2_1Input)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation beam_bridge_2022_v2_1Input

- (beam_bridge_2022_v2_1Input)initWithImage_Placeholder:(__CVBuffer *)placeholder
{
  v7.receiver = self;
  v7.super_class = beam_bridge_2022_v2_1Input;
  v4 = [(beam_bridge_2022_v2_1Input *)&v7 init];
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
  v3.super_class = beam_bridge_2022_v2_1Input;
  [(beam_bridge_2022_v2_1Input *)&v3 dealloc];
}

- (beam_bridge_2022_v2_1Input)initWithImage_PlaceholderFromCGImage:(CGImage *)image error:(id *)error
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MLFeatureValue featureValueWithCGImage:image pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
  v9 = v13;
  if (v8)
  {
    selfCopy = -[beam_bridge_2022_v2_1Input initWithImage_Placeholder:](selfCopy, "initWithImage_Placeholder:", [v8 imageBufferValue]);
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

- (beam_bridge_2022_v2_1Input)initWithImage_PlaceholderAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self)
  {
    v7 = objc_autoreleasePoolPush();
    v13 = 0;
    v8 = [MLFeatureValue featureValueWithImageAtURL:lCopy pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      self = -[beam_bridge_2022_v2_1Input initWithImage_Placeholder:](self, "initWithImage_Placeholder:", [v8 imageBufferValue]);
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
  v12 = 0;
  v8 = [MLFeatureValue featureValueWithCGImage:image pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(beam_bridge_2022_v2_1Input *)self image_Placeholder]);
    -[beam_bridge_2022_v2_1Input setImage_Placeholder:](self, "setImage_Placeholder:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(beam_bridge_2022_v2_1Input *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (BOOL)setImage_PlaceholderWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [MLFeatureValue featureValueWithImageAtURL:lCopy pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&v12];
  v9 = v12;
  if (v8)
  {
    CVPixelBufferRelease([(beam_bridge_2022_v2_1Input *)self image_Placeholder]);
    -[beam_bridge_2022_v2_1Input setImage_Placeholder:](self, "setImage_Placeholder:", [v8 imageBufferValue]);
    CVPixelBufferRetain([(beam_bridge_2022_v2_1Input *)self image_Placeholder]);
  }

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"image_Placeholder"])
  {
    v4 = [MLFeatureValue featureValueWithPixelBuffer:[(beam_bridge_2022_v2_1Input *)self image_Placeholder]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end