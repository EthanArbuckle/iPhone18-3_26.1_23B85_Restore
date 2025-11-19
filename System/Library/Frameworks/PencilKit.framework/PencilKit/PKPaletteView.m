@interface PKPaletteView
+ (id)_makeScaleFactorPolicy;
+ (id)makeBackgroundView;
- (BOOL)_isCompactInSmallestQuickNoteWindowScene;
- (BOOL)_loadOptions;
- (BOOL)_wantsGlassBackground;
- (BOOL)isPalettePresentingPopover;
- (BOOL)isToolPreviewInstalled;
- (BOOL)isVisible;
- (BOOL)shouldPalettePresentPopover;
- (BOOL)wantsCustomPalettePopoverPresentationSource;
- (CGPoint)_paletteViewHoverLocation;
- (CGRect)_palettePopoverSourceRect;
- (CGRect)adjustedWindowSceneBounds;
- (CGRect)palettePopoverSourceRectToPresentViewController:(id)a3;
- (CGSize)minimizedPaletteSize;
- (CGSize)paletteSizeForEdge:(unint64_t)a3;
- (NSDirectionalEdgeInsets)edgeInsetsInCompactSize;
- (PKPaletteView)initWithFrame:(CGRect)a3;
- (PKPaletteViewDelegate)delegate;
- (PKPaletteViewHosting)paletteViewHosting;
- (PKPaletteViewHoverDelegate)hoverDelegate;
- (PKPaletteViewInternalDelegate)internalDelegate;
- (UIEdgeInsets)palettePopoverLayoutSceneMargins;
- (UIViewController)palettePopoverPresentingController;
- (UIViewController)presentationController;
- (double)paletteContentAlpha;
- (id)_paletteViewHoverView;
- (id)_stateDictionary;
- (id)palettePopoverPassthroughViews;
- (id)palettePopoverSourceView;
- (unint64_t)_nextAutoHideCorner;
- (unint64_t)edgeLocationToDockFromCorner:(unint64_t)a3;
- (unint64_t)palettePopoverPermittedArrowDirections;
- (void)_didChangeAutoHideEnabled;
- (void)_installBackgroundViewInView:(id)a3;
- (void)_installClippingViewInView:(id)a3;
- (void)_installContainerViewInView:(id)a3;
- (void)_installToolPreviewInView:(id)a3;
- (void)_saveOptions;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_setPaletteScaleFactor:(double)a3 notifyDidChange:(BOOL)a4;
- (void)_uninstallToolPreview;
- (void)_updateContainerSizeConstraints;
- (void)_updateContainerSizeConstraintsForEdge:(unint64_t)a3;
- (void)_updateContainerViewConstraints;
- (void)_updateToolPreviewScalingAnimated:(BOOL)a3;
- (void)_updateToolPreviewVisibility;
- (void)_willDockPaletteToEdge:(unint64_t)a3 prepareForExpansion:(BOOL)a4 isPaletteChangingOrientation:(BOOL)a5;
- (void)didChangePalettePositionFromPosition:(int64_t)a3 toPosition:(int64_t)a4;
- (void)didChangePaletteScaleFactor;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)hostView:(id)a3 didDockPaletteToPosition:(int64_t)a4;
- (void)hostView:(id)a3 willDockPaletteToPosition:(int64_t)a4 prepareForExpansion:(BOOL)a5;
- (void)layoutSubviews;
- (void)paletteHostingWindowSceneDidChangeBounds:(id)a3;
- (void)saveOptionsIfNecessary;
- (void)setAdjustedWindowSceneBounds:(CGRect)a3;
- (void)setAutoHideEnabled:(BOOL)a3;
- (void)setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)a3;
- (void)setIgnoresSafeAreaInsetsInCompactSize:(BOOL)a3;
- (void)setPaletteContentAlpha:(double)a3;
- (void)setPalettePopoverLayoutSceneMargins:(UIEdgeInsets)a3;
- (void)setPalettePosition:(int64_t)a3;
- (void)setToolPreviewMinimized:(BOOL)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePalettePopover:(id)a3;
- (void)willStartAppearanceAnimation:(BOOL)a3;
@end

@implementation PKPaletteView

+ (id)makeBackgroundView
{
  v2 = objc_alloc_init(PKPaletteBackgroundViewFactory);
  if (_UISolariumEnabled())
  {
    v3 = !PKIsVisionDevice();
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PKPaletteBackgroundViewFactory *)v2 makeBackgroundViewWithName:0 backgroundColor:v3 shouldUseGlassBackground:?];

  return v4;
}

+ (id)_makeScaleFactorPolicy
{
  v2 = objc_alloc_init(PKPaletteScaleFactorPolicy);

  return v2;
}

- (PKPaletteView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = PKPaletteView;
  v3 = [(PKPaletteView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [v3 setBackgroundColor:v4];

    v5 = [v3 layer];
    [v5 setInheritsTiming:0];

    v6 = [v3 traitCollection];
    v7 = [v6 layoutDirection];
    v8 = 4;
    if (v7 == 1)
    {
      v8 = 8;
    }

    *(v3 + 68) = v8;

    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 bounds];
    *(v3 + 89) = v10;
    *(v3 + 90) = v11;
    *(v3 + 91) = v12;
    *(v3 + 92) = v13;

    v14 = +[PKPaletteView _makeScaleFactorPolicy];
    v15 = *(v3 + 60);
    *(v3 + 60) = v14;

    [*(v3 + 60) scaleFactorForWindowBounds:v3 paletteView:{*(v3 + 89), *(v3 + 90), *(v3 + 91), *(v3 + 92)}];
    *(v3 + 56) = v16;
    *(v3 + 55) = 0;
    v3[410] = 1;
    *(v3 + 61) = 0;
    *(v3 + 62) = 0;
    v3[412] = 0;
    *(v3 + 59) = 0;
    v3[413] = 0;
    v17 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v3 + 744) = *MEMORY[0x1E69DC5C0];
    *(v3 + 760) = v17;
    v3[414] = !PKIsVisionDevice();
    [v3 _installClippingViewInView:v3];
    [v3 _installBackgroundViewInView:*(v3 + 69)];
    [v3 _installContainerViewInView:*(v3 + 69)];
    v18 = [v3 layer];
    [v18 setShadowPathIsBounds:1];

    [v3 _loadOptions];
    _PKPaletteViewUpdateUI(v3, 0);
  }

  return v3;
}

