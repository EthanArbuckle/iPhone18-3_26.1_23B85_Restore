@interface AEExplorerGroupingView
- (void)layoutSubviews;
- (void)setSceneView:(id)view;
@end

@implementation AEExplorerGroupingView

- (void)setSceneView:(id)view
{
  viewCopy = view;
  sceneView = self->_sceneView;
  if (sceneView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)sceneView removeFromSuperview];
    [(AEExplorerGroupingView *)self addSubview:v7];
    objc_storeStrong(&self->_sceneView, view);
  }

  MEMORY[0x2821F96F8]();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AEExplorerGroupingView;
  [(AEExplorerGroupingView *)&v3 layoutSubviews];
  [(AEExplorerGroupingView *)self bounds];
  [(UIView *)self->_sceneView setFrame:?];
}

@end