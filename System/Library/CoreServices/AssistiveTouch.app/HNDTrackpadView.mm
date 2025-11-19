@interface HNDTrackpadView
- (HNDTrackpadView)initWithFrame:(CGRect)a3;
- (id)getTrackpadColor;
- (void)registerForSettingsUpdates;
@end

@implementation HNDTrackpadView

- (HNDTrackpadView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = HNDTrackpadView;
  v3 = [(HNDTrackpadView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(HNDTrackpadView *)v3 getTrackpadColor];
  [(HNDTrackpadView *)v3 setBackgroundColor:v4];

  v5 = +[AXSettings sharedInstance];
  [v5 assistiveTouchVirtualTrackpadInnerOpacity];
  [(HNDTrackpadView *)v3 setAlpha:?];

  v6 = +[UIColor blackColor];
  v7 = [v6 CGColor];
  v8 = [(HNDTrackpadView *)v3 layer];
  [v8 setBorderColor:v7];

  v9 = [(HNDTrackpadView *)v3 layer];
  [v9 setCornerRadius:11.0];

  [(HNDTrackpadView *)v3 setUserInteractionEnabled:1];
  [(HNDTrackpadView *)v3 registerForSettingsUpdates];
  return v3;
}

- (void)registerForSettingsUpdates
{
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AF5C4;
  v7[3] = &unk_1001D3460;
  objc_copyWeak(&v8, &location);
  [v3 registerUpdateBlock:v7 forRetrieveSelector:"assistiveTouchVirtualTrackpadInnerColor" withListener:self];

  objc_destroyWeak(&v8);
  v4 = +[AXSettings sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AF634;
  v5[3] = &unk_1001D3460;
  objc_copyWeak(&v6, &location);
  [v4 registerUpdateBlock:v5 forRetrieveSelector:"assistiveTouchVirtualTrackpadInnerOpacity" withListener:self];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)getTrackpadColor
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchVirtualTrackpadInnerColor];

  if (v3 <= 2)
  {
    if (!v3)
    {
      v4 = +[UIColor systemGrayColor];
      goto LABEL_18;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = +[UIColor systemBlueColor];
        goto LABEL_18;
      }

LABEL_14:
      v4 = +[UIColor grayColor];
      goto LABEL_18;
    }

    v4 = +[UIColor systemWhiteColor];
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        +[UIColor systemRedColor];
      }

      else
      {
        +[UIColor systemGreenColor];
      }
      v4 = ;
      goto LABEL_18;
    }

    if (v3 != 5)
    {
      if (v3 == 6)
      {
        v4 = +[UIColor systemOrangeColor];
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v4 = +[UIColor systemYellowColor];
  }

LABEL_18:

  return v4;
}

@end