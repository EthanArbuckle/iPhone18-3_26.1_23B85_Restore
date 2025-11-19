@interface CPNowPlayingImageButton
- (CPNowPlayingImageButton)initWithCoder:(id)a3;
- (CPNowPlayingImageButton)initWithImage:(UIImage *)image handler:(void *)handler;
- (UIImage)image;
- (void)encodeWithCoder:(id)a3;
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
    v11 = [(UIImage *)v10 images];

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        CPSanitizeImage_cold_1(v9);
      }

      v12 = [(UIImage *)v10 images];
      v13 = [v12 firstObject];
    }

    else
    {
      v13 = v10;
    }

    v14 = [(CPImageSet *)v8 initWithImage:v13 treatmentBlock:&__block_literal_global_8];
    [(CPNowPlayingImageButton *)v7 setImageSet:v14];
  }

  return v7;
}

- (CPNowPlayingImageButton)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPNowPlayingImageButton;
  v5 = [(CPNowPlayingButton *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPNowPlayingButtonButtonImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPNowPlayingImageButton;
  v4 = a3;
  [(CPNowPlayingButton *)&v6 encodeWithCoder:v4];
  v5 = [(CPNowPlayingImageButton *)self imageSet:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CPNowPlayingButtonButtonImageSet"];
}

- (UIImage)image
{
  v2 = [(CPNowPlayingImageButton *)self imageSet];
  v3 = [v2 image];

  return v3;
}

@end