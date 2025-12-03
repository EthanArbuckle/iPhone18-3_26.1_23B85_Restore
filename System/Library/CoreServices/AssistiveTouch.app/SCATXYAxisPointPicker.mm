@interface SCATXYAxisPointPicker
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (BOOL)isRefiningPoint;
- (BOOL)pauseForNumberOfCycles:(unint64_t)cycles;
- (BOOL)shouldKeepScannerAwake;
- (BOOL)shouldRescanAfterTap;
- (BOOL)usesTwoLevelRefinement;
- (id)_initWithMenu:(id)menu;
- (void)_handleScannerUIWillShow:(id)show;
- (void)_updateVisualProviderWithMenu:(id)menu;
- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager;
- (void)didGetPhaseChangingAction;
- (void)didSweepOverPoint:(CGPoint)point;
- (void)setPickerPhase:(unint64_t)phase;
- (void)visualProviderDidUpdate;
@end

@implementation SCATXYAxisPointPicker

- (id)_initWithMenu:(id)menu
{
  menuCopy = menu;
  v9.receiver = self;
  v9.super_class = SCATXYAxisPointPicker;
  v5 = [(SCATPointPicker *)&v9 _initWithMenu:menuCopy];
  v6 = v5;
  if (v5)
  {
    [v5 _updateVisualProviderWithMenu:menuCopy];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_handleScannerUIWillHide:" name:off_100217018 object:0];
    [v7 addObserver:v6 selector:"_handleScannerUIWillShow:" name:off_100217020 object:0];
  }

  return v6;
}

- (void)_updateVisualProviderWithMenu:(id)menu
{
  menuCopy = menu;
  v5 = [[SCATXYAxisPointPickerViewController alloc] initWithElementManager:self menu:menuCopy];

  [(SCATElementManager *)self setVisualProvider:v5];
}

- (void)didSweepOverPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sweepFocusContext = [(SCATXYAxisPointPicker *)self sweepFocusContext];
  v7 = [sweepFocusContext containsPoint:{x, y}];

  if ((v7 & 1) == 0)
  {
    sweepFocusContext2 = [(SCATXYAxisPointPicker *)self sweepFocusContext];

    if (sweepFocusContext2)
    {
      delegate = [(SCATPointPicker *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [(SCATPointPicker *)self delegate];
        sweepFocusContext3 = [(SCATXYAxisPointPicker *)self sweepFocusContext];
        [delegate2 pointPicker:self didSweepOutOfFocusContext:sweepFocusContext3 isRefiningPoint:{-[SCATXYAxisPointPicker isRefiningPoint](self, "isRefiningPoint")}];

        [(SCATXYAxisPointPicker *)self setSweepFocusContext:0];
      }
    }

    v13 = +[HNDAccessibilityManager sharedManager];
    v19 = [v13 elementAtPoint:{x, y}];

    if (v19)
    {
      v14 = +[SCATScannerManager sharedManager];
      activeElementManager = [v14 activeElementManager];
      v16 = [SCATFocusContext focusContextWithElement:v19 elementManager:activeElementManager selectBehavior:0 options:0];

      [(SCATXYAxisPointPicker *)self setSweepFocusContext:v16];
      delegate3 = [(SCATPointPicker *)self delegate];
      LOBYTE(activeElementManager) = objc_opt_respondsToSelector();

      if (activeElementManager)
      {
        delegate4 = [(SCATPointPicker *)self delegate];
        [delegate4 pointPicker:self didSweepIntoFocusContext:v16 isRefiningPoint:{-[SCATXYAxisPointPicker isRefiningPoint](self, "isRefiningPoint")}];
      }
    }

    else
    {
      [(SCATXYAxisPointPicker *)self setSweepFocusContext:0];
    }
  }
}

- (BOOL)pauseForNumberOfCycles:(unint64_t)cycles
{
  delegate = [(SCATPointPicker *)self delegate];
  LOBYTE(cycles) = [delegate pointPicker:self pauseForNumberOfCycles:cycles];

  return cycles;
}

