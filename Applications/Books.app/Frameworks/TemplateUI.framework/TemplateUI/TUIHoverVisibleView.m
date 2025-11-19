@interface TUIHoverVisibleView
+ (id)renderModelWithSubviewsModel:(id)a3 identifier:(id)a4 hoverIdentifier:(id)a5;
- (BOOL)_updateVisible;
- (id)hoverController;
- (void)applyLayoutAttributes:(id)a3;
- (void)hoverStateChanged:(id)a3;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
- (void)viewWillDisplay;
@end

@implementation TUIHoverVisibleView

+ (id)renderModelWithSubviewsModel:(id)a3 identifier:(id)a4 hoverIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_TUIHoverVisibleRenderModel alloc] initWithIdentifier:v8 submodel:v9 hoverIdentifier:v7];

  return v10;
}

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUIHoverVisibleView;
  v4 = a3;
  [(TUIContainerView *)&v6 applyLayoutAttributes:v4];
  v5 = [v4 forceVisibleOnHover];

  self->_forceVisible = v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIHoverVisibleView;
  [(TUIContainerView *)&v3 prepareForReuse];
  self->_forceVisible = 0;
}

- (BOOL)_updateVisible
{
  v3 = [(TUIReusableBaseView *)self layoutAttributes];
  v4 = [v3 renderModel];

  v5 = [(TUIHoverVisibleView *)self hoverController];
  v6 = [v4 hoverIdentifier];
  v7 = [v5 hoverStateForIdentifier:v6];

  visible = self->_visible;
  if (visible != v7)
  {
    self->_visible = v7;
  }

  v9 = visible != v7;

  return v9;
}

- (id)hoverController
{
  v2 = [(TUIHoverVisibleView *)self superview];
  if (v2)
  {
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  v4 = [v2 hoverController];

  return v4;
}

- (void)viewWillDisplay
{
  v4.receiver = self;
  v4.super_class = TUIHoverVisibleView;
  [(TUIReusableBaseView *)&v4 viewWillDisplay];
  v3 = [(TUIHoverVisibleView *)self hoverController];
  [v3 registerHoverObserver:self];

  [(TUIHoverVisibleView *)self _updateVisible];
}

- (void)viewDidEndDisplay
{
  v4.receiver = self;
  v4.super_class = TUIHoverVisibleView;
  [(TUIContainerView *)&v4 viewDidEndDisplay];
  v3 = [(TUIHoverVisibleView *)self hoverController];
  [v3 unregisterHoverObserver:self];
}

- (void)hoverStateChanged:(id)a3
{
  v8 = a3;
  v4 = [(TUIReusableBaseView *)self layoutAttributes];
  v5 = [v4 renderModel];

  if (!v8 || ([v5 hoverIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v8, "containsObject:", v6), v6, v7))
  {
    if ([(TUIHoverVisibleView *)self _updateVisible])
    {
      [(TUIContainerView *)self invalidateShowContents];
    }
  }
}

@end