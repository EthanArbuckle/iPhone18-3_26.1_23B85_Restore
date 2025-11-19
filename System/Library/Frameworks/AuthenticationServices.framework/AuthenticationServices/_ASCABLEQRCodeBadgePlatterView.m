@interface _ASCABLEQRCodeBadgePlatterView
- (_ASCABLEQRCodeBadgePlatterView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation _ASCABLEQRCodeBadgePlatterView

- (_ASCABLEQRCodeBadgePlatterView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _ASCABLEQRCodeBadgePlatterView;
  v3 = [(_ASCABLEQRCodeBadgePlatterView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_ASCABLEQRCodeBadgePlatterView *)v3 setOpaque:0];
    v5 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  [(_ASCABLEQRCodeBadgePlatterView *)self bounds:a3.origin.x];
  v16 = CGRectInset(v15, 1.0, 1.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [(_ASCABLEQRCodeBadgePlatterView *)self bounds];
  v8 = round(CGRectGetWidth(v17) * 0.24);
  v9 = MEMORY[0x1E69DC728];
  [(_ASCABLEQRCodeBadgePlatterView *)self bounds];
  v13 = [v9 bezierPathWithRoundedRect:? cornerRadius:?];
  v10 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v8}];
  [(_ASCABLEQRCodeBadgePlatterView *)self bounds];
  [v13 setLineWidth:round(CGRectGetWidth(v18) * 0.085)];
  [v13 addClip];
  v11 = qrCodeContentsColor();
  [v11 setFill];

  [v10 fill];
  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [v12 setStroke];

  [v13 stroke];
}

@end