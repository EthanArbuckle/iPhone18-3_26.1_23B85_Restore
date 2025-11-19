@interface QLThumbnailView
- (CGRect)unselectedFrame;
- (QLThumbnailView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation QLThumbnailView

- (QLThumbnailView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = QLThumbnailView;
  v3 = [(QLThumbnailView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(QLThumbnailView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGContextClipToRect(CurrentContext, v26);
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationNone);
  [(QLThumbnailView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(QLThumbnailView *)self image];
  v24 = v17;
  if (v17)
  {
    [v17 size];
    v20 = v14 * (v19 / v18);
    if (v20 <= v16)
    {
      v21 = v14;
    }

    else
    {
      v21 = v14 * (v16 / v20);
      v20 = v16;
    }

    v10 = floor((v14 - v21) * 0.5);
    v12 = floor((v16 - v20) * 0.5);
    v14 = floor(v21);
    v16 = floor(v20);
  }

  v22 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [v22 CGColor]);

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  CGContextFillRect(CurrentContext, v27);
  [v24 drawInRect:{v10, v12, v14, v16}];
  CGContextSetLineWidth(CurrentContext, 1.0);
  v23 = [MEMORY[0x277D75348] lightGrayColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v23 CGColor]);

  v28.origin.x = v10 + 0.5;
  v28.origin.y = v12 + 0.5;
  v28.size.width = v14 + -1.0;
  v28.size.height = v16 + -1.0;
  CGContextStrokeRect(CurrentContext, v28);
  CGContextRestoreGState(CurrentContext);
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = QLThumbnailView;
  [(QLThumbnailView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(QLThumbnailView *)self setNeedsDisplay];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);

  [(QLThumbnailView *)self setNeedsDisplay];
}

- (CGRect)unselectedFrame
{
  objc_copyStruct(v6, &self->_unselectedFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end