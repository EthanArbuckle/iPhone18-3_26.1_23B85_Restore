@interface PHInCallKeypadViewController
- (PHInCallKeypadViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)handleNumberPadCharacter:(char)character;
- (void)handleNumberPadKeyCommand:(id)command;
- (void)loadView;
- (void)updateKeypadButtonBackgroundMaterial:(id)material;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PHInCallKeypadViewController

- (PHInCallKeypadViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = PHInCallKeypadViewController;
  v4 = [(PHInCallKeypadViewController *)&v10 initWithNibName:name bundle:bundle];
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

- (void)updateKeypadButtonBackgroundMaterial:(id)material
{
  materialCopy = material;
  keypad = [(PHInCallKeypadViewController *)self keypad];

  if (keypad)
  {
    keypad2 = [(PHInCallKeypadViewController *)self keypad];
    buttons = [keypad2 buttons];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = buttons;
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

          [*(*(&v13 + 1) + 8 * v12) updateBackgroundMaterial:{materialCopy, v13}];
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
        intValue = [v12 intValue];
        traitCollection = [(PHInCallKeypadViewController *)self traitCollection];
        v16 = [v13 initForCharacter:intValue style:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

        layer = [v16 layer];
        [layer setAllowsGroupBlending:0];

        layer2 = [v16 layer];
        [layer2 setAllowsGroupOpacity:0];

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
    layer3 = [(TPDialerNumberPad *)self->_keypad layer];
    [layer3 setAllowsGroupBlending:0];

    layer4 = [(TPDialerNumberPad *)self->_keypad layer];
    [layer4 setAllowsGroupOpacity:0];

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
  layer5 = [(PHTransformableView *)v27 layer];
  [layer5 setAllowsGroupBlending:0];

  layer6 = [(PHTransformableView *)v27 layer];
  [layer6 setAllowsGroupOpacity:0];

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

  captureView = [(PHInCallKeypadViewController *)self captureView];

  if (!captureView)
  {
    v57 = v27;
    v40 = [_UIVisualEffectBackdropView alloc];
    [(TPDialerNumberPad *)self->_keypad frame];
    v41 = [v40 initWithFrame:?];
    [(PHInCallKeypadViewController *)self setCaptureView:v41];

    captureView2 = [(PHInCallKeypadViewController *)self captureView];
    [captureView2 setAutoresizingMask:18];

    v43 = self->_keypad;
    captureView3 = [(PHInCallKeypadViewController *)self captureView];
    [(TPDialerNumberPad *)v43 insertSubview:captureView3 atIndex:0];

    captureView4 = [(PHInCallKeypadViewController *)self captureView];
    [captureView4 setRenderMode:1];

    captureView5 = [(PHInCallKeypadViewController *)self captureView];
    captureGroup = [captureView5 captureGroup];
    [captureGroup setGroupName:@"InCallKeypadButtonsCaptureGroup"];

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
          backDropVisualEffectView = [v53 backDropVisualEffectView];
          [backDropVisualEffectView _setGroupName:@"InCallKeypadButtonsCaptureGroup"];

          captureView6 = [(PHInCallKeypadViewController *)self captureView];
          backDropVisualEffectView2 = [v53 backDropVisualEffectView];
          [backDropVisualEffectView2 _setCaptureView:captureView6];
        }

        v50 = [v48 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v50);
    }

    v27 = v57;
  }

LABEL_28:
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PHInCallKeypadViewController;
  [(PHInCallKeypadViewController *)&v6 viewWillDisappear:disappear];
  keypadWillDismissHandler = [(PHInCallKeypadViewController *)self keypadWillDismissHandler];

  if (keypadWillDismissHandler)
  {
    keypadWillDismissHandler2 = [(PHInCallKeypadViewController *)self keypadWillDismissHandler];
    keypadWillDismissHandler2[2]();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHInCallKeypadViewController;
  [(PHInCallKeypadViewController *)&v4 viewDidAppear:appear];
  [(PHInCallKeypadViewController *)self becomeFirstResponder];
}

- (void)handleNumberPadKeyCommand:(id)command
{
  commandCopy = command;
  numberPadKeyCommandHandler = [(PHInCallKeypadViewController *)self numberPadKeyCommandHandler];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C96A0;
  v6[3] = &unk_100358EE8;
  v6[4] = self;
  [numberPadKeyCommandHandler handleKeyCommand:commandCopy receivedCharacterBlock:v6 receivedSpecialCharacterBlock:0];
}

- (void)handleNumberPadCharacter:(char)character
{
  characterCopy = character;
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

    [v5 playDTMFToneForKey:characterCopy];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  characterCopy = [NSString stringWithFormat:@"%c", characterCopy];
  [v7 postNotificationName:@"PHInCallKeypadDataSourceChangedNotification" object:characterCopy userInfo:0];
}

@end