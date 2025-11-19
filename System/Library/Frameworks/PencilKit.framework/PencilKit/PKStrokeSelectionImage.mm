@interface PKStrokeSelectionImage
- (PKStrokeSelectionImage)initWithImage:(id)a3 config:(id)a4 fullSizeConfig:(id)a5;
- (UIImage)combinedImage;
@end

@implementation PKStrokeSelectionImage

- (PKStrokeSelectionImage)initWithImage:(id)a3 config:(id)a4 fullSizeConfig:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PKStrokeSelectionImage *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    objc_storeStrong(&v13->_config, a4);
    objc_storeStrong(&v13->_fullSizeConfig, a5);
  }

  return v13;
}

- (UIImage)combinedImage
{
  addImage = self->_addImage;
  if (addImage && self->_mulImage)
  {
    v4 = [(UIImage *)addImage CGImage];
    v5 = CGBitmapContextCreateForFlatteningImage();
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = v5;
    Width = CGImageGetWidth(v4);
    Height = CGImageGetHeight(v4);
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    CGContextSetFillColorWithColor(v6, [v9 CGColor]);

    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    v21.size.height = Height;
    CGContextFillRect(v6, v21);
    image = self->_image;
    if (image)
    {
      v11 = [(UIImage *)image CGImage];
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = Width;
      v22.size.height = Height;
      CGContextDrawImage(v6, v22, v11);
    }

    if (self->_mulImage)
    {
      CGContextSetBlendMode(v6, kCGBlendModeMultiply);
      v12 = [(UIImage *)self->_mulImage CGImage];
      v23.origin.x = 0.0;
      v23.origin.y = 0.0;
      v23.size.width = Width;
      v23.size.height = Height;
      CGContextDrawImage(v6, v23, v12);
    }

    if (self->_addImage)
    {
      CGContextSetBlendMode(v6, kCGBlendModePlusLighter);
      v13 = [(UIImage *)self->_addImage CGImage];
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = Width;
      v24.size.height = Height;
      CGContextDrawImage(v6, v24, v13);
    }

    v14 = CGBitmapContextCreateImage(v6);
    CGContextRelease(v6);
    if (v14)
    {
      v15 = MEMORY[0x1E69DCAB8];
      v16 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v16 scale];
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