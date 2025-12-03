@interface _BNPanGestureServiceProxy
- (BNPanGestureProxyDelegate)delegate;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (CGPoint)translationInCoordinateSpace:(id)space;
- (CGPoint)velocityInCoordinateSpace:(id)space;
- (CGPoint)visualTranslationInCoordinateSpace:(id)space;
- (void)sendAction;
@end

@implementation _BNPanGestureServiceProxy

- (CGPoint)locationInCoordinateSpace:(id)space
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction locationInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)space
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction translationInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)space
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction visualTranslationInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)space
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction velocityInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)sendAction
{
  actionHandler = [(_BNPanGestureServiceProxy *)self actionHandler];
  if (actionHandler)
  {
    v4 = actionHandler;
    (actionHandler)[2](actionHandler, self);
    actionHandler = v4;
  }
}

- (BNPanGestureProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end