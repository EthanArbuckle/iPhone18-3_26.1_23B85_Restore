@interface CardShadowView
- (CardShadowView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setButtonCard:(BOOL)card;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CardShadowView

- (void)layoutSubviews
{
  if (self->_invalidatedShadow)
  {
    self->_invalidatedShadow = 0;
    traitCollection = [(CardShadowView *)self traitCollection];
    v4 = [CardShadowSettings settingsForTraitCollection:traitCollection button:[(CardShadowView *)self buttonCard]];

    objc_storeStrong(&self->_settings, v4);
    traitCollection2 = [(CardShadowView *)self traitCollection];
    [traitCollection2 displayScale];
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
      layer = [(CardShadowView *)self layer];
      [layer setCornerRadius:0.0];

      layer2 = [(CardShadowView *)self layer];
      [layer2 setBorderColor:0];

      layer3 = [(CardShadowView *)self layer];
      [layer3 setBorderWidth:0.0];

      layer4 = [(CardShadowView *)self layer];
      [layer4 setShadowRadius:0.0];

      layer5 = [(CardShadowView *)self layer];
      [layer5 setShadowOpacity:0.0];

      layer6 = [(CardShadowView *)self layer];
      [layer6 setShadowColor:0];

      layer7 = [(CardShadowView *)self layer];
      [layer7 setShadowPathIsBounds:0];

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
      layer8 = [(CardShadowView *)self layer];
      [layer8 setCornerRadius:v9];

      cGColor = [v37 CGColor];
      layer9 = [(CardShadowView *)self layer];
      [layer9 setBorderColor:cGColor];

      layer10 = [(CardShadowView *)self layer];
      [layer10 setBorderWidth:2.0 / v7];

      cGColor2 = [v38 CGColor];
      layer11 = [(CardShadowView *)self layer];
      [layer11 setShadowColor:cGColor2];

      layer12 = [(CardShadowView *)self layer];
      [layer12 setShadowRadius:v15];

      layer13 = [(CardShadowView *)self layer];
      LODWORD(v47) = 1.0;
      [layer13 setShadowOpacity:v47];

      layer14 = [(CardShadowView *)self layer];
      [layer14 setShadowOffset:{0.0, 1.0}];

      layer15 = [(CardShadowView *)self layer];
      [layer15 setShadowPathIsBounds:1];
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

- (void)setButtonCard:(BOOL)card
{
  if (self->_buttonCard != card)
  {
    self->_buttonCard = card;
    [(CardShadowView *)self invalidateCachedShadow];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CardShadowView;
  [(CardShadowView *)&v4 traitCollectionDidChange:change];
  [(CardShadowView *)self invalidateCachedShadow];
}

- (CardShadowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CardShadowView;
  v3 = [(CardShadowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_invalidatedShadow = 1;
    v5 = v3;
  }

  return v4;
}

@end