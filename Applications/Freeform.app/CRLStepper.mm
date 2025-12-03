@interface CRLStepper
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CRLStepper)init;
- (UIViewController)crlaxDefaultViewControllerForLargeContent;
- (UIViewController)crlaxPreferredViewControllerForLargeContent;
- (id)viewControllerForLargeContentViewerInteraction:(id)interaction;
- (void)addLongPressGestureRecognizersAndLCVInteractions;
- (void)dealloc;
- (void)dismissAccessibilityHUD:(id)d;
- (void)handleDownButtonTouchDownEvent:(id)event;
- (void)handleDownButtonTouchUpInsideEvent:(id)event;
- (void)handleUpButtonTouchDownEvent:(id)event;
- (void)handleUpButtonTouchUpInsideEvent:(id)event;
- (void)longPressDecrementGestureRecognizerTouchDown;
- (void)longPressIncrementGestureRecognizerTouchDown;
- (void)p_handleDownButtonTimer:(id)timer;
- (void)p_handleUpButtonTimer:(id)timer;
- (void)p_updateContinuousDifference:(BOOL)difference;
- (void)removeLongPressGestureRecognizersAndLCVInteractions;
- (void)setCurrentValue:(double)value;
- (void)setIncrement:(double)increment;
- (void)setMaxValue:(double)value;
- (void)setMinValue:(double)value;
- (void)updateLargeContentViewInteractions;
@end

@implementation CRLStepper

- (CRLStepper)init
{
  v36.receiver = self;
  v36.super_class = CRLStepper;
  v2 = [(CRLStepper *)&v36 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v3 = v2;
  if (v2)
  {
    v2->_currentValue = 0.0;
    v2->_increment = 1.0;
    v2->_minValue = 2.22507386e-308;
    v2->_maxValue = 1.79769313e308;
    v2->_continuousDifference = 1;
    layer = [(CRLStepper *)v2 layer];
    [layer setCornerRadius:6.0];

    layer2 = [(CRLStepper *)v3 layer];
    [layer2 setMasksToBounds:1];

    layer3 = [(CRLStepper *)v3 layer];
    [layer3 setCornerCurve:kCACornerCurveContinuous];

    v7 = +[UIColor clearColor];
    [(CRLStepper *)v3 setBackgroundColor:v7];

    v8 = [UIImage systemImageNamed:@"plus"];
    v9 = +[UIColor labelColor];
    v10 = +[UIColor labelColor];
    LOBYTE(v34) = 0;
    v11 = [_TtC8Freeform26CRLiOSMiniFormatterBuilder makeSmallButtonWith:v8 title:0 action:0 backgroundColor:0 pressedBackgroundColor:0 foregroundColor:v9 pressedForegroundColor:0.0 cornerRadius:v10 italicTitle:v34];
    upButton = v3->_upButton;
    v3->_upButton = v11;

    [(UIButton *)v3->_upButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_upButton setExclusiveTouch:1];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Increment" value:0 table:0];
    [(UIButton *)v3->_upButton setAccessibilityLabel:v14];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Increment" value:0 table:0];
    [(UIButton *)v3->_upButton setLargeContentTitle:v16];

    [(CRLStepper *)v3 addSubview:v3->_upButton];
    v17 = [UIImage systemImageNamed:@"minus"];
    v18 = +[UIColor labelColor];
    v19 = +[UIColor labelColor];
    LOBYTE(v35) = 0;
    v20 = [_TtC8Freeform26CRLiOSMiniFormatterBuilder makeSmallButtonWith:v17 title:0 action:0 backgroundColor:0 pressedBackgroundColor:0 foregroundColor:v18 pressedForegroundColor:0.0 cornerRadius:v19 italicTitle:v35];
    downButton = v3->_downButton;
    v3->_downButton = v20;

    [(UIButton *)v3->_downButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v3->_downButton setExclusiveTouch:1];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Decrement" value:0 table:0];
    [(UIButton *)v3->_downButton setAccessibilityLabel:v23];

    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"Decrement" value:0 table:0];
    [(UIButton *)v3->_downButton setLargeContentTitle:v25];

    [(CRLStepper *)v3 addSubview:v3->_downButton];
    [(UIButton *)v3->_upButton addTarget:v3 action:"handleUpButtonTouchDownEvent:" forControlEvents:1];
    [(UIButton *)v3->_upButton addTarget:v3 action:"handleUpButtonTouchUpInsideEvent:" forControlEvents:448];
    [(UIButton *)v3->_downButton addTarget:v3 action:"handleDownButtonTouchDownEvent:" forControlEvents:1];
    [(UIButton *)v3->_downButton addTarget:v3 action:"handleDownButtonTouchUpInsideEvent:" forControlEvents:448];
    v26 = _NSDictionaryOfVariableBindings(@"_upButton, _downButton", v3->_upButton, v3->_downButton, 0);
    v37 = @"buttonHeight";
    +[_TtC8Freeform26CRLiOSMiniFormatterBuilder defaultRowHeight];
    v27 = [NSNumber numberWithDouble:?];
    v38 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

    v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[_downButton]-1-[_upButton(==_downButton)]|", 0, v28, v26);
    [NSLayoutConstraint activateConstraints:v29];

    v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_upButton(>=buttonHeight)]|" options:0 metrics:v28 views:v26];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_downButton(>=buttonHeight)]|" options:0 metrics:v28 views:v26];
    [NSLayoutConstraint activateConstraints:v31];

    [(CRLStepper *)v3 updateLargeContentViewInteractions];
    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v3 selector:"updateLargeContentViewInteractions" name:UILargeContentViewerInteractionEnabledStatusDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  timer = [(CRLStepper *)self timer];
  [timer invalidate];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UILargeContentViewerInteractionEnabledStatusDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = CRLStepper;
  [(CRLStepper *)&v5 dealloc];
}

