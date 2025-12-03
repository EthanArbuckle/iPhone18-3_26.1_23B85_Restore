@interface CRLIndeterminateProgressRingView_i
- (CRLIndeterminateProgressRingView_i)initWithCoder:(id)coder;
- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)frame color:(id)color strokeWidth:(double)width;
- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)frame style:(unint64_t)style strokeWidth:(double)width;
- (id)p_strokeColorForStyle:(unint64_t)style;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setTintColor:(id)color;
- (void)setup;
@end

@implementation CRLIndeterminateProgressRingView_i

- (id)p_strokeColorForStyle:(unint64_t)style
{
  switch(style)
  {
    case 2uLL:
      self = self->_color;
      break;
    case 1uLL:
      self = +[UIColor labelColor];
      break;
    case 0uLL:
      self = +[UIColor systemBackgroundColor];
      break;
  }

  return self;
}

- (CRLIndeterminateProgressRingView_i)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRLIndeterminateProgressRingView_i;
  v3 = [(CRLIndeterminateProgressRingView_i *)&v8 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_style = 0;
    v3->_strokeWidth = 2.0;
    v3->_gapAngle = 26.0;
    v5 = [(CRLIndeterminateProgressRingView_i *)v3 p_strokeColorForStyle:0];
    color = v4->_color;
    v4->_color = v5;

    [(CRLIndeterminateProgressRingView_i *)v4 setup];
  }

  return v4;
}

- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)frame style:(unint64_t)style strokeWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = [(CRLIndeterminateProgressRingView_i *)self p_strokeColorForStyle:self->_style];
  width = [(CRLIndeterminateProgressRingView_i *)self initWithFrame:v12 color:x strokeWidth:y, width, height, width];

  if (width)
  {
    width->_style = style;
    width->_strokeWidth = width;
    width->_gapAngle = 26.0;
    v14 = [(CRLIndeterminateProgressRingView_i *)width p_strokeColorForStyle:style];
    color = width->_color;
    width->_color = v14;

    [(CRLIndeterminateProgressRingView_i *)width setup];
  }

  return width;
}

- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)frame color:(id)color strokeWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = CRLIndeterminateProgressRingView_i;
  height = [(CRLIndeterminateProgressRingView_i *)&v16 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    height->_style = 2;
    height->_strokeWidth = width;
    height->_gapAngle = 26.0;
    objc_storeStrong(&height->_color, color);
    [(CRLIndeterminateProgressRingView_i *)v14 setup];
  }

  return v14;
}

- (void)setup
{
  layer = [(CRLIndeterminateProgressRingView_i *)self layer];
  [(CRLIndeterminateProgressRingView_i *)self strokeWidth];
  [layer setLineWidth:?];
  [layer setLineCap:kCALineCapRound];
  v3 = +[UIColor clearColor];
  [layer setFillColor:{objc_msgSend(v3, "CGColor")}];

  [layer setStrokeColor:{-[UIColor CGColor](self->_color, "CGColor")}];
  v4 = +[UIColor clearColor];
  [layer setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  [(CRLIndeterminateProgressRingView_i *)self _updateShapePath];
  v5 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  keyPath = [v5 keyPath];
  v7 = [layer valueForKeyPath:keyPath];

  [v5 setFromValue:v7];
  [v7 floatValue];
  v9 = [NSNumber numberWithDouble:(fmod(v8, 6.28318531) + 6.28318531)];
  [v5 setToValue:v9];

  [v5 setRemovedOnCompletion:0];
  LODWORD(v10) = 2139095040;
  [v5 setRepeatCount:v10];
  [v5 setFillMode:kCAFillModeBoth];
  [v5 setDuration:1.0];
  [layer addAnimation:v5 forKey:@"CRLiOSIndeterminateProgressRingViewSpinnerAnimationKey"];
  v11 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v12 = [(CRLIndeterminateProgressRingView_i *)self registerForTraitChanges:v11 withTarget:self action:"updateForAppearance"];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CRLIndeterminateProgressRingView_i;
  [(CRLIndeterminateProgressRingView_i *)&v5 layoutSubviews];
  traitCollection = [(CRLIndeterminateProgressRingView_i *)self traitCollection];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001BE17C;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [traitCollection performAsCurrentTraitCollection:v4];

  [(CRLIndeterminateProgressRingView_i *)self _updateShapePath];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  [(CRLIndeterminateProgressRingView_i *)self setColor:colorCopy];
  v5.receiver = self;
  v5.super_class = CRLIndeterminateProgressRingView_i;
  [(CRLIndeterminateProgressRingView_i *)&v5 setTintColor:colorCopy];
}

- (void)setColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (colorCopy | self->_color)
  {
    v11 = colorCopy;
    v6 = [colorCopy isEqual:?];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      if (v11)
      {
        v7 = v11;
      }

      else
      {
        v7 = [(CRLIndeterminateProgressRingView_i *)self p_strokeColorForStyle:[(CRLIndeterminateProgressRingView_i *)self style]];
      }

      color = self->_color;
      self->_color = v7;

      layer = [(CRLIndeterminateProgressRingView_i *)self layer];
      [layer setStrokeColor:{-[UIColor CGColor](self->_color, "CGColor")}];
      layer2 = [(CRLIndeterminateProgressRingView_i *)self layer];
      [layer2 setNeedsDisplay];

      v5 = v11;
    }
  }
}

- (void)_updateShapePath
{
  layer = [(CRLIndeterminateProgressRingView_i *)self layer];
  [(CRLIndeterminateProgressRingView_i *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v7 * 0.5;
  v12 = sub_100120414(v3, v5, v7, v9);
  v14 = v13;
  v15 = +[UIBezierPath bezierPath];
  [(CRLIndeterminateProgressRingView_i *)self gapAngle];
  [v15 addArcWithCenter:1 radius:v12 startAngle:v14 endAngle:v11 clockwise:{0.0, (v16 / -180.0 + 2.0) * 3.14159265}];
  [layer setPath:{objc_msgSend(v15, "CGPath")}];
  [layer setBounds:{v4, v6, v8, v10}];
}

@end