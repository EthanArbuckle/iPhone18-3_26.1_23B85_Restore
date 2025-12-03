@interface PHBottomBar
+ (double)ambientWidth;
+ (double)buttonHeightWithoutDefaultPadding;
+ (double)defaultBottomSupplementalButtonSpacing;
+ (double)defaultInterButtonSpacing;
+ (double)defaultSideMarginForDoubleButton;
+ (double)defaultWidth;
+ (double)defaultYOffsetForBottomButtons;
- (BOOL)animateFromState:(int64_t)state toState:(int64_t)toState completion:(id)completion;
- (BOOL)callScreeningAvailable;
- (BOOL)currentCallIsMuted;
- (BOOL)isSizeValidLandscape:(CGSize)landscape;
- (BOOL)liveReplyAvailableForCall:(id)call;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldShowActionTypeAudioRoute;
- (BOOL)shouldShowActionTypeCameraFlip;
- (BOOL)shouldShowActionTypeEffects;
- (BOOL)shouldShowActionTypePhotoCapture;
- (BOOL)shouldShowActionTypePunchOut;
- (BOOL)shouldShowActionTypeSendToVoicemail;
- (BOOL)shouldShowAnswerRTTButton;
- (BOOL)shouldShowUseRTTButton;
- (BOOL)shouldUseLayoutAsCallScreening;
- (BOOL)updatedSelectedStateForActionType:(int64_t)type;
- (CGRect)frameForControlWithActionType:(int64_t)type;
- (CGSize)effectiveSize;
- (CGSize)intrinsicContentSize;
- (CGSize)rotatedTargetSizeOfParent;
- (CGSize)trackSize;
- (NSArray)buttonsForAmbientTransition;
- (PHBottomBar)initWithCallDisplayStyleManager:(id)manager;
- (PHBottomBar)initWithCallDisplayStyleManager:(id)manager isAudioCall:(BOOL)call;
- (PHBottomBar)initWithFrame:(CGRect)frame;
- (PHBottomBarDelegateProtocol)delegate;
- (UIButton)useRTTButton;
- (UIView)mainButtonLayoutGuide;
- (UIView)topLayoutGuide;
- (double)heightOfCallScreeningButtonPlusButtonSpacing;
- (double)sideMarginForDoubleButton;
- (double)sideMarginForFaceTimeButtons;
- (double)sideMarginForFaceTimeInCallButtons;
- (id)_supplementalBottomLeftButtonLayoutConstraints;
- (id)_supplementalBottomRightButtonLayoutConstraints;
- (id)audioRouteImageWithColor:(id)color;
- (id)buttonsConstraintsForIPad;
- (id)constraintsForState:(int64_t)state;
- (id)controlForActionType:(int64_t)type;
- (id)customTitleStringForActionType:(int64_t)type givenDefaultTitle:(id)title;
- (id)makeButtonWithType:(int64_t)type title:(id)title image:(id)image color:(id)color font:(id)font fontColor:(id)fontColor;
- (id)makeButtonWithType:(int64_t)type title:(id)title image:(id)image color:(id)color font:(id)font fontColor:(id)fontColor diameter:(double)diameter;
- (id)makeCaptureButtonWithDiameter:(double)diameter;
- (id)makeSlidingButtonWithType:(int)type;
- (id)nameForActionType:(int64_t)type;
- (id)updatedImageForActionType:(int64_t)type givenDefaultImage:(id)image;
- (id)updatedSelectedImageForActionType:(int64_t)type givenDefaultSelectedImage:(id)image;
- (id)viewLabels;
- (int64_t)_gestureStateToCompletionState:(int64_t)state;
- (int64_t)currentBottomBarCallState;
- (int64_t)updatedActionTypeForActionType:(int64_t)type;
- (void)_startShopDemoMode;
- (void)addSubview:(id)subview;
- (void)ambientAnimateFromIncomingCallStateToCallScreeningStateWithCompletion:(id)completion;
- (void)animateFromFaceTimeOutgoingStateToFaceTimeInCallState:(int64_t)state withCompletion:(id)completion;
- (void)animateFromIncomingCallStateToFaceTimeInCallState:(int64_t)state withCompletion:(id)completion;
- (void)animateFromIncomingCallStateToInCallState:(int64_t)state withCompletion:(id)completion;
- (void)animateFromOutgoingStateToCallbackAndMessageUIToState:(int64_t)state withCompletion:(id)completion;
- (void)animateFromOutgoingStateToInCallStateWithCompletion:(id)completion;
- (void)animateInSupplementalBottomRightButton:(id)button WithCompletion:(id)completion;
- (void)animateOutSupplementalBottomLeftButtonToState:(int64_t)state withCompletion:(id)completion;
- (void)buttonLongPressed:(id)pressed;
- (void)buttonPressed:(id)pressed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareButtonsForAnimationBegin;
- (void)prepareButtonsForAnimationEnd;
- (void)refreshCustomizedActionTypeTitleForButton:(id)button;
- (void)refreshCustomizedActionTypeTitles;
- (void)refreshEndCallButton;
- (void)refreshUseRTTButton;
- (void)removeAllButtons;
- (void)setAction:(int64_t)action enabled:(BOOL)enabled;
- (void)setAction:(int64_t)action selected:(BOOL)selected;
- (void)setAnimating:(BOOL)animating;
- (void)setCurrentState:(int64_t)state animated:(BOOL)animated animationCompletionBlock:(id)block;
- (void)setDeclineAndMessageIsAvailable:(BOOL)available;
- (void)setDeclineAndRemindIsAvailable:(BOOL)available;
- (void)setOrientation:(int64_t)orientation;
- (void)setPrefersWhiteButtonTextColor:(BOOL)color;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUsesLowerButtons:(BOOL)buttons;
- (void)setupCallScreeningMoreButton;
- (void)slidingButton:(id)button didSlideToProportion:(double)proportion;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMainButtonLayoutGuide;
- (void)updateTopLayoutGuide;
- (void)willFinishSlideForSlidingButton:(id)button;
@end

@implementation PHBottomBar

- (BOOL)callScreeningAvailable
{
  v2 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v2 frontmostAudioOrVideoCall];

  provider = [frontmostAudioOrVideoCall provider];
  if ([provider isFaceTimeProvider])
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 currentCallCount] < 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = +[CNKFeatures sharedInstance];
  lvmEverywhereEnabled = [v7 lvmEverywhereEnabled];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v9 userInterfaceIdiom];
  if (userInterfaceIdiom)
  {
    v11 = lvmEverywhereEnabled;
  }

  else
  {
    v11 = 1;
  }

  if (lvmEverywhereEnabled && userInterfaceIdiom)
  {
    v12 = +[UIDevice currentDevice];
    v11 = [v12 userInterfaceIdiom] == 1;
  }

  LOBYTE(v13) = 0;
  if (TUCallScreeningEnabledM3() && v11)
  {
    v14 = +[UIApplication sharedApplication];
    delegate = [v14 delegate];
    if ([delegate isAnsweringMachineAvailable] && objc_msgSend(frontmostAudioOrVideoCall, "isEligibleForManualScreening"))
    {
      provider2 = [frontmostAudioOrVideoCall provider];
      v13 = [provider2 isSystemProvider] & v6;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (void)removeAllButtons
{
  [(UIButton *)self->_supplementalTopLeftButton removeFromSuperview];
  supplementalTopLeftButton = self->_supplementalTopLeftButton;
  self->_supplementalTopLeftButton = 0;

  [(UIButton *)self->_supplementalTopRightButton removeFromSuperview];
  supplementalTopRightButton = self->_supplementalTopRightButton;
  self->_supplementalTopRightButton = 0;

  [(UIButton *)self->_supplementalBottomLeftButton removeFromSuperview];
  supplementalBottomLeftButton = self->_supplementalBottomLeftButton;
  self->_supplementalBottomLeftButton = 0;

  [(UIButton *)self->_supplementalBottomRightButton removeFromSuperview];
  supplementalBottomRightButton = self->_supplementalBottomRightButton;
  self->_supplementalBottomRightButton = 0;

  [(UIButton *)self->_mainLeftButton removeFromSuperview];
  mainLeftButton = self->_mainLeftButton;
  self->_mainLeftButton = 0;

  [(UIButton *)self->_mainRightButton removeFromSuperview];
  mainRightButton = self->_mainRightButton;
  self->_mainRightButton = 0;

  [(PHSlidingButton *)self->_slidingButton removeFromSuperview];
  slidingButton = self->_slidingButton;
  self->_slidingButton = 0;

  [(UIButton *)self->_sideButtonRight removeFromSuperview];
  sideButtonRight = self->_sideButtonRight;
  self->_sideButtonRight = 0;

  [(UIButton *)self->_sideButtonLeft removeFromSuperview];
  sideButtonLeft = self->_sideButtonLeft;
  self->_sideButtonLeft = 0;
}

- (PHBottomBarDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)currentBottomBarCallState
{
  if (+[PHSOSViewController isCallBufferDismissalAssertionActive])
  {
    return 2;
  }

  delegate = [(PHBottomBar *)self delegate];
  v5 = [delegate bottomBarCallStateInBar:self];

  return v5;
}

- (UIButton)useRTTButton
{
  v3 = sub_10001A58C();
  v4 = +[TUCallCenter sharedInstance];
  frontmostCall = [v4 frontmostCall];

  localSenderIdentityUUID = [frontmostCall localSenderIdentityUUID];
  v7 = [v3 rttDisplayName:0 forSubscriptionContextUUID:localSenderIdentityUUID];
  v8 = +[PHUIConfiguration inCallBottomBarSpacing];
  v9 = 15.0;
  if (!v8)
  {
    v9 = 14.0;
  }

  v10 = [UIFont systemFontOfSize:v9];
  v11 = +[UIColor whiteColor];
  v12 = [(PHBottomBar *)self makeButtonWithType:32 title:v7 image:0 color:0 font:v10 fontColor:v11];

  return v12;
}

- (BOOL)shouldShowUseRTTButton
{
  delegate = [(PHBottomBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PHBottomBar *)self delegate];
    shouldShowUseRTT = [delegate2 shouldShowUseRTT];
  }

  else
  {
    shouldShowUseRTT = 0;
  }

  return shouldShowUseRTT;
}

- (id)viewLabels
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  mainLeftButton = self->_mainLeftButton;
  if (mainLeftButton)
  {
    [v3 setValue:mainLeftButton forKey:@"_mainLeftButton"];
  }

  mainRightButton = self->_mainRightButton;
  if (mainRightButton)
  {
    [v4 setValue:mainRightButton forKey:@"_mainRightButton"];
  }

  supplementalTopRightButton = self->_supplementalTopRightButton;
  if (supplementalTopRightButton)
  {
    [v4 setValue:supplementalTopRightButton forKey:@"_supplementalTopRightButton"];
  }

  supplementalTopLeftButton = self->_supplementalTopLeftButton;
  if (supplementalTopLeftButton)
  {
    [v4 setValue:supplementalTopLeftButton forKey:@"_supplementalTopLeftButton"];
  }

  supplementalBottomRightButton = self->_supplementalBottomRightButton;
  if (supplementalBottomRightButton)
  {
    [v4 setValue:supplementalBottomRightButton forKey:@"_supplementalBottomRightButton"];
  }

  supplementalBottomLeftButton = self->_supplementalBottomLeftButton;
  if (supplementalBottomLeftButton)
  {
    [v4 setValue:supplementalBottomLeftButton forKey:@"_supplementalBottomLeftButton"];
  }

  slidingButton = self->_slidingButton;
  if (slidingButton)
  {
    [v4 setValue:slidingButton forKey:@"_slidingButton"];
  }

  sideButtonLeft = self->_sideButtonLeft;
  if (sideButtonLeft)
  {
    [v4 setValue:sideButtonLeft forKey:@"_sideButtonLeft"];
  }

  sideButtonRight = self->_sideButtonRight;
  if (sideButtonRight)
  {
    [v4 setValue:sideButtonRight forKey:@"_sideButtonRight"];
  }

  return v4;
}

- (double)sideMarginForDoubleButton
{
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  if ([callDisplayStyleManager usesLargeFormatUI])
  {
    isAudioCall = self->_isAudioCall;

    result = 0.0;
    if (isAudioCall)
    {
      return result;
    }
  }

  else
  {
  }

  if (-[PHBottomBar callScreeningAvailable](self, "callScreeningAvailable", result) || (+[PHInCallUtilities sharedInstance](PHInCallUtilities, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isIPadIdiom], v6, (v7 & 1) == 0))
  {
    v9 = +[UIScreen mainScreen];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    if (v11 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    v15 = 0.102;
  }

  else
  {
    if (+[PHUIConfiguration inCallBottomBarSpacing]== 6)
    {
      v8 = 228.0;
    }

    else
    {
      v8 = dbl_1002F95E0[+[PHUIConfiguration inCallBottomBarSpacing]== 3];
    }

    [(PHBottomBar *)self bounds];
    v17 = v16 - v8;
    +[PHBottomBarButtonConfiguration defaultWidth];
    v14 = v17 - v18;
    v15 = 0.5;
  }

  return v14 * v15;
}

- (double)sideMarginForFaceTimeButtons
{
  if (qword_1003B1008 != -1)
  {
    sub_1002571BC();
  }

  return *&qword_1003B1000;
}

- (double)sideMarginForFaceTimeInCallButtons
{
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  if ([callDisplayStyleManager usesLargeFormatUI])
  {
    isAudioCall = self->_isAudioCall;

    result = 0.0;
    if (isAudioCall)
    {
      return result;
    }
  }

  else
  {
  }

  if (qword_1003B1018 != -1)
  {
    sub_1002571D0();
  }

  return *&qword_1003B1010;
}

+ (double)defaultBottomSupplementalButtonSpacing
{
  v2 = 4.5;
  if (+[PHUIConfiguration inCallBottomBarSpacing]&& !sub_10001AD34())
  {
    if (+[PHUIConfiguration inCallBottomBarSpacing]== 4)
    {
      return 28.0;
    }

    else
    {
      return 14.0;
    }
  }

  return v2;
}

- (double)heightOfCallScreeningButtonPlusButtonSpacing
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (v5 < v7)
  {
    v5 = v7;
  }

  if ([(PHBottomBar *)self currentState]== 4 || [(PHBottomBar *)self currentState]== 5)
  {
    +[PHUIConfiguration inComingCallSupplementalButtonAndMainButtonSpacingRatio];
    return v5 * v8 + 44.0 + -6.0;
  }

  else
  {
    +[PHUIConfiguration inComingCallSupplementalButtonAndMainButtonSpacingRatio];
    return v5 * v10 + 44.0;
  }
}

- (BOOL)shouldUseLayoutAsCallScreening
{
  v3 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v3 isIPadIdiom];

  if (isIPadIdiom)
  {
    callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager usesLargeFormatUI])
    {
      v6 = !self->_isAudioCall;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

- (id)_supplementalBottomLeftButtonLayoutConstraints
{
  v3 = +[NSMutableArray array];
  centerXAnchor = [(PHBottomBar *)self centerXAnchor];
  supplementalBottomLeftButton = [(PHBottomBar *)self supplementalBottomLeftButton];
  centerXAnchor2 = [supplementalBottomLeftButton centerXAnchor];
  +[PHInCallNumberPadButton defaultSize];
  v8 = v7;
  v9 = sub_10001AD34();
  v10 = 0.0;
  if (v9)
  {
    v10 = 12.0;
  }

  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v8 + v10];

  [v11 setIdentifier:@"supplementalBottomLeftButtonCenterXAnchorLayoutConstraint"];
  [v3 addObject:v11];
  supplementalBottomLeftButton2 = [(PHBottomBar *)self supplementalBottomLeftButton];
  centerYAnchor = [supplementalBottomLeftButton2 centerYAnchor];
  mainLeftButton = [(PHBottomBar *)self mainLeftButton];
  centerYAnchor2 = [mainLeftButton centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v16 setIdentifier:@"supplementalBottomLeftButtonCenterYAnchorLayoutConstraint"];
  [v3 addObject:v16];

  return v3;
}

- (id)_supplementalBottomRightButtonLayoutConstraints
{
  v3 = +[NSMutableArray array];
  supplementalBottomRightButton = [(PHBottomBar *)self supplementalBottomRightButton];
  centerXAnchor = [supplementalBottomRightButton centerXAnchor];
  centerXAnchor2 = [(PHBottomBar *)self centerXAnchor];
  +[PHInCallNumberPadButton defaultSize];
  v8 = v7;
  v9 = sub_10001AD34();
  v10 = 0.0;
  if (v9)
  {
    v10 = 12.0;
  }

  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:v8 + v10];

  [v11 setIdentifier:@"supplementalBottomRightButtonCenterXAnchorLayoutConstraint"];
  [v3 addObject:v11];
  supplementalBottomRightButton2 = [(PHBottomBar *)self supplementalBottomRightButton];
  centerYAnchor = [supplementalBottomRightButton2 centerYAnchor];
  mainLeftButton = [(PHBottomBar *)self mainLeftButton];
  centerYAnchor2 = [mainLeftButton centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [v16 setIdentifier:@"supplementalBottomRightButtonCenterYAnchorLayoutConstraint"];
  [v3 addObject:v16];

  return v3;
}

- (void)refreshUseRTTButton
{
  if ([(PHBottomBar *)self currentState]== 11)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001C518;
    v3[3] = &unk_100356988;
    v3[4] = self;
    [UIView animateWithDuration:v3 animations:0 completion:0.25];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHBottomBar;
  [(PHBottomBar *)&v3 layoutSubviews];
  [(PHBottomBar *)self updateTopLayoutGuide];
  [(PHBottomBar *)self updateMainButtonLayoutGuide];
}

- (void)updateTopLayoutGuide
{
  [(PHBottomBar *)self bounds];
  v4 = v3;
  [(PHBottomBar *)self bounds];
  v28 = 0u;
  v29 = 0u;
  v6 = v5 * 0.5;
  v30 = 0u;
  v31 = 0u;
  subviews = [(PHBottomBar *)self subviews];
  v8 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    v12 = v6;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (v14 != self->_topLayoutGuide)
        {
          [*(*(&v28 + 1) + 8 * i) frame];
          if (v15 < v4)
          {
            [(UIView *)v14 frame];
            v4 = v16;
          }

          [(UIView *)v14 frame];
          if (v17 < v12)
          {
            [(UIView *)v14 frame];
            v12 = v18;
          }

          [(UIView *)v14 frame];
          v20 = v19;
          [(UIView *)v14 frame];
          v9 = v20 + v21;
          if (v20 + v21 > v6)
          {
            [(UIView *)v14 frame];
            v23 = v22;
            [(UIView *)v14 frame];
            v6 = v23 + v24;
          }
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:{16, v9}];
    }

    while (v10);
  }

  else
  {
    v12 = v6;
  }

  [(UIView *)self->_topLayoutGuide frame];
  if (v4 != v25)
  {
    if (v4 < 0.0)
    {
      v26 = sub_100004F84();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PHBottomBar subview was outside of PHBottomBar bounds. Setting topLayoutGuide to 0", v27, 2u);
      }

      v4 = 0.0;
    }

    [(UIView *)self->_topLayoutGuide setFrame:v12, v4, v6, 1.0];
  }
}

- (void)updateMainButtonLayoutGuide
{
  [(PHBottomBar *)self bounds];
  v4 = v3;
  [(PHBottomBar *)self bounds];
  sideButtonLeft = self->_sideButtonLeft;
  if (!sideButtonLeft)
  {
    v16 = 120;
    mainLeftButton = self->_mainLeftButton;
    if (mainLeftButton)
    {
      [(UIButton *)mainLeftButton frame];
      v4 = v18;
      [(UIButton *)self->_mainLeftButton frame];
      v9 = v19;
      mainRightButton = self->_mainRightButton;
      if (mainRightButton)
      {
LABEL_13:
        [(UIButton *)mainRightButton frame];
        v11 = v4 + v24;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 128;
      slidingButton = self->_mainRightButton;
      if (!slidingButton)
      {
        v16 = 168;
        slidingButton = self->_slidingButton;
        if (!slidingButton)
        {
          v9 = v5;
          v11 = 10.0;
          goto LABEL_14;
        }
      }

      [slidingButton frame];
      v4 = v22;
      [*(&self->super.super.super.isa + v16) frame];
      v9 = v23;
    }

    mainRightButton = *(&self->super.super.super.isa + v16);
    goto LABEL_13;
  }

  [(UIButton *)sideButtonLeft frame];
  v4 = v7;
  [(UIButton *)self->_sideButtonLeft frame];
  v9 = v8;
  [(UIButton *)self->_sideButtonLeft frame];
  v11 = v4 + v10;
  v12 = self->_mainLeftButton;
  if (v12)
  {
    [(UIButton *)v12 frame];
    v11 = v11 + v13;
  }

  v14 = self->_mainRightButton;
  if (v14)
  {
    [(UIButton *)v14 frame];
    v11 = v11 + v15;
  }

LABEL_14:
  [(UIView *)self->_mainButtonLayoutGuide frame];
  if (v4 != v25 || ([(UIView *)self->_mainButtonLayoutGuide frame], v9 != v26))
  {
    if (v4 < 0.0)
    {
      v27 = sub_100004F84();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PHBottomBar subview was outside of PHBottomBar bounds. Setting mainButtonLayoutGuide x value to 0", buf, 2u);
      }

      v4 = 0.0;
    }

    if (v9 < 0.0)
    {
      v28 = sub_100004F84();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PHBottomBar subview was outside of PHBottomBar bounds. Setting mainButtonLayoutGuide y value to 0", v29, 2u);
      }

      v9 = 0.0;
    }

    [(UIView *)self->_mainButtonLayoutGuide setFrame:v4, v9, v11, 1.0];
  }
}

+ (double)defaultSideMarginForDoubleButton
{
  v2 = 228.0;
  if (+[PHUIConfiguration inCallBottomBarSpacing](PHUIConfiguration, "inCallBottomBarSpacing") != 6 && +[PHUIConfiguration inCallBottomBarSpacing]!= 3)
  {
    if (sub_10001AD34())
    {
      return 25.0;
    }

    else
    {
      return 31.0;
    }
  }

  return v2;
}

+ (double)defaultInterButtonSpacing
{
  v2 = +[PHUIConfiguration inCallBottomBarSpacing];
  result = 30.0;
  if (v2 != 6)
  {
    v4 = +[PHUIConfiguration inCallBottomBarSpacing];
    result = 24.0;
    if (v4 == 3)
    {
      return 30.0;
    }
  }

  return result;
}

+ (double)defaultWidth
{
  if (+[PHUIConfiguration inCallBottomBarSpacing]== 6)
  {
    return 414.0;
  }

  v3 = +[PHUIConfiguration inCallBottomBarSpacing];
  result = 320.0;
  if (v3 == 3)
  {
    return 414.0;
  }

  return result;
}

