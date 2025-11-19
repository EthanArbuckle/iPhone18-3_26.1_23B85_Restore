@interface PHBannerButtonsView
- (PHBannerButtonsView)initWithState:(unint64_t)a3 gameControllerContext:(id)a4;
- (PHBannerButtonsViewDelegate)delegate;
- (id)audioRouteButtonImageColor;
- (id)buttonConfigurationWithActionType:(int64_t)a3;
- (id)buttonWithActionType:(int64_t)a3;
- (void)buttonPressed:(id)a3;
- (void)layoutSubviews;
- (void)routesChangedForRouteController:(id)a3;
- (void)setAudioRouteButtonSelected:(BOOL)a3;
- (void)setBannerButtonsForGameControllerInactiveIfNecessary;
- (void)setBannerButtonsForIncomingAudioCallIfNecessary;
- (void)setBannerButtonsForIncomingVideoCallIfNecessary;
- (void)setGameControllerContext:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)transitionFromIncomingCallToOngoingCallState;
- (void)transitionLeftButtonFromIncomingToOngoingCallState;
- (void)transitionRightButtonFromIncomingToOngoingCallState;
- (void)updateAudioRouteButtonBackgroundColor;
- (void)updateAudioRouteButtonImage;
- (void)updateAudioRouteButtonImageColor;
- (void)updateConstraintsForState:(unint64_t)a3;
- (void)updateLayoutForState:(unint64_t)a3;
@end

@implementation PHBannerButtonsView

- (PHBannerButtonsView)initWithState:(unint64_t)a3 gameControllerContext:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PHBannerButtonsView;
  v8 = [(PHBannerButtonsView *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    objc_storeStrong(&v8->_gameControllerContext, a4);
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 routeController];
    [v11 addDelegate:v9];

    [(PHBannerButtonsView *)v9 updateLayoutForState:v9->_state];
  }

  return v9;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PHBannerButtonsView;
  [(PHBannerButtonsView *)&v14 layoutSubviews];
  v3 = [(PHBannerButtonsView *)self audioRouteVibrancyView];

  if (v3)
  {
    v4 = [(PHBannerButtonsView *)self leftButton];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
    [v13 setFrame:{v6, v8, v10, v12}];
  }
}

- (void)setState:(unint64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = a3;
    v8 = 2048;
    v9 = [(PHBannerButtonsView *)self state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Banner button state updated to %ld (existing state is %ld)", &v6, 0x16u);
  }

  if (self->_state != a3)
  {
    self->_state = a3;
    [(PHBannerButtonsView *)self updateLayoutForState:a3];
  }
}

- (void)setGameControllerContext:(id)a3
{
  v5 = a3;
  v6 = sub_100004F84();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Banner button game controller context updated", v14, 2u);
  }

  gameControllerContext = self->_gameControllerContext;
  if (gameControllerContext != v5)
  {
    v8 = [(CNKGameControllerContext *)gameControllerContext state];
    v9 = [(CNKGameControllerContext *)v5 state];
    objc_storeStrong(&self->_gameControllerContext, a3);
    if (v8 != v9)
    {
      v10 = [(PHBannerButtonsView *)self leftButton];

      if (v10)
      {
        v11 = [(PHBannerButtonsView *)self leftButton];
        [v11 removeFromSuperview];

        [(PHBannerButtonsView *)self setLeftButton:0];
      }

      v12 = [(PHBannerButtonsView *)self rightButton];

      if (v12)
      {
        v13 = [(PHBannerButtonsView *)self rightButton];
        [v13 removeFromSuperview];

        [(PHBannerButtonsView *)self setRightButton:0];
      }

      [(PHBannerButtonsView *)self updateLayoutForState:self->_state];
    }
  }
}

- (void)setAudioRouteButtonSelected:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PHBannerButtonsView *)self leftButton];
    v11[0] = 67109376;
    v11[1] = v3;
    v12 = 1024;
    v13 = [v6 isSelected];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Left button selected state updated to %d (existing state is %d)", v11, 0xEu);
  }

  v7 = [(PHBannerButtonsView *)self leftButton];
  if ([v7 action] == 22)
  {
    v8 = [(PHBannerButtonsView *)self leftButton];
    v9 = [v8 isSelected];

    if (v9 != v3)
    {
      v10 = [(PHBannerButtonsView *)self leftButton];
      [v10 setSelected:v3];

      [(PHBannerButtonsView *)self updateAudioRouteButtonBackgroundColor];
      [(PHBannerButtonsView *)self updateAudioRouteButtonImageColor];
    }
  }

  else
  {
  }
}

