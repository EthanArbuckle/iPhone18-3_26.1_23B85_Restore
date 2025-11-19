@interface THWClippingLayerHost
- (CGPoint)contentOffset;
- (CGRect)frame;
- (THWClippingLayerHost)init;
- (id)topLevelReps;
- (void)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (void)dealloc;
- (void)endModalOperation;
- (void)presentError:(id)a3 completionHandler:(id)a4;
- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5;
- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)a3 completionHandler:(id)a4;
- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)a3 completionHandler:(id)a4;
- (void)promptForAnnotationAuthorNameWithCompletionBlock:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setInteractiveCanvasController:(id)a3;
- (void)teardown;
- (void)teardownAndTransferCanvasLayersToHost:(id)a3;
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

- (void)setInteractiveCanvasController:(id)a3
{
  self->_interactiveCanvasController = a3;
  v4 = [(THWClippingLayerHost *)self canvasLayer];

  [(TSDCanvasLayer *)v4 setController:a3];
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

- (void)setFrame:(CGRect)a3
{
  [(CALayer *)self->_layer bounds];
  TSDRectWithOriginAndSize();
  [(CALayer *)self->_layer setBounds:?];
  TSDCenterOfRect();
  layer = self->_layer;

  [(CALayer *)layer setPosition:?];
}

- (void)teardownAndTransferCanvasLayersToHost:(id)a3
{
  v5 = [-[TSDCanvasLayer sublayers](self->_canvasLayer "sublayers")];
  [(TSDCanvasLayer *)self->_canvasLayer setSublayers:0];
  [objc_msgSend(a3 "canvasLayer")];

  [(THWClippingLayerHost *)self teardown];
  [(CALayer *)self->_layer removeFromSuperlayer];

  self->_layer = 0;
}

- (void)presentError:(id)a3 completionHandler:(id)a4
{
  v4 = [TSUAssertionHandler currentHandler:a3];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentError:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:85 description:@"should present error"];
}

- (void)presentErrors:(id)a3 withLocalizedDescription:(id)a4 completionHandler:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
  v6 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentErrors:withLocalizedDescription:completionHandler:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v5 handleFailureInFunction:v6 file:v7 lineNumber:90 description:@"should present error"];
}

- (void)presentMovieCompatibilityAlertForUnplayableMovieURLs:(id)a3 completionHandler:(id)a4
{
  v4 = [TSUAssertionHandler currentHandler:a3];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentMovieCompatibilityAlertForUnplayableMovieURLs:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:97 description:@"should present error"];
}

- (void)presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:(id)a3 completionHandler:(id)a4
{
  v4 = [TSUAssertionHandler currentHandler:a3];
  v5 = [NSString stringWithUTF8String:"[THWClippingLayerHost presentMovieCompatibilityAlertForUnplayableMoviePasteboardDrawableProviders:completionHandler:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/THWClippingLayerHost.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:102 description:@"should present error"];
}

- (void)beginModalOperationWithLocalizedMessage:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v5 = [TSUAssertionHandler currentHandler:a3];
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

- (void)promptForAnnotationAuthorNameWithCompletionBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (CGPoint)contentOffset
{
  v2 = [(THWClippingLayerHost *)self clippingLayer];

  [(CALayer *)v2 bounds];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  [(CALayer *)[(THWClippingLayerHost *)self clippingLayer] bounds];
  TSDRectWithOriginAndSize();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(THWClippingLayerHost *)self clippingLayer];

  [(CALayer *)v12 setBounds:v5, v7, v9, v11];
}

- (id)topLevelReps
{
  v2 = [(TSDInteractiveCanvasController *)[(THWClippingLayerHost *)self interactiveCanvasController] canvas];

  return [v2 topLevelReps];
}

@end