@interface SCATXYAxisPointPicker
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (BOOL)isRefiningPoint;
- (BOOL)pauseForNumberOfCycles:(unint64_t)a3;
- (BOOL)shouldKeepScannerAwake;
- (BOOL)shouldRescanAfterTap;
- (BOOL)usesTwoLevelRefinement;
- (id)_initWithMenu:(id)a3;
- (void)_handleScannerUIWillShow:(id)a3;
- (void)_updateVisualProviderWithMenu:(id)a3;
- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6;
- (void)didGetPhaseChangingAction;
- (void)didSweepOverPoint:(CGPoint)a3;
- (void)setPickerPhase:(unint64_t)a3;
- (void)visualProviderDidUpdate;
@end

@implementation SCATXYAxisPointPicker

- (id)_initWithMenu:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCATXYAxisPointPicker;
  v5 = [(SCATPointPicker *)&v9 _initWithMenu:v4];
  v6 = v5;
  if (v5)
  {
    [v5 _updateVisualProviderWithMenu:v4];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_handleScannerUIWillHide:" name:off_100217018 object:0];
    [v7 addObserver:v6 selector:"_handleScannerUIWillShow:" name:off_100217020 object:0];
  }

  return v6;
}

- (void)_updateVisualProviderWithMenu:(id)a3
{
  v4 = a3;
  v5 = [[SCATXYAxisPointPickerViewController alloc] initWithElementManager:self menu:v4];

  [(SCATElementManager *)self setVisualProvider:v5];
}

- (void)didSweepOverPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SCATXYAxisPointPicker *)self sweepFocusContext];
  v7 = [v6 containsPoint:{x, y}];

  if ((v7 & 1) == 0)
  {
    v8 = [(SCATXYAxisPointPicker *)self sweepFocusContext];

    if (v8)
    {
      v9 = [(SCATPointPicker *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(SCATPointPicker *)self delegate];
        v12 = [(SCATXYAxisPointPicker *)self sweepFocusContext];
        [v11 pointPicker:self didSweepOutOfFocusContext:v12 isRefiningPoint:{-[SCATXYAxisPointPicker isRefiningPoint](self, "isRefiningPoint")}];

        [(SCATXYAxisPointPicker *)self setSweepFocusContext:0];
      }
    }

    v13 = +[HNDAccessibilityManager sharedManager];
    v19 = [v13 elementAtPoint:{x, y}];

    if (v19)
    {
      v14 = +[SCATScannerManager sharedManager];
      v15 = [v14 activeElementManager];
      v16 = [SCATFocusContext focusContextWithElement:v19 elementManager:v15 selectBehavior:0 options:0];

      [(SCATXYAxisPointPicker *)self setSweepFocusContext:v16];
      v17 = [(SCATPointPicker *)self delegate];
      LOBYTE(v15) = objc_opt_respondsToSelector();

      if (v15)
      {
        v18 = [(SCATPointPicker *)self delegate];
        [v18 pointPicker:self didSweepIntoFocusContext:v16 isRefiningPoint:{-[SCATXYAxisPointPicker isRefiningPoint](self, "isRefiningPoint")}];
      }
    }

    else
    {
      [(SCATXYAxisPointPicker *)self setSweepFocusContext:0];
    }
  }
}

- (BOOL)pauseForNumberOfCycles:(unint64_t)a3
{
  v5 = [(SCATPointPicker *)self delegate];
  LOBYTE(a3) = [v5 pointPicker:self pauseForNumberOfCycles:a3];

  return a3;
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
    v4 = [(SCATXYAxisPointPicker *)self pickerPhase];
    v3 = 0x6Cu >> v4;
    if (v4 > 6)
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

- (void)setPickerPhase:(unint64_t)a3
{
  self->_pickerPhase = a3;
  v5 = [(SCATElementManager *)self visualProvider];
  [v5 updateWithPhase:a3 withPicker:self];
}

- (BOOL)shouldRescanAfterTap
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 selectActionHandler];
  v4 = [v3 isPending];

  return v4 ^ 1;
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v5 = a3;
  if ([v5 action] == 100 || objc_msgSend(v5, "action") == 103 || objc_msgSend(v5, "action") == 109 || objc_msgSend(v5, "action") == 104 || objc_msgSend(v5, "action") == 105)
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

  v3 = [(SCATElementManager *)self visualProvider];
  v4 = [v3 numberOfCycles] == 0;

  return v4;
}

- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  if (![(SCATXYAxisPointPicker *)self isRefiningPoint])
  {
    v12.receiver = self;
    v12.super_class = SCATXYAxisPointPicker;
    [(SCATPointPicker *)&v12 didFetchElements:v10 foundNewElements:v8 currentFocusContext:v11 didChangeActiveElementManager:v6];
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
  v5 = [v4 switchControlPointPickerSelectionStyle];

  v6 = [(SCATXYAxisPointPicker *)self pickerPhase];
  if (v6 <= 2)
  {
    if (!v6)
    {
      v8 = 1;
      goto LABEL_30;
    }

    if (v6 == 1)
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

    if (v6 != 2)
    {
      v8 = 0;
      goto LABEL_30;
    }

    v9 = v5 == 2;
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

  if (v6 > 4)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {
        v8 = 7;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_30;
    }

    v9 = v5 == 2;
    v10 = 6;
    goto LABEL_23;
  }

  v7 = 7;
  if (v3)
  {
    v7 = 5;
  }

  if (v6 != 4)
  {
    v7 = 0;
  }

  if (v6 == 3)
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

- (void)_handleScannerUIWillShow:(id)a3
{
  v4 = [(SCATElementManager *)self visualProvider];
  v5 = [v4 isDisplayed];

  if (v5)
  {

    [(SCATXYAxisPointPicker *)self setPickerPhase:1];
  }
}

@end