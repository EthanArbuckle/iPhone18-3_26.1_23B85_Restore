@interface THWLayerDraggingController
- (BOOL)handleGesture:(id)gesture;
- (THWLayerDraggingController)initWithLayer:(id)layer hostView:(id)view gesture:(id)gesture anchorPoint:(CGPoint)point delegate:(id)delegate;
- (void)dealloc;
- (void)p_didEndWithPosition:(CGPoint)position;
- (void)p_dragLayerToPosition:(CGPoint)position boundsPosition:(CGPoint)boundsPosition;
@end

@implementation THWLayerDraggingController

- (THWLayerDraggingController)initWithLayer:(id)layer hostView:(id)view gesture:(id)gesture anchorPoint:(CGPoint)point delegate:(id)delegate
{
  if (layer)
  {
    if (delegate)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (delegate)
    {
      goto LABEL_3;
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
LABEL_3:
  v29.receiver = self;
  v29.super_class = THWLayerDraggingController;
  v12 = [(THWLayerDraggingController *)&v29 init];
  v13 = v12;
  if (v12)
  {
    v12->_delegate = delegate;
    v12->_hostView = view;
    v13->_layer = layer;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)v13->_layer bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v13->_wrapperLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)v13->_wrapperLayer setDelegate:[(CALayer *)v13->_layer delegate]];
    [(CALayer *)v13->_wrapperLayer setBounds:v15, v17, v19, v21];
    [(CALayer *)v13->_wrapperLayer setAnchorPoint:0.5, 0.5];
    [(CALayer *)v13->_wrapperLayer addSublayer:v13->_layer];
    [(CALayer *)v13->_wrapperLayer frame];
    wrapperView = v13->_wrapperView;
    if (!wrapperView)
    {
      TSDRectWithSize();
      wrapperView = [[UIView alloc] initWithFrame:{v23, v24, v25, v26}];
      v13->_wrapperView = wrapperView;
    }

    [(CALayer *)[(UIView *)wrapperView layer] addSublayer:v13->_wrapperLayer];
    [(CALayer *)[(UIView *)v13->_wrapperView layer] setZPosition:5.0];
    [(UIView *)v13->_hostView addSubview:v13->_wrapperView];
    delegate = v13->_delegate;
    [(THWLayerDraggingDelegate *)delegate layerDragging:v13 naturalPositionWithGesture:gesture];
    [(THWLayerDraggingDelegate *)delegate layerDragging:v13 convertNaturalPointToBounds:?];
    TSDRoundedPoint();
    [(CALayer *)v13->_wrapperLayer setPosition:?];
    [(CALayer *)v13->_layer setAnchorPoint:0.5, 0.5];
    TSDRoundedPoint();
    [(CALayer *)v13->_layer setPosition:?];
    +[CATransaction commit];
    +[CATransaction flush];
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWLayerDraggingController;
  [(THWLayerDraggingController *)&v3 dealloc];
}

- (void)p_dragLayerToPosition:(CGPoint)position boundsPosition:(CGPoint)boundsPosition
{
  [CATransaction begin:position.x];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  TSDRoundedPoint();
  [(CALayer *)self->_wrapperLayer setPosition:?];

  +[CATransaction commit];
}

- (BOOL)handleGesture:(id)gesture
{
  [(THWLayerDraggingDelegate *)self->_delegate layerDragging:self naturalPositionWithGesture:gesture];
  v6 = v5;
  v8 = v7;
  [(THWLayerDraggingDelegate *)self->_delegate layerDragging:self convertNaturalPointToBounds:?];
  v10 = v9;
  v12 = v11;
  gestureKind = [gesture gestureKind];
  v14 = TSWPImmediatePress;
  if (gestureKind == TSWPImmediatePress)
  {
    gestureState = [gesture gestureState];
    if (gestureState <= 3)
    {
      switch(gestureState)
      {
        case 1:
          [(THWLayerDraggingController *)self p_didBeginWithPosition:v6 boundsPosition:v8, v10, v12];
          break;
        case 2:
          [(THWLayerDraggingDelegate *)self->_delegate layerDraggingDidMove:self withPosition:v6, v8];
          break;
        case 3:
          goto LABEL_8;
        default:
          return gestureKind == v14;
      }

      [(THWLayerDraggingController *)self p_dragLayerToPosition:v6 boundsPosition:v8, v10, v12];
      return gestureKind == v14;
    }

    if ((gestureState - 4) < 2)
    {
LABEL_8:
      [(THWLayerDraggingController *)self p_didEndWithPosition:v6, v8];
    }
  }

  return gestureKind == v14;
}

- (void)p_didEndWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  selfCopy = self;
  delegate = self->_delegate;

  [(THWLayerDraggingDelegate *)delegate layerDraggingDidEnd:self withPosition:x, y];
}

@end