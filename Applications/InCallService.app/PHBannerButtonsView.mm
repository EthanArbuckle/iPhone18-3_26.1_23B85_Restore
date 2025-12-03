@interface PHBannerButtonsView
- (PHBannerButtonsView)initWithState:(unint64_t)state gameControllerContext:(id)context;
- (PHBannerButtonsViewDelegate)delegate;
- (id)audioRouteButtonImageColor;
- (id)buttonConfigurationWithActionType:(int64_t)type;
- (id)buttonWithActionType:(int64_t)type;
- (void)buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)routesChangedForRouteController:(id)controller;
- (void)setAudioRouteButtonSelected:(BOOL)selected;
- (void)setBannerButtonsForGameControllerInactiveIfNecessary;
- (void)setBannerButtonsForIncomingAudioCallIfNecessary;
- (void)setBannerButtonsForIncomingVideoCallIfNecessary;
- (void)setGameControllerContext:(id)context;
- (void)setState:(unint64_t)state;
- (void)transitionFromIncomingCallToOngoingCallState;
- (void)transitionLeftButtonFromIncomingToOngoingCallState;
- (void)transitionRightButtonFromIncomingToOngoingCallState;
- (void)updateAudioRouteButtonBackgroundColor;
- (void)updateAudioRouteButtonImage;
- (void)updateAudioRouteButtonImageColor;
- (void)updateConstraintsForState:(unint64_t)state;
- (void)updateLayoutForState:(unint64_t)state;
@end

@implementation PHBannerButtonsView

- (PHBannerButtonsView)initWithState:(unint64_t)state gameControllerContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = PHBannerButtonsView;
  v8 = [(PHBannerButtonsView *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    objc_storeStrong(&v8->_gameControllerContext, context);
    v10 = +[TUCallCenter sharedInstance];
    routeController = [v10 routeController];
    [routeController addDelegate:v9];

    [(PHBannerButtonsView *)v9 updateLayoutForState:v9->_state];
  }

  return v9;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PHBannerButtonsView;
  [(PHBannerButtonsView *)&v14 layoutSubviews];
  audioRouteVibrancyView = [(PHBannerButtonsView *)self audioRouteVibrancyView];

  if (audioRouteVibrancyView)
  {
    leftButton = [(PHBannerButtonsView *)self leftButton];
    [leftButton bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    audioRouteVibrancyView2 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
    [audioRouteVibrancyView2 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)setState:(unint64_t)state
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    stateCopy = state;
    v8 = 2048;
    state = [(PHBannerButtonsView *)self state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Banner button state updated to %ld (existing state is %ld)", &v6, 0x16u);
  }

  if (self->_state != state)
  {
    self->_state = state;
    [(PHBannerButtonsView *)self updateLayoutForState:state];
  }
}

- (void)setGameControllerContext:(id)context
{
  contextCopy = context;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Banner button game controller context updated", v14, 2u);
  }

  gameControllerContext = self->_gameControllerContext;
  if (gameControllerContext != contextCopy)
  {
    state = [(CNKGameControllerContext *)gameControllerContext state];
    state2 = [(CNKGameControllerContext *)contextCopy state];
    objc_storeStrong(&self->_gameControllerContext, context);
    if (state != state2)
    {
      leftButton = [(PHBannerButtonsView *)self leftButton];

      if (leftButton)
      {
        leftButton2 = [(PHBannerButtonsView *)self leftButton];
        [leftButton2 removeFromSuperview];

        [(PHBannerButtonsView *)self setLeftButton:0];
      }

      rightButton = [(PHBannerButtonsView *)self rightButton];

      if (rightButton)
      {
        rightButton2 = [(PHBannerButtonsView *)self rightButton];
        [rightButton2 removeFromSuperview];

        [(PHBannerButtonsView *)self setRightButton:0];
      }

      [(PHBannerButtonsView *)self updateLayoutForState:self->_state];
    }
  }
}

- (void)setAudioRouteButtonSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    leftButton = [(PHBannerButtonsView *)self leftButton];
    v11[0] = 67109376;
    v11[1] = selectedCopy;
    v12 = 1024;
    isSelected = [leftButton isSelected];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Left button selected state updated to %d (existing state is %d)", v11, 0xEu);
  }

  leftButton2 = [(PHBannerButtonsView *)self leftButton];
  if ([leftButton2 action] == 22)
  {
    leftButton3 = [(PHBannerButtonsView *)self leftButton];
    isSelected2 = [leftButton3 isSelected];

    if (isSelected2 != selectedCopy)
    {
      leftButton4 = [(PHBannerButtonsView *)self leftButton];
      [leftButton4 setSelected:selectedCopy];

      [(PHBannerButtonsView *)self updateAudioRouteButtonBackgroundColor];
      [(PHBannerButtonsView *)self updateAudioRouteButtonImageColor];
    }
  }

  else
  {
  }
}

