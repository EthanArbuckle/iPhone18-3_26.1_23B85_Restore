@interface PHBottomBarMuteButton
- (PHBottomBarMuteButton)initWithConfiguration:(id)a3 appType:(int64_t)a4;
- (void)updateButtonAnimated:(BOOL)a3;
- (void)updateButtonColor;
- (void)updateIcon;
@end

@implementation PHBottomBarMuteButton

- (PHBottomBarMuteButton)initWithConfiguration:(id)a3 appType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PHBottomBarMuteButton;
  v8 = [(PHBottomBarMuteButton *)&v11 initWithConfiguration:v7 appType:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_muteButtonConfiguration, a3);
    [(PHBottomBarMuteButton *)v9 updateButtonAnimated:0];
  }

  return v9;
}

- (void)updateButtonAnimated:(BOOL)a3
{
  v3 = 0.170000002;
  if (!a3)
  {
    v3 = 0.0;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000963FC;
  v4[3] = &unk_100356988;
  v4[4] = self;
  [UIView animateWithDuration:v4 animations:v3];
}

- (void)updateButtonColor
{
  if ([(PHBottomBarMuteButton *)self isSelected])
  {
    v7 = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
    v3 = [v7 selectedColor];
  }

  else
  {
    v4 = [(PHBottomBarMuteButton *)self isHighlighted];
    v5 = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
    v7 = v5;
    if (v4)
    {
      [v5 highlightedColor];
    }

    else
    {
      [v5 backgroundColor];
    }
    v3 = ;
  }

  v6 = v3;
  [(PHBottomBarMuteButton *)self setBackgroundColor:v3];
}

- (void)updateIcon
{
  v3 = [(PHBottomBarMuteButton *)self isSelected];
  v4 = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
  v5 = v4;
  if (v3)
  {
    [v4 selectedIcon];
  }

  else
  {
    [v4 icon];
  }
  v6 = ;

  [(PHBottomBarMuteButton *)self setImage:v6 forStates:0];
}

@end