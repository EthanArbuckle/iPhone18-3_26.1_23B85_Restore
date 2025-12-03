@interface PKTiledCanvasViewDisplayLinkDelegate
- (PKTiledCanvasView)view;
- (void)display:(id)display;
@end

@implementation PKTiledCanvasViewDisplayLinkDelegate

- (void)display:(id)display
{
  displayCopy = display;
  view = [(PKTiledCanvasViewDisplayLinkDelegate *)self view];
  [displayCopy targetTimestamp];
  [view _drawingDisplay:?];
}

- (PKTiledCanvasView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end