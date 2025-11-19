@interface PHBottomBar
+ (double)ambientWidth;
+ (double)buttonHeightWithoutDefaultPadding;
+ (double)defaultBottomSupplementalButtonSpacing;
+ (double)defaultInterButtonSpacing;
+ (double)defaultSideMarginForDoubleButton;
+ (double)defaultWidth;
+ (double)defaultYOffsetForBottomButtons;
- (BOOL)animateFromState:(int64_t)a3 toState:(int64_t)a4 completion:(id)a5;
- (BOOL)callScreeningAvailable;
- (BOOL)currentCallIsMuted;
- (BOOL)isSizeValidLandscape:(CGSize)a3;
- (BOOL)liveReplyAvailableForCall:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldShowActionTypeAudioRoute;
- (BOOL)shouldShowActionTypeCameraFlip;
- (BOOL)shouldShowActionTypeEffects;
- (BOOL)shouldShowActionTypePhotoCapture;
- (BOOL)shouldShowActionTypePunchOut;
- (BOOL)shouldShowActionTypeSendToVoicemail;
- (BOOL)shouldShowAnswerRTTButton;
- (BOOL)shouldShowUseRTTButton;
- (BOOL)shouldUseLayoutAsCallScreening;
- (BOOL)updatedSelectedStateForActionType:(int64_t)a3;
- (CGRect)frameForControlWithActionType:(int64_t)a3;
- (CGSize)effectiveSize;
- (CGSize)intrinsicContentSize;
- (CGSize)rotatedTargetSizeOfParent;
- (CGSize)trackSize;
- (NSArray)buttonsForAmbientTransition;
- (PHBottomBar)initWithCallDisplayStyleManager:(id)a3;
- (PHBottomBar)initWithCallDisplayStyleManager:(id)a3 isAudioCall:(BOOL)a4;
- (PHBottomBar)initWithFrame:(CGRect)a3;
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
- (id)audioRouteImageWithColor:(id)a3;
- (id)buttonsConstraintsForIPad;
- (id)constraintsForState:(int64_t)a3;
- (id)controlForActionType:(int64_t)a3;
- (id)customTitleStringForActionType:(int64_t)a3 givenDefaultTitle:(id)a4;
- (id)makeButtonWithType:(int64_t)a3 title:(id)a4 image:(id)a5 color:(id)a6 font:(id)a7 fontColor:(id)a8;
- (id)makeButtonWithType:(int64_t)a3 title:(id)a4 image:(id)a5 color:(id)a6 font:(id)a7 fontColor:(id)a8 diameter:(double)a9;
- (id)makeCaptureButtonWithDiameter:(double)a3;
- (id)makeSlidingButtonWithType:(int)a3;
- (id)nameForActionType:(int64_t)a3;
- (id)updatedImageForActionType:(int64_t)a3 givenDefaultImage:(id)a4;
- (id)updatedSelectedImageForActionType:(int64_t)a3 givenDefaultSelectedImage:(id)a4;
- (id)viewLabels;
- (int64_t)_gestureStateToCompletionState:(int64_t)a3;
- (int64_t)currentBottomBarCallState;
- (int64_t)updatedActionTypeForActionType:(int64_t)a3;
- (void)_startShopDemoMode;
- (void)addSubview:(id)a3;
- (void)ambientAnimateFromIncomingCallStateToCallScreeningStateWithCompletion:(id)a3;
- (void)animateFromFaceTimeOutgoingStateToFaceTimeInCallState:(int64_t)a3 withCompletion:(id)a4;
- (void)animateFromIncomingCallStateToFaceTimeInCallState:(int64_t)a3 withCompletion:(id)a4;
- (void)animateFromIncomingCallStateToInCallState:(int64_t)a3 withCompletion:(id)a4;
- (void)animateFromOutgoingStateToCallbackAndMessageUIToState:(int64_t)a3 withCompletion:(id)a4;
- (void)animateFromOutgoingStateToInCallStateWithCompletion:(id)a3;
- (void)animateInSupplementalBottomRightButton:(id)a3 WithCompletion:(id)a4;
- (void)animateOutSupplementalBottomLeftButtonToState:(int64_t)a3 withCompletion:(id)a4;
- (void)buttonLongPressed:(id)a3;
- (void)buttonPressed:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareButtonsForAnimationBegin;
- (void)prepareButtonsForAnimationEnd;
- (void)refreshCustomizedActionTypeTitleForButton:(id)a3;
- (void)refreshCustomizedActionTypeTitles;
- (void)refreshEndCallButton;
- (void)refreshUseRTTButton;
- (void)removeAllButtons;
- (void)setAction:(int64_t)a3 enabled:(BOOL)a4;
- (void)setAction:(int64_t)a3 selected:(BOOL)a4;
- (void)setAnimating:(BOOL)a3;
- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4 animationCompletionBlock:(id)a5;
- (void)setDeclineAndMessageIsAvailable:(BOOL)a3;
- (void)setDeclineAndRemindIsAvailable:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setPrefersWhiteButtonTextColor:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setUsesLowerButtons:(BOOL)a3;
- (void)setupCallScreeningMoreButton;
- (void)slidingButton:(id)a3 didSlideToProportion:(double)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMainButtonLayoutGuide;
- (void)updateTopLayoutGuide;
- (void)willFinishSlideForSlidingButton:(id)a3;
@end

@implementation PHBottomBar

- (BOOL)callScreeningAvailable
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];

  v4 = [v3 provider];
  if ([v4 isFaceTimeProvider])
  {
    v5 = +[TUCallCenter sharedInstance];
    v6 = [v5 currentCallCount] < 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = +[CNKFeatures sharedInstance];
  v8 = [v7 lvmEverywhereEnabled];

  v9 = +[UIDevice currentDevice];
  v10 = [v9 userInterfaceIdiom];
  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v8 && v10)
  {
    v12 = +[UIDevice currentDevice];
    v11 = [v12 userInterfaceIdiom] == 1;
  }

  LOBYTE(v13) = 0;
  if (TUCallScreeningEnabledM3() && v11)
  {
    v14 = +[UIApplication sharedApplication];
    v15 = [v14 delegate];
    if ([v15 isAnsweringMachineAvailable] && objc_msgSend(v3, "isEligibleForManualScreening"))
    {
      v16 = [v3 provider];
      v13 = [v16 isSystemProvider] & v6;
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

  v4 = [(PHBottomBar *)self delegate];
  v5 = [v4 bottomBarCallStateInBar:self];

  return v5;
}

- (UIButton)useRTTButton
{
  v3 = sub_10001A58C();
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 frontmostCall];

  v6 = [v5 localSenderIdentityUUID];
  v7 = [v3 rttDisplayName:0 forSubscriptionContextUUID:v6];
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
  v3 = [(PHBottomBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PHBottomBar *)self delegate];
    v5 = [v4 shouldShowUseRTT];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v3 = [(PHBottomBar *)self callDisplayStyleManager];
  if ([v3 usesLargeFormatUI])
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
  v3 = [(PHBottomBar *)self callDisplayStyleManager];
  if ([v3 usesLargeFormatUI])
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
  v4 = [v3 isIPadIdiom];

  if (v4)
  {
    v5 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v5 usesLargeFormatUI])
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
  v4 = [(PHBottomBar *)self centerXAnchor];
  v5 = [(PHBottomBar *)self supplementalBottomLeftButton];
  v6 = [v5 centerXAnchor];
  +[PHInCallNumberPadButton defaultSize];
  v8 = v7;
  v9 = sub_10001AD34();
  v10 = 0.0;
  if (v9)
  {
    v10 = 12.0;
  }

  v11 = [v4 constraintEqualToAnchor:v6 constant:v8 + v10];

  [v11 setIdentifier:@"supplementalBottomLeftButtonCenterXAnchorLayoutConstraint"];
  [v3 addObject:v11];
  v12 = [(PHBottomBar *)self supplementalBottomLeftButton];
  v13 = [v12 centerYAnchor];
  v14 = [(PHBottomBar *)self mainLeftButton];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

  [v16 setIdentifier:@"supplementalBottomLeftButtonCenterYAnchorLayoutConstraint"];
  [v3 addObject:v16];

  return v3;
}

- (id)_supplementalBottomRightButtonLayoutConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(PHBottomBar *)self supplementalBottomRightButton];
  v5 = [v4 centerXAnchor];
  v6 = [(PHBottomBar *)self centerXAnchor];
  +[PHInCallNumberPadButton defaultSize];
  v8 = v7;
  v9 = sub_10001AD34();
  v10 = 0.0;
  if (v9)
  {
    v10 = 12.0;
  }

  v11 = [v5 constraintEqualToAnchor:v6 constant:v8 + v10];

  [v11 setIdentifier:@"supplementalBottomRightButtonCenterXAnchorLayoutConstraint"];
  [v3 addObject:v11];
  v12 = [(PHBottomBar *)self supplementalBottomRightButton];
  v13 = [v12 centerYAnchor];
  v14 = [(PHBottomBar *)self mainLeftButton];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];

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
  v7 = [(PHBottomBar *)self subviews];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
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

      v10 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:{16, v9}];
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
  v3 = [v2 userInterfaceIdiom];

  result = 0.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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

- (PHBottomBar)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = PHBottomBar;
  v3 = [(PHBottomBar *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHBottomBar *)v3 setDeclineAndMessageIsAvailable:1];
    [(PHBottomBar *)v4 setDeclineAndRemindIsAvailable:1];
    v5 = +[UIColor clearColor];
    [(PHBottomBar *)v4 setBackgroundColor:v5];

    [(PHBottomBar *)v4 setOpaque:0];
    v6 = [(PHBottomBar *)v4 layer];
    [v6 setHitTestsAsOpaque:1];

    +[PHBottomBar defaultBottomMargin];
    [(PHBottomBar *)v4 setBottomMargin:?];
    +[PHBottomBar defaultYOffsetForBottomButtons];
    [(PHBottomBar *)v4 setYOffsetForLoweredButtons:?];
    v4->_blursBackground = 1;
    v4->_currentState = -1;
    v7 = [(PHBottomBar *)v4 layer];
    [v7 setAllowsGroupOpacity:0];

    v8 = [(PHBottomBar *)v4 layer];
    [v8 setAllowsGroupBlending:0];

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
      v14 = [(PHBottomBar *)v4 captureView];

      if (!v14)
      {
        v15 = objc_alloc_init(_UIVisualEffectBackdropView);
        [(PHBottomBar *)v4 setCaptureView:v15];

        v16 = [(PHBottomBar *)v4 captureView];
        [v16 setAutoresizingMask:18];

        v17 = [(PHBottomBar *)v4 captureView];
        [(PHBottomBar *)v4 insertSubview:v17 atIndex:0];

        v18 = [(PHBottomBar *)v4 captureView];
        [v18 setRenderMode:1];

        v19 = [(PHBottomBar *)v4 captureView];
        v20 = [v19 captureGroup];
        [v20 setGroupName:@"PHBottomBarButtonCaptureGroup"];
      }
    }
  }

  return v4;
}

- (PHBottomBar)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v6 = [(PHBottomBar *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
  }

  return v7;
}

