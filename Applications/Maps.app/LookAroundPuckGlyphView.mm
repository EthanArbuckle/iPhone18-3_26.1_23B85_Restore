@interface LookAroundPuckGlyphView
- (CGSize)intrinsicContentSize;
- (LookAroundPuckGlyphView)initWithFrame:(CGRect)a3;
- (void)setTilted:(BOOL)a3;
- (void)setTilted:(BOOL)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation LookAroundPuckGlyphView

- (void)setTilted:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_tilted != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = [(LookAroundPuckGlyphView *)self layer];
    v8 = [v7 presentationLayer];
    [v8 contentsRect];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    MinX = CGRectGetMinX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinY = CGRectGetMinY(v27);

    [(LookAroundPuckGlyphView *)self setTilted:v5];
    if (v4)
    {
      v15 = 5 * MinX + 25 * MinY;
      if (v5)
      {
        v16 = 24;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 - v15 + 1;
      v24 = [NSMutableArray arrayWithCapacity:v17];
      if (v16 - v15 != -1)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          if (v16 <= v15)
          {
            v20 = v18;
          }

          else
          {
            v20 = v19;
          }

          v21 = [NSValue valueWithCGRect:((v20 + v15) % 5) * 0.2, ((v20 + v15) / 5) * 0.2, 0.2, 0.2];
          [v24 addObject:v21];

          ++v19;
          --v18;
        }

        while (v17 != v19);
      }

      v22 = [CAKeyframeAnimation animationWithKeyPath:@"contentsRect"];
      [v22 setDuration:v17 * 0.0166666667];
      [v22 setValues:v24];
      [v22 setCalculationMode:kCAAnimationDiscrete];
      v23 = [(LookAroundPuckGlyphView *)self layer];
      [v23 addAnimation:v22 forKey:@"tilt"];
    }
  }
}

- (void)setTilted:(BOOL)a3
{
  if (self->_tilted != a3)
  {
    v4 = a3;
    self->_tilted = a3;
    v6 = [(LookAroundPuckGlyphView *)self layer];
    [v6 removeAnimationForKey:@"tilt"];

    if (v4)
    {
      v7 = 24;
    }

    else
    {
      v7 = 0;
    }

    if (v4)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v9 = ((v7 - (v8 & 0xEF | (16 * ((v8 & 4) != 0)))) & 0xFC) * 0.2;
    v10 = v8 * 0.2;
    v11 = [(LookAroundPuckGlyphView *)self layer];
    [v11 setContentsRect:{v9, v10, 0.2, 0.2}];
  }
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = LookAroundPuckGlyphView;
  [(LookAroundPuckGlyphView *)&v6 tintColorDidChange];
  v3 = [(LookAroundPuckGlyphView *)self tintColor];
  v4 = [v3 CGColor];
  v5 = [(LookAroundPuckGlyphView *)self layer];
  [v5 setContentsMultiplyColor:v4];
}

- (CGSize)intrinsicContentSize
{
  [(UIImage *)self->_image size];
  v3 = v2 * 0.2;
  v5 = v4 * 0.2;
  result.height = v5;
  result.width = v3;
  return result;
}

- (LookAroundPuckGlyphView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = LookAroundPuckGlyphView;
  v3 = [(LookAroundPuckGlyphView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIImage imageNamed:@"LookAroundPuckAnimation"];
    v5 = +[UIColor whiteColor];
    v6 = [v4 _flatImageWithColor:v5];
    image = v3->_image;
    v3->_image = v6;

    v8 = [(LookAroundPuckGlyphView *)v3 layer];
    [v8 setContents:{-[UIImage CGImage](v3->_image, "CGImage")}];
    [(LookAroundPuckGlyphView *)v3 tintColorDidChange];
    [v8 setContentsRect:{0.0, 0.0, 0.2, 0.2}];
    v9 = v3;
  }

  return v3;
}

@end