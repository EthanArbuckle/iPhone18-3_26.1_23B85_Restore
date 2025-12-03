@interface BNPanGestureLocalProxy
- (BNPanGestureLocalProxy)initWithPanGestureRecognizer:(id)recognizer containerView:(id)view;
- (BNPanGestureProxyDelegate)delegate;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (CGPoint)translationInCoordinateSpace:(id)space;
- (CGPoint)velocityInCoordinateSpace:(id)space;
- (CGPoint)visualTranslationInCoordinateSpace:(id)space;
- (void)_handlePan:(id)pan;
- (void)sendAction;
@end

@implementation BNPanGestureLocalProxy

- (BNPanGestureLocalProxy)initWithPanGestureRecognizer:(id)recognizer containerView:(id)view
{
  recognizerCopy = recognizer;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = BNPanGestureLocalProxy;
  v8 = [(BNPanGestureLocalProxy *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_panGesture, recognizerCopy);
    [recognizerCopy addTarget:v9 action:sel__handlePan_];

    objc_storeWeak(&v9->_containerView, viewCopy);
  }

  return v9;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self locationForTouch:0 inCoordinateSpace:spaceCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    view = [v10 view];
    [v10 locationInView:view];
    [view convertPoint:spaceCopy toCoordinateSpace:?];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self translationInCoordinateSpace:spaceCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    view = [v10 view];
    [v10 translationInView:view];
    [view convertPoint:spaceCopy toCoordinateSpace:?];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self visualTranslationInCoordinateSpace:spaceCopy];
  }

  else
  {
    [(BNPanGestureLocalProxy *)self translationInCoordinateSpace:spaceCopy];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)space
{
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gestureRecognizerProxy:self velocityInCoordinateSpace:spaceCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_panGesture);
    view = [v10 view];
    v12 = objc_loadWeakRetained(&self->_panGesture);
    [v12 velocityInView:view];
    [view convertPoint:spaceCopy toCoordinateSpace:?];
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

- (void)_handlePan:(id)pan
{
  state = [pan state];
  self->_state = state;
  if (state == 2)
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