- (PHBottomBar)initWithCallDisplayStyleManager:(id)a3 isAudioCall:(BOOL)a4
{
  result = [(PHBottomBar *)self initWithCallDisplayStyleManager:a3];
  if (result)
  {
    result->_isAudioCall = a4;
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
  v3 = [(PHBottomBar *)self callDisplayStyleManager];
  if ([v3 usesLargeFormatUI])
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

  v9 = [(PHBottomBar *)self callDisplayStyleManager];
  v10 = [v9 callDisplayStyle];

  if (v10 == 3)
  {
    +[PHBottomBar ambientWidth];
    v6 = v11;
    v12 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v12 callDisplayStyle] == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v8 = v13;
    }

    else
    {
      v22 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v22 usesLargeFormatUI] && self->_isAudioCall)
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
  v20 = [v19 isIPadIdiom];

  if (v20)
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
    v26 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v26 callDisplayStyle] == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
    }

    else
    {
      v27 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v27 usesLargeFormatUI] && self->_isAudioCall)
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
    v38 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v38 usesLargeFormatUI])
    {
      v39 = self->_isAudioCall;

      if (v39)
      {
        v40 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v40 callDisplayStyle] == 3)
        {
          +[PHUIConfiguration ambientInCallControlSize];
          v8 = v41;
        }

        else
        {
          v42 = [(PHBottomBar *)self callDisplayStyleManager];
          if ([v42 usesLargeFormatUI] && self->_isAudioCall)
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

- (BOOL)isSizeValidLandscape:(CGSize)a3
{
  v3 = a3.width != CGSizeZero.width;
  if (a3.height != CGSizeZero.height)
  {
    v3 = 1;
  }

  return a3.width > a3.height && v3;
}

- (BOOL)liveReplyAvailableForCall:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (TUReceptionistAvailable() && (+[PHInCallUIUtilities shouldHideSensitiveUI](PHInCallUIUtilities, "shouldHideSensitiveUI") & 1) == 0 && [v3 isReceptionistCapable])
  {
    v5 = [v3 contactIdentifier];
    if (v5)
    {
      v6 = [v3 isThumper] ^ 1;
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
    v7 = [(PHBottomBar *)self callDisplayStyleManager];
    v8 = [v7 callDisplayStyle];

    if (v8 != 3)
    {
      if (self->_sideButtonLeft || self->_sideButtonRight)
      {
        v9 = [(PHBottomBar *)self usesLowerButtons];
        v10 = [(PHBottomBar *)self callDisplayStyleManager];
        v11 = [v10 callDisplayStyle];
        v12 = v11;
        if (v9)
        {
          if (v11 == 3)
          {
            +[PHUIConfiguration ambientInCallControlSize];
            v14 = v13;
          }

          else
          {
            v9 = [(PHBottomBar *)self callDisplayStyleManager];
            if ([v9 usesLargeFormatUI] && self->_isAudioCall)
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
          if (v11 == 3)
          {
            +[PHUIConfiguration ambientInCallControlSize];
            v16 = v15;
          }

          else
          {
            v9 = [(PHBottomBar *)self callDisplayStyleManager];
            if ([v9 usesLargeFormatUI] && self->_isAudioCall)
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
        v10 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v10 callDisplayStyle] == 3)
        {
          +[PHUIConfiguration ambientInCallControlSize];
          v27 = v36;
        }

        else
        {
          v37 = [(PHBottomBar *)self callDisplayStyleManager];
          if ([v37 usesLargeFormatUI] && self->_isAudioCall)
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(PHBottomBar *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([v14 isHidden] & 1) == 0 && objc_msgSend(v14, "isUserInteractionEnabled"))
        {
          [(PHBottomBar *)self convertPoint:v14 toView:x, y];
          v11 |= [v14 pointInside:v7 withEvent:?];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

- (void)setAction:(int64_t)a3 selected:(BOOL)a4
{
  v4 = a4;
  v5 = [(PHBottomBar *)self controlForActionType:a3];
  [v5 setSelected:v4];
}

- (void)setAction:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = [(PHBottomBar *)self controlForActionType:?];
  v7 = v6;
  if (a3 == 33)
  {
    [v6 setShowDisabled:v4 ^ 1];
    v6 = v7;
  }

  [v6 setEnabled:v4];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PHBottomBar *)self isUserInteractionEnabled]!= a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(PHBottomBar *)self viewLabels];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10) setEnabled:v3];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = PHBottomBar;
  [(PHBottomBar *)&v11 setUserInteractionEnabled:v3];
}

- (void)setDeclineAndMessageIsAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = +[TUCallCenter sharedInstance];
  v11 = [v5 frontmostAudioOrVideoCall];

  if (v3)
  {
    v6 = [v11 isBranded] ^ 1;
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
  [v9 setHidden:!v3];

  v10 = [(PHBottomBar *)self controlForActionType:9];
  [v10 setHidden:!v3];

  self->_declineAndMessageIsAvailable = v3;
}

- (void)setDeclineAndRemindIsAvailable:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHBottomBar *)self controlForActionType:13];
  [v5 setHidden:!v3];

  self->_declineAndRemindIsAvailable = v3;
}