- (void)updateLayoutForState:(unint64_t)state
{
  gameControllerContext = self->_gameControllerContext;
  if (gameControllerContext && [(CNKGameControllerContext *)gameControllerContext state]== 1)
  {
    [(PHBannerButtonsView *)self setBannerButtonsForGameControllerInactiveIfNecessary];
  }

  else
  {
    switch(state)
    {
      case 2uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingVideoCallIfNecessary];
        break;
      case 1uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingAudioCallIfNecessary];
        v6 = +[TUCallCenter sharedInstance];
        bottomBarCallState = [v6 bottomBarCallState];

        if (bottomBarCallState == 2)
        {
          [(PHBannerButtonsView *)self transitionFromIncomingCallToOngoingCallState];
        }

        break;
      case 0uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingAudioCallIfNecessary];
        break;
    }
  }

  leftButton = [(PHBannerButtonsView *)self leftButton];
  superview = [leftButton superview];

  if (!superview)
  {
    leftButton2 = [(PHBannerButtonsView *)self leftButton];
    [(PHBannerButtonsView *)self addSubview:leftButton2];
  }

  rightButton = [(PHBannerButtonsView *)self rightButton];
  superview2 = [rightButton superview];

  if (!superview2)
  {
    rightButton2 = [(PHBannerButtonsView *)self rightButton];
    [(PHBannerButtonsView *)self addSubview:rightButton2];
  }

  [(PHBannerButtonsView *)self updateConstraintsForState:state];
}

- (void)setBannerButtonsForGameControllerInactiveIfNecessary
{
  leftButton = [(PHBannerButtonsView *)self leftButton];

  if (!leftButton)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:7];
    [(PHBannerButtonsView *)self setLeftButton:v4];

    leftButton2 = [(PHBannerButtonsView *)self leftButton];
    [leftButton2 setHidden:1];
  }

  rightButton = [(PHBannerButtonsView *)self rightButton];

  if (!rightButton)
  {
    v7 = [(PHBannerButtonsView *)self buttonWithActionType:41];
    [(PHBannerButtonsView *)self setRightButton:v7];
  }
}

- (void)setBannerButtonsForIncomingAudioCallIfNecessary
{
  leftButton = [(PHBannerButtonsView *)self leftButton];

  if (!leftButton)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:7];
    [(PHBannerButtonsView *)self setLeftButton:v4];
  }

  rightButton = [(PHBannerButtonsView *)self rightButton];

  if (!rightButton)
  {
    v6 = +[TUCallCenter sharedInstance];
    frontmostCall = [v6 frontmostCall];

    if ([frontmostCall isRTT])
    {
      v7 = 2;
    }

    else if ([frontmostCall isTTY])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(PHBannerButtonsView *)self buttonWithActionType:v7];
    [(PHBannerButtonsView *)self setRightButton:v8];
  }
}

- (void)setBannerButtonsForIncomingVideoCallIfNecessary
{
  leftButton = [(PHBannerButtonsView *)self leftButton];

  if (!leftButton)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:8];
    [(PHBannerButtonsView *)self setLeftButton:v4];
  }

  rightButton = [(PHBannerButtonsView *)self rightButton];

  if (!rightButton)
  {
    v6 = [(PHBannerButtonsView *)self buttonWithActionType:3];
    [(PHBannerButtonsView *)self setRightButton:v6];
  }
}

