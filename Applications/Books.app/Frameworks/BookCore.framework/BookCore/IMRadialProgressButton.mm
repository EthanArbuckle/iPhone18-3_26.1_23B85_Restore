@interface IMRadialProgressButton
+ (CGSize)minimumBoundingBox;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)innerRectSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (IMRadialProgressButton)initWithFrame:(CGRect)frame;
- (UIColor)progressColor;
- (UIEdgeInsets)touchInsets;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateCenterImage;
- (void)dealloc;
- (void)drawCenteredImaged:(id)imaged screenScale:(double)scale;
- (void)drawRect:(CGRect)rect;
- (void)setCenterImageNormal:(id)normal;
- (void)setCenterImageSelected:(id)selected;
- (void)setProgress:(float)progress;
- (void)setProgressColor:(id)color;
- (void)setShowImages:(BOOL)images;
- (void)setTintColor:(id)color;
- (void)useInnerRect:(CGSize)rect;
@end

@implementation IMRadialProgressButton

- (IMRadialProgressButton)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = IMRadialProgressButton;
  v3 = [(IMRadialProgressButton *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(IMRadialProgressButton *)v3 traitCollection];
    v6 = [UIImage systemImageNamed:@"square.fill" compatibleWithTraitCollection:traitCollection];
    v7 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    v8 = [v6 imageWithConfiguration:v7];
    centerImageNormal = v4->_centerImageNormal;
    v4->_centerImageNormal = v8;

    traitCollection2 = [(IMRadialProgressButton *)v4 traitCollection];
    v11 = [UIImage systemImageNamed:@"pause.fill" compatibleWithTraitCollection:traitCollection2];
    v12 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCaption1 scale:1];
    v13 = [v11 imageWithConfiguration:v12];
    centerImageSelected = v4->_centerImageSelected;
    v4->_centerImageSelected = v13;

    [(IMRadialProgressButton *)v4 _updateCenterImage];
    v15 = +[UIColor bc_booksLabelColor];
    [(IMRadialProgressButton *)v4 setTintColor:v15];

    [(IMRadialProgressButton *)v4 setShowsTouchWhenHighlighted:1];
    v4->_showImages = 1;
    v4->_inscribeProgress = 1;
    v4->_progressLineCap = 0;
    v4->_progressThickness = 3.0;
    v4->_trackDiameter = 26.0;
    v4->_trackThickness = 1.0;
    v16 = +[UITraitCollection bc_allAPITraits];
    v17 = [(IMRadialProgressButton *)v4 registerForTraitChanges:v16 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  progressColor = self->_progressColor;
  self->_progressColor = 0;

  v4.receiver = self;
  v4.super_class = IMRadialProgressButton;
  [(IMRadialProgressButton *)&v4 dealloc];
}

- (void)useInnerRect:(CGSize)rect
{
  height = rect.height;
  width = rect.width;
  [(IMRadialProgressButton *)self setUseInnerRect:1];

  [(IMRadialProgressButton *)self setInnerRectSize:width, height];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  userInterfaceStyle = [collection userInterfaceStyle];
  traitCollection = [(IMRadialProgressButton *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(IMRadialProgressButton *)self _updateCenterImage];
  }
}