- (void)setIgnoresSafeAreaInsetsInCompactSize:(BOOL)a3
{
  if (self->_ignoresSafeAreaInsetsInCompactSize != a3)
  {
    self->_ignoresSafeAreaInsetsInCompactSize = a3;
    v5 = [(PKPaletteView *)self internalDelegate];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsetsInCompactSize.top, v3), vceqq_f64(*&self->_edgeInsetsInCompactSize.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsetsInCompactSize = a3;
    v6 = [(PKPaletteView *)self internalDelegate];
    [v6 paletteViewStateDidChange:self];
  }
}

- (void)_installClippingViewInView:(id)a3
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD250];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  clippingView = self->_clippingView;
  self->_clippingView = v6;

  [(UIView *)self->_clippingView setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(PKPaletteView *)self _wantsGlassBackground])
  {
    [(UIView *)self->_clippingView pk_setGlassBackground];
  }

  [v5 addSubview:self->_clippingView];
  v18 = MEMORY[0x1E696ACD8];
  v21 = [(UIView *)self->_clippingView topAnchor];
  v20 = [v5 topAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v8 = [(UIView *)self->_clippingView bottomAnchor];
  v9 = [v5 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v22[1] = v10;
  v11 = [(UIView *)self->_clippingView leftAnchor];
  v12 = [v5 leftAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v22[2] = v13;
  v14 = [(UIView *)self->_clippingView rightAnchor];
  v15 = [v5 rightAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v17];
}

- (void)_installBackgroundViewInView:(id)a3
{
  v6 = a3;
  v4 = [objc_opt_class() makeBackgroundView];
  if (v4)
  {
    [v6 addSubview:v4];
  }

  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = v4;
}

- (void)_installContainerViewInView:(id)a3
{
  v49[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(PKPaletteContainerView);
  containerView = self->_containerView;
  self->_containerView = v5;

  v7 = [(PKPaletteView *)self containerView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(PKPaletteView *)self containerView];
  [v4 addSubview:v8];

  [(PKPaletteView *)self paletteSizeForEdge:4];
  v10 = v9;
  v12 = v11;
  v13 = [(PKPaletteView *)self containerView];
  v14 = [v13 widthAnchor];
  v15 = [v14 constraintEqualToConstant:v10];
  [(PKPaletteView *)self setPaletteContainerWidthConstraint:v15];

  v16 = [(PKPaletteView *)self containerView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:v12];
  [(PKPaletteView *)self setPaletteContainerHeightConstraint:v18];

  v19 = [(PKPaletteView *)self containerView];
  v20 = [v19 centerXAnchor];
  v21 = [v4 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [(PKPaletteView *)self setPaletteContainerCenterXConstraint:v22];

  v23 = [(PKPaletteView *)self containerView];
  v24 = [v23 centerYAnchor];
  v25 = [v4 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [(PKPaletteView *)self setPaletteContainerCenterYConstraint:v26];

  v27 = [(PKPaletteView *)self containerView];
  v28 = [v27 topAnchor];
  v29 = [v4 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [(PKPaletteView *)self setPaletteContainerCompactTopConstraint:v30];

  v31 = [(PKPaletteView *)self containerView];
  v32 = [v31 bottomAnchor];
  v33 = [v4 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [(PKPaletteView *)self setPaletteContainerCompactBottomConstraint:v34];

  v35 = [(PKPaletteView *)self containerView];
  v36 = [v35 leftAnchor];
  v37 = [v4 leftAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  [(PKPaletteView *)self setPaletteContainerCompactLeftConstraint:v38];

  v39 = [(PKPaletteView *)self containerView];
  v40 = [v39 rightAnchor];
  v41 = [v4 rightAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  [(PKPaletteView *)self setPaletteContainerCompactRightConstraint:v42];

  v43 = MEMORY[0x1E696ACD8];
  v44 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  v49[0] = v44;
  v45 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  v49[1] = v45;
  v46 = [(PKPaletteView *)self paletteContainerWidthConstraint];
  v49[2] = v46;
  v47 = [(PKPaletteView *)self paletteContainerHeightConstraint];
  v49[3] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v43 activateConstraints:v48];
}

- (void)_installToolPreviewInView:(id)a3
{
  v36[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(PKPaletteToolPreview);
  toolPreview = self->_toolPreview;
  self->_toolPreview = v5;

  v7 = [(PKPaletteView *)self toolPreview];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(PKPaletteView *)self toolPreview];
  [v4 addSubview:v8];

  v9 = [(PKPaletteView *)self toolPreview];
  v10 = [v9 widthAnchor];
  v11 = [v4 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [(PKPaletteView *)self setToolPreviewWidthConstraint:v12];

  v13 = [(PKPaletteView *)self toolPreview];
  v14 = [v13 heightAnchor];
  v15 = [v4 heightAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [(PKPaletteView *)self setToolPreviewHeightConstraint:v16];

  v17 = MEMORY[0x1E696ACD8];
  v18 = [(PKPaletteView *)self toolPreviewWidthConstraint];
  v36[0] = v18;
  v19 = [(PKPaletteView *)self toolPreviewHeightConstraint];
  v36[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v17 activateConstraints:v20];

  v21 = [(PKPaletteView *)self toolPreview];
  v22 = [v21 centerXAnchor];
  v23 = [(PKPaletteView *)self containerView];
  v24 = [v23 centerXAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  [(PKPaletteView *)self setToolPreviewCenterXConstraint:v25];

  v26 = [(PKPaletteView *)self toolPreview];
  v27 = [v26 centerYAnchor];
  v28 = [(PKPaletteView *)self containerView];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [(PKPaletteView *)self setToolPreviewCenterYConstraint:v30];

  v31 = MEMORY[0x1E696ACD8];
  v32 = [(PKPaletteView *)self toolPreviewCenterXConstraint];
  v35[0] = v32;
  v33 = [(PKPaletteView *)self toolPreviewCenterYConstraint];
  v35[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [v31 activateConstraints:v34];

  [(PKPaletteView *)self _updateToolPreviewScalingAnimated:0];
}

- (void)_uninstallToolPreview
{
  v3 = [(PKPaletteView *)self toolPreview];
  [v3 removeFromSuperview];

  toolPreview = self->_toolPreview;
  self->_toolPreview = 0;
}

- (BOOL)isToolPreviewInstalled
{
  v2 = [(PKPaletteView *)self toolPreview];
  v3 = [v2 superview];
  v4 = v3 != 0;

  return v4;
}

- (void)setAutoHideEnabled:(BOOL)a3
{
  if (self->_autoHideEnabled != a3)
  {
    self->_autoHideEnabled = a3;
    [(PKPaletteView *)self _didChangeAutoHideEnabled];
  }
}

- (void)_didChangeAutoHideEnabled
{
  v3 = [(PKPaletteView *)self internalDelegate];
  [v3 paletteViewStateDidChangeAutoHide:self];

  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v4 recordAutoMinimizeEnabledDidChange:[(PKPaletteView *)self paletteViewType] type:?];
}

- (BOOL)isVisible
{
  v2 = [(PKPaletteView *)self paletteViewHosting];
  v3 = [v2 isPaletteVisible];

  return v3;
}

- (BOOL)_wantsGlassBackground
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    LOBYTE(v2) = !PKIsVisionDevice();
  }

  return v2;
}

- (double)paletteContentAlpha
{
  v2 = [(PKPaletteView *)self containerView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setPaletteContentAlpha:(double)a3
{
  v5 = [(PKPaletteView *)self containerView];
  [v5 setAlpha:a3];

  [(PKPaletteView *)self _updateToolPreviewVisibility];
}

- (void)_updateToolPreviewVisibility
{
  v3 = [(PKPaletteView *)self containerView];
  [v3 alpha];
  v5 = v4;

  if ([(PKPaletteView *)self _isPaletteContentViewHidden])
  {
    v6 = v5 * -1.6 + 1.0;
  }

  else
  {
    v7 = [(PKPaletteView *)self toolPreviewMatchesExpandedTool];
    v6 = v5 * -2.0 + 1.0;
    if (v7)
    {
      v6 = v5 * -5.0 + 4.5;
    }
  }

  v8 = fmin(v6, 1.0);
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(PKPaletteView *)self toolPreview];
  [v10 setAlpha:v9];

  v11 = [(PKPaletteView *)self toolPreview];
  [v11 setHidden:v5 >= 1.0];
}

- (void)_setCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteView;
  [(PKPaletteView *)&v6 _setCornerRadius:?];
  v5 = [(PKPaletteView *)self clippingView];
  [v5 _setCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v6.receiver = self;
  v6.super_class = PKPaletteView;
  [(PKPaletteView *)&v6 _setContinuousCornerRadius:?];
  v5 = [(PKPaletteView *)self clippingView];
  [v5 _setContinuousCornerRadius:a3];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKPaletteView;
  [(PKPaletteView *)&v24 layoutSubviews];
  v3 = [(PKPaletteView *)self clippingView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v26 = CGRectInset(v25, -6.0, -6.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v16 = [(PKPaletteView *)self backgroundMaterialView];
  [v16 setFrame:{x, y, width, height}];

  [(PKPaletteView *)self _setCornerRadius:0.0];
  [(PKPaletteView *)self _setContinuousCornerRadius:0.0];
  [(PKPaletteView *)self bounds];
  MidX = CGRectGetMidX(v27);
  [(PKPaletteView *)self bounds];
  MidY = CGRectGetMidY(v28);
  if (MidX >= MidY)
  {
    MidX = MidY;
  }

  if ([(UIView *)self _pk_useCompactLayout])
  {
    if (!_UISolariumEnabled())
    {
      return;
    }

    v19 = [(PKPaletteView *)self traitCollection];
    [v19 displayCornerRadius];
    MidX = v20 * 0.727272727;
  }

  else
  {
    [(PKPaletteView *)self bounds];
    v22 = v21;
    [(PKPaletteView *)self bounds];
    if (v22 == v23)
    {
      [(PKPaletteView *)self _setCornerRadius:MidX];
      return;
    }
  }

  [(PKPaletteView *)self _setContinuousCornerRadius:MidX];
}

- (void)_updateContainerSizeConstraints
{
  v3 = [(PKPaletteView *)self palettePosition]- 1;
  if (v3 <= 3)
  {
    v4 = qword_1C801C790[v3];

    [(PKPaletteView *)self _updateContainerSizeConstraintsForEdge:v4];
  }
}

- (void)_updateContainerSizeConstraintsForEdge:(unint64_t)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  [(PKPaletteView *)self paletteSizeForEdge:?];
  v6 = v5;
  v8 = v7;
  v9 = [(PKPaletteView *)self paletteContainerWidthConstraint];
  [v9 setConstant:v6];

  v10 = [(PKPaletteView *)self paletteContainerHeightConstraint];
  [v10 setConstant:v8];

  if ([(PKPaletteView *)self isToolPreviewInstalled])
  {
    v11 = MEMORY[0x1E696ACD8];
    v12 = [(PKPaletteView *)self toolPreviewWidthConstraint];
    v33[0] = v12;
    v13 = [(PKPaletteView *)self toolPreviewHeightConstraint];
    v33[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    [v11 deactivateConstraints:v14];

    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 != 8)
        {
LABEL_11:
          v28 = MEMORY[0x1E696ACD8];
          v29 = [(PKPaletteView *)self toolPreviewWidthConstraint];
          v32[0] = v29;
          v30 = [(PKPaletteView *)self toolPreviewHeightConstraint];
          v32[1] = v30;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
          [v28 activateConstraints:v31];

          return;
        }

        goto LABEL_8;
      }
    }

    else if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      v15 = [(PKPaletteView *)self toolPreview];
      v16 = [v15 widthAnchor];
      v17 = [(PKPaletteView *)self widthAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [(PKPaletteView *)self setToolPreviewWidthConstraint:v18];

      v19 = [(PKPaletteView *)self toolPreview];
      v20 = [v19 heightAnchor];
      v21 = [(PKPaletteView *)self widthAnchor];
LABEL_10:
      v26 = v21;
      v27 = [v20 constraintEqualToAnchor:v21];
      [(PKPaletteView *)self setToolPreviewHeightConstraint:v27];

      goto LABEL_11;
    }

    v22 = [(PKPaletteView *)self toolPreview];
    v23 = [v22 widthAnchor];
    v24 = [(PKPaletteView *)self heightAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [(PKPaletteView *)self setToolPreviewWidthConstraint:v25];

    v19 = [(PKPaletteView *)self toolPreview];
    v20 = [v19 heightAnchor];
    v21 = [(PKPaletteView *)self heightAnchor];
    goto LABEL_10;
  }
}

- (void)hostView:(id)a3 willDockPaletteToPosition:(int64_t)a4 prepareForExpansion:(BOOL)a5
{
  v5 = a5;
  [(PKPaletteView *)self _updateContainerViewConstraints];
  if (a4 > 4)
  {
    if (a4 > 6)
    {
      if (a4 == 7)
      {
        v10 = 8;
      }

      else
      {
        if (a4 != 8)
        {
          goto LABEL_26;
        }

        v10 = 4;
      }
    }

    else if (a4 == 5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [(PKPaletteView *)self _willDockPaletteToCorner:v10];
  }

  else
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v8 = 0;
        v9 = 4;
      }

      else
      {
        v8 = 1;
        v9 = 2;
      }

LABEL_17:
      v11 = [(PKPaletteView *)self lastPaletteEdgePositionWhileDragging];
      v13 = v11 == 2 || v11 == 8;
      [(PKPaletteView *)self _willDockPaletteToEdge:v9 prepareForExpansion:v5 isPaletteChangingOrientation:v8 ^ v13];
      goto LABEL_26;
    }

    if (a4 == 1)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v8 = 1;
      v9 = 8;
      goto LABEL_17;
    }
  }

LABEL_26:

  [(PKPaletteView *)self setPalettePosition:a4];
}

- (void)_willDockPaletteToEdge:(unint64_t)a3 prepareForExpansion:(BOOL)a4 isPaletteChangingOrientation:(BOOL)a5
{
  v5 = a4;
  self->_lastPaletteEdgePositionWhileDragging = a3;
  v8 = [(PKPaletteView *)self toolPreview];
  [v8 dismissPalettePopoverWithCompletion:0];

  v9 = [(PKPaletteView *)self containerView];
  [v9 setEdgeLocation:a3];

  v10 = [(PKPaletteView *)self traitCollection];
  v11 = [(PKPaletteView *)self window];
  v12 = [v11 windowScene];
  v13 = PKUseCompactSize(v10, v12);

  if (!v13)
  {
    [(PKPaletteView *)self _updateContainerSizeConstraintsForEdge:a3];
  }

  if (v5)
  {
    v14 = +[PKTextInputLanguageSelectionController sharedInstance];
    [v14 notifyLanguageDidChange];
  }
}

- (void)hostView:(id)a3 didDockPaletteToPosition:(int64_t)a4
{
  [(PKPaletteView *)self setPalettePosition:a4];
  if ((a4 - 1) <= 3)
  {
    self->_lastPaletteEdgePositionWhileDragging = qword_1C801C790[a4 - 1];
  }
}

- (void)_updateContainerViewConstraints
{
  v25[8] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E696ACD8];
  v3 = [(PKPaletteView *)self paletteContainerWidthConstraint];
  v25[0] = v3;
  v4 = [(PKPaletteView *)self paletteContainerHeightConstraint];
  v25[1] = v4;
  v5 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  v25[2] = v5;
  v6 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  v25[3] = v6;
  v7 = [(PKPaletteView *)self paletteContainerCompactTopConstraint];
  v25[4] = v7;
  v8 = [(PKPaletteView *)self paletteContainerCompactBottomConstraint];
  v25[5] = v8;
  v9 = [(PKPaletteView *)self paletteContainerCompactLeftConstraint];
  v25[6] = v9;
  v10 = [(PKPaletteView *)self paletteContainerCompactRightConstraint];
  v25[7] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:8];
  [v22 deactivateConstraints:v11];

  v12 = [(PKPaletteView *)self traitCollection];
  v13 = [(PKPaletteView *)self window];
  v14 = [v13 windowScene];
  LODWORD(v6) = PKUseCompactSize(v12, v14);

  v15 = MEMORY[0x1E696ACD8];
  if (v6)
  {
    v16 = [(PKPaletteView *)self paletteContainerCompactTopConstraint];
    v24[0] = v16;
    v17 = [(PKPaletteView *)self paletteContainerCompactBottomConstraint];
    v24[1] = v17;
    v18 = [(PKPaletteView *)self paletteContainerCompactLeftConstraint];
    v24[2] = v18;
    v19 = [(PKPaletteView *)self paletteContainerCompactRightConstraint];
    v24[3] = v19;
    v20 = v24;
  }

  else
  {
    v16 = [(PKPaletteView *)self paletteContainerWidthConstraint];
    v23[0] = v16;
    v17 = [(PKPaletteView *)self paletteContainerHeightConstraint];
    v23[1] = v17;
    v18 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
    v23[2] = v18;
    v19 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
    v23[3] = v19;
    v20 = v23;
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v21];
}

- (void)paletteHostingWindowSceneDidChangeBounds:(id)a3
{
  [a3 paletteHostingWindowSceneBounds];

  [(PKPaletteView *)self setAdjustedWindowSceneBounds:?];
}

- (void)setAdjustedWindowSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_adjustedWindowSceneBounds = &self->_adjustedWindowSceneBounds;
  if (!CGRectEqualToRect(self->_adjustedWindowSceneBounds, a3))
  {
    p_adjustedWindowSceneBounds->origin.x = x;
    p_adjustedWindowSceneBounds->origin.y = y;
    p_adjustedWindowSceneBounds->size.width = width;
    p_adjustedWindowSceneBounds->size.height = height;
    _PKPaletteViewUpdateUI(self, 1);

    [(PKPaletteView *)self dismissPalettePopoverWithCompletion:0];
  }
}

- (void)_setPaletteScaleFactor:(double)a3 notifyDidChange:(BOOL)a4
{
  paletteScaleFactor = self->_paletteScaleFactor;
  if (paletteScaleFactor != a3 && vabdd_f64(paletteScaleFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_paletteScaleFactor = a3;
    if (a4)
    {
      [(PKPaletteView *)self didChangePaletteScaleFactor];
    }
  }
}

- (void)didChangePaletteScaleFactor
{
  [(PKPaletteView *)self _updateContainerSizeConstraints];
  v3 = [(PKPaletteView *)self internalDelegate];
  [v3 paletteViewStateDidChangeScaleFactor:self];

  [(PKPaletteView *)self _updateToolPreviewScalingAnimated:0];
  v4 = [(PKPaletteView *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(PKPaletteView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(PKPaletteView *)self delegate];
      [v8 paletteViewDidChangeScaleFactor:self];
    }
  }
}

- (void)setPalettePosition:(int64_t)a3
{
  if (self->_palettePosition != a3)
  {
    v5 = [(PKPaletteView *)self palettePosition]- 1;
    if (v5 <= 3)
    {
      [(PKPaletteView *)self setLastEdgeLocation:qword_1C801C790[v5]];
    }

    palettePosition = self->_palettePosition;
    self->_palettePosition = a3;
    [(PKPaletteView *)self didChangePalettePositionFromPosition:palettePosition toPosition:a3];
    v7 = [(PKPaletteView *)self _nextAutoHideCorner];
    if (v7 != -1)
    {
      self->_autoHideCorner = v7;
    }

    [(PKPaletteView *)self setNeedsUpdateConstraints];
  }
}

- (void)didChangePalettePositionFromPosition:(int64_t)a3 toPosition:(int64_t)a4
{
  v7 = [(PKPaletteView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PKPaletteView *)self delegate];
    [v9 paletteViewDidChangePosition:self fromPosition:a3 toPosition:a4];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v7 = a3;
  if ([(PKPaletteView *)self isPalettePresentingPopover]&& ([(PKPaletteView *)self toolPreview], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(PKPaletteView *)self toolPreview];
    [v5 dismissPalettePopoverWithCompletion:v7];
  }

  else
  {
    v6 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    (*(v7 + 2))(v7);
  }

  v6 = v7;
LABEL_7:
}

- (unint64_t)_nextAutoHideCorner
{
  v3 = [(PKPaletteView *)self palettePosition];
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        return 8;
      }

      if (v3 == 8)
      {
        return 4;
      }

      return -1;
    }

    if (v3 == 5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = [(PKPaletteView *)self autoHideCorner];
      if (v7 == 8 || v7 == 2)
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }

    else if ([(PKPaletteView *)self autoHideCorner]- 1 < 2)
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if ([(PKPaletteView *)self autoHideCorner]- 1 >= 2)
        {
          return 8;
        }

        else
        {
          return 2;
        }
      }

      return -1;
    }

    v5 = [(PKPaletteView *)self autoHideCorner];
    if (v5 == 8 || v5 == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)isPalettePresentingPopover
{
  v2 = [(PKPaletteView *)self palettePopoverPresentingController];
  v3 = [v2 presentedViewController];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  v6 = [v4 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.PaperKit"];

  if (v3 && (v4 == v5) | v7 & 1)
  {
    v8 = 1;
  }

  else
  {
    v9 = [v3 popoverPresentationController];
    v10 = [v9 delegate];

    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

    v13 = [v11 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.PaperKit"];

    v8 = (v11 != 0) & ((v11 == v12) | v14);
  }

  return v8;
}

- (BOOL)shouldPalettePresentPopover
{
  v2 = [(PKPaletteView *)self paletteViewHosting];
  v3 = [v2 isPaletteDragging];

  return v3 ^ 1;
}

- (id)palettePopoverPassthroughViews
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteView *)self paletteViewHosting];
  if (v3)
  {
    v4 = [(PKPaletteView *)self paletteViewHosting];
    v5 = [v4 hostingView];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)palettePopoverPermittedArrowDirections
{
  v3 = [(PKPaletteView *)self _paletteViewHoverView];
  if ([(PKPaletteView *)self wantsCustomPalettePopoverPresentationSource]&& v3)
  {
    v4 = 0;
  }

  else if (-[PKPaletteView wantsCustomPalettePopoverPresentationSource](self, "wantsCustomPalettePopoverPresentationSource") && (([MEMORY[0x1E696AAE8] mainBundle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bundleIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"com.apple.mobilenotes"), v6, v5, (v7 & 1) != 0) || (objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "bundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.freeform"), v9, v8, v10)))
  {
    if ([(UIView *)self _pk_useCompactLayout])
    {
      v4 = 15;
    }

    else
    {
      v4 = 1;
    }
  }

  else if ([(UIView *)self _pk_useCompactLayout])
  {
    v4 = 2;
  }

  else
  {
    v11 = [(PKPaletteView *)self palettePosition]- 5;
    v12 = [(PKPaletteView *)self palettePosition];
    if (v11 > 3)
    {
      if ((v12 - 1) > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = qword_1C801C790[v12 - 1];
      }

      v15 = PKUIPopoverPermittedArrowDirectionsForEdge(v14);
    }

    else
    {
      if ((v12 - 5) > 3)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_1C801C770[v12 - 5];
      }

      v15 = PKUIPopoverPermittedArrowDirectionsForCorner(v13);
    }

    v4 = v15;
  }

  return v4;
}