+ (double)ambientWidth
{
  +[PHUIConfiguration ambientInCallControlSize];
  v3 = v2;
  +[PHUIConfiguration ambientInCallControlSpacing];
  return v4 + v4 + v3 * 3.0;
}

+ (double)defaultYOffsetForBottomButtons
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  result = 0.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v5 = +[PHUIConfiguration inCallBottomBarSpacing];
    result = 40.0;
    if (!v5)
    {
      return 30.0;
    }
  }

  return result;
}

- (PHBottomBar)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = PHBottomBar;
  v3 = [(PHBottomBar *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHBottomBar *)v3 setDeclineAndMessageIsAvailable:1];
    [(PHBottomBar *)v4 setDeclineAndRemindIsAvailable:1];
    v5 = +[UIColor clearColor];
    [(PHBottomBar *)v4 setBackgroundColor:v5];

    [(PHBottomBar *)v4 setOpaque:0];
    layer = [(PHBottomBar *)v4 layer];
    [layer setHitTestsAsOpaque:1];

    +[PHBottomBar defaultBottomMargin];
    [(PHBottomBar *)v4 setBottomMargin:?];
    +[PHBottomBar defaultYOffsetForBottomButtons];
    [(PHBottomBar *)v4 setYOffsetForLoweredButtons:?];
    v4->_blursBackground = 1;
    v4->_currentState = -1;
    layer2 = [(PHBottomBar *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];

    layer3 = [(PHBottomBar *)v4 layer];
    [layer3 setAllowsGroupBlending:0];

    v9 = +[NSMutableArray array];
    pendingStateBlocks = v4->_pendingStateBlocks;
    v4->_pendingStateBlocks = v9;

    v11 = +[TUCallCenter sharedInstance];
    callCenter = v4->_callCenter;
    v4->_callCenter = v11;

    v13 = objc_alloc_init(UINotificationFeedbackGenerator);
    [(PHBottomBar *)v4 setAlertFeedbackGenerator:v13];

    if ([(PHBottomBar *)v4 callScreeningAvailable]|| [(PHBottomBar *)v4 shouldUseLayoutAsCallScreening])
    {
      captureView = [(PHBottomBar *)v4 captureView];

      if (!captureView)
      {
        v15 = objc_alloc_init(_UIVisualEffectBackdropView);
        [(PHBottomBar *)v4 setCaptureView:v15];

        captureView2 = [(PHBottomBar *)v4 captureView];
        [captureView2 setAutoresizingMask:18];

        captureView3 = [(PHBottomBar *)v4 captureView];
        [(PHBottomBar *)v4 insertSubview:captureView3 atIndex:0];

        captureView4 = [(PHBottomBar *)v4 captureView];
        [captureView4 setRenderMode:1];

        captureView5 = [(PHBottomBar *)v4 captureView];
        captureGroup = [captureView5 captureGroup];
        [captureGroup setGroupName:@"PHBottomBarButtonCaptureGroup"];
      }
    }
  }

  return v4;
}

- (PHBottomBar)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v6 = [(PHBottomBar *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
  }

  return v7;
}

- (PHBottomBar)initWithCallDisplayStyleManager:(id)manager isAudioCall:(BOOL)call
{
  result = [(PHBottomBar *)self initWithCallDisplayStyleManager:manager];
  if (result)
  {
    result->_isAudioCall = call;
  }

  return result;
}

- (void)dealloc
{
  [(PHSlidingButton *)self->_slidingButton setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHBottomBar;
  [(PHBottomBar *)&v3 dealloc];
}

- (CGSize)intrinsicContentSize
{
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  if ([callDisplayStyleManager usesLargeFormatUI])
  {
    isAudioCall = self->_isAudioCall;

    if (isAudioCall)
    {
      v45.receiver = self;
      v45.super_class = PHBottomBar;
      [(PHBottomBar *)&v45 intrinsicContentSize];
      v6 = v5;
      v8 = v7;
      goto LABEL_39;
    }
  }

  else
  {
  }

  callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    +[PHBottomBar ambientWidth];
    v6 = v11;
    callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager3 callDisplayStyle] == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v8 = v13;
    }

    else
    {
      callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager4 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v8 = v23;
    }

    goto LABEL_39;
  }

  v14 = +[UIScreen mainScreen];
  [v14 bounds];
  v6 = v15;
  v17 = v16;

  if (v6 >= v17)
  {
    height = v6;
  }

  else
  {
    height = v17;
  }

  v19 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [v19 isIPadIdiom];

  if (isIPadIdiom)
  {
    p_rotatedTargetSizeOfParent = &self->_rotatedTargetSizeOfParent;
    if ([(PHBottomBar *)self isSizeValidLandscape:self->_rotatedTargetSizeOfParent.width, self->_rotatedTargetSizeOfParent.height])
    {
      if (p_rotatedTargetSizeOfParent->width >= self->_rotatedTargetSizeOfParent.height)
      {
        height = self->_rotatedTargetSizeOfParent.height;
      }

      else
      {
        height = p_rotatedTargetSizeOfParent->width;
      }
    }

    else if (v6 >= v17)
    {
      height = v17;
    }

    else
    {
      height = v6;
    }
  }

  if (v6 >= v17)
  {
    v6 = v17;
  }

  if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening]|| [(PHBottomBar *)self callScreeningAvailable])
  {
    +[PHUIConfiguration inComingCallSupplementalButtonAndMainButtonSpacingRatio];
    v25 = height * v24;
    callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager5 callDisplayStyle] == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
    }

    else
    {
      callDisplayStyleManager6 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager6 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }
    }

    v28 = v6 * 0.1976;
    v29 = roundf(v28);
    +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
    v31 = height * v30;
    v32 = +[PHInCallUIUtilities isSpringBoardPasscodeLocked];
    v33 = v29 + 12.0;
    v34 = v25 + -6.0;
    v35 = v31 + -6.0;
    if (!v32)
    {
      v34 = v25;
      v33 = v29;
      v35 = v31;
    }

    v8 = v35 + v33 + v34 + 44.0;
  }

  else
  {
    callDisplayStyleManager7 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager7 usesLargeFormatUI])
    {
      v39 = self->_isAudioCall;

      if (v39)
      {
        callDisplayStyleManager8 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager8 callDisplayStyle] == 3)
        {
          +[PHUIConfiguration ambientInCallControlSize];
          v8 = v41;
        }

        else
        {
          callDisplayStyleManager9 = [(PHBottomBar *)self callDisplayStyleManager];
          if ([callDisplayStyleManager9 usesLargeFormatUI] && self->_isAudioCall)
          {
            +[PHBottomBar buttonHeightWithoutDefaultPadding];
          }

          else
          {
            +[PHBottomBarButtonConfiguration defaultHeight];
          }

          v8 = v43;
        }

        v6 = v6 * 0.1976;
        goto LABEL_39;
      }
    }

    else
    {
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100132E24;
    block[3] = &unk_100356988;
    block[4] = self;
    if (qword_1003B0FF8 != -1)
    {
      dispatch_once(&qword_1003B0FF8, block);
    }

    v6 = *&qword_1003B0FE8;
    v8 = *&qword_1003B0FF0;
  }

LABEL_39:
  v36 = v6;
  v37 = v8;
  result.height = v37;
  result.width = v36;
  return result;
}

+ (double)buttonHeightWithoutDefaultPadding
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 * 0.065;
}

- (BOOL)isSizeValidLandscape:(CGSize)landscape
{
  v3 = landscape.width != CGSizeZero.width;
  if (landscape.height != CGSizeZero.height)
  {
    v3 = 1;
  }

  return landscape.width > landscape.height && v3;
}

- (BOOL)liveReplyAvailableForCall:(id)call
{
  callCopy = call;
  v4 = objc_opt_new();
  if (TUReceptionistAvailable() && (+[PHInCallUIUtilities shouldHideSensitiveUI](PHInCallUIUtilities, "shouldHideSensitiveUI") & 1) == 0 && [callCopy isReceptionistCapable])
  {
    contactIdentifier = [callCopy contactIdentifier];
    if (contactIdentifier)
    {
      v6 = [callCopy isThumper] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (CGSize)effectiveSize
{
  [(PHBottomBar *)self intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  if (*&self->_supplementalTopLeftButton == 0)
  {
    callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 3)
    {
      if (self->_sideButtonLeft || self->_sideButtonRight)
      {
        usesLowerButtons = [(PHBottomBar *)self usesLowerButtons];
        callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
        callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
        v12 = callDisplayStyle2;
        if (usesLowerButtons)
        {
          if (callDisplayStyle2 == 3)
          {
            +[PHUIConfiguration ambientInCallControlSize];
            v14 = v13;
          }

          else
          {
            usesLowerButtons = [(PHBottomBar *)self callDisplayStyleManager];
            if ([usesLowerButtons usesLargeFormatUI] && self->_isAudioCall)
            {
              +[PHBottomBar buttonHeightWithoutDefaultPadding];
            }

            else
            {
              +[PHBottomBarButtonConfiguration defaultHeight];
            }

            v14 = v17;
          }

          v19 = +[PHUIConfiguration inCallBottomBarSpacing];
          v20 = 30.0;
          if (v19 != 6)
          {
            v21 = +[PHUIConfiguration inCallBottomBarSpacing];
            v20 = 24.0;
            if (v21 == 3)
            {
              v20 = 30.0;
            }
          }

          v22 = v14 + v20;
          *&v22 = v22;
          v23 = [NSNumber numberWithFloat:v22];
          [v23 floatValue];
          v25 = v24;
          [(PHBottomBar *)self yOffsetForLoweredButtons];
          v27 = v26 + v25;
        }

        else
        {
          if (callDisplayStyle2 == 3)
          {
            +[PHUIConfiguration ambientInCallControlSize];
            v16 = v15;
          }

          else
          {
            usesLowerButtons = [(PHBottomBar *)self callDisplayStyleManager];
            if ([usesLowerButtons usesLargeFormatUI] && self->_isAudioCall)
            {
              +[PHBottomBar buttonHeightWithoutDefaultPadding];
            }

            else
            {
              +[PHBottomBarButtonConfiguration defaultHeight];
            }

            v16 = v18;
          }

          v28 = +[PHUIConfiguration inCallBottomBarSpacing];
          v29 = 30.0;
          if (v28 != 6)
          {
            v30 = +[PHUIConfiguration inCallBottomBarSpacing];
            v29 = 24.0;
            if (v30 == 3)
            {
              v29 = 30.0;
            }
          }

          v31 = v16 + v29;
          *&v31 = v31;
          v32 = [NSNumber numberWithFloat:v31];
          [v32 floatValue];
          v27 = v33;
        }

        if (v12 != 3)
        {
        }
      }

      else
      {
        callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager2 callDisplayStyle] == 3)
        {
          +[PHUIConfiguration ambientInCallControlSize];
          v27 = v36;
        }

        else
        {
          callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
          if ([callDisplayStyleManager3 usesLargeFormatUI] && self->_isAudioCall)
          {
            +[PHBottomBar buttonHeightWithoutDefaultPadding];
          }

          else
          {
            +[PHBottomBarButtonConfiguration defaultHeight];
          }

          v27 = v38;
        }
      }

      v6 = v6 - v27;
    }
  }

  v34 = v4;
  v35 = v6;
  result.height = v35;
  result.width = v34;
  return result;
}

- (UIView)topLayoutGuide
{
  if (!self->_topLayoutGuide)
  {
    v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, 1.0}];
    topLayoutGuide = self->_topLayoutGuide;
    self->_topLayoutGuide = v3;

    [(PHBottomBar *)self addSubview:self->_topLayoutGuide];
    [(UIView *)self->_topLayoutGuide setHidden:1];
  }

  [(PHBottomBar *)self updateTopLayoutGuide];
  v5 = self->_topLayoutGuide;

  return v5;
}

- (UIView)mainButtonLayoutGuide
{
  if (!self->_mainButtonLayoutGuide)
  {
    v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, 1.0}];
    mainButtonLayoutGuide = self->_mainButtonLayoutGuide;
    self->_mainButtonLayoutGuide = v3;

    [(PHBottomBar *)self addSubview:self->_mainButtonLayoutGuide];
    [(UIView *)self->_mainButtonLayoutGuide setHidden:1];
  }

  [(PHBottomBar *)self updateMainButtonLayoutGuide];
  v5 = self->_mainButtonLayoutGuide;

  return v5;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(PHBottomBar *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(subviews);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v14 isHidden] & 1) == 0 && objc_msgSend(v14, "isUserInteractionEnabled"))
        {
          [(PHBottomBar *)self convertPoint:v14 toView:x, y];
          v11 |= [v14 pointInside:eventCopy withEvent:?];
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

- (void)setAction:(int64_t)action selected:(BOOL)selected
{
  selectedCopy = selected;
  v5 = [(PHBottomBar *)self controlForActionType:action];
  [v5 setSelected:selectedCopy];
}

- (void)setAction:(int64_t)action enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = [(PHBottomBar *)self controlForActionType:?];
  v7 = v6;
  if (action == 33)
  {
    [v6 setShowDisabled:enabledCopy ^ 1];
    v6 = v7;
  }

  [v6 setEnabled:enabledCopy];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PHBottomBar *)self isUserInteractionEnabled]!= enabled)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    viewLabels = [(PHBottomBar *)self viewLabels];
    allValues = [viewLabels allValues];

    v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v12 + 1) + 8 * v10) setEnabled:enabledCopy];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = PHBottomBar;
  [(PHBottomBar *)&v11 setUserInteractionEnabled:enabledCopy];
}

- (void)setDeclineAndMessageIsAvailable:(BOOL)available
{
  availableCopy = available;
  v5 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v5 frontmostAudioOrVideoCall];

  if (availableCopy)
  {
    v6 = [frontmostAudioOrVideoCall isBranded] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PHBottomBar *)self controlForActionType:12];
  [v7 setEnabled:v6];

  v8 = [(PHBottomBar *)self controlForActionType:9];
  [v8 setEnabled:v6];

  v9 = [(PHBottomBar *)self controlForActionType:12];
  [v9 setHidden:!availableCopy];

  v10 = [(PHBottomBar *)self controlForActionType:9];
  [v10 setHidden:!availableCopy];

  self->_declineAndMessageIsAvailable = availableCopy;
}

- (void)setDeclineAndRemindIsAvailable:(BOOL)available
{
  availableCopy = available;
  v5 = [(PHBottomBar *)self controlForActionType:13];
  [v5 setHidden:!availableCopy];

  self->_declineAndRemindIsAvailable = availableCopy;
}

