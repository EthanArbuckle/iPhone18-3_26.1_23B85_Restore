@interface UIView
- (BOOL)mf_prefersRightToLeftInterfaceLayout;
- (void)mf_applyingConversationMessageShadow:(BOOL)a3 shouldRoundCorners:(BOOL)a4 cornerRadius:(double)a5;
- (void)mf_setAlpha:(double)a3;
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

- (void)mf_applyingConversationMessageShadow:(BOOL)a3 shouldRoundCorners:(BOOL)a4 cornerRadius:(double)a5
{
  v5 = a4;
  v6 = a3;
  v19 = [(UIView *)self traitCollection];
  v8 = [v19 userInterfaceStyle];

  if (v6 && v8 == 1)
  {
    v9 = MUISolariumFeatureEnabled();
    v20 = +[UIColor systemBlackColor];
    v10 = [v20 CGColor];
    v11 = [(UIView *)self layer];
    [v11 setShadowColor:v10];

    if (v9)
    {
      v12 = 0.06;
    }

    else
    {
      v12 = 0.1;
    }

    v21 = [(UIView *)self layer];
    *&v13 = v12;
    [v21 setShadowOpacity:v13];

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

    v22 = [(UIView *)self layer];
    [v22 setShadowOffset:{width, height}];

    if (v9)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 8.0;
    }

    v23 = [(UIView *)self layer];
    [v23 setShadowRadius:v16];

    v24 = [(UIView *)self layer];
    [v24 setMasksToBounds:0];

    [(UIView *)self bounds];
    if (v5)
    {
      [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    }

    else
    {
      [UIBezierPath bezierPathWithRect:?];
    }
    v25 = ;
    v17 = [v25 CGPath];
    v18 = [(UIView *)self layer];
    [v18 setShadowPath:v17];
  }

  else
  {
    v25 = [(UIView *)self layer];
    [v25 setShadowOpacity:0.0];
  }
}

- (void)mf_setAlpha:(double)a3
{
  [(UIView *)self alpha];
  v6 = v5 - a3;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 >= 2.22044605e-16)
  {

    [(UIView *)self setAlpha:a3];
  }
}

@end