@interface RouteStepFooterItem
- (RoutePlanningFooterViewDelegate)delegate;
- (RouteStepFooterItem)initWithCommandSet:(int64_t)a3 cellClass:(Class)a4 state:(unint64_t)a5 metrics:(id)a6 context:(int64_t)a7 route:(id)a8 scale:(double)a9;
@end

@implementation RouteStepFooterItem

- (RoutePlanningFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RouteStepFooterItem)initWithCommandSet:(int64_t)a3 cellClass:(Class)a4 state:(unint64_t)a5 metrics:(id)a6 context:(int64_t)a7 route:(id)a8 scale:(double)a9
{
  v11.receiver = self;
  v11.super_class = RouteStepFooterItem;
  result = [(RouteStepItem *)&v11 initWithCellClass:a4 state:a5 metrics:a6 context:a7 route:a8 scale:a9];
  if (result)
  {
    result->_commandSet = a3;
  }

  return result;
}

@end