- (int64_t)_gestureStateToCompletionState:(int64_t)state
{
  v3 = 1;
  if (state == 4)
  {
    v3 = 2;
  }

  if (state == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)setupCallScreeningMoreButton
{
  v3 = [(PHBottomBar *)self makeButtonWithType:27 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
  [(PHBottomBar *)self setSupplementalTopRightButton:v3];

  v4 = +[UIColor whiteColor];
  v22[0] = v4;
  v5 = +[UIColor clearColor];
  v22[1] = v5;
  v6 = [NSArray arrayWithObjects:v22 count:2];
  v7 = [UIImage tpImageForSymbolType:31 textStyle:UIFontTextStyleTitle2 scale:1 paletteColors:v6 isStaticSize:0];

  objc_initWeak(&location, self);
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"SEND_TO_CALL_SCREENING" value:&stru_100361FD0 table:@"BottomBar"];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100133D28;
  v18 = &unk_100357018;
  objc_copyWeak(&v19, &location);
  v10 = [UIAction actionWithTitle:v9 image:v7 identifier:0 handler:&v15];

  v21 = v10;
  v11 = [NSArray arrayWithObjects:&v21 count:1, v15, v16, v17, v18];
  v12 = [UIMenu menuWithChildren:v11];
  supplementalTopRightButton = [(PHBottomBar *)self supplementalTopRightButton];
  [supplementalTopRightButton setMenu:v12];

  supplementalTopRightButton2 = [(PHBottomBar *)self supplementalTopRightButton];
  [supplementalTopRightButton2 setShowsMenuAsPrimaryAction:1];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setCurrentState:(int64_t)state animated:(BOOL)animated animationCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  if (![(PHBottomBar *)self animating])
  {
    v12 = +[TUCallCenter sharedInstance];
    frontmostAudioOrVideoCall = [v12 frontmostAudioOrVideoCall];

    callScreeningAvailable = [(PHBottomBar *)self callScreeningAvailable];
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      stateCopy2 = self;
      v243 = 2048;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BottomBar (%@) set to state: %ld", buf, 0x16u);
    }

    if ([(PHBottomBar *)self currentState]== state)
    {
      goto LABEL_90;
    }

    if (animatedCopy && [(PHBottomBar *)self animateFromState:self->_currentState toState:state completion:blockCopy])
    {
      v16 = 1;
      goto LABEL_69;
    }

    [(PHBottomBar *)self removeAllButtons];
    if (state)
    {
      if (state == 11)
      {
        v17 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainLeftButton:v17];

        delegate = [(PHBottomBar *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          delegate2 = [(PHBottomBar *)self delegate];
          shouldShowHardPauseNumbers = [delegate2 shouldShowHardPauseNumbers];

          if (!shouldShowHardPauseNumbers)
          {
LABEL_19:
            useRTTButton = [(PHBottomBar *)self useRTTButton];
            [(PHBottomBar *)self setSupplementalBottomRightButton:useRTTButton];

            shouldShowUseRTTButton = [(PHBottomBar *)self shouldShowUseRTTButton];
            supplementalBottomRightButton = [(PHBottomBar *)self supplementalBottomRightButton];
            [supplementalBottomRightButton setAlpha:shouldShowUseRTTButton];

            goto LABEL_63;
          }

          v21 = +[PHUIConfiguration inCallBottomBarSpacing];
          v22 = 15.0;
          if (!v21)
          {
            v22 = 14.0;
          }

          delegate = [UIFont systemFontOfSize:v22];
          v23 = +[UIColor whiteColor];
          v24 = [(PHBottomBar *)self makeButtonWithType:23 title:&stru_100361FD0 image:0 color:0 font:delegate fontColor:v23];
          [(PHBottomBar *)self setSupplementalBottomLeftButton:v24];
        }

        goto LABEL_19;
      }

      if ((state - 1) <= 2)
      {
        v32 = [(PHBottomBar *)self makeButtonWithType:8 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainLeftButton:v32];

        if (state == 1)
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        v34 = [(PHBottomBar *)self makeButtonWithType:v33 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainRightButton:v34];

        callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
        v36 = [callDisplayStyleManager callDisplayStyle] == 3;

        if (v36)
        {
          if (callScreeningAvailable)
          {
            v37 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v37];
          }
        }

        else if (callScreeningAvailable)
        {
          v55 = +[CNKFeatures sharedInstance];
          receptionistEnabled = [v55 receptionistEnabled];

          if (receptionistEnabled)
          {
            v57 = [(PHBottomBar *)self makeButtonWithType:26 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v57];

            [(PHBottomBar *)self setupCallScreeningMoreButton];
          }

          else
          {
            v122 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v122];

            v123 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopRightButton:v123];
          }
        }

        else
        {
          if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
          {
LABEL_159:
            v205 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v205];

            [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
          }

          else
          {
LABEL_178:
            v222 = [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v222];

            [(PHBottomBar *)self makeButtonWithType:9 title:0 image:0 color:0 font:0 fontColor:0];
          }
          v206 = ;
          [(PHBottomBar *)self setSupplementalTopRightButton:v206];
        }

        goto LABEL_63;
      }

      if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        if (!callScreeningAvailable)
        {
          if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
          {
            v60 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v60];

            [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
          }

          else
          {
            v115 = [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v115];

            [(PHBottomBar *)self makeButtonWithType:9 title:0 image:0 color:0 font:0 fontColor:0];
          }
          v61 = ;
          [(PHBottomBar *)self setSupplementalTopRightButton:v61];

          goto LABEL_95;
        }

        v38 = +[CNKFeatures sharedInstance];
        if ([v38 receptionistEnabled])
        {
          v39 = [(PHBottomBar *)self liveReplyAvailableForCall:frontmostAudioOrVideoCall];

          if (v39)
          {
            v40 = [(PHBottomBar *)self makeButtonWithType:26 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v40];

            [(PHBottomBar *)self setupCallScreeningMoreButton];
LABEL_95:
            v118 = [(PHBottomBar *)self makeSlidingButtonWithType:state == 5];
            [(PHBottomBar *)self setSlidingButton:v118];

            if (![(PHBottomBar *)self shouldShowAnswerRTTButton])
            {
              goto LABEL_63;
            }

            v119 = [UIImage imageNamed:@"Call Accept RTT"];
            v31 = [v119 imageWithRenderingMode:2];

            if (v31)
            {
              slidingButton = [(PHBottomBar *)self slidingButton];
              acceptButton = [slidingButton acceptButton];
              [acceptButton setKnobImage:v31];
            }

            goto LABEL_62;
          }
        }

        else
        {
        }

        v116 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
        [(PHBottomBar *)self setSupplementalTopLeftButton:v116];

        v117 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
        [(PHBottomBar *)self setSupplementalTopRightButton:v117];

        goto LABEL_95;
      }

      switch(state)
      {
        case 6:
          callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
          v51 = [callDisplayStyleManager2 callDisplayStyle] == 3;

          if (v51)
          {
            v52 = [(PHBottomBar *)self makeButtonWithType:8 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainLeftButton:v52];

            v53 = [(PHBottomBar *)self makeButtonWithType:3 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainRightButton:v53];

            v54 = [(PHBottomBar *)self makeButtonWithType:9 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v54];
          }

          else
          {
            if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
            {
              v187 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
              [(PHBottomBar *)self setSupplementalTopLeftButton:v187];

              [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            }

            else
            {
              v218 = [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setSupplementalTopLeftButton:v218];

              [(PHBottomBar *)self makeButtonWithType:9 title:0 image:0 color:0 font:0 fontColor:0];
            }
            v219 = ;
            [(PHBottomBar *)self setSupplementalTopRightButton:v219];

            if ([(PHBottomBar *)self shouldShowActionTypeCameraFlip])
            {
              [(PHBottomBar *)self makeSlidingButtonWithType:2];
            }

            else
            {
              [(PHBottomBar *)self makeSlidingButtonWithType:3];
            }
            v220 = ;
            [(PHBottomBar *)self setSlidingButton:v220];
          }

          goto LABEL_63;
        case 7:
          if ([(PHBottomBar *)self shouldShowActionTypeSendToVoicemail])
          {
            v144 = 24;
          }

          else
          {
            v144 = 7;
          }

          v145 = [(PHBottomBar *)self makeButtonWithType:v144 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v145];

          callCenter = [(PHBottomBar *)self callCenter];
          isEndAndAnswerAllowed = [callCenter isEndAndAnswerAllowed];

          if (isEndAndAnswerAllowed)
          {
            v148 = [(PHBottomBar *)self makeButtonWithType:4 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v148];
          }

          else
          {
            v148 = [NSBundle bundleForClass:objc_opt_class()];
            v195 = [v148 localizedStringForKey:@"END_CURRENT" value:&stru_100361FD0 table:@"BottomBar"];
            v196 = [(PHBottomBar *)self makeButtonWithType:15 title:v195 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v196];
          }

          v197 = [(PHBottomBar *)self makeButtonWithType:6 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonRight:v197];

          callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
          v199 = [callDisplayStyleManager3 callDisplayStyle] == 3;

          if (!v199)
          {
            if (![(PHBottomBar *)self shouldUseLayoutAsCallScreening])
            {
              goto LABEL_178;
            }

            goto LABEL_159;
          }

          goto LABEL_63;
        case 8:
          if ([(PHBottomBar *)self shouldShowActionTypeSendToVoicemail])
          {
            v158 = 24;
          }

          else
          {
            v158 = 7;
          }

          v159 = [(PHBottomBar *)self makeButtonWithType:v158 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v159];

          callCenter2 = [(PHBottomBar *)self callCenter];
          isEndAndAnswerAllowed2 = [callCenter2 isEndAndAnswerAllowed];

          if (isEndAndAnswerAllowed2)
          {
            v162 = [(PHBottomBar *)self makeButtonWithType:4 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v162];
          }

          else
          {
            v162 = [NSBundle bundleForClass:objc_opt_class()];
            v200 = [v162 localizedStringForKey:@"END_CURRENT" value:&stru_100361FD0 table:@"BottomBar"];
            v201 = [(PHBottomBar *)self makeButtonWithType:15 title:v200 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v201];
          }

          v202 = [(PHBottomBar *)self makeButtonWithType:5 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonRight:v202];

          callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
          v204 = [callDisplayStyleManager4 callDisplayStyle] == 3;

          if (!v204)
          {
            if (![(PHBottomBar *)self shouldUseLayoutAsCallScreening])
            {
              goto LABEL_178;
            }

            goto LABEL_159;
          }

          goto LABEL_63;
        case 9:
          callCenter3 = [(PHBottomBar *)self callCenter];
          isEndAndAnswerAllowed3 = [callCenter3 isEndAndAnswerAllowed];

          if (isEndAndAnswerAllowed3)
          {
            v157 = [(PHBottomBar *)self makeButtonWithType:4 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainRightButton:v157];
          }

          else
          {
            v157 = [NSBundle bundleForClass:objc_opt_class()];
            v182 = [v157 localizedStringForKey:@"END_CURRENT" value:&stru_100361FD0 table:@"BottomBar"];
            v183 = [(PHBottomBar *)self makeButtonWithType:15 title:v182 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainRightButton:v183];
          }

          v184 = [(PHBottomBar *)self makeButtonWithType:7 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v184];

          callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
          v186 = [callDisplayStyleManager5 callDisplayStyle] == 3;

          if (!v186)
          {
            if (![(PHBottomBar *)self shouldUseLayoutAsCallScreening])
            {
              goto LABEL_178;
            }

            goto LABEL_159;
          }

          goto LABEL_63;
        case 10:
          v133 = [(PHBottomBar *)self makeSlidingButtonWithType:4];
          [(PHBottomBar *)self setSlidingButton:v133];

          goto LABEL_63;
        case 12:
          v149 = [(PHBottomBar *)self makeSlidingButtonWithType:5];
          [(PHBottomBar *)self setSlidingButton:v149];

          goto LABEL_63;
        case 13:
          v163 = [(PHBottomBar *)self makeButtonWithType:19 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v163];

          v164 = [(PHBottomBar *)self makeButtonWithType:18 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainRightButton:v164];

          goto LABEL_63;
        case 14:
          v165 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v165];

          if ([(PHBottomBar *)self shouldShowActionTypeAudioRoute])
          {
            v166 = 22;
          }

          else
          {
            v166 = 21;
          }

          +[PHBottomBarButtonConfiguration smallHeight];
          v167 = [(PHBottomBar *)self makeButtonWithType:v166 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
          [(PHBottomBar *)self setSideButtonRight:v167];

          +[PHBottomBarButtonConfiguration smallHeight];
          v168 = [(PHBottomBar *)self makeButtonWithType:20 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
          [(PHBottomBar *)self setSideButtonLeft:v168];

          goto LABEL_63;
        case 15:
          v172 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v172];

          if ([(PHBottomBar *)self shouldShowActionTypeAudioRoute])
          {
            v173 = 22;
          }

          else
          {
            v173 = 21;
          }

          +[PHBottomBarButtonConfiguration smallHeight];
          v174 = [(PHBottomBar *)self makeButtonWithType:v173 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
          [(PHBottomBar *)self setSideButtonRight:v174];

          if ([(PHBottomBar *)self shouldShowActionTypePunchOut])
          {
            delegate3 = [(PHBottomBar *)self delegate];
            v176 = [delegate3 imageForItemInBar:self withActionType:31];
            v177 = +[UIColor whiteColor];
            v178 = [(PHBottomBar *)self makeButtonWithType:31 title:0 image:v176 color:v177 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v178];
          }

          else if ([(PHBottomBar *)self shouldShowActionTypePhotoCapture])
          {
            +[PHBottomBarButtonConfiguration smallHeight];
            v207 = [(PHBottomBar *)self makeButtonWithType:33 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
            [(PHBottomBar *)self setSideButtonLeft:v207];
          }

          else if ([(PHBottomBar *)self shouldShowActionTypeEffects])
          {
            +[PHBottomBarButtonConfiguration smallHeight];
            v221 = [(PHBottomBar *)self makeButtonWithType:34 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
            [(PHBottomBar *)self setSideButtonLeft:v221];
          }

          else
          {
            [(PHBottomBar *)self setSideButtonLeft:0];
          }

          goto LABEL_63;
        case 16:
          v171 = [(PHBottomBar *)self makeSlidingButtonWithType:6];
          [(PHBottomBar *)self setSlidingButton:v171];

          goto LABEL_63;
        case 17:
          v130 = [(PHBottomBar *)self makeButtonWithType:18 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonLeft:v130];

          v131 = [(PHBottomBar *)self makeButtonWithType:19 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v131];

          v132 = [(PHBottomBar *)self makeButtonWithType:29 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonRight:v132];

          goto LABEL_63;
        case 18:
          v150 = [NSBundle bundleForClass:objc_opt_class()];
          v151 = [v150 localizedStringForKey:@"DONE" value:&stru_100361FD0 table:@"BottomBar"];
          v152 = [UIFont systemFontOfSize:28.0];
          v153 = +[UIColor whiteColor];
          v154 = [(PHBottomBar *)self makeButtonWithType:14 title:v151 image:0 color:0 font:v152 fontColor:v153];
          [(PHBottomBar *)self setMainLeftButton:v154];

          goto LABEL_63;
        case 19:
          v134 = +[CNKFeatures sharedInstance];
          isDialPadEnabled = [v134 isDialPadEnabled];

          v136 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
          if (isDialPadEnabled)
          {
            [(PHBottomBar *)self setSupplementalBottomLeftButton:v136];

            v137 = [NSBundle bundleForClass:objc_opt_class()];
            v138 = [v137 localizedStringForKey:@"HIDE_KEYPAD" value:&stru_100361FD0 table:@"BottomBar"];
            v139 = +[PHUIConfiguration inCallBottomBarSpacing];
            v140 = 15.0;
            if (!v139)
            {
              v140 = 14.0;
            }

            v141 = [UIFont systemFontOfSize:v140];
            v142 = +[UIColor whiteColor];
            v143 = [(PHBottomBar *)self makeButtonWithType:17 title:v138 image:0 color:0 font:v141 fontColor:v142];
            [(PHBottomBar *)self setMainRightButton:v143];
          }

          else
          {
            [(PHBottomBar *)self setMainLeftButton:v136];

            v188 = [NSBundle bundleForClass:objc_opt_class()];
            v189 = [v188 localizedStringForKey:@"HIDE" value:&stru_100361FD0 table:@"BottomBar"];
            v190 = +[PHUIConfiguration inCallBottomBarSpacing];
            v191 = 15.0;
            if (!v190)
            {
              v191 = 14.0;
            }

            v192 = [UIFont systemFontOfSize:v191];
            v193 = +[UIColor whiteColor];
            v194 = [(PHBottomBar *)self makeButtonWithType:17 title:v189 image:0 color:0 font:v192 fontColor:v193];
            [(PHBottomBar *)self setSupplementalBottomRightButton:v194];
          }

          goto LABEL_63;
        case 20:
          v124 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v124];

          v125 = +[PHUIConfiguration inCallBottomBarSpacing];
          v126 = 15.0;
          if (!v125)
          {
            v126 = 14.0;
          }

          v127 = [UIFont systemFontOfSize:v126];
          v128 = +[UIColor whiteColor];
          v129 = [(PHBottomBar *)self makeButtonWithType:23 title:&stru_100361FD0 image:0 color:0 font:v127 fontColor:v128];
          [(PHBottomBar *)self setSupplementalBottomLeftButton:v129];

          goto LABEL_63;
        case 21:
          v169 = [(PHBottomBar *)self makeButtonWithType:28 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v169];

          goto LABEL_63;
        case 24:
          v170 = [(PHBottomBar *)self makeSlidingButtonWithType:0];
          [(PHBottomBar *)self setSlidingButton:v170];

          goto LABEL_63;
        case 27:
          v179 = [(PHBottomBar *)self makeButtonWithType:35 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonLeft:v179];

          v180 = [(PHBottomBar *)self makeButtonWithType:37 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainLeftButton:v180];

          v181 = [(PHBottomBar *)self makeButtonWithType:36 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonRight:v181];

          goto LABEL_63;
        default:
          if (state <= 24)
          {
            if (state == 22)
            {
              v227 = [(PHBottomBar *)self makeButtonWithType:39 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainLeftButton:v227];

              v228 = [(PHBottomBar *)self makeButtonWithType:38 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainRightButton:v228];

              alertFeedbackGenerator = [(PHBottomBar *)self alertFeedbackGenerator];
              [alertFeedbackGenerator notificationOccurred:0];

              goto LABEL_63;
            }

            if (state != 23)
            {
LABEL_63:
              mainRightButton = [(PHBottomBar *)self mainRightButton];
              [(PHBottomBar *)self addSubview:mainRightButton];

              mainLeftButton = [(PHBottomBar *)self mainLeftButton];
              [(PHBottomBar *)self addSubview:mainLeftButton];

              supplementalTopLeftButton = [(PHBottomBar *)self supplementalTopLeftButton];
              [(PHBottomBar *)self addSubview:supplementalTopLeftButton];

              supplementalTopRightButton = [(PHBottomBar *)self supplementalTopRightButton];
              [(PHBottomBar *)self addSubview:supplementalTopRightButton];

              supplementalBottomLeftButton = [(PHBottomBar *)self supplementalBottomLeftButton];
              [(PHBottomBar *)self addSubview:supplementalBottomLeftButton];

              supplementalBottomRightButton2 = [(PHBottomBar *)self supplementalBottomRightButton];
              [(PHBottomBar *)self addSubview:supplementalBottomRightButton2];

              slidingButton2 = [(PHBottomBar *)self slidingButton];
              [(PHBottomBar *)self addSubview:slidingButton2];

              sideButtonLeft = [(PHBottomBar *)self sideButtonLeft];
              [(PHBottomBar *)self addSubview:sideButtonLeft];

              sideButtonRight = [(PHBottomBar *)self sideButtonRight];
              [(PHBottomBar *)self addSubview:sideButtonRight];

              if ([(PHBottomBar *)self declineAndMessageIsAvailable])
              {
                v75 = [frontmostAudioOrVideoCall isBranded] ^ 1;
              }

              else
              {
                v75 = 0;
              }

              v76 = [(PHBottomBar *)self controlForActionType:12];
              [v76 setEnabled:v75];

              v77 = [(PHBottomBar *)self controlForActionType:9];
              [v77 setEnabled:v75];

              declineAndMessageIsAvailable = [(PHBottomBar *)self declineAndMessageIsAvailable];
              v79 = [(PHBottomBar *)self controlForActionType:12];
              [v79 setHidden:declineAndMessageIsAvailable ^ 1];

              declineAndMessageIsAvailable2 = [(PHBottomBar *)self declineAndMessageIsAvailable];
              v81 = [(PHBottomBar *)self controlForActionType:9];
              [v81 setHidden:declineAndMessageIsAvailable2 ^ 1];

              declineAndRemindIsAvailable = [(PHBottomBar *)self declineAndRemindIsAvailable];
              v83 = [(PHBottomBar *)self controlForActionType:13];
              [v83 setHidden:declineAndRemindIsAvailable ^ 1];

              buttonLayoutConstraints = [(PHBottomBar *)self buttonLayoutConstraints];

              if (buttonLayoutConstraints)
              {
                buttonLayoutConstraints2 = [(PHBottomBar *)self buttonLayoutConstraints];
                [(PHBottomBar *)self removeConstraints:buttonLayoutConstraints2];
              }

              v86 = [(PHBottomBar *)self constraintsForState:state];
              [(PHBottomBar *)self setButtonLayoutConstraints:v86];

              buttonLayoutConstraints3 = [(PHBottomBar *)self buttonLayoutConstraints];
              [(PHBottomBar *)self addConstraints:buttonLayoutConstraints3];

              v16 = 0;
LABEL_69:
              self->_currentState = state;
              [(PHBottomBar *)self setNeedsLayout];
              if (blockCopy)
              {
                v88 = v16;
              }

              else
              {
                v88 = 1;
              }

              if ((v88 & 1) == 0)
              {
                blockCopy[2](blockCopy, 1);
              }

              statusChangedHandler = [(PHBottomBar *)self statusChangedHandler];

              if (statusChangedHandler)
              {
                statusChangedHandler2 = [(PHBottomBar *)self statusChangedHandler];
                statusChangedHandler2[2]();
              }

              if (!animatedCopy)
              {
                [(PHBottomBar *)self layoutIfNeeded];
              }

              captureView = [(PHBottomBar *)self captureView];
              if (!captureView)
              {
                goto LABEL_90;
              }

              if ([(PHBottomBar *)self callScreeningAvailable])
              {
              }

              else
              {
                shouldUseLayoutAsCallScreening = [(PHBottomBar *)self shouldUseLayoutAsCallScreening];

                if ((shouldUseLayoutAsCallScreening & 1) == 0)
                {
LABEL_90:

                  goto LABEL_91;
                }
              }

              slidingButton3 = [(PHBottomBar *)self slidingButton];

              if (slidingButton3)
              {
                slidingButton4 = [(PHBottomBar *)self slidingButton];
                acceptButton2 = [slidingButton4 acceptButton];
                trackSolidViewBackDropVisualEffectView = [acceptButton2 trackSolidViewBackDropVisualEffectView];
                [trackSolidViewBackDropVisualEffectView _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                captureView2 = [(PHBottomBar *)self captureView];
                slidingButton5 = [(PHBottomBar *)self slidingButton];
                acceptButton3 = [slidingButton5 acceptButton];
                trackSolidViewBackDropVisualEffectView2 = [acceptButton3 trackSolidViewBackDropVisualEffectView];
                [trackSolidViewBackDropVisualEffectView2 _setCaptureView:captureView2];
              }

              supplementalTopLeftButton2 = [(PHBottomBar *)self supplementalTopLeftButton];
              if (supplementalTopLeftButton2)
              {
                supplementalTopLeftButton3 = [(PHBottomBar *)self supplementalTopLeftButton];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  supplementalTopLeftButton4 = [(PHBottomBar *)self supplementalTopLeftButton];
                  effectView = [supplementalTopLeftButton4 effectView];
                  [effectView _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                  captureView3 = [(PHBottomBar *)self captureView];
                  effectView2 = [supplementalTopLeftButton4 effectView];
                  [effectView2 _setCaptureView:captureView3];
                }
              }

              supplementalTopRightButton2 = [(PHBottomBar *)self supplementalTopRightButton];
              if (supplementalTopRightButton2)
              {
                supplementalTopRightButton3 = [(PHBottomBar *)self supplementalTopRightButton];
                objc_opt_class();
                v110 = objc_opt_isKindOfClass();

                if (v110)
                {
                  supplementalTopRightButton4 = [(PHBottomBar *)self supplementalTopRightButton];
                  effectView3 = [supplementalTopRightButton4 effectView];
                  [effectView3 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                  captureView4 = [(PHBottomBar *)self captureView];
                  effectView4 = [supplementalTopRightButton4 effectView];
                  [effectView4 _setCaptureView:captureView4];
                }
              }

              goto LABEL_90;
            }
          }

          else
          {
            if (state == 28)
            {
              v223 = [NSBundle bundleForClass:objc_opt_class()];
              v224 = [v223 localizedStringForKey:@"END" value:&stru_100361FD0 table:@"BottomBar"];
              v225 = [(PHBottomBar *)self makeButtonWithType:11 title:v224 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainLeftButton:v225];

              v226 = [(PHBottomBar *)self makeButtonWithType:40 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainRightButton:v226];

              goto LABEL_63;
            }

            if (state == 26)
            {
              goto LABEL_188;
            }

            if (state != 25)
            {
              goto LABEL_63;
            }
          }

          v208 = +[CNKFeatures sharedInstance];
          lvm_stopEnabled = [v208 lvm_stopEnabled];

          v210 = [NSBundle bundleForClass:objc_opt_class()];
          v211 = v210;
          if (lvm_stopEnabled)
          {
            v212 = [v210 localizedStringForKey:@"SCREENING_STOP" value:&stru_100361FD0 table:@"BottomBar"];
            v213 = [(PHBottomBar *)self makeButtonWithType:11 title:v212 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainLeftButton:v213];

            callDisplayStyleManager6 = [(PHBottomBar *)self callDisplayStyleManager];
            v215 = [callDisplayStyleManager6 callDisplayStyle] == 3 && state == 25;

            if (!v215)
            {
              goto LABEL_188;
            }

            v211 = [NSBundle bundleForClass:objc_opt_class()];
            v216 = [v211 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_100361FD0 table:@"BottomBar"];
            v217 = [(PHBottomBar *)self makeButtonWithType:10 title:v216 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v217];
          }

          else
          {
            if (state == 25)
            {
              v216 = [v210 localizedStringForKey:@"SCREENING_BLOCK" value:&stru_100361FD0 table:@"BottomBar"];
              [(PHBottomBar *)self makeButtonWithType:10 title:v216 image:0 color:0 font:0 fontColor:0];
            }

            else
            {
              v216 = [v210 localizedStringForKey:@"SCREENING_MESSAGE" value:&stru_100361FD0 table:@"BottomBar"];
              [(PHBottomBar *)self makeButtonWithType:30 title:v216 image:0 color:0 font:0 fontColor:0];
            }
            v217 = ;
            [(PHBottomBar *)self setMainLeftButton:v217];
          }

LABEL_188:
          if (TUCallScreeningRTTEnabled())
          {
            if ([(PHBottomBar *)self shouldShowAnswerRTTButton])
            {
              v230 = 2;
            }

            else
            {
              v230 = 1;
            }
          }

          else
          {
            v230 = 1;
          }

          v231 = [NSBundle bundleForClass:objc_opt_class()];
          v232 = [v231 localizedStringForKey:@"ACCEPT" value:&stru_100361FD0 table:@"BottomBar"];
          v233 = [(PHBottomBar *)self makeButtonWithType:v230 title:v232 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setMainRightButton:v233];

          goto LABEL_63;
      }
    }

    v28 = [(PHBottomBar *)self makeButtonWithType:7 title:0 image:0 color:0 font:0 fontColor:0];
    [(PHBottomBar *)self setMainLeftButton:v28];

    if ([(PHBottomBar *)self shouldShowAnswerRTTButton])
    {
      v29 = [UIImage imageNamed:@"Call Accept RTT"];
      v30 = +[UIColor whiteColor];
      v31 = [v29 _flatImageWithColor:v30];
    }

    else
    {
      v31 = 0;
    }

    v41 = [(PHBottomBar *)self makeButtonWithType:1 title:0 image:v31 color:0 font:0 fontColor:0];
    [(PHBottomBar *)self setMainRightButton:v41];

    callDisplayStyleManager7 = [(PHBottomBar *)self callDisplayStyleManager];
    v43 = [callDisplayStyleManager7 callDisplayStyle] == 3;

    if (v43)
    {
      provider = [frontmostAudioOrVideoCall provider];
      isSystemProvider = [provider isSystemProvider];

      if (isSystemProvider)
      {
        if (callScreeningAvailable)
        {
          v46 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonLeft:v46];
        }

        else if ([(PHBottomBar *)self shouldShowActionTypeSendToVoicemail])
        {
          v65 = [(PHBottomBar *)self makeButtonWithType:24 title:0 image:0 color:0 font:0 fontColor:0];
          [(PHBottomBar *)self setSideButtonLeft:v65];
        }
      }

      goto LABEL_62;
    }

    if (!callScreeningAvailable)
    {
      if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
      {
        v58 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
        [(PHBottomBar *)self setSupplementalTopLeftButton:v58];

        [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
      }

      else
      {
        v62 = [(PHBottomBar *)self makeButtonWithType:13 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setSupplementalTopLeftButton:v62];

        [(PHBottomBar *)self makeButtonWithType:9 title:0 image:0 color:0 font:0 fontColor:0];
      }
      v59 = ;
      [(PHBottomBar *)self setSupplementalTopRightButton:v59];

      goto LABEL_62;
    }

    v47 = +[CNKFeatures sharedInstance];
    if ([v47 receptionistEnabled])
    {
      v48 = [(PHBottomBar *)self liveReplyAvailableForCall:frontmostAudioOrVideoCall];

      if (v48)
      {
        v49 = [(PHBottomBar *)self makeButtonWithType:26 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
        [(PHBottomBar *)self setSupplementalTopLeftButton:v49];

        [(PHBottomBar *)self setupCallScreeningMoreButton];
LABEL_62:

        goto LABEL_63;
      }
    }

    else
    {
    }

    v63 = [(PHBottomBar *)self makeButtonWithType:12 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
    [(PHBottomBar *)self setSupplementalTopLeftButton:v63];

    v64 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
    [(PHBottomBar *)self setSupplementalTopRightButton:v64];

    goto LABEL_62;
  }

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    stateCopy2 = state;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bottom bar is currently animating, we will pend this bottom bar state change to state %ld until that's over", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  pendingStateBlocks = [(PHBottomBar *)self pendingStateBlocks];
  v234 = _NSConcreteStackBlock;
  v235 = 3221225472;
  v236 = sub_100136750;
  v237 = &unk_100359EC0;
  objc_copyWeak(v239, buf);
  v239[1] = state;
  v240 = animatedCopy;
  v238 = blockCopy;
  v11 = objc_retainBlock(&v234);
  [pendingStateBlocks addObject:{v11, v234, v235, v236, v237}];

  objc_destroyWeak(v239);
  objc_destroyWeak(buf);
LABEL_91:
}

- (id)buttonsConstraintsForIPad
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  sideButtonLeft = self->_sideButtonLeft;
  if (sideButtonLeft)
  {
    LODWORD(v5) = 1147207680;
    [(UIButton *)sideButtonLeft setContentHuggingPriority:1 forAxis:v5];
    [v4 addObject:self->_sideButtonLeft];
  }

  mainLeftButton = self->_mainLeftButton;
  if (mainLeftButton)
  {
    LODWORD(v5) = 1147207680;
    [(UIButton *)mainLeftButton setContentHuggingPriority:1 forAxis:v5];
    [v4 addObject:self->_mainLeftButton];
  }

  mainRightButton = self->_mainRightButton;
  if (mainRightButton)
  {
    LODWORD(v5) = 1147207680;
    [(UIButton *)mainRightButton setContentHuggingPriority:1 forAxis:v5];
    [v4 addObject:self->_mainRightButton];
  }

  sideButtonRight = self->_sideButtonRight;
  if (sideButtonRight)
  {
    LODWORD(v5) = 1147207680;
    [(UIButton *)sideButtonRight setContentHuggingPriority:1 forAxis:v5];
    [v4 addObject:self->_sideButtonRight];
  }

  supplementalTopLeftButton = self->_supplementalTopLeftButton;
  v154 = v4;
  v155 = v3;
  selfCopy = self;
  if (!supplementalTopLeftButton)
  {
    supplementalTopLeftButton = self->_supplementalTopRightButton;
    if (!supplementalTopLeftButton)
    {
      p_slidingButton = &self->_slidingButton;
      slidingButton = self->_slidingButton;
      if (!slidingButton)
      {
        if (![v4 count])
        {
          goto LABEL_67;
        }

LABEL_51:
        v57 = [v4 objectAtIndexedSubscript:0];
        topAnchor = [v57 topAnchor];
        selfCopy2 = self;
        topAnchor10 = topAnchor;
        topAnchor2 = [(PHBottomBar *)selfCopy2 topAnchor];
        v63 = [topAnchor10 constraintEqualToAnchor:topAnchor2];
        v16 = 0;
        goto LABEL_55;
      }

      topAnchor3 = [(PHSlidingButton *)slidingButton topAnchor];
      selfCopy3 = self;
      topAnchor9 = topAnchor3;
      topAnchor4 = [(PHBottomBar *)selfCopy3 topAnchor];
      v27 = [topAnchor9 constraintEqualToAnchor:topAnchor4];
      v156 = 0;
      goto LABEL_46;
    }
  }

  v156 = supplementalTopLeftButton;
  topAnchor5 = [(UIButton *)v156 topAnchor];
  topAnchor6 = [(PHBottomBar *)selfCopy topAnchor];
  v13 = [topAnchor5 constraintEqualToAnchor:topAnchor6];

  [v3 addObject:v13];
  if (selfCopy->_supplementalTopLeftButton && selfCopy->_supplementalTopRightButton)
  {
    v14 = selfCopy->_sideButtonLeft;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = selfCopy->_mainLeftButton;
      if (!v15)
      {
        v150 = 0;
        goto LABEL_24;
      }
    }

    v150 = v15;
    if ([v4 count] >= 2)
    {
      centerXAnchor = [(UIButton *)selfCopy->_supplementalTopLeftButton centerXAnchor];
      centerXAnchor2 = [(UIButton *)v15 centerXAnchor];
      goto LABEL_27;
    }

LABEL_24:
    v30 = selfCopy->_slidingButton;
    if (v30)
    {
      [(PHSlidingButton *)v30 trackSize];
      v32 = v31 * 0.5;
      centerXAnchor = [(UIButton *)selfCopy->_supplementalTopLeftButton centerXAnchor];
      [(PHSlidingButton *)selfCopy->_slidingButton leadingAnchor];
      v34 = v33 = selfCopy;
      v146 = [centerXAnchor constraintEqualToAnchor:v34 constant:v32];
      goto LABEL_28;
    }

    centerXAnchor = [(UIButton *)selfCopy->_supplementalTopLeftButton leadingAnchor];
    centerXAnchor2 = [(PHBottomBar *)selfCopy leadingAnchor];
LABEL_27:
    v33 = selfCopy;
    v34 = centerXAnchor2;
    v146 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v32 = 0.0;
LABEL_28:

    v35 = v33->_sideButtonRight;
    v18 = v33;
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v33->_mainRightButton;
      if (!v36)
      {
        v139 = 0;
        goto LABEL_34;
      }
    }

    v139 = v36;
    if ([v4 count] >= 2)
    {
      centerXAnchor3 = [(UIButton *)v33->_supplementalTopRightButton centerXAnchor];
      centerXAnchor4 = [(UIButton *)v36 centerXAnchor];
      goto LABEL_37;
    }

LABEL_34:
    supplementalTopRightButton = v33->_supplementalTopRightButton;
    if (v33->_slidingButton)
    {
      centerXAnchor3 = [(UIButton *)supplementalTopRightButton centerXAnchor];
      acceptButton = [(PHSlidingButton *)v33->_slidingButton acceptButton];
      trailingAnchor = [acceptButton trailingAnchor];
      v42 = [centerXAnchor3 constraintEqualToAnchor:trailingAnchor constant:-v32];

LABEL_38:
      v164[0] = v146;
      v164[1] = v42;
      topAnchor7 = [(UIButton *)v33->_supplementalTopRightButton topAnchor];
      topAnchor8 = [(UIButton *)v33->_supplementalTopLeftButton topAnchor];
      v45 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
      v164[2] = v45;
      v46 = [NSArray arrayWithObjects:v164 count:3];
      [v155 addObjectsFromArray:v46];

      v3 = v155;
      v16 = v156;
      goto LABEL_39;
    }

    centerXAnchor3 = [(UIButton *)supplementalTopRightButton trailingAnchor];
    centerXAnchor4 = [(PHBottomBar *)v33 trailingAnchor];
LABEL_37:
    acceptButton = centerXAnchor4;
    v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    goto LABEL_38;
  }

  v16 = v156;
  centerXAnchor5 = [(UIButton *)v156 centerXAnchor];
  [(PHBottomBar *)selfCopy centerXAnchor];
  v19 = v18 = selfCopy;
  v20 = [centerXAnchor5 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

LABEL_39:
  p_slidingButton = &v18->_slidingButton;
  v47 = v18->_slidingButton;
  if (!v47)
  {
    self = v18;
    goto LABEL_47;
  }

  topAnchor9 = [(PHSlidingButton *)v47 topAnchor];
  topAnchor4 = [(PHSlidingButton *)v16 bottomAnchor];
  if (+[PHUIConfiguration inCallBottomBarSpacing]== 6)
  {
    v48 = 90.0;
  }

  else
  {
    v49 = +[PHUIConfiguration inCallBottomBarSpacing];
    v48 = 72.0;
    if (v49 == 3)
    {
      v48 = 90.0;
    }
  }

  v27 = [topAnchor9 constraintEqualToAnchor:topAnchor4 constant:v48];
LABEL_46:
  v151 = v27;

  v163[0] = v27;
  leadingAnchor = [(PHSlidingButton *)*p_slidingButton leadingAnchor];
  self = selfCopy;
  leadingAnchor2 = [(PHBottomBar *)selfCopy leadingAnchor];
  v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v163[1] = v52;
  trailingAnchor2 = [(PHSlidingButton *)*p_slidingButton trailingAnchor];
  trailingAnchor3 = [(PHBottomBar *)selfCopy trailingAnchor];
  v55 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v163[2] = v55;
  v56 = [NSArray arrayWithObjects:v163 count:3];
  v3 = v155;
  [v155 addObjectsFromArray:v56];

  v16 = *p_slidingButton;
  v4 = v154;
LABEL_47:
  if (![v4 count])
  {
    goto LABEL_65;
  }

  if (!v16)
  {
    goto LABEL_51;
  }

  v57 = [v4 objectAtIndexedSubscript:0];
  topAnchor10 = [v57 topAnchor];
  topAnchor2 = [(PHSlidingButton *)v16 bottomAnchor];
  if (+[PHUIConfiguration inCallBottomBarSpacing]== 6)
  {
    v60 = 90.0;
  }

  else
  {
    v64 = +[PHUIConfiguration inCallBottomBarSpacing];
    v60 = 72.0;
    if (v64 == 3)
    {
      v60 = 90.0;
    }
  }

  v63 = [topAnchor10 constraintEqualToAnchor:topAnchor2 constant:v60];
LABEL_55:

  if ([v4 count] == 1)
  {
    v162[0] = v63;
    v65 = [v4 objectAtIndexedSubscript:0];
    centerXAnchor6 = [v65 centerXAnchor];
    self = selfCopy;
    centerXAnchor7 = [(PHBottomBar *)selfCopy centerXAnchor];
    v68 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
    v162[1] = v68;
    v69 = [NSArray arrayWithObjects:v162 count:2];
    [v3 addObjectsFromArray:v69];
  }

  else
  {
    v157 = v16;
    if ([v4 count] != 2)
    {
      if ([v4 count] == 3)
      {
        v160[0] = v63;
        v148 = [v4 objectAtIndexedSubscript:0];
        leadingAnchor3 = [v148 leadingAnchor];
        leadingAnchor4 = [(PHBottomBar *)selfCopy leadingAnchor];
        v144 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v160[1] = v144;
        v153 = 1;
        v137 = [v4 objectAtIndexedSubscript:1];
        centerXAnchor8 = [v137 centerXAnchor];
        centerXAnchor9 = [(PHBottomBar *)selfCopy centerXAnchor];
        v127 = [centerXAnchor8 constraintEqualToAnchor:centerXAnchor9];
        v160[2] = v127;
        v125 = [v4 objectAtIndexedSubscript:1];
        centerYAnchor = [v125 centerYAnchor];
        v123 = [v4 objectAtIndexedSubscript:0];
        centerYAnchor2 = [v123 centerYAnchor];
        v117 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v160[3] = v117;
        v115 = [v4 objectAtIndexedSubscript:2];
        trailingAnchor4 = [v115 trailingAnchor];
        trailingAnchor5 = [(PHBottomBar *)selfCopy trailingAnchor];
        v80 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
        v160[4] = v80;
        v81 = [v4 objectAtIndexedSubscript:2];
        centerYAnchor3 = [v81 centerYAnchor];
        v83 = [v4 objectAtIndexedSubscript:0];
        centerYAnchor4 = [v83 centerYAnchor];
        v85 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v160[5] = v85;
        v86 = [NSArray arrayWithObjects:v160 count:6];
        [v155 addObjectsFromArray:v86];

        v3 = v155;
        centerXAnchor7 = leadingAnchor4;

        centerXAnchor6 = leadingAnchor3;
        v65 = v148;

        v69 = v137;
        v68 = v144;

        self = selfCopy;
        v87 = centerXAnchor8;
      }

      else
      {
        v159[0] = v63;
        v149 = [v4 objectAtIndexedSubscript:0];
        leadingAnchor5 = [v149 leadingAnchor];
        leadingAnchor6 = [(PHBottomBar *)selfCopy leadingAnchor];
        v145 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
        v159[1] = v145;
        v153 = 1;
        v138 = [v4 objectAtIndexedSubscript:1];
        leadingAnchor7 = [v138 leadingAnchor];
        v132 = [v4 objectAtIndexedSubscript:0];
        trailingAnchor6 = [v132 trailingAnchor];
        v126 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor6];
        v159[2] = v126;
        v124 = [v4 objectAtIndexedSubscript:1];
        centerYAnchor5 = [v124 centerYAnchor];
        v122 = [v4 objectAtIndexedSubscript:0];
        centerYAnchor6 = [v122 centerYAnchor];
        v116 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
        v159[3] = v116;
        v114 = [v4 objectAtIndexedSubscript:2];
        trailingAnchor7 = [v114 trailingAnchor];
        v112 = [v4 objectAtIndexedSubscript:3];
        leadingAnchor8 = [v112 leadingAnchor];
        v108 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor8];
        v159[4] = v108;
        v107 = [v4 objectAtIndexedSubscript:2];
        centerYAnchor7 = [v107 centerYAnchor];
        v106 = [v4 objectAtIndexedSubscript:0];
        centerYAnchor8 = [v106 centerYAnchor];
        v103 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
        v159[5] = v103;
        v102 = [v4 objectAtIndexedSubscript:3];
        trailingAnchor8 = [v102 trailingAnchor];
        trailingAnchor9 = [(PHBottomBar *)selfCopy trailingAnchor];
        v88 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
        v159[6] = v88;
        v89 = [v4 objectAtIndexedSubscript:3];
        centerYAnchor9 = [v89 centerYAnchor];
        v91 = [v4 objectAtIndexedSubscript:0];
        centerYAnchor10 = [v91 centerYAnchor];
        v93 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
        v159[7] = v93;
        v94 = [NSArray arrayWithObjects:v159 count:8];
        [v155 addObjectsFromArray:v94];

        v3 = v155;
        centerXAnchor7 = leadingAnchor6;

        centerXAnchor6 = leadingAnchor5;
        v65 = v149;

        v69 = v138;
        v68 = v145;

        self = selfCopy;
        v87 = leadingAnchor7;
      }

      v16 = v157;
      goto LABEL_64;
    }

    v70 = v63;
    v161[0] = v63;
    v147 = [v4 objectAtIndexedSubscript:0];
    leadingAnchor9 = [v147 leadingAnchor];
    leadingAnchor10 = [(PHBottomBar *)selfCopy leadingAnchor];
    v143 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v161[1] = v143;
    v136 = [v4 objectAtIndexedSubscript:1];
    trailingAnchor10 = [v136 trailingAnchor];
    trailingAnchor11 = [(PHBottomBar *)selfCopy trailingAnchor];
    v73 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v161[2] = v73;
    v74 = [v4 objectAtIndexedSubscript:1];
    [v74 centerYAnchor];
    v75 = v133 = v70;
    v76 = [v4 objectAtIndexedSubscript:0];
    centerYAnchor11 = [v76 centerYAnchor];
    v78 = [v75 constraintEqualToAnchor:centerYAnchor11];
    v161[3] = v78;
    v79 = [NSArray arrayWithObjects:v161 count:4];
    [v155 addObjectsFromArray:v79];

    centerXAnchor7 = leadingAnchor10;
    v3 = v155;

    centerXAnchor6 = leadingAnchor9;
    v65 = v147;

    v16 = v157;
    v63 = v133;

    v69 = v136;
    v68 = v143;

    self = selfCopy;
  }

  v153 = 0;
LABEL_64:

  v95 = [v4 objectAtIndexedSubscript:v153];

  v16 = v95;
LABEL_65:
  if (v16)
  {
    bottomAnchor = [(PHSlidingButton *)v16 bottomAnchor];
    bottomAnchor2 = [(PHBottomBar *)self bottomAnchor];
    v98 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v3 addObject:v98];

    v4 = v154;
  }

