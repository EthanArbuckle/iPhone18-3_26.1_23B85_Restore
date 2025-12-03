@interface CPNowPlayingImageButton
- (CPNowPlayingImageButton)initWithCoder:(id)coder;
- (CPNowPlayingImageButton)initWithImage:(UIImage *)image handler:(void *)handler;
- (UIImage)image;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPNowPlayingImageButton

- (CPNowPlayingImageButton)initWithImage:(UIImage *)image handler:(void *)handler
{
  v6 = image;
  v16.receiver = self;
  v16.super_class = CPNowPlayingImageButton;
  v7 = [(CPNowPlayingButton *)&v16 initWithHandler:handler];
  if (v7)
  {
    v8 = [CPImageSet alloc];
    v9 = objc_opt_class();
    v10 = v6;
    images = [(UIImage *)v10 images];

    if (images)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        CPSanitizeImage_cold_1(v9);
      }

      images2 = [(UIImage *)v10 images];
      firstObject = [images2 firstObject];
    }

    else
    {
      firstObject = v10;
    }

    v14 = [(CPImageSet *)v8 initWithImage:firstObject treatmentBlock:&__block_literal_global_8];
    [(CPNowPlayingImageButton *)v7 setImageSet:v14];
  }

  return v7;
}

- (CPNowPlayingImageButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPNowPlayingImageButton;
  v5 = [(CPNowPlayingButton *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPNowPlayingButtonButtonImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CPNowPlayingImageButton;
  coderCopy = coder;
  [(CPNowPlayingButton *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CPNowPlayingImageButton *)self imageSet:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CPNowPlayingButtonButtonImageSet"];
}

- (UIImage)image
{
  imageSet = [(CPNowPlayingImageButton *)self imageSet];
  image = [imageSet image];

  return image;
}

@end