- (int64_t)_gestureStateToCompletionState:(int64_t)a3
{
  v3 = 1;
  if (a3 == 4)
  {
    v3 = 2;
  }

  if (a3 == 1)
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
  v13 = [(PHBottomBar *)self supplementalTopRightButton];
  [v13 setMenu:v12];

  v14 = [(PHBottomBar *)self supplementalTopRightButton];
  [v14 setShowsMenuAsPrimaryAction:1];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setCurrentState:(int64_t)a3 animated:(BOOL)a4 animationCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (![(PHBottomBar *)self animating])
  {
    v12 = +[TUCallCenter sharedInstance];
    v13 = [v12 frontmostAudioOrVideoCall];

    v14 = [(PHBottomBar *)self callScreeningAvailable];
    v15 = sub_100004F84();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v242 = self;
      v243 = 2048;
      v244 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BottomBar (%@) set to state: %ld", buf, 0x16u);
    }

    if ([(PHBottomBar *)self currentState]== a3)
    {
      goto LABEL_90;
    }

    if (v5 && [(PHBottomBar *)self animateFromState:self->_currentState toState:a3 completion:v8])
    {
      v16 = 1;
      goto LABEL_69;
    }

    [(PHBottomBar *)self removeAllButtons];
    if (a3)
    {
      if (a3 == 11)
      {
        v17 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainLeftButton:v17];

        v18 = [(PHBottomBar *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v19 = [(PHBottomBar *)self delegate];
          v20 = [v19 shouldShowHardPauseNumbers];

          if (!v20)
          {
LABEL_19:
            v25 = [(PHBottomBar *)self useRTTButton];
            [(PHBottomBar *)self setSupplementalBottomRightButton:v25];

            v26 = [(PHBottomBar *)self shouldShowUseRTTButton];
            v27 = [(PHBottomBar *)self supplementalBottomRightButton];
            [v27 setAlpha:v26];

            goto LABEL_63;
          }

          v21 = +[PHUIConfiguration inCallBottomBarSpacing];
          v22 = 15.0;
          if (!v21)
          {
            v22 = 14.0;
          }

          v18 = [UIFont systemFontOfSize:v22];
          v23 = +[UIColor whiteColor];
          v24 = [(PHBottomBar *)self makeButtonWithType:23 title:&stru_100361FD0 image:0 color:0 font:v18 fontColor:v23];
          [(PHBottomBar *)self setSupplementalBottomLeftButton:v24];
        }

        goto LABEL_19;
      }

      if ((a3 - 1) <= 2)
      {
        v32 = [(PHBottomBar *)self makeButtonWithType:8 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainLeftButton:v32];

        if (a3 == 1)
        {
          v33 = 3;
        }

        else
        {
          v33 = 1;
        }

        v34 = [(PHBottomBar *)self makeButtonWithType:v33 title:0 image:0 color:0 font:0 fontColor:0];
        [(PHBottomBar *)self setMainRightButton:v34];

        v35 = [(PHBottomBar *)self callDisplayStyleManager];
        v36 = [v35 callDisplayStyle] == 3;

        if (v36)
        {
          if (v14)
          {
            v37 = [(PHBottomBar *)self makeButtonWithType:25 title:0 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setSideButtonLeft:v37];
          }
        }

        else if (v14)
        {
          v55 = +[CNKFeatures sharedInstance];
          v56 = [v55 receptionistEnabled];

          if (v56)
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

      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        if (!v14)
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
          v39 = [(PHBottomBar *)self liveReplyAvailableForCall:v13];

          if (v39)
          {
            v40 = [(PHBottomBar *)self makeButtonWithType:26 title:0 image:0 color:0 font:0 fontColor:0 diameter:44.0];
            [(PHBottomBar *)self setSupplementalTopLeftButton:v40];

            [(PHBottomBar *)self setupCallScreeningMoreButton];
LABEL_95:
            v118 = [(PHBottomBar *)self makeSlidingButtonWithType:a3 == 5];
            [(PHBottomBar *)self setSlidingButton:v118];

            if (![(PHBottomBar *)self shouldShowAnswerRTTButton])
            {
              goto LABEL_63;
            }

            v119 = [UIImage imageNamed:@"Call Accept RTT"];
            v31 = [v119 imageWithRenderingMode:2];

            if (v31)
            {
              v120 = [(PHBottomBar *)self slidingButton];
              v121 = [v120 acceptButton];
              [v121 setKnobImage:v31];
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

      switch(a3)
      {
        case 6:
          v50 = [(PHBottomBar *)self callDisplayStyleManager];
          v51 = [v50 callDisplayStyle] == 3;

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

          v146 = [(PHBottomBar *)self callCenter];
          v147 = [v146 isEndAndAnswerAllowed];

          if (v147)
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

          v198 = [(PHBottomBar *)self callDisplayStyleManager];
          v199 = [v198 callDisplayStyle] == 3;

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

          v160 = [(PHBottomBar *)self callCenter];
          v161 = [v160 isEndAndAnswerAllowed];

          if (v161)
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

          v203 = [(PHBottomBar *)self callDisplayStyleManager];
          v204 = [v203 callDisplayStyle] == 3;

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
          v155 = [(PHBottomBar *)self callCenter];
          v156 = [v155 isEndAndAnswerAllowed];

          if (v156)
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

          v185 = [(PHBottomBar *)self callDisplayStyleManager];
          v186 = [v185 callDisplayStyle] == 3;

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
            v175 = [(PHBottomBar *)self delegate];
            v176 = [v175 imageForItemInBar:self withActionType:31];
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
          v135 = [v134 isDialPadEnabled];

          v136 = [(PHBottomBar *)self makeButtonWithType:15 title:0 image:0 color:0 font:0 fontColor:0];
          if (v135)
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
          if (a3 <= 24)
          {
            if (a3 == 22)
            {
              v227 = [(PHBottomBar *)self makeButtonWithType:39 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainLeftButton:v227];

              v228 = [(PHBottomBar *)self makeButtonWithType:38 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainRightButton:v228];

              v229 = [(PHBottomBar *)self alertFeedbackGenerator];
              [v229 notificationOccurred:0];

              goto LABEL_63;
            }

            if (a3 != 23)
            {
LABEL_63:
              v66 = [(PHBottomBar *)self mainRightButton];
              [(PHBottomBar *)self addSubview:v66];

              v67 = [(PHBottomBar *)self mainLeftButton];
              [(PHBottomBar *)self addSubview:v67];

              v68 = [(PHBottomBar *)self supplementalTopLeftButton];
              [(PHBottomBar *)self addSubview:v68];

              v69 = [(PHBottomBar *)self supplementalTopRightButton];
              [(PHBottomBar *)self addSubview:v69];

              v70 = [(PHBottomBar *)self supplementalBottomLeftButton];
              [(PHBottomBar *)self addSubview:v70];

              v71 = [(PHBottomBar *)self supplementalBottomRightButton];
              [(PHBottomBar *)self addSubview:v71];

              v72 = [(PHBottomBar *)self slidingButton];
              [(PHBottomBar *)self addSubview:v72];

              v73 = [(PHBottomBar *)self sideButtonLeft];
              [(PHBottomBar *)self addSubview:v73];

              v74 = [(PHBottomBar *)self sideButtonRight];
              [(PHBottomBar *)self addSubview:v74];

              if ([(PHBottomBar *)self declineAndMessageIsAvailable])
              {
                v75 = [v13 isBranded] ^ 1;
              }

              else
              {
                v75 = 0;
              }

              v76 = [(PHBottomBar *)self controlForActionType:12];
              [v76 setEnabled:v75];

              v77 = [(PHBottomBar *)self controlForActionType:9];
              [v77 setEnabled:v75];

              v78 = [(PHBottomBar *)self declineAndMessageIsAvailable];
              v79 = [(PHBottomBar *)self controlForActionType:12];
              [v79 setHidden:v78 ^ 1];

              v80 = [(PHBottomBar *)self declineAndMessageIsAvailable];
              v81 = [(PHBottomBar *)self controlForActionType:9];
              [v81 setHidden:v80 ^ 1];

              v82 = [(PHBottomBar *)self declineAndRemindIsAvailable];
              v83 = [(PHBottomBar *)self controlForActionType:13];
              [v83 setHidden:v82 ^ 1];

              v84 = [(PHBottomBar *)self buttonLayoutConstraints];

              if (v84)
              {
                v85 = [(PHBottomBar *)self buttonLayoutConstraints];
                [(PHBottomBar *)self removeConstraints:v85];
              }

              v86 = [(PHBottomBar *)self constraintsForState:a3];
              [(PHBottomBar *)self setButtonLayoutConstraints:v86];

              v87 = [(PHBottomBar *)self buttonLayoutConstraints];
              [(PHBottomBar *)self addConstraints:v87];

              v16 = 0;
LABEL_69:
              self->_currentState = a3;
              [(PHBottomBar *)self setNeedsLayout];
              if (v8)
              {
                v88 = v16;
              }

              else
              {
                v88 = 1;
              }

              if ((v88 & 1) == 0)
              {
                v8[2](v8, 1);
              }

              v89 = [(PHBottomBar *)self statusChangedHandler];

              if (v89)
              {
                v90 = [(PHBottomBar *)self statusChangedHandler];
                v90[2]();
              }

              if (!v5)
              {
                [(PHBottomBar *)self layoutIfNeeded];
              }

              v91 = [(PHBottomBar *)self captureView];
              if (!v91)
              {
                goto LABEL_90;
              }

              if ([(PHBottomBar *)self callScreeningAvailable])
              {
              }

              else
              {
                v92 = [(PHBottomBar *)self shouldUseLayoutAsCallScreening];

                if ((v92 & 1) == 0)
                {
LABEL_90:

                  goto LABEL_91;
                }
              }

              v93 = [(PHBottomBar *)self slidingButton];

              if (v93)
              {
                v94 = [(PHBottomBar *)self slidingButton];
                v95 = [v94 acceptButton];
                v96 = [v95 trackSolidViewBackDropVisualEffectView];
                [v96 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                v97 = [(PHBottomBar *)self captureView];
                v98 = [(PHBottomBar *)self slidingButton];
                v99 = [v98 acceptButton];
                v100 = [v99 trackSolidViewBackDropVisualEffectView];
                [v100 _setCaptureView:v97];
              }

              v101 = [(PHBottomBar *)self supplementalTopLeftButton];
              if (v101)
              {
                v102 = [(PHBottomBar *)self supplementalTopLeftButton];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v104 = [(PHBottomBar *)self supplementalTopLeftButton];
                  v105 = [v104 effectView];
                  [v105 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                  v106 = [(PHBottomBar *)self captureView];
                  v107 = [v104 effectView];
                  [v107 _setCaptureView:v106];
                }
              }

              v108 = [(PHBottomBar *)self supplementalTopRightButton];
              if (v108)
              {
                v109 = [(PHBottomBar *)self supplementalTopRightButton];
                objc_opt_class();
                v110 = objc_opt_isKindOfClass();

                if (v110)
                {
                  v111 = [(PHBottomBar *)self supplementalTopRightButton];
                  v112 = [v111 effectView];
                  [v112 _setGroupName:@"PHBottomBarButtonCaptureGroup"];

                  v113 = [(PHBottomBar *)self captureView];
                  v114 = [v111 effectView];
                  [v114 _setCaptureView:v113];
                }
              }

              goto LABEL_90;
            }
          }

          else
          {
            if (a3 == 28)
            {
              v223 = [NSBundle bundleForClass:objc_opt_class()];
              v224 = [v223 localizedStringForKey:@"END" value:&stru_100361FD0 table:@"BottomBar"];
              v225 = [(PHBottomBar *)self makeButtonWithType:11 title:v224 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainLeftButton:v225];

              v226 = [(PHBottomBar *)self makeButtonWithType:40 title:0 image:0 color:0 font:0 fontColor:0];
              [(PHBottomBar *)self setMainRightButton:v226];

              goto LABEL_63;
            }

            if (a3 == 26)
            {
              goto LABEL_188;
            }

            if (a3 != 25)
            {
              goto LABEL_63;
            }
          }

          v208 = +[CNKFeatures sharedInstance];
          v209 = [v208 lvm_stopEnabled];

          v210 = [NSBundle bundleForClass:objc_opt_class()];
          v211 = v210;
          if (v209)
          {
            v212 = [v210 localizedStringForKey:@"SCREENING_STOP" value:&stru_100361FD0 table:@"BottomBar"];
            v213 = [(PHBottomBar *)self makeButtonWithType:11 title:v212 image:0 color:0 font:0 fontColor:0];
            [(PHBottomBar *)self setMainLeftButton:v213];

            v214 = [(PHBottomBar *)self callDisplayStyleManager];
            v215 = [v214 callDisplayStyle] == 3 && a3 == 25;

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
            if (a3 == 25)
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

    v42 = [(PHBottomBar *)self callDisplayStyleManager];
    v43 = [v42 callDisplayStyle] == 3;

    if (v43)
    {
      v44 = [v13 provider];
      v45 = [v44 isSystemProvider];

      if (v45)
      {
        if (v14)
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

    if (!v14)
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
      v48 = [(PHBottomBar *)self liveReplyAvailableForCall:v13];

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
    v242 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bottom bar is currently animating, we will pend this bottom bar state change to state %ld until that's over", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = [(PHBottomBar *)self pendingStateBlocks];
  v234 = _NSConcreteStackBlock;
  v235 = 3221225472;
  v236 = sub_100136750;
  v237 = &unk_100359EC0;
  objc_copyWeak(v239, buf);
  v239[1] = a3;
  v240 = v5;
  v238 = v8;
  v11 = objc_retainBlock(&v234);
  [v10 addObject:{v11, v234, v235, v236, v237}];

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
  v158 = self;
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
        v61 = [v57 topAnchor];
        v62 = self;
        v58 = v61;
        v59 = [(PHBottomBar *)v62 topAnchor];
        v63 = [v58 constraintEqualToAnchor:v59];
        v16 = 0;
        goto LABEL_55;
      }

      v23 = [(PHSlidingButton *)slidingButton topAnchor];
      v24 = self;
      v25 = v23;
      v26 = [(PHBottomBar *)v24 topAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      v156 = 0;
      goto LABEL_46;
    }
  }

  v156 = supplementalTopLeftButton;
  v11 = [(UIButton *)v156 topAnchor];
  v12 = [(PHBottomBar *)v158 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [v3 addObject:v13];
  if (v158->_supplementalTopLeftButton && v158->_supplementalTopRightButton)
  {
    v14 = v158->_sideButtonLeft;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v158->_mainLeftButton;
      if (!v15)
      {
        v150 = 0;
        goto LABEL_24;
      }
    }

    v150 = v15;
    if ([v4 count] >= 2)
    {
      v28 = [(UIButton *)v158->_supplementalTopLeftButton centerXAnchor];
      v29 = [(UIButton *)v15 centerXAnchor];
      goto LABEL_27;
    }

LABEL_24:
    v30 = v158->_slidingButton;
    if (v30)
    {
      [(PHSlidingButton *)v30 trackSize];
      v32 = v31 * 0.5;
      v28 = [(UIButton *)v158->_supplementalTopLeftButton centerXAnchor];
      [(PHSlidingButton *)v158->_slidingButton leadingAnchor];
      v34 = v33 = v158;
      v146 = [v28 constraintEqualToAnchor:v34 constant:v32];
      goto LABEL_28;
    }

    v28 = [(UIButton *)v158->_supplementalTopLeftButton leadingAnchor];
    v29 = [(PHBottomBar *)v158 leadingAnchor];
LABEL_27:
    v33 = v158;
    v34 = v29;
    v146 = [v28 constraintEqualToAnchor:v29];
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
      v37 = [(UIButton *)v33->_supplementalTopRightButton centerXAnchor];
      v38 = [(UIButton *)v36 centerXAnchor];
      goto LABEL_37;
    }

LABEL_34:
    supplementalTopRightButton = v33->_supplementalTopRightButton;
    if (v33->_slidingButton)
    {
      v37 = [(UIButton *)supplementalTopRightButton centerXAnchor];
      v40 = [(PHSlidingButton *)v33->_slidingButton acceptButton];
      v41 = [v40 trailingAnchor];
      v42 = [v37 constraintEqualToAnchor:v41 constant:-v32];

LABEL_38:
      v164[0] = v146;
      v164[1] = v42;
      v43 = [(UIButton *)v33->_supplementalTopRightButton topAnchor];
      v44 = [(UIButton *)v33->_supplementalTopLeftButton topAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];
      v164[2] = v45;
      v46 = [NSArray arrayWithObjects:v164 count:3];
      [v155 addObjectsFromArray:v46];

      v3 = v155;
      v16 = v156;
      goto LABEL_39;
    }

    v37 = [(UIButton *)supplementalTopRightButton trailingAnchor];
    v38 = [(PHBottomBar *)v33 trailingAnchor];
LABEL_37:
    v40 = v38;
    v42 = [v37 constraintEqualToAnchor:v38];
    goto LABEL_38;
  }

  v16 = v156;
  v17 = [(UIButton *)v156 centerXAnchor];
  [(PHBottomBar *)v158 centerXAnchor];
  v19 = v18 = v158;
  v20 = [v17 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

LABEL_39:
  p_slidingButton = &v18->_slidingButton;
  v47 = v18->_slidingButton;
  if (!v47)
  {
    self = v18;
    goto LABEL_47;
  }

  v25 = [(PHSlidingButton *)v47 topAnchor];
  v26 = [(PHSlidingButton *)v16 bottomAnchor];
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

  v27 = [v25 constraintEqualToAnchor:v26 constant:v48];
LABEL_46:
  v151 = v27;

  v163[0] = v27;
  v50 = [(PHSlidingButton *)*p_slidingButton leadingAnchor];
  self = v158;
  v51 = [(PHBottomBar *)v158 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v163[1] = v52;
  v53 = [(PHSlidingButton *)*p_slidingButton trailingAnchor];
  v54 = [(PHBottomBar *)v158 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
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
  v58 = [v57 topAnchor];
  v59 = [(PHSlidingButton *)v16 bottomAnchor];
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

  v63 = [v58 constraintEqualToAnchor:v59 constant:v60];
LABEL_55:

  if ([v4 count] == 1)
  {
    v162[0] = v63;
    v65 = [v4 objectAtIndexedSubscript:0];
    v66 = [v65 centerXAnchor];
    self = v158;
    v67 = [(PHBottomBar *)v158 centerXAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
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
        v141 = [v148 leadingAnchor];
        v134 = [(PHBottomBar *)v158 leadingAnchor];
        v144 = [v141 constraintEqualToAnchor:v134];
        v160[1] = v144;
        v153 = 1;
        v137 = [v4 objectAtIndexedSubscript:1];
        v131 = [v137 centerXAnchor];
        v129 = [(PHBottomBar *)v158 centerXAnchor];
        v127 = [v131 constraintEqualToAnchor:v129];
        v160[2] = v127;
        v125 = [v4 objectAtIndexedSubscript:1];
        v121 = [v125 centerYAnchor];
        v123 = [v4 objectAtIndexedSubscript:0];
        v119 = [v123 centerYAnchor];
        v117 = [v121 constraintEqualToAnchor:v119];
        v160[3] = v117;
        v115 = [v4 objectAtIndexedSubscript:2];
        v113 = [v115 trailingAnchor];
        v111 = [(PHBottomBar *)v158 trailingAnchor];
        v80 = [v113 constraintEqualToAnchor:v111];
        v160[4] = v80;
        v81 = [v4 objectAtIndexedSubscript:2];
        v82 = [v81 centerYAnchor];
        v83 = [v4 objectAtIndexedSubscript:0];
        v84 = [v83 centerYAnchor];
        v85 = [v82 constraintEqualToAnchor:v84];
        v160[5] = v85;
        v86 = [NSArray arrayWithObjects:v160 count:6];
        [v155 addObjectsFromArray:v86];

        v3 = v155;
        v67 = v134;

        v66 = v141;
        v65 = v148;

        v69 = v137;
        v68 = v144;

        self = v158;
        v87 = v131;
      }

      else
      {
        v159[0] = v63;
        v149 = [v4 objectAtIndexedSubscript:0];
        v142 = [v149 leadingAnchor];
        v135 = [(PHBottomBar *)v158 leadingAnchor];
        v145 = [v142 constraintEqualToAnchor:v135];
        v159[1] = v145;
        v153 = 1;
        v138 = [v4 objectAtIndexedSubscript:1];
        v130 = [v138 leadingAnchor];
        v132 = [v4 objectAtIndexedSubscript:0];
        v128 = [v132 trailingAnchor];
        v126 = [v130 constraintEqualToAnchor:v128];
        v159[2] = v126;
        v124 = [v4 objectAtIndexedSubscript:1];
        v120 = [v124 centerYAnchor];
        v122 = [v4 objectAtIndexedSubscript:0];
        v118 = [v122 centerYAnchor];
        v116 = [v120 constraintEqualToAnchor:v118];
        v159[3] = v116;
        v114 = [v4 objectAtIndexedSubscript:2];
        v110 = [v114 trailingAnchor];
        v112 = [v4 objectAtIndexedSubscript:3];
        v109 = [v112 leadingAnchor];
        v108 = [v110 constraintEqualToAnchor:v109];
        v159[4] = v108;
        v107 = [v4 objectAtIndexedSubscript:2];
        v105 = [v107 centerYAnchor];
        v106 = [v4 objectAtIndexedSubscript:0];
        v104 = [v106 centerYAnchor];
        v103 = [v105 constraintEqualToAnchor:v104];
        v159[5] = v103;
        v102 = [v4 objectAtIndexedSubscript:3];
        v101 = [v102 trailingAnchor];
        v100 = [(PHBottomBar *)v158 trailingAnchor];
        v88 = [v101 constraintEqualToAnchor:v100];
        v159[6] = v88;
        v89 = [v4 objectAtIndexedSubscript:3];
        v90 = [v89 centerYAnchor];
        v91 = [v4 objectAtIndexedSubscript:0];
        v92 = [v91 centerYAnchor];
        v93 = [v90 constraintEqualToAnchor:v92];
        v159[7] = v93;
        v94 = [NSArray arrayWithObjects:v159 count:8];
        [v155 addObjectsFromArray:v94];

        v3 = v155;
        v67 = v135;

        v66 = v142;
        v65 = v149;

        v69 = v138;
        v68 = v145;

        self = v158;
        v87 = v130;
      }

      v16 = v157;
      goto LABEL_64;
    }

    v70 = v63;
    v161[0] = v63;
    v147 = [v4 objectAtIndexedSubscript:0];
    v140 = [v147 leadingAnchor];
    v71 = [(PHBottomBar *)v158 leadingAnchor];
    v143 = [v140 constraintEqualToAnchor:v71];
    v161[1] = v143;
    v136 = [v4 objectAtIndexedSubscript:1];
    v152 = [v136 trailingAnchor];
    v72 = [(PHBottomBar *)v158 trailingAnchor];
    v73 = [v152 constraintEqualToAnchor:v72];
    v161[2] = v73;
    v74 = [v4 objectAtIndexedSubscript:1];
    [v74 centerYAnchor];
    v75 = v133 = v70;
    v76 = [v4 objectAtIndexedSubscript:0];
    v77 = [v76 centerYAnchor];
    v78 = [v75 constraintEqualToAnchor:v77];
    v161[3] = v78;
    v79 = [NSArray arrayWithObjects:v161 count:4];
    [v155 addObjectsFromArray:v79];

    v67 = v71;
    v3 = v155;

    v66 = v140;
    v65 = v147;

    v16 = v157;
    v63 = v133;

    v69 = v136;
    v68 = v143;

    self = v158;
  }

  v153 = 0;
LABEL_64:

  v95 = [v4 objectAtIndexedSubscript:v153];

  v16 = v95;
LABEL_65:
  if (v16)
  {
    v96 = [(PHSlidingButton *)v16 bottomAnchor];
    v97 = [(PHBottomBar *)self bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];
    [v3 addObject:v98];

    v4 = v154;
  }

LABEL_67:

  return v3;
}

- (id)constraintsForState:(int64_t)a3
{
  v4 = +[NSMutableArray array];
  v295 = [(PHBottomBar *)self callScreeningAvailable];
  v5 = [(PHBottomBar *)self viewLabels];
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
  v6 = [(PHBottomBar *)self usesLowerButtons];
  v287 = [(PHBottomBar *)self callDisplayStyleManager];
  v7 = [v287 callDisplayStyle];
  v8 = v7 != 3;
  v288 = v6;
  if (v6)
  {
    if (v7 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v12 = v11;
    }

    else
    {
      v277 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v277 usesLargeFormatUI] && self->_isAudioCall)
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
    if (v7 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v14 = v13;
    }

    else
    {
      v276 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v276 usesLargeFormatUI] && self->_isAudioCall)
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
  v299 = v5;
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
  v35 = [(PHBottomBar *)self callDisplayStyleManager];
  v36 = [v35 callDisplayStyle];
  if (v36 == 3)
  {
    +[PHUIConfiguration ambientInCallControlSize];
    v38 = v37;
  }

  else
  {
    v278 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v278 usesLargeFormatUI] && self->_isAudioCall)
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
  v301 = self;
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

  if (v36 != 3)
  {
  }

  v56 = v301;
  if ((v288 & 1) == 0)
  {
  }

  v57 = v5;
  v58 = v300;
  if (v284)
  {
  }

  v59 = v287;
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

  supplementalTopLeftButton = v301->_supplementalTopLeftButton;
  if (!supplementalTopLeftButton)
  {
    supplementalTopLeftButton = v301->_supplementalTopRightButton;
  }

  v61 = supplementalTopLeftButton;
  if ((v295 & 1) != 0 || [(PHBottomBar *)v301 shouldUseLayoutAsCallScreening])
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

  v72 = [(PHBottomBar *)v301 callDisplayStyleManager];
  if ([v72 usesLargeFormatUI])
  {
    isAudioCall = v301->_isAudioCall;

    if (isAudioCall)
    {
      v74 = [(PHBottomBar *)v301 buttonsConstraintsForIPad];
      goto LABEL_136;
    }
  }

  else
  {
  }

  switch(a3)
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
      v179 = [(PHBottomBar *)v301 callDisplayStyleManager];
      v180 = [v179 callDisplayStyle];

      if (v180 != 3)
      {
LABEL_105:
        v181 = [(PHBottomBar *)v301 slidingButton];
        v182 = [NSLayoutConstraint constraintWithItem:v181 attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v182];

        if ((v295 & 1) != 0 || [(PHBottomBar *)v301 shouldUseLayoutAsCallScreening])
        {
          v183 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopLeftButton]-(ButtonSliderSpacingCallScreeningSlider)-[_slidingButton]", 0, v55, v5);
          [v300 addObjectsFromArray:v183];

          v184 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopRightButton]-(ButtonSliderSpacingCallScreeningSlider)-[_slidingButton]", 0, v55, v5);
          [v300 addObjectsFromArray:v184];

          v185 = [(PHBottomBar *)v301 slidingButton];
          [v185 knobWidth];
          v187 = v186;

          v188 = (v187 + -44.0) * 0.5 + 6.0;
        }

        else
        {
          v231 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopLeftButton]-(ButtonSliderSpacing)-[_slidingButton]", 0, v55, v5);
          [v300 addObjectsFromArray:v231];

          v232 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_supplementalTopRightButton]-(ButtonSliderSpacing)-[_slidingButton]", 0, v55, v5);
          [v300 addObjectsFromArray:v232];

          v188 = 0.0;
        }

        v233 = [(PHBottomBar *)v301 supplementalTopLeftButton];
        v234 = [(PHBottomBar *)v301 slidingButton];
        v235 = [NSLayoutConstraint constraintWithItem:v233 attribute:5 relatedBy:0 toItem:v234 attribute:5 multiplier:1.0 constant:v188];
        [v300 addObject:v235];

        v117 = [(PHBottomBar *)v301 supplementalTopRightButton];
        v119 = [(PHBottomBar *)v301 slidingButton];
        v121 = -v188;
        v120 = 1.0;
        v122 = v117;
        v123 = 6;
        v124 = v119;
        v125 = 6;
        goto LABEL_132;
      }

LABEL_71:
      v75 = [(PHBottomBar *)v301 callDisplayStyleManager];
      v76 = [v75 callDisplayStyle];

      if (v76 == 3)
      {
        v296 = v61;
        v77 = [(PHBottomBar *)v301 sideButtonLeft];

        v293 = v55;
        if (v77)
        {
          v78 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[_sideButtonLeft]-(AmbientButtonSpacing)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]|", 0, v55, v5);
          [v300 addObjectsFromArray:v78];

          v79 = [(PHBottomBar *)v301 mainLeftButton];
          v80 = [v79 centerXAnchor];
          v81 = [(PHBottomBar *)v301 centerXAnchor];
          v82 = [v80 constraintEqualToAnchor:v81];
          v303[0] = v82;
          v83 = [(PHBottomBar *)v301 sideButtonLeft];
          [v83 topAnchor];
          v85 = v84 = v300;
          v86 = [(PHBottomBar *)v301 topAnchor];
          v87 = [v85 constraintEqualToAnchor:v86];
          v303[1] = v87;
          v88 = [NSArray arrayWithObjects:v303 count:2];
          [v300 addObjectsFromArray:v88];

          v56 = v301;
        }

        else
        {
          v79 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(>=0)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]-|", 0, v55, v5);
          [v300 addObjectsFromArray:v79];
          v84 = v300;
        }

        v144 = [v56 mainLeftButton];
        v145 = [v144 topAnchor];
        v146 = [v56 topAnchor];
        v147 = [v145 constraintEqualToAnchor:v146];
        v302[0] = v147;
        v148 = [v56 mainRightButton];
        v149 = [v148 topAnchor];
        v150 = [v56 topAnchor];
        v151 = [v149 constraintEqualToAnchor:v150];
        v302[1] = v151;
        v152 = v302;
        goto LABEL_141;
      }

      v109 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|", 0, v55, v5);
      [v300 addObjectsFromArray:v109];

      v110 = @"V:|[_supplementalTopRightButton]-(ButtonSpacingCallScreening)-[_mainRightButton]";
      v111 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacingCallScreening)-[_mainLeftButton]";
      if ((v295 & 1) == 0 && ![(PHBottomBar *)v301 shouldUseLayoutAsCallScreening])
      {
        v111 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacing)-[_mainLeftButton]";
        v110 = @"V:|[_supplementalTopRightButton]-(ButtonSpacing)-[_mainRightButton]";
      }

      v112 = [NSLayoutConstraint constraintsWithVisualFormat:v111 options:0 metrics:v55 views:v5];
      [v300 addObjectsFromArray:v112];

      v113 = [NSLayoutConstraint constraintsWithVisualFormat:v110 options:0 metrics:v55 views:v5];
      [v300 addObjectsFromArray:v113];

      v114 = [(PHBottomBar *)v301 supplementalTopLeftButton];
      v115 = [(PHBottomBar *)v301 mainLeftButton];
      v116 = [NSLayoutConstraint constraintWithItem:v114 attribute:9 relatedBy:0 toItem:v115 attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v116];

      v117 = [(PHBottomBar *)v301 supplementalTopRightButton];
      v118 = [(PHBottomBar *)v301 mainRightButton];
      goto LABEL_84;
    case 11:
    case 18:
    case 21:
      v89 = [(PHBottomBar *)v301 mainLeftButton];
      v90 = [v89 centerXAnchor];
      v91 = [(PHBottomBar *)v301 centerXAnchor];
      v92 = [v90 constraintEqualToAnchor:v91];

      [v92 setIdentifier:@"mainLeftButtonCenterXAnchorLayoutConstraint"];
      [v300 addObject:v92];
      v93 = [(PHBottomBar *)v301 callDisplayStyleManager];
      if ([v93 usesLargeFormatUI])
      {
        v94 = v301->_isAudioCall;

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
      v134 = [(PHBottomBar *)v301 mainLeftButton];
      v135 = [v134 topAnchor];
      v136 = [(PHBottomBar *)v301 topAnchor];
      v137 = [(PHBottomBar *)v301 callDisplayStyleManager];
      v138 = [v137 callDisplayStyle];
      if (v138 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v140 = v139;
      }

      else
      {
        v56 = [(PHBottomBar *)v301 callDisplayStyleManager];
        if ([v56 usesLargeFormatUI] && v301->_isAudioCall)
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
      v95 = [v135 constraintEqualToAnchor:v136 constant:v226];

      if (v138 != 3)
      {
      }

      [v95 setIdentifier:@"mainLeftButtonTopAnchorLayoutConstraint"];
      v58 = v300;
      [v300 addObject:v95];
      v55 = v294;
      v61 = v297;
      v56 = v301;
LABEL_126:
      v227 = [v56 supplementalBottomLeftButton];

      if (v227)
      {
        v228 = [v56 _supplementalBottomLeftButtonLayoutConstraints];
        [v58 addObjectsFromArray:v228];
      }

      v229 = [v56 supplementalBottomRightButton];

      if (v229)
      {
        v230 = [v56 _supplementalBottomRightButtonLayoutConstraints];
        [v58 addObjectsFromArray:v230];
      }

      goto LABEL_135;
    case 12:
    case 16:
      v132 = [NSString stringWithFormat:@"|[_slidingButton]|"];
      v133 = [NSLayoutConstraint constraintsWithVisualFormat:v132 options:0 metrics:0 views:v5];
      [v300 addObjectsFromArray:v133];

      v131 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_slidingButton]";
      goto LABEL_103;
    case 13:
    case 22:
      v126 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v55, v5);
      [v300 addObjectsFromArray:v126];

      v127 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainRightButton]";
      goto LABEL_92;
    case 17:
    case 27:
      v128 = [NSLayoutConstraint constraintWithItem:v301->_mainLeftButton attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v128];

      v129 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_sideButtonLeft]-(SideMarginForFaceTimeButtons)-[_mainLeftButton]-(SideMarginForFaceTimeButtons)-[_sideButtonRight]", 24, v55, v5);
      [v300 addObjectsFromArray:v129];

      v130 = [NSLayoutConstraint constraintWithItem:v301->_sideButtonLeft attribute:7 relatedBy:0 toItem:v301->_sideButtonRight attribute:7 multiplier:1.0 constant:0.0];
      [v300 addObject:v130];

      v131 = @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]";
      goto LABEL_103;
    case 19:
      v189 = +[CNKFeatures sharedInstance];
      v190 = [v189 isDialPadEnabled];

      if (v190)
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
        v199 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainRightButton]" options:0 metrics:v55 views:v5];
        [v300 addObjectsFromArray:v199];

        v200 = [(PHBottomBar *)v301 supplementalBottomLeftButton];
        v201 = [NSLayoutConstraint constraintWithItem:v200 attribute:4 relatedBy:0 toItem:v301 attribute:4 multiplier:1.0 constant:-(v198 * v195)];
        [v300 addObject:v201];

        v202 = [(PHBottomBar *)v301 mainRightButton];
        v203 = [NSLayoutConstraint constraintWithItem:v202 attribute:6 relatedBy:0 toItem:v301 attribute:6 multiplier:1.0 constant:v196 * -0.102];
        [v300 addObject:v203];

        v204 = [(PHBottomBar *)v301 mainRightButton];
        v205 = [(PHBottomBar *)v301 supplementalBottomLeftButton];
        v206 = [NSLayoutConstraint constraintWithItem:v204 attribute:10 relatedBy:0 toItem:v205 attribute:10 multiplier:1.0 constant:0.0];
        [v300 addObject:v206];

        v207 = [NSLayoutConstraint constraintWithItem:v301->_supplementalBottomLeftButton attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v207];

        supplementalBottomLeftButton = v301->_supplementalBottomLeftButton;
        v209 = [(PHBottomBar *)v301 mainRightButton];
        v210 = [NSLayoutConstraint constraintWithItem:supplementalBottomLeftButton attribute:6 relatedBy:-1 toItem:v209 attribute:5 multiplier:1.0 constant:-8.0];
        [v300 addObject:v210];

        LODWORD(v211) = 1132068864;
        [(UIButton *)v301->_mainRightButton setContentCompressionResistancePriority:0 forAxis:v211];
        goto LABEL_134;
      }

      v239 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v55 views:v5];
      [v300 addObjectsFromArray:v239];

      v240 = [NSLayoutConstraint constraintWithItem:v301->_mainLeftButton attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
      [v300 addObject:v240];

      v241 = [(PHBottomBar *)v301 supplementalBottomRightButton];
      v242 = [NSLayoutConstraint constraintWithItem:v241 attribute:10 relatedBy:0 toItem:v301->_mainLeftButton attribute:10 multiplier:1.0 constant:0.0];
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
      v117 = [(PHBottomBar *)v301 supplementalBottomRightButton];
      v248 = [NSLayoutConstraint constraintWithItem:v117 attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:v247];
      [v300 addObject:v248];
      goto LABEL_145;
    case 20:
      v153 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v55 views:v5];
      [v300 addObjectsFromArray:v153];

      v154 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]-(BottomSupplementalButtonSpacing)-[_supplementalBottomLeftButton]", 0, v55, v5);
      [v300 addObjectsFromArray:v154];

      v155 = [NSLayoutConstraint constraintWithItem:v301->_mainLeftButton attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
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
      v161 = [(PHBottomBar *)v301 supplementalBottomLeftButton];
      v162 = [NSLayoutConstraint constraintWithItem:v161 attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:-v160];
      [v300 addObject:v162];

      v131 = @"|-[_supplementalBottomLeftButton]";
      goto LABEL_103;
    case 23:
    case 25:
    case 28:
      v96 = [(PHBottomBar *)v301 callDisplayStyleManager];
      v97 = [v96 callDisplayStyle];

      if (v97 != 3)
      {
        v141 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v55, v5);
        [v300 addObjectsFromArray:v141];

        v127 = @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_mainRightButton]";