LABEL_67:

  return v3;
}

- (id)constraintsForState:(int64_t)state
{
  v4 = +[NSMutableArray array];
  callScreeningAvailable = [(PHBottomBar *)self callScreeningAvailable];
  viewLabels = [(PHBottomBar *)self viewLabels];
  v307[0] = @"SideMarginForDoubleButton";
  [(PHBottomBar *)self sideMarginForDoubleButton];
  v292 = [NSNumber numberWithDouble:?];
  v308[0] = v292;
  v307[1] = @"SideMarginForFaceTimeButtons";
  [(PHBottomBar *)self sideMarginForFaceTimeButtons];
  v290 = [NSNumber numberWithDouble:?];
  v308[1] = v290;
  v307[2] = @"SideMarginForFaceTimeInCallButtons";
  [(PHBottomBar *)self sideMarginForFaceTimeInCallButtons];
  v289 = [NSNumber numberWithDouble:?];
  v308[2] = v289;
  v307[3] = @"TopMarginForFaceTimeButtons";
  usesLowerButtons = [(PHBottomBar *)self usesLowerButtons];
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
  v8 = callDisplayStyle != 3;
  v288 = usesLowerButtons;
  if (usesLowerButtons)
  {
    if (callDisplayStyle == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v12 = v11;
    }

    else
    {
      callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager2 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v12 = v9;
    }

    v15 = +[PHUIConfiguration inCallBottomBarSpacing];
    v16 = 30.0;
    if (v15 != 6)
    {
      v17 = +[PHUIConfiguration inCallBottomBarSpacing];
      v16 = 24.0;
      if (v17 == 3)
      {
        v16 = 30.0;
      }
    }

    v18 = v12 + v16;
    *&v18 = v18;
    v279 = [NSNumber numberWithFloat:v18];
    [v279 floatValue];
    v20 = v19;
    [(PHBottomBar *)self yOffsetForLoweredButtons];
    v22 = v21 + v20;
    *&v22 = v22;
    v23 = [NSNumber numberWithFloat:v22];
    v284 = 0;
  }

  else
  {
    if (callDisplayStyle == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v14 = v13;
    }

    else
    {
      callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager3 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v14 = v10;
    }

    v24 = +[PHUIConfiguration inCallBottomBarSpacing];
    v25 = 30.0;
    if (v24 != 6)
    {
      v26 = +[PHUIConfiguration inCallBottomBarSpacing];
      v25 = 24.0;
      if (v26 == 3)
      {
        v25 = 30.0;
      }
    }

    v27 = v14 + v25;
    *&v27 = v27;
    v23 = [NSNumber numberWithFloat:v27];
    v284 = v8;
    v8 = 0;
  }

  v300 = v4;
  v308[3] = v23;
  v307[4] = @"ButtonSpacing";
  v28 = +[PHUIConfiguration inCallBottomBarSpacing];
  LODWORD(v29) = 30.0;
  if (v28 != 6)
  {
    v30 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v29) = 24.0;
    if (v30 == 3)
    {
      *&v29 = 30.0;
    }
  }

  v285 = v23;
  v286 = v8;
  v299 = viewLabels;
  v283 = [NSNumber numberWithFloat:v29];
  v308[4] = v283;
  v307[5] = @"AmbientButtonSpacing";
  +[PHUIConfiguration ambientInCallControlSpacing];
  v282 = [NSNumber numberWithDouble:?];
  v308[5] = v282;
  v307[6] = @"ButtonSliderSpacing";
  v31 = +[PHUIConfiguration inCallBottomBarSpacing];
  LODWORD(v32) = 25.0;
  if (v31 != 6)
  {
    v33 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v32) = 1102315520;
    if (v33 == 3)
    {
      *&v32 = 25.0;
    }
  }

  v281 = [NSNumber numberWithFloat:v32];
  v308[6] = v281;
  v307[7] = @"BottomSupplementalButtonSpacing";
  +[PHBottomBar defaultBottomSupplementalButtonSpacing];
  v34 = [NSNumber numberWithDouble:?];
  v308[7] = v34;
  v308[8] = &off_10036AFE0;
  v307[8] = @"TopSupplementalButtonSpacing";
  v307[9] = @"HeightOfAButtonPlusButtonSpacing";
  callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle2 = [callDisplayStyleManager4 callDisplayStyle];
  if (callDisplayStyle2 == 3)
  {
    +[PHUIConfiguration ambientInCallControlSize];
    v38 = v37;
  }

  else
  {
    callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager5 usesLargeFormatUI] && self->_isAudioCall)
    {
      +[PHBottomBar buttonHeightWithoutDefaultPadding];
    }

    else
    {
      +[PHBottomBarButtonConfiguration defaultHeight];
    }

    v38 = v39;
  }

  v40 = +[PHUIConfiguration inCallBottomBarSpacing];
  v41 = 30.0;
  if (v40 != 6)
  {
    v42 = +[PHUIConfiguration inCallBottomBarSpacing];
    v41 = 24.0;
    if (v42 == 3)
    {
      v41 = 30.0;
    }
  }

  v43 = v38 + v41;
  *&v43 = v43;
  v44 = [NSNumber numberWithFloat:v43];
  v308[9] = v44;
  v307[10] = @"ButtonSpacingCallScreening";
  v45 = +[PHUIConfiguration inCallBottomBarSpacing];
  LODWORD(v46) = 30.0;
  if (v45 != 6)
  {
    v47 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v46) = 24.0;
    if (v47 == 3)
    {
      *&v46 = 30.0;
    }
  }

  v48 = [NSNumber numberWithFloat:v46];
  v308[10] = v48;
  v307[11] = @"HeightOfCallScreeningButtonPlusButtonSpacing";
  [(PHBottomBar *)self heightOfCallScreeningButtonPlusButtonSpacing];
  v49 = [NSNumber numberWithDouble:?];
  v308[11] = v49;
  v307[12] = @"HeightOfCallScreeningButton";
  selfCopy = self;
  [(PHBottomBar *)self heightOfCallScreeningButton];
  v50 = [NSNumber numberWithDouble:?];
  v308[12] = v50;
  v307[13] = @"ButtonSliderSpacingCallScreeningSlider";
  v51 = +[PHUIConfiguration inCallBottomBarSpacing];
  LODWORD(v52) = 25.0;
  if (v51 != 6)
  {
    v53 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v52) = 1102315520;
    if (v53 == 3)
    {
      *&v52 = 25.0;
    }
  }

  v54 = [NSNumber numberWithFloat:v52];
  v308[13] = v54;
  v55 = [NSDictionary dictionaryWithObjects:v308 forKeys:v307 count:14];

  if (callDisplayStyle2 != 3)
  {
  }

  callDisplayStyleManager11 = selfCopy;
  if ((v288 & 1) == 0)
  {
  }

  v57 = viewLabels;
  v58 = v300;
  if (v284)
  {
  }

  v59 = callDisplayStyleManager;
  if (v288)
  {

    v59 = v279;
  }

  if (v286)
  {
  }

  if (v288)
  {
  }

  supplementalTopLeftButton = selfCopy->_supplementalTopLeftButton;
  if (!supplementalTopLeftButton)
  {
    supplementalTopLeftButton = selfCopy->_supplementalTopRightButton;
  }

  v61 = supplementalTopLeftButton;
  if ((callScreeningAvailable & 1) != 0 || [(PHBottomBar *)selfCopy shouldUseLayoutAsCallScreening])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [v55 mutableCopy];
      v63 = +[UIScreen mainScreen];
      [v63 bounds];
      v65 = v64;
      v67 = v66;

      if (v65 < v67)
      {
        v65 = v67;
      }

      +[PHUIConfiguration inComingCallSupplementalButtonAndMainButtonSpacingRatio];
      v69 = v68 * v65;
      v70 = [NSNumber numberWithDouble:v69];
      [v62 setObject:v70 forKeyedSubscript:@"ButtonSpacingCallScreening"];

      v71 = [NSNumber numberWithDouble:v69 + -6.0];
      [v62 setObject:v71 forKeyedSubscript:@"ButtonSliderSpacingCallScreeningSlider"];

      v55 = v62;
    }
  }

  callDisplayStyleManager6 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
  if ([callDisplayStyleManager6 usesLargeFormatUI])
  {
    isAudioCall = selfCopy->_isAudioCall;

    if (isAudioCall)
    {
      buttonsConstraintsForIPad = [(PHBottomBar *)selfCopy buttonsConstraintsForIPad];
      goto LABEL_136;
    }
  }

  else
  {
  }

  switch(state)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 9:
      goto LABEL_71;
    case 4:
    case 5:
      goto LABEL_105;
    case 6:
      callDisplayStyleManager7 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
      callDisplayStyle3 = [callDisplayStyleManager7 callDisplayStyle];

      if (callDisplayStyle3 != 3)
      {
LABEL_105:
        slidingButton = [(PHBottomBar *)selfCopy slidingButton];
        v182 = [NSLayoutConstraint constraintWithItem:slidingButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v182];

        if ((callScreeningAvailable & 1) != 0 || [(PHBottomBar *)selfCopy shouldUseLayoutAsCallScreening])
        {
          v183 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopLeftButton]-(ButtonSliderSpacingCallScreeningSlider)-[_slidingButton]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v183];

          v184 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopRightButton]-(ButtonSliderSpacingCallScreeningSlider)-[_slidingButton]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v184];

          slidingButton2 = [(PHBottomBar *)selfCopy slidingButton];
          [slidingButton2 knobWidth];
          v187 = v186;

          v188 = (v187 + -44.0) * 0.5 + 6.0;
        }

        else
        {
          v231 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopLeftButton]-(ButtonSliderSpacing)-[_slidingButton]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v231];

          v232 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopRightButton]-(ButtonSliderSpacing)-[_slidingButton]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v232];

          v188 = 0.0;
        }

        supplementalTopLeftButton = [(PHBottomBar *)selfCopy supplementalTopLeftButton];
        slidingButton3 = [(PHBottomBar *)selfCopy slidingButton];
        v235 = [NSLayoutConstraint constraintWithItem:supplementalTopLeftButton attribute:5 relatedBy:0 toItem:slidingButton3 attribute:5 multiplier:1.0 constant:v188];
        [v300 addObject:v235];

        supplementalTopRightButton = [(PHBottomBar *)selfCopy supplementalTopRightButton];
        slidingButton4 = [(PHBottomBar *)selfCopy slidingButton];
        v121 = -v188;
        v120 = 1.0;
        v122 = supplementalTopRightButton;
        v123 = 6;
        v124 = slidingButton4;
        v125 = 6;
        goto LABEL_132;
      }