- (void)setPalettePopoverLayoutSceneMargins:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_palettePopoverLayoutSceneMargins.top, v3), vceqq_f64(*&self->_palettePopoverLayoutSceneMargins.bottom, v4)))) & 1) == 0)
  {
    self->_palettePopoverLayoutSceneMargins = a3;
    [(PKPaletteView *)self updatePopoverUI];
  }
}

- (BOOL)_isCompactInSmallestQuickNoteWindowScene
{
  v3 = [(PKPaletteView *)self window];
  v4 = [v3 windowScene];
  v5 = PKIsSmallestQuickNoteWindowScene(v4) && [(UIView *)self _pk_useCompactLayout];

  return v5;
}

- (id)_paletteViewHoverView
{
  v3 = [(PKPaletteView *)self hoverDelegate];

  if (v3)
  {
    v4 = [(PKPaletteView *)self hoverDelegate];
    v5 = [v4 paletteViewHoverView:self];
    goto LABEL_3;
  }

  if ([(PKPaletteView *)self _shouldTrackHoverLocationForPencilTapActions])
  {
    v8 = [(PKPaletteView *)self window];
    v9 = [v8 windowScene];
    v4 = [PKPencilObserverInteraction interactionForScene:v9];

    if (!v4 || (v10 = v4[8]) == 0 || *(v10 + 56) != 1)
    {
      v6 = 0;
      goto LABEL_4;
    }

    v5 = [v4 view];
LABEL_3:
    v6 = v5;
LABEL_4:

    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (CGPoint)_paletteViewHoverLocation
{
  v3 = [(PKPaletteView *)self hoverDelegate];

  if (v3)
  {
    v4 = [(PKPaletteView *)self hoverDelegate];
    [v4 paletteViewHoverLocation:self];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(PKPaletteView *)self window];
    v10 = [v9 windowScene];
    v4 = [PKPencilObserverInteraction interactionForScene:v10];

    if (v4 && (v11 = *(v4 + 8)) != 0 && *(v11 + 56) == 1)
    {
      v6 = v4[15];
      v8 = v4[16];
    }

    else
    {
      v6 = *MEMORY[0x1E695EFF8];
      v8 = *(MEMORY[0x1E695EFF8] + 8);
    }
  }

  v12 = v6;
  v13 = v8;
  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)wantsCustomPalettePopoverPresentationSource
{
  if ([(PKPaletteView *)self _isCompactInSmallestQuickNoteWindowScene])
  {
    v3 = [(PKPaletteView *)self paletteViewHosting];
    v4 = [v3 isPaletteVisible] ^ 1;
  }

  else
  {
    v5 = [(PKPaletteView *)self _paletteViewHoverView];

    if (v5)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    v3 = [(PKPaletteView *)self paletteViewHosting];
    if ([v3 isPaletteVisible])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AAE8] mainBundle];
      v8 = [v7 bundleIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.mobilenotes"];

      if (v9)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v10 = [MEMORY[0x1E696AAE8] mainBundle];
        v11 = [v10 bundleIdentifier];
        LOBYTE(v4) = [v11 isEqualToString:@"com.apple.freeform"];
      }
    }
  }

  return v4;
}

