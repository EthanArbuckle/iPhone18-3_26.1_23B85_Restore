@interface _MKQuickRouteManager
- (BOOL)_Car_isPrimaryRefreshQueue;
- (BOOL)_Car_isVisible;
- (BOOL)_Car_shouldDelayOperation;
- (CarQuickRouteRefreshOperation)_Car_refreshOperation;
- (double)_Car_etaAge;
- (void)_Car_cancelUpdateETA;
- (void)_Car_queueUpdateETA;
- (void)set_Car_isVisible:(BOOL)a3;
- (void)set_Car_refreshOperation:(id)a3;
@end

@implementation _MKQuickRouteManager

- (void)_Car_cancelUpdateETA
{
  v3 = [(_MKQuickRouteManager *)self _Car_refreshOperation];
  [v3 cancel];

  [(_MKQuickRouteManager *)self set_Car_refreshOperation:0];
}

- (void)_Car_queueUpdateETA
{
  v3 = [(_MKQuickRouteManager *)self _Car_shouldDelayOperation];
  v4 = [(_MKQuickRouteManager *)self _Car_refreshOperation];

  if (v4)
  {
    if (v3 != [(_MKQuickRouteManager *)self _Car_isPrimaryRefreshQueue])
    {
      return;
    }

    [(_MKQuickRouteManager *)self _Car_cancelUpdateETA];
  }

  v5 = [[CarQuickRouteRefreshOperation alloc] initWithQuickRoute:self];
  v8 = v5;
  v6 = &qword_10195CD28;
  if (!v3)
  {
    v6 = &qword_10195CD20;
  }

  [(CarQuickRouteRefreshOperation *)v5 setOperationQueue:*v6];
  [(_MKQuickRouteManager *)self set_Car_refreshOperation:v8];
  v7 = [(CarQuickRouteRefreshOperation *)v8 operationQueue];
  [v7 addOperation:v8];
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
  v2 = [(_MKQuickRouteManager *)self _Car_refreshOperation];
  v3 = [v2 operationQueue];
  v4 = v3 == qword_10195CD20;

  return v4;
}

- (CarQuickRouteRefreshOperation)_Car_refreshOperation
{
  v3 = objc_getAssociatedObject(self, "_Car_refreshOperation");
  v4 = [v3 weakObject];

  if (!v4)
  {
    objc_setAssociatedObject(self, "_Car_refreshOperation", 0, 0x301);
  }

  v5 = [v3 weakObject];

  return v5;
}

- (void)set_Car_refreshOperation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    value = [[WeakWrapper alloc] initWithWeakObject:v4];
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)set_Car_isVisible:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, "_Car_isVisible", v4, 0x301);
}

@end