LABEL_92:
        v142 = [NSLayoutConstraint constraintsWithVisualFormat:v127 options:0 metrics:v55 views:v5];
        [v300 addObjectsFromArray:v142];

        v131 = @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|";
        goto LABEL_103;
      }

      v296 = v61;
      v98 = [(PHBottomBar *)v301 sideButtonLeft];

      v293 = v55;
      if (v98)
      {
        v99 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|[_sideButtonLeft]-(AmbientButtonSpacing)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]|", 0, v55, v5);
        [v300 addObjectsFromArray:v99];

        v100 = [(PHBottomBar *)v301 mainLeftButton];
        v101 = [v100 centerXAnchor];
        v102 = [(PHBottomBar *)v301 centerXAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];
        v306[0] = v103;
        v104 = [(PHBottomBar *)v301 sideButtonLeft];
        [v104 topAnchor];
        v105 = v84 = v300;
        v106 = [(PHBottomBar *)v301 topAnchor];
        v107 = [v105 constraintEqualToAnchor:v106];
        v306[1] = v107;
        v108 = [NSArray arrayWithObjects:v306 count:2];
        [v300 addObjectsFromArray:v108];

        v56 = v301;
      }

      else
      {
        v100 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(>=0)-[_mainLeftButton]-(AmbientButtonSpacing)-[_mainRightButton]-|", 0, v55, v5);
        [v300 addObjectsFromArray:v100];
        v84 = v300;
      }

      v144 = [v56 mainLeftButton];
      v145 = [v144 topAnchor];
      v146 = [v56 topAnchor];
      v147 = [v145 constraintEqualToAnchor:v146];
      v305[0] = v147;
      v148 = [v56 mainRightButton];
      v149 = [v148 topAnchor];
      v150 = [v56 topAnchor];
      v151 = [v149 constraintEqualToAnchor:v150];
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
      v177 = [NSLayoutConstraint constraintsWithVisualFormat:v176 options:0 metrics:0 views:v5];
      [v300 addObjectsFromArray:v177];

      v131 = @"V:|-(HeightOfCallScreeningButtonPlusButtonSpacing)-[_slidingButton]";
      goto LABEL_103;
    case 26:
      +[PHUIConfiguration ambientInCallControlSize];
      v164 = v163;
      +[PHUIConfiguration ambientInCallControlSpacing];
      v166 = v164 + v165;
      v298 = [(PHBottomBar *)v301 mainRightButton];
      v291 = [v298 topAnchor];
      v167 = [(PHBottomBar *)v301 topAnchor];
      v168 = [v291 constraintEqualToAnchor:v167];
      v304[0] = v168;
      v169 = [(PHBottomBar *)v301 mainRightButton];
      v170 = [v169 centerXAnchor];
      [(PHBottomBar *)v301 centerXAnchor];
      v172 = v171 = v55;
      [v170 constraintEqualToAnchor:v172 constant:v166];
      v174 = v173 = v61;
      v304[1] = v174;
      v175 = [NSArray arrayWithObjects:v304 count:2];
      [v300 addObjectsFromArray:v175];

      v61 = v173;
      v55 = v171;

      v58 = v300;
      goto LABEL_134;
    default:
      if ((a3 - 7) <= 1)
      {
        v212 = [(PHBottomBar *)v301 callDisplayStyleManager];
        v213 = [v212 callDisplayStyle];

        v214 = [(PHBottomBar *)v301 mainLeftButton];
        v215 = [NSLayoutConstraint constraintWithItem:v214 attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
        [v300 addObject:v215];

        if (v213 == 3)
        {
          v216 = [(PHBottomBar *)v301 mainLeftButton];
          v217 = [v216 topAnchor];
          v218 = [(PHBottomBar *)v301 topAnchor];
          v219 = [v217 constraintEqualToAnchor:v218];
          [v300 addObject:v219];

          v220 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-[_sideButtonLeft]-(>=0)-[_mainLeftButton]-(>=0)-[_sideButtonRight]-|", 24, v55, v299);
          [v300 addObjectsFromArray:v220];

          v117 = [(PHBottomBar *)v301 sideButtonLeft];
          v119 = [(PHBottomBar *)v301 sideButtonRight];
          v120 = 1.0;
          v121 = 0.0;
          v122 = v117;
          v123 = 7;
          v124 = v119;
          v125 = 7;
        }

        else
        {
          if ([(PHBottomBar *)v301 shouldUseLayoutAsCallScreening])
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

          v252 = [(PHBottomBar *)v301 sideButtonLeft];
          v253 = [(PHBottomBar *)v301 sideButtonRight];
          v254 = [NSLayoutConstraint constraintWithItem:v252 attribute:7 relatedBy:0 toItem:v253 attribute:7 multiplier:1.0 constant:0.0];
          [v300 addObject:v254];

          v255 = [(PHBottomBar *)v301 shouldUseLayoutAsCallScreening];
          if (v255)
          {
            v256 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacingCallScreening)-[_mainLeftButton]";
          }

          else
          {
            v256 = @"V:|[_supplementalTopLeftButton]-(ButtonSpacing)-[_mainLeftButton]";
          }

          if (v255)
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

          v260 = [(PHBottomBar *)v301 supplementalTopLeftButton];
          v261 = [(PHBottomBar *)v301 sideButtonLeft];
          v262 = [NSLayoutConstraint constraintWithItem:v260 attribute:9 relatedBy:0 toItem:v261 attribute:9 multiplier:1.0 constant:0.0];
          [v300 addObject:v262];

          v117 = [(PHBottomBar *)v301 supplementalTopRightButton];
          v118 = [(PHBottomBar *)v301 sideButtonRight];
LABEL_84:
          v119 = v118;
          v120 = 1.0;
          v121 = 0.0;
          v122 = v117;
          v123 = 9;
          v124 = v118;
          v125 = 9;
        }

LABEL_132:
        v236 = [NSLayoutConstraint constraintWithItem:v122 attribute:v123 relatedBy:0 toItem:v124 attribute:v125 multiplier:v120 constant:v121];
        [v300 addObject:v236];

LABEL_133:
        goto LABEL_134;
      }

      switch(a3)
      {
        case 10:
          v266 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_slidingButton]", 0, v55, v5);
          [v300 addObjectsFromArray:v266];

          v117 = [NSString stringWithFormat:@"|[_slidingButton]|"];
          v248 = [NSLayoutConstraint constraintsWithVisualFormat:v117 options:0 metrics:0 views:v5];
          [v300 addObjectsFromArray:v248];
