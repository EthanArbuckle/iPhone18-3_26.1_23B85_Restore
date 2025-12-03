@interface TUIFeedOverlayDebugView
- (TUIFeedOverlayDebugViewDelegate)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateDebugButtons;
- (void)layoutSubviews;
- (void)setRenderModel:(id)model;
@end

@implementation TUIFeedOverlayDebugView

- (void)setRenderModel:(id)model
{
  modelCopy = model;
  if (self->_renderModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_renderModel, model);
    [(TUIFeedOverlayDebugView *)self setNeedsLayout];
    modelCopy = v6;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIFeedOverlayDebugView;
  [(TUIFeedOverlayDebugView *)&v3 layoutSubviews];
  [(TUIFeedOverlayDebugView *)self _updateDebugButtons];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = TUIFeedOverlayDebugView;
  v5 = [(TUIFeedOverlayDebugView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)_updateDebugButtons
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_16AE70;
  v13[3] = &unk_25DE30;
  v13[4] = self;
  [UIView performWithoutAnimation:v13];
  button = [(_TUIFeedSectionDebug *)self->_debug button];
  [button setHidden:{-[_TUIFeedSectionDebug showButton](self->_debug, "showButton") ^ 1}];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  feedOverlayDebugViewController = [WeakRetained feedOverlayDebugViewController];
  view = [feedOverlayDebugViewController view];
  [view safeAreaInsets];
  v8 = v7;
  v10 = v9;

  [button bounds];
  v12 = v11;
  [button bounds];
  [button setFrame:{v10 + 5.0, v8 + 5.0, v12}];
}

- (TUIFeedOverlayDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end