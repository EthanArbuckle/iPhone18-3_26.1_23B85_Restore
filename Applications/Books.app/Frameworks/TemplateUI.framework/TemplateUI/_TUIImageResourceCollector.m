@interface _TUIImageResourceCollector
- (CGRect)visibleBounds;
- (_TUIImageResourceCollector)initWithBounds:(CGRect)a3 viewState:(id)a4;
- (void)performWithViewState:(id)a3 block:(id)a4;
@end

@implementation _TUIImageResourceCollector

- (_TUIImageResourceCollector)initWithBounds:(CGRect)a3 viewState:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = _TUIImageResourceCollector;
  v11 = [(_TUIImageResourceCollector *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewState, a4);
    v12->_visibleBounds.origin.x = x;
    v12->_visibleBounds.origin.y = y;
    v12->_visibleBounds.size.width = width;
    v12->_visibleBounds.size.height = height;
    v13 = [NSHashTable hashTableWithOptions:512];
    imageResources = v12->_imageResources;
    v12->_imageResources = v13;
  }

  return v12;
}

- (void)performWithViewState:(id)a3 block:(id)a4
{
  v7 = a3;
  if (a4)
  {
    viewState = self->_viewState;
    p_viewState = &self->_viewState;
    v13 = v7;
    v10 = viewState;
    objc_storeStrong(p_viewState, a3);
    v11 = a4;
    v11[2]();

    v12 = *p_viewState;
    *p_viewState = v10;

    v7 = v13;
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