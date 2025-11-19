@interface CardShadowView
- (CardShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setButtonCard:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CardShadowView

- (void)layoutSubviews
{
  if (self->_invalidatedShadow)
  {
    self->_invalidatedShadow = 0;
    v3 = [(CardShadowView *)self traitCollection];
    v4 = [CardShadowSettings settingsForTraitCollection:v3 button:[(CardShadowView *)self buttonCard]];

    objc_storeStrong(&self->_settings, v4);
    v5 = [(CardShadowView *)self traitCollection];
    [v5 displayScale];
    v7 = v6;

    [v4 cornerRadius];
    v9 = v8;
    [v4 rimOpacity];
    v11 = v10;
    [v4 opacity];
    v13 = v12;
    [v4 radius];
    v15 = v14;
    if ([(CardShadowView *)self shouldCropBottomEdge])
    {
      v16 = [(CardShadowView *)self layer];
      [v16 setCornerRadius:0.0];

      v17 = [(CardShadowView *)self layer];
      [v17 setBorderColor:0];

      v18 = [(CardShadowView *)self layer];
      [v18 setBorderWidth:0.0];

      v19 = [(CardShadowView *)self layer];
      [v19 setShadowRadius:0.0];

      v20 = [(CardShadowView *)self layer];
      [v20 setShadowOpacity:0.0];

      v21 = [(CardShadowView *)self layer];
      [v21 setShadowColor:0];

      v22 = [(CardShadowView *)self layer];
      [v22 setShadowPathIsBounds:0];

      if (!self->_shadowImageView)
      {
        v23 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
        shadowImageView = self->_shadowImageView;
        self->_shadowImageView = v23;

        [(CardShadowView *)self addSubview:self->_shadowImageView];
      }

      if (qword_10195DA18 != -1)
      {
        dispatch_once(&qword_10195DA18, &stru_10162BEF0);
      }

      v53[5] = 1;
      *v53 = v9;
      *&v53[1] = v11;
      *&v53[2] = v15;
      *&v53[3] = v13;
      *&v53[4] = v7;
      v25 = [NSValue valueWithBytes:v53 objCType:"{?=dddddB}"];
      v26 = [qword_10195DA10 objectForKeyedSubscript:v25];
      if (!v26)
      {
        v52 = ceil(v9 * 1.528665);
        v27 = ceil(v15);
        v28 = v52 * 2.0 + 1.0 + v27 * 3.0;
        v29 = [UIBezierPath bezierPathWithRoundedRect:v27 cornerRadius:v27, v28 - v27 * 2.0, v28 - v27 * 2.0 + v28 - v27 * 2.0, v9];
        v54.width = v28;
        v54.height = v28;
        UIGraphicsBeginImageContextWithOptions(v54, 0, v7);
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextSaveGState(CurrentContext);
        SRGB = CGColorCreateSRGB(0.0, 0.0, 0.0, v13);
        v55.width = 0.0;
        v55.height = v28 + v28;
        CGContextSetShadowWithColor(CurrentContext, v55, v15, SRGB);
        CGColorRelease(SRGB);
        CGContextTranslateCTM(CurrentContext, 0.0, -(v28 + v28));
        [v29 fill];
        CGContextRestoreGState(CurrentContext);
        v32 = [UIColor colorWithWhite:0.0 alpha:v11];
        [v32 set];

        [v29 setLineWidth:2.0 / v7];
        [v29 stroke];
        CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
        v33 = +[UIColor blackColor];
        [v33 set];

        [v29 fill];
        v34 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v26 = [v34 resizableImageWithCapInsets:{v27 + v52, v27 + v52, v27 + v52, v27 + v52}];

        if (v26)
        {
          [qword_10195DA10 setObject:v26 forKeyedSubscript:v25];
        }
      }

      [(UIImageView *)self->_shadowImageView setImage:v26];
    }

    else
    {
      v35 = self->_shadowImageView;
      if (v35)
      {
        [(UIImageView *)v35 removeFromSuperview];
        v36 = self->_shadowImageView;
        self->_shadowImageView = 0;
      }

      v37 = [UIColor colorWithWhite:0.0 alpha:v11];
      v38 = [UIColor colorWithWhite:0.0 alpha:v13];
      v39 = [(CardShadowView *)self layer];
      [v39 setCornerRadius:v9];

      v40 = [v37 CGColor];
      v41 = [(CardShadowView *)self layer];
      [v41 setBorderColor:v40];

      v42 = [(CardShadowView *)self layer];
      [v42 setBorderWidth:2.0 / v7];

      v43 = [v38 CGColor];
      v44 = [(CardShadowView *)self layer];
      [v44 setShadowColor:v43];

      v45 = [(CardShadowView *)self layer];
      [v45 setShadowRadius:v15];

      v46 = [(CardShadowView *)self layer];
      LODWORD(v47) = 1.0;
      [v46 setShadowOpacity:v47];

      v48 = [(CardShadowView *)self layer];
      [v48 setShadowOffset:{0.0, 1.0}];

      v49 = [(CardShadowView *)self layer];
      [v49 setShadowPathIsBounds:1];
    }
  }

  if (self->_shadowImageView)
  {
    [(CardShadowSettings *)self->_settings expansion];
    v51 = v50;
    [(CardShadowView *)self bounds];
    v57 = CGRectInset(v56, -v51, -v51);
    [(UIImageView *)self->_shadowImageView setFrame:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height - v51];
  }
}

- (void)setButtonCard:(BOOL)a3
{
  if (self->_buttonCard != a3)
  {
    self->_buttonCard = a3;
    [(CardShadowView *)self invalidateCachedShadow];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CardShadowView;
  [(CardShadowView *)&v4 traitCollectionDidChange:a3];
  [(CardShadowView *)self invalidateCachedShadow];
}

- (CardShadowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CardShadowView;
  v3 = [(CardShadowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_invalidatedShadow = 1;
    v5 = v3;
  }

  return v4;
}

@end