- (CGRect)palettePopoverSourceRectToPresentViewController:(id)a3
{
  v4 = a3;
  if (!v4 || ![(PKPaletteView *)self _isCompactInSmallestQuickNoteWindowScene])
  {
    goto LABEL_7;
  }

  v5 = [(PKPaletteView *)self paletteViewHosting];
  if ([v5 isPaletteVisible])
  {

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || ([(PKPaletteView *)self _palettePopoverSourceRect], x = v38.origin.x, y = v38.origin.y, width = v38.size.width, height = v38.size.height, CGRectIsNull(v38)))
  {
LABEL_7:
    v11 = [(PKPaletteView *)self _paletteViewHoverView];
    if (v11)
    {
      [(PKPaletteView *)self _paletteViewHoverLocation];
      v13 = v12;
      v15 = v14;
      v16 = [(PKPaletteView *)self paletteViewHosting];
      v17 = [v16 hostingView];

      x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, v17, v13, v15, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      y = v18;

      height = 0.0;
LABEL_9:
      width = 0.0;
LABEL_37:

      goto LABEL_38;
    }

    [(PKPaletteView *)self _palettePopoverSourceRect];
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    if (!CGRectIsNull(v39))
    {
      goto LABEL_37;
    }

    v19 = [(PKPaletteView *)self palettePosition];
    v20 = [(PKPaletteView *)self paletteViewHosting];
    v21 = [v20 hostingView];
    v22 = [v21 safeAreaLayoutGuide];
    [v22 layoutFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    height = 0.0;
    if (v19 > 4)
    {
      if (v19 <= 6)
      {
        if (v19 != 5)
        {
          width = 0.0;
          v42.origin.x = v24;
          v42.origin.y = v26;
          v42.size.width = v28;
          v42.size.height = v30;
          MaxX = CGRectGetMaxX(v42);
          goto LABEL_28;
        }
      }

      else
      {
        if (v19 == 7)
        {
          v45.origin.x = v24;
          v45.origin.y = v26;
          v45.size.width = v28;
          v45.size.height = v30;
          MidX = CGRectGetMaxX(v45);
          goto LABEL_33;
        }

        if (v19 == 8)
        {
          v48.origin.x = v24;
          v48.origin.y = v26;
          v48.size.width = v28;
          v48.size.height = v30;
          y = CGRectGetMaxY(v48);
          width = 0.0;
LABEL_36:
          x = 0.0;
          goto LABEL_37;
        }

        if (v19 != 9)
        {
          width = 0.0;
          goto LABEL_37;
        }
      }
    }

    else
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v43.origin.x = v24;
          v43.origin.y = v26;
          v43.size.width = v28;
          v43.size.height = v30;
          x = CGRectGetMaxX(v43);
          v44.origin.x = v24;
          v44.origin.y = v26;
          v44.size.width = v28;
          v44.size.height = v30;
          MidY = CGRectGetMidY(v44);
LABEL_34:
          y = MidY;
          goto LABEL_9;
        }

        if (v19 != 3)
        {
          width = 0.0;
          v40.origin.x = v24;
          v40.origin.y = v26;
          v40.size.width = v28;
          v40.size.height = v30;
          y = CGRectGetMidY(v40);
          goto LABEL_36;
        }

        v46.origin.x = v24;
        v46.origin.y = v26;
        v46.size.width = v28;
        v46.size.height = v30;
        MidX = CGRectGetMidX(v46);
LABEL_33:
        x = MidX;
        v47.origin.x = v24;
        v47.origin.y = v26;
        v47.size.width = v28;
        v47.size.height = v30;
        MidY = CGRectGetMaxY(v47);
        goto LABEL_34;
      }

      if (v19)
      {
        width = 0.0;
        if (v19 != 1)
        {
          goto LABEL_37;
        }

        v41.origin.x = v24;
        v41.origin.y = v26;
        v41.size.width = v28;
        v41.size.height = v30;
        MaxX = CGRectGetMidX(v41);
LABEL_28:
        x = MaxX;
        y = 0.0;
        goto LABEL_37;
      }
    }

    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    goto LABEL_9;
  }

