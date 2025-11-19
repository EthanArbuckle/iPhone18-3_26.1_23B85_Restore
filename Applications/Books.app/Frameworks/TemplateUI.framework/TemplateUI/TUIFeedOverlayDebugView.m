@interface TUIFeedOverlayDebugView
- (TUIFeedOverlayDebugViewDelegate)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateDebugButtons;
- (void)layoutSubviews;
- (void)setRenderModel:(id)a3;
@end

@implementation TUIFeedOverlayDebugView

- (void)setRenderModel:(id)a3
{
  v5 = a3;
  if (self->_renderModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderModel, a3);
    [(TUIFeedOverlayDebugView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIFeedOverlayDebugView;
  [(TUIFeedOverlayDebugView *)&v3 layoutSubviews];
  [(TUIFeedOverlayDebugView *)self _updateDebugButtons];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = TUIFeedOverlayDebugView;
  v5 = [(TUIFeedOverlayDebugView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
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
  v3 = [(_TUIFeedSectionDebug *)self->_debug button];
  [v3 setHidden:{-[_TUIFeedSectionDebug showButton](self->_debug, "showButton") ^ 1}];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained feedOverlayDebugViewController];
  v6 = [v5 view];
  [v6 safeAreaInsets];
  v8 = v7;
  v10 = v9;

  [v3 bounds];
  v12 = v11;
  [v3 bounds];
  [v3 setFrame:{v10 + 5.0, v8 + 5.0, v12}];
}

- (TUIFeedOverlayDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end