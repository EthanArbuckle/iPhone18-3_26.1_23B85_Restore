@interface PHBottomBarMuteButton
- (PHBottomBarMuteButton)initWithConfiguration:(id)configuration appType:(int64_t)type;
- (void)updateButtonAnimated:(BOOL)animated;
- (void)updateButtonColor;
- (void)updateIcon;
@end

@implementation PHBottomBarMuteButton

- (PHBottomBarMuteButton)initWithConfiguration:(id)configuration appType:(int64_t)type
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PHBottomBarMuteButton;
  v8 = [(PHBottomBarMuteButton *)&v11 initWithConfiguration:configurationCopy appType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_muteButtonConfiguration, configuration);
    [(PHBottomBarMuteButton *)v9 updateButtonAnimated:0];
  }

  return v9;
}

- (void)updateButtonAnimated:(BOOL)animated
{
  v3 = 0.170000002;
  if (!animated)
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
    muteButtonConfiguration = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
    selectedColor = [muteButtonConfiguration selectedColor];
  }

  else
  {
    isHighlighted = [(PHBottomBarMuteButton *)self isHighlighted];
    muteButtonConfiguration2 = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
    muteButtonConfiguration = muteButtonConfiguration2;
    if (isHighlighted)
    {
      [muteButtonConfiguration2 highlightedColor];
    }

    else
    {
      [muteButtonConfiguration2 backgroundColor];
    }
    selectedColor = ;
  }

  v6 = selectedColor;
  [(PHBottomBarMuteButton *)self setBackgroundColor:selectedColor];
}

- (void)updateIcon
{
  isSelected = [(PHBottomBarMuteButton *)self isSelected];
  muteButtonConfiguration = [(PHBottomBarMuteButton *)self muteButtonConfiguration];
  v5 = muteButtonConfiguration;
  if (isSelected)
  {
    [muteButtonConfiguration selectedIcon];
  }

  else
  {
    [muteButtonConfiguration icon];
  }
  v6 = ;

  [(PHBottomBarMuteButton *)self setImage:v6 forStates:0];
}

@end