LABEL_38:

  v34 = x;
  v35 = y;
  v36 = width;
  v37 = height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_palettePopoverSourceRect
{
  v3 = [(PKPaletteView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  v4 = [(PKPaletteView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v18 = *MEMORY[0x1E695F050];
    v20 = *(MEMORY[0x1E695F050] + 8);
    v22 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_6;
  }

  v6 = [(PKPaletteView *)self delegate];
  v7 = [v6 paletteViewColorPickerPopoverPresentationSourceView:self];

  v8 = [(PKPaletteView *)self delegate];
  [v8 paletteViewColorPickerPopoverPresentationSourceRect:self];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(PKPaletteView *)self palettePopoverSourceView];
  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v7, v17, v10, v12, v14, v16);
  v20 = v19;
  v22 = v21;
  v24 = v23;

LABEL_6:
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)palettePopoverSourceView
{
  v2 = [(PKPaletteView *)self paletteViewHosting];
  v3 = [v2 hostingView];

  return v3;
}

- (void)updatePalettePopover:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v27 = v4;
    [(PKPaletteView *)self palettePopoverLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v27 popoverPresentationController];
    [v13 setPopoverLayoutMargins:{v6, v8, v10, v12}];

    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];
    v16 = [v15 isEqualToString:@"com.apple.ScreenshotServicesService"];

    if ((v16 & 1) != 0 || _UIApplicationIsExtension())
    {
      v17 = [(PKPaletteView *)self palettePopoverSourceView];
      v18 = [v17 traitCollection];
      v19 = [v18 userInterfaceStyle];

      v20 = [v27 popoverPresentationController];
      v21 = [v20 presentedView];
      [v21 setOverrideUserInterfaceStyle:v19];

      [v27 setOverrideUserInterfaceStyle:v19];
    }

    v22 = [v27 traitCollection];
    v23 = [v22 userInterfaceStyle];
    v24 = [(PKPaletteView *)self traitCollection];
    v25 = [v24 userInterfaceStyle];

    v4 = v27;
    if (v23 != v25)
    {
      v26 = [(PKPaletteView *)self traitCollection];
      [v27 setOverrideUserInterfaceStyle:{objc_msgSend(v26, "userInterfaceStyle")}];

      v4 = v27;
    }
  }
}

