@interface SCATSwitchControlWorkspace
+ (id)sharedWorkspace;
- (BOOL)pointPicker:(id)a3 pauseForNumberOfCycles:(unint64_t)a4;
- (CGPoint)headTrackingPoint;
- (CGPoint)lastPickedPoint;
- (CGPoint)pointerPoint;
- (CGRect)menu:(id)a3 rectToClearForFingersWithGestureSheet:(BOOL)a4;
- (SCATSwitchControlWorkspace)init;
- (void)accessibilityManager:(id)a3 applicationWasActivated:(id)a4;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)accessibilityManager:(id)a3 mediaDidBegin:(__CFData *)a4;
- (void)dealloc;
- (void)inputController:(id)a3 didReceivePoint:(CGPoint)a4;
- (void)pointPicker:(id)a3 didFinishDwellingOnPoint:(CGPoint)a4;
- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4;
- (void)pointPicker:(id)a3 didSweepIntoFocusContext:(id)a4 isRefiningPoint:(BOOL)a5;
- (void)pointPicker:(id)a3 didSweepOutOfFocusContext:(id)a4 isRefiningPoint:(BOOL)a5;
- (void)pointPickerDidFinishSweeping:(id)a3;
- (void)scannerManager:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)scannerManager:(id)a3 willUnfocusFromContext:(id)a4;
- (void)scannerManagerDidBecomeActive:(id)a3;
- (void)scannerManagerDidBecomeInactive:(id)a3;
- (void)scannerManagerDidPause:(id)a3;
- (void)setPointerPoint:(CGPoint)a3;
@end

@implementation SCATSwitchControlWorkspace

+ (id)sharedWorkspace
{
  if (qword_100218B08 != -1)
  {
    sub_100129EEC();
  }

  v3 = qword_100218B00;

  return v3;
}

- (SCATSwitchControlWorkspace)init
{
  v13.receiver = self;
  v13.super_class = SCATSwitchControlWorkspace;
  v2 = [(SCATSwitchControlWorkspace *)&v13 init];
  if (v2)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    [v3 addObserver:v2];

    v4 = +[SCATScannerManager sharedManager];
    [v4 addObserver:v2];

    v5 = [[SCATMenu alloc] initWithDelegate:v2];
    menu = v2->_menu;
    v2->_menu = v5;

    v7 = [(SCATSwitchControlWorkspace *)v2 menu];
    v8 = [SCATPointPicker pointPickerWithMode:2 menu:v7];
    pointPicker = v2->_pointPicker;
    v2->_pointPicker = v8;

    [(SCATPointPicker *)v2->_pointPicker setDelegate:v2];
    v10 = +[SCATScannerManager sharedManager];
    [v10 addPointerPointPickerForMovementNotifications:v2->_pointPicker];

    *&v2->_isMonitoring = 0;
    v2->_isScannerPaused = 0;
    v2->_curFocusContext = 0;
    v2->_prevFocusContext = 0;
    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 removeObserver:self];

  v4 = +[SCATScannerManager sharedManager];
  [v4 removeObserver:self];

  v5 = +[SCATScannerManager sharedManager];
  [v5 removePointerPointPickerForMovementNotifications:self->_pointPicker];

  v6.receiver = self;
  v6.super_class = SCATSwitchControlWorkspace;
  [(SCATSwitchControlWorkspace *)&v6 dealloc];
}

