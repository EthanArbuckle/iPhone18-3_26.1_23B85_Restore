@interface WKLayerHostView
- (id).cxx_construct;
- (id)window;
- (unsigned)contextID;
- (void)setContextID:(unsigned int)d;
- (void)setVisibilityPropagationView:(id)view;
- (void)willMoveToWindow:(id)window;
@end

@implementation WKLayerHostView

- (unsigned)contextID
{
  layerHost = [(WKLayerHostView *)self layerHost];

  return [layerHost contextId];
}

- (void)setContextID:(unsigned int)d
{
  v3 = *&d;
  layerHost = [(WKLayerHostView *)self layerHost];

  [layerHost setContextId:v3];
}

- (void)willMoveToWindow:(id)window
{
  objc_storeWeak(&self->_window.m_weakReference, window);
  v5.receiver = self;
  v5.super_class = WKLayerHostView;
  [(WKLayerHostView *)&v5 willMoveToWindow:window];
}

- (id)window
{
  result = objc_loadWeakRetained(&self->_window.m_weakReference);
  if (result)
  {

    v4.receiver = self;
    v4.super_class = WKLayerHostView;
    return [(WKLayerHostView *)&v4 window];
  }

  return result;
}

- (void)setVisibilityPropagationView:(id)view
{
  [(UIView *)self->_visibilityPropagationView.m_ptr removeFromSuperview];
  if (view)
  {
    viewCopy = view;
  }

  m_ptr = self->_visibilityPropagationView.m_ptr;
  self->_visibilityPropagationView.m_ptr = view;
  if (m_ptr)
  {

    view = self->_visibilityPropagationView.m_ptr;
  }

  [(WKLayerHostView *)self addSubview:view];
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  return self;
}

@end