LABEL_145:

          goto LABEL_133;
        case 14:
          if ([(PHBottomBar *)v301 shouldShowActionTypeCameraFlip])
          {
LABEL_163:
            v263 = [NSLayoutConstraint constraintWithItem:v301->_mainLeftButton attribute:9 relatedBy:0 toItem:v301 attribute:9 multiplier:1.0 constant:0.0];
            [v300 addObject:v263];

            v264 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_sideButtonLeft]-(SideMarginForFaceTimeInCallButtons)-[_mainLeftButton]-(SideMarginForFaceTimeInCallButtons)-[_sideButtonRight]", 1024, v55, v5);
            [v300 addObjectsFromArray:v264];

            v265 = [NSLayoutConstraint constraintWithItem:v301->_sideButtonLeft attribute:7 relatedBy:0 toItem:v301->_sideButtonRight attribute:7 multiplier:1.0 constant:0.0];
            [v300 addObject:v265];
            break;
          }

          v265 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"|-(SideMarginForDoubleButton)-[_mainLeftButton]-(>=0)-[_mainRightButton]-(SideMarginForDoubleButton)-|", 0, v55, v5);
          [v300 addObjectsFromArray:v265];
          break;
        case 15:
          if ([(PHBottomBar *)v301 shouldShowActionTypePhotoCapture]|| [(PHBottomBar *)v301 shouldShowActionTypeEffects])
          {
            goto LABEL_163;
          }

          v267 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"[_mainLeftButton]-(SideMarginForFaceTimeInCallButtons)-[_sideButtonRight]", 0, v55, v5);
          [v300 addObjectsFromArray:v267];

          v268 = [(PHBottomBar *)v301 mainLeftButton];
          v269 = [v268 centerXAnchor];
          v270 = [(PHBottomBar *)v301 centerXAnchor];
          v271 = [v269 constraintEqualToAnchor:v270];
          [v300 addObject:v271];

          v265 = [(PHBottomBar *)v301 sideButtonRight];
          v272 = [v265 centerYAnchor];
          v273 = [(PHBottomBar *)v301 mainLeftButton];
          v274 = [v273 centerYAnchor];
          v275 = [v272 constraintEqualToAnchor:v274];
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
      v74 = v58;

