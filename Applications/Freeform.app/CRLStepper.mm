@interface CRLStepper
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CRLStepper)init;
- (UIViewController)crlaxDefaultViewControllerForLargeContent;
- (UIViewController)crlaxPreferredViewControllerForLargeContent;
- (id)viewControllerForLargeContentViewerInteraction:(id)a3;
- (void)addLongPressGestureRecognizersAndLCVInteractions;
- (void)dealloc;
- (void)dismissAccessibilityHUD:(id)a3;
- (void)handleDownButtonTouchDownEvent:(id)a3;
- (void)handleDownButtonTouchUpInsideEvent:(id)a3;
- (void)handleUpButtonTouchDownEvent:(id)a3;
- (void)handleUpButtonTouchUpInsideEvent:(id)a3;
- (void)longPressDecrementGestureRecognizerTouchDown;
- (void)longPressIncrementGestureRecognizerTouchDown;
- (void)p_handleDownButtonTimer:(id)a3;
- (void)p_handleUpButtonTimer:(id)a3;
- (void)p_updateContinuousDifference:(BOOL)a3;
- (void)removeLongPressGestureRecognizersAndLCVInteractions;
- (void)setCurrentValue:(double)a3;
- (void)setIncrement:(double)a3;
- (void)setMaxValue:(double)a3;
- (void)setMinValue:(double)a3;
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
    v4 = [(CRLStepper *)v2 layer];
    [v4 setCornerRadius:6.0];

    v5 = [(CRLStepper *)v3 layer];
    [v5 setMasksToBounds:1];

    v6 = [(CRLStepper *)v3 layer];
    [v6 setCornerCurve:kCACornerCurveContinuous];

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
  v3 = [(CRLStepper *)self timer];
  [v3 invalidate];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UILargeContentViewerInteractionEnabledStatusDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = CRLStepper;
  [(CRLStepper *)&v5 dealloc];
}

- (void)p_updateContinuousDifference:(BOOL)a3
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

    if (a3)
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

- (void)p_handleUpButtonTimer:(id)a3
{
  v12 = a3;
  v4 = [(CRLStepper *)self timer];

  if (v4 == v12)
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
    [v12 invalidate];
  }
}

- (void)p_handleDownButtonTimer:(id)a3
{
  v12 = a3;
  v4 = [(CRLStepper *)self timer];

  if (v4 == v12)
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
    [v12 invalidate];
  }
}

