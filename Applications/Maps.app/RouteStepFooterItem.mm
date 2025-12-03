@interface RouteStepFooterItem
- (RoutePlanningFooterViewDelegate)delegate;
- (RouteStepFooterItem)initWithCommandSet:(int64_t)set cellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale;
@end

@implementation RouteStepFooterItem

- (RoutePlanningFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RouteStepFooterItem)initWithCommandSet:(int64_t)set cellClass:(Class)class state:(unint64_t)state metrics:(id)metrics context:(int64_t)context route:(id)route scale:(double)scale
{
  v11.receiver = self;
  v11.super_class = RouteStepFooterItem;
  result = [(RouteStepItem *)&v11 initWithCellClass:class state:state metrics:metrics context:context route:route scale:scale];
  if (result)
  {
    result->_commandSet = set;
  }

  return result;
}

@end