@interface CHASActivitySetupLevelView
- (CGSize)intrinsicContentSize;
- (CHASActivitySetupLevelView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CHASActivitySetupLevelView

- (CHASActivitySetupLevelView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = CHASActivitySetupLevelView;
  v3 = [(CHASActivitySetupLevelView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UISegmentedControl alloc];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ACTIVITY_LEVEL_LIGHTLY" value:&stru_35FD0 table:@"ActivitySetup"];
    v22[0] = v6;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ACTIVITY_LEVEL_MODERATELY" value:&stru_35FD0 table:@"ActivitySetup"];
    v22[1] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ACTIVITY_LEVEL_HIGHLY" value:&stru_35FD0 table:@"ActivitySetup"];
    v22[2] = v10;
    v11 = [NSArray arrayWithObjects:v22 count:3];
    v12 = [v4 initWithItems:v11];
    segmentedControl = v3->_segmentedControl;
    v3->_segmentedControl = v12;

    v14 = [UIFont fu_sausageFontOfSize:17.0];
    v20 = NSFontAttributeName;
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [(UISegmentedControl *)v3->_segmentedControl setTitleTextAttributes:v15 forState:0];
    [(UISegmentedControl *)v3->_segmentedControl setTitleTextAttributes:v15 forState:4];
    v16 = BPSSetupBackgroundColor();
    [(UISegmentedControl *)v3->_segmentedControl setBackgroundColor:v16];

    v17 = +[UIColor grayColor];
    [(UISegmentedControl *)v3->_segmentedControl setTintColor:v17];

    [(UISegmentedControl *)v3->_segmentedControl setSelectedSegmentIndex:0];
    [(CHASActivitySetupLevelView *)v3 addSubview:v3->_segmentedControl];
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CHASActivitySetupLevelView;
  [(CHASActivitySetupLevelView *)&v22 layoutSubviews];
  segmentedControl = self->_segmentedControl;
  [(CHASActivitySetupLevelView *)self bounds];
  [(UISegmentedControl *)segmentedControl sizeThatFits:v4, v5];
  v7 = v6;
  [(CHASActivitySetupLevelView *)self bounds];
  if (v7 > v8)
  {
    v9 = 17.0;
    do
    {
      v9 = v9 + -1.0;
      if (v9 >= 10.0)
      {
        v23 = NSFontAttributeName;
        v12 = [UIFont systemFontOfSize:v9];
        v24 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

        [(UISegmentedControl *)self->_segmentedControl setTitleTextAttributes:v13 forState:0];
        [(UISegmentedControl *)self->_segmentedControl setTitleTextAttributes:v13 forState:4];
        v14 = self->_segmentedControl;
        [(CHASActivitySetupLevelView *)self bounds];
        [(UISegmentedControl *)v14 sizeThatFits:v15, v16];
        v11 = v17;
      }

      else
      {
        [(CHASActivitySetupLevelView *)self bounds];
        v11 = v10;
      }

      [(CHASActivitySetupLevelView *)self bounds];
    }

    while (v11 > v18);
  }

  y = CGPointZero.y;
  [(CHASActivitySetupLevelView *)self bounds];
  FIUIDeviceScale();
  v21 = v20;
  UIRectCenteredXInRectScale();
  [(UISegmentedControl *)self->_segmentedControl setFrame:v21];
}

- (CGSize)intrinsicContentSize
{
  [(UISegmentedControl *)self->_segmentedControl frame];
  v3 = v2;
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

@end