- (void)setToolPreviewMinimized:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_toolPreviewMinimized != a3)
  {
    self->_toolPreviewMinimized = a3;
    [(PKPaletteView *)self _updateToolPreviewScalingAnimated:a4];
  }
}

- (void)_updateToolPreviewScalingAnimated:(BOOL)a3
{
  v3 = a3;
  [(PKPaletteView *)self paletteScaleFactor];
  v6 = v5;
  if ([(PKPaletteView *)self isToolPreviewMinimized])
  {
    v6 = v6 * 0.8;
  }

  v11 = [(PKPaletteView *)self toolPreview];
  [v11 scalingFactor];
  if (v6 != v7)
  {
    v8 = fabs(v7 * 0.000000999999997);
    v9 = vabdd_f64(v6, v7);

    if (v9 < v8)
    {
      return;
    }

    v10 = [(PKPaletteView *)self toolPreview];
    v11 = v10;
    if (v3)
    {
      [v10 layoutIfNeeded];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__PKPaletteView__updateToolPreviewScalingAnimated___block_invoke;
      v12[3] = &unk_1E82D7170;
      v12[4] = self;
      *&v12[5] = v6;
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v12 tracking:0 dampingRatioSmoothing:0.845 responseSmoothing:0.531 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
      return;
    }

    [v10 setScalingFactor:v6];
  }
}

