@interface BKTextHighlightView
+ (int)bkTextHighlightTypeForIMTextHighlightType:(unint64_t)type;
- (BKTextHighlightView)initWithFrame:(CGRect)frame;
- (CGRect)_safeInsetRect:(CGRect)rect widthInset:(double)inset heightInset:(double)heightInset;
- (UIEdgeInsets)contentInsets;
- (id)_selectionImage;
- (id)copyWithZone:(_NSZone *)zone;
- (void)didMoveToSuperview;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightType:(int)type;
- (void)updateHighlightImage;
@end

@implementation BKTextHighlightView

- (BKTextHighlightView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BKTextHighlightView;
  v3 = [(BKTextHighlightView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(BKTextHighlightView *)v3 layer];
    [layer setMasksToBounds:1];

    [(BKTextHighlightView *)v4 setOpaque:0];
    [(BKTextHighlightView *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKTextHighlightView alloc];
  [(BKTextHighlightView *)self frame];
  v5 = [(BKTextHighlightView *)v4 initWithFrame:?];
  [(BKTextHighlightView *)v5 setHighlightType:[(BKTextHighlightView *)self highlightType]];
  owner = [(BKTextHighlightView *)self owner];
  [(BKTextHighlightView *)v5 setOwner:owner];

  image = [(BKTextHighlightView *)self image];
  [(BKTextHighlightView *)v5 setImage:image];

  [(BKTextHighlightView *)self currentScale];
  [(BKTextHighlightView *)v5 setCurrentScale:?];
  [(BKTextHighlightView *)v5 setLightenBlend:[(BKTextHighlightView *)self lightenBlend]];
  return v5;
}

+ (int)bkTextHighlightTypeForIMTextHighlightType:(unint64_t)type
{
  if (type - 1 < 3)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = BKTextHighlightView;
  [(BKTextHighlightView *)&v4 didMoveToSuperview];
  image = [(BKTextHighlightView *)self image];

  if (!image)
  {
    [(BKTextHighlightView *)self updateHighlightImage];
  }
}

- (CGRect)_safeInsetRect:(CGRect)rect widthInset:(double)inset heightInset:(double)heightInset
{
  if (rect.size.width <= inset + inset)
  {
    inset = 0.0;
  }

  if (rect.size.height <= heightInset + heightInset)
  {
    heightInset = 0.0;
  }

  return CGRectInset(rect, inset, heightInset);
}

- (id)_selectionImage
{
  type = self->_type;
  if (type == 3)
  {
    v6 = 0.9;
    v4 = 1.0;
    v5 = 1.0;
    goto LABEL_5;
  }

  if (!type)
  {
    v4 = 0.647058824;
    v5 = 0.780392157;
    v6 = 0.47;
LABEL_5:
    v7 = 1.0;
    goto LABEL_7;
  }

  v5 = 0.89;
  v7 = 0.22;
  v4 = 1.0;
  v6 = 1.0;
LABEL_7:
  v8 = [UIColor colorWithRed:v4 green:v5 blue:v7 alpha:v6];
  [(BKTextHighlightView *)self bounds];
  v24.width = v9;
  v24.height = v10;
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [(BKTextHighlightView *)self bounds];
  [BKTextHighlightView _safeInsetRect:"_safeInsetRect:widthInset:heightInset:" widthInset:? heightInset:?];
  v12 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
  CGContextSaveGState(CurrentContext);
  [v12 addClip];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *locations = xmmword_193670;
  v21[0] = [v8 CGColor];
  v21[1] = [v8 CGColor];
  v14 = CFArrayCreate(0, v21, 2, &kCFTypeArrayCallBacks);
  v15 = CGGradientCreateWithColors(DeviceRGB, v14, locations);
  [(BKTextHighlightView *)self bounds];
  MidX = CGRectGetMidX(v27);
  [(BKTextHighlightView *)self bounds];
  MinY = CGRectGetMinY(v28);
  [(BKTextHighlightView *)self bounds];
  v18 = CGRectGetMidX(v29);
  [(BKTextHighlightView *)self bounds];
  v26.y = CGRectGetMaxY(v30);
  v25.x = MidX;
  v25.y = MinY;
  v26.x = v18;
  CGContextDrawLinearGradient(CurrentContext, v15, v25, v26, 0);
  CGGradientRelease(v15);
  CFRelease(v14);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRestoreGState(CurrentContext);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (void)updateHighlightImage
{
  [(BKTextHighlightView *)self frame];
  if (CGRectGetWidth(v33) != 0.0)
  {
    superview = [(BKTextHighlightView *)self superview];

    if (superview)
    {
      [(BKTextHighlightView *)self setHidden:1];
      if (self->_type > 3u)
      {
        _selectionImage = 0;
      }

      else
      {
        _selectionImage = [(BKTextHighlightView *)self _selectionImage];
      }

      [(BKTextHighlightView *)self frame];
      v5 = v4;
      v7 = v6;
      top = self->_contentInsets.top;
      left = self->_contentInsets.left;
      v10 = left + 0.0;
      v11 = top + 0.0;
      v12 = v4 - (left + self->_contentInsets.right);
      v13 = v6 - (top + self->_contentInsets.bottom);
      v31.width = v12;
      v31.height = v13;
      UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      [(BKTextHighlightView *)self frame];
      v15 = -CGRectGetMinX(v34);
      v35.origin.x = v10;
      v35.origin.y = v11;
      v35.size.width = v12;
      v35.size.height = v13;
      v16 = v15 - CGRectGetMinX(v35);
      [(BKTextHighlightView *)self frame];
      v17 = -CGRectGetMinY(v36);
      v37.origin.x = v10;
      v37.origin.y = v11;
      v37.size.width = v12;
      v37.size.height = v13;
      MinY = CGRectGetMinY(v37);
      CGContextTranslateCTM(CurrentContext, v16, v17 - MinY);
      superview2 = [(BKTextHighlightView *)self superview];
      layer = [superview2 layer];
      [layer renderInContext:CurrentContext];

      v21 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (_selectionImage)
      {
        v32.width = v5;
        v32.height = v7;
        UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
        v22 = UIGraphicsGetCurrentContext();
        CGContextSaveGState(v22);
        [(BKTextHighlightView *)self lightenBlend];
        [(BKTextHighlightView *)self bounds];
        [_selectionImage drawInRect:0 blendMode:? alpha:?];
        if (!self->_type)
        {
          CGContextSetBlendMode(v22, kCGBlendModeSourceAtop);
          v23 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
          [v23 set];

          [(BKTextHighlightView *)self bounds];
          [BKTextHighlightView _safeInsetRect:"_safeInsetRect:widthInset:heightInset:" widthInset:? heightInset:?];
          v24 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
          [v24 stroke];
        }

        CGContextRestoreGState(v22);
        if ([(BKTextHighlightView *)self lightenBlend])
        {
          v25 = 2;
        }

        else
        {
          v25 = 1;
        }

        [v21 drawInRect:v25 blendMode:v10 alpha:{v11, v12, v13, 1.0}];
        if (self->_type == 3)
        {
          CGContextSetBlendMode(v22, kCGBlendModeNormal);
          v26 = [UIColor colorWithWhite:0.0 alpha:0.2];
          [v26 setStroke];

          [(BKTextHighlightView *)self bounds];
          [BKTextHighlightView _safeInsetRect:"_safeInsetRect:widthInset:heightInset:" widthInset:? heightInset:?];
          v27 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
          [v27 stroke];
        }

        v28 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [(BKTextHighlightView *)self setImage:v28];
      }

      [(BKTextHighlightView *)self setHidden:0];
    }
  }
}

- (void)setHighlightType:(int)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(BKTextHighlightView *)self updateHighlightImage];
  }
}

- (void)setFrame:(CGRect)frame
{
  v13 = CGRectIntegral(frame);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  [(BKTextHighlightView *)self frame];
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v14, v15))
  {
    v12.receiver = self;
    v12.super_class = BKTextHighlightView;
    [(BKTextHighlightView *)&v12 setFrame:x, y, width, height];
    [(BKTextHighlightView *)self updateHighlightImage];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end