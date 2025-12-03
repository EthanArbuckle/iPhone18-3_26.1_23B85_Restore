@interface _MKQuickRouteManager
- (BOOL)_Car_isPrimaryRefreshQueue;
- (BOOL)_Car_isVisible;
- (BOOL)_Car_shouldDelayOperation;
- (CarQuickRouteRefreshOperation)_Car_refreshOperation;
- (double)_Car_etaAge;
- (void)_Car_cancelUpdateETA;
- (void)_Car_queueUpdateETA;
- (void)set_Car_isVisible:(BOOL)visible;
- (void)set_Car_refreshOperation:(id)operation;
@end

@implementation _MKQuickRouteManager

- (void)_Car_cancelUpdateETA
{
  _Car_refreshOperation = [(_MKQuickRouteManager *)self _Car_refreshOperation];
  [_Car_refreshOperation cancel];

  [(_MKQuickRouteManager *)self set_Car_refreshOperation:0];
}

- (void)_Car_queueUpdateETA
{
  _Car_shouldDelayOperation = [(_MKQuickRouteManager *)self _Car_shouldDelayOperation];
  _Car_refreshOperation = [(_MKQuickRouteManager *)self _Car_refreshOperation];

  if (_Car_refreshOperation)
  {
    if (_Car_shouldDelayOperation != [(_MKQuickRouteManager *)self _Car_isPrimaryRefreshQueue])
    {
      return;
    }

    [(_MKQuickRouteManager *)self _Car_cancelUpdateETA];
  }

  v5 = [[CarQuickRouteRefreshOperation alloc] initWithQuickRoute:self];
  v8 = v5;
  v6 = &qword_10195CD28;
  if (!_Car_shouldDelayOperation)
  {
    v6 = &qword_10195CD20;
  }

  [(CarQuickRouteRefreshOperation *)v5 setOperationQueue:*v6];
  [(_MKQuickRouteManager *)self set_Car_refreshOperation:v8];
  operationQueue = [(CarQuickRouteRefreshOperation *)v8 operationQueue];
  [operationQueue addOperation:v8];
}

- (BOOL)_Car_shouldDelayOperation
{
  if (![(_MKQuickRouteManager *)self _Car_isVisible])
  {
    return 1;
  }

  [(_MKQuickRouteManager *)self _Car_etaAge];
  if (v3 >= 60.0)
  {
    return 0;
  }

  [(_MKQuickRouteManager *)self _Car_etaAge];
  return v4 >= 0.0;
}

- (double)_Car_etaAge
{
  v2 = [(_MKQuickRouteManager *)self routeETAForTransportType:1];
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v2 responseTime];
    v5 = Current - v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (BOOL)_Car_isPrimaryRefreshQueue
{
  _Car_refreshOperation = [(_MKQuickRouteManager *)self _Car_refreshOperation];
  operationQueue = [_Car_refreshOperation operationQueue];
  v4 = operationQueue == qword_10195CD20;

  return v4;
}

- (CarQuickRouteRefreshOperation)_Car_refreshOperation
{
  v3 = objc_getAssociatedObject(self, "_Car_refreshOperation");
  weakObject = [v3 weakObject];

  if (!weakObject)
  {
    objc_setAssociatedObject(self, "_Car_refreshOperation", 0, 0x301);
  }

  weakObject2 = [v3 weakObject];

  return weakObject2;
}

- (void)set_Car_refreshOperation:(id)operation
{
  if (operation)
  {
    operationCopy = operation;
    value = [[WeakWrapper alloc] initWithWeakObject:operationCopy];
  }

  else
  {
    value = 0;
  }

  objc_setAssociatedObject(self, "_Car_refreshOperation", value, 0x301);
}

- (BOOL)_Car_isVisible
{
  v2 = objc_getAssociatedObject(self, "_Car_isVisible");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)set_Car_isVisible:(BOOL)visible
{
  v4 = [NSNumber numberWithBool:visible];
  objc_setAssociatedObject(self, "_Car_isVisible", v4, 0x301);
}

@end