LABEL_136:

      return v74;
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    v13 = v4;
    v14 = v3;
    self->_orientation = a3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_mainLeftButton setOrientation:a3];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_mainRightButton setOrientation:a3];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_sideButtonLeft setOrientation:a3];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIButton *)self->_sideButtonRight setOrientation:a3];
    }

    [(PHBottomBar *)self setNeedsLayout:v8];

    [(PHBottomBar *)self layoutIfNeeded];
  }
}

- (void)setUsesLowerButtons:(BOOL)a3
{
  if (self->_usesLowerButtons != a3)
  {
    self->_usesLowerButtons = a3;
    v5 = [(PHBottomBar *)self buttonLayoutConstraints];

    if (v5)
    {
      v6 = [(PHBottomBar *)self buttonLayoutConstraints];
      [(PHBottomBar *)self removeConstraints:v6];
    }

    v7 = [(PHBottomBar *)self constraintsForState:[(PHBottomBar *)self currentState]];
    [(PHBottomBar *)self setButtonLayoutConstraints:v7];

    v8 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:v8];

    [(PHBottomBar *)self setNeedsLayout];

    [(PHBottomBar *)self layoutIfNeeded];
  }
}

- (BOOL)shouldShowActionTypeCameraFlip
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypeCameraFlip];

  return v6;
}

- (BOOL)shouldShowActionTypeAudioRoute
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypeAudioRoute];

  return v6;
}

- (BOOL)shouldShowActionTypeSendToVoicemail
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypeSendToVoicemail];

  return v6;
}

- (BOOL)shouldShowActionTypePunchOut
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypePunchOut];

  return v6;
}

- (BOOL)shouldShowActionTypePhotoCapture
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypePhotoCapture];

  return v6;
}

- (BOOL)shouldShowActionTypeEffects
{
  v3 = [(PHBottomBar *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHBottomBar *)self delegate];
  v6 = [v5 shouldShowActionTypeEffects];

  return v6;
}

- (BOOL)currentCallIsMuted
{
  v2 = [(PHBottomBar *)self callCenter];
  v3 = [v2 audioOrVideoCallWithStatus:1];
  v4 = [v3 isUplinkMuted];

  return v4;
}

- (id)makeButtonWithType:(int64_t)a3 title:(id)a4 image:(id)a5 color:(id)a6 font:(id)a7 fontColor:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [(PHBottomBar *)self callDisplayStyleManager];
  if ([v19 callDisplayStyle] == 3)
  {
    +[PHUIConfiguration ambientInCallControlSize];
    v20 = [(PHBottomBar *)self makeButtonWithType:a3 title:v18 image:v17 color:v16 font:v15 fontColor:v14 diameter:?];
  }

  else
  {
    v21 = [(PHBottomBar *)self callDisplayStyleManager];
    if ([v21 usesLargeFormatUI] && self->_isAudioCall)
    {
      +[PHBottomBar buttonHeightWithoutDefaultPadding];
    }

    else
    {
      +[PHBottomBarButtonConfiguration defaultHeight];
    }

    v20 = [(PHBottomBar *)self makeButtonWithType:a3 title:v18 image:v17 color:v16 font:v15 fontColor:v14 diameter:?];

    v14 = v15;
    v15 = v16;
    v16 = v17;
    v17 = v18;
    v18 = v21;
  }

  return v20;
}

- (id)makeButtonWithType:(int64_t)a3 title:(id)a4 image:(id)a5 color:(id)a6 font:(id)a7 fontColor:(id)a8 diameter:(double)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(PHBottomBar *)self customTitleStringForActionType:a3 givenDefaultTitle:a4];
  v21 = [PHBottomBarButtonConfiguration alloc];
  v22 = [(PHBottomBar *)self currentBottomBarCallState];
  v23 = [(PHBottomBar *)self captureView];
  v24 = [v21 initWithAction:a3 diameter:v22 callState:v23 captureView:a9];

  if (a3 == 21)
  {
    v25 = PHBottomBarMuteButton;
LABEL_3:
    v26 = [[v25 alloc] initWithConfiguration:v24 appType:2];
    goto LABEL_4;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 9)
  {
    v28 = [(PHBottomBar *)self callDisplayStyleManager];
    v29 = [v28 callDisplayStyle];

    if (v29 != 3)
    {
      if ([(PHBottomBar *)self shouldUseLayoutAsCallScreening])
      {
        v25 = PHBottomBarButton;
        goto LABEL_3;
      }

      v26 = [[PHBottomBarSupplementalButton alloc] initWithAction:a3];
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

  if (a3 == 33)
  {
    v26 = [(PHBottomBar *)self makeCaptureButtonWithDiameter:a9];
    goto LABEL_4;
  }

  v27 = [UIButton buttonWithType:1];
  v32 = +[UIColor clearColor];
  [v27 setBackgroundColor:v32];

  v30 = +[UIColor systemGrayColor];
  [v27 setTitleColor:v30 forState:2];
LABEL_15:

  if (a3 == 17)
  {
    v33 = [v27 titleLabel];
    [v33 setNumberOfLines:2];

    v34 = [v27 titleLabel];
    [v34 setTextAlignment:1];
  }

  if (v20)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v18)
  {
    v35 = [v27 titleLabel];
    [v35 setFont:v18];
  }

  if (v19)
  {
    [v27 setTitleColor:v19 forState:0];
  }

  if (v17)
  {
    [v27 setBackgroundColor:v17];
  }

  if (v16)
  {
    [v27 setImage:v16 forState:0];
    [v27 setAdjustsImageWhenDisabled:0];
    [v27 setAdjustsImageWhenHighlighted:0];
  }

  [v27 setAction:a3];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 addTarget:self action:"buttonPressed:" forControlEvents:64];

  return v27;
}

- (id)makeCaptureButtonWithDiameter:(double)a3
{
  v4 = +[CUShutterButton smallShutterButton];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addTarget:self action:"buttonPressed:" forControlEvents:64];
  [v4 setAction:33];
  [v4 setShowDisabled:1];

  return v4;
}

- (id)makeSlidingButtonWithType:(int)a3
{
  v3 = *&a3;
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
  v7 = [(PHBottomBar *)self currentBottomBarCallState];
  v8 = [(PHBottomBar *)self callDisplayStyleManager];
  if ([v8 usesLargeFormatUI])
  {
    isAudioCall = self->_isAudioCall;
  }

  else
  {
    isAudioCall = 0;
  }

  v10 = [(PHSlidingButton *)v6 initWithSlidingButtonType:v3 appearanceType:v5 callState:v7 usesLargeFormatUI:isAudioCall];

  [(PHSlidingButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHSlidingButton *)v10 setDelegate:self];

  return v10;
}

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];

  if (v4 && v5 != self)
  {
    v6.receiver = self;
    v6.super_class = PHBottomBar;
    [(PHBottomBar *)&v6 addSubview:v4];
  }
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    if (!a3)
    {
      v4 = [(PHBottomBar *)self pendingStateBlocks];
      v5 = [v4 count];

      if (v5)
      {
        v6 = sub_100004F84();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(PHBottomBar *)self pendingStateBlocks];
          *buf = 134217984;
          v20 = [v7 count];
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bottom bar has %ld pending state block(s) waiting for the animation to finish, we'll run those now", buf, 0xCu);
        }

        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = [(PHBottomBar *)self pendingStateBlocks];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
                objc_enumerationMutation(v8);
              }

              (*(*(*(&v14 + 1) + 8 * i) + 16))();
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }

        v13 = [(PHBottomBar *)self pendingStateBlocks];
        [v13 removeAllObjects];
      }
    }
  }
}

- (void)buttonPressed:(id)a3
{
  v4 = a3;
  v5 = [(PHBottomBar *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    if ([v4 action] == 32)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10013A9F0;
      v8[3] = &unk_100356988;
      v9 = v4;
      [UIView animateWithDuration:v8 animations:0 completion:0.25];
    }

    v7 = [(PHBottomBar *)self delegate];
    [v7 bottomBarActionPerformed:objc_msgSend(v4 withCompletionState:"action") fromBar:{1, self}];
  }
}

- (void)buttonLongPressed:(id)a3
{
  v9 = a3;
  v4 = [(PHBottomBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v9 view];
    v7 = [v6 action];

    if (v7 == 15)
    {
      v8 = [(PHBottomBar *)self delegate];
      [v8 bottomBarActionPerformed:16 withCompletionState:1 fromBar:self];
    }
  }
}

- (void)willFinishSlideForSlidingButton:(id)a3
{
  [(PHBottomBar *)self setAnimating:1];
  v4 = [(PHBottomBar *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHBottomBar *)self delegate];
    [v6 bottomBarActionPerformed:1 withCompletionState:1 fromBar:self];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013ABD8;
  v7[3] = &unk_100356988;
  v7[4] = self;
  [UIView animateWithDuration:v7 animations:0 completion:0.200000003];
}

- (void)slidingButton:(id)a3 didSlideToProportion:(double)a4
{
  v6 = [(PHBottomBar *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(PHBottomBar *)self delegate];
    *&v8 = a4;
    [v9 sliderActionFromBar:self slidToProportion:v8];
  }
}

- (CGRect)frameForControlWithActionType:(int64_t)a3
{
  v3 = [(PHBottomBar *)self controlForActionType:a3];
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

- (id)controlForActionType:(int64_t)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PHBottomBar *)self viewLabels];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 action] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)customTitleStringForActionType:(int64_t)a3 givenDefaultTitle:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PHBottomBar *)self delegate];
    v10 = [v9 customizedTitleForItemInBar:self withActionType:a3];

    if (v10)
    {
      v11 = v10;

      v6 = v11;
    }
  }

  return v6;
}

- (id)updatedImageForActionType:(int64_t)a3 givenDefaultImage:(id)a4
{
  v6 = a4;
  if ((a3 - 21) <= 1)
  {
    v7 = [PHBottomBarButtonConfiguration imageColorForState:0];
    v8 = [(PHBottomBar *)self audioRouteImageWithColor:v7];

    v6 = v8;
  }

  return v6;
}

- (id)updatedSelectedImageForActionType:(int64_t)a3 givenDefaultSelectedImage:(id)a4
{
  v6 = a4;
  if ((a3 - 21) <= 1)
  {
    v7 = [PHBottomBarButtonConfiguration imageColorForState:4];
    v8 = [(PHBottomBar *)self audioRouteImageWithColor:v7];

    v6 = v8;
  }

  return v6;
}

- (id)audioRouteImageWithColor:(id)a3
{
  v4 = a3;
  v5 = [(PHBottomBar *)self shouldShowActionTypeAudioRoute];
  v6 = [(PHBottomBar *)self currentBottomBarCallState];
  if (v5)
  {
    v7 = 22;
  }

  else
  {
    v7 = 21;
  }

  v8 = [PHBottomBarButtonConfiguration imageForAction:v7 callState:v6];
  v9 = [v8 _flatImageWithColor:v4];

  return v9;
}

- (BOOL)updatedSelectedStateForActionType:(int64_t)a3
{
  if (a3 == 21)
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
    v6 = [v5 isSelected];

    return v6;
  }
}

- (int64_t)updatedActionTypeForActionType:(int64_t)a3
{
  if ((a3 - 21) <= 1)
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

  return a3;
}

- (void)refreshCustomizedActionTypeTitles
{
  v3 = [(PHBottomBar *)self mainLeftButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v3];

  v4 = [(PHBottomBar *)self mainRightButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v4];

  v5 = [(PHBottomBar *)self sideButtonLeft];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v5];

  v6 = [(PHBottomBar *)self sideButtonRight];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v6];

  v7 = [(PHBottomBar *)self supplementalBottomLeftButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v7];

  v8 = [(PHBottomBar *)self supplementalBottomRightButton];
  [(PHBottomBar *)self refreshCustomizedActionTypeTitleForButton:v8];
}

