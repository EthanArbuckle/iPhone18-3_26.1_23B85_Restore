@interface CarAlternateRouteFocusItem
- (CGRect)frame;
- (CarAlternateRouteFocusItem)initWithRoute:(id)route containingView:(id)view frame:(CGRect)frame delegate:(id)delegate;
- (GEOComposedRoute)route;
- (NSString)description;
- (UIFocusEnvironment)parentFocusEnvironment;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation CarAlternateRouteFocusItem

- (GEOComposedRoute)route
{
  WeakRetained = objc_loadWeakRetained(&self->_route);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];
  [(CarAlternateRouteFocusItem *)self setFocused:nextFocusedItem == self];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routeItemDidUpdateFocus:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_containingView);

  return WeakRetained;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = CarAlternateRouteFocusItem;
  v3 = [(CarAlternateRouteFocusItem *)&v9 description];
  v4 = NSStringFromCGRect(self->_frame);
  WeakRetained = objc_loadWeakRetained(&self->_route);
  name = [WeakRetained name];
  v7 = [NSString stringWithFormat:@"%@ (%@, %@)", v3, v4, name];

  return v7;
}

- (CarAlternateRouteFocusItem)initWithRoute:(id)route containingView:(id)view frame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  routeCopy = route;
  viewCopy = view;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = CarAlternateRouteFocusItem;
  v16 = [(CarAlternateRouteFocusItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_route, routeCopy);
    objc_storeWeak(&v17->_containingView, viewCopy);
    v17->_frame.origin.x = x;
    v17->_frame.origin.y = y;
    v17->_frame.size.width = width;
    v17->_frame.size.height = height;
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  return v17;
}

@end