- (void)updateConstraintsForState:(unint64_t)state
{
  leftButton = [(PHBannerButtonsView *)self leftButton];
  if (leftButton)
  {
    v5 = leftButton;
    rightButton = [(PHBannerButtonsView *)self rightButton];

    if (rightButton)
    {
      leftButton2 = [(PHBannerButtonsView *)self leftButton];
      leadingAnchor = [leftButton2 leadingAnchor];
      leadingAnchor2 = [(PHBannerButtonsView *)self leadingAnchor];
      v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v37[0] = v33;
      rightButton2 = [(PHBannerButtonsView *)self rightButton];
      leadingAnchor3 = [rightButton2 leadingAnchor];
      leftButton3 = [(PHBannerButtonsView *)self leftButton];
      trailingAnchor = [leftButton3 trailingAnchor];
      [(PHBannerButtonsView *)self directionalLayoutMargins];
      v28 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v7 + v7];
      v37[1] = v28;
      rightButton3 = [(PHBannerButtonsView *)self rightButton];
      trailingAnchor2 = [rightButton3 trailingAnchor];
      trailingAnchor3 = [(PHBannerButtonsView *)self trailingAnchor];
      v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v37[2] = v24;
      leftButton4 = [(PHBannerButtonsView *)self leftButton];
      centerYAnchor = [leftButton4 centerYAnchor];
      rightButton4 = [(PHBannerButtonsView *)self rightButton];
      centerYAnchor2 = [rightButton4 centerYAnchor];
      v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v37[3] = v19;
      topAnchor = [(PHBannerButtonsView *)self topAnchor];
      rightButton5 = [(PHBannerButtonsView *)self rightButton];
      topAnchor2 = [rightButton5 topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v37[4] = v9;
      bottomAnchor = [(PHBannerButtonsView *)self bottomAnchor];
      rightButton6 = [(PHBannerButtonsView *)self rightButton];
      bottomAnchor2 = [rightButton6 bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v37[5] = v13;
      widthAnchor = [(PHBannerButtonsView *)self widthAnchor];
      [(PHBannerButtonsView *)self intrinsicWidth];
      v15 = [widthAnchor constraintEqualToConstant:?];
      v37[6] = v15;
      v16 = [NSArray arrayWithObjects:v37 count:7];
      [(PHBannerButtonsView *)self addConstraints:v16];
    }
  }
}

- (void)transitionFromIncomingCallToOngoingCallState
{
  rightButton = [(PHBannerButtonsView *)self rightButton];

  if (rightButton)
  {
    v4 = sub_100004F84();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transitioning the banner buttons from an incoming call to ongoing", v5, 2u);
    }

    [(PHBannerButtonsView *)self transitionLeftButtonFromIncomingToOngoingCallState];
    [(PHBannerButtonsView *)self transitionRightButtonFromIncomingToOngoingCallState];
  }
}

- (void)transitionRightButtonFromIncomingToOngoingCallState
{
  v3 = +[UIColor systemRedColor];
  cGColor = [v3 CGColor];

  v5 = [(PHBannerButtonsView *)self buttonConfigurationWithActionType:1];
  rightButton = [(PHBannerButtonsView *)self rightButton];
  icon = [v5 icon];
  [rightButton setImage:icon forState:0];

  rightButton2 = [(PHBannerButtonsView *)self rightButton];
  imageView = [rightButton2 imageView];
  [imageView setClipsToBounds:0];

  rightButton3 = [(PHBannerButtonsView *)self rightButton];
  imageView2 = [rightButton3 imageView];
  [imageView2 setContentMode:4];

  rightButton4 = [(PHBannerButtonsView *)self rightButton];
  imageView3 = [rightButton4 imageView];
  layer = [imageView3 layer];
  v15 = +[PHBottomBarAnimations rollAnimation];
  [layer addAnimation:v15 forKey:@"mainRightButtonAnimation"];

  rightButton5 = [(PHBannerButtonsView *)self rightButton];
  backgroundColor = [rightButton5 backgroundColor];
  v18 = backgroundColor;
  if (backgroundColor)
  {
    v19 = backgroundColor;
  }

  else
  {
    v19 = +[UIColor clearColor];
  }

  v20 = v19;

  if (v20 && cGColor)
  {
    rightButton6 = [(PHBannerButtonsView *)self rightButton];
    roundView = [rightButton6 roundView];
    layer2 = [roundView layer];
    v24 = +[PHBottomBarAnimations backgroundColorAnimationFromColor:toColor:](PHBottomBarAnimations, "backgroundColorAnimationFromColor:toColor:", [v20 CGColor], cGColor);
    [layer2 addAnimation:v24 forKey:@"buttonColorAnimation"];
  }

  rightButton7 = [(PHBannerButtonsView *)self rightButton];
  [rightButton7 setAction:15];

  v26 = [UIColor colorWithCGColor:cGColor];
  rightButton8 = [(PHBannerButtonsView *)self rightButton];
  [rightButton8 setBackgroundColor:v26];

  CATransform3DMakeRotation(&v35, 2.35619449, 0.0, 0.0, 1.0);
  rightButton9 = [(PHBannerButtonsView *)self rightButton];
  imageView4 = [rightButton9 imageView];
  layer3 = [imageView4 layer];
  v34 = v35;
  [layer3 setTransform:&v34];

  rightButton10 = [(PHBannerButtonsView *)self rightButton];
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"DECLINE" value:&stru_100361FD0 table:@"BottomBar"];
  [rightButton10 setAccessibilityIdentifier:v33];
}

