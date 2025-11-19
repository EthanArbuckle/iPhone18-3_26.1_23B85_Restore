@interface PHInCallKeypadViewController
- (PHInCallKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)handleNumberPadCharacter:(char)a3;
- (void)handleNumberPadKeyCommand:(id)a3;
- (void)loadView;
- (void)updateKeypadButtonBackgroundMaterial:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PHInCallKeypadViewController

- (PHInCallKeypadViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = PHInCallKeypadViewController;
  v4 = [(PHInCallKeypadViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [[PHNumberPadKeyCommandHandler alloc] initWithViewController:v4 selector:"handleNumberPadKeyCommand:"];
    numberPadKeyCommandHandler = v4->_numberPadKeyCommandHandler;
    v4->_numberPadKeyCommandHandler = v5;

    v7 = objc_alloc_init(TUDTMFSoundPlayer);
    soundPlayer = v4->_soundPlayer;
    v4->_soundPlayer = v7;
  }

  return v4;
}

- (void)dealloc
{
  [(TPDialerNumberPad *)self->_keypad setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHInCallKeypadViewController;
  [(PHInCallKeypadViewController *)&v3 dealloc];
}

- (void)updateKeypadButtonBackgroundMaterial:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallKeypadViewController *)self keypad];

  if (v5)
  {
    v6 = [(PHInCallKeypadViewController *)self keypad];
    v7 = [v6 buttons];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) updateBackgroundMaterial:{v4, v13}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)loadView
{
  v3 = +[TPDialerNumberPad dialerNumberPadFullCharacters];
  v4 = +[NSMutableArray array];
  v5 = +[PHInCallUtilities sharedInstance];
  v6 = off_1003531F8;
  if ([v5 isIPadIdiom] && self->_usesLargeFormatUI)
  {
    v6 = off_1003531F0;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        v13 = objc_alloc(*v6);
        v14 = [v12 intValue];
        v15 = [(PHInCallKeypadViewController *)self traitCollection];
        v16 = [v13 initForCharacter:v14 style:{objc_msgSend(v15, "userInterfaceStyle")}];

        v17 = [v16 layer];
        [v17 setAllowsGroupBlending:0];

        v18 = [v16 layer];
        [v18 setAllowsGroupOpacity:0];

        [v4 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v9);
  }

  keypad = self->_keypad;
  if (!keypad)
  {
    v20 = [[TPDialerNumberPad alloc] initWithButtons:v4];
    v21 = self->_keypad;
    self->_keypad = v20;

    [(TPDialerNumberPad *)self->_keypad setPlaysSounds:1];
    [(TPDialerNumberPad *)self->_keypad setDelegate:self];
    v22 = [(TPDialerNumberPad *)self->_keypad layer];
    [v22 setAllowsGroupBlending:0];

    v23 = [(TPDialerNumberPad *)self->_keypad layer];
    [v23 setAllowsGroupOpacity:0];

    keypad = self->_keypad;
  }

  [(TPDialerNumberPad *)keypad intrinsicContentSize];
  v25 = v24;
  [(TPDialerNumberPad *)self->_keypad intrinsicContentSize];
  [(TPDialerNumberPad *)self->_keypad setFrame:0.0, 0.0, v25, v26];
  v27 = objc_alloc_init(PHTransformableView);
  v28 = +[UIColor clearColor];
  [(PHTransformableView *)v27 setBackgroundColor:v28];

  if (!self->_usesLargeFormatUI)
  {
    [(TPDialerNumberPad *)self->_keypad frame];
    [(PHTransformableView *)v27 setFrame:?];
  }

  [(PHTransformableView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PHTransformableView *)v27 addSubview:self->_keypad];
  v29 = [NSLayoutConstraint constraintWithItem:v27 attribute:8 relatedBy:0 toItem:self->_keypad attribute:8 multiplier:1.0 constant:0.0];
  [(PHTransformableView *)v27 addConstraint:v29];

  v30 = [NSLayoutConstraint constraintWithItem:v27 attribute:7 relatedBy:0 toItem:self->_keypad attribute:7 multiplier:1.0 constant:0.0];
  [(PHTransformableView *)v27 addConstraint:v30];

  LODWORD(v31) = 1148846080;
  [(PHTransformableView *)v27 setContentHuggingPriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [(PHTransformableView *)v27 setContentHuggingPriority:1 forAxis:v32];
  LODWORD(v33) = 1148846080;
  [(PHTransformableView *)v27 setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [(PHTransformableView *)v27 setContentCompressionResistancePriority:1 forAxis:v34];
  v35 = [(PHTransformableView *)v27 layer];
  [v35 setAllowsGroupBlending:0];

  v36 = [(PHTransformableView *)v27 layer];
  [v36 setAllowsGroupOpacity:0];

  [(PHInCallKeypadViewController *)self setView:v27];
  v37 = +[PHInCallUtilities sharedInstance];
  if ([v37 isIPadIdiom])
  {
    usesLargeFormatUI = self->_usesLargeFormatUI;

    if (!usesLargeFormatUI)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = [(PHInCallKeypadViewController *)self captureView];

  if (!v39)
  {
    v57 = v27;
    v40 = [_UIVisualEffectBackdropView alloc];
    [(TPDialerNumberPad *)self->_keypad frame];
    v41 = [v40 initWithFrame:?];
    [(PHInCallKeypadViewController *)self setCaptureView:v41];

    v42 = [(PHInCallKeypadViewController *)self captureView];
    [v42 setAutoresizingMask:18];

    v43 = self->_keypad;
    v44 = [(PHInCallKeypadViewController *)self captureView];
    [(TPDialerNumberPad *)v43 insertSubview:v44 atIndex:0];

    v45 = [(PHInCallKeypadViewController *)self captureView];
    [v45 setRenderMode:1];

    v46 = [(PHInCallKeypadViewController *)self captureView];
    v47 = [v46 captureGroup];
    [v47 setGroupName:@"InCallKeypadButtonsCaptureGroup"];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v48 = v4;
    v49 = [v48 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v59;
      do
      {
        for (j = 0; j != v50; j = j + 1)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v58 + 1) + 8 * j);
          v54 = [v53 backDropVisualEffectView];
          [v54 _setGroupName:@"InCallKeypadButtonsCaptureGroup"];

          v55 = [(PHInCallKeypadViewController *)self captureView];
          v56 = [v53 backDropVisualEffectView];
          [v56 _setCaptureView:v55];
        }

        v50 = [v48 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v50);
    }

    v27 = v57;
  }

LABEL_28:
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHInCallKeypadViewController;
  [(PHInCallKeypadViewController *)&v6 viewWillDisappear:a3];
  v4 = [(PHInCallKeypadViewController *)self keypadWillDismissHandler];

  if (v4)
  {
    v5 = [(PHInCallKeypadViewController *)self keypadWillDismissHandler];
    v5[2]();
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PHInCallKeypadViewController;
  [(PHInCallKeypadViewController *)&v4 viewDidAppear:a3];
  [(PHInCallKeypadViewController *)self becomeFirstResponder];
}

- (void)handleNumberPadKeyCommand:(id)a3
{
  v4 = a3;
  v5 = [(PHInCallKeypadViewController *)self numberPadKeyCommandHandler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C96A0;
  v6[3] = &unk_100358EE8;
  v6[4] = self;
  [v5 handleKeyCommand:v4 receivedCharacterBlock:v6 receivedSpecialCharacterBlock:0];
}

- (void)handleNumberPadCharacter:(char)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 displayedCallFromCalls:0];

  if ([v5 shouldPlayDTMFTone])
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will play DTMF tone due to phonePad keyDown event, and a supporting displayedCall", buf, 2u);
    }

    [v5 playDTMFToneForKey:v3];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = [NSString stringWithFormat:@"%c", v3];
  [v7 postNotificationName:@"PHInCallKeypadDataSourceChangedNotification" object:v8 userInfo:0];
}

@end