- (void)refreshCustomizedActionTypeTitleForButton:(id)a3
{
  v11 = a3;
  if (v11)
  {
    v4 = [v11 action];
    v5 = [v11 titleForState:0];
    v6 = [(PHBottomBar *)self customTitleStringForActionType:v4 givenDefaultTitle:v5];

    [v11 setTitle:v6 forState:0];
    v7 = [v11 imageForState:0];
    v8 = [(PHBottomBar *)self updatedImageForActionType:v4 givenDefaultImage:v7];

    [v11 setImage:v8 forState:0];
    v9 = [v11 imageForState:4];
    v10 = [(PHBottomBar *)self updatedSelectedImageForActionType:v4 givenDefaultSelectedImage:v9];

    if (v10)
    {
      [v11 setImage:v10 forState:4];
    }

    [v11 setAction:{-[PHBottomBar updatedActionTypeForActionType:](self, "updatedActionTypeForActionType:", objc_msgSend(v11, "action"))}];
    [v11 setSelected:{-[PHBottomBar updatedSelectedStateForActionType:](self, "updatedSelectedStateForActionType:", v4)}];
  }
}

- (void)refreshEndCallButton
{
  v3 = [(PHBottomBar *)self mainLeftButton];
  [v3 refreshForCallState:{-[PHBottomBar currentBottomBarCallState](self, "currentBottomBarCallState")}];
}

- (BOOL)shouldShowAnswerRTTButton
{
  v3 = [(PHBottomBar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PHBottomBar *)self delegate];
    v5 = [v4 shouldShowAnswerRTT];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPrefersWhiteButtonTextColor:(BOOL)a3
{
  if (a3)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v14 = ;
  v4 = [(PHBottomBar *)self supplementalTopLeftButton];

  if (v4)
  {
    v5 = [(PHBottomBar *)self supplementalTopLeftButton];
    [v5 setTitleColor:v14 forState:0];
  }

  v6 = [(PHBottomBar *)self supplementalTopRightButton];

  if (v6)
  {
    v7 = [(PHBottomBar *)self supplementalTopRightButton];
    [v7 setTitleColor:v14 forState:0];
  }

  v8 = [(PHBottomBar *)self mainLeftButton];

  if (v8)
  {
    v9 = [(PHBottomBar *)self mainLeftButton];
    [v9 setTitleColor:v14 forState:0];
  }

  v10 = [(PHBottomBar *)self mainRightButton];

  v12 = v14;
  if (v10)
  {
    v13 = [(PHBottomBar *)self mainRightButton];
    [v13 setTitleColor:v14 forState:0];

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
  v2 = [(PHBottomBar *)self viewLabels];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 performSelector:"_animationWillBegin"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(PHBottomBar *)self viewLabels];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 performSelector:"_animationDidEnd"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)animateFromState:(int64_t)a3 toState:(int64_t)a4 completion:(id)a5
{
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10013BBBC;
  v26[3] = &unk_100357E30;
  v26[4] = self;
  v27 = a5;
  v8 = objc_retainBlock(v26);
  v9 = objc_retainBlock(v8);
  if (!a3 && a4 == 11)
  {
    [(PHBottomBar *)self animateFromIncomingCallStateToInCallState:11 withCompletion:v9];
LABEL_35:
    v22 = 1;
    goto LABEL_36;
  }

  if (a4 == 19 && (a3 == 20 || a3 == 11))
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

  v18 = a4 == 11 || a4 == 20;
  if (a3 == 19 && v18)
  {
    v19 = [(PHBottomBar *)self useRTTButton];
    [(PHBottomBar *)self animateInSupplementalBottomRightButton:v19 WithCompletion:v9];

    goto LABEL_35;
  }

  if (!a3 && a4 == 15)
  {
    [(PHBottomBar *)self animateFromIncomingCallStateToFaceTimeInCallState:15 withCompletion:v9];
    goto LABEL_35;
  }

  if (a3 == 20 && a4 == 11)
  {
    [(PHBottomBar *)self animateOutSupplementalBottomLeftButtonToState:11 withCompletion:v9];
    goto LABEL_35;
  }

  if (a3 == 21 && a4 == 11)
  {
    [(PHBottomBar *)self animateFromOutgoingStateToInCallStateWithCompletion:v9];
    goto LABEL_35;
  }

  if (a3 == 15 && a4 == 17)
  {
    v20 = self;
    v21 = 17;
LABEL_34:
    [(PHBottomBar *)v20 animateFromOutgoingStateToCallbackAndMessageUIToState:v21 withCompletion:v9];
    goto LABEL_35;
  }

  if (a3 == 15 && a4 == 27)
  {
    v20 = self;
    v21 = 27;
    goto LABEL_34;
  }

  if (a3 == 14 && a4 == 15)
  {
    [(PHBottomBar *)self animateFromFaceTimeOutgoingStateToFaceTimeInCallState:15 withCompletion:v9];
    goto LABEL_35;
  }

  v22 = 0;
  if (!a3 && a4 == 23)
  {
    v24 = [(PHBottomBar *)self callDisplayStyleManager];
    v25 = [v24 callDisplayStyle];

    if (v25 != 3)
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

- (void)animateFromOutgoingStateToInCallStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHBottomBar *)self callDisplayStyleManager];
  v6 = [v5 callDisplayStyle];

  if (v6 != 3)
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
    v10 = [v9 CGColor];

    v11 = +[UIColor systemRedColor];
    v12 = [v11 CGColor];

    v31[0] = v10;
    v31[1] = v12;
    v13 = [NSArray arrayWithObjects:v31 count:2];
    [v8 setValues:v13];

    [v8 setKeyTimes:&off_10036AF40];
    [v8 setDuration:0.254999995];
    [v8 setFillMode:kCAFillModeForwards];
    [v8 setRemovedOnCompletion:0];
    v14 = [(PHBottomBar *)self mainLeftButton];
    v15 = [v14 imageView];
    [v15 setClipsToBounds:0];

    v16 = [(PHBottomBar *)self mainLeftButton];
    v17 = [v16 imageView];
    [v17 setContentMode:4];

    +[CATransaction begin];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10013BFC0;
    v29 = &unk_100356D38;
    v30 = v4;
    [CATransaction setCompletionBlock:&v26];
    v18 = [(PHBottomBar *)self mainLeftButton:v26];
    v19 = [v18 imageView];
    v20 = [v19 layer];
    [v20 addAnimation:v7 forKey:@"rollButtonAnimation"];

    v21 = [(PHBottomBar *)self mainLeftButton];
    objc_opt_class();
    LOBYTE(v19) = objc_opt_isKindOfClass();

    v22 = [(PHBottomBar *)self mainLeftButton];
    v23 = v22;
    if (v19)
    {
      v24 = [v22 roundView];
      v25 = [v24 layer];
      [v25 addAnimation:v8 forKey:@"buttonColorAnimation"];
    }

    else
    {
      v24 = [v22 layer];
      [v24 addAnimation:v8 forKey:@"buttonColorAnimation"];
    }

    +[CATransaction commit];
  }
}

- (void)animateInSupplementalBottomRightButton:(id)a3 WithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PHBottomBar *)self callDisplayStyleManager];
  v9 = [v8 callDisplayStyle];

  if (v9 != 3)
  {
    v90 = [(PHBottomBar *)self supplementalBottomRightButton];
    [(PHBottomBar *)self setSupplementalBottomRightButton:v6];
    v10 = [(PHBottomBar *)self supplementalBottomRightButton];
    [v10 setAlpha:0.0];

    v11 = [(PHBottomBar *)self supplementalBottomRightButton];
    [(PHBottomBar *)self addSubview:v11];

    v92 = +[NSMutableArray array];
    v91 = [(PHBottomBar *)self viewLabels];
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
    v12 = [(PHBottomBar *)self usesLowerButtons];
    v85 = [(PHBottomBar *)self callDisplayStyleManager];
    v13 = [v85 callDisplayStyle];
    v14 = v13 != 3;
    v86 = v12;
    if (v12)
    {
      if (v13 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v18 = v17;
      }

      else
      {
        v75 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v75 usesLargeFormatUI] && self->_isAudioCall)
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
      if (v13 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v20 = v19;
      }

      else
      {
        v74 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v74 usesLargeFormatUI] && self->_isAudioCall)
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
    v93 = v7;
    v94 = v6;
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
    v40 = [(PHBottomBar *)self callDisplayStyleManager];
    v41 = [v40 callDisplayStyle];
    if (v41 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v43 = v42;
    }

    else
    {
      v76 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v76 usesLargeFormatUI] && self->_isAudioCall)
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

    if (v41 != 3)
    {
    }

    if ((v86 & 1) == 0)
    {
    }

    if (v84)
    {
    }

    v61 = v85;
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

    v62 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v60 views:v91];
    [v92 addObjectsFromArray:v62];

    v63 = [(PHBottomBar *)self supplementalBottomRightButton];
    v64 = [NSLayoutConstraint constraintWithItem:v63 attribute:10 relatedBy:0 toItem:self->_mainLeftButton attribute:10 multiplier:1.0 constant:0.0];
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
    v71 = [(PHBottomBar *)self supplementalBottomRightButton];
    v72 = [NSLayoutConstraint constraintWithItem:v71 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:v70];
    [v92 addObject:v72];

    [(PHBottomBar *)self addConstraints:v92];
    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_10013C978;
    v98[3] = &unk_100357318;
    v6 = v94;
    v99 = v94;
    v100 = self;
    v101 = v90;
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_10013CA54;
    v95[3] = &unk_100359EE8;
    v7 = v93;
    v96 = v101;
    v97 = v93;
    v73 = v101;
    [UIView animateWithDuration:v98 animations:v95 completion:0.25];
  }
}

- (void)animateOutSupplementalBottomLeftButtonToState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 != 3)
  {
    v83 = v6;
    v79 = [(PHBottomBar *)self supplementalBottomLeftButton];
    v82 = +[NSMutableArray array];
    v81 = [(PHBottomBar *)self viewLabels];
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
    v9 = [(PHBottomBar *)self usesLowerButtons];
    v74 = [(PHBottomBar *)self callDisplayStyleManager];
    v10 = [v74 callDisplayStyle];
    v11 = v10 != 3;
    v75 = v9;
    if (v9)
    {
      if (v10 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v15 = v14;
      }

      else
      {
        v64 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v64 usesLargeFormatUI] && self->_isAudioCall)
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
      if (v10 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v17 = v16;
      }

      else
      {
        v63 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v63 usesLargeFormatUI] && self->_isAudioCall)
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

    v80 = a3;
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
    v37 = [(PHBottomBar *)self callDisplayStyleManager];
    v38 = [v37 callDisplayStyle];
    if (v38 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v40 = v39;
    }

    else
    {
      v65 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v65 usesLargeFormatUI] && self->_isAudioCall)
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

    if (v38 != 3)
    {
    }

    v6 = v83;
    if ((v75 & 1) == 0)
    {
    }

    if (v73)
    {
    }

    v58 = v74;
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
    v59 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainLeftButton]", 0, v57, v81);
    [v82 addObjectsFromArray:v59];

    v60 = [NSLayoutConstraint constraintsWithVisualFormat:@"[_mainLeftButton]" options:0 metrics:v57 views:v81];
    [v82 addObjectsFromArray:v60];

    v61 = [NSLayoutConstraint constraintWithItem:self->_mainLeftButton attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [v82 addObject:v61];

    [(PHBottomBar *)self prepareButtonsForAnimationBegin];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10013D358;
    v88[3] = &unk_100356988;
    v89 = v79;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10013D364;
    v84[3] = &unk_100359F10;
    v87 = v80;
    v84[4] = self;
    v85 = v89;
    v86 = v83;
    v62 = v89;
    [UIView animateWithDuration:v88 animations:v84 completion:0.25];
  }
}

- (void)ambientAnimateFromIncomingCallStateToCallScreeningStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHBottomBar *)self sideButtonLeft];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10013D57C;
  v13[3] = &unk_1003569B0;
  v13[4] = self;
  [_TtC13InCallService27AmbientAnimationCoordinator hide:v5 completion:v13];

  v6 = [(PHBottomBar *)self mainLeftButton];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013D5C8;
  v11[3] = &unk_100357E30;
  v11[4] = self;
  v12 = v4;
  v7 = v4;
  [_TtC13InCallService27AmbientAnimationCoordinator hide:v6 completion:v11];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ACCEPT" value:&stru_100361FD0 table:@"BottomBar"];
  v10 = [(PHBottomBar *)self mainRightButton];
  [v10 setTitle:v9];
}