LABEL_71:
      callDisplayStyleManager8 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
      callDisplayStyle4 = [callDisplayStyleManager8 callDisplayStyle];

      if (callDisplayStyle4 == 3)
      {
        v296 = v61;
        sideButtonLeft = [(PHBottomBar *)selfCopy sideButtonLeft];

        v293 = v55;
        if (sideButtonLeft)
        {
          v78 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[_sideButtonLeft]-(AmbientButtonSpacing)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]|", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v78];

          mainLeftButton = [(PHBottomBar *)selfCopy mainLeftButton];
          centerXAnchor = [mainLeftButton centerXAnchor];
          centerXAnchor2 = [(PHBottomBar *)selfCopy centerXAnchor];
          v82 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v303[0] = v82;
          sideButtonLeft2 = [(PHBottomBar *)selfCopy sideButtonLeft];
          [sideButtonLeft2 topAnchor];
          v85 = v84 = v300;
          topAnchor = [(PHBottomBar *)selfCopy topAnchor];
          v87 = [v85 constraintEqualToAnchor:topAnchor];
          v303[1] = v87;
          v88 = [NSArray arrayWithObjects:v303 count:2];
          [v300 addObjectsFromArray:v88];

          callDisplayStyleManager11 = selfCopy;
        }

        else
        {
          mainLeftButton = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(>=0)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]-|", 0, v55, viewLabels);
          [v300 addObjectsFromArray:mainLeftButton];
          v84 = v300;
        }

        mainLeftButton2 = [callDisplayStyleManager11 mainLeftButton];
        topAnchor2 = [mainLeftButton2 topAnchor];
        topAnchor3 = [callDisplayStyleManager11 topAnchor];
        v147 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
        v302[0] = v147;
        mainRightButton = [callDisplayStyleManager11 mainRightButton];
        topAnchor4 = [mainRightButton topAnchor];
        topAnchor5 = [callDisplayStyleManager11 topAnchor];
        v151 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
        v302[1] = v151;
        v152 = v302;
        goto LABEL_141;
      }

      v109 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|", 0, v55, viewLabels);
      [v300 addObjectsFromArray:v109];

      v110 = @"V:|[_supplementalTopRightButton]-(ButtonSpacingCallScreening)-[_mainRightButton]";
      v111 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacingCallScreening)-[_mainLeftButton]";
      if ((callScreeningAvailable & 1) == 0 && ![(PHBottomBar *)selfCopy shouldUseLayoutAsCallScreening])
      {
        v111 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacing)-[_mainLeftButton]";
        v110 = @"V:|[_supplementalTopRightButton]-(ButtonSpacing)-[_mainRightButton]";
      }

      v112 = [NSLayoutConstraint constraintsWithVisualFormat:v111 options:0 metrics:v55 views:viewLabels];
      [v300 addObjectsFromArray:v112];

      v113 = [NSLayoutConstraint constraintsWithVisualFormat:v110 options:0 metrics:v55 views:viewLabels];
      [v300 addObjectsFromArray:v113];

      supplementalTopLeftButton2 = [(PHBottomBar *)selfCopy supplementalTopLeftButton];
      mainLeftButton3 = [(PHBottomBar *)selfCopy mainLeftButton];
      v116 = [NSLayoutConstraint constraintWithItem:supplementalTopLeftButton2 attribute:9 relatedBy:0 toItem:mainLeftButton3 attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v116];

      supplementalTopRightButton = [(PHBottomBar *)selfCopy supplementalTopRightButton];
      mainRightButton2 = [(PHBottomBar *)selfCopy mainRightButton];
      goto LABEL_84;
    case 11:
    case 18:
    case 21:
      mainLeftButton4 = [(PHBottomBar *)selfCopy mainLeftButton];
      centerXAnchor3 = [mainLeftButton4 centerXAnchor];
      centerXAnchor4 = [(PHBottomBar *)selfCopy centerXAnchor];
      v92 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];

      [v92 setIdentifier:@"mainLeftButtonCenterXAnchorLayoutConstraint"];
      [v300 addObject:v92];
      callDisplayStyleManager9 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
      if ([callDisplayStyleManager9 usesLargeFormatUI])
      {
        v94 = selfCopy->_isAudioCall;

        if (v94)
        {
          v95 = v92;
          goto LABEL_126;
        }
      }

      else
      {
      }

      v294 = v55;
      v297 = v61;
      mainLeftButton5 = [(PHBottomBar *)selfCopy mainLeftButton];
      topAnchor6 = [mainLeftButton5 topAnchor];
      topAnchor7 = [(PHBottomBar *)selfCopy topAnchor];
      callDisplayStyleManager10 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
      callDisplayStyle5 = [callDisplayStyleManager10 callDisplayStyle];
      if (callDisplayStyle5 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v140 = v139;
      }

      else
      {
        callDisplayStyleManager11 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
        if ([callDisplayStyleManager11 usesLargeFormatUI] && selfCopy->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v140 = v143;
      }

      v221 = +[PHUIConfiguration inCallBottomBarSpacing];
      v222 = 30.0;
      if (v221 != 6)
      {
        v223 = +[PHUIConfiguration inCallBottomBarSpacing];
        v222 = 24.0;
        if (v223 == 3)
        {
          v222 = 30.0;
        }
      }

      v224 = v140 + v222;
      *&v224 = v224;
      v225 = [NSNumber numberWithFloat:v224];
      [v225 floatValue];
      v95 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:v226];

      if (callDisplayStyle5 != 3)
      {
      }

      [v95 setIdentifier:@"mainLeftButtonTopAnchorLayoutConstraint"];
      v58 = v300;
      [v300 addObject:v95];
      v55 = v294;
      v61 = v297;
      callDisplayStyleManager11 = selfCopy;
LABEL_126:
      supplementalBottomLeftButton = [callDisplayStyleManager11 supplementalBottomLeftButton];

      if (supplementalBottomLeftButton)
      {
        _supplementalBottomLeftButtonLayoutConstraints = [callDisplayStyleManager11 _supplementalBottomLeftButtonLayoutConstraints];
        [v58 addObjectsFromArray:_supplementalBottomLeftButtonLayoutConstraints];
      }

      supplementalBottomRightButton = [callDisplayStyleManager11 supplementalBottomRightButton];

      if (supplementalBottomRightButton)
      {
        _supplementalBottomRightButtonLayoutConstraints = [callDisplayStyleManager11 _supplementalBottomRightButtonLayoutConstraints];
        [v58 addObjectsFromArray:_supplementalBottomRightButtonLayoutConstraints];
      }

      goto LABEL_135;
    case 12:
    case 16:
      v132 = [NSString stringWithFormat:@"|[_slidingButton]|"];
      v133 = [NSLayoutConstraint constraintsWithVisualFormat:v132 options:0 metrics:0 views:viewLabels];
      [v300 addObjectsFromArray:v133];

      v131 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_slidingButton]";
      goto LABEL_103;
    case 13:
    case 22:
      v126 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v55, viewLabels);
      [v300 addObjectsFromArray:v126];

      v127 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainRightButton]";
      goto LABEL_92;
    case 17:
    case 27:
      v128 = [NSLayoutConstraint constraintWithItem:selfCopy->_mainLeftButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v128];

      v129 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_sideButtonLeft]-(SideMarginForFaceTimeButtons)-[_mainLeftButton]-(SideMarginForFaceTimeButtons)-[_sideButtonRight]", 24, v55, viewLabels);
      [v300 addObjectsFromArray:v129];

      v130 = [NSLayoutConstraint constraintWithItem:selfCopy->_sideButtonLeft attribute:7 relatedBy:0 toItem:selfCopy->_sideButtonRight attribute:7 multiplier:1.0 constant:0.0];
      [v300 addObject:v130];

      v131 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]";
      goto LABEL_103;
    case 19:
      v189 = +[CNKFeatures sharedInstance];
      isDialPadEnabled = [v189 isDialPadEnabled];

      if (isDialPadEnabled)
      {
        v191 = +[UIScreen mainScreen];
        [v191 bounds];
        v193 = v192;
        v195 = v194;

        if (v193 >= v195)
        {
          v196 = v195;
        }

        else
        {
          v196 = v193;
        }

        if (v193 >= v195)
        {
          v195 = v193;
        }

        +[PHUIConfiguration inComingCallAndInCallControlsBottomPaddingRatio];
        v198 = v197;
        v199 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainRightButton]" options:0 metrics:v55 views:viewLabels];
        [v300 addObjectsFromArray:v199];

        supplementalBottomLeftButton2 = [(PHBottomBar *)selfCopy supplementalBottomLeftButton];
        v201 = [NSLayoutConstraint constraintWithItem:supplementalBottomLeftButton2 attribute:4 relatedBy:0 toItem:selfCopy attribute:4 multiplier:1.0 constant:-(v198 * v195)];
        [v300 addObject:v201];

        mainRightButton3 = [(PHBottomBar *)selfCopy mainRightButton];
        v203 = [NSLayoutConstraint constraintWithItem:mainRightButton3 attribute:6 relatedBy:0 toItem:selfCopy attribute:6 multiplier:1.0 constant:v196 * -0.102];
        [v300 addObject:v203];

        mainRightButton4 = [(PHBottomBar *)selfCopy mainRightButton];
        supplementalBottomLeftButton3 = [(PHBottomBar *)selfCopy supplementalBottomLeftButton];
        v206 = [NSLayoutConstraint constraintWithItem:mainRightButton4 attribute:10 relatedBy:0 toItem:supplementalBottomLeftButton3 attribute:10 multiplier:1.0 constant:0.0];
        [v300 addObject:v206];

        v207 = [NSLayoutConstraint constraintWithItem:selfCopy->_supplementalBottomLeftButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v207];

        supplementalBottomLeftButton = selfCopy->_supplementalBottomLeftButton;
        mainRightButton5 = [(PHBottomBar *)selfCopy mainRightButton];
        v210 = [NSLayoutConstraint constraintWithItem:supplementalBottomLeftButton attribute:6 relatedBy:-1 toItem:mainRightButton5 attribute:5 multiplier:1.0 constant:-8.0];
        [v300 addObject:v210];

        LODWORD(v211) = 1132068864;
        [(UIButton *)selfCopy->_mainRightButton setContentCompressionResistancePriority:0 forAxis:v211];
        goto LABEL_134;
      }

      v239 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v55 views:viewLabels];
      [v300 addObjectsFromArray:v239];

      v240 = [NSLayoutConstraint constraintWithItem:selfCopy->_mainLeftButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v240];

      supplementalBottomRightButton2 = [(PHBottomBar *)selfCopy supplementalBottomRightButton];
      v242 = [NSLayoutConstraint constraintWithItem:supplementalBottomRightButton2 attribute:10 relatedBy:0 toItem:selfCopy->_mainLeftButton attribute:10 multiplier:1.0 constant:0.0];
      [v300 addObject:v242];

      +[TPNumberPadButton defaultSize];
      v244 = v243;
      v245 = sub_10001AD34();
      v246 = 12.0;
      if (!v245)
      {
        v246 = 0.0;
      }

      v247 = v244 + v246;
      supplementalTopRightButton = [(PHBottomBar *)selfCopy supplementalBottomRightButton];
      v248 = [NSLayoutConstraint constraintWithItem:supplementalTopRightButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:v247];
      [v300 addObject:v248];
      goto LABEL_145;
    case 20:
      v153 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v55 views:viewLabels];
      [v300 addObjectsFromArray:v153];

      v154 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]-(BottomSupplementalButtonSpacing)-[_supplementalBottomLeftButton]", 0, v55, viewLabels);
      [v300 addObjectsFromArray:v154];

      v155 = [NSLayoutConstraint constraintWithItem:selfCopy->_mainLeftButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v155];

      +[TPNumberPadButton defaultSize];
      v157 = v156;
      v158 = sub_10001AD34();
      v159 = 12.0;
      if (!v158)
      {
        v159 = 0.0;
      }

      v160 = v157 + v159;
      supplementalBottomLeftButton4 = [(PHBottomBar *)selfCopy supplementalBottomLeftButton];
      v162 = [NSLayoutConstraint constraintWithItem:supplementalBottomLeftButton4 attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:-v160];
      [v300 addObject:v162];

      v131 = @"|-[_supplementalBottomLeftButton]";
      goto LABEL_103;
    case 23:
    case 25:
    case 28:
      callDisplayStyleManager12 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
      callDisplayStyle6 = [callDisplayStyleManager12 callDisplayStyle];

      if (callDisplayStyle6 != 3)
      {
        v141 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v55, viewLabels);
        [v300 addObjectsFromArray:v141];

        v127 = @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_mainRightButton]";
LABEL_92:
        v142 = [NSLayoutConstraint constraintsWithVisualFormat:v127 options:0 metrics:v55 views:viewLabels];
        [v300 addObjectsFromArray:v142];

        v131 = @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|";
        goto LABEL_103;
      }

      v296 = v61;
      sideButtonLeft3 = [(PHBottomBar *)selfCopy sideButtonLeft];

      v293 = v55;
      if (sideButtonLeft3)
      {
        v99 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[_sideButtonLeft]-(AmbientButtonSpacing)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]|", 0, v55, viewLabels);
        [v300 addObjectsFromArray:v99];

        mainLeftButton6 = [(PHBottomBar *)selfCopy mainLeftButton];
        centerXAnchor5 = [mainLeftButton6 centerXAnchor];
        centerXAnchor6 = [(PHBottomBar *)selfCopy centerXAnchor];
        v103 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
        v306[0] = v103;
        sideButtonLeft4 = [(PHBottomBar *)selfCopy sideButtonLeft];
        [sideButtonLeft4 topAnchor];
        v105 = v84 = v300;
        topAnchor8 = [(PHBottomBar *)selfCopy topAnchor];
        v107 = [v105 constraintEqualToAnchor:topAnchor8];
        v306[1] = v107;
        v108 = [NSArray arrayWithObjects:v306 count:2];
        [v300 addObjectsFromArray:v108];

        callDisplayStyleManager11 = selfCopy;
      }

      else
      {
        mainLeftButton6 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(>=0)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]-|", 0, v55, viewLabels);
        [v300 addObjectsFromArray:mainLeftButton6];
        v84 = v300;
      }

      mainLeftButton2 = [callDisplayStyleManager11 mainLeftButton];
      topAnchor2 = [mainLeftButton2 topAnchor];
      topAnchor3 = [callDisplayStyleManager11 topAnchor];
      v147 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
      v305[0] = v147;
      mainRightButton = [callDisplayStyleManager11 mainRightButton];
      topAnchor4 = [mainRightButton topAnchor];
      topAnchor5 = [callDisplayStyleManager11 topAnchor];
      v151 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v305[1] = v151;
      v152 = v305;
LABEL_141:
      v238 = [NSArray arrayWithObjects:v152 count:2];
      [v84 addObjectsFromArray:v238];

      v95 = 0;
      v58 = v84;
      v61 = v296;
      v57 = v299;
      v55 = v293;
      goto LABEL_135;
    case 24:
      v176 = [NSString stringWithFormat:@"|[_slidingButton]|"];
      v177 = [NSLayoutConstraint constraintsWithVisualFormat:v176 options:0 metrics:0 views:viewLabels];
      [v300 addObjectsFromArray:v177];

      v131 = @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_slidingButton]";
      goto LABEL_103;
    case 26:
      +[PHUIConfiguration ambientInCallControlSize];
      v164 = v163;
      +[PHUIConfiguration ambientInCallControlSpacing];
      v166 = v164 + v165;
      mainRightButton6 = [(PHBottomBar *)selfCopy mainRightButton];
      topAnchor9 = [mainRightButton6 topAnchor];
      topAnchor10 = [(PHBottomBar *)selfCopy topAnchor];
      v168 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
      v304[0] = v168;
      mainRightButton7 = [(PHBottomBar *)selfCopy mainRightButton];
      centerXAnchor7 = [mainRightButton7 centerXAnchor];
      [(PHBottomBar *)selfCopy centerXAnchor];
      v172 = v171 = v55;
      [centerXAnchor7 constraintEqualToAnchor:v172 constant:v166];
      v174 = v173 = v61;
      v304[1] = v174;
      v175 = [NSArray arrayWithObjects:v304 count:2];
      [v300 addObjectsFromArray:v175];

      v61 = v173;
      v55 = v171;

      v58 = v300;
      goto LABEL_134;
    default:
      if ((state - 7) <= 1)
      {
        callDisplayStyleManager13 = [(PHBottomBar *)selfCopy callDisplayStyleManager];
        callDisplayStyle7 = [callDisplayStyleManager13 callDisplayStyle];

        mainLeftButton7 = [(PHBottomBar *)selfCopy mainLeftButton];
        v215 = [NSLayoutConstraint constraintWithItem:mainLeftButton7 attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v215];

        if (callDisplayStyle7 == 3)
        {
          mainLeftButton8 = [(PHBottomBar *)selfCopy mainLeftButton];
          topAnchor11 = [mainLeftButton8 topAnchor];
          topAnchor12 = [(PHBottomBar *)selfCopy topAnchor];
          v219 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
          [v300 addObject:v219];

          v220 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[_sideButtonLeft]-(>=0)-[_mainLeftButton]-(>=0)-[_sideButtonRight]-|", 24, v55, v299);
          [v300 addObjectsFromArray:v220];

          supplementalTopRightButton = [(PHBottomBar *)selfCopy sideButtonLeft];
          slidingButton4 = [(PHBottomBar *)selfCopy sideButtonRight];
          v120 = 1.0;
          v121 = 0.0;
          v122 = supplementalTopRightButton;
          v123 = 7;
          v124 = slidingButton4;
          v125 = 7;
        }

        else
        {
          if ([(PHBottomBar *)selfCopy shouldUseLayoutAsCallScreening])
          {
            v249 = @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_mainLeftButton]";
          }

          else
          {
            v249 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]";
          }

          v250 = [NSLayoutConstraint constraintsWithVisualFormat:v249 options:0 metrics:v55 views:v299];
          [v300 addObjectsFromArray:v250];

          v251 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_sideButtonLeft]-(SideMarginForFaceTimeButtons)-[_mainLeftButton]-(SideMarginForFaceTimeButtons)-[_sideButtonRight]", 24, v55, v299);
          [v300 addObjectsFromArray:v251];

          sideButtonLeft5 = [(PHBottomBar *)selfCopy sideButtonLeft];
          sideButtonRight = [(PHBottomBar *)selfCopy sideButtonRight];
          v254 = [NSLayoutConstraint constraintWithItem:sideButtonLeft5 attribute:7 relatedBy:0 toItem:sideButtonRight attribute:7 multiplier:1.0 constant:0.0];
          [v300 addObject:v254];

          shouldUseLayoutAsCallScreening = [(PHBottomBar *)selfCopy shouldUseLayoutAsCallScreening];
          if (shouldUseLayoutAsCallScreening)
          {
            v256 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacingCallScreening)-[_mainLeftButton]";
          }

          else
          {
            v256 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacing)-[_mainLeftButton]";
          }

          if (shouldUseLayoutAsCallScreening)
          {
            v257 = @"V:|[_supplementalTopRightButton]-(ButtonSpacingCallScreening)-[_mainLeftButton]";
          }

          else
          {
            v257 = @"V:|[_supplementalTopRightButton]-(ButtonSpacing)-[_mainLeftButton]";
          }

          v258 = [NSLayoutConstraint constraintsWithVisualFormat:v256 options:0 metrics:v55 views:v299];
          [v300 addObjectsFromArray:v258];

          v259 = [NSLayoutConstraint constraintsWithVisualFormat:v257 options:0 metrics:v55 views:v299];
          [v300 addObjectsFromArray:v259];

          supplementalTopLeftButton3 = [(PHBottomBar *)selfCopy supplementalTopLeftButton];
          sideButtonLeft6 = [(PHBottomBar *)selfCopy sideButtonLeft];
          v262 = [NSLayoutConstraint constraintWithItem:supplementalTopLeftButton3 attribute:9 relatedBy:0 toItem:sideButtonLeft6 attribute:9 multiplier:1.0 constant:0.0];
          [v300 addObject:v262];

          supplementalTopRightButton = [(PHBottomBar *)selfCopy supplementalTopRightButton];
          mainRightButton2 = [(PHBottomBar *)selfCopy sideButtonRight];
