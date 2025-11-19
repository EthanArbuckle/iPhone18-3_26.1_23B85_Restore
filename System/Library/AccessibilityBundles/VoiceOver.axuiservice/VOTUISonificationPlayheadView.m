@interface VOTUISonificationPlayheadView
- (BOOL)largeCursorEnabled;
- (VOTUISonificationPlayheadView)initWithFrame:(CGRect)a3;
- (double)lineWidth;
- (void)layoutSubviews;
- (void)updateStyling;
@end

@implementation VOTUISonificationPlayheadView

- (VOTUISonificationPlayheadView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = VOTUISonificationPlayheadView;
  v3 = [(VOTUISonificationPlayheadView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(VOTUISonificationPlayheadView *)v3 setClipsToBounds:1];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_45FC;
    v12[4] = sub_460C;
    v5 = v4;
    v13 = v5;
    v6 = +[AXSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4614;
    v11[3] = &unk_3D1A0;
    v11[4] = v12;
    [v6 registerUpdateBlock:v11 forRetrieveSelector:"voiceOverLargeCursorEnabled" withListener:v5];

    [(VOTUISonificationPlayheadView *)v5 updateStyling];
    [(VOTUISonificationPlayheadView *)v5 setAlpha:0.8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v15 count:2];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4624;
    v10[3] = &unk_3D1C8;
    v10[4] = v12;
    v8 = [(VOTUISonificationPlayheadView *)v5 registerForTraitChanges:v7 withHandler:v10];

    _Block_object_dispose(v12, 8);
  }

  return v4;
}

- (double)lineWidth
{
  v2 = [(VOTUISonificationPlayheadView *)self largeCursorEnabled];
  result = 4.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (BOOL)largeCursorEnabled
{
  v2 = +[AXSettings sharedInstance];
  [v2 voiceOverLargeCursorEnabled];

  return 1;
}

- (void)updateStyling
{
  v3 = [(VOTUISonificationPlayheadView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == &dword_0 + 1)
  {
    v23 = +[UIColor blackColor];
    +[UIColor whiteColor];
  }

  else
  {
    v23 = +[UIColor whiteColor];
    +[UIColor blackColor];
  }
  v5 = ;
  v6 = [(VOTUISonificationPlayheadView *)self layer];
  v7 = [v6 sublayers];
  v8 = [v7 count];

  if (v8 <= 1)
  {
    do
    {
      v9 = objc_alloc_init(CAShapeLayer);
      v10 = [(VOTUISonificationPlayheadView *)self layer];
      [v10 addSublayer:v9];

      v11 = [(VOTUISonificationPlayheadView *)self layer];
      v12 = [v11 sublayers];
      v13 = [v12 count];
    }

    while (v13 < 2);
  }

  v14 = [(VOTUISonificationPlayheadView *)self layer];
  v15 = [v14 sublayers];
  v16 = [v15 objectAtIndexedSubscript:1];

  v17 = [(VOTUISonificationPlayheadView *)self layer];
  v18 = [v17 sublayers];
  v19 = [v18 objectAtIndexedSubscript:0];

  [(VOTUISonificationPlayheadView *)self lineWidth];
  [v16 setCornerRadius:v20 * 0.5];
  v21 = v23;
  [v16 setBackgroundColor:{objc_msgSend(v23, "CGColor")}];
  [(VOTUISonificationPlayheadView *)self lineWidth];
  [v19 setCornerRadius:v22 * 0.5];
  [v19 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = VOTUISonificationPlayheadView;
  [(VOTUISonificationPlayheadView *)&v11 layoutSubviews];
  v3 = [(VOTUISonificationPlayheadView *)self layer];
  v4 = [v3 sublayers];
  v5 = [v4 objectAtIndexedSubscript:1];

  v6 = [(VOTUISonificationPlayheadView *)self layer];
  v7 = [v6 sublayers];
  v8 = [v7 objectAtIndexedSubscript:0];

  [(VOTUISonificationPlayheadView *)self lineWidth];
  v10 = v9 * 0.25;
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  [(VOTUISonificationPlayheadView *)self bounds];
  v13 = CGRectInset(v12, v10, v10);
  [v5 setFrame:{v13.origin.x, v13.origin.y, v13.size.width, v13.size.height}];
  [(VOTUISonificationPlayheadView *)self bounds];
  [v8 setFrame:?];
  +[CATransaction commit];
}

@end