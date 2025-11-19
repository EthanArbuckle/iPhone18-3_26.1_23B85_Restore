@interface BNPanGestureLocalProxy
- (BNPanGestureLocalProxy)initWithPanGestureRecognizer:(id)a3 containerView:(id)a4;
- (BNPanGestureProxyDelegate)delegate;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (CGPoint)translationInCoordinateSpace:(id)a3;
- (CGPoint)velocityInCoordinateSpace:(id)a3;
- (CGPoint)visualTranslationInCoordinateSpace:(id)a3;
- (void)_handlePan:(id)a3;
- (void)sendAction;
@end

@implementation BNPanGestureLocalProxy

- (BNPanGestureLocalProxy)initWithPanGestureRecognizer:(id)a3 containerView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BNPanGestureLocalProxy;
  v8 = [(BNPanGestureLocalProxy *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_panGesture, v6);
    [v6 addTarget:v9 action:sel__handlePan_];

    objc_storeWeak(&v9->_containerView, v7);
  }

  return v9;
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self locationForTouch:0 inCoordinateSpace:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    v11 = [v10 view];
    [v10 locationInView:v11];
    [v11 convertPoint:v4 toCoordinateSpace:?];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self translationInCoordinateSpace:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    v11 = [v10 view];
    [v10 translationInView:v11];
    [v11 convertPoint:v4 toCoordinateSpace:?];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self visualTranslationInCoordinateSpace:v4];
  }

  else
  {
    [(BNPanGestureLocalProxy *)self translationInCoordinateSpace:v4];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self velocityInCoordinateSpace:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    v11 = [v10 view];
    v12 = objc_loadWeakRetained(&self->_panGesture);
    [v12 velocityInView:v11];
    [v11 convertPoint:v4 toCoordinateSpace:?];
    v7 = v13;
    v9 = v14;
  }

  v15 = v7;
  v16 = v9;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)sendAction
{
  WeakRetained = objc_loadWeakRetained(&self->_panGesture);
  [(BNPanGestureLocalProxy *)self _handlePan:WeakRetained];
}

- (void)_handlePan:(id)a3
{
  v4 = [a3 state];
  self->_state = v4;
  if (v4 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerView);
    [(BNPanGestureLocalProxy *)self visualTranslationInCoordinateSpace:WeakRetained];
    v7 = v6;

    if (v7 > 40.0)
    {
      self->_didCrossDefaultThreshold = 1;
    }
  }

  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    v9 = *(actionHandler + 2);

    v9();
  }
}

- (BNPanGestureProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end