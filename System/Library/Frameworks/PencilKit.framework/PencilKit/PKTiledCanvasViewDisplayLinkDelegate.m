@interface PKTiledCanvasViewDisplayLinkDelegate
- (PKTiledCanvasView)view;
- (void)display:(id)a3;
@end

@implementation PKTiledCanvasViewDisplayLinkDelegate

- (void)display:(id)a3
{
  v5 = a3;
  v4 = [(PKTiledCanvasViewDisplayLinkDelegate *)self view];
  [v5 targetTimestamp];
  [v4 _drawingDisplay:?];
}

- (PKTiledCanvasView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end