- (BOOL)isRefiningPoint
{
  v6.receiver = self;
  v6.super_class = SCATXYAxisPointPicker;
  if ([(SCATPointPicker *)&v6 isRefiningPoint])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    pickerPhase = [(SCATXYAxisPointPicker *)self pickerPhase];
    v3 = 0x6Cu >> pickerPhase;
    if (pickerPhase > 6)
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

- (BOOL)usesTwoLevelRefinement
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlPointPickerSelectionStyle] != 1 && -[SCATPointPicker refinementCount](self, "refinementCount") == 0;

  return v4;
}

- (void)setPickerPhase:(unint64_t)phase
{
  self->_pickerPhase = phase;
  visualProvider = [(SCATElementManager *)self visualProvider];
  [visualProvider updateWithPhase:phase withPicker:self];
}

- (BOOL)shouldRescanAfterTap
{
  v2 = +[SCATScannerManager sharedManager];
  selectActionHandler = [v2 selectActionHandler];
  isPending = [selectActionHandler isPending];

  return isPending ^ 1;
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  if ([actionCopy action] == 100 || objc_msgSend(actionCopy, "action") == 103 || objc_msgSend(actionCopy, "action") == 109 || objc_msgSend(actionCopy, "action") == 104 || objc_msgSend(actionCopy, "action") == 105)
  {
    [(SCATXYAxisPointPicker *)self didGetPhaseChangingAction];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldKeepScannerAwake
{
  v6.receiver = self;
  v6.super_class = SCATXYAxisPointPicker;
  if ([(SCATPointPicker *)&v6 shouldKeepScannerAwake]|| [(SCATXYAxisPointPicker *)self pickerPhase]!= 1)
  {
    return 1;
  }

  visualProvider = [(SCATElementManager *)self visualProvider];
  v4 = [visualProvider numberOfCycles] == 0;

  return v4;
}

- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager
{
  managerCopy = manager;
  newElementsCopy = newElements;
  elementsCopy = elements;
  contextCopy = context;
  if (![(SCATXYAxisPointPicker *)self isRefiningPoint])
  {
    v12.receiver = self;
    v12.super_class = SCATXYAxisPointPicker;
    [(SCATPointPicker *)&v12 didFetchElements:elementsCopy foundNewElements:newElementsCopy currentFocusContext:contextCopy didChangeActiveElementManager:managerCopy];
  }
}

- (void)visualProviderDidUpdate
{
  [(SCATXYAxisPointPicker *)self setPickerPhase:0];

  [(SCATXYAxisPointPicker *)self setPickerPhase:1];
}

- (void)didGetPhaseChangingAction
{
  if ([(SCATXYAxisPointPicker *)self usesTwoLevelRefinement])
  {
    v3 = ![(SCATXYAxisPointPicker *)self isRefiningPoint];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[AXSettings sharedInstance];
  switchControlPointPickerSelectionStyle = [v4 switchControlPointPickerSelectionStyle];

  pickerPhase = [(SCATXYAxisPointPicker *)self pickerPhase];
  if (pickerPhase <= 2)
  {
    if (!pickerPhase)
    {
      v8 = 1;
      goto LABEL_30;
    }

    if (pickerPhase == 1)
    {
      if (v3)
      {
        v8 = 2;
      }

      else
      {
        v8 = 4;
      }

      goto LABEL_30;
    }

    if (pickerPhase != 2)
    {
      v8 = 0;
      goto LABEL_30;
    }

    v9 = switchControlPointPickerSelectionStyle == 2;
    v10 = 3;
LABEL_23:
    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }

    goto LABEL_30;
  }

  if (pickerPhase > 4)
  {
    if (pickerPhase != 5)
    {
      if (pickerPhase == 6)
      {
        v8 = 7;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_30;
    }

    v9 = switchControlPointPickerSelectionStyle == 2;
    v10 = 6;
    goto LABEL_23;
  }

  v7 = 7;
  if (v3)
  {
    v7 = 5;
  }

  if (pickerPhase != 4)
  {
    v7 = 0;
  }

  if (pickerPhase == 3)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

LABEL_30:

  [(SCATXYAxisPointPicker *)self setPickerPhase:v8];
}

- (void)_handleScannerUIWillShow:(id)show
{
  visualProvider = [(SCATElementManager *)self visualProvider];
  isDisplayed = [visualProvider isDisplayed];

  if (isDisplayed)
  {

    [(SCATXYAxisPointPicker *)self setPickerPhase:1];
  }
}

@end