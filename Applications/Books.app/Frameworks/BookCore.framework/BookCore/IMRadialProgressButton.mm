@interface IMRadialProgressButton
+ (CGSize)minimumBoundingBox;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)innerRectSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (IMRadialProgressButton)initWithFrame:(CGRect)a3;
- (UIColor)progressColor;
- (UIEdgeInsets)touchInsets;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateCenterImage;
- (void)dealloc;
- (void)drawCenteredImaged:(id)a3 screenScale:(double)a4;
- (void)drawRect:(CGRect)a3;
- (void)setCenterImageNormal:(id)a3;
- (void)setCenterImageSelected:(id)a3;
- (void)setProgress:(float)a3;
- (void)setProgressColor:(id)a3;
- (void)setShowImages:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)useInnerRect:(CGSize)a3;
@end

@implementation IMRadialProgressButton

- (IMRadialProgressButton)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = IMRadialProgressButton;
  v3 = [(IMRadialProgressButton *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(IMRadialProgressButton *)v3 traitCollection];
    v6 = [UIImage systemImageNamed:@"square.fill" compatibleWithTraitCollection:v5];
    v7 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
    v8 = [v6 imageWithConfiguration:v7];
    centerImageNormal = v4->_centerImageNormal;
    v4->_centerImageNormal = v8;

    v10 = [(IMRadialProgressButton *)v4 traitCollection];
    v11 = [UIImage systemImageNamed:@"pause.fill" compatibleWithTraitCollection:v10];
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

- (void)useInnerRect:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(IMRadialProgressButton *)self setUseInnerRect:1];

  [(IMRadialProgressButton *)self setInnerRectSize:width, height];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(IMRadialProgressButton *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
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

- (void)setShowImages:(BOOL)a3
{
  if (self->_showImages != a3)
  {
    self->_showImages = a3;
    [(IMRadialProgressButton *)self setShowsTouchWhenHighlighted:?];

    [(IMRadialProgressButton *)self setNeedsDisplay];
  }
}

- (void)drawCenteredImaged:(id)a3 screenScale:(double)a4
{
  v5 = a3;
  if ([(IMRadialProgressButton *)self showImages])
  {
    [v5 size];
    [(IMRadialProgressButton *)self bounds];
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    [v5 drawInRect:?];
  }
}

- (void)drawRect:(CGRect)a3
{
  *&recta.size.width = self;
  *&recta.size.height = IMRadialProgressButton;
  [(CGSize *)&recta.size drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v31 = [(IMRadialProgressButton *)self trackColor];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [(IMRadialProgressButton *)self progressColor];
  }

  v34 = v33;

  [v34 setStroke];
  CurrentContext = UIGraphicsGetCurrentContext();
  [(IMRadialProgressButton *)self trackThickness];
  CGContextSetLineWidth(CurrentContext, v36);
  v47.origin.x = recta.origin.x;
  v47.origin.y = v19;
  v47.size.width = v21;
  v47.size.height = v23;
  CGContextStrokeEllipseInRect(CurrentContext, v47);
  v37 = [(IMRadialProgressButton *)self progressColor];
  [v37 setStroke];

  v38 = +[UIBezierPath bezierPath];
  [v38 moveToPoint:{MidX, MidY - v24}];
  [v38 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v24 clockwise:{-1.57079633, v29}];
  [v38 setLineCapStyle:{-[IMRadialProgressButton progressLineCap](self, "progressLineCap")}];
  v39 = [(IMRadialProgressButton *)self inscribeProgress];
  v40 = 2.5;
  if ((v39 & 1) == 0)
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
    v42 = [(IMRadialProgressButton *)self isSelected];
    v43 = &OBJC_IVAR___IMRadialProgressButton__centerImageNormalTinted;
    if (v42)
    {
      v43 = &OBJC_IVAR___IMRadialProgressButton__centerImageSelectedTinted;
    }

    [(IMRadialProgressButton *)self drawCenteredImaged:*(&self->super.super.super.super.super.super.isa + *v43) screenScale:recta.origin.y];
  }
}

- (void)setProgressColor:(id)a3
{
  v6 = a3;
  v5 = [(UIColor *)v6 isEqual:self->_progressColor];
  if ((v5 & 1) == 0 && self->_progressColor != v6)
  {
    objc_storeStrong(&self->_progressColor, a3);
    v5 = [(IMRadialProgressButton *)self _updateCenterImage];
  }

  _objc_release_x1(v5);
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(IMRadialProgressButton *)self tintColor];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(IMRadialProgressButton *)self tintColor];
    v8 = [v4 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9.receiver = self;
      v9.super_class = IMRadialProgressButton;
      [(IMRadialProgressButton *)&v9 setTintColor:v4];
      [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }
}

- (void)setCenterImageNormal:(id)a3
{
  v5 = a3;
  centerImageNormal = self->_centerImageNormal;
  if (centerImageNormal != v5)
  {
    centerImageNormal = [(UIImage *)centerImageNormal isEqual:v5];
    if ((centerImageNormal & 1) == 0)
    {
      objc_storeStrong(&self->_centerImageNormal, a3);
      centerImageNormal = [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }

  _objc_release_x1(centerImageNormal);
}

- (void)setCenterImageSelected:(id)a3
{
  v5 = a3;
  centerImageSelected = self->_centerImageSelected;
  if (centerImageSelected != v5)
  {
    centerImageSelected = [(UIImage *)centerImageSelected isEqual:v5];
    if ((centerImageSelected & 1) == 0)
    {
      objc_storeStrong(&self->_centerImageSelected, a3);
      centerImageSelected = [(IMRadialProgressButton *)self _updateCenterImage];
    }
  }

  _objc_release_x1(centerImageSelected);
}

- (void)_updateCenterImage
{
  v8 = [(IMRadialProgressButton *)self progressColor];
  v3 = [(IMRadialProgressButton *)self centerImageSelected];
  v4 = [v3 imageWithTintColor:v8];
  centerImageSelectedTinted = self->_centerImageSelectedTinted;
  self->_centerImageSelectedTinted = v4;

  v6 = [(UIImage *)self->_centerImageNormal imageWithTintColor:v8];
  centerImageNormalTinted = self->_centerImageNormalTinted;
  self->_centerImageNormalTinted = v6;

  [(IMRadialProgressButton *)self setNeedsDisplay];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(IMRadialProgressButton *)self backgroundImageForState:0, a3.width, a3.height];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (void)setProgress:(float)a3
{
  if (self->_progress != a3)
  {
    self->_progress = a3;
    [(IMRadialProgressButton *)self setNeedsDisplay];
  }
}

- (UIColor)progressColor
{
  v3 = self->_progressColor;
  if (!self->_progressColor)
  {
    v4 = [(IMRadialProgressButton *)self tintColor];

    v3 = v4;
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