+ (CGSize)minimumBoundingBox
{
  v2 = 28.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setShowImages:(BOOL)images
{
  if (self->_showImages != images)
  {
    self->_showImages = images;
    [(IMRadialProgressButton *)self setShowsTouchWhenHighlighted:?];

    [(IMRadialProgressButton *)self setNeedsDisplay];
  }
}

- (void)drawCenteredImaged:(id)imaged screenScale:(double)scale
{
  imagedCopy = imaged;
  if ([(IMRadialProgressButton *)self showImages])
  {
    [imagedCopy size];
    [(IMRadialProgressButton *)self bounds];
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    [imagedCopy drawInRect:?];
  }
}

- (void)drawRect:(CGRect)rect
{
  *&recta.size.width = self;
  *&recta.size.height = IMRadialProgressButton;
  [(CGSize *)&recta.size drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v4 = +[UIScreen mainScreen];
  [v4 scale];
  v6 = v5;

  [(IMRadialProgressButton *)self bounds];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  MidX = CGRectGetMidX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MidY = CGRectGetMidY(v46);
  [(IMRadialProgressButton *)self trackDiameter];
  v14 = v13;
  [(IMRadialProgressButton *)self trackThickness];
  v16 = v14 - v15;
  recta.origin.y = v6;
  CGSizeRoundForScale();
  CGRectMakeWithCenterAndSize();
  recta.origin.x = v17;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v16 * 0.5;
  if ([(IMRadialProgressButton *)self inscribeProgress])
  {
    [(IMRadialProgressButton *)self progressThickness];
    v26 = v25 * 0.5;
    [(IMRadialProgressButton *)self trackThickness];
    v24 = v24 - (v26 + v27 * 0.25);
  }

  [(IMRadialProgressButton *)self progress];
  v29 = v28 * 6.28318531 + -1.57079633;
  [(IMRadialProgressButton *)self progress];
  if (v30 >= 1.0)
  {
    v29 = 4.70767659;
  }

  trackColor = [(IMRadialProgressButton *)self trackColor];
  v32 = trackColor;
  if (trackColor)
  {
    progressColor = trackColor;
  }

  else
  {
    progressColor = [(IMRadialProgressButton *)self progressColor];
  }

  v34 = progressColor;

  [v34 setStroke];
  CurrentContext = UIGraphicsGetCurrentContext();
  [(IMRadialProgressButton *)self trackThickness];
  CGContextSetLineWidth(CurrentContext, v36);
  v47.origin.x = recta.origin.x;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  CGContextStrokeEllipseInRect(CurrentContext, v47);
  progressColor2 = [(IMRadialProgressButton *)self progressColor];
  [progressColor2 setStroke];

  v38 = +[UIBezierPath bezierPath];
  [v38 moveToPoint:{MidX, MidY - v24}];
  [v38 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v24 clockwise:{-1.57079633, v29}];
  [v38 setLineCapStyle:{-[IMRadialProgressButton progressLineCap](self, "progressLineCap")}];
  inscribeProgress = [(IMRadialProgressButton *)self inscribeProgress];
  v40 = 2.5;
  if ((inscribeProgress & 1) == 0)
  {
    [(IMRadialProgressButton *)self progressThickness];
  }

  [v38 setLineWidth:v40];
  [v38 stroke];
  if ([(IMRadialProgressButton *)self useInnerRect])
  {
    [v34 setFill];
    [(IMRadialProgressButton *)self innerRectSize];
    CGSizeRoundForScale();
    CGRectMakeWithCenterAndSize();
    v41 = CGPathCreateWithRoundedRect(v48, 1.0, 1.0, 0);
    CGContextAddPath(CurrentContext, v41);
    CGContextFillPath(CurrentContext);
    CGPathRelease(v41);
  }

  else
  {
    isSelected = [(IMRadialProgressButton *)self isSelected];
    v43 = &OBJC_IVAR___IMRadialProgressButton__centerImageNormalTinted;
    if (isSelected)
    {
      v43 = &OBJC_IVAR___IMRadialProgressButton__centerImageSelectedTinted;
    }

    [(IMRadialProgressButton *)self drawCenteredImaged:*(&self->super.super.super.super.super.super.isa + *v43) screenScale:recta.origin.y];
  }
}

- (void)setProgressColor:(id)color
{
  colorCopy = color;
  _updateCenterImage = [(UIColor *)colorCopy isEqual:self->_progressColor];
  if ((_updateCenterImage & 1) == 0 && self->_progressColor != colorCopy)
  {
    objc_storeStrong(&self->_progressColor, color);
    _updateCenterImage = [(IMRadialProgressButton *)self _updateCenterImage];
  }

  _objc_release_x1(_updateCenterImage);
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  tintColor = [(IMRadialProgressButton *)self tintColor];
  v6 = tintColor;
  if (tintColor == colorCopy)
  {
  }

  else
  {
    tintColor2 = [(IMRadialProgressButton *)self tintColor];
    v8 = [colorCopy isEqual:tintColor2];

    if ((v8 & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = IMRadialProgressButton;
      [(IMRadialProgressButton *)&v9 setTintColor:colorCopy];
      [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }
}

- (void)setCenterImageNormal:(id)normal
{
  normalCopy = normal;
  centerImageNormal = self->_centerImageNormal;
  if (centerImageNormal != normalCopy)
  {
    centerImageNormal = [(UIImage *)centerImageNormal isEqual:normalCopy];
    if ((centerImageNormal & 1) == 0)
    {
      objc_storeStrong(&self->_centerImageNormal, normal);
      centerImageNormal = [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }

  _objc_release_x1(centerImageNormal);
}

- (void)setCenterImageSelected:(id)selected
{
  selectedCopy = selected;
  centerImageSelected = self->_centerImageSelected;
  if (centerImageSelected != selectedCopy)
  {
    centerImageSelected = [(UIImage *)centerImageSelected isEqual:selectedCopy];
    if ((centerImageSelected & 1) == 0)
    {
      objc_storeStrong(&self->_centerImageSelected, selected);
      centerImageSelected = [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }

  _objc_release_x1(centerImageSelected);
}

- (void)_updateCenterImage
{
  progressColor = [(IMRadialProgressButton *)self progressColor];
  centerImageSelected = [(IMRadialProgressButton *)self centerImageSelected];
  v4 = [centerImageSelected imageWithTintColor:progressColor];
  centerImageSelectedTinted = self->_centerImageSelectedTinted;
  self->_centerImageSelectedTinted = v4;

  v6 = [(UIImage *)self->_centerImageNormal imageWithTintColor:progressColor];
  centerImageNormalTinted = self->_centerImageNormalTinted;
  self->_centerImageNormalTinted = v6;

  [(IMRadialProgressButton *)self setNeedsDisplay];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(IMRadialProgressButton *)self backgroundImageForState:0, fits.width, fits.height];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(IMRadialProgressButton *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)setProgress:(float)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    [(IMRadialProgressButton *)self setNeedsDisplay];
  }
}

- (UIColor)progressColor
{
  v3 = self->_progressColor;
  if (!self->_progressColor)
  {
    tintColor = [(IMRadialProgressButton *)self tintColor];

    v3 = tintColor;
  }

  return v3;
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)innerRectSize
{
  width = self->_innerRectSize.width;
  height = self->_innerRectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end