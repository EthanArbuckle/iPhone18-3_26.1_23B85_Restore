@interface TUIHostingView
+ (id)renderModelIdentifier:(id)identifier size:(CGSize)size requestedSize:(CGSize)requestedSize usingGeometry:(BOOL)geometry insets:(UIEdgeInsets)insets hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties anchorPoint:(CGPoint)self0;
- (TUIHostingView)init;
- (void)_cleanup;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setNeedsHostingUpdate;
- (void)viewDidEndDisplay;
@end

@implementation TUIHostingView

- (TUIHostingView)init
{
  v6.receiver = self;
  v6.super_class = TUIHostingView;
  v2 = [(TUIHostingView *)&v6 init];
  if (v2)
  {
    v3 = +[UITraitCollection tui_allAPITraits];
    v4 = [(TUIHostingView *)v2 registerForTraitChanges:v3 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v2;
}

+ (id)renderModelIdentifier:(id)identifier size:(CGSize)size requestedSize:(CGSize)requestedSize usingGeometry:(BOOL)geometry insets:(UIEdgeInsets)insets hostingIdentifier:(id)hostingIdentifier hostingProperties:(id)properties anchorPoint:(CGPoint)self0
{
  bottom = insets.bottom;
  right = insets.right;
  left = insets.left;
  top = insets.top;
  geometryCopy = geometry;
  height = requestedSize.height;
  width = requestedSize.width;
  v16 = size.height;
  v17 = size.width;
  propertiesCopy = properties;
  hostingIdentifierCopy = hostingIdentifier;
  identifierCopy = identifier;
  v22 = [[_TUIlHostingRenderModel alloc] initWithIdentifier:identifierCopy size:geometryCopy requestedSize:hostingIdentifierCopy usingGeometry:propertiesCopy insets:v17 hostingIdentifier:v16 hostingProperties:width anchorPoint:height, top, left, bottom, right, v27, v28];

  return v22;
}

- (void)setNeedsHostingUpdate
{
  if (!self->_flags.needsHostingUpdate)
  {
    v3 = TUIHostingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_19AB50(self);
    }

    self->_flags.needsHostingUpdate = 1;
    [(TUIHostingView *)self setNeedsLayout];
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = TUIHostingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_19AC0C(self, v5);
  }

  v22.receiver = self;
  v22.super_class = TUIHostingView;
  [(TUIReusableBaseView *)&v22 applyLayoutAttributes:attributesCopy];

  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  hostingIdentifier = [renderModel hostingIdentifier];
  hostingProperties = [renderModel hostingProperties];
  hostingIdentifier = self->_hostingIdentifier;
  if ((hostingIdentifier == hostingIdentifier || [(TUIHostingIdentifier *)hostingIdentifier isEqual:hostingIdentifier]) && ((hostingProperties = self->_hostingProperties, hostingProperties == hostingProperties) || [(TUIHostingProperties *)hostingProperties isEqual:hostingProperties]))
  {
    [renderModel requestedSize];
    if (self->_requestedSize.width != v13 || self->_requestedSize.height != v12)
    {
      [renderModel requestedSize];
      self->_requestedSize.width = v15;
      self->_requestedSize.height = v16;
LABEL_20:
      [(TUIHostingView *)self setNeedsLayout];
      goto LABEL_21;
    }

    if ([(TUIHostingViewState *)self->_hostedViewState needsLayout])
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = TUIHostingLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_19AD14(self);
    }

    feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
    hostingController = [feedControllerHost hostingController];

    if (self->_hostingIdentifier)
    {
      [hostingController removeProviderObserver:self forIdentifier:?];
    }

    objc_storeStrong(&self->_hostingIdentifier, hostingIdentifier);
    objc_storeStrong(&self->_hostingProperties, hostingProperties);
    [renderModel requestedSize];
    self->_requestedSize.width = v20;
    self->_requestedSize.height = v21;
    if (self->_hostingIdentifier)
    {
      [hostingController addProviderObserver:self forIdentifier:?];
    }

    [(TUIHostingView *)self setNeedsHostingUpdate];
  }

LABEL_21:
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  traitCollection = [(TUIHostingView *)self traitCollection];
  v8 = [hostingController needsGeometryUpdateWithOldTraitCollection:traitCollection newTraitCollection:collectionCopy];

  if (v8)
  {
    [(TUIHostingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3 = TUIHostingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_19ADC8(self, v3);
  }

  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  needsHostingUpdate = self->_flags.needsHostingUpdate;
  if (needsHostingUpdate)
  {
    self->_flags.needsHostingUpdate = 0;
    v7 = [hostingController viewStateForIdentifier:self->_hostingIdentifier];
    v8 = TUIHostingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      feedControllerHost2 = [(TUIReusableBaseView *)self feedControllerHost];
      feedId = [feedControllerHost2 feedId];
      hostingIdentifier = self->_hostingIdentifier;
      hostedViewState = self->_hostedViewState;
      *buf = 134219010;
      v41 = feedId;
      v42 = 2112;
      v43 = hostingIdentifier;
      v44 = 2048;
      selfCopy = self;
      v46 = 2114;
      v47 = hostedViewState;
      v48 = 2114;
      v49 = v7;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[fid:%lu] hosting update for identifier=%@ view=%p %{public}@ -> %{public}@", buf, 0x34u);
    }

    v9 = self->_hostedViewState;
    if (v9 == v7)
    {
      goto LABEL_12;
    }

    if (v9)
    {
      [hostingController runDisappearanceTransitionForViewState:?];
    }

    objc_storeStrong(&self->_hostedViewState, v7);
    hostedViewVisibilityCancellable = self->_hostedViewVisibilityCancellable;
    self->_hostedViewVisibilityCancellable = 0;

    v11 = self->_hostedViewState;
    if (!v11)
    {
LABEL_12:
      v12 = 0;
    }

    else
    {
      [hostingController runAppearanceTransitionForViewState:v11 superview:self];
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  layoutAttributes = [(TUIReusableBaseView *)self layoutAttributes];
  renderModel = [layoutAttributes renderModel];

  [renderModel insets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  usingGeometry = [renderModel usingGeometry];
  [renderModel anchorPoint];
  [(TUIHostingViewState *)self->_hostedViewState setAnchorPoint:?];
  if (self->_hostedViewState)
  {
    [hostingController updateFrameIfNeeded:needsHostingUpdate | usingGeometry ^ 1 forViewState:self->_requestedSize.width requestedSize:self->_requestedSize.height insets:{v16, v18, v20, v22}];
  }

  if ([renderModel usingGeometry] && self->_hostedViewState)
  {
    [hostingController runAppearanceAnimationIfNeededForViewState:?];
  }

  v39.receiver = self;
  v39.super_class = TUIHostingView;
  [(TUIHostingView *)&v39 layoutSubviews];
  if (self->_hostedViewState)
  {
    [hostingController updateGeometryForViewState:self->_requestedSize.width requestedSize:self->_requestedSize.height insets:{v16, v18, v20, v22}];
  }

  if (v12)
  {
    visibilityOptions = [(TUIHostingViewState *)self->_hostedViewState visibilityOptions];
    if (visibilityOptions)
    {
      v25 = self->_hostingIdentifier;
      feedControllerHost3 = [(TUIReusableBaseView *)self feedControllerHost];
      viewVisibilityController = [feedControllerHost3 viewVisibilityController];
      view = [(TUIHostingViewState *)self->_hostedViewState view];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_B8B40;
      v36[3] = &unk_260F20;
      v37 = hostingController;
      v38 = v25;
      v29 = v25;
      v30 = [viewVisibilityController observeView:view options:visibilityOptions block:v36];
      v31 = self->_hostedViewVisibilityCancellable;
      self->_hostedViewVisibilityCancellable = v30;
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUIHostingView;
  [(TUIReusableBaseView *)&v3 prepareForReuse];
  [(TUIHostingView *)self _cleanup];
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = TUIHostingView;
  [(TUIReusableBaseView *)&v3 viewDidEndDisplay];
  [(TUIHostingView *)self _cleanup];
}

- (void)_cleanup
{
  feedControllerHost = [(TUIReusableBaseView *)self feedControllerHost];
  hostingController = [feedControllerHost hostingController];

  hostingIdentifier = self->_hostingIdentifier;
  if (hostingController)
  {
    if (hostingIdentifier)
    {
      [hostingController removeProviderObserver:self forIdentifier:?];
      v6 = self->_hostingIdentifier;
      self->_hostingIdentifier = 0;

      hostingProperties = self->_hostingProperties;
      self->_hostingProperties = 0;
    }

    if (self->_hostedViewState)
    {
      hostedViewVisibilityCancellable = self->_hostedViewVisibilityCancellable;
      self->_hostedViewVisibilityCancellable = 0;

      [hostingController didEndDisplayForViewState:self->_hostedViewState];
      hostedViewState = self->_hostedViewState;
      self->_hostedViewState = 0;
    }
  }

  else if (hostingIdentifier || self->_hostedViewState)
  {
    v10 = TUIHostingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_19AE58(&self->_hostingIdentifier, self, v10);
    }

    if (_TUIDeviceHasInternalInstall())
    {
      v11 = [NSException alloc];
      v12 = [NSString stringWithFormat:@"The hosting view has no hosting controller and is not cleaned up: identifier %@, viewState %@", self->_hostingIdentifier, self->_hostedViewState];
      v13 = [v11 initWithName:@"HostingViewDetachedFromHost" reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }
  }
}

@end