@interface SCATPointPicker
+ (SCATPointPicker)pointPickerWithMode:(int64_t)a3 menu:(id)a4;
+ (id)mostSuitablePointPickerWithMenu:(id)a3;
- (BOOL)hasPickedPoint;
- (CGPoint)lastReceivedPoint;
- (CGPoint)pickedPoint;
- (CGPoint)pickedPointInDeviceCoordinates;
- (SCATMenu)menu;
- (SCATPointPickerDelegate)delegate;
- (id)_initWithMenu:(id)a3;
- (id)description;
- (void)_savePoint:(CGPoint)a3 andNotifyDelegate:(BOOL)a4;
- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6;
- (void)refineSelectedPoint;
@end

@implementation SCATPointPicker

+ (id)mostSuitablePointPickerWithMenu:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchPreferredPointPicker];
  [v4 switchControlUseCameraForPointMode];
  v6 = [SCATPointPicker pointPickerWithMode:v5 menu:v3];

  return v6;
}

+ (SCATPointPicker)pointPickerWithMode:(int64_t)a3 menu:(id)a4
{
  v5 = a4;
  v6 = off_1001D1A48;
  v7 = off_1001D1A18;
  if (a3)
  {
    v7 = &off_1001D1A50;
  }

  if (a3 != 2)
  {
    v6 = v7;
  }

  v8 = [objc_alloc(*v6) _initWithMenu:v5];

  return v8;
}

- (id)_initWithMenu:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATPointPicker;
  v5 = [(SCATPointPicker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_menu, v4);
    v6->_currentDisplayID = 1;
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithBool:[(SCATPointPicker *)self hasPickedPoint]];
  [(SCATPointPicker *)self pickedPoint];
  v6 = NSStringFromCGPoint(v12);
  [(SCATPointPicker *)self pickedPointInDeviceCoordinates];
  v7 = NSStringFromCGPoint(v13);
  v8 = [NSNumber numberWithBool:[(SCATPointPicker *)self allowsSelectionRefinement]];
  v9 = [NSString stringWithFormat:@"%@<%p>. HasPoint:%@ localPoint:%@ screenCoordPoint:%@ AllowsRefine:%@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)_savePoint:(CGPoint)a3 andNotifyDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = [NSValue valueWithCGPoint:a3.x, a3.y];
  [(SCATPointPicker *)self setRealPickedPoint:v6];

  if (v4)
  {
    v7 = [(SCATPointPicker *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SCATPointPicker *)self delegate];
      [(SCATPointPicker *)self pickedPoint];
      [v9 pointPicker:self didPickPoint:?];
    }
  }
}

- (BOOL)hasPickedPoint
{
  v2 = [(SCATPointPicker *)self realPickedPoint];
  v3 = v2 != 0;

  return v3;
}

- (CGPoint)pickedPoint
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(SCATPointPicker *)self hasPickedPoint])
  {
    v5 = [(SCATPointPicker *)self realPickedPoint];
    [v5 CGPointValue];
    v3 = v6;
    v4 = v7;
  }

  v8 = v3;
  v9 = v4;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)pickedPointInDeviceCoordinates
{
  v3 = +[SCATScannerManager sharedManager];
  v4 = [v3 scatUIContextForDisplayID:{-[SCATPointPicker currentDisplayID](self, "currentDisplayID")}];

  [(SCATPointPicker *)self pickedPoint];
  [HNDScreen convertPoint:v4 fromView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)refineSelectedPoint
{
  if (![(SCATPointPicker *)self hasPickedPoint])
  {
    _AXAssert();
  }

  ++self->_refinementCount;
}

- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6
{
  if (a6)
  {
    [a3 beginScanningWithFocusContext:{0, a4, a5}];
  }
}

- (SCATPointPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastReceivedPoint
{
  x = self->_lastReceivedPoint.x;
  y = self->_lastReceivedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SCATMenu)menu
{
  WeakRetained = objc_loadWeakRetained(&self->_menu);

  return WeakRetained;
}

@end