@interface UIView
- (BOOL)mf_prefersRightToLeftInterfaceLayout;
- (void)mf_applyingConversationMessageShadow:(BOOL)shadow shouldRoundCorners:(BOOL)corners cornerRadius:(double)radius;
- (void)mf_setAlpha:(double)alpha;
@end

@implementation UIView

- (BOOL)mf_prefersRightToLeftInterfaceLayout
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A8E4;
  block[3] = &unk_1000350C8;
  block[4] = self;
  if (qword_10003DFB0 != -1)
  {
    dispatch_once(&qword_10003DFB0, block);
  }

  return byte_10003DFA8;
}

- (void)mf_applyingConversationMessageShadow:(BOOL)shadow shouldRoundCorners:(BOOL)corners cornerRadius:(double)radius
{
  cornersCopy = corners;
  shadowCopy = shadow;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (shadowCopy && userInterfaceStyle == 1)
  {
    v9 = MUISolariumFeatureEnabled();
    v20 = +[UIColor systemBlackColor];
    cGColor = [v20 CGColor];
    layer = [(UIView *)self layer];
    [layer setShadowColor:cGColor];

    if (v9)
    {
      v12 = 0.06;
    }

    else
    {
      v12 = 0.1;
    }

    layer2 = [(UIView *)self layer];
    *&v13 = v12;
    [layer2 setShadowOpacity:v13];

    if (v9)
    {
      width = CGSizeZero.width;
    }

    else
    {
      width = 0.0;
    }

    if (v9)
    {
      height = CGSizeZero.height;
    }

    else
    {
      height = 2.0;
    }

    layer3 = [(UIView *)self layer];
    [layer3 setShadowOffset:{width, height}];

    if (v9)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 8.0;
    }

    layer4 = [(UIView *)self layer];
    [layer4 setShadowRadius:v16];

    layer5 = [(UIView *)self layer];
    [layer5 setMasksToBounds:0];

    [(UIView *)self bounds];
    if (cornersCopy)
    {
      [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      [UIBezierPath bezierPathWithRect:?];
    }
    layer7 = ;
    cGPath = [layer7 CGPath];
    layer6 = [(UIView *)self layer];
    [layer6 setShadowPath:cGPath];
  }

  else
  {
    layer7 = [(UIView *)self layer];
    [layer7 setShadowOpacity:0.0];
  }
}

- (void)mf_setAlpha:(double)alpha
{
  [(UIView *)self alpha];
  v6 = v5 - alpha;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 >= 2.22044605e-16)
  {

    [(UIView *)self setAlpha:alpha];
  }
}

@end