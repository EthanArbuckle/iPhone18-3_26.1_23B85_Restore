@interface CRLIndeterminateProgressRingView_i
- (CRLIndeterminateProgressRingView_i)initWithCoder:(id)a3;
- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)a3 color:(id)a4 strokeWidth:(double)a5;
- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)a3 style:(unint64_t)a4 strokeWidth:(double)a5;
- (id)p_strokeColorForStyle:(unint64_t)a3;
- (void)_updateShapePath;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setup;
@end

@implementation CRLIndeterminateProgressRingView_i

- (id)p_strokeColorForStyle:(unint64_t)a3
{
  switch(a3)
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

- (CRLIndeterminateProgressRingView_i)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRLIndeterminateProgressRingView_i;
  v3 = [(CRLIndeterminateProgressRingView_i *)&v8 initWithCoder:a3];
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

- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)a3 style:(unint64_t)a4 strokeWidth:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(CRLIndeterminateProgressRingView_i *)self p_strokeColorForStyle:self->_style];
  v13 = [(CRLIndeterminateProgressRingView_i *)self initWithFrame:v12 color:x strokeWidth:y, width, height, a5];

  if (v13)
  {
    v13->_style = a4;
    v13->_strokeWidth = a5;
    v13->_gapAngle = 26.0;
    v14 = [(CRLIndeterminateProgressRingView_i *)v13 p_strokeColorForStyle:a4];
    color = v13->_color;
    v13->_color = v14;

    [(CRLIndeterminateProgressRingView_i *)v13 setup];
  }

  return v13;
}

- (CRLIndeterminateProgressRingView_i)initWithFrame:(CGRect)a3 color:(id)a4 strokeWidth:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CRLIndeterminateProgressRingView_i;
  v13 = [(CRLIndeterminateProgressRingView_i *)&v16 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    v13->_style = 2;
    v13->_strokeWidth = a5;
    v13->_gapAngle = 26.0;
    objc_storeStrong(&v13->_color, a4);
    [(CRLIndeterminateProgressRingView_i *)v14 setup];
  }

  return v14;
}

- (void)setup
{
  v13 = [(CRLIndeterminateProgressRingView_i *)self layer];
  [(CRLIndeterminateProgressRingView_i *)self strokeWidth];
  [v13 setLineWidth:?];
  [v13 setLineCap:kCALineCapRound];
  v3 = +[UIColor clearColor];
  [v13 setFillColor:{objc_msgSend(v3, "CGColor")}];

  [v13 setStrokeColor:{-[UIColor CGColor](self->_color, "CGColor")}];
  v4 = +[UIColor clearColor];
  [v13 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  [(CRLIndeterminateProgressRingView_i *)self _updateShapePath];
  v5 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  v6 = [v5 keyPath];
  v7 = [v13 valueForKeyPath:v6];

  [v5 setFromValue:v7];
  [v7 floatValue];
  v9 = [NSNumber numberWithDouble:(fmod(v8, 6.28318531) + 6.28318531)];
  [v5 setToValue:v9];

  [v5 setRemovedOnCompletion:0];
  LODWORD(v10) = 2139095040;
  [v5 setRepeatCount:v10];
  [v5 setFillMode:kCAFillModeBoth];
  [v5 setDuration:1.0];
  [v13 addAnimation:v5 forKey:@"CRLiOSIndeterminateProgressRingViewSpinnerAnimationKey"];
  v11 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v12 = [(CRLIndeterminateProgressRingView_i *)self registerForTraitChanges:v11 withTarget:self action:"updateForAppearance"];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CRLIndeterminateProgressRingView_i;
  [(CRLIndeterminateProgressRingView_i *)&v5 layoutSubviews];
  v3 = [(CRLIndeterminateProgressRingView_i *)self traitCollection];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001BE17C;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [v3 performAsCurrentTraitCollection:v4];

  [(CRLIndeterminateProgressRingView_i *)self _updateShapePath];
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  [(CRLIndeterminateProgressRingView_i *)self setColor:v4];
  v5.receiver = self;
  v5.super_class = CRLIndeterminateProgressRingView_i;
  [(CRLIndeterminateProgressRingView_i *)&v5 setTintColor:v4];
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 | self->_color)
  {
    v11 = v4;
    v6 = [v4 isEqual:?];
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

      v9 = [(CRLIndeterminateProgressRingView_i *)self layer];
      [v9 setStrokeColor:{-[UIColor CGColor](self->_color, "CGColor")}];
      v10 = [(CRLIndeterminateProgressRingView_i *)self layer];
      [v10 setNeedsDisplay];

      v5 = v11;
    }
  }
}

- (void)_updateShapePath
{
  v17 = [(CRLIndeterminateProgressRingView_i *)self layer];
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
  [v17 setPath:{objc_msgSend(v15, "CGPath")}];
  [v17 setBounds:{v4, v6, v8, v10}];
}

@end