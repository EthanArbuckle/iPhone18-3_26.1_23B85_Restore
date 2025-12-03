@interface LookAroundPuckGlyphView
- (CGSize)intrinsicContentSize;
- (LookAroundPuckGlyphView)initWithFrame:(CGRect)frame;
- (void)setTilted:(BOOL)tilted;
- (void)setTilted:(BOOL)tilted animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation LookAroundPuckGlyphView

- (void)setTilted:(BOOL)tilted animated:(BOOL)animated
{
  if (self->_tilted != tilted)
  {
    animatedCopy = animated;
    tiltedCopy = tilted;
    layer = [(LookAroundPuckGlyphView *)self layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer contentsRect];
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

    [(LookAroundPuckGlyphView *)self setTilted:tiltedCopy];
    if (animatedCopy)
    {
      v15 = 5 * MinX + 25 * MinY;
      if (tiltedCopy)
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
      layer2 = [(LookAroundPuckGlyphView *)self layer];
      [layer2 addAnimation:v22 forKey:@"tilt"];
    }
  }
}

- (void)setTilted:(BOOL)tilted
{
  if (self->_tilted != tilted)
  {
    tiltedCopy = tilted;
    self->_tilted = tilted;
    layer = [(LookAroundPuckGlyphView *)self layer];
    [layer removeAnimationForKey:@"tilt"];

    if (tiltedCopy)
    {
      v7 = 24;
    }

    else
    {
      v7 = 0;
    }

    if (tiltedCopy)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v9 = ((v7 - (v8 & 0xEF | (16 * ((v8 & 4) != 0)))) & 0xFC) * 0.2;
    v10 = v8 * 0.2;
    layer2 = [(LookAroundPuckGlyphView *)self layer];
    [layer2 setContentsRect:{v9, v10, 0.2, 0.2}];
  }
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = LookAroundPuckGlyphView;
  [(LookAroundPuckGlyphView *)&v6 tintColorDidChange];
  tintColor = [(LookAroundPuckGlyphView *)self tintColor];
  cGColor = [tintColor CGColor];
  layer = [(LookAroundPuckGlyphView *)self layer];
  [layer setContentsMultiplyColor:cGColor];
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

- (LookAroundPuckGlyphView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = LookAroundPuckGlyphView;
  v3 = [(LookAroundPuckGlyphView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImage imageNamed:@"LookAroundPuckAnimation"];
    v5 = +[UIColor whiteColor];
    v6 = [v4 _flatImageWithColor:v5];
    image = v3->_image;
    v3->_image = v6;

    layer = [(LookAroundPuckGlyphView *)v3 layer];
    [layer setContents:{-[UIImage CGImage](v3->_image, "CGImage")}];
    [(LookAroundPuckGlyphView *)v3 tintColorDidChange];
    [layer setContentsRect:{0.0, 0.0, 0.2, 0.2}];
    v9 = v3;
  }

  return v3;
}

@end