void __51__PKPaletteView__updateToolPreviewScalingAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) toolPreview];
  [v3 setScalingFactor:v2];

  v4 = [*(a1 + 32) toolPreview];
  [v4 layoutIfNeeded];
}

- (void)willStartAppearanceAnimation:(BOOL)a3
{
  if (a3)
  {
    v3 = +[PKTextInputLanguageSelectionController sharedInstance];
    [v3 notifyLanguageDidChange];
  }
}

- (CGSize)minimizedPaletteSize
{
  [(PKPaletteView *)self paletteScaleFactor];
  v4 = v3 * 80.0;
  [(PKPaletteView *)self paletteScaleFactor];
  v6 = v5 * 80.0;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)paletteSizeForEdge:(unint64_t)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaletteView;
  [(PKPaletteView *)&v13 traitCollectionDidChange:v4];
  v5 = [v4 horizontalSizeClass];
  v6 = [(PKPaletteView *)self traitCollection];
  if (v5 != [v6 horizontalSizeClass])
  {

    goto LABEL_5;
  }

  v7 = [v4 verticalSizeClass];
  v8 = [(PKPaletteView *)self traitCollection];
  v9 = [v8 verticalSizeClass];

  if (v7 != v9)
  {
LABEL_5:
    [(PKPaletteView *)self _updateContainerViewConstraints];
  }

  _PKPaletteViewUpdateUI(self, 1);
  v10 = [(PKPaletteView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PKPaletteView *)self delegate];
    [v12 paletteView:self didChangeTraitCollection:v4];
  }
}