- (void)updateLayoutForState:(unint64_t)a3
{
  gameControllerContext = self->_gameControllerContext;
  if (gameControllerContext && [(CNKGameControllerContext *)gameControllerContext state]== 1)
  {
    [(PHBannerButtonsView *)self setBannerButtonsForGameControllerInactiveIfNecessary];
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingVideoCallIfNecessary];
        break;
      case 1uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingAudioCallIfNecessary];
        v6 = +[TUCallCenter sharedInstance];
        v7 = [v6 bottomBarCallState];

        if (v7 == 2)
        {
          [(PHBannerButtonsView *)self transitionFromIncomingCallToOngoingCallState];
        }

        break;
      case 0uLL:
        [(PHBannerButtonsView *)self setBannerButtonsForIncomingAudioCallIfNecessary];
        break;
    }
  }

  v8 = [(PHBannerButtonsView *)self leftButton];
  v9 = [v8 superview];

  if (!v9)
  {
    v10 = [(PHBannerButtonsView *)self leftButton];
    [(PHBannerButtonsView *)self addSubview:v10];
  }

  v11 = [(PHBannerButtonsView *)self rightButton];
  v12 = [v11 superview];

  if (!v12)
  {
    v13 = [(PHBannerButtonsView *)self rightButton];
    [(PHBannerButtonsView *)self addSubview:v13];
  }

  [(PHBannerButtonsView *)self updateConstraintsForState:a3];
}

- (void)setBannerButtonsForGameControllerInactiveIfNecessary
{
  v3 = [(PHBannerButtonsView *)self leftButton];

  if (!v3)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:7];
    [(PHBannerButtonsView *)self setLeftButton:v4];

    v5 = [(PHBannerButtonsView *)self leftButton];
    [v5 setHidden:1];
  }

  v6 = [(PHBannerButtonsView *)self rightButton];

  if (!v6)
  {
    v7 = [(PHBannerButtonsView *)self buttonWithActionType:41];
    [(PHBannerButtonsView *)self setRightButton:v7];
  }
}

- (void)setBannerButtonsForIncomingAudioCallIfNecessary
{
  v3 = [(PHBannerButtonsView *)self leftButton];

  if (!v3)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:7];
    [(PHBannerButtonsView *)self setLeftButton:v4];
  }

  v5 = [(PHBannerButtonsView *)self rightButton];

  if (!v5)
  {
    v6 = +[TUCallCenter sharedInstance];
    v9 = [v6 frontmostCall];

    if ([v9 isRTT])
    {
      v7 = 2;
    }

    else if ([v9 isTTY])
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
  v3 = [(PHBannerButtonsView *)self leftButton];

  if (!v3)
  {
    v4 = [(PHBannerButtonsView *)self buttonWithActionType:8];
    [(PHBannerButtonsView *)self setLeftButton:v4];
  }

  v5 = [(PHBannerButtonsView *)self rightButton];

  if (!v5)
  {
    v6 = [(PHBannerButtonsView *)self buttonWithActionType:3];
    [(PHBannerButtonsView *)self setRightButton:v6];
  }
}

- (void)updateConstraintsForState:(unint64_t)a3
{
  v4 = [(PHBannerButtonsView *)self leftButton];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHBannerButtonsView *)self rightButton];

    if (v6)
    {
      v36 = [(PHBannerButtonsView *)self leftButton];
      v35 = [v36 leadingAnchor];
      v34 = [(PHBannerButtonsView *)self leadingAnchor];
      v33 = [v35 constraintEqualToAnchor:v34];
      v37[0] = v33;
      v32 = [(PHBannerButtonsView *)self rightButton];
      v30 = [v32 leadingAnchor];
      v31 = [(PHBannerButtonsView *)self leftButton];
      v29 = [v31 trailingAnchor];
      [(PHBannerButtonsView *)self directionalLayoutMargins];
      v28 = [v30 constraintEqualToAnchor:v29 constant:v7 + v7];
      v37[1] = v28;
      v27 = [(PHBannerButtonsView *)self rightButton];
      v26 = [v27 trailingAnchor];
      v25 = [(PHBannerButtonsView *)self trailingAnchor];
      v24 = [v26 constraintEqualToAnchor:v25];
      v37[2] = v24;
      v23 = [(PHBannerButtonsView *)self leftButton];
      v21 = [v23 centerYAnchor];
      v22 = [(PHBannerButtonsView *)self rightButton];
      v20 = [v22 centerYAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v37[3] = v19;
      v17 = [(PHBannerButtonsView *)self topAnchor];
      v18 = [(PHBannerButtonsView *)self rightButton];
      v8 = [v18 topAnchor];
      v9 = [v17 constraintEqualToAnchor:v8];
      v37[4] = v9;
      v10 = [(PHBannerButtonsView *)self bottomAnchor];
      v11 = [(PHBannerButtonsView *)self rightButton];
      v12 = [v11 bottomAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v37[5] = v13;
      v14 = [(PHBannerButtonsView *)self widthAnchor];
      [(PHBannerButtonsView *)self intrinsicWidth];
      v15 = [v14 constraintEqualToConstant:?];
      v37[6] = v15;
      v16 = [NSArray arrayWithObjects:v37 count:7];
      [(PHBannerButtonsView *)self addConstraints:v16];
    }
  }
}