LABEL_84:
          slidingButton4 = mainRightButton2;
          v120 = 1.0;
          v121 = 0.0;
          v122 = supplementalTopRightButton;
          v123 = 9;
          v124 = mainRightButton2;
          v125 = 9;
        }

LABEL_132:
        v236 = [NSLayoutConstraint constraintWithItem:v122 attribute:v123 relatedBy:0 toItem:v124 attribute:v125 multiplier:v120 constant:v121];
        [v300 addObject:v236];

LABEL_133:
        goto LABEL_134;
      }

      switch(state)
      {
        case 10:
          v266 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_slidingButton]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v266];

          supplementalTopRightButton = [NSString stringWithFormat:@"|[_slidingButton]|"];
          v248 = [NSLayoutConstraint constraintsWithVisualFormat:supplementalTopRightButton options:0 metrics:0 views:viewLabels];
          [v300 addObjectsFromArray:v248];
LABEL_145:

          goto LABEL_133;
        case 14:
          if ([(PHBottomBar *)selfCopy shouldShowActionTypeCameraFlip])
          {
LABEL_163:
            v263 = [NSLayoutConstraint constraintWithItem:selfCopy->_mainLeftButton attribute:9 relatedBy:0 toItem:selfCopy attribute:9 multiplier:1.0 constant:0.0];
            [v300 addObject:v263];

            v264 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_sideButtonLeft]-(SideMarginForFaceTimeInCallButtons)-[_mainLeftButton]-(SideMarginForFaceTimeInCallButtons)-[_sideButtonRight]", 1024, v55, viewLabels);
            [v300 addObjectsFromArray:v264];

            sideButtonRight2 = [NSLayoutConstraint constraintWithItem:selfCopy->_sideButtonLeft attribute:7 relatedBy:0 toItem:selfCopy->_sideButtonRight attribute:7 multiplier:1.0 constant:0.0];
            [v300 addObject:sideButtonRight2];
            break;
          }

          sideButtonRight2 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|", 0, v55, viewLabels);
          [v300 addObjectsFromArray:sideButtonRight2];
          break;
        case 15:
          if ([(PHBottomBar *)selfCopy shouldShowActionTypePhotoCapture]|| [(PHBottomBar *)selfCopy shouldShowActionTypeEffects])
          {
            goto LABEL_163;
          }

          v267 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_mainLeftButton]-(SideMarginForFaceTimeInCallButtons)-[_sideButtonRight]", 0, v55, viewLabels);
          [v300 addObjectsFromArray:v267];

          mainLeftButton9 = [(PHBottomBar *)selfCopy mainLeftButton];
          centerXAnchor8 = [mainLeftButton9 centerXAnchor];
          centerXAnchor9 = [(PHBottomBar *)selfCopy centerXAnchor];
          v271 = [centerXAnchor8 constraintEqualToAnchor:centerXAnchor9];
          [v300 addObject:v271];

          sideButtonRight2 = [(PHBottomBar *)selfCopy sideButtonRight];
          centerYAnchor = [sideButtonRight2 centerYAnchor];
          mainLeftButton10 = [(PHBottomBar *)selfCopy mainLeftButton];
          centerYAnchor2 = [mainLeftButton10 centerYAnchor];
          v275 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          [v300 addObject:v275];

          break;
        default:
          goto LABEL_134;
      }

      v131 = @"V:|-(TopMarginForFaceTimeButtons)-[_mainLeftButton]";
LABEL_103:
      v178 = [NSLayoutConstraint constraintsWithVisualFormat:v131 options:0 metrics:v55 views:v299];
      [v300 addObjectsFromArray:v178];

LABEL_134:
      v95 = 0;
LABEL_135:
      buttonsConstraintsForIPad = v58;

LABEL_136:

      return buttonsConstraintsForIPad;
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    v13 = v4;
    v14 = v3;
    self->_orientation = orientation;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_mainLeftButton setOrientation:orientation];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_mainRightButton setOrientation:orientation];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_sideButtonLeft setOrientation:orientation];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_sideButtonRight setOrientation:orientation];
    }

    [(PHBottomBar *)self setNeedsLayout:v8];

    [(PHBottomBar *)self layoutIfNeeded];
  }
}

- (void)setUsesLowerButtons:(BOOL)buttons
{
  if (self->_usesLowerButtons != buttons)
  {
    self->_usesLowerButtons = buttons;
    buttonLayoutConstraints = [(PHBottomBar *)self buttonLayoutConstraints];

    if (buttonLayoutConstraints)
    {
      buttonLayoutConstraints2 = [(PHBottomBar *)self buttonLayoutConstraints];
      [(PHBottomBar *)self removeConstraints:buttonLayoutConstraints2];
    }

    v7 = [(PHBottomBar *)self constraintsForState:[(PHBottomBar *)self currentState]];
    [(PHBottomBar *)self setButtonLayoutConstraints:v7];

    buttonLayoutConstraints3 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:buttonLayoutConstraints3];

    [(PHBottomBar *)self setNeedsLayout];

    [(PHBottomBar *)self layoutIfNeeded];
  }
}

- (BOOL)shouldShowActionTypeCameraFlip
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypeCameraFlip = [delegate2 shouldShowActionTypeCameraFlip];

  return shouldShowActionTypeCameraFlip;
}

- (BOOL)shouldShowActionTypeAudioRoute
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypeAudioRoute = [delegate2 shouldShowActionTypeAudioRoute];

  return shouldShowActionTypeAudioRoute;
}

- (BOOL)shouldShowActionTypeSendToVoicemail
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypeSendToVoicemail = [delegate2 shouldShowActionTypeSendToVoicemail];

  return shouldShowActionTypeSendToVoicemail;
}

- (BOOL)shouldShowActionTypePunchOut
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypePunchOut = [delegate2 shouldShowActionTypePunchOut];

  return shouldShowActionTypePunchOut;
}

- (BOOL)shouldShowActionTypePhotoCapture
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypePhotoCapture = [delegate2 shouldShowActionTypePhotoCapture];

  return shouldShowActionTypePhotoCapture;
}

- (BOOL)shouldShowActionTypeEffects
{
  delegate = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHBottomBar *)self delegate];
  shouldShowActionTypeEffects = [delegate2 shouldShowActionTypeEffects];

  return shouldShowActionTypeEffects;
}

- (BOOL)currentCallIsMuted
{
  callCenter = [(PHBottomBar *)self callCenter];
  v3 = [callCenter audioOrVideoCallWithStatus:1];
  isUplinkMuted = [v3 isUplinkMuted];

  return isUplinkMuted;
}

- (id)makeButtonWithType:(int64_t)type title:(id)title image:(id)image color:(id)color font:(id)font fontColor:(id)fontColor
{
  fontColorCopy = fontColor;
  fontCopy = font;
  colorCopy = color;
  imageCopy = image;
  titleCopy = title;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle] == 3)
  {
    +[PHUIConfiguration ambientInCallControlSize];
    v20 = [(PHBottomBar *)self makeButtonWithType:type title:titleCopy image:imageCopy color:colorCopy font:fontCopy fontColor:fontColorCopy diameter:?];
  }

  else
  {
    callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([callDisplayStyleManager2 usesLargeFormatUI] && self->_isAudioCall)
    {
      +[PHBottomBar buttonHeightWithoutDefaultPadding];
    }

    else
    {
      +[PHBottomBarButtonConfiguration defaultHeight];
    }

    v20 = [(PHBottomBar *)self makeButtonWithType:type title:titleCopy image:imageCopy color:colorCopy font:fontCopy fontColor:fontColorCopy diameter:?];

    fontColorCopy = fontCopy;
    fontCopy = colorCopy;
    colorCopy = imageCopy;
    imageCopy = titleCopy;
    titleCopy = callDisplayStyleManager2;
  }

  return v20;
}

- (id)makeButtonWithType:(int64_t)type title:(id)title image:(id)image color:(id)color font:(id)font fontColor:(id)fontColor diameter:(double)diameter
{
  imageCopy = image;
  colorCopy = color;
  fontCopy = font;
  fontColorCopy = fontColor;
  v20 = [(PHBottomBar *)self customTitleStringForActionType:type givenDefaultTitle:title];
  v21 = [PHBottomBarButtonConfiguration alloc];
  currentBottomBarCallState = [(PHBottomBar *)self currentBottomBarCallState];
  captureView = [(PHBottomBar *)self captureView];
  v24 = [v21 initWithAction:type diameter:currentBottomBarCallState callState:captureView captureView:diameter];

  if (type == 21)
  {
    v25 = PHBottomBarMuteButton;
LABEL_3:
    v26 = [[v25 alloc] initWithConfiguration:v24 appType:2];
    goto LABEL_4;
  }

  if ((type & 0xFFFFFFFFFFFFFFFBLL) == 9)
  {
    callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 3)
    {
      if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
      {
        v25 = PHBottomBarButton;
        goto LABEL_3;
      }

      v26 = [[PHBottomBarSupplementalButton alloc] initWithAction:type];
LABEL_4:
      v27 = v26;
      if (!v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      [v27 setTitle:v20 forState:0];
      goto LABEL_19;
    }
  }

  if (v24)
  {
    v27 = [[PHBottomBarButton alloc] initWithConfiguration:v24 appType:2];
    v30 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"buttonLongPressed:"];
    [v30 setMinimumPressDuration:2.5];
    [v27 intrinsicContentSize];
    [v30 setAllowableMovement:v31 * 0.5];
    [v27 addGestureRecognizer:v30];
    goto LABEL_15;
  }

  if (type == 33)
  {
    v26 = [(PHBottomBar *)self makeCaptureButtonWithDiameter:diameter];
    goto LABEL_4;
  }

  v27 = [UIButton buttonWithType:1];
  v32 = +[UIColor clearColor];
  [v27 setBackgroundColor:v32];

  v30 = +[UIColor systemGrayColor];
  [v27 setTitleColor:v30 forState:2];
LABEL_15:

  if (type == 17)
  {
    titleLabel = [v27 titleLabel];
    [titleLabel setNumberOfLines:2];

    titleLabel2 = [v27 titleLabel];
    [titleLabel2 setTextAlignment:1];
  }

  if (v20)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (fontCopy)
  {
    titleLabel3 = [v27 titleLabel];
    [titleLabel3 setFont:fontCopy];
  }

  if (fontColorCopy)
  {
    [v27 setTitleColor:fontColorCopy forState:0];
  }

  if (colorCopy)
  {
    [v27 setBackgroundColor:colorCopy];
  }

  if (imageCopy)
  {
    [v27 setImage:imageCopy forState:0];
    [v27 setAdjustsImageWhenDisabled:0];
    [v27 setAdjustsImageWhenHighlighted:0];
  }

  [v27 setAction:type];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 addTarget:self action:"buttonPressed:" forControlEvents:64];

  return v27;
}

- (id)makeCaptureButtonWithDiameter:(double)diameter
{
  v4 = +[CUShutterButton smallShutterButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:self action:"buttonPressed:" forControlEvents:64];
  [v4 setAction:33];
  [v4 setShowDisabled:1];

  return v4;
}

- (id)makeSlidingButtonWithType:(int)type
{
  v3 = *&type;
  if (_UISolariumEnabled())
  {
    v5 = 2;
  }

  else if ((v3 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1002F9658[(v3 - 1)];
  }

  v6 = [PHSlidingButton alloc];
  currentBottomBarCallState = [(PHBottomBar *)self currentBottomBarCallState];
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  if ([callDisplayStyleManager usesLargeFormatUI])
  {
    isAudioCall = self->_isAudioCall;
  }

  else
  {
    isAudioCall = 0;
  }

  v10 = [(PHSlidingButton *)v6 initWithSlidingButtonType:v3 appearanceType:v5 callState:currentBottomBarCallState usesLargeFormatUI:isAudioCall];

  [(PHSlidingButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHSlidingButton *)v10 setDelegate:self];

  return v10;
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  superview = [subviewCopy superview];

  if (subviewCopy && superview != self)
  {
    v6.receiver = self;
    v6.super_class = PHBottomBar;
    [(PHBottomBar *)&v6 addSubview:subviewCopy];
  }
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (!animating)
    {
      pendingStateBlocks = [(PHBottomBar *)self pendingStateBlocks];
      v5 = [pendingStateBlocks count];

      if (v5)
      {
        v6 = sub_100004F84();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          pendingStateBlocks2 = [(PHBottomBar *)self pendingStateBlocks];
          *buf = 134217984;
          v20 = [pendingStateBlocks2 count];
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bottom bar has %ld pending state block(s) waiting for the animation to finish, we'll run those now", buf, 0xCu);
        }

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        pendingStateBlocks3 = [(PHBottomBar *)self pendingStateBlocks];
        v9 = [pendingStateBlocks3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(pendingStateBlocks3);
              }

              (*(*(*(&v14 + 1) + 8 * i) + 16))();
            }

            v10 = [pendingStateBlocks3 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }

        pendingStateBlocks4 = [(PHBottomBar *)self pendingStateBlocks];
        [pendingStateBlocks4 removeAllObjects];
      }
    }
  }
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(PHBottomBar *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if ([pressedCopy action] == 32)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10013A9F0;
      v8[3] = &unk_100356988;
      v9 = pressedCopy;
      [UIView animateWithDuration:v8 animations:0 completion:0.25];
    }

    delegate2 = [(PHBottomBar *)self delegate];
    [delegate2 bottomBarActionPerformed:objc_msgSend(pressedCopy withCompletionState:"action") fromBar:{1, self}];
  }
}

- (void)buttonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(PHBottomBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view = [pressedCopy view];
    action = [view action];

    if (action == 15)
    {
      delegate2 = [(PHBottomBar *)self delegate];
      [delegate2 bottomBarActionPerformed:16 withCompletionState:1 fromBar:self];
    }
  }
}

- (void)willFinishSlideForSlidingButton:(id)button
{
  [(PHBottomBar *)self setAnimating:1];
  delegate = [(PHBottomBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PHBottomBar *)self delegate];
    [delegate2 bottomBarActionPerformed:1 withCompletionState:1 fromBar:self];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013ABD8;
  v7[3] = &unk_100356988;
  v7[4] = self;
  [UIView animateWithDuration:v7 animations:0 completion:0.200000003];
}

- (void)slidingButton:(id)button didSlideToProportion:(double)proportion
{
  delegate = [(PHBottomBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PHBottomBar *)self delegate];
    *&v8 = proportion;
    [delegate2 sliderActionFromBar:self slidToProportion:v8];
  }
}

- (CGRect)frameForControlWithActionType:(int64_t)type
{
  v3 = [(PHBottomBar *)self controlForActionType:type];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)controlForActionType:(int64_t)type
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewLabels = [(PHBottomBar *)self viewLabels];
  allValues = [viewLabels allValues];

  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 action] == type)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)customTitleStringForActionType:(int64_t)type givenDefaultTitle:(id)title
{
  titleCopy = title;
  delegate = [(PHBottomBar *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PHBottomBar *)self delegate];
    v10 = [delegate2 customizedTitleForItemInBar:self withActionType:type];

    if (v10)
    {
      v11 = v10;

      titleCopy = v11;
    }
  }

  return titleCopy;
}

- (id)updatedImageForActionType:(int64_t)type givenDefaultImage:(id)image
{
  imageCopy = image;
  if ((type - 21) <= 1)
  {
    v7 = [PHBottomBarButtonConfiguration imageColorForState:0];
    v8 = [(PHBottomBar *)self audioRouteImageWithColor:v7];

    imageCopy = v8;
  }

  return imageCopy;
}

- (id)updatedSelectedImageForActionType:(int64_t)type givenDefaultSelectedImage:(id)image
{
  imageCopy = image;
  if ((type - 21) <= 1)
  {
    v7 = [PHBottomBarButtonConfiguration imageColorForState:4];
    v8 = [(PHBottomBar *)self audioRouteImageWithColor:v7];

    imageCopy = v8;
  }

  return imageCopy;
}

- (id)audioRouteImageWithColor:(id)color
{
  colorCopy = color;
  shouldShowActionTypeAudioRoute = [(PHBottomBar *)self shouldShowActionTypeAudioRoute];
  currentBottomBarCallState = [(PHBottomBar *)self currentBottomBarCallState];
  if (shouldShowActionTypeAudioRoute)
  {
    v7 = 22;
  }

  else
  {
    v7 = 21;
  }

  v8 = [PHBottomBarButtonConfiguration imageForAction:v7 callState:currentBottomBarCallState];
  v9 = [v8 _flatImageWithColor:colorCopy];

  return v9;
}

- (BOOL)updatedSelectedStateForActionType:(int64_t)type
{
  if (type == 21)
  {
    if ([(PHBottomBar *)self shouldShowActionTypeAudioRoute])
    {
      return 0;
    }

    else
    {

      return [(PHBottomBar *)self currentCallIsMuted];
    }
  }

  else
  {
    v5 = [(PHBottomBar *)self controlForActionType:?];
    isSelected = [v5 isSelected];

    return isSelected;
  }
}

- (int64_t)updatedActionTypeForActionType:(int64_t)type
{
  if ((type - 21) <= 1)
  {
    if ([(PHBottomBar *)self shouldShowActionTypeAudioRoute:v3])
    {
      return 22;
    }

    else
    {
      return 21;
    }
  }

  return type;
}

- (void)refreshCustomizedActionTypeTitles
{
  mainLeftButton = [(PHBottomBar *)self mainLeftButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:mainLeftButton];

  mainRightButton = [(PHBottomBar *)self mainRightButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:mainRightButton];

  sideButtonLeft = [(PHBottomBar *)self sideButtonLeft];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:sideButtonLeft];

  sideButtonRight = [(PHBottomBar *)self sideButtonRight];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:sideButtonRight];

  supplementalBottomLeftButton = [(PHBottomBar *)self supplementalBottomLeftButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:supplementalBottomLeftButton];

  supplementalBottomRightButton = [(PHBottomBar *)self supplementalBottomRightButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:supplementalBottomRightButton];
}

- (void)refreshCustomizedActionTypeTitleForButton:(id)button
{
  buttonCopy = button;
  if (buttonCopy)
  {
    action = [buttonCopy action];
    v5 = [buttonCopy titleForState:0];
    v6 = [(PHBottomBar *)self customTitleStringForActionType:action givenDefaultTitle:v5];

    [buttonCopy setTitle:v6 forState:0];
    v7 = [buttonCopy imageForState:0];
    v8 = [(PHBottomBar *)self updatedImageForActionType:action givenDefaultImage:v7];

    [buttonCopy setImage:v8 forState:0];
    v9 = [buttonCopy imageForState:4];
    v10 = [(PHBottomBar *)self updatedSelectedImageForActionType:action givenDefaultSelectedImage:v9];

    if (v10)
    {
      [buttonCopy setImage:v10 forState:4];
    }

    [buttonCopy setAction:{-[PHBottomBar updatedActionTypeForActionType:](self, "updatedActionTypeForActionType:", objc_msgSend(buttonCopy, "action"))}];
    [buttonCopy setSelected:{-[PHBottomBar updatedSelectedStateForActionType:](self, "updatedSelectedStateForActionType:", action)}];
  }
}

- (void)refreshEndCallButton
{
  mainLeftButton = [(PHBottomBar *)self mainLeftButton];
  [mainLeftButton refreshForCallState:{-[PHBottomBar currentBottomBarCallState](self, "currentBottomBarCallState")}];
}

- (BOOL)shouldShowAnswerRTTButton
{
  delegate = [(PHBottomBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PHBottomBar *)self delegate];
    shouldShowAnswerRTT = [delegate2 shouldShowAnswerRTT];
  }

  else
  {
    shouldShowAnswerRTT = 0;
  }

  return shouldShowAnswerRTT;
}

- (void)setPrefersWhiteButtonTextColor:(BOOL)color
{
  if (color)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v14 = ;
  supplementalTopLeftButton = [(PHBottomBar *)self supplementalTopLeftButton];

  if (supplementalTopLeftButton)
  {
    supplementalTopLeftButton2 = [(PHBottomBar *)self supplementalTopLeftButton];
    [supplementalTopLeftButton2 setTitleColor:v14 forState:0];
  }

  supplementalTopRightButton = [(PHBottomBar *)self supplementalTopRightButton];

  if (supplementalTopRightButton)
  {
    supplementalTopRightButton2 = [(PHBottomBar *)self supplementalTopRightButton];
    [supplementalTopRightButton2 setTitleColor:v14 forState:0];
  }

  mainLeftButton = [(PHBottomBar *)self mainLeftButton];

  if (mainLeftButton)
  {
    mainLeftButton2 = [(PHBottomBar *)self mainLeftButton];
    [mainLeftButton2 setTitleColor:v14 forState:0];
  }

  mainRightButton = [(PHBottomBar *)self mainRightButton];

  v12 = v14;
  if (mainRightButton)
  {
    mainRightButton2 = [(PHBottomBar *)self mainRightButton];
    [mainRightButton2 setTitleColor:v14 forState:0];

    v12 = v14;
  }

  _objc_release_x1(v11, v12);
}

