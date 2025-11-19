@interface _ASCABLEQRCodeImageView
- (_ASCABLEQRCodeImageView)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation _ASCABLEQRCodeImageView

- (_ASCABLEQRCodeImageView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _ASCABLEQRCodeImageView;
  v3 = [(_ASCABLEQRCodeImageView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E6979DE0];
    v6 = [(_ASCABLEQRCodeImageView *)v3 layer];
    [v6 setContentsGravity:v5];

    v7 = *MEMORY[0x1E6979CB8];
    v8 = [(_ASCABLEQRCodeImageView *)v4 layer];
    [v8 setMagnificationFilter:v7];

    v9 = v4;
  }

  return v4;
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [v5 CGImage];

  v7 = [(_ASCABLEQRCodeImageView *)self layer];
  [v7 setContents:v6];
}

@end