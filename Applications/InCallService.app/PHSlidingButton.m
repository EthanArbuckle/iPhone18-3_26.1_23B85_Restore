@interface PHSlidingButton
- (BOOL)isButtonLayoutEnabled;
- (CGSize)intrinsicContentSize;
- (CGSize)trackSize;
- (PHSlidingButton)initWithSlidingButtonType:(int)a3 appearanceType:(int)a4 callState:(int64_t)a5;
- (PHSlidingButton)initWithSlidingButtonType:(int)a3 appearanceType:(int)a4 callState:(int64_t)a5 usesLargeFormatUI:(BOOL)a6;
- (PHSlidingButtonDelegateProtocol)delegate;
- (double)knobWidth;
- (void)actionSlider:(id)a3 didUpdateSlideWithValue:(double)a4;
- (void)actionSliderDidCompleteSlide:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation PHSlidingButton

- (PHSlidingButton)initWithSlidingButtonType:(int)a3 appearanceType:(int)a4 callState:(int64_t)a5 usesLargeFormatUI:(BOOL)a6
{
  v7 = *&a4;
  v8 = *&a3;
  [(PHSlidingButton *)self setUsesLargeFormatUI:a6];

  return [(PHSlidingButton *)self initWithSlidingButtonType:v8 appearanceType:v7 callState:a5];
}

