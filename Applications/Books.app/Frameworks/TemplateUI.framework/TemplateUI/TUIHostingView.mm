@interface TUIHostingView
+ (id)renderModelIdentifier:(id)a3 size:(CGSize)a4 requestedSize:(CGSize)a5 usingGeometry:(BOOL)a6 insets:(UIEdgeInsets)a7 hostingIdentifier:(id)a8 hostingProperties:(id)a9 anchorPoint:(CGPoint)a10;
- (TUIHostingView)init;
- (void)_cleanup;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)applyLayoutAttributes:(id)a3;
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

+ (id)renderModelIdentifier:(id)a3 size:(CGSize)a4 requestedSize:(CGSize)a5 usingGeometry:(BOOL)a6 insets:(UIEdgeInsets)a7 hostingIdentifier:(id)a8 hostingProperties:(id)a9 anchorPoint:(CGPoint)a10
{
  bottom = a7.bottom;
  right = a7.right;
  left = a7.left;
  top = a7.top;
  v13 = a6;
  height = a5.height;
  width = a5.width;
  v16 = a4.height;
  v17 = a4.width;
  v19 = a9;
  v20 = a8;
  v21 = a3;
  v22 = [[_TUIlHostingRenderModel alloc] initWithIdentifier:v21 size:v13 requestedSize:v20 usingGeometry:v19 insets:v17 hostingIdentifier:v16 hostingProperties:width anchorPoint:height, top, left, bottom, right, v27, v28];

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

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = TUIHostingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_19AC0C(self, v5);
  }

  v22.receiver = self;
  v22.super_class = TUIHostingView;
  [(TUIReusableBaseView *)&v22 applyLayoutAttributes:v4];

  v6 = [(TUIReusableBaseView *)self layoutAttributes];
  v7 = [v6 renderModel];

  v8 = [v7 hostingIdentifier];
  v9 = [v7 hostingProperties];
  hostingIdentifier = self->_hostingIdentifier;
  if ((hostingIdentifier == v8 || [(TUIHostingIdentifier *)hostingIdentifier isEqual:v8]) && ((hostingProperties = self->_hostingProperties, hostingProperties == v9) || [(TUIHostingProperties *)hostingProperties isEqual:v9]))
  {
    [v7 requestedSize];
    if (self->_requestedSize.width != v13 || self->_requestedSize.height != v12)
    {
      [v7 requestedSize];
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

    v18 = [(TUIReusableBaseView *)self feedControllerHost];
    v19 = [v18 hostingController];

    if (self->_hostingIdentifier)
    {
      [v19 removeProviderObserver:self forIdentifier:?];
    }

    objc_storeStrong(&self->_hostingIdentifier, v8);
    objc_storeStrong(&self->_hostingProperties, v9);
    [v7 requestedSize];
    self->_requestedSize.width = v20;
    self->_requestedSize.height = v21;
    if (self->_hostingIdentifier)
    {
      [v19 addProviderObserver:self forIdentifier:?];
    }

    [(TUIHostingView *)self setNeedsHostingUpdate];
  }

LABEL_21:
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(TUIReusableBaseView *)self feedControllerHost];
  v9 = [v6 hostingController];

  v7 = [(TUIHostingView *)self traitCollection];
  v8 = [v9 needsGeometryUpdateWithOldTraitCollection:v7 newTraitCollection:v5];

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

  v4 = [(TUIReusableBaseView *)self feedControllerHost];
  v5 = [v4 hostingController];

  needsHostingUpdate = self->_flags.needsHostingUpdate;
  if (needsHostingUpdate)
  {
    self->_flags.needsHostingUpdate = 0;
    v7 = [v5 viewStateForIdentifier:self->_hostingIdentifier];
    v8 = TUIHostingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(TUIReusableBaseView *)self feedControllerHost];
      v33 = [v32 feedId];
      hostingIdentifier = self->_hostingIdentifier;
      hostedViewState = self->_hostedViewState;
      *buf = 134219010;
      v41 = v33;
      v42 = 2112;
      v43 = hostingIdentifier;
      v44 = 2048;
      v45 = self;
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
      [v5 runDisappearanceTransitionForViewState:?];
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
      [v5 runAppearanceTransitionForViewState:v11 superview:self];
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [(TUIReusableBaseView *)self layoutAttributes];
  v14 = [v13 renderModel];

  [v14 insets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v14 usingGeometry];
  [v14 anchorPoint];
  [(TUIHostingViewState *)self->_hostedViewState setAnchorPoint:?];
  if (self->_hostedViewState)
  {
    [v5 updateFrameIfNeeded:needsHostingUpdate | v23 ^ 1 forViewState:self->_requestedSize.width requestedSize:self->_requestedSize.height insets:{v16, v18, v20, v22}];
  }

  if ([v14 usingGeometry] && self->_hostedViewState)
  {
    [v5 runAppearanceAnimationIfNeededForViewState:?];
  }

  v39.receiver = self;
  v39.super_class = TUIHostingView;
  [(TUIHostingView *)&v39 layoutSubviews];
  if (self->_hostedViewState)
  {
    [v5 updateGeometryForViewState:self->_requestedSize.width requestedSize:self->_requestedSize.height insets:{v16, v18, v20, v22}];
  }

  if (v12)
  {
    v24 = [(TUIHostingViewState *)self->_hostedViewState visibilityOptions];
    if (v24)
    {
      v25 = self->_hostingIdentifier;
      v26 = [(TUIReusableBaseView *)self feedControllerHost];
      v27 = [v26 viewVisibilityController];
      v28 = [(TUIHostingViewState *)self->_hostedViewState view];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_B8B40;
      v36[3] = &unk_260F20;
      v37 = v5;
      v38 = v25;
      v29 = v25;
      v30 = [v27 observeView:v28 options:v24 block:v36];
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
  v3 = [(TUIReusableBaseView *)self feedControllerHost];
  v4 = [v3 hostingController];

  hostingIdentifier = self->_hostingIdentifier;
  if (v4)
  {
    if (hostingIdentifier)
    {
      [v4 removeProviderObserver:self forIdentifier:?];
      v6 = self->_hostingIdentifier;
      self->_hostingIdentifier = 0;

      hostingProperties = self->_hostingProperties;
      self->_hostingProperties = 0;
    }

    if (self->_hostedViewState)
    {
      hostedViewVisibilityCancellable = self->_hostedViewVisibilityCancellable;
      self->_hostedViewVisibilityCancellable = 0;

      [v4 didEndDisplayForViewState:self->_hostedViewState];
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