- (void)p_updateContinuousDifference:(BOOL)difference
{
  v3 = self->_continuousCounter + 1;
  self->_continuousCounter = v3;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v3 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
  {
    continuousDifference = self->_continuousDifference;
    switch(continuousDifference)
    {
      case 1:
        v6 = 2;
        break;
      case 5:
        v6 = 10;
        break;
      case 2:
        v6 = 5;
        break;
      default:
        if (10 * continuousDifference <= continuousDifference)
        {
          v6 = self->_continuousDifference;
        }

        else
        {
          v6 = 10 * continuousDifference;
        }

        break;
    }

    if (difference)
    {
      [(CRLStepper *)self maxValue];
      v8 = v7;
      [(CRLStepper *)self currentValue];
    }

    else
    {
      [(CRLStepper *)self currentValue];
      v8 = v10;
      [(CRLStepper *)self minValue];
    }

    v11 = v8 - v9;
    [(CRLStepper *)self increment];
    if (v11 / (v12 * v6) > 1.0)
    {
      self->_continuousDifference = v6;
    }

    self->_continuousCounter = 0;
  }
}

- (void)p_handleUpButtonTimer:(id)timer
{
  timerCopy = timer;
  timer = [(CRLStepper *)self timer];

  if (timer == timerCopy)
  {
    [(CRLStepper *)self currentValue];
    v6 = v5;
    [(CRLStepper *)self currentValue];
    v8 = v7;
    continuousDifference = self->_continuousDifference;
    [(CRLStepper *)self increment];
    [(CRLStepper *)self setCurrentValue:v8 + continuousDifference * v10];
    [(CRLStepper *)self p_updateContinuousDifference:1];
    [(CRLStepper *)self currentValue];
    if (v6 != v11)
    {
      [(CRLStepper *)self sendActionsForControlEvents:4096];
    }
  }

  else
  {
    [timerCopy invalidate];
  }
}

- (void)p_handleDownButtonTimer:(id)timer
{
  timerCopy = timer;
  timer = [(CRLStepper *)self timer];

  if (timer == timerCopy)
  {
    [(CRLStepper *)self currentValue];
    v6 = v5;
    [(CRLStepper *)self currentValue];
    v8 = v7;
    continuousDifference = self->_continuousDifference;
    [(CRLStepper *)self increment];
    [(CRLStepper *)self setCurrentValue:v8 - continuousDifference * v10];
    [(CRLStepper *)self p_updateContinuousDifference:0];
    [(CRLStepper *)self currentValue];
    if (v6 != v11)
    {
      [(CRLStepper *)self sendActionsForControlEvents:4096];
    }
  }

  else
  {
    [timerCopy invalidate];
  }
}

- (void)handleUpButtonTouchDownEvent:(id)event
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    timer = [(CRLStepper *)self timer];

    if (timer)
    {
      timer2 = [(CRLStepper *)self timer];
      [timer2 invalidate];
    }

    self->_upButtonDepressed = 1;
    v6 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004E37D0;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
    [(CRLStepper *)self setCurrentValue:self->_currentValue + self->_increment];
    [(CRLStepper *)self sendActionsForControlEvents:1];
    [(CRLStepper *)self sendActionsForControlEvents:4096];
  }
}

- (void)handleUpButtonTouchUpInsideEvent:(id)event
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    self->_upButtonDepressed = 0;
    timer = [(CRLStepper *)self timer];
    [timer invalidate];

    [(CRLStepper *)self setTimer:0];
    self->_continuousDifference = 1;
    self->_continuousCounter = 0;
  }

  else
  {
    if (![(CRLStepper *)self isEnabled])
    {
      return;
    }

    [(CRLStepper *)self setCurrentValue:self->_currentValue + self->_increment];
    [(CRLStepper *)self sendActionsForControlEvents:4096];
  }

  [(CRLStepper *)self sendActionsForControlEvents:64];
}

