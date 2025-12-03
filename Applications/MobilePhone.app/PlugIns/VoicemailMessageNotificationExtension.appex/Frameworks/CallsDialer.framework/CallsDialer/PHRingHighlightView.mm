@interface PHRingHighlightView
+ (CGSize)ringSize;
+ (id)createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color;
+ (id)ringImageForDodge;
+ (id)ringImageForLuminance;
- (CGSize)intrinsicContentSize;
- (PHRingHighlightView)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PHRingHighlightView

+ (CGSize)ringSize
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  v7 = 480.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 1024.0;
  }

  *&v8 = 75.0;
  if (v4 <= v7)
  {
    v9 = +[UIDevice currentDevice];
    userInterfaceIdiom2 = [v9 userInterfaceIdiom];

    v8 = *(&unk_31280 + ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1));
  }

  v11 = *&v8;
  v12 = *&v8;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)ringImageForLuminance
{
  v3 = ringImageForLuminance;
  if (!ringImageForLuminance)
  {
    [self ringSize];
    v5 = v4;
    v7 = v6;
    [self ringStroke];
    v9 = v8;
    colorForLuminance = [self colorForLuminance];
    v11 = [self createRingImageWithSize:colorForLuminance strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForLuminance;
    ringImageForLuminance = v11;

    v3 = ringImageForLuminance;
  }

  return v3;
}

+ (id)ringImageForDodge
{
  v3 = ringImageForDodge;
  if (!ringImageForDodge)
  {
    [self ringSize];
    v5 = v4;
    v7 = v6;
    [self ringStroke];
    v9 = v8;
    colorForDodge = [self colorForDodge];
    v11 = [self createRingImageWithSize:colorForDodge strokeWidth:v5 color:{v7, v9}];
    v12 = ringImageForDodge;
    ringImageForDodge = v11;

    v3 = ringImageForDodge;
  }

  return v3;
}

+ (id)createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, width, width);
  x = v22.origin.x;
  y = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  v22.origin.x = width;
  v22.origin.y = height;
  UIGraphicsBeginImageContextWithOptions(v22.origin, 0, 0.0);
  [self ringCornerRadius];
  v15 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, width, height, v14];
  [self ringCornerRadius];
  width = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, v12, v13, v16 - width];
  [v15 appendPath:width];

  [v15 setUsesEvenOddFillRule:1];
  [colorCopy setFill];

  [v15 fill];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  +[CATransaction begin];
  LODWORD(v5) = 1043207291;
  v6 = [NSNumber numberWithFloat:v5];
  [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

  v7 = 0.0;
  if (selectedCopy)
  {
    [(CALayer *)self->_highlightDodgeLayer setOpacity:0.0];
    LODWORD(v7) = 1.0;
  }

  [(CALayer *)self->_selectionLayer setOpacity:v7];

  +[CATransaction commit];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  +[CATransaction begin];
  LODWORD(v5) = 1043207291;
  v6 = [NSNumber numberWithFloat:v5];
  [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

  if (highlightedCopy)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(CALayer *)self->_highlightDodgeLayer setOpacity:COERCE_DOUBLE(LODWORD(v7))];
  *&v8 = v7;
  [(CALayer *)self->_highlightLuminanceLayer setOpacity:v8];

  +[CATransaction commit];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v11.receiver = self;
  v11.super_class = PHRingHighlightView;
  [(PHRingHighlightView *)&v11 setUserInteractionEnabled:?];
  +[CATransaction begin];
  LODWORD(v5) = 1043207291;
  v6 = [NSNumber numberWithFloat:v5];
  [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

  v8 = 1.0;
  if (!enabled)
  {
    v9 = +[UIDevice currentDevice];
    v8 = flt_31270[[v9 _graphicsQuality] == &dword_8 + 2];
  }

  *&v7 = v8;
  [(CALayer *)self->_luminanceRingLayer setOpacity:v7];
  *&v10 = v8;
  [(CALayer *)self->_dodgeRingLayer setOpacity:v10];
  +[CATransaction commit];
}

- (PHRingHighlightView)initWithFrame:(CGRect)frame
{
  v60.receiver = self;
  v60.super_class = PHRingHighlightView;
  v3 = [(PHRingHighlightView *)&v60 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHRingHighlightView *)v3 setUserInteractionEnabled:0];
    [(PHRingHighlightView *)v4 setOpaque:0];
    v5 = +[UIColor clearColor];
    [(PHRingHighlightView *)v4 setBackgroundColor:v5];

    layer = [(PHRingHighlightView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PHRingHighlightView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];

    v8 = +[CALayer layer];
    luminanceRingLayer = v4->_luminanceRingLayer;
    v4->_luminanceRingLayer = v8;

    ringImageForLuminance = [objc_opt_class() ringImageForLuminance];
    -[CALayer setContents:](v4->_luminanceRingLayer, "setContents:", [ringImageForLuminance CGImage]);

    v11 = kCAFilterPlusL;
    v12 = [CAFilter filterWithType:kCAFilterPlusL];
    [(CALayer *)v4->_luminanceRingLayer setCompositingFilter:v12];

    [objc_opt_class() ringSize];
    v14 = v13;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_luminanceRingLayer setFrame:0.0, 0.0, v14, v15];
    layer3 = [(PHRingHighlightView *)v4 layer];
    [layer3 addSublayer:v4->_luminanceRingLayer];

    v17 = +[CALayer layer];
    dodgeRingLayer = v4->_dodgeRingLayer;
    v4->_dodgeRingLayer = v17;

    ringImageForDodge = [objc_opt_class() ringImageForDodge];
    -[CALayer setContents:](v4->_dodgeRingLayer, "setContents:", [ringImageForDodge CGImage]);

    v20 = kCAFilterColorDodgeBlendMode;
    v21 = [CAFilter filterWithType:kCAFilterColorDodgeBlendMode];
    [(CALayer *)v4->_dodgeRingLayer setCompositingFilter:v21];

    [objc_opt_class() ringSize];
    v23 = v22;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_dodgeRingLayer setFrame:0.0, 0.0, v23, v24];
    layer4 = [(PHRingHighlightView *)v4 layer];
    [layer4 addSublayer:v4->_dodgeRingLayer];

    v26 = +[CALayer layer];
    highlightDodgeLayer = v4->_highlightDodgeLayer;
    v4->_highlightDodgeLayer = v26;

    colorForDodge = [objc_opt_class() colorForDodge];
    -[CALayer setBackgroundColor:](v4->_highlightDodgeLayer, "setBackgroundColor:", [colorForDodge CGColor]);

    v29 = [CAFilter filterWithType:v20];
    [(CALayer *)v4->_highlightDodgeLayer setCompositingFilter:v29];

    [objc_opt_class() ringSize];
    v31 = v30;
    [objc_opt_class() ringSize];
    v33 = v32;
    [objc_opt_class() ringStroke];
    v35 = v34;
    [objc_opt_class() ringStroke];
    v37 = v36;
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = v31;
    v61.size.height = v33;
    v62 = CGRectInset(v61, v35, v37);
    width = v62.size.width;
    height = v62.size.height;
    [objc_opt_class() ringStroke];
    v41 = v40;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setFrame:v41, v42, width, height];
    [objc_opt_class() ringCornerRadius];
    v44 = v43;
    [objc_opt_class() ringStroke];
    [(CALayer *)v4->_highlightDodgeLayer setCornerRadius:v44 - v45];
    [(CALayer *)v4->_highlightDodgeLayer setOpacity:0.0];
    layer5 = [(PHRingHighlightView *)v4 layer];
    [layer5 addSublayer:v4->_highlightDodgeLayer];

    v47 = +[CALayer layer];
    highlightLuminanceLayer = v4->_highlightLuminanceLayer;
    v4->_highlightLuminanceLayer = v47;

    colorForLuminance = [objc_opt_class() colorForLuminance];
    -[CALayer setBackgroundColor:](v4->_highlightLuminanceLayer, "setBackgroundColor:", [colorForLuminance CGColor]);

    v50 = [CAFilter filterWithType:v11];
    [(CALayer *)v4->_highlightLuminanceLayer setCompositingFilter:v50];

    [(CALayer *)v4->_highlightDodgeLayer frame];
    [(CALayer *)v4->_highlightLuminanceLayer setFrame:?];
    [(CALayer *)v4->_highlightDodgeLayer cornerRadius];
    [(CALayer *)v4->_highlightLuminanceLayer setCornerRadius:?];
    [(CALayer *)v4->_highlightLuminanceLayer setOpacity:0.0];
    layer6 = [(PHRingHighlightView *)v4 layer];
    [layer6 insertSublayer:v4->_highlightLuminanceLayer below:v4->_highlightDodgeLayer];

    v52 = +[CALayer layer];
    selectionLayer = v4->_selectionLayer;
    v4->_selectionLayer = v52;

    v54 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v4->_selectionLayer, "setBackgroundColor:", [v54 CGColor]);

    [objc_opt_class() ringSize];
    v56 = v55;
    [objc_opt_class() ringSize];
    [(CALayer *)v4->_selectionLayer setFrame:0.0, 0.0, v56, v57];
    [objc_opt_class() ringCornerRadius];
    [(CALayer *)v4->_selectionLayer setCornerRadius:?];
    [(CALayer *)v4->_selectionLayer setOpacity:0.0];
    layer7 = [(PHRingHighlightView *)v4 layer];
    [layer7 addSublayer:v4->_selectionLayer];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_class();

  [v2 ringSize];
  result.height = v4;
  result.width = v3;
  return result;
}

@end