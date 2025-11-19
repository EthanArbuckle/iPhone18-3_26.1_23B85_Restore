@interface AEExplorerGroupingView
- (void)layoutSubviews;
- (void)setSceneView:(id)a3;
@end

@implementation AEExplorerGroupingView

- (void)setSceneView:(id)a3
{
  v5 = a3;
  sceneView = self->_sceneView;
  if (sceneView != v5)
  {
    v7 = v5;
    [(UIView *)sceneView removeFromSuperview];
    [(AEExplorerGroupingView *)self addSubview:v7];
    objc_storeStrong(&self->_sceneView, a3);
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