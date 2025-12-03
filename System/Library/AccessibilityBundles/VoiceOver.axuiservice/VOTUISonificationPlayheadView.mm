@interface VOTUISonificationPlayheadView
- (BOOL)largeCursorEnabled;
- (VOTUISonificationPlayheadView)initWithFrame:(CGRect)frame;
- (double)lineWidth;
- (void)layoutSubviews;
- (void)updateStyling;
@end

@implementation VOTUISonificationPlayheadView

- (VOTUISonificationPlayheadView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = VOTUISonificationPlayheadView;
  v3 = [(VOTUISonificationPlayheadView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  largeCursorEnabled = [(VOTUISonificationPlayheadView *)self largeCursorEnabled];
  result = 4.0;
  if (largeCursorEnabled)
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
  traitCollection = [(VOTUISonificationPlayheadView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 1)
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
  layer = [(VOTUISonificationPlayheadView *)self layer];
  sublayers = [layer sublayers];
  v8 = [sublayers count];

  if (v8 <= 1)
  {
    do
    {
      v9 = objc_alloc_init(CAShapeLayer);
      layer2 = [(VOTUISonificationPlayheadView *)self layer];
      [layer2 addSublayer:v9];

      layer3 = [(VOTUISonificationPlayheadView *)self layer];
      sublayers2 = [layer3 sublayers];
      v13 = [sublayers2 count];
    }

    while (v13 < 2);
  }

  layer4 = [(VOTUISonificationPlayheadView *)self layer];
  sublayers3 = [layer4 sublayers];
  v16 = [sublayers3 objectAtIndexedSubscript:1];

  layer5 = [(VOTUISonificationPlayheadView *)self layer];
  sublayers4 = [layer5 sublayers];
  v19 = [sublayers4 objectAtIndexedSubscript:0];

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
  layer = [(VOTUISonificationPlayheadView *)self layer];
  sublayers = [layer sublayers];
  v5 = [sublayers objectAtIndexedSubscript:1];

  layer2 = [(VOTUISonificationPlayheadView *)self layer];
  sublayers2 = [layer2 sublayers];
  v8 = [sublayers2 objectAtIndexedSubscript:0];

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