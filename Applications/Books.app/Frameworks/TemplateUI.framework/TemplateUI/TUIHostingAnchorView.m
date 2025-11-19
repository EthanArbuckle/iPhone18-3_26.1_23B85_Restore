@interface TUIHostingAnchorView
+ (id)renderModelIdentifier:(id)a3 submodel:(id)a4 hostingIdentifier:(id)a5 hostingProperties:(id)a6;
- (void)_updateVisible:(BOOL)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setNeedsHostingUpdate;
- (void)viewDidEndDisplay;
@end

@implementation TUIHostingAnchorView

+ (id)renderModelIdentifier:(id)a3 submodel:(id)a4 hostingIdentifier:(id)a5 hostingProperties:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_TUIHostingAnchorRenderModel alloc] initWithIdentifier:v12 submodel:v11 hostingIdentifier:v10 hostingProperties:v9];

  return v13;
}

- (void)setNeedsHostingUpdate
{
  if (!self->_flags.needsHostingUpdate)
  {
    self->_flags.needsHostingUpdate = 1;
    [(TUIHostingAnchorView *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v12.receiver = self;
  v12.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v12 applyLayoutAttributes:a3];
  v4 = [(TUIReusableBaseView *)self layoutAttributes];
  v5 = [v4 renderModel];

  v6 = [v5 hostingIdentifier];
  v7 = [v5 hostingProperties];
  hostingIdentifier = self->_hostingIdentifier;
  if (hostingIdentifier != v6 && ![(TUIHostingIdentifier *)hostingIdentifier isEqual:v6]|| (hostingProperties = self->_hostingProperties, hostingProperties != v7) && ![(TUIHostingProperties *)hostingProperties isEqual:v7])
  {
    v10 = [(TUIReusableBaseView *)self feedControllerHost];
    v11 = [v10 hostingController];

    if (self->_hostingIdentifier)
    {
      [v11 removeProviderObserver:self forIdentifier:?];
    }

    objc_storeStrong(&self->_hostingIdentifier, v6);
    objc_storeStrong(&self->_hostingProperties, v7);
    if (self->_hostingIdentifier)
    {
      [v11 addProviderObserver:self forIdentifier:?];
    }

    [(TUIHostingAnchorView *)self setNeedsHostingUpdate];
  }
}

- (void)layoutSubviews
{
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v3 hostingController];

  if (!self->_visibilityCancellable)
  {
    v5 = +[TUIVisibilityOptions modalAnchorOptions];
    objc_initWeak(&location, self);
    self->_flags.visible = 0;
    v6 = [(TUIReusableBaseView *)self feedControllerHost];
    v7 = [v6 viewVisibilityController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7FF9C;
    v13[3] = &unk_2604B0;
    objc_copyWeak(&v14, &location);
    v8 = [v7 observeView:self options:v5 block:v13];
    visibilityCancellable = self->_visibilityCancellable;
    self->_visibilityCancellable = v8;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (self->_flags.needsHostingUpdate)
  {
    self->_flags.needsHostingUpdate = 0;
    v10 = [v4 viewStateForIdentifier:self->_hostingIdentifier];
    hostedViewState = self->_hostedViewState;
    if (hostedViewState != v10)
    {
      if (hostedViewState)
      {
        [v4 runDisappearanceTransitionForViewState:?];
      }

      objc_storeStrong(&self->_hostedViewState, v10);
      if (self->_hostedViewState && self->_flags.visible)
      {
        [v4 runAppearanceTransitionForViewState:? superview:?];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v12 layoutSubviews];
}

- (void)_updateVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIReusableBaseView *)self feedControllerHost];
  v7 = [v5 hostingController];

  self->_flags.visible = v3;
  hostedViewState = self->_hostedViewState;
  if (v3)
  {
    [v7 runAppearanceTransitionForViewState:hostedViewState superview:self];
  }

  else
  {
    [v7 runDisappearanceTransitionForViewState:hostedViewState];
  }
}

- (void)viewDidEndDisplay
{
  v9.receiver = self;
  v9.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v9 viewDidEndDisplay];
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v3 hostingController];

  visibilityCancellable = self->_visibilityCancellable;
  self->_visibilityCancellable = 0;

  self->_flags.visible = 0;
  if (self->_hostedViewState)
  {
    [v4 didEndDisplayForViewState:?];
    hostedViewState = self->_hostedViewState;
    self->_hostedViewState = 0;

    hostingIdentifier = self->_hostingIdentifier;
    self->_hostingIdentifier = 0;

    hostingProperties = self->_hostingProperties;
    self->_hostingProperties = 0;
  }
}

@end