- (unint64_t)edgeLocationToDockFromCorner:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1E82D7BF8[a3 - 1];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaletteView lastEdgeLocation](self, "lastEdgeLocation")}];
  v7 = [v5 indexOfObject:v6];

  result = [(PKPaletteView *)self lastEdgeLocation];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = result == 8 || result == 2;
    v10 = 4;
    if (v9)
    {
      v10 = 2;
    }

    v11 = result == 8 || result == 2;
    v12 = 4;
    if (v11)
    {
      v12 = 8;
    }

    if (a3 != 8)
    {
      v12 = result;
    }

    if (a3 != 4)
    {
      v10 = v12;
    }

    v13 = result == 8 || result == 2;
    v14 = 1;
    if (v13)
    {
      v14 = 2;
    }

    v15 = result == 8 || result == 2;
    v16 = 8;
    if (!v15)
    {
      v16 = 1;
    }

    if (a3 != 2)
    {
      v16 = result;
    }

    if (a3 != 1)
    {
      v14 = v16;
    }

    if (a3 <= 3)
    {
      return v14;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

- (BOOL)_loadOptions
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 dictionaryForKey:@"PKPaletteDefaults"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"PKPalettePosition"];
    v6 = [v4 objectForKeyedSubscript:@"PKPaletteLastEdge"];
    v7 = [v4 objectForKeyedSubscript:@"PKPaletteAutoHideEnabled"];
    v8 = [v4 objectForKeyedSubscript:@"PKPaletteAutoHideCorner"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v5 intValue] < 1 || objc_msgSend(v5, "intValue") >= 9)
        {

          v5 = &unk_1F47C1190;
        }

        if (!v6 || [v6 unsignedIntegerValue] != 1 && objc_msgSend(v6, "unsignedIntegerValue") != 4 && objc_msgSend(v6, "unsignedIntegerValue") != 2 && objc_msgSend(v6, "unsignedIntegerValue") != 8)
        {

          v6 = &unk_1F47C11A8;
        }

        self->_palettePosition = [v5 intValue];
        self->_lastEdgeLocation = [v6 unsignedIntegerValue];
        if (v7)
        {
          self->_autoHideEnabled = [v7 BOOLValue];
        }

        if (v8)
        {
          self->_autoHideCorner = [v8 unsignedIntegerValue];
        }
      }
    }
  }

  return 1;
}

- (void)_saveOptions
{
  v4 = [(PKPaletteView *)self _stateDictionary];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 setObject:v4 forKey:@"PKPaletteDefaults"];
  objc_storeWeak(&PKLastSavedPalette, self);
}

- (void)saveOptionsIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&PKLastSavedPalette);

  if (WeakRetained != self)
  {

    [(PKPaletteView *)self _saveOptions];
  }
}

- (id)_stateDictionary
{
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPaletteView palettePosition](self, "palettePosition")}];
  [v3 setObject:v4 forKey:@"PKPalettePosition"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaletteView lastEdgeLocation](self, "lastEdgeLocation")}];
  [v3 setObject:v5 forKey:@"PKPaletteLastEdge"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaletteView autoHideCorner](self, "autoHideCorner")}];
  [v3 setObject:v6 forKey:@"PKPaletteAutoHideCorner"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaletteView isAutoHideEnabled](self, "isAutoHideEnabled")}];
  [v3 setObject:v7 forKey:@"PKPaletteAutoHideEnabled"];

  return v3;
}

- (UIViewController)palettePopoverPresentingController
{
  WeakRetained = objc_loadWeakRetained(&self->_palettePopoverPresentingController);

  return WeakRetained;
}

- (PKPaletteViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);

  return WeakRetained;
}

- (UIEdgeInsets)palettePopoverLayoutSceneMargins
{
  top = self->_palettePopoverLayoutSceneMargins.top;
  left = self->_palettePopoverLayoutSceneMargins.left;
  bottom = self->_palettePopoverLayoutSceneMargins.bottom;
  right = self->_palettePopoverLayoutSceneMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)adjustedWindowSceneBounds
{
  x = self->_adjustedWindowSceneBounds.origin.x;
  y = self->_adjustedWindowSceneBounds.origin.y;
  width = self->_adjustedWindowSceneBounds.size.width;
  height = self->_adjustedWindowSceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSDirectionalEdgeInsets)edgeInsetsInCompactSize
{
  top = self->_edgeInsetsInCompactSize.top;
  leading = self->_edgeInsetsInCompactSize.leading;
  bottom = self->_edgeInsetsInCompactSize.bottom;
  trailing = self->_edgeInsetsInCompactSize.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (PKPaletteViewHosting)paletteViewHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteViewHosting);

  return WeakRetained;
}

- (PKPaletteViewInternalDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

- (PKPaletteViewHoverDelegate)hoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hoverDelegate);

  return WeakRetained;
}

@end