- (void)transitionLeftButtonFromIncomingToOngoingCallState
{
  leftButton = [(PHBannerButtonsView *)self leftButton];
  imageView = [leftButton imageView];
  [imageView setClipsToBounds:0];

  leftButton2 = [(PHBannerButtonsView *)self leftButton];
  imageView2 = [leftButton2 imageView];
  [imageView2 setContentMode:4];

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating the left banner button to handle audio routes", v46, 2u);
  }

  leftButton3 = [(PHBannerButtonsView *)self leftButton];
  [leftButton3 setAction:22];

  v9 = +[UIColor clearColor];
  leftButton4 = [(PHBannerButtonsView *)self leftButton];
  [leftButton4 setBackgroundColor:v9];

  leftButton5 = [(PHBannerButtonsView *)self leftButton];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"AUDIO" value:&stru_100361FD0 table:@"BottomBar"];
  [leftButton5 setAccessibilityIdentifier:v13];

  v14 = +[TUCallCenter sharedInstance];
  routeController = [v14 routeController];
  pickedRoute = [routeController pickedRoute];

  if ([pickedRoute isAuxiliary])
  {
    isSpeaker = 1;
  }

  else
  {
    isSpeaker = [pickedRoute isSpeaker];
  }

  [(PHBannerButtonsView *)self setAudioRouteButtonSelected:isSpeaker];
  [(PHBannerButtonsView *)self updateAudioRouteButtonImage];
  v18 = [UIBlurEffect effectWithStyle:8];
  v19 = [UIVibrancyEffect effectForBlurEffect:v18 style:6];
  v20 = [[UIVisualEffectView alloc] initWithEffect:v19];
  [(PHBannerButtonsView *)self setAudioRouteVibrancyView:v20];

  leftButton6 = [(PHBannerButtonsView *)self leftButton];
  [leftButton6 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  audioRouteVibrancyView = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [audioRouteVibrancyView setFrame:{v23, v25, v27, v29}];

  leftButton7 = [(PHBannerButtonsView *)self leftButton];
  layer = [leftButton7 layer];
  [layer cornerRadius];
  v34 = v33;
  audioRouteVibrancyView2 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  layer2 = [audioRouteVibrancyView2 layer];
  [layer2 setCornerRadius:v34];

  audioRouteVibrancyView3 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [audioRouteVibrancyView3 setClipsToBounds:1];

  audioRouteVibrancyView4 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [audioRouteVibrancyView4 setUserInteractionEnabled:0];

  v39 = +[UIColor whiteColor];
  audioRouteVibrancyView5 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  contentView = [audioRouteVibrancyView5 contentView];
  [contentView setBackgroundColor:v39];

  leftButton8 = [(PHBannerButtonsView *)self leftButton];
  audioRouteVibrancyView6 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  leftButton9 = [(PHBannerButtonsView *)self leftButton];
  imageView3 = [leftButton9 imageView];
  [leftButton8 insertSubview:audioRouteVibrancyView6 belowSubview:imageView3];
}