- (void)animateFromFaceTimeOutgoingStateToFaceTimeInCallState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 != 3)
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
    v11 = [(PHBottomBar *)self sideButtonLeft];
    [(PHBottomBar *)self setSideButtonLeft:v10];
    [(PHBottomBar *)self addSubview:self->_sideButtonLeft];
    v12 = [(PHBottomBar *)self buttonLayoutConstraints];

    if (v12)
    {
      v13 = [(PHBottomBar *)self buttonLayoutConstraints];
      [(PHBottomBar *)self removeConstraints:v13];
    }

    v14 = [(PHBottomBar *)self constraintsForState:15];
    [(PHBottomBar *)self setButtonLayoutConstraints:v14];

    v15 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:v15];

    [(PHBottomBar *)self setNeedsLayout];
    [(PHBottomBar *)self layoutIfNeeded];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013D8A0;
    v22[3] = &unk_100357110;
    v23 = v11;
    v24 = v10;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013D8E4;
    v18[3] = &unk_100359F10;
    v21 = a3;
    v18[4] = self;
    v19 = v23;
    v20 = v6;
    v16 = v23;
    v17 = v10;
    [UIView animateWithDuration:v22 animations:v18 completion:0.25];
  }
}

- (void)animateFromOutgoingStateToCallbackAndMessageUIToState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 != 3)
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
    v20 = a3;
    v19 = v6;
    v12 = v9;
    v13 = v11;
    v14 = v10;
    [UIView animateWithDuration:v21 animations:v15 completion:0.25];
  }
}

- (void)animateFromIncomingCallStateToInCallState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 != 3)
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
      v12 = [(PHBottomBar *)self mainRightButton];
      v13 = [v12 imageView];
      v14 = [v13 image];
      v15 = [v14 CGImage];
      v16 = [PHBottomBarButtonConfiguration imageForAction:15 callState:1];
      v71 = +[PHBottomBarAnimations crossFadeAnimationFromImage:toImage:](PHBottomBarAnimations, "crossFadeAnimationFromImage:toImage:", v15, [v16 CGImage]);
    }

    v17 = [(PHBottomBar *)self mainRightButton];
    v18 = [v17 backgroundColor];
    v19 = [v18 CGColor];
    if (!v19)
    {
      v20 = +[UIColor clearColor];
      v19 = [v20 CGColor];
    }

    v21 = +[UIColor systemRedColor];
    v22 = [v21 CGColor];

    v68 = v22;
    v70 = [PHBottomBarAnimations backgroundColorAnimationFromColor:v19 toColor:v22];
    v23 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v23 setMass:2.0];
    [v23 setStiffness:300.0];
    [v23 setDamping:50.0];
    [v23 setDuration:0.910000026];
    v24 = [(PHBottomBar *)self mainRightButton];
    v25 = [v24 layer];
    [v25 position];
    v26 = [NSNumber numberWithDouble:?];
    [v23 setFromValue:v26];

    [(PHBottomBar *)self bounds];
    v28 = [NSNumber numberWithDouble:v27 * 0.5];
    [v23 setToValue:v28];

    v29 = [(PHBottomBar *)self supplementalTopLeftButton];
    v30 = [(PHBottomBar *)self supplementalTopRightButton];
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
    v78 = a3;
    v31 = v29;
    v75 = v31;
    v32 = v30;
    v76 = v32;
    v77 = v6;
    [UIView animateWithDuration:0x20000 delay:v79 options:v74 animations:0.25 completion:0.0];
    v33 = [PHBottomBarButtonConfiguration alloc];
    v34 = [(PHBottomBar *)self callDisplayStyleManager];
    v35 = [v34 callDisplayStyle];
    if (v35 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v37 = v36;
    }

    else
    {
      v30 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v30 usesLargeFormatUI] && self->_isAudioCall)
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
    if (v35 != 3)
    {
    }

    v40 = [(PHBottomBar *)self mainRightButton];
    v41 = [v39 icon];
    [v40 setImage:v41 forState:0];

    v42 = [(PHBottomBar *)self mainRightButton];
    v43 = [v42 imageView];
    [v43 setClipsToBounds:0];

    v44 = [(PHBottomBar *)self mainRightButton];
    v45 = [v44 imageView];
    [v45 setContentMode:4];

    v46 = [(PHBottomBar *)self mainRightButton];
    v47 = [v46 titleLabel];
    v48 = [v47 layer];
    [v48 addAnimation:v10 forKey:@"acceptTitleAnimation"];

    v49 = [(PHBottomBar *)self mainRightButton];
    v50 = [v49 imageView];
    v51 = [v50 layer];
    [v51 addAnimation:v71 forKey:@"mainRightButtonAnimation"];

    v52 = [(PHBottomBar *)self mainRightButton];
    v53 = [v52 layer];
    [v53 addAnimation:v23 forKey:@"buttonSlideAnimation"];

    v54 = [(PHBottomBar *)self mainRightButton];
    objc_opt_class();
    LOBYTE(v53) = objc_opt_isKindOfClass();

    v55 = [(PHBottomBar *)self mainRightButton];
    v56 = v55;
    if (v53)
    {
      v57 = [v55 roundView];
      v58 = [v57 layer];
      [v58 addAnimation:v70 forKey:@"buttonColorAnimation"];
    }

    else
    {
      v57 = [v55 layer];
      [v57 addAnimation:v70 forKey:@"buttonColorAnimation"];
    }

    v59 = [(PHBottomBar *)self mainRightButton];
    [v59 setAction:15];

    v60 = [(PHBottomBar *)self mainRightButton];
    v61 = [v60 titleLabel];
    v62 = [v61 layer];
    [v62 setOpacity:0.0];

    v63 = [(PHBottomBar *)self mainRightButton];
    v64 = [UIColor colorWithCGColor:v68];
    [v63 setBackgroundColor:v64];

    if (v69)
    {
      CATransform3DMakeRotation(&v73, 2.35619449, 0.0, 0.0, 1.0);
      v65 = [(PHBottomBar *)self mainRightButton];
      v66 = [v65 imageView];
      v67 = [v66 layer];
      v72 = v73;
      [v67 setTransform:&v72];
    }
  }
}

- (void)animateFromIncomingCallStateToFaceTimeInCallState:(int64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(PHBottomBar *)self callDisplayStyleManager];
  v8 = [v7 callDisplayStyle];

  if (v8 != 3)
  {
    v132 = a3;
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
    v134 = [(PHBottomBar *)self viewLabels];
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
    v12 = [(PHBottomBar *)self usesLowerButtons];
    v125 = [(PHBottomBar *)self callDisplayStyleManager];
    v13 = [v125 callDisplayStyle];
    v14 = v13 != 3;
    v126 = v12;
    if (v12)
    {
      if (v13 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v18 = v17;
      }

      else
      {
        v115 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v115 usesLargeFormatUI] && self->_isAudioCall)
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
      if (v13 == 3)
      {
        +[PHUIConfiguration ambientInCallControlSize];
        v20 = v19;
      }

      else
      {
        v114 = [(PHBottomBar *)self callDisplayStyleManager];
        if ([v114 usesLargeFormatUI] && self->_isAudioCall)
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
    v136 = v6;
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
    v40 = [(PHBottomBar *)self callDisplayStyleManager];
    v41 = [v40 callDisplayStyle];
    if (v41 == 3)
    {
      +[PHUIConfiguration ambientInCallControlSize];
      v43 = v42;
    }

    else
    {
      v116 = [(PHBottomBar *)self callDisplayStyleManager];
      if ([v116 usesLargeFormatUI] && self->_isAudioCall)
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

    if (v41 != 3)
    {
    }

    if ((v126 & 1) == 0)
    {
    }

    if (v122)
    {
    }

    v61 = v125;
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
    v62 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeightOfAButtonPlusButtonSpacing)-[_mainRightButton]", 0, v60, v134);
    [v135 addObjectsFromArray:v62];

    v63 = [(PHBottomBar *)self mainRightButton];
    v64 = [v63 centerXAnchor];
    v65 = [(PHBottomBar *)self centerXAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    [v135 addObject:v66];

    v67 = [(PHBottomBar *)self constraintsForState:v132];
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
    v73 = [v72 CGColor];

    v74 = +[UIColor systemRedColor];
    v75 = [v74 CGColor];

    v147[0] = v73;
    v129 = v75;
    v147[1] = v75;
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
    v78 = [(PHBottomBar *)self mainRightButton];
    v79 = [v78 layer];
    [v79 position];
    v80 = [NSNumber numberWithDouble:?];
    [v77 setFromValue:v80];

    [(PHBottomBar *)self bounds];
    v82 = [NSNumber numberWithDouble:v81 * 0.5];
    [v77 setToValue:v82];

    v83 = [(PHBottomBar *)self mainLeftButton];
    v84 = [(PHBottomBar *)self mainRightButton];
    [v83 setAlpha:0.0];
    v145[0] = _NSConcreteStackBlock;
    v145[1] = 3221225472;
    v145[2] = sub_10013F9EC;
    v145[3] = &unk_100357110;
    v145[4] = self;
    v85 = v83;
    v146 = v85;
    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_10013FA60;
    v144[3] = &unk_1003569B0;
    v144[4] = self;
    [UIView animateWithDuration:0x20000 delay:v145 options:v144 animations:0.25 completion:0.0];
    [(PHBottomBar *)self setSupplementalTopLeftButton:0];
    [(PHBottomBar *)self setSupplementalTopRightButton:0];
    v86 = [(PHBottomBar *)self mainRightButton];
    v87 = [v86 imageView];
    [v87 setClipsToBounds:0];

    v88 = [(PHBottomBar *)self mainRightButton];
    v89 = [v88 imageView];
    [v89 setContentMode:4];

    +[CATransaction begin];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_10013FAC8;
    v139[3] = &unk_100359F88;
    v139[4] = self;
    v143 = v132;
    v142 = v136;
    v133 = v84;
    v140 = v133;
    v90 = v85;
    v141 = v90;
    [CATransaction setCompletionBlock:v139];
    v91 = [(PHBottomBar *)self mainRightButton];
    v92 = [v91 titleLabel];
    v93 = [v92 layer];
    [v93 addAnimation:v68 forKey:@"acceptTitleAnimation"];

    v94 = [(PHBottomBar *)self mainRightButton];
    v95 = [v94 imageView];
    v96 = [v95 layer];
    [v96 addAnimation:v70 forKey:@"rollButtonAnimation"];

    v97 = [(PHBottomBar *)self mainRightButton];
    v98 = [v97 layer];
    [v98 addAnimation:v77 forKey:@"buttonSlideAnimation"];

    v99 = [(PHBottomBar *)self mainRightButton];
    objc_opt_class();
    LOBYTE(v98) = objc_opt_isKindOfClass();

    v100 = [(PHBottomBar *)self mainRightButton];
    v101 = v100;
    if (v98)
    {
      v102 = [v100 roundView];
      v103 = [v102 layer];
      [v103 addAnimation:v71 forKey:@"buttonColorAnimation"];
    }

    else
    {
      v102 = [v100 layer];
      [v102 addAnimation:v71 forKey:@"buttonColorAnimation"];
    }

    +[CATransaction commit];
    v104 = [(PHBottomBar *)self mainRightButton];
    v105 = [v104 titleLabel];
    v106 = [v105 layer];
    [v106 setOpacity:0.0];

    v107 = [(PHBottomBar *)self mainRightButton];
    v108 = [UIColor colorWithCGColor:v129];
    [v107 setBackgroundColor:v108];

    CATransform3DMakeRotation(&v138, 2.35619449, 0.0, 0.0, 1.0);
    v109 = [(PHBottomBar *)self mainRightButton];
    v110 = [v109 imageView];
    v111 = [v110 layer];
    v137 = v138;
    [v111 setTransform:&v137];

    v112 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self removeConstraints:v112];

    [(PHBottomBar *)self setButtonLayoutConstraints:v135];
    v113 = [(PHBottomBar *)self buttonLayoutConstraints];
    [(PHBottomBar *)self addConstraints:v113];

    [(PHBottomBar *)self setNeedsLayout];
    [(PHBottomBar *)self layoutIfNeeded];
    [(PHBottomBar *)self setNeedsDisplay];
    [(PHBottomBar *)self forceDisplayIfNeeded];

    v6 = v136;
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

- (id)nameForActionType:(int64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1) < 0x29 && ((0x1FFFFFFFBFFuLL >> v4))
  {
    v5 = off_100359FE8[v4];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"Unknown (%ld)", a3];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = PHBottomBar;
  v4 = a3;
  [(PHBottomBar *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHBottomBar *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    v8 = [(PHBottomBar *)self traitCollection];
    v9 = [v8 _backlightLuminance];

    [(PHBottomBar *)self setUserInteractionEnabled:v9 != 1];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v9 != 1;
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
  v3 = [(PHBottomBar *)self slidingButton];

  if (v3)
  {
    v4 = [(PHBottomBar *)self slidingButton];
    [v4 trackSize];
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