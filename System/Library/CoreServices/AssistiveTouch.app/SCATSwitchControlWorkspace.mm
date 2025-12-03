@interface SCATSwitchControlWorkspace
+ (id)sharedWorkspace;
- (BOOL)pointPicker:(id)picker pauseForNumberOfCycles:(unint64_t)cycles;
- (CGPoint)headTrackingPoint;
- (CGPoint)lastPickedPoint;
- (CGPoint)pointerPoint;
- (CGRect)menu:(id)menu rectToClearForFingersWithGestureSheet:(BOOL)sheet;
- (SCATSwitchControlWorkspace)init;
- (void)accessibilityManager:(id)manager applicationWasActivated:(id)activated;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
- (void)accessibilityManager:(id)manager mediaDidBegin:(__CFData *)begin;
- (void)dealloc;
- (void)inputController:(id)controller didReceivePoint:(CGPoint)point;
- (void)pointPicker:(id)picker didFinishDwellingOnPoint:(CGPoint)point;
- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point;
- (void)pointPicker:(id)picker didSweepIntoFocusContext:(id)context isRefiningPoint:(BOOL)point;
- (void)pointPicker:(id)picker didSweepOutOfFocusContext:(id)context isRefiningPoint:(BOOL)point;
- (void)pointPickerDidFinishSweeping:(id)sweeping;
- (void)scannerManager:(id)manager didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)scannerManager:(id)manager willUnfocusFromContext:(id)context;
- (void)scannerManagerDidBecomeActive:(id)active;
- (void)scannerManagerDidBecomeInactive:(id)inactive;
- (void)scannerManagerDidPause:(id)pause;
- (void)setPointerPoint:(CGPoint)point;
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

    menu = [(SCATSwitchControlWorkspace *)v2 menu];
    v8 = [SCATPointPicker pointPickerWithMode:2 menu:menu];
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
  pointPicker = [v2 pointPicker];
  [pointPicker lastReceivedPoint];
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

- (void)setPointerPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  if (event == 1)
  {
    if (!_AXSAutomationEnabled())
    {
      goto LABEL_8;
    }

    v8 = @"SwitchControlDidReceiveScreenChange";
    goto LABEL_7;
  }

  if (event == 3 && _AXSAutomationEnabled())
  {
    v8 = @"SwitchControlDidReceiveLayoutChange";
LABEL_7:
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:@"SwitchControlEventOccurred" object:v8];
  }

LABEL_8:
}

- (void)accessibilityManager:(id)manager applicationWasActivated:(id)activated
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlApplicationDidChange"];
  }
}

- (void)accessibilityManager:(id)manager mediaDidBegin:(__CFData *)begin
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlMediaBeginPlaying"];
  }
}

- (void)scannerManager:(id)manager didFocusOnContext:(id)context oldContext:(id)oldContext
{
  contextCopy = context;
  if (_AXSAutomationEnabled())
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlFocusElementDidChange"];
  }

  element = [contextCopy element];
  currentFocusedElement = self->_currentFocusedElement;
  self->_currentFocusedElement = element;
}

- (void)scannerManager:(id)manager willUnfocusFromContext:(id)context
{
  activeScannerDriver = [manager activeScannerDriver];
  self->_isScannerPaused = [activeScannerDriver isPaused];
}

- (void)scannerManagerDidPause:(id)pause
{
  pauseCopy = pause;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerDidPause"];
  }

  activeScannerDriver = [pauseCopy activeScannerDriver];
  self->_isScannerActive = [activeScannerDriver isActive];

  activeScannerDriver2 = [pauseCopy activeScannerDriver];

  self->_isScannerPaused = [activeScannerDriver2 isPaused];
}

- (void)scannerManagerDidBecomeActive:(id)active
{
  activeCopy = active;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerBecameActive"];
  }

  activeScannerDriver = [activeCopy activeScannerDriver];
  self->_isScannerActive = [activeScannerDriver isActive];

  activeScannerDriver2 = [activeCopy activeScannerDriver];
  self->_isScannerPaused = [activeScannerDriver2 isPaused];

  activeScannerDriver3 = [activeCopy activeScannerDriver];

  self->_scannerType = [activeScannerDriver3 driverType];
}

- (void)scannerManagerDidBecomeInactive:(id)inactive
{
  inactiveCopy = inactive;
  if (_AXSAutomationEnabled())
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlScannerBecameInactive"];
  }

  activeScannerDriver = [inactiveCopy activeScannerDriver];
  self->_isScannerActive = [activeScannerDriver isActive];

  activeScannerDriver2 = [inactiveCopy activeScannerDriver];

  self->_isScannerPaused = [activeScannerDriver2 isPaused];
}

- (void)inputController:(id)controller didReceivePoint:(CGPoint)point
{
  if (self->_isMonitoring && _AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidReceivePoint"];
  }
}

- (CGRect)menu:(id)menu rectToClearForFingersWithGestureSheet:(BOOL)sheet
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

- (void)pointPicker:(id)picker didFinishDwellingOnPoint:(CGPoint)point
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidFinishDwellingOnPoint"];
  }
}

- (void)pointPicker:(id)picker didPickPoint:(CGPoint)point
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidPickPoint"];
  }
}

- (void)pointPicker:(id)picker didSweepIntoFocusContext:(id)context isRefiningPoint:(BOOL)point
{
  contextCopy = context;
  if (_AXSAutomationEnabled())
  {
    v6 = +[NSDistributedNotificationCenter defaultCenter];
    [v6 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidSweepIntoFocusContext"];
  }

  self->_curFocusContext = contextCopy;
  self->_prevFocusContext = 0;
}

- (void)pointPicker:(id)picker didSweepOutOfFocusContext:(id)context isRefiningPoint:(BOOL)point
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

- (BOOL)pointPicker:(id)picker pauseForNumberOfCycles:(unint64_t)cycles
{
  if (_AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidPauseForNumberOfCycles"];
  }

  return 0;
}

- (void)pointPickerDidFinishSweeping:(id)sweeping
{
  if (_AXSAutomationEnabled())
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 postNotificationName:@"SwitchControlEventOccurred" object:@"SwitchControlPointerDidFinishSweeping"];
  }
}

@end