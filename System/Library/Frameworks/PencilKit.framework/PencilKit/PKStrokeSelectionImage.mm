@interface PKStrokeSelectionImage
- (PKStrokeSelectionImage)initWithImage:(id)image config:(id)config fullSizeConfig:(id)sizeConfig;
- (UIImage)combinedImage;
@end

@implementation PKStrokeSelectionImage

- (PKStrokeSelectionImage)initWithImage:(id)image config:(id)config fullSizeConfig:(id)sizeConfig
{
  imageCopy = image;
  configCopy = config;
  sizeConfigCopy = sizeConfig;
  v12 = [(PKStrokeSelectionImage *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    objc_storeStrong(&v13->_config, config);
    objc_storeStrong(&v13->_fullSizeConfig, sizeConfig);
  }

  return v13;
}

- (UIImage)combinedImage
{
  addImage = self->_addImage;
  if (addImage && self->_mulImage)
  {
    cGImage = [(UIImage *)addImage CGImage];
    v5 = CGBitmapContextCreateForFlatteningImage();
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    Width = CGImageGetWidth(cGImage);
    Height = CGImageGetHeight(cGImage);
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(v6, [whiteColor CGColor]);

    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    v21.size.height = Height;
    CGContextFillRect(v6, v21);
    image = self->_image;
    if (image)
    {
      cGImage2 = [(UIImage *)image CGImage];
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = Width;
      v22.size.height = Height;
      CGContextDrawImage(v6, v22, cGImage2);
    }

    if (self->_mulImage)
    {
      CGContextSetBlendMode(v6, kCGBlendModeMultiply);
      cGImage3 = [(UIImage *)self->_mulImage CGImage];
      v23.origin.x = 0.0;
      v23.origin.y = 0.0;
      v23.size.width = Width;
      v23.size.height = Height;
      CGContextDrawImage(v6, v23, cGImage3);
    }

    if (self->_addImage)
    {
      CGContextSetBlendMode(v6, kCGBlendModePlusLighter);
      cGImage4 = [(UIImage *)self->_addImage CGImage];
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = Width;
      v24.size.height = Height;
      CGContextDrawImage(v6, v24, cGImage4);
    }

    v14 = CGBitmapContextCreateImage(v6);
    CGContextRelease(v6);
    if (v14)
    {
      v15 = MEMORY[0x1E69DCAB8];
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v18 = [v15 imageWithCGImage:v14 scale:-[UIImage imageOrientation](self->_addImage orientation:{"imageOrientation"), v17}];

      CGImageRelease(v14);
    }

    else
    {
LABEL_13:
      v18 = 0;
    }
  }

  else
  {
    v18 = self->_image;
  }

  return v18;
}

@end