- (void)handleUpButtonTouchDownEvent:(id)a3
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    v4 = [(CRLStepper *)self timer];

    if (v4)
    {
      v5 = [(CRLStepper *)self timer];
      [v5 invalidate];
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

- (void)handleUpButtonTouchUpInsideEvent:(id)a3
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    self->_upButtonDepressed = 0;
    v4 = [(CRLStepper *)self timer];
    [v4 invalidate];

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

- (void)handleDownButtonTouchDownEvent:(id)a3
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    v4 = [(CRLStepper *)self timer];

    if (v4)
    {
      v5 = [(CRLStepper *)self timer];
      [v5 invalidate];
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

- (void)handleDownButtonTouchUpInsideEvent:(id)a3
{
  if ([(CRLStepper *)self continuous]&& [(CRLStepper *)self isEnabled])
  {
    self->_downButtonDepressed = 0;
    v4 = [(CRLStepper *)self timer];
    [v4 invalidate];

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

- (void)setCurrentValue:(double)a3
{
  [(CRLStepper *)self minValue];
  v6 = v5;
  [(CRLStepper *)self maxValue];
  v8 = v7;
  [(CRLStepper *)self increment];
  v10 = v9;
  [(CRLStepper *)self maxValue];
  sub_1004E3CC0(a3, v6, v8, v10);
  self->_currentValue = v11;
  [(UIButton *)self->_upButton setEnabled:v11 < self->_maxValue];
  v12 = self->_currentValue > self->_minValue;
  downButton = self->_downButton;

  [(UIButton *)downButton setEnabled:v12];
}

- (void)setIncrement:(double)a3
{
  if (a3 > 0.0)
  {
    self->_increment = a3;
  }
}

- (void)setMaxValue:(double)a3
{
  self->_maxValue = a3;
  [(CRLStepper *)self currentValue];
  upButton = self->_upButton;

  [(UIButton *)upButton setEnabled:v5 < a3];
}

- (void)setMinValue:(double)a3
{
  self->_minValue = a3;
  [(CRLStepper *)self currentValue];
  downButton = self->_downButton;

  [(UIButton *)downButton setEnabled:v5 > a3];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(CRLStepper *)self upButtonLCVInteraction];
  v7 = [v6 gestureRecognizerForExclusionRelationship];
  v12[0] = v7;
  v8 = [(CRLStepper *)self downButtonLCVInteraction];
  v9 = [v8 gestureRecognizerForExclusionRelationship];
  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  LOBYTE(self) = [v10 containsObject:v5];

  return self;
}

- (id)viewControllerForLargeContentViewerInteraction:(id)a3
{
  v4 = [(CRLStepper *)self crlaxPreferredViewControllerForLargeContent];
  if (v4)
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
  v3 = [(CRLStepper *)self downButtonLCVInteraction];
  [(CRLStepper *)self dismissAccessibilityHUD:v3];

  [(CRLStepper *)self handleDownButtonTouchDownEvent:self];
}

- (void)longPressIncrementGestureRecognizerTouchDown
{
  v3 = [(CRLStepper *)self upButtonLCVInteraction];
  [(CRLStepper *)self dismissAccessibilityHUD:v3];

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

  v4 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [v4 addTarget:self action:"longPressIncrementGestureRecognizerTouchDown"];

  v5 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [v5 setDelegate:self];

  v6 = [(CRLStepper *)self upButton];
  v7 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [v6 addGestureRecognizer:v7];

  v8 = [[UILargeContentViewerInteraction alloc] initWithDelegate:self];
  [(CRLStepper *)self setUpButtonLCVInteraction:v8];

  v9 = [(CRLStepper *)self upButton];
  [v9 addInteraction:self->_upButtonLCVInteraction];

  v10 = objc_alloc_init(UILongPressGestureRecognizer);
  [(CRLStepper *)self setDownButtonLongPressGestureRecognizer:v10];

  v11 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [v11 addTarget:self action:"longPressDecrementGestureRecognizerTouchDown"];

  v12 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [v12 setDelegate:self];

  v13 = [(CRLStepper *)self downButton];
  v14 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [v13 addGestureRecognizer:v14];

  v15 = [[UILargeContentViewerInteraction alloc] initWithDelegate:self];
  [(CRLStepper *)self setDownButtonLCVInteraction:v15];

  v16 = [(CRLStepper *)self downButton];
  v17 = [(CRLStepper *)self downButtonLCVInteraction];
  [v16 addInteraction:v17];

  v18 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
  [v18 setMinimumPressDuration:3.0];

  v19 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
  [v19 setMinimumPressDuration:3.0];
}

- (void)removeLongPressGestureRecognizersAndLCVInteractions
{
  v3 = [(CRLStepper *)self upButtonLCVInteraction];

  if (v3)
  {
    v4 = [(CRLStepper *)self upButton];
    v5 = [(CRLStepper *)self upButtonLCVInteraction];
    [v4 removeInteraction:v5];

    [(CRLStepper *)self setUpButtonLCVInteraction:0];
  }

  v6 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];

  if (v6)
  {
    upButton = self->_upButton;
    v8 = [(CRLStepper *)self upButtonLongPressGestureRecognizer];
    [(UIButton *)upButton removeGestureRecognizer:v8];

    [(CRLStepper *)self setUpButtonLongPressGestureRecognizer:0];
  }

  v9 = [(CRLStepper *)self downButtonLCVInteraction];

  if (v9)
  {
    v10 = [(CRLStepper *)self downButton];
    v11 = [(CRLStepper *)self downButtonLCVInteraction];
    [v10 removeInteraction:v11];

    [(CRLStepper *)self setDownButtonLCVInteraction:0];
  }

  v12 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];

  if (v12)
  {
    v13 = [(CRLStepper *)self downButton];
    v14 = [(CRLStepper *)self downButtonLongPressGestureRecognizer];
    [v13 removeGestureRecognizer:v14];

    [(CRLStepper *)self setDownButtonLongPressGestureRecognizer:0];
  }
}

- (void)dismissAccessibilityHUD:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 gestureRecognizerForExclusionRelationship];

  v6 = [v5 delegate];
  v7 = sub_100014370(v4, v6);

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