- (void)prepareButtonsForAnimationBegin
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewLabels = [(PHBottomBar *)self viewLabels];
  allValues = [viewLabels allValues];

  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 performSelector:"_animationWillBegin"];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)prepareButtonsForAnimationEnd
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  viewLabels = [(PHBottomBar *)self viewLabels];
  allValues = [viewLabels allValues];

  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 performSelector:"_animationDidEnd"];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)animateFromState:(int64_t)state toState:(int64_t)toState completion:(id)completion
{
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10013BBBC;
  v26[3] = &unk_100357E30;
  v26[4] = self;
  completionCopy = completion;
  v8 = objc_retainBlock(v26);
  v9 = objc_retainBlock(v8);
  if (!state && toState == 11)
  {
    [(PHBottomBar *)self animateFromIncomingCallStateToInCallState:11 withCompletion:v9];
LABEL_35:
    v22 = 1;
    goto LABEL_36;
  }

  if (toState == 19 && (state == 20 || state == 11))
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"HIDE" value:&stru_100361FD0 table:@"BottomBar"];
    v12 = +[PHUIConfiguration inCallBottomBarSpacing];
    v13 = 15.0;
    if (!v12)
    {
      v13 = 14.0;
    }

    v14 = [UIFont systemFontOfSize:v13];
    v15 = +[UIColor whiteColor];
    v16 = [(PHBottomBar *)self makeButtonWithType:17 title:v11 image:0 color:0 font:v14 fontColor:v15];

    [(PHBottomBar *)self animateInSupplementalBottomRightButton:v16 WithCompletion:v9];
    goto LABEL_35;
  }

  v18 = toState == 11 || toState == 20;
  if (state == 19 && v18)
  {
    useRTTButton = [(PHBottomBar *)self useRTTButton];
    [(PHBottomBar *)self animateInSupplementalBottomRightButton:useRTTButton WithCompletion:v9];

    goto LABEL_35;
  }

  if (!state && toState == 15)
  {
    [(PHBottomBar *)self animateFromIncomingCallStateToFaceTimeInCallState:15 withCompletion:v9];
    goto LABEL_35;
  }

  if (state == 20 && toState == 11)
  {
    [(PHBottomBar *)self animateOutSupplementalBottomLeftButtonToState:11 withCompletion:v9];
    goto LABEL_35;
  }

  if (state == 21 && toState == 11)
  {
    [(PHBottomBar *)self animateFromOutgoingStateToInCallStateWithCompletion:v9];
    goto LABEL_35;
  }

  if (state == 15 && toState == 17)
  {
    selfCopy2 = self;
    v21 = 17;
LABEL_34:
    [(PHBottomBar *)selfCopy2 animateFromOutgoingStateToCallbackAndMessageUIToState:v21 withCompletion:v9];
    goto LABEL_35;
  }

  if (state == 15 && toState == 27)
  {
    selfCopy2 = self;
    v21 = 27;
    goto LABEL_34;
  }

  if (state == 14 && toState == 15)
  {
    [(PHBottomBar *)self animateFromFaceTimeOutgoingStateToFaceTimeInCallState:15 withCompletion:v9];
    goto LABEL_35;
  }

  v22 = 0;
  if (!state && toState == 23)
  {
    callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 3)
    {
      v22 = 0;
      goto LABEL_36;
    }

    [(PHBottomBar *)self ambientAnimateFromIncomingCallStateToCallScreeningStateWithCompletion:v9];
    goto LABEL_35;
  }

LABEL_36:

  return v22;
}

- (void)animateFromOutgoingStateToInCallStateWithCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v7 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
    [v7 setMass:2.0];
    [v7 setStiffness:300.0];
    [v7 setDamping:50.0];
    [v7 setDuration:0.50999999];
    [v7 setToValue:&off_10036AF90];
    [v7 setFillMode:kCAFillModeForwards];
    [v7 setRemovedOnCompletion:0];
    v8 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
    v9 = +[UIColor systemGreenColor];
    cGColor = [v9 CGColor];

    v11 = +[UIColor systemRedColor];
    cGColor2 = [v11 CGColor];

    v31[0] = cGColor;
    v31[1] = cGColor2;
    v13 = [NSArray arrayWithObjects:v31 count:2];
    [v8 setValues:v13];

    [v8 setKeyTimes:&off_10036AF40];
    [v8 setDuration:0.254999995];
    [v8 setFillMode:kCAFillModeForwards];
    [v8 setRemovedOnCompletion:0];
    mainLeftButton = [(PHBottomBar *)self mainLeftButton];
    imageView = [mainLeftButton imageView];
    [imageView setClipsToBounds:0];

    mainLeftButton2 = [(PHBottomBar *)self mainLeftButton];
    imageView2 = [mainLeftButton2 imageView];
    [imageView2 setContentMode:4];

    +[CATransaction begin];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10013BFC0;
    v29 = &unk_100356D38;
    v30 = completionCopy;
    [CATransaction setCompletionBlock:&v26];
    v18 = [(PHBottomBar *)self mainLeftButton:v26];
    imageView3 = [v18 imageView];
    layer = [imageView3 layer];
    [layer addAnimation:v7 forKey:@"rollButtonAnimation"];

    mainLeftButton3 = [(PHBottomBar *)self mainLeftButton];
    objc_opt_class();
    LOBYTE(imageView3) = objc_opt_isKindOfClass();

    mainLeftButton4 = [(PHBottomBar *)self mainLeftButton];
    v23 = mainLeftButton4;
    if (imageView3)
    {
      roundView = [mainLeftButton4 roundView];
      layer2 = [roundView layer];
      [layer2 addAnimation:v8 forKey:@"buttonColorAnimation"];
    }

    else
    {
      roundView = [mainLeftButton4 layer];
      [roundView addAnimation:v8 forKey:@"buttonColorAnimation"];
    }

    +[CATransaction commit];
  }
}

- (void)animateInSupplementalBottomRightButton:(id)button WithCompletion:(id)completion
{
  buttonCopy = button;
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    supplementalBottomRightButton = [(PHBottomBar *)self supplementalBottomRightButton];
    [(PHBottomBar *)self setSupplementalBottomRightButton:buttonCopy];
    supplementalBottomRightButton2 = [(PHBottomBar *)self supplementalBottomRightButton];
    [supplementalBottomRightButton2 setAlpha:0.0];

    supplementalBottomRightButton3 = [(PHBottomBar *)self supplementalBottomRightButton];
    [(PHBottomBar *)self addSubview:supplementalBottomRightButton3];

    v92 = +[NSMutableArray array];
    viewLabels = [(PHBottomBar *)self viewLabels];
    v102[0] = @"SideMarginForDoubleButton";
    [(PHBottomBar *)self sideMarginForDoubleButton];
    v89 = [NSNumber numberWithDouble:?];
    v103[0] = v89;
    v102[1] = @"SideMarginForFaceTimeButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeButtons];
    v88 = [NSNumber numberWithDouble:?];
    v103[1] = v88;
    v102[2] = @"SideMarginForFaceTimeInCallButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeInCallButtons];
    v87 = [NSNumber numberWithDouble:?];
    v103[2] = v87;
    v102[3] = @"TopMarginForFaceTimeButtons";
    usesLowerButtons = [(PHBottomBar *)self usesLowerButtons];
    callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
    v14 = callDisplayStyle2 != 3;
    v86 = usesLowerButtons;
    if (usesLowerButtons)
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v18 = v17;
      }

      else
      {
        callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager3 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v18 = v15;
      }

      v21 = +[PHUIConfiguration inCallBottomBarSpacing];
      v22 = 30.0;
      if (v21 != 6)
      {
        v23 = +[PHUIConfiguration inCallBottomBarSpacing];
        v22 = 24.0;
        if (v23 == 3)
        {
          v22 = 30.0;
        }
      }

      v24 = v18 + v22;
      *&v24 = v24;
      v77 = [NSNumber numberWithFloat:v24];
      [v77 floatValue];
      v26 = v25;
      [(PHBottomBar *)self yOffsetForLoweredButtons];
      v28 = v27 + v26;
      *&v28 = v28;
      v29 = [NSNumber numberWithFloat:v28];
      v83 = v14;
      v14 = 0;
    }

    else
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v20 = v19;
      }

      else
      {
        callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager4 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v20 = v16;
      }

      v30 = +[PHUIConfiguration inCallBottomBarSpacing];
      v31 = 30.0;
      if (v30 != 6)
      {
        v32 = +[PHUIConfiguration inCallBottomBarSpacing];
        v31 = 24.0;
        if (v32 == 3)
        {
          v31 = 30.0;
        }
      }

      v33 = v20 + v31;
      *&v33 = v33;
      v29 = [NSNumber numberWithFloat:v33];
      v83 = 0;
    }

    v103[3] = v29;
    v102[4] = @"ButtonSpacing";
    v34 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v35) = 30.0;
    if (v34 != 6)
    {
      v36 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v35) = 24.0;
      if (v36 == 3)
      {
        *&v35 = 30.0;
      }
    }

    v82 = v29;
    v93 = completionCopy;
    v94 = buttonCopy;
    v81 = [NSNumber numberWithFloat:v35];
    v103[4] = v81;
    v102[5] = @"AmbientButtonSpacing";
    +[PHUIConfiguration ambientInCallControlSpacing];
    v80 = [NSNumber numberWithDouble:?];
    v103[5] = v80;
    v102[6] = @"ButtonSliderSpacing";
    v37 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v38) = 25.0;
    if (v37 != 6)
    {
      v39 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v38) = 1102315520;
      if (v39 == 3)
      {
        *&v38 = 25.0;
      }
    }

    v79 = [NSNumber numberWithFloat:v38];
    v103[6] = v79;
    v102[7] = @"BottomSupplementalButtonSpacing";
    +[PHBottomBar defaultBottomSupplementalButtonSpacing];
    v78 = [NSNumber numberWithDouble:?];
    v103[7] = v78;
    v103[8] = &off_10036AFE0;
    v102[8] = @"TopSupplementalButtonSpacing";
    v102[9] = @"HeightOfAButtonPlusButtonSpacing";
    callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle3 = [callDisplayStyleManager5 callDisplayStyle];
    if (callDisplayStyle3 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v43 = v42;
    }

    else
    {
      callDisplayStyleManager6 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager6 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v43 = v44;
    }

    v45 = +[PHUIConfiguration inCallBottomBarSpacing];
    v46 = 30.0;
    if (v45 != 6)
    {
      v47 = +[PHUIConfiguration inCallBottomBarSpacing];
      v46 = 24.0;
      if (v47 == 3)
      {
        v46 = 30.0;
      }
    }

    v84 = v14;
    v48 = v43 + v46;
    *&v48 = v48;
    v49 = [NSNumber numberWithFloat:v48];
    v103[9] = v49;
    v102[10] = @"ButtonSpacingCallScreening";
    v50 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v51) = 30.0;
    if (v50 != 6)
    {
      v52 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v51) = 24.0;
      if (v52 == 3)
      {
        *&v51 = 30.0;
      }
    }

    v53 = [NSNumber numberWithFloat:v51];
    v103[10] = v53;
    v102[11] = @"HeightOfCallScreeningButtonPlusButtonSpacing";
    [(PHBottomBar *)self heightOfCallScreeningButtonPlusButtonSpacing];
    v54 = [NSNumber numberWithDouble:?];
    v103[11] = v54;
    v102[12] = @"HeightOfCallScreeningButton";
    [(PHBottomBar *)self heightOfCallScreeningButton];
    v55 = [NSNumber numberWithDouble:?];
    v103[12] = v55;
    v102[13] = @"ButtonSliderSpacingCallScreeningSlider";
    v56 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v57) = 25.0;
    if (v56 != 6)
    {
      v58 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v57) = 1102315520;
      if (v58 == 3)
      {
        *&v57 = 25.0;
      }
    }

    v59 = [NSNumber numberWithFloat:v57];
    v103[13] = v59;
    v60 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:14];

    if (callDisplayStyle3 != 3)
    {
    }

    if ((v86 & 1) == 0)
    {
    }

    if (v84)
    {
    }

    v61 = callDisplayStyleManager2;
    if (v86)
    {

      v61 = v77;
    }

    if (v83)
    {
    }

    if (v86)
    {
    }

    v62 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v60 views:viewLabels];
    [v92 addObjectsFromArray:v62];

    supplementalBottomRightButton4 = [(PHBottomBar *)self supplementalBottomRightButton];
    v64 = [NSLayoutConstraint constraintWithItem:supplementalBottomRightButton4 attribute:10 relatedBy:0 toItem:self->_mainLeftButton attribute:10 multiplier:1.0 constant:0.0];
    [v92 addObject:v64];

    v65 = [NSLayoutConstraint constraintWithItem:self->_mainLeftButton attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v92 addObject:v65];

    +[PHInCallNumberPadButton defaultSize];
    v67 = v66;
    v68 = sub_10001AD34();
    v69 = 12.0;
    if (!v68)
    {
      v69 = 0.0;
    }

    v70 = v67 + v69;
    supplementalBottomRightButton5 = [(PHBottomBar *)self supplementalBottomRightButton];
    v72 = [NSLayoutConstraint constraintWithItem:supplementalBottomRightButton5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:v70];
    [v92 addObject:v72];

    [(PHBottomBar *)self addConstraints:v92];
    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10013C978;
    v98[3] = &unk_100357318;
    buttonCopy = v94;
    v99 = v94;
    selfCopy = self;
    v101 = supplementalBottomRightButton;
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_10013CA54;
    v95[3] = &unk_100359EE8;
    completionCopy = v93;
    v96 = v101;
    v97 = v93;
    v73 = v101;
    [UIView animateWithDuration:v98 animations:v95 completion:0.25];
  }
}

- (void)animateOutSupplementalBottomLeftButtonToState:(int64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    v83 = completionCopy;
    supplementalBottomLeftButton = [(PHBottomBar *)self supplementalBottomLeftButton];
    v82 = +[NSMutableArray array];
    viewLabels = [(PHBottomBar *)self viewLabels];
    v90[0] = @"SideMarginForDoubleButton";
    [(PHBottomBar *)self sideMarginForDoubleButton];
    v78 = [NSNumber numberWithDouble:?];
    v91[0] = v78;
    v90[1] = @"SideMarginForFaceTimeButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeButtons];
    v77 = [NSNumber numberWithDouble:?];
    v91[1] = v77;
    v90[2] = @"SideMarginForFaceTimeInCallButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeInCallButtons];
    v76 = [NSNumber numberWithDouble:?];
    v91[2] = v76;
    v90[3] = @"TopMarginForFaceTimeButtons";
    usesLowerButtons = [(PHBottomBar *)self usesLowerButtons];
    callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
    v11 = callDisplayStyle2 != 3;
    v75 = usesLowerButtons;
    if (usesLowerButtons)
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v15 = v14;
      }

      else
      {
        callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager3 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v15 = v12;
      }

      v18 = +[PHUIConfiguration inCallBottomBarSpacing];
      v19 = 30.0;
      if (v18 != 6)
      {
        v20 = +[PHUIConfiguration inCallBottomBarSpacing];
        v19 = 24.0;
        if (v20 == 3)
        {
          v19 = 30.0;
        }
      }

      v21 = v15 + v19;
      *&v21 = v21;
      v66 = [NSNumber numberWithFloat:v21];
      [v66 floatValue];
      v23 = v22;
      [(PHBottomBar *)self yOffsetForLoweredButtons];
      v25 = v24 + v23;
      *&v25 = v25;
      v26 = [NSNumber numberWithFloat:v25];
      v72 = v11;
      v11 = 0;
    }

    else
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v17 = v16;
      }

      else
      {
        callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager4 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v17 = v13;
      }

      v27 = +[PHUIConfiguration inCallBottomBarSpacing];
      v28 = 30.0;
      if (v27 != 6)
      {
        v29 = +[PHUIConfiguration inCallBottomBarSpacing];
        v28 = 24.0;
        if (v29 == 3)
        {
          v28 = 30.0;
        }
      }

      v30 = v17 + v28;
      *&v30 = v30;
      v26 = [NSNumber numberWithFloat:v30];
      v72 = 0;
    }

    v91[3] = v26;
    v90[4] = @"ButtonSpacing";
    v31 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v32) = 30.0;
    if (v31 != 6)
    {
      v33 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v32) = 24.0;
      if (v33 == 3)
      {
        *&v32 = 30.0;
      }
    }

    stateCopy = state;
    v70 = [NSNumber numberWithFloat:v32];
    v91[4] = v70;
    v90[5] = @"AmbientButtonSpacing";
    +[PHUIConfiguration ambientInCallControlSpacing];
    v69 = [NSNumber numberWithDouble:?];
    v91[5] = v69;
    v90[6] = @"ButtonSliderSpacing";
    v34 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v35) = 25.0;
    if (v34 != 6)
    {
      v36 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v35) = 1102315520;
      if (v36 == 3)
      {
        *&v35 = 25.0;
      }
    }

    v68 = [NSNumber numberWithFloat:v35];
    v91[6] = v68;
    v90[7] = @"BottomSupplementalButtonSpacing";
    +[PHBottomBar defaultBottomSupplementalButtonSpacing];
    v67 = [NSNumber numberWithDouble:?];
    v91[7] = v67;
    v91[8] = &off_10036AFE0;
    v90[8] = @"TopSupplementalButtonSpacing";
    v90[9] = @"HeightOfAButtonPlusButtonSpacing";
    callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle3 = [callDisplayStyleManager5 callDisplayStyle];
    if (callDisplayStyle3 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v40 = v39;
    }

    else
    {
      callDisplayStyleManager6 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager6 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v40 = v41;
    }

    v42 = +[PHUIConfiguration inCallBottomBarSpacing];
    v43 = 30.0;
    if (v42 != 6)
    {
      v44 = +[PHUIConfiguration inCallBottomBarSpacing];
      v43 = 24.0;
      if (v44 == 3)
      {
        v43 = 30.0;
      }
    }

    v71 = v26;
    v73 = v11;
    v45 = v40 + v43;
    *&v45 = v45;
    v46 = [NSNumber numberWithFloat:v45];
    v91[9] = v46;
    v90[10] = @"ButtonSpacingCallScreening";
    v47 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v48) = 30.0;
    if (v47 != 6)
    {
      v49 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v48) = 24.0;
      if (v49 == 3)
      {
        *&v48 = 30.0;
      }
    }

    v50 = [NSNumber numberWithFloat:v48];
    v91[10] = v50;
    v90[11] = @"HeightOfCallScreeningButtonPlusButtonSpacing";
    [(PHBottomBar *)self heightOfCallScreeningButtonPlusButtonSpacing];
    v51 = [NSNumber numberWithDouble:?];
    v91[11] = v51;
    v90[12] = @"HeightOfCallScreeningButton";
    [(PHBottomBar *)self heightOfCallScreeningButton];
    v52 = [NSNumber numberWithDouble:?];
    v91[12] = v52;
    v90[13] = @"ButtonSliderSpacingCallScreeningSlider";
    v53 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v54) = 25.0;
    if (v53 != 6)
    {
      v55 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v54) = 1102315520;
      if (v55 == 3)
      {
        *&v54 = 25.0;
      }
    }

    v56 = [NSNumber numberWithFloat:v54];
    v91[13] = v56;
    v57 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:14];

    if (callDisplayStyle3 != 3)
    {
    }

    completionCopy = v83;
    if ((v75 & 1) == 0)
    {
    }

    if (v73)
    {
    }

    v58 = callDisplayStyleManager2;
    if (v75)
    {

      v58 = v66;
    }

    if (v72)
    {
    }

    if (v75)
    {
    }

    [(PHBottomBar *)self setSupplementalBottomLeftButton:0];
    v59 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v57, viewLabels);
    [v82 addObjectsFromArray:v59];

    v60 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v57 views:viewLabels];
    [v82 addObjectsFromArray:v60];

    v61 = [NSLayoutConstraint constraintWithItem:self->_mainLeftButton attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v82 addObject:v61];

    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10013D358;
    v88[3] = &unk_100356988;
    v89 = supplementalBottomLeftButton;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10013D364;
    v84[3] = &unk_100359F10;
    v87 = stateCopy;
    v84[4] = self;
    v85 = v89;
    v86 = v83;
    v62 = v89;
    [UIView animateWithDuration:v88 animations:v84 completion:0.25];
  }
}

- (void)ambientAnimateFromIncomingCallStateToCallScreeningStateWithCompletion:(id)completion
{
  completionCopy = completion;
  sideButtonLeft = [(PHBottomBar *)self sideButtonLeft];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013D57C;
  v13[3] = &unk_1003569B0;
  v13[4] = self;
  [_TtC13InCallService27AmbientAnimationCoordinator hide:sideButtonLeft completion:v13];

  mainLeftButton = [(PHBottomBar *)self mainLeftButton];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013D5C8;
  v11[3] = &unk_100357E30;
  v11[4] = self;
  v12 = completionCopy;
  v7 = completionCopy;
  [_TtC13InCallService27AmbientAnimationCoordinator hide:mainLeftButton completion:v11];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACCEPT" value:&stru_100361FD0 table:@"BottomBar"];
  mainRightButton = [(PHBottomBar *)self mainRightButton];
  [mainRightButton setTitle:v9];
}

- (void)animateFromFaceTimeOutgoingStateToFaceTimeInCallState:(int64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    if ([(PHBottomBar *)self shouldShowActionTypeEffects])
    {
      v9 = 34;
    }

    else
    {
      v9 = 33;
    }

    +[PHBottomBarButtonConfiguration smallHeight];
    v10 = [(PHBottomBar *)self makeButtonWithType:v9 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
    [v10 setAlpha:0.0];
    sideButtonLeft = [(PHBottomBar *)self sideButtonLeft];
    [(PHBottomBar *)self setSideButtonLeft:v10];
    [(PHBottomBar *)self addSubview:self->_sideButtonLeft];
    buttonLayoutConstraints = [(PHBottomBar *)self buttonLayoutConstraints];

    if (buttonLayoutConstraints)
    {
      buttonLayoutConstraints2 = [(PHBottomBar *)self buttonLayoutConstraints];
      [(PHBottomBar *)self removeConstraints:buttonLayoutConstraints2];
    }

    v14 = [(PHBottomBar *)self constraintsForState:15];
    [(PHBottomBar *)self setButtonLayoutConstraints:v14];

    buttonLayoutConstraints3 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:buttonLayoutConstraints3];

    [(PHBottomBar *)self setNeedsLayout];
    [(PHBottomBar *)self layoutIfNeeded];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013D8A0;
    v22[3] = &unk_100357110;
    v23 = sideButtonLeft;
    v24 = v10;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013D8E4;
    v18[3] = &unk_100359F10;
    stateCopy = state;
    v18[4] = self;
    v19 = v23;
    v20 = completionCopy;
    v16 = v23;
    v17 = v10;
    [UIView animateWithDuration:v22 animations:v18 completion:0.25];
  }
}