- (void)transitionFromIncomingCallToOngoingCallState
{
  v3 = [(PHBannerButtonsView *)self rightButton];

  if (v3)
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
  v4 = [v3 CGColor];

  v5 = [(PHBannerButtonsView *)self buttonConfigurationWithActionType:1];
  v6 = [(PHBannerButtonsView *)self rightButton];
  v7 = [v5 icon];
  [v6 setImage:v7 forState:0];

  v8 = [(PHBannerButtonsView *)self rightButton];
  v9 = [v8 imageView];
  [v9 setClipsToBounds:0];

  v10 = [(PHBannerButtonsView *)self rightButton];
  v11 = [v10 imageView];
  [v11 setContentMode:4];

  v12 = [(PHBannerButtonsView *)self rightButton];
  v13 = [v12 imageView];
  v14 = [v13 layer];
  v15 = +[PHBottomBarAnimations rollAnimation];
  [v14 addAnimation:v15 forKey:@"mainRightButtonAnimation"];

  v16 = [(PHBannerButtonsView *)self rightButton];
  v17 = [v16 backgroundColor];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[UIColor clearColor];
  }

  v20 = v19;

  if (v20 && v4)
  {
    v21 = [(PHBannerButtonsView *)self rightButton];
    v22 = [v21 roundView];
    v23 = [v22 layer];
    v24 = +[PHBottomBarAnimations backgroundColorAnimationFromColor:toColor:](PHBottomBarAnimations, "backgroundColorAnimationFromColor:toColor:", [v20 CGColor], v4);
    [v23 addAnimation:v24 forKey:@"buttonColorAnimation"];
  }

  v25 = [(PHBannerButtonsView *)self rightButton];
  [v25 setAction:15];

  v26 = [UIColor colorWithCGColor:v4];
  v27 = [(PHBannerButtonsView *)self rightButton];
  [v27 setBackgroundColor:v26];

  CATransform3DMakeRotation(&v35, 2.35619449, 0.0, 0.0, 1.0);
  v28 = [(PHBannerButtonsView *)self rightButton];
  v29 = [v28 imageView];
  v30 = [v29 layer];
  v34 = v35;
  [v30 setTransform:&v34];

  v31 = [(PHBannerButtonsView *)self rightButton];
  v32 = [NSBundle bundleForClass:objc_opt_class()];
  v33 = [v32 localizedStringForKey:@"DECLINE" value:&stru_100361FD0 table:@"BottomBar"];
  [v31 setAccessibilityIdentifier:v33];
}

- (void)transitionLeftButtonFromIncomingToOngoingCallState
{
  v3 = [(PHBannerButtonsView *)self leftButton];
  v4 = [v3 imageView];
  [v4 setClipsToBounds:0];

  v5 = [(PHBannerButtonsView *)self leftButton];
  v6 = [v5 imageView];
  [v6 setContentMode:4];

  v7 = sub_100004F84();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating the left banner button to handle audio routes", v46, 2u);
  }

  v8 = [(PHBannerButtonsView *)self leftButton];
  [v8 setAction:22];

  v9 = +[UIColor clearColor];
  v10 = [(PHBannerButtonsView *)self leftButton];
  [v10 setBackgroundColor:v9];

  v11 = [(PHBannerButtonsView *)self leftButton];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"AUDIO" value:&stru_100361FD0 table:@"BottomBar"];
  [v11 setAccessibilityIdentifier:v13];

  v14 = +[TUCallCenter sharedInstance];
  v15 = [v14 routeController];
  v16 = [v15 pickedRoute];

  if ([v16 isAuxiliary])
  {
    v17 = 1;
  }

  else
  {
    v17 = [v16 isSpeaker];
  }

  [(PHBannerButtonsView *)self setAudioRouteButtonSelected:v17];
  [(PHBannerButtonsView *)self updateAudioRouteButtonImage];
  v18 = [UIBlurEffect effectWithStyle:8];
  v19 = [UIVibrancyEffect effectForBlurEffect:v18 style:6];
  v20 = [[UIVisualEffectView alloc] initWithEffect:v19];
  [(PHBannerButtonsView *)self setAudioRouteVibrancyView:v20];

  v21 = [(PHBannerButtonsView *)self leftButton];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [v30 setFrame:{v23, v25, v27, v29}];

  v31 = [(PHBannerButtonsView *)self leftButton];
  v32 = [v31 layer];
  [v32 cornerRadius];
  v34 = v33;
  v35 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  v36 = [v35 layer];
  [v36 setCornerRadius:v34];

  v37 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [v37 setClipsToBounds:1];

  v38 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  [v38 setUserInteractionEnabled:0];

  v39 = +[UIColor whiteColor];
  v40 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  v41 = [v40 contentView];
  [v41 setBackgroundColor:v39];

  v42 = [(PHBannerButtonsView *)self leftButton];
  v43 = [(PHBannerButtonsView *)self audioRouteVibrancyView];
  v44 = [(PHBannerButtonsView *)self leftButton];
  v45 = [v44 imageView];
  [v42 insertSubview:v43 belowSubview:v45];
}