- (void)updateAudioRouteButtonBackgroundColor
{
  leftButton = [(PHBannerButtonsView *)self leftButton];
  if ([leftButton isSelected])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v3 = ;
  leftButton2 = [(PHBannerButtonsView *)self leftButton];
  [leftButton2 setBackgroundColor:v3];
}

- (void)updateAudioRouteButtonImageColor
{
  audioRouteButtonImageColor = [(PHBannerButtonsView *)self audioRouteButtonImageColor];
  leftButton = [(PHBannerButtonsView *)self leftButton];
  imageView = [leftButton imageView];
  [imageView setTintColor:audioRouteButtonImageColor];
}

- (id)audioRouteButtonImageColor
{
  leftButton = [(PHBannerButtonsView *)self leftButton];
  if ([leftButton isSelected])
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (void)updateAudioRouteButtonImage
{
  v3 = [(PHBannerButtonsView *)self buttonConfigurationWithActionType:22];
  icon = [v3 icon];

  v5 = +[TUCallCenter sharedInstance];
  routeController = [v5 routeController];
  pickedRoute = [routeController pickedRoute];
  isAuxiliary = [pickedRoute isAuxiliary];

  if (isAuxiliary)
  {
    v9 = +[TUCallCenter sharedInstance];
    routeController2 = [v9 routeController];
    pickedRoute2 = [routeController2 pickedRoute];
    audioRouteButtonImageColor = [(PHBannerButtonsView *)self audioRouteButtonImageColor];
    v13 = [pickedRoute2 audioRouteGlyphForRoutePickerWithColor:audioRouteButtonImageColor];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = icon;
    }

    leftButton2 = v15;

    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = leftButton2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting audio route button image to %@", &v20, 0xCu);
    }

    leftButton = [(PHBannerButtonsView *)self leftButton];
    [leftButton setImage:leftButton2 forState:0];
  }

  else
  {
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = icon;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting audio route button image to %@", &v20, 0xCu);
    }

    leftButton2 = [(PHBannerButtonsView *)self leftButton];
    [leftButton2 setImage:icon forState:0];
  }
}

- (id)buttonWithActionType:(int64_t)type
{
  v4 = [(PHBannerButtonsView *)self buttonConfigurationWithActionType:type];
  v5 = [[PHBottomBarButton alloc] initWithConfiguration:v4 appType:2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:self action:"buttonPressed:" forControlEvents:64];
  accessoryIcon = [v4 accessoryIcon];

  if (accessoryIcon)
  {
    v7 = +[CNKGameControllerManager shared];
    if (v7)
    {
      v8 = [v5 action] - 1;
      if (v8 <= 9)
      {
        [v7 addControl:v5 withControlEvents:64 onButtonPress:dword_1002F8DD0[v8]];
      }
    }
  }

  return v5;
}

- (id)buttonConfigurationWithActionType:(int64_t)type
{
  v5 = +[TUCallCenter sharedInstance];
  bottomBarCallState = [v5 bottomBarCallState];

  v7 = [PHBottomBarButtonConfiguration alloc];
  v8 = [[PHBannerButtonsViewGameControllerContext alloc] initWithGameControllerContext:self->_gameControllerContext];
  v9 = [v7 initWithAction:type diameter:bottomBarCallState callState:1 sizeCategory:0 captureView:v8 gameControllerContext:40.0];

  return v9;
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(PHBannerButtonsView *)self delegate];
  action = [pressedCopy action];

  [delegate bannerButtonsView:self didPerformActionType:action];
}

- (void)routesChangedForRouteController:(id)controller
{
  leftButton = [(PHBannerButtonsView *)self leftButton];
  action = [leftButton action];

  if (action == 22)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio routes changed, updating audio route banner button", v11, 2u);
    }

    v7 = +[TUCallCenter sharedInstance];
    routeController = [v7 routeController];
    pickedRoute = [routeController pickedRoute];

    if ([pickedRoute isAuxiliary])
    {
      isSpeaker = 1;
    }

    else
    {
      isSpeaker = [pickedRoute isSpeaker];
    }

    [(PHBannerButtonsView *)self setAudioRouteButtonSelected:isSpeaker];
    [(PHBannerButtonsView *)self updateAudioRouteButtonImage];
  }
}

- (PHBannerButtonsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end