- (void)handleDownButtonTouchDownEvent:(id)event
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    timer = [(CRLStepper *)self timer];

    if (timer)
    {
      timer2 = [(CRLStepper *)self timer];
      [timer2 invalidate];
    }

    self->_downButtonDepressed = 1;
    v6 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1004E3A64;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
    [(CRLStepper *)self setCurrentValue:self->_currentValue - self->_increment];
    [(CRLStepper *)self sendActionsForControlEvents:1];
    [(CRLStepper *)self sendActionsForControlEvents:4096];
  }
}

- (void)handleDownButtonTouchUpInsideEvent:(id)event
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    self->_downButtonDepressed = 0;
    timer = [(CRLStepper *)self timer];
    [timer invalidate];

    [(CRLStepper *)self setTimer:0];
    self->_continuousDifference = 1;
    self->_continuousCounter = 0;
  }

  else
  {
    if (![(CRLStepper *)self isEnabled])
    {
      return;
    }

    [(CRLStepper *)self setCurrentValue:self->_currentValue - self->_increment];
    [(CRLStepper *)self sendActionsForControlEvents:4096];
  }

  [(CRLStepper *)self sendActionsForControlEvents:64];
}

- (void)setCurrentValue:(double)value
{
  [(CRLStepper *)self minValue];
  v6 = v5;
  [(CRLStepper *)self maxValue];
  v8 = v7;
  [(CRLStepper *)self increment];
  v10 = v9;
  [(CRLStepper *)self maxValue];
  sub_1004E3CC0(value, v6, v8, v10);
  self->_currentValue = v11;
  [(UIButton *)self->_upButton setEnabled:v11 < self->_maxValue];
  v12 = self->_currentValue > self->_minValue;
  downButton = self->_downButton;

  [(UIButton *)downButton setEnabled:v12];
}

- (void)setIncrement:(double)increment
{
  if (increment > 0.0)
  {
    self->_increment = increment;
  }
}

- (void)setMaxValue:(double)value
{
  self->_maxValue = value;
  [(CRLStepper *)self currentValue];
  upButton = self->_upButton;

  [(UIButton *)upButton setEnabled:v5 < value];
}

- (void)setMinValue:(double)value
{
  self->_minValue = value;
  [(CRLStepper *)self currentValue];
  downButton = self->_downButton;

  [(UIButton *)downButton setEnabled:v5 > value];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  upButtonLCVInteraction = [(CRLStepper *)self upButtonLCVInteraction];
  gestureRecognizerForExclusionRelationship = [upButtonLCVInteraction gestureRecognizerForExclusionRelationship];
  v12[0] = gestureRecognizerForExclusionRelationship;
  downButtonLCVInteraction = [(CRLStepper *)self downButtonLCVInteraction];
  gestureRecognizerForExclusionRelationship2 = [downButtonLCVInteraction gestureRecognizerForExclusionRelationship];
  v12[1] = gestureRecognizerForExclusionRelationship2;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  LOBYTE(self) = [v10 containsObject:gestureRecognizerCopy];

  return self;
}

- (id)viewControllerForLargeContentViewerInteraction:(id)interaction
{
  crlaxPreferredViewControllerForLargeContent = [(CRLStepper *)self crlaxPreferredViewControllerForLargeContent];
  if (crlaxPreferredViewControllerForLargeContent)
  {
    [(CRLStepper *)self crlaxPreferredViewControllerForLargeContent];
  }

  else
  {
    [(CRLStepper *)self crlaxDefaultViewControllerForLargeContent];
  }
  v5 = ;

  return v5;
}

- (void)longPressDecrementGestureRecognizerTouchDown
{
  downButtonLCVInteraction = [(CRLStepper *)self downButtonLCVInteraction];
  [(CRLStepper *)self dismissAccessibilityHUD:downButtonLCVInteraction];

  [(CRLStepper *)self handleDownButtonTouchDownEvent:self];
}

- (void)longPressIncrementGestureRecognizerTouchDown
{
  upButtonLCVInteraction = [(CRLStepper *)self upButtonLCVInteraction];
  [(CRLStepper *)self dismissAccessibilityHUD:upButtonLCVInteraction];

  [(CRLStepper *)self handleUpButtonTouchDownEvent:self];
}

- (void)updateLargeContentViewInteractions
{
  if (+[UILargeContentViewerInteraction isEnabled])
  {

    [(CRLStepper *)self addLongPressGestureRecognizersAndLCVInteractions];
  }

  else
  {

    [(CRLStepper *)self removeLongPressGestureRecognizersAndLCVInteractions];
  }
}

