@interface _ASCABLEQRCodeImageView
- (_ASCABLEQRCodeImageView)initWithFrame:(CGRect)frame;
- (void)setImage:(id)image;
@end

@implementation _ASCABLEQRCodeImageView

- (_ASCABLEQRCodeImageView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _ASCABLEQRCodeImageView;
  v3 = [(_ASCABLEQRCodeImageView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E6979DE0];
    layer = [(_ASCABLEQRCodeImageView *)v3 layer];
    [layer setContentsGravity:v5];

    v7 = *MEMORY[0x1E6979CB8];
    layer2 = [(_ASCABLEQRCodeImageView *)v4 layer];
    [layer2 setMagnificationFilter:v7];

    v9 = v4;
  }

  return v4;
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  cGImage = [imageCopy CGImage];

  layer = [(_ASCABLEQRCodeImageView *)self layer];
  [layer setContents:cGImage];
}

@end