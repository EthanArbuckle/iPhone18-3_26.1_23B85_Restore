@interface THWClippingLayerHost
- (CGPoint)contentOffset;
- (CGRect)frame;
- (THWClippingLayerHost)init;
- (id)topLevelReps;
- (void)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler;
- (void)dealloc;
- (void)endModalOperation;
- (void)presentError:(id)error completionHandler:(id)handler;
- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler;
- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)providers completionHandler:(id)handler;
- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)ls completionHandler:(id)handler;
- (void)promptForAnnotationAuthorNameWithCompletionBlock:(id)block;
- (void)setContentOffset:(CGPoint)offset;
- (void)setFrame:(CGRect)frame;
- (void)setInteractiveCanvasController:(id)controller;
- (void)teardown;
- (void)teardownAndTransferCanvasLayersToHost:(id)host;
@end

@implementation THWClippingLayerHost

- (THWClippingLayerHost)init
{
  v6.receiver = self;
  v6.super_class = THWClippingLayerHost;
  v2 = [(THWClippingLayerHost *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    v2->_layer = v3;
    [(CALayer *)v3 setMasksToBounds:1];
    v4 = objc_alloc_init(TSDCanvasLayer);
    v2->_canvasLayer = v4;
    [(CALayer *)v2->_layer addSublayer:v4];
    v2->_subviewsController = [[TSDCanvasSubviewsController alloc] initWithLayerAndSubviewHost:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWClippingLayerHost;
  [(THWClippingLayerHost *)&v3 dealloc];
}

- (void)setInteractiveCanvasController:(id)controller
{
  self->_interactiveCanvasController = controller;
  canvasLayer = [(THWClippingLayerHost *)self canvasLayer];

  [(TSDCanvasLayer *)canvasLayer setController:controller];
}

- (CGRect)frame
{
  [(CALayer *)self->_layer frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  [(CALayer *)self->_layer bounds];
  TSDRectWithOriginAndSize();
  [(CALayer *)self->_layer setBounds:?];
  TSDCenterOfRect();
  layer = self->_layer;

  [(CALayer *)layer setPosition:?];
}

- (void)teardownAndTransferCanvasLayersToHost:(id)host
{
  v5 = [-[TSDCanvasLayer sublayers](self->_canvasLayer "sublayers")];
  [(TSDCanvasLayer *)self->_canvasLayer setSublayers:0];
  [objc_msgSend(host "canvasLayer")];

  [(THWClippingLayerHost *)self teardown];
  [(CALayer *)self->_layer removeFromSuperlayer];

  self->_layer = 0;
}

- (void)presentError:(id)error completionHandler:(id)handler
{
  v4 = [TSUAssertionHandler currentHandler:error];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentError:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:85 description:@"should present error"];
}

- (void)presentErrors:(id)errors withLocalizedDescription:(id)description completionHandler:(id)handler
{
  v5 = [TSUAssertionHandler currentHandler:errors];
  v6 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentErrors:withLocalizedDescription:completionHandler:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:90 description:@"should present error"];
}

- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)ls completionHandler:(id)handler
{
  v4 = [TSUAssertionHandler currentHandler:ls];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentMovieCompatibilityAlertForUnplayableMovieURLs:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:97 description:@"should present error"];
}

- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)providers completionHandler:(id)handler
{
  v4 = [TSUAssertionHandler currentHandler:providers];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:102 description:@"should present error"];
}

- (void)beginModalOperationWithLocalizedMessage:(id)message progress:(id)progress cancelHandler:(id)handler
{
  v5 = [TSUAssertionHandler currentHandler:message];
  v6 = [NSString stringWithUTF8String:"[THWClippingLayerHost beginModalOperationWithLocalizedMessage:progress:cancelHandler:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:111 description:@"should not be called"];
}

- (void)endModalOperation
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"[THWClippingLayerHost endModalOperation]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:116 description:@"should not be called"];
}

- (void)teardown
{
  [(CALayer *)self->_layer setDelegate:0];
  [(TSDCanvasLayer *)self->_canvasLayer teardown];
  [(TSDCanvasSubviewsController *)self->_subviewsController teardown];
  if ([-[TSDCanvasSubviewsController repChildViews](self->_subviewsController "repChildViews")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  interactiveCanvasController = self->_interactiveCanvasController;

  [(TSDInteractiveCanvasController *)interactiveCanvasController i_layerHostHasBeenTornDown];
}

- (void)promptForAnnotationAuthorNameWithCompletionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0);
  }
}

- (CGPoint)contentOffset
{
  clippingLayer = [(THWClippingLayerHost *)self clippingLayer];

  [(CALayer *)clippingLayer bounds];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  [(CALayer *)[(THWClippingLayerHost *)self clippingLayer] bounds];
  TSDRectWithOriginAndSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  clippingLayer = [(THWClippingLayerHost *)self clippingLayer];

  [(CALayer *)clippingLayer setBounds:v5, v7, v9, v11];
}

- (id)topLevelReps
{
  canvas = [(TSDInteractiveCanvasController *)[(THWClippingLayerHost *)self interactiveCanvasController] canvas];

  return [canvas topLevelReps];
}

@end