- (void)addLongPressGestureRecognizersAndLCVInteractions
{
  v3 = objc_alloc_init(UILongPressGestureRecognizer);
  [(CRLStepper *)self setUpButtonLongPressGestureRecognizer:v3];

  upButtonLongPressGestureRecognizer = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [upButtonLongPressGestureRecognizer addTarget:self action:"longPressIncrementGestureRecognizerTouchDown"];

  upButtonLongPressGestureRecognizer2 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [upButtonLongPressGestureRecognizer2 setDelegate:self];

  upButton = [(CRLStepper *)self upButton];
  upButtonLongPressGestureRecognizer3 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [upButton addGestureRecognizer:upButtonLongPressGestureRecognizer3];

  v8 = [[UILargeContentViewerInteraction alloc] initWithDelegate:self];
  [(CRLStepper *)self setUpButtonLCVInteraction:v8];

  upButton2 = [(CRLStepper *)self upButton];
  [upButton2 addInteraction:self->_upButtonLCVInteraction];

  v10 = objc_alloc_init(UILongPressGestureRecognizer);
  [(CRLStepper *)self setDownButtonLongPressGestureRecognizer:v10];

  downButtonLongPressGestureRecognizer = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [downButtonLongPressGestureRecognizer addTarget:self action:"longPressDecrementGestureRecognizerTouchDown"];

  downButtonLongPressGestureRecognizer2 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [downButtonLongPressGestureRecognizer2 setDelegate:self];

  downButton = [(CRLStepper *)self downButton];
  downButtonLongPressGestureRecognizer3 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [downButton addGestureRecognizer:downButtonLongPressGestureRecognizer3];

  v15 = [[UILargeContentViewerInteraction alloc] initWithDelegate:self];
  [(CRLStepper *)self setDownButtonLCVInteraction:v15];

  downButton2 = [(CRLStepper *)self downButton];
  downButtonLCVInteraction = [(CRLStepper *)self downButtonLCVInteraction];
  [downButton2 addInteraction:downButtonLCVInteraction];

  downButtonLongPressGestureRecognizer4 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [downButtonLongPressGestureRecognizer4 setMinimumPressDuration:3.0];

  upButtonLongPressGestureRecognizer4 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [upButtonLongPressGestureRecognizer4 setMinimumPressDuration:3.0];
}

- (void)removeLongPressGestureRecognizersAndLCVInteractions
{
  upButtonLCVInteraction = [(CRLStepper *)self upButtonLCVInteraction];

  if (upButtonLCVInteraction)
  {
    upButton = [(CRLStepper *)self upButton];
    upButtonLCVInteraction2 = [(CRLStepper *)self upButtonLCVInteraction];
    [upButton removeInteraction:upButtonLCVInteraction2];

    [(CRLStepper *)self setUpButtonLCVInteraction:0];
  }

  upButtonLongPressGestureRecognizer = [(CRLStepper *)self upButtonLongPressGestureRecognizer];

  if (upButtonLongPressGestureRecognizer)
  {
    upButton = self->_upButton;
    upButtonLongPressGestureRecognizer2 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
    [(UIButton *)upButton removeGestureRecognizer:upButtonLongPressGestureRecognizer2];

    [(CRLStepper *)self setUpButtonLongPressGestureRecognizer:0];
  }

  downButtonLCVInteraction = [(CRLStepper *)self downButtonLCVInteraction];

  if (downButtonLCVInteraction)
  {
    downButton = [(CRLStepper *)self downButton];
    downButtonLCVInteraction2 = [(CRLStepper *)self downButtonLCVInteraction];
    [downButton removeInteraction:downButtonLCVInteraction2];

    [(CRLStepper *)self setDownButtonLCVInteraction:0];
  }

  downButtonLongPressGestureRecognizer = [(CRLStepper *)self downButtonLongPressGestureRecognizer];

  if (downButtonLongPressGestureRecognizer)
  {
    downButton2 = [(CRLStepper *)self downButton];
    downButtonLongPressGestureRecognizer2 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
    [downButton2 removeGestureRecognizer:downButtonLongPressGestureRecognizer2];

    [(CRLStepper *)self setDownButtonLongPressGestureRecognizer:0];
  }
}

- (void)dismissAccessibilityHUD:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  gestureRecognizerForExclusionRelationship = [dCopy gestureRecognizerForExclusionRelationship];

  delegate = [gestureRecognizerForExclusionRelationship delegate];
  v7 = sub_100014370(v4, delegate);

  [v7 _dismissAccessibilityHUD];
}

- (UIViewController)crlaxDefaultViewControllerForLargeContent
{
  WeakRetained = objc_loadWeakRetained(&self->_crlaxDefaultViewControllerForLargeContent);

  return WeakRetained;
}

- (UIViewController)crlaxPreferredViewControllerForLargeContent
{
  WeakRetained = objc_loadWeakRetained(&self->_crlaxPreferredViewControllerForLargeContent);

  return WeakRetained;
}

@end