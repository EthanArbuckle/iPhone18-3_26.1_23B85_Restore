@interface CarAlternateRouteFocusItem
- (CGRect)frame;
- (CarAlternateRouteFocusItem)initWithRoute:(id)a3 containingView:(id)a4 frame:(CGRect)a5 delegate:(id)a6;
- (GEOComposedRoute)route;
- (NSString)description;
- (UIFocusEnvironment)parentFocusEnvironment;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  [(CarAlternateRouteFocusItem *)self setFocused:v5 == self];

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
  v6 = [WeakRetained name];
  v7 = [NSString stringWithFormat:@"%@ (%@, %@)", v3, v4, v6];

  return v7;
}

- (CarAlternateRouteFocusItem)initWithRoute:(id)a3 containingView:(id)a4 frame:(CGRect)a5 delegate:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = CarAlternateRouteFocusItem;
  v16 = [(CarAlternateRouteFocusItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_route, v13);
    objc_storeWeak(&v17->_containingView, v14);
    v17->_frame.origin.x = x;
    v17->_frame.origin.y = y;
    v17->_frame.size.width = width;
    v17->_frame.size.height = height;
    objc_storeWeak(&v17->_delegate, v15);
  }

  return v17;
}

@end