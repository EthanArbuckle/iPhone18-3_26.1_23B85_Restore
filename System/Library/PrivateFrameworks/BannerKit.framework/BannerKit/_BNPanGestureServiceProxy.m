@interface _BNPanGestureServiceProxy
- (BNPanGestureProxyDelegate)delegate;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (CGPoint)translationInCoordinateSpace:(id)a3;
- (CGPoint)velocityInCoordinateSpace:(id)a3;
- (CGPoint)visualTranslationInCoordinateSpace:(id)a3;
- (void)sendAction;
@end

@implementation _BNPanGestureServiceProxy

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction locationInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction translationInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction visualTranslationInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxyAction *)self->_activePanGestureProxyAction velocityInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)sendAction
{
  v3 = [(_BNPanGestureServiceProxy *)self actionHandler];
  if (v3)
  {
    v4 = v3;
    (v3)[2](v3, self);
    v3 = v4;
  }
}

- (BNPanGestureProxyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end