- (void)animateFromOutgoingStateToCallbackAndMessageUIToState:(int64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    v9 = [(PHBottomBar *)self makeButtonWithType:18 title:0 image:0 color:0 font:0 fontColor:0];
    v10 = [(PHBottomBar *)self makeButtonWithType:19 title:0 image:0 color:0 font:0 fontColor:0];
    v11 = [(PHBottomBar *)self makeButtonWithType:29 title:0 image:0 color:0 font:0 fontColor:0];
    [v9 setAlpha:0.0];
    [v11 setAlpha:0.0];
    [v10 setAlpha:0.0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013DB5C;
    v21[3] = &unk_100356988;
    v21[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013DB68;
    v15[3] = &unk_100359F38;
    v15[4] = self;
    v16 = v10;
    v17 = v11;
    v18 = v9;
    stateCopy = state;
    v19 = completionCopy;
    v12 = v9;
    v13 = v11;
    v14 = v10;
    [UIView animateWithDuration:v21 animations:v15 completion:0.25];
  }
}

- (void)animateFromIncomingCallStateToInCallState:(int64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    v9 = [(PHBottomBar *)self currentBottomBarCallState]== 2 || [(PHBottomBar *)self currentBottomBarCallState]== 4;
    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v10 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v10 setFromValue:&off_10036B010];
    [v10 setToValue:&off_10036B020];
    v11 = [CAMediaTimingFunction functionWithName:@"easeInEaseOut"];
    [v10 setTimingFunction:v11];

    [v10 setDuration:0.0399999991];
    v69 = v9;
    if (v9)
    {
      v71 = +[PHBottomBarAnimations rollAnimation];
    }

    else
    {
      mainRightButton = [(PHBottomBar *)self mainRightButton];
      imageView = [mainRightButton imageView];
      image = [imageView image];
      cGImage = [image CGImage];
      v16 = [PHBottomBarButtonConfiguration imageForAction:15 callState:1];
      v71 = +[PHBottomBarAnimations crossFadeAnimationFromImage:toImage:](PHBottomBarAnimations, "crossFadeAnimationFromImage:toImage:", cGImage, [v16 CGImage]);
    }

    mainRightButton2 = [(PHBottomBar *)self mainRightButton];
    backgroundColor = [mainRightButton2 backgroundColor];
    cGColor = [backgroundColor CGColor];
    if (!cGColor)
    {
      v20 = +[UIColor clearColor];
      cGColor = [v20 CGColor];
    }

    v21 = +[UIColor systemRedColor];
    cGColor2 = [v21 CGColor];

    v68 = cGColor2;
    v70 = [PHBottomBarAnimations backgroundColorAnimationFromColor:cGColor toColor:cGColor2];
    v23 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v23 setMass:2.0];
    [v23 setStiffness:300.0];
    [v23 setDamping:50.0];
    [v23 setDuration:0.910000026];
    mainRightButton3 = [(PHBottomBar *)self mainRightButton];
    layer = [mainRightButton3 layer];
    [layer position];
    v26 = [NSNumber numberWithDouble:?];
    [v23 setFromValue:v26];

    [(PHBottomBar *)self bounds];
    v28 = [NSNumber numberWithDouble:v27 * 0.5];
    [v23 setToValue:v28];

    supplementalTopLeftButton = [(PHBottomBar *)self supplementalTopLeftButton];
    supplementalTopRightButton = [(PHBottomBar *)self supplementalTopRightButton];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10013E770;
    v79[3] = &unk_100356988;
    v79[4] = self;
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_10013E7FC;
    v74[3] = &unk_100359F60;
    v74[4] = self;
    stateCopy = state;
    v31 = supplementalTopLeftButton;
    v75 = v31;
    v32 = supplementalTopRightButton;
    v76 = v32;
    v77 = completionCopy;
    [UIView animateWithDuration:0x20000 delay:v79 options:v74 animations:0.25 completion:0.0];
    v33 = [PHBottomBarButtonConfiguration alloc];
    callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
    if (callDisplayStyle2 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v37 = v36;
    }

    else
    {
      supplementalTopRightButton = [(PHBottomBar *)self callDisplayStyleManager];
      if ([supplementalTopRightButton usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v37 = v38;
    }

    v39 = [v33 initWithAction:1 diameter:-[PHBottomBar currentBottomBarCallState](self callState:{"currentBottomBarCallState"), v37}];
    if (callDisplayStyle2 != 3)
    {
    }

    mainRightButton4 = [(PHBottomBar *)self mainRightButton];
    icon = [v39 icon];
    [mainRightButton4 setImage:icon forState:0];

    mainRightButton5 = [(PHBottomBar *)self mainRightButton];
    imageView2 = [mainRightButton5 imageView];
    [imageView2 setClipsToBounds:0];

    mainRightButton6 = [(PHBottomBar *)self mainRightButton];
    imageView3 = [mainRightButton6 imageView];
    [imageView3 setContentMode:4];

    mainRightButton7 = [(PHBottomBar *)self mainRightButton];
    titleLabel = [mainRightButton7 titleLabel];
    layer2 = [titleLabel layer];
    [layer2 addAnimation:v10 forKey:@"acceptTitleAnimation"];

    mainRightButton8 = [(PHBottomBar *)self mainRightButton];
    imageView4 = [mainRightButton8 imageView];
    layer3 = [imageView4 layer];
    [layer3 addAnimation:v71 forKey:@"mainRightButtonAnimation"];

    mainRightButton9 = [(PHBottomBar *)self mainRightButton];
    layer4 = [mainRightButton9 layer];
    [layer4 addAnimation:v23 forKey:@"buttonSlideAnimation"];

    mainRightButton10 = [(PHBottomBar *)self mainRightButton];
    objc_opt_class();
    LOBYTE(layer4) = objc_opt_isKindOfClass();

    mainRightButton11 = [(PHBottomBar *)self mainRightButton];
    v56 = mainRightButton11;
    if (layer4)
    {
      roundView = [mainRightButton11 roundView];
      layer5 = [roundView layer];
      [layer5 addAnimation:v70 forKey:@"buttonColorAnimation"];
    }

    else
    {
      roundView = [mainRightButton11 layer];
      [roundView addAnimation:v70 forKey:@"buttonColorAnimation"];
    }

    mainRightButton12 = [(PHBottomBar *)self mainRightButton];
    [mainRightButton12 setAction:15];

    mainRightButton13 = [(PHBottomBar *)self mainRightButton];
    titleLabel2 = [mainRightButton13 titleLabel];
    layer6 = [titleLabel2 layer];
    [layer6 setOpacity:0.0];

    mainRightButton14 = [(PHBottomBar *)self mainRightButton];
    v64 = [UIColor colorWithCGColor:v68];
    [mainRightButton14 setBackgroundColor:v64];

    if (v69)
    {
      CATransform3DMakeRotation(&v73, 2.35619449, 0.0, 0.0, 1.0);
      mainRightButton15 = [(PHBottomBar *)self mainRightButton];
      imageView5 = [mainRightButton15 imageView];
      layer7 = [imageView5 layer];
      v72 = v73;
      [layer7 setTransform:&v72];
    }
  }
}

- (void)animateFromIncomingCallStateToFaceTimeInCallState:(int64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  callDisplayStyleManager = [(PHBottomBar *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle != 3)
  {
    stateCopy = state;
    if ([(PHBottomBar *)self shouldShowActionTypePhotoCapture])
    {
      +[PHBottomBarButtonConfiguration smallHeight];
      v9 = [(PHBottomBar *)self makeButtonWithType:33 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
      [(PHBottomBar *)self setSideButtonLeft:v9];
    }

    else
    {
      [(PHBottomBar *)self setSideButtonLeft:0];
    }

    if ([(PHBottomBar *)self shouldShowActionTypeAudioRoute])
    {
      v10 = 22;
    }

    else
    {
      v10 = 21;
    }

    +[PHBottomBarButtonConfiguration smallHeight];
    v11 = [(PHBottomBar *)self makeButtonWithType:v10 title:0 image:0 color:0 font:0 fontColor:0 diameter:?];
    [(PHBottomBar *)self setSideButtonRight:v11];

    [(UIButton *)self->_sideButtonRight setAlpha:0.0];
    [(UIButton *)self->_sideButtonLeft setAlpha:0.0];
    [(PHBottomBar *)self addSubview:self->_sideButtonRight];
    [(PHBottomBar *)self addSubview:self->_sideButtonLeft];
    v135 = +[NSMutableArray array];
    viewLabels = [(PHBottomBar *)self viewLabels];
    v148[0] = @"SideMarginForDoubleButton";
    [(PHBottomBar *)self sideMarginForDoubleButton];
    v130 = [NSNumber numberWithDouble:?];
    v149[0] = v130;
    v148[1] = @"SideMarginForFaceTimeButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeButtons];
    v128 = [NSNumber numberWithDouble:?];
    v149[1] = v128;
    v148[2] = @"SideMarginForFaceTimeInCallButtons";
    [(PHBottomBar *)self sideMarginForFaceTimeInCallButtons];
    v127 = [NSNumber numberWithDouble:?];
    v149[2] = v127;
    v148[3] = @"TopMarginForFaceTimeButtons";
    usesLowerButtons = [(PHBottomBar *)self usesLowerButtons];
    callDisplayStyleManager2 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];
    v14 = callDisplayStyle2 != 3;
    v126 = usesLowerButtons;
    if (usesLowerButtons)
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v18 = v17;
      }

      else
      {
        callDisplayStyleManager3 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager3 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v18 = v15;
      }

      v21 = +[PHUIConfiguration inCallBottomBarSpacing];
      v22 = 30.0;
      if (v21 != 6)
      {
        v23 = +[PHUIConfiguration inCallBottomBarSpacing];
        v22 = 24.0;
        if (v23 == 3)
        {
          v22 = 30.0;
        }
      }

      v24 = v18 + v22;
      *&v24 = v24;
      v117 = [NSNumber numberWithFloat:v24];
      [v117 floatValue];
      v26 = v25;
      [(PHBottomBar *)self yOffsetForLoweredButtons];
      v28 = v27 + v26;
      *&v28 = v28;
      v29 = [NSNumber numberWithFloat:v28];
      v122 = 0;
    }

    else
    {
      if (callDisplayStyle2 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v20 = v19;
      }

      else
      {
        callDisplayStyleManager4 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([callDisplayStyleManager4 usesLargeFormatUI] && self->_isAudioCall)
        {
          +[PHBottomBar buttonHeightWithoutDefaultPadding];
        }

        else
        {
          +[PHBottomBarButtonConfiguration defaultHeight];
        }

        v20 = v16;
      }

      v30 = +[PHUIConfiguration inCallBottomBarSpacing];
      v31 = 30.0;
      if (v30 != 6)
      {
        v32 = +[PHUIConfiguration inCallBottomBarSpacing];
        v31 = 24.0;
        if (v32 == 3)
        {
          v31 = 30.0;
        }
      }

      v33 = v20 + v31;
      *&v33 = v33;
      v29 = [NSNumber numberWithFloat:v33];
      v122 = v14;
      v14 = 0;
    }

    v149[3] = v29;
    v148[4] = @"ButtonSpacing";
    v34 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v35) = 30.0;
    if (v34 != 6)
    {
      v36 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v35) = 24.0;
      if (v36 == 3)
      {
        *&v35 = 30.0;
      }
    }

    v124 = v14;
    v136 = completionCopy;
    v121 = [NSNumber numberWithFloat:v35];
    v149[4] = v121;
    v148[5] = @"AmbientButtonSpacing";
    +[PHUIConfiguration ambientInCallControlSpacing];
    v120 = [NSNumber numberWithDouble:?];
    v149[5] = v120;
    v148[6] = @"ButtonSliderSpacing";
    v37 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v38) = 25.0;
    if (v37 != 6)
    {
      v39 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v38) = 1102315520;
      if (v39 == 3)
      {
        *&v38 = 25.0;
      }
    }

    v119 = [NSNumber numberWithFloat:v38];
    v149[6] = v119;
    v148[7] = @"BottomSupplementalButtonSpacing";
    +[PHBottomBar defaultBottomSupplementalButtonSpacing];
    v118 = [NSNumber numberWithDouble:?];
    v149[7] = v118;
    v149[8] = &off_10036AFE0;
    v148[8] = @"TopSupplementalButtonSpacing";
    v148[9] = @"HeightOfAButtonPlusButtonSpacing";
    callDisplayStyleManager5 = [(PHBottomBar *)self callDisplayStyleManager];
    callDisplayStyle3 = [callDisplayStyleManager5 callDisplayStyle];
    if (callDisplayStyle3 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v43 = v42;
    }

    else
    {
      callDisplayStyleManager6 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([callDisplayStyleManager6 usesLargeFormatUI] && self->_isAudioCall)
      {
        +[PHBottomBar buttonHeightWithoutDefaultPadding];
      }

      else
      {
        +[PHBottomBarButtonConfiguration defaultHeight];
      }

      v43 = v44;
    }

    v45 = +[PHUIConfiguration inCallBottomBarSpacing];
    v46 = 30.0;
    if (v45 != 6)
    {
      v47 = +[PHUIConfiguration inCallBottomBarSpacing];
      v46 = 24.0;
      if (v47 == 3)
      {
        v46 = 30.0;
      }
    }

    v123 = v29;
    v48 = v43 + v46;
    *&v48 = v48;
    v49 = [NSNumber numberWithFloat:v48];
    v149[9] = v49;
    v148[10] = @"ButtonSpacingCallScreening";
    v50 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v51) = 30.0;
    if (v50 != 6)
    {
      v52 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v51) = 24.0;
      if (v52 == 3)
      {
        *&v51 = 30.0;
      }
    }

    v53 = [NSNumber numberWithFloat:v51];
    v149[10] = v53;
    v148[11] = @"HeightOfCallScreeningButtonPlusButtonSpacing";
    [(PHBottomBar *)self heightOfCallScreeningButtonPlusButtonSpacing];
    v54 = [NSNumber numberWithDouble:?];
    v149[11] = v54;
    v148[12] = @"HeightOfCallScreeningButton";
    [(PHBottomBar *)self heightOfCallScreeningButton];
    v55 = [NSNumber numberWithDouble:?];
    v149[12] = v55;
    v148[13] = @"ButtonSliderSpacingCallScreeningSlider";
    v56 = +[PHUIConfiguration inCallBottomBarSpacing];
    LODWORD(v57) = 25.0;
    if (v56 != 6)
    {
      v58 = +[PHUIConfiguration inCallBottomBarSpacing];
      LODWORD(v57) = 1102315520;
      if (v58 == 3)
      {
        *&v57 = 25.0;
      }
    }

    v59 = [NSNumber numberWithFloat:v57];
    v149[13] = v59;
    v60 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:14];

    if (callDisplayStyle3 != 3)
    {
    }

    if ((v126 & 1) == 0)
    {
    }

    if (v122)
    {
    }

    v61 = callDisplayStyleManager2;
    if (v126)
    {

      v61 = v117;
    }

    if (v124)
    {
    }

    if (v126)
    {
    }

    v131 = v60;
    v62 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainRightButton]", 0, v60, viewLabels);
    [v135 addObjectsFromArray:v62];

    mainRightButton = [(PHBottomBar *)self mainRightButton];
    centerXAnchor = [mainRightButton centerXAnchor];
    centerXAnchor2 = [(PHBottomBar *)self centerXAnchor];
    v66 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v135 addObject:v66];

    v67 = [(PHBottomBar *)self constraintsForState:stateCopy];
    [v135 addObjectsFromArray:v67];

    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v68 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v68 setFromValue:&off_10036B010];
    [v68 setToValue:&off_10036B020];
    v69 = [CAMediaTimingFunction functionWithName:@"easeInEaseOut"];
    [v68 setTimingFunction:v69];

    [v68 setDuration:0.0399999991];
    v70 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
    [v70 setMass:2.0];
    [v70 setStiffness:300.0];
    [v70 setDamping:50.0];
    [v70 setDuration:0.50999999];
    [v70 setEndAngle:2.35619449];
    [v70 setRemovedOnCompletion:0];
    v71 = [CAKeyframeAnimation animationWithKeyPath:@"backgroundColor"];
    v72 = +[UIColor systemGreenColor];
    cGColor = [v72 CGColor];

    v74 = +[UIColor systemRedColor];
    cGColor2 = [v74 CGColor];

    v147[0] = cGColor;
    v129 = cGColor2;
    v147[1] = cGColor2;
    v76 = [NSArray arrayWithObjects:v147 count:2];
    [v71 setValues:v76];

    [v71 setKeyTimes:&off_10036AF58];
    [v71 setDuration:0.254999995];
    [v71 setRemovedOnCompletion:0];
    v77 = [CASpringAnimation animationWithKeyPath:@"buttonSlideAnimation"];
    [v77 setMass:2.0];
    [v77 setStiffness:300.0];
    [v77 setDamping:50.0];
    [v77 setDuration:0.50999999];
    [v77 setKeyPath:@"position.x"];
    mainRightButton2 = [(PHBottomBar *)self mainRightButton];
    layer = [mainRightButton2 layer];
    [layer position];
    v80 = [NSNumber numberWithDouble:?];
    [v77 setFromValue:v80];

    [(PHBottomBar *)self bounds];
    v82 = [NSNumber numberWithDouble:v81 * 0.5];
    [v77 setToValue:v82];

    mainLeftButton = [(PHBottomBar *)self mainLeftButton];
    mainRightButton3 = [(PHBottomBar *)self mainRightButton];
    [mainLeftButton setAlpha:0.0];
    v145[0] = _NSConcreteStackBlock;
    v145[1] = 3221225472;
    v145[2] = sub_10013F9EC;
    v145[3] = &unk_100357110;
    v145[4] = self;
    v85 = mainLeftButton;
    v146 = v85;
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_10013FA60;
    v144[3] = &unk_1003569B0;
    v144[4] = self;
    [UIView animateWithDuration:0x20000 delay:v145 options:v144 animations:0.25 completion:0.0];
    [(PHBottomBar *)self setSupplementalTopLeftButton:0];
    [(PHBottomBar *)self setSupplementalTopRightButton:0];
    mainRightButton4 = [(PHBottomBar *)self mainRightButton];
    imageView = [mainRightButton4 imageView];
    [imageView setClipsToBounds:0];

    mainRightButton5 = [(PHBottomBar *)self mainRightButton];
    imageView2 = [mainRightButton5 imageView];
    [imageView2 setContentMode:4];

    +[CATransaction begin];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_10013FAC8;
    v139[3] = &unk_100359F88;
    v139[4] = self;
    v143 = stateCopy;
    v142 = v136;
    v133 = mainRightButton3;
    v140 = v133;
    v90 = v85;
    v141 = v90;
    [CATransaction setCompletionBlock:v139];
    mainRightButton6 = [(PHBottomBar *)self mainRightButton];
    titleLabel = [mainRightButton6 titleLabel];
    layer2 = [titleLabel layer];
    [layer2 addAnimation:v68 forKey:@"acceptTitleAnimation"];

    mainRightButton7 = [(PHBottomBar *)self mainRightButton];
    imageView3 = [mainRightButton7 imageView];
    layer3 = [imageView3 layer];
    [layer3 addAnimation:v70 forKey:@"rollButtonAnimation"];

    mainRightButton8 = [(PHBottomBar *)self mainRightButton];
    layer4 = [mainRightButton8 layer];
    [layer4 addAnimation:v77 forKey:@"buttonSlideAnimation"];

    mainRightButton9 = [(PHBottomBar *)self mainRightButton];
    objc_opt_class();
    LOBYTE(layer4) = objc_opt_isKindOfClass();

    mainRightButton10 = [(PHBottomBar *)self mainRightButton];
    v101 = mainRightButton10;
    if (layer4)
    {
      roundView = [mainRightButton10 roundView];
      layer5 = [roundView layer];
      [layer5 addAnimation:v71 forKey:@"buttonColorAnimation"];
    }

    else
    {
      roundView = [mainRightButton10 layer];
      [roundView addAnimation:v71 forKey:@"buttonColorAnimation"];
    }

    +[CATransaction commit];
    mainRightButton11 = [(PHBottomBar *)self mainRightButton];
    titleLabel2 = [mainRightButton11 titleLabel];
    layer6 = [titleLabel2 layer];
    [layer6 setOpacity:0.0];

    mainRightButton12 = [(PHBottomBar *)self mainRightButton];
    v108 = [UIColor colorWithCGColor:v129];
    [mainRightButton12 setBackgroundColor:v108];

    CATransform3DMakeRotation(&v138, 2.35619449, 0.0, 0.0, 1.0);
    mainRightButton13 = [(PHBottomBar *)self mainRightButton];
    imageView4 = [mainRightButton13 imageView];
    layer7 = [imageView4 layer];
    v137 = v138;
    [layer7 setTransform:&v137];

    buttonLayoutConstraints = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self removeConstraints:buttonLayoutConstraints];

    [(PHBottomBar *)self setButtonLayoutConstraints:v135];
    buttonLayoutConstraints2 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:buttonLayoutConstraints2];

    [(PHBottomBar *)self setNeedsLayout];
    [(PHBottomBar *)self layoutIfNeeded];
    [(PHBottomBar *)self setNeedsDisplay];
    [(PHBottomBar *)self forceDisplayIfNeeded];

    completionCopy = v136;
  }
}

- (void)_startShopDemoMode
{
  if (qword_1003A9BD0 <= 27)
  {
    v3 = qword_1003A9BD0 + 1;
  }

  else
  {
    v3 = 0;
  }

  qword_1003A9BD0 = v3;
  [(PHBottomBar *)self setCurrentState:?];

  [(PHBottomBar *)self performSelector:"_startShopDemoMode" withObject:0 afterDelay:1.0];
}

- (id)nameForActionType:(int64_t)type
{
  v4 = type - 1;
  if (type - 1) < 0x29 && ((0x1FFFFFFFBFFuLL >> v4))
  {
    type = off_100359FE8[v4];
  }

  else
  {
    type = [NSString stringWithFormat:@"Unknown (%ld)", type];
  }

  return type;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = PHBottomBar;
  changeCopy = change;
  [(PHBottomBar *)&v11 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHBottomBar *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    traitCollection2 = [(PHBottomBar *)self traitCollection];
    _backlightLuminance3 = [traitCollection2 _backlightLuminance];

    [(PHBottomBar *)self setUserInteractionEnabled:_backlightLuminance3 != 1];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = _backlightLuminance3 != 1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting userInteractionEnabled of bottom bar to %d because of back light change", buf, 8u);
    }
  }
}

- (NSArray)buttonsForAmbientTransition
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = v3;
  if (self->_mainLeftButton)
  {
    [v3 addObject:?];
  }

  if (self->_mainRightButton)
  {
    [v4 addObject:?];
  }

  if (self->_supplementalTopLeftButton)
  {
    [v4 addObject:?];
  }

  if (self->_supplementalTopRightButton)
  {
    [v4 addObject:?];
  }

  if (self->_supplementalBottomLeftButton)
  {
    [v4 addObject:?];
  }

  if (self->_supplementalBottomRightButton)
  {
    [v4 addObject:?];
  }

  if (self->_sideButtonLeft)
  {
    [v4 addObject:?];
  }

  if (self->_sideButtonRight)
  {
    [v4 addObject:?];
  }

  v5 = [v4 _cn_flatMap:&stru_100359FC8];

  return v5;
}

- (CGSize)trackSize
{
  slidingButton = [(PHBottomBar *)self slidingButton];

  if (slidingButton)
  {
    slidingButton2 = [(PHBottomBar *)self slidingButton];
    [slidingButton2 trackSize];
    width = v5;
    height = v7;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)rotatedTargetSizeOfParent
{
  width = self->_rotatedTargetSizeOfParent.width;
  height = self->_rotatedTargetSizeOfParent.height;
  result.height = height;
  result.width = width;
  return result;
}

@end