- (void)updateAudioRouteButtonBackgroundColor
{
  v5 = [(PHBannerButtonsView *)self leftButton];
  if ([v5 isSelected])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor clearColor];
  }
  v3 = ;
  v4 = [(PHBannerButtonsView *)self leftButton];
  [v4 setBackgroundColor:v3];
}

- (void)updateAudioRouteButtonImageColor
{
  v5 = [(PHBannerButtonsView *)self audioRouteButtonImageColor];
  v3 = [(PHBannerButtonsView *)self leftButton];
  v4 = [v3 imageView];
  [v4 setTintColor:v5];
}

- (id)audioRouteButtonImageColor
{
  v2 = [(PHBannerButtonsView *)self leftButton];
  if ([v2 isSelected])
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
  v4 = [v3 icon];

  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 routeController];
  v7 = [v6 pickedRoute];
  v8 = [v7 isAuxiliary];

  if (v8)
  {
    v9 = +[TUCallCenter sharedInstance];
    v10 = [v9 routeController];
    v11 = [v10 pickedRoute];
    v12 = [(PHBannerButtonsView *)self audioRouteButtonImageColor];
    v13 = [v11 audioRouteGlyphForRoutePickerWithColor:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v4;
    }

    v16 = v15;

    v17 = sub_100004F84();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting audio route button image to %@", &v20, 0xCu);
    }

    v18 = [(PHBannerButtonsView *)self leftButton];
    [v18 setImage:v16 forState:0];
  }

  else
  {
    v19 = sub_100004F84();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting audio route button image to %@", &v20, 0xCu);
    }

    v16 = [(PHBannerButtonsView *)self leftButton];
    [v16 setImage:v4 forState:0];
  }
}

- (id)buttonWithActionType:(int64_t)a3
{
  v4 = [(PHBannerButtonsView *)self buttonConfigurationWithActionType:a3];
  v5 = [[PHBottomBarButton alloc] initWithConfiguration:v4 appType:2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:self action:"buttonPressed:" forControlEvents:64];
  v6 = [v4 accessoryIcon];

  if (v6)
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

- (id)buttonConfigurationWithActionType:(int64_t)a3
{
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 bottomBarCallState];

  v7 = [PHBottomBarButtonConfiguration alloc];
  v8 = [[PHBannerButtonsViewGameControllerContext alloc] initWithGameControllerContext:self->_gameControllerContext];
  v9 = [v7 initWithAction:a3 diameter:v6 callState:1 sizeCategory:0 captureView:v8 gameControllerContext:40.0];

  return v9;
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  v6 = [(PHBannerButtonsView *)self delegate];
  v5 = [v4 action];

  [v6 bannerButtonsView:self didPerformActionType:v5];
}

- (void)routesChangedForRouteController:(id)a3
{
  v4 = [(PHBannerButtonsView *)self leftButton];
  v5 = [v4 action];

  if (v5 == 22)
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio routes changed, updating audio route banner button", v11, 2u);
    }

    v7 = +[TUCallCenter sharedInstance];
    v8 = [v7 routeController];
    v9 = [v8 pickedRoute];

    if ([v9 isAuxiliary])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v9 isSpeaker];
    }

    [(PHBannerButtonsView *)self setAudioRouteButtonSelected:v10];
    [(PHBannerButtonsView *)self updateAudioRouteButtonImage];
  }
}

- (PHBannerButtonsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end