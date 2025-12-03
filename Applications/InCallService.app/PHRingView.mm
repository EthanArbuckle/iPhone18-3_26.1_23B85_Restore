@interface PHRingView
+ (id)_createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color;
+ (id)ringImageCache;
- (CGSize)intrinsicContentSize;
- (CGSize)ringSize;
- (PHRingView)initWithFrame:(CGRect)frame reuseIdentifier:(id)identifier;
- (id)ringImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color cacheIdentifier:(id)identifier;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PHRingView

+ (id)ringImageCache
{
  if (qword_1003B0EA8 != -1)
  {
    sub_10025643C();
  }

  v3 = qword_1003B0EA0;

  return v3;
}

- (id)ringImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color cacheIdentifier:(id)identifier
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  identifierCopy = identifier;
  v12 = +[PHRingView ringImageCache];
  width = [v12 objectForKey:identifierCopy];

  if (!width)
  {
    width = [PHRingView _createRingImageWithSize:colorCopy strokeWidth:width color:height, width];
    v14 = +[PHRingView ringImageCache];
    [v14 setObject:width forKey:identifierCopy];
  }

  return width;
}

+ (id)_createRingImageWithSize:(CGSize)size strokeWidth:(double)width color:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectInset(v18, width, width);
  x = v19.origin.x;
  y = v19.origin.y;
  v11 = v19.size.width;
  v12 = v19.size.height;
  v19.origin.x = width;
  v19.origin.y = height;
  UIGraphicsBeginImageContextWithOptions(v19.origin, 0, 0.0);
  height = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, width, height];
  v14 = [UIBezierPath bezierPathWithOvalInRect:x, y, v11, v12];
  [height appendPath:v14];

  [height setUsesEvenOddFillRule:1];
  [colorCopy setFill];

  [height fill];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (void)setSelected:(BOOL)selected
{
  if (self->__selected != selected)
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
    self->__selected = selectedCopy;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->__highlighted != highlighted)
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
    self->__highlighted = highlightedCopy;
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10.receiver = self;
  v10.super_class = PHRingView;
  [(PHRingView *)&v10 setUserInteractionEnabled:?];
  if (self->__enabled != enabledCopy)
  {
    +[CATransaction begin];
    LODWORD(v5) = 1043207291;
    v6 = [NSNumber numberWithFloat:v5];
    [CATransaction setValue:v6 forKey:kCATransactionAnimationDuration];

    if (enabledCopy)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.6;
    }

    *&v7 = v8;
    [(CALayer *)self->_luminanceRingLayer setOpacity:v7];
    *&v9 = v8;
    [(CALayer *)self->_dodgeRingLayer setOpacity:v9];
    +[CATransaction commit];
    self->__enabled = enabledCopy;
  }
}