- (PHSlidingButton)initWithSlidingButtonType:(int)a3 appearanceType:(int)a4 callState:(int64_t)a5
{
  v64.receiver = self;
  v64.super_class = PHSlidingButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(PHSlidingButton *)&v64 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = v11;
  if (!v11)
  {
    return v12;
  }

  v11->_type = a3;
  v11->_callState = a5;
  if (a5 == 1)
  {
    v13 = @"end_call_voip";
  }

  else
  {
    v13 = @"phone_dial";
  }

  objc_storeStrong(&v11->_endDialImageName, v13);
  if ((a3 - 7) >= 3)
  {
    v14 = +[PHUIConfiguration inCallSlideToAnswerSize]== 3 || [(PHSlidingButton *)v12 isButtonLayoutEnabled];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_100004F84();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v66 = a3;
    v67 = 1024;
    v68 = a4;
    v69 = 1024;
    v70 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Making slider with type: %d, appearance: %d, large: %d", buf, 0x14u);
  }

  switch(a4)
  {
    case 0:
      v22 = [[PHActionSlider alloc] initWithFrame:0 vibrantSettings:v14 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      acceptButton = v12->_acceptButton;
      v12->_acceptButton = v22;

      [(PHActionSlider *)v12->_acceptButton setStyle:3];
LABEL_25:
      v27 = [UIColor colorWithWhite:1.0 alpha:0.200000003];
      [(PHActionSlider *)v12->_acceptButton setBackgroundColor:v27];

      break;
    case 1:
      v16 = +[UIColor blueColor];
      v17 = [_UILegibilitySettings sharedInstanceForStyle:1];
      v18 = [_UIVibrantSettings vibrantSettingsWithReferenceColor:v16 referenceContrast:v17 legibilitySettings:0.3];

      v19 = [[PHActionSlider alloc] initWithFrame:v18 vibrantSettings:v14 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      v20 = v12->_acceptButton;
      v12->_acceptButton = v19;

      if (a3 <= 6 && ((1 << a3) & 0x46) != 0)
      {
        v21 = 2;
      }

      else if (a3 == 3)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      [(PHActionSlider *)v12->_acceptButton setStyle:v21];

      goto LABEL_24;
    case 2:
LABEL_24:
      v24 = [[PHActionSlider alloc] initWithFrame:0 vibrantSettings:v14 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      v25 = v12->_acceptButton;
      v12->_acceptButton = v24;

      [(PHActionSlider *)v12->_acceptButton setStyle:4];
      [(PHActionSlider *)v12->_acceptButton setTextStyle:4];
      v26 = +[UIColor whiteColor];
      [(PHActionSlider *)v12->_acceptButton setKnobColor:v26];

      goto LABEL_25;
  }

  [(PHActionSlider *)v12->_acceptButton setDragStyle:1];
  [(PHActionSlider *)v12->_acceptButton setTextStyle:1];
  if (a4 == 2)
  {
    [(PHActionSlider *)v12->_acceptButton setTextStyle:4];
    [(PHActionSlider *)v12->_acceptButton setStyle:4];
  }

  if (v12->_callState == 1)
  {
    +[PHBottomBarButtonConfiguration voipTintColor];
  }

  else
  {
    +[PHBottomBarButtonConfiguration systemTintColor];
  }
  v28 = ;
  if (v12->_callState == 1)
  {
    v29 = [UIImage imageNamed:@"phone_slide_voip"];
    v30 = [v29 imageWithRenderingMode:2];
  }

  else
  {
    v30 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleLargeTitle scale:2 isStaticSize:1];
  }

  if (a3 == 9)
  {
    v38 = [UIImage imageNamed:@"medicalid-slider-button"];
    v39 = [v38 imageWithRenderingMode:2];
    [(PHActionSlider *)v12->_acceptButton setKnobImage:v39];

    v40 = +[UIColor systemRedColor];
    [(PHActionSlider *)v12->_acceptButton setTintColor:v40];

    [(PHActionSlider *)v12->_acceptButton setTextStyle:2];
  }

  else
  {
    if (a3 != 8)
    {
      if (a3 == 7)
      {
        v31 = [UIImage imageNamed:@"sos-slider-button"];
        v32 = [v31 imageWithRenderingMode:2];
        [(PHActionSlider *)v12->_acceptButton setKnobImage:v32];

        v33 = +[UIColor whiteColor];
        [(PHActionSlider *)v12->_acceptButton setTintColor:v33];

        v34 = +[UIColor systemRedColor];
        [(PHActionSlider *)v12->_acceptButton setKnobColor:v34];

        [(PHActionSlider *)v12->_acceptButton setTextStyle:2];
        [(PHActionSlider *)v12->_acceptButton setDragStyle:2];
      }

      else
      {
        [(PHActionSlider *)v12->_acceptButton setKnobImage:v30];
        if (v12->_callState != 1)
        {
          [(PHActionSlider *)v12->_acceptButton knobImageOffset];
          v43 = v42;
          [(PHActionSlider *)v12->_acceptButton knobImageOffset];
          [(PHActionSlider *)v12->_acceptButton setKnobImageOffset:v43, v44 + 2.0];
        }

        [(PHActionSlider *)v12->_acceptButton setTintColor:v28];
      }

      goto LABEL_44;
    }

    v35 = [UIImage imageNamed:@"powerdown-slider-button"];
    v36 = [v35 imageWithRenderingMode:2];
    [(PHActionSlider *)v12->_acceptButton setKnobImage:v36];

    v37 = +[UIColor redColor];
    [(PHActionSlider *)v12->_acceptButton setTintColor:v37];
  }

  v41 = +[UIColor whiteColor];
  [(PHActionSlider *)v12->_acceptButton setKnobColor:v41];

LABEL_44:
  [(PHActionSlider *)v12->_acceptButton setDelegate:v12];
  if (!v12->_usesLargeFormatUI)
  {
    v45 = +[UIScreen mainScreen];
    v46 = [v45 currentMode];
    [v46 size];
    if (v47 >= 2208.0)
    {
      v48 = [(PHSlidingButton *)v12 isButtonLayoutEnabled];

      if ((v48 & 1) == 0)
      {
        [(PHActionSlider *)v12->_acceptButton trackSize];
        [(PHActionSlider *)v12->_acceptButton setTrackSize:300.0];
      }
    }

    else
    {
    }
  }

  v49 = [NSBundle bundleForClass:objc_opt_class()];
  v50 = v49;
  v51 = @"SLIDE_TO_SOS";
  if ((a3 - 5) < 2)
  {
    v51 = @"SLIDE_TO_UNLOCK";
  }

  v52 = @"SLIDE_TO_ANSWER";
  if (a3 == 9)
  {
    v52 = @"MEDICAL_ID";
  }

  if (a3 == 8)
  {
    v52 = @"POWER_OFF";
  }

  if ((a3 - 5) >= 3)
  {
    v53 = v52;
  }

  else
  {
    v53 = v51;
  }

  v54 = [v49 localizedStringForKey:v53 value:&stru_100361FD0 table:@"BottomBar"];

  [(PHActionSlider *)v12->_acceptButton setTrackText:v54];
  v55 = [[UIImageView alloc] initWithImage:v30];
  dialImageView = v12->_dialImageView;
  v12->_dialImageView = v55;

  v57 = +[UIColor whiteColor];
  [(UIImageView *)v12->_dialImageView setTintColor:v57];

  v58 = [UIButton buttonWithType:0];
  sideButtonRight = v12->_sideButtonRight;
  v12->_sideButtonRight = v58;

  v60 = v12->_sideButtonRight;
  v61 = +[UIColor whiteColor];
  [(UIButton *)v60 setBackgroundColor:v61];

  v62 = [(UIButton *)v12->_sideButtonRight layer];
  [v62 setCornerRadius:33.0];

  [(UIButton *)v12->_sideButtonRight setUserInteractionEnabled:0];
  [(UIImageView *)v12->_dialImageView setClipsToBounds:0];
  [(UIImageView *)v12->_dialImageView setContentMode:4];
  [(PHActionSlider *)v12->_acceptButton setAlpha:1.0];
  [(PHSlidingButton *)v12 addSubview:v12->_acceptButton];

  return v12;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v3 layoutSubviews];
  [(PHSlidingButton *)self bounds];
  [(PHActionSlider *)self->_acceptButton setFrame:?];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PHSlidingButton *)self isUserInteractionEnabled]!= a3)
  {
    v5 = 0.0500000007;
    if (v3)
    {
      v5 = 1.0;
    }

    [(PHSlidingButton *)self setAlpha:v5];
  }

  v6.receiver = self;
  v6.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v6 setUserInteractionEnabled:v3];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PHSlidingButton *)self acceptButton];
  [v2 trackSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)knobWidth
{
  v2 = [(PHSlidingButton *)self acceptButton];
  [v2 knobWidth];
  v4 = v3;

  return v4;
}

