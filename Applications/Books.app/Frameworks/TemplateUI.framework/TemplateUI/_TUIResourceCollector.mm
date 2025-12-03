@interface _TUIResourceCollector
- (CGRect)visibleBounds;
- (_TUIResourceCollector)initWithBounds:(CGRect)bounds viewState:(id)state;
- (void)collectResource:(id)resource;
- (void)performWithViewState:(id)state block:(id)block;
@end

@implementation _TUIResourceCollector

- (_TUIResourceCollector)initWithBounds:(CGRect)bounds viewState:(id)state
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = _TUIResourceCollector;
  v11 = [(_TUIResourceCollector *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewState, state);
    v13 = objc_opt_new();
    resources = v12->_resources;
    v12->_resources = v13;

    v12->_visibleBounds.origin.x = x;
    v12->_visibleBounds.origin.y = y;
    v12->_visibleBounds.size.width = width;
    v12->_visibleBounds.size.height = height;
  }

  return v12;
}

- (void)collectResource:(id)resource
{
  if (resource)
  {
    [(NSMutableSet *)self->_resources addObject:?];
  }
}

- (void)performWithViewState:(id)state block:(id)block
{
  stateCopy = state;
  if (block)
  {
    viewState = self->_viewState;
    p_viewState = &self->_viewState;
    v13 = stateCopy;
    v10 = viewState;
    objc_storeStrong(p_viewState, state);
    blockCopy = block;
    blockCopy[2]();

    v12 = *p_viewState;
    *p_viewState = v10;

    stateCopy = v13;
  }
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end