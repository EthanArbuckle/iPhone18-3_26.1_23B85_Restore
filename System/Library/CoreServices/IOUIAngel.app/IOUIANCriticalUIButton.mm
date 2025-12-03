@interface IOUIANCriticalUIButton
- (IOUIANCriticalUIButton)initWithFrame:(CGRect)frame;
- (IOUIANCriticalUIButtonDelegate)delegate;
@end

@implementation IOUIANCriticalUIButton

- (IOUIANCriticalUIButton)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = IOUIANCriticalUIButton;
  v3 = [(IOUIANCriticalUIButton *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor whiteColor];
    [(IOUIANCriticalUIButton *)v3 setTitleColor:v4 forState:0];

    v5 = [UIColor colorWithWhite:1.0 alpha:0.5];
    [(IOUIANCriticalUIButton *)v3 setTitleColor:v5 forState:1];

    [(IOUIANCriticalUIButton *)v3 setExclusiveTouch:1];
    titleLabel = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel setNumberOfLines:1];

    titleLabel2 = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel2 setBaselineAdjustment:1];

    titleLabel3 = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel3 setLineBreakMode:0];

    titleLabel4 = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel4 setTextAlignment:1];

    v10 = sub_100002CA0(UIFontTextStyleCallout, UIContentSizeCategoryExtraExtraLarge);
    titleLabel5 = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel5 setFont:v10];

    titleLabel6 = [(IOUIANCriticalUIButton *)v3 titleLabel];
    [titleLabel6 setAdjustsFontSizeToFitWidth:0];

    [(IOUIANCriticalUIButton *)v3 _setContinuousCornerRadius:24.0];
    layer = [(IOUIANCriticalUIButton *)v3 layer];
    [layer setHitTestsAsOpaque:1];

    v14 = +[UIButtonConfiguration plainButtonConfiguration];
    background = [v14 background];
    v16 = [UIBlurEffect effectWithStyle:1];
    [background setVisualEffect:v16];

    [v14 setBackground:background];
    [v14 setCornerStyle:4];
    [v14 setContentInsets:{16.0, 16.0, 16.0, 16.0}];
    [(IOUIANCriticalUIButton *)v3 setConfiguration:v14];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002BA8;
    v20[3] = &unk_10000C4B8;
    v17 = v3;
    v21 = v17;
    v18 = [UIAction actionWithHandler:v20];
    [(IOUIANCriticalUIButton *)v17 addAction:v18 forControlEvents:64];
  }

  return v3;
}

- (IOUIANCriticalUIButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end