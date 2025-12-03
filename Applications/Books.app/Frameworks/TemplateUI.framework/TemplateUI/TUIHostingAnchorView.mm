@interface TUIHostingAnchorView
+ (id)renderModelIdentifier:(id)identifier submodel:(id)submodel hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties;
- (void)_updateVisible:(BOOL)visible;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setNeedsHostingUpdate;
- (void)viewDidEndDisplay;
@end

@implementation TUIHostingAnchorView

+ (id)renderModelIdentifier:(id)identifier submodel:(id)submodel hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties
{
  propertiesCopy = properties;
  hostingIdentifierCopy = hostingIdentifier;
  submodelCopy = submodel;
  identifierCopy = identifier;
  v13 = [[_TUIHostingAnchorRenderModel alloc] initWithIdentifier:identifierCopy submodel:submodelCopy hostingIdentifier:hostingIdentifierCopy hostingProperties:propertiesCopy];

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

- (void)applyLayoutAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v12 applyLayoutAttributes:attributes];
  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  hostingIdentifier = [renderModel hostingIdentifier];
  hostingProperties = [renderModel hostingProperties];
  hostingIdentifier = self->_hostingIdentifier;
  if (hostingIdentifier != hostingIdentifier && ![(TUIHostingIdentifier *)hostingIdentifier isEqual:hostingIdentifier]|| (hostingProperties = self->_hostingProperties, hostingProperties != hostingProperties) && ![(TUIHostingProperties *)hostingProperties isEqual:hostingProperties])
  {
    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    hostingController = [feedControllerHost hostingController];

    if (self->_hostingIdentifier)
    {
      [hostingController removeProviderObserver:self forIdentifier:?];
    }

    objc_storeStrong(&self->_hostingIdentifier, hostingIdentifier);
    objc_storeStrong(&self->_hostingProperties, hostingProperties);
    if (self->_hostingIdentifier)
    {
      [hostingController addProviderObserver:self forIdentifier:?];
    }

    [(TUIHostingAnchorView *)self setNeedsHostingUpdate];
  }
}

- (void)layoutSubviews
{
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  if (!self->_visibilityCancellable)
  {
    v5 = +[TUIVisibilityOptions modalAnchorOptions];
    objc_initWeak(&location, self);
    self->_flags.visible = 0;
    feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
    viewVisibilityController = [feedControllerHost2 viewVisibilityController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7FF9C;
    v13[3] = &unk_2604B0;
    objc_copyWeak(&v14, &location);
    v8 = [viewVisibilityController observeView:self options:v5 block:v13];
    visibilityCancellable = self->_visibilityCancellable;
    self->_visibilityCancellable = v8;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  if (self->_flags.needsHostingUpdate)
  {
    self->_flags.needsHostingUpdate = 0;
    v10 = [hostingController viewStateForIdentifier:self->_hostingIdentifier];
    hostedViewState = self->_hostedViewState;
    if (hostedViewState != v10)
    {
      if (hostedViewState)
      {
        [hostingController runDisappearanceTransitionForViewState:?];
      }

      objc_storeStrong(&self->_hostedViewState, v10);
      if (self->_hostedViewState && self->_flags.visible)
      {
        [hostingController runAppearanceTransitionForViewState:? superview:?];
      }
    }
  }

  v12.receiver = self;
  v12.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v12 layoutSubviews];
}

- (void)_updateVisible:(BOOL)visible
{
  visibleCopy = visible;
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  self->_flags.visible = visibleCopy;
  hostedViewState = self->_hostedViewState;
  if (visibleCopy)
  {
    [hostingController runAppearanceTransitionForViewState:hostedViewState superview:self];
  }

  else
  {
    [hostingController runDisappearanceTransitionForViewState:hostedViewState];
  }
}

- (void)viewDidEndDisplay
{
  v9.receiver = self;
  v9.super_class = TUIHostingAnchorView;
  [(TUIContainerView *)&v9 viewDidEndDisplay];
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  visibilityCancellable = self->_visibilityCancellable;
  self->_visibilityCancellable = 0;

  self->_flags.visible = 0;
  if (self->_hostedViewState)
  {
    [hostingController didEndDisplayForViewState:?];
    hostedViewState = self->_hostedViewState;
    self->_hostedViewState = 0;

    hostingIdentifier = self->_hostingIdentifier;
    self->_hostingIdentifier = 0;

    hostingProperties = self->_hostingProperties;
    self->_hostingProperties = 0;
  }
}

@end