- (BOOL)isButtonLayoutEnabled
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 frontmostAudioOrVideoCall];

  if (self->_usesLargeFormatUI)
  {
    v5 = [v4 isVideo] ^ 1;
  }

  else
  {
    v6 = +[PHInCallUtilities sharedInstance];
    if ([v6 isIPadIdiom])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [v4 isVideo] ^ 1;
    }
  }

  return v5;
}

- (void)actionSlider:(id)a3 didUpdateSlideWithValue:(double)a4
{
  v6 = [(PHSlidingButton *)self delegate];
  if (v6)
  {
    v7 = v6;
    v8 = [(PHSlidingButton *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(PHSlidingButton *)self delegate];
      [v10 slidingButton:self didSlideToProportion:a4];
    }
  }
}

- (void)actionSliderDidCompleteSlide:(id)a3
{
  v4 = [(PHSlidingButton *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHSlidingButton *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PHSlidingButton *)self delegate];
      [v8 willFinishSlideForSlidingButton:self];
    }
  }

  type = self->_type;
  v10 = type > 9;
  v11 = (1 << type) & 0x390;
  if (v10 || v11 == 0)
  {
    v13 = [(PHSlidingButton *)self callState]== 2 || [(PHSlidingButton *)self callState]== 4;
    acceptButton = self->_acceptButton;
    [(PHActionSlider *)acceptButton knobRect];
    [(PHActionSlider *)acceptButton convertRect:self toView:?];
    [(UIButton *)self->_sideButtonRight setFrame:?];
    [(UIButton *)self->_sideButtonRight center];
    v16 = v15;
    [(UIButton *)self->_sideButtonRight center];
    v18 = v17;
    [(PHActionSlider *)self->_acceptButton knobImageOffset];
    [(UIImageView *)self->_dialImageView setCenter:v16, v18 + v19];
    [(PHSlidingButton *)self insertSubview:self->_dialImageView above:self->_sideButtonRight];
    [(PHSlidingButton *)self insertSubview:self->_sideButtonRight above:self->_acceptButton];
    v20 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v20 setFromValue:&off_10036AFA0];
    [v20 setToValue:&off_10036AFB0];
    [v20 setDuration:0.115000002];
    [v20 setFillMode:kCAFillModeForwards];
    v84 = v20;
    [v20 setRemovedOnCompletion:0];
    v21 = [(PHSlidingButton *)self acceptButton];
    v22 = [v21 layer];
    [v22 position];
    v23 = [NSNumber numberWithDouble:?];

    v24 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    v25 = self->_acceptButton;
    if (self->_type == 3)
    {
      [(PHActionSlider *)v25 layer];
      v27 = v26 = v23;
      [v27 position];
      v29 = v28 + -3.0;

      v23 = v26;
    }

    else
    {
      [(PHActionSlider *)v25 knobRect];
      v31 = v30;
      [(PHActionSlider *)self->_acceptButton center];
      v29 = v31 - v32;
    }

    if ([(PHSlidingButton *)self _shouldReverseLayoutDirection])
    {
      [v23 doubleValue];
      v29 = v33 - v29;
    }

    [v24 setMass:2.0];
    [v24 setStiffness:300.0];
    [v24 setDamping:50.0];
    v83 = v23;
    [v24 setFromValue:v23];
    v34 = [NSNumber numberWithDouble:v29];
    [v24 setToValue:v34];

    [v24 setDuration:0.50999999];
    [v24 setFillMode:kCAFillModeForwards];
    [v24 setRemovedOnCompletion:0];
    if (v13)
    {
      v35 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
      [v35 setMass:2.0];
      [v35 setStiffness:300.0];
      [v35 setDamping:50.0];
      [v35 setToValue:&off_10036AF80];
      [v35 setDuration:0.50999999];
      v36 = kCAFillModeForwards;
      [v35 setFillMode:kCAFillModeForwards];
      v82 = v35;
      [v35 setRemovedOnCompletion:0];
    }

    else
    {
      v37 = [CABasicAnimation animationWithKeyPath:@"contents"];
      [v37 setDuration:0.300000012];
      v38 = [(UIImageView *)self->_dialImageView image];
      v39 = +[UIColor whiteColor];
      v40 = [v38 _flatImageWithColor:v39];
      [v37 setFromValue:{objc_msgSend(v40, "CGImage")}];

      v41 = [PHBottomBarButtonConfiguration imageForAction:15 callState:1];
      [v37 setToValue:{objc_msgSend(v41, "CGImage")}];

      [v37 setRemovedOnCompletion:0];
      v82 = v37;
      v42 = v37;
      v36 = kCAFillModeForwards;
      [v42 setFillMode:kCAFillModeForwards];
    }

    if (self->_type == 3)
    {
      +[PHBottomBar defaultSideMarginForDoubleButton];
      v44 = v43;
      +[PHBottomBarButtonConfiguration defaultWidth];
      v46 = v44 + v45 * 0.5;
      [(PHSlidingButton *)self frame];
      v48 = floor(v46 - v47);
    }

    else
    {
      [(PHSlidingButton *)self bounds];
      v48 = v49 * 0.5;
    }

    v50 = [(PHSlidingButton *)self _shouldReverseLayoutDirection];
    v51 = -1.0;
    if (v50)
    {
      v51 = 1.0;
    }

    v52 = v48 + v51;
    v53 = [(PHSlidingButton *)self sideButtonRight];
    v54 = [v53 layer];
    [v54 position];
    v81 = [NSNumber numberWithDouble:?];

    v85 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v85 setMass:2.0];
    [v85 setStiffness:300.0];
    [v85 setDamping:50.0];
    [v85 setFromValue:v81];
    v55 = [NSNumber numberWithDouble:v52];
    [v85 setToValue:v55];

    [v85 setDuration:0.50999999];
    [v85 setFillMode:v36];
    [v85 setRemovedOnCompletion:0];
    v56 = [(PHSlidingButton *)self dialImageView];
    v57 = [v56 layer];
    [v57 position];
    v80 = [NSNumber numberWithDouble:?];

    v58 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v58 setMass:2.0];
    [v58 setStiffness:300.0];
    [v58 setDamping:50.0];
    [v58 setFromValue:v80];
    v59 = [NSNumber numberWithDouble:v52];
    [v58 setToValue:v59];

    [v58 setDuration:0.50999999];
    [v58 setFillMode:v36];
    [v58 setRemovedOnCompletion:0];
    v60 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    +[PHBottomBarButtonConfiguration defaultHeight];
    v62 = v61;
    +[PHBottomBarButtonConfiguration defaultHeight];
    v64 = [NSValue valueWithCGRect:0.0, 0.0, v62, v63];
    [v60 setToValue:v64];

    [v60 setDuration:0.150000006];
    [v60 setFillMode:v36];
    [v60 setRemovedOnCompletion:0];
    +[PHBottomBarButtonConfiguration defaultHeight];
    v66 = v65 * 0.5;
    v67 = [(UIButton *)self->_sideButtonRight layer];
    [v67 setCornerRadius:v66];

    v68 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    [v68 setDuration:0.144999996];
    v69 = +[UIColor whiteColor];
    [v68 setFromValue:{objc_msgSend(v69, "CGColor")}];

    v70 = +[UIColor systemRedColor];
    [v68 setToValue:{objc_msgSend(v70, "CGColor")}];

    [v68 setFillMode:v36];
    [v68 setRemovedOnCompletion:0];
    v71 = +[CATransition animation];
    [v71 setType:kCATransitionFade];
    [v71 setDuration:0.115000002];
    +[CATransaction begin];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100097D60;
    v86[3] = &unk_100356988;
    v86[4] = self;
    [CATransaction setCompletionBlock:v86];
    v72 = [(UIImageView *)self->_dialImageView layer];
    [v72 addAnimation:v71 forKey:kCATransition];

    v73 = [(UIButton *)self->_sideButtonRight layer];
    [v73 addAnimation:v68 forKey:@"backgroundColor"];

    v74 = [(UIButton *)self->_sideButtonRight layer];
    [v74 addAnimation:v60 forKey:@"bounds"];

    v75 = [(UIButton *)self->_sideButtonRight layer];
    [v75 addAnimation:v85 forKey:@"position"];

    v76 = [(UIImageView *)self->_dialImageView layer];
    [v76 addAnimation:v82 forKey:@"transform"];

    v77 = [(PHActionSlider *)self->_acceptButton layer];
    [v77 addAnimation:v84 forKey:@"opacity"];

    v78 = [(PHActionSlider *)self->_acceptButton layer];
    [v78 addAnimation:v24 forKey:@"position"];

    v79 = [(UIImageView *)self->_dialImageView layer];
    [v79 addAnimation:v58 forKey:@"position"];

    +[CATransaction commit];
  }

  else
  {
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100097CA4;
    v88[3] = &unk_100356988;
    v88[4] = self;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100097CB0;
    v87[3] = &unk_1003569B0;
    v87[4] = self;
    [UIView animateWithDuration:v88 animations:v87 completion:0.300000012];
  }
}

- (CGSize)trackSize
{
  v2 = [(PHSlidingButton *)self acceptButton];
  [v2 trackSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PHSlidingButtonDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end