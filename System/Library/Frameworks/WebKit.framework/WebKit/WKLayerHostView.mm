@interface WKLayerHostView
- (id).cxx_construct;
- (id)window;
- (unsigned)contextID;
- (void)setContextID:(unsigned int)a3;
- (void)setVisibilityPropagationView:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation WKLayerHostView

- (unsigned)contextID
{
  v2 = [(WKLayerHostView *)self layerHost];

  return [v2 contextId];
}

- (void)setContextID:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(WKLayerHostView *)self layerHost];

  [v4 setContextId:v3];
}

- (void)willMoveToWindow:(id)a3
{
  objc_storeWeak(&self->_window.m_weakReference, a3);
  v5.receiver = self;
  v5.super_class = WKLayerHostView;
  [(WKLayerHostView *)&v5 willMoveToWindow:a3];
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

- (void)setVisibilityPropagationView:(id)a3
{
  [(UIView *)self->_visibilityPropagationView.m_ptr removeFromSuperview];
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_visibilityPropagationView.m_ptr;
  self->_visibilityPropagationView.m_ptr = a3;
  if (m_ptr)
  {

    a3 = self->_visibilityPropagationView.m_ptr;
  }

  [(WKLayerHostView *)self addSubview:a3];
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  return self;
}

@end