- (PHRingView)initWithFrame:(CGRect)frame reuseIdentifier:(id)identifier
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identifierCopy = identifier;
  v46.receiver = self;
  v46.super_class = PHRingView;
  height = [(PHRingView *)&v46 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(PHRingView *)height setRingSize:width, height];
    [(PHRingView *)v11 setUserInteractionEnabled:0];
    [(PHRingView *)v11 setOpaque:0];
    v12 = +[UIColor clearColor];
    [(PHRingView *)v11 setBackgroundColor:v12];

    layer = [(PHRingView *)v11 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PHRingView *)v11 layer];
    [layer2 setAllowsGroupOpacity:0];

    v11->__enabled = 1;
    v11->__selected = 0;
    v11->__highlighted = 0;
    v15 = +[CALayer layer];
    luminanceRingLayer = v11->_luminanceRingLayer;
    v11->_luminanceRingLayer = v15;

    v17 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
    identifierCopy = [NSString stringWithFormat:@"%@-luminance", identifierCopy];
    v19 = [(PHRingView *)v11 ringImageWithSize:v17 strokeWidth:identifierCopy color:width cacheIdentifier:height, 1.5];
    -[CALayer setContents:](v11->_luminanceRingLayer, "setContents:", [v19 CGImage]);

    v20 = kCAFilterPlusL;
    v21 = [CAFilter filterWithType:kCAFilterPlusL];
    [(CALayer *)v11->_luminanceRingLayer setCompositingFilter:v21];

    [(CALayer *)v11->_luminanceRingLayer setFrame:0.0, 0.0, width, height];
    layer3 = [(PHRingView *)v11 layer];
    [layer3 addSublayer:v11->_luminanceRingLayer];

    v23 = +[CALayer layer];
    dodgeRingLayer = v11->_dodgeRingLayer;
    v11->_dodgeRingLayer = v23;

    v25 = [UIColor colorWithWhite:0.600000024 alpha:1.0];
    identifierCopy2 = [NSString stringWithFormat:@"%@-dodge", identifierCopy];
    v27 = [(PHRingView *)v11 ringImageWithSize:v25 strokeWidth:identifierCopy2 color:width cacheIdentifier:height, 1.5];
    -[CALayer setContents:](v11->_dodgeRingLayer, "setContents:", [v27 CGImage]);

    v28 = kCAFilterColorDodgeBlendMode;
    v29 = [CAFilter filterWithType:kCAFilterColorDodgeBlendMode];
    [(CALayer *)v11->_dodgeRingLayer setCompositingFilter:v29];

    [(CALayer *)v11->_dodgeRingLayer setFrame:0.0, 0.0, width, height];
    layer4 = [(PHRingView *)v11 layer];
    [layer4 addSublayer:v11->_dodgeRingLayer];

    v31 = +[CALayer layer];
    highlightDodgeLayer = v11->_highlightDodgeLayer;
    v11->_highlightDodgeLayer = v31;

    v33 = [UIColor colorWithWhite:0.600000024 alpha:1.0];
    -[CALayer setBackgroundColor:](v11->_highlightDodgeLayer, "setBackgroundColor:", [v33 CGColor]);

    v34 = [CAFilter filterWithType:v28];
    [(CALayer *)v11->_highlightDodgeLayer setCompositingFilter:v34];

    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = width;
    v47.size.height = height;
    v48 = CGRectInset(v47, 1.5, 1.5);
    [(CALayer *)v11->_highlightDodgeLayer setFrame:1.5, 1.5, v48.size.width, v48.size.height];
    [(CALayer *)v11->_highlightDodgeLayer setCornerRadius:(width + -1.5) * 0.5 + -0.5];
    [(CALayer *)v11->_highlightDodgeLayer setOpacity:0.0];
    layer5 = [(PHRingView *)v11 layer];
    [layer5 addSublayer:v11->_highlightDodgeLayer];

    v36 = +[CALayer layer];
    highlightLuminanceLayer = v11->_highlightLuminanceLayer;
    v11->_highlightLuminanceLayer = v36;

    v38 = [UIColor colorWithWhite:1.0 alpha:0.0500000007];
    -[CALayer setBackgroundColor:](v11->_highlightLuminanceLayer, "setBackgroundColor:", [v38 CGColor]);

    v39 = [CAFilter filterWithType:v20];
    [(CALayer *)v11->_highlightLuminanceLayer setCompositingFilter:v39];

    [(CALayer *)v11->_highlightDodgeLayer frame];
    [(CALayer *)v11->_highlightLuminanceLayer setFrame:?];
    [(CALayer *)v11->_highlightDodgeLayer cornerRadius];
    [(CALayer *)v11->_highlightLuminanceLayer setCornerRadius:?];
    [(CALayer *)v11->_highlightLuminanceLayer setOpacity:0.0];
    layer6 = [(PHRingView *)v11 layer];
    [layer6 insertSublayer:v11->_highlightLuminanceLayer below:v11->_highlightDodgeLayer];

    v41 = +[CALayer layer];
    selectionLayer = v11->_selectionLayer;
    v11->_selectionLayer = v41;

    v43 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v11->_selectionLayer, "setBackgroundColor:", [v43 CGColor]);

    [(CALayer *)v11->_selectionLayer setFrame:0.0, 0.0, width, height];
    [(CALayer *)v11->_selectionLayer setCornerRadius:width * 0.5];
    [(CALayer *)v11->_selectionLayer setOpacity:0.0];
    layer7 = [(PHRingView *)v11 layer];
    [layer7 addSublayer:v11->_selectionLayer];
  }

  return v11;
}

- (CGSize)intrinsicContentSize
{
  [(PHRingView *)self ringSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)ringSize
{
  objc_copyStruct(v4, &self->_ringSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end