- (CGPoint)headTrackingPoint
{
  v2 = +[SCATScannerManager sharedManager];
  v3 = [v2 pointPicker];
  [v3 lastReceivedPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)pointerPoint
{
  [(SCATPointPicker *)self->_pointPicker lastReceivedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPointerPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = +[SCATScannerManager sharedManager];
  [v5 overrideMotionTrackerLookAtPoint:{x, y}];
}

- (CGPoint)lastPickedPoint
{
  [(SCATPointerPointPicker *)self->_pointPicker pickedPoint];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  v10 = a3;
  v7 = a5;
  if (a4 == 1)
  {
    if (!_AXSAutomationEnabled())
    {
      goto LABEL_8;
    }

    v8 = @"SwitchControlDidReceiveScreenChange";
    goto LABEL_7;
  }

  if (a4 == 3 && _AXSAutomationEnabled())
  {
    v8 = @"SwitchControlDidReceiveLayoutChange";
LABEL_7:
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:@"SwitchControlEventOccurred" object:v8];
  }

LABEL_8:
}

- (void)accessibilityManager:(id)a3 applicationWasActivated:(id)a4
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlApplicationDidChange"];
  }
}

- (void)accessibilityManager:(id)a3 mediaDidBegin:(__CFData *)a4
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlMediaBeginPlaying"];
  }
}

- (void)scannerManager:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v9 = a4;
  if (_AXSAutomationEnabled())
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlFocusElementDidChange"];
  }

  v7 = [v9 element];
  currentFocusedElement = self->_currentFocusedElement;
  self->_currentFocusedElement = v7;
}

- (void)scannerManager:(id)a3 willUnfocusFromContext:(id)a4
{
  v5 = [a3 activeScannerDriver];
  self->_isScannerPaused = [v5 isPaused];
}

- (void)scannerManagerDidPause:(id)a3
{
  v4 = a3;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerDidPause"];
  }

  v6 = [v4 activeScannerDriver];
  self->_isScannerActive = [v6 isActive];

  v7 = [v4 activeScannerDriver];

  self->_isScannerPaused = [v7 isPaused];
}

- (void)scannerManagerDidBecomeActive:(id)a3
{
  v4 = a3;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerBecameActive"];
  }

  v6 = [v4 activeScannerDriver];
  self->_isScannerActive = [v6 isActive];

  v7 = [v4 activeScannerDriver];
  self->_isScannerPaused = [v7 isPaused];

  v8 = [v4 activeScannerDriver];

  self->_scannerType = [v8 driverType];
}

- (void)scannerManagerDidBecomeInactive:(id)a3
{
  v4 = a3;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerBecameInactive"];
  }

  v6 = [v4 activeScannerDriver];
  self->_isScannerActive = [v6 isActive];

  v7 = [v4 activeScannerDriver];

  self->_isScannerPaused = [v7 isPaused];
}

- (void)inputController:(id)a3 didReceivePoint:(CGPoint)a4
{
  if (self->_isMonitoring && _AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidReceivePoint"];
  }
}

- (CGRect)menu:(id)a3 rectToClearForFingersWithGestureSheet:(BOOL)a4
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)pointPicker:(id)a3 didFinishDwellingOnPoint:(CGPoint)a4
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidFinishDwellingOnPoint"];
  }
}

- (void)pointPicker:(id)a3 didPickPoint:(CGPoint)a4
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidPickPoint"];
  }
}

- (void)pointPicker:(id)a3 didSweepIntoFocusContext:(id)a4 isRefiningPoint:(BOOL)a5
{
  v7 = a4;
  if (_AXSAutomationEnabled())
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidSweepIntoFocusContext"];
  }

  self->_curFocusContext = v7;
  self->_prevFocusContext = 0;
}

- (void)pointPicker:(id)a3 didSweepOutOfFocusContext:(id)a4 isRefiningPoint:(BOOL)a5
{
  if (_AXSAutomationEnabled())
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidSweepOutOfFocusContext"];
  }

  curFocusContext = self->_curFocusContext;
  self->_curFocusContext = 0;
  self->_prevFocusContext = curFocusContext;
}

- (BOOL)pointPicker:(id)a3 pauseForNumberOfCycles:(unint64_t)a4
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidPauseForNumberOfCycles"];
  }

  return 0;
}

- (void)pointPickerDidFinishSweeping:(id)a3
{
  if (_AXSAutomationEnabled())
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidFinishSweeping"];
  }
}

@end