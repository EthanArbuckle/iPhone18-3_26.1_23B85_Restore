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
- (CGRect)palettePopoverSourceRectToPresentViewController:(id)controller;
- (CGSize)minimizedPaletteSize;
- (CGSize)paletteSizeForEdge:(unint64_t)edge;
- (NSDirectionalEdgeInsets)edgeInsetsInCompactSize;
- (PKPaletteView)initWithFrame:(CGRect)frame;
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
- (unint64_t)edgeLocationToDockFromCorner:(unint64_t)corner;
- (unint64_t)palettePopoverPermittedArrowDirections;
- (void)_didChangeAutoHideEnabled;
- (void)_installBackgroundViewInView:(id)view;
- (void)_installClippingViewInView:(id)view;
- (void)_installContainerViewInView:(id)view;
- (void)_installToolPreviewInView:(id)view;
- (void)_saveOptions;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)_setPaletteScaleFactor:(double)factor notifyDidChange:(BOOL)change;
- (void)_uninstallToolPreview;
- (void)_updateContainerSizeConstraints;
- (void)_updateContainerSizeConstraintsForEdge:(unint64_t)edge;
- (void)_updateContainerViewConstraints;
- (void)_updateToolPreviewScalingAnimated:(BOOL)animated;
- (void)_updateToolPreviewVisibility;
- (void)_willDockPaletteToEdge:(unint64_t)edge prepareForExpansion:(BOOL)expansion isPaletteChangingOrientation:(BOOL)orientation;
- (void)didChangePalettePositionFromPosition:(int64_t)position toPosition:(int64_t)toPosition;
- (void)didChangePaletteScaleFactor;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)hostView:(id)view didDockPaletteToPosition:(int64_t)position;
- (void)hostView:(id)view willDockPaletteToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion;
- (void)layoutSubviews;
- (void)paletteHostingWindowSceneDidChangeBounds:(id)bounds;
- (void)saveOptionsIfNecessary;
- (void)setAdjustedWindowSceneBounds:(CGRect)bounds;
- (void)setAutoHideEnabled:(BOOL)enabled;
- (void)setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)size;
- (void)setIgnoresSafeAreaInsetsInCompactSize:(BOOL)size;
- (void)setPaletteContentAlpha:(double)alpha;
- (void)setPalettePopoverLayoutSceneMargins:(UIEdgeInsets)margins;
- (void)setPalettePosition:(int64_t)position;
- (void)setToolPreviewMinimized:(BOOL)minimized animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePalettePopover:(id)popover;
- (void)willStartAppearanceAnimation:(BOOL)animation;
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

- (PKPaletteView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = PKPaletteView;
  v3 = [(PKPaletteView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v3 setBackgroundColor:clearColor];

    layer = [v3 layer];
    [layer setInheritsTiming:0];

    traitCollection = [v3 traitCollection];
    layoutDirection = [traitCollection layoutDirection];
    v8 = 4;
    if (layoutDirection == 1)
    {
      v8 = 8;
    }

    *(v3 + 68) = v8;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
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
    layer2 = [v3 layer];
    [layer2 setShadowPathIsBounds:1];

    [v3 _loadOptions];
    _PKPaletteViewUpdateUI(v3, 0);
  }

  return v3;
}

- (void)setIgnoresSafeAreaInsetsInCompactSize:(BOOL)size
{
  if (self->_ignoresSafeAreaInsetsInCompactSize != size)
  {
    self->_ignoresSafeAreaInsetsInCompactSize = size;
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];
  }
}

- (void)setEdgeInsetsInCompactSize:(NSDirectionalEdgeInsets)size
{
  v3.f64[0] = size.top;
  v3.f64[1] = size.leading;
  v4.f64[0] = size.bottom;
  v4.f64[1] = size.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsetsInCompactSize.top, v3), vceqq_f64(*&self->_edgeInsetsInCompactSize.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsetsInCompactSize = size;
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];
  }
}

- (void)_installClippingViewInView:(id)view
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD250];
  viewCopy = view;
  v6 = objc_alloc_init(v4);
  clippingView = self->_clippingView;
  self->_clippingView = v6;

  [(UIView *)self->_clippingView setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(PKPaletteView *)self _wantsGlassBackground])
  {
    [(UIView *)self->_clippingView pk_setGlassBackground];
  }

  [viewCopy addSubview:self->_clippingView];
  v18 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIView *)self->_clippingView topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[0] = v19;
  bottomAnchor = [(UIView *)self->_clippingView bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[1] = v10;
  leftAnchor = [(UIView *)self->_clippingView leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v13 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v22[2] = v13;
  rightAnchor = [(UIView *)self->_clippingView rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];

  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v17];
}

- (void)_installBackgroundViewInView:(id)view
{
  viewCopy = view;
  makeBackgroundView = [objc_opt_class() makeBackgroundView];
  if (makeBackgroundView)
  {
    [viewCopy addSubview:makeBackgroundView];
  }

  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = makeBackgroundView;
}

- (void)_installContainerViewInView:(id)view
{
  v49[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = objc_alloc_init(PKPaletteContainerView);
  containerView = self->_containerView;
  self->_containerView = v5;

  containerView = [(PKPaletteView *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerView2 = [(PKPaletteView *)self containerView];
  [viewCopy addSubview:containerView2];

  [(PKPaletteView *)self paletteSizeForEdge:4];
  v10 = v9;
  v12 = v11;
  containerView3 = [(PKPaletteView *)self containerView];
  widthAnchor = [containerView3 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:v10];
  [(PKPaletteView *)self setPaletteContainerWidthConstraint:v15];

  containerView4 = [(PKPaletteView *)self containerView];
  heightAnchor = [containerView4 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:v12];
  [(PKPaletteView *)self setPaletteContainerHeightConstraint:v18];

  containerView5 = [(PKPaletteView *)self containerView];
  centerXAnchor = [containerView5 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(PKPaletteView *)self setPaletteContainerCenterXConstraint:v22];

  containerView6 = [(PKPaletteView *)self containerView];
  centerYAnchor = [containerView6 centerYAnchor];
  centerYAnchor2 = [viewCopy centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(PKPaletteView *)self setPaletteContainerCenterYConstraint:v26];

  containerView7 = [(PKPaletteView *)self containerView];
  topAnchor = [containerView7 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(PKPaletteView *)self setPaletteContainerCompactTopConstraint:v30];

  containerView8 = [(PKPaletteView *)self containerView];
  bottomAnchor = [containerView8 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(PKPaletteView *)self setPaletteContainerCompactBottomConstraint:v34];

  containerView9 = [(PKPaletteView *)self containerView];
  leftAnchor = [containerView9 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [(PKPaletteView *)self setPaletteContainerCompactLeftConstraint:v38];

  containerView10 = [(PKPaletteView *)self containerView];
  rightAnchor = [containerView10 rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];

  v42 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [(PKPaletteView *)self setPaletteContainerCompactRightConstraint:v42];

  v43 = MEMORY[0x1E696ACD8];
  paletteContainerCenterXConstraint = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  v49[0] = paletteContainerCenterXConstraint;
  paletteContainerCenterYConstraint = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  v49[1] = paletteContainerCenterYConstraint;
  paletteContainerWidthConstraint = [(PKPaletteView *)self paletteContainerWidthConstraint];
  v49[2] = paletteContainerWidthConstraint;
  paletteContainerHeightConstraint = [(PKPaletteView *)self paletteContainerHeightConstraint];
  v49[3] = paletteContainerHeightConstraint;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v43 activateConstraints:v48];
}

- (void)_installToolPreviewInView:(id)view
{
  v36[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = objc_alloc_init(PKPaletteToolPreview);
  toolPreview = self->_toolPreview;
  self->_toolPreview = v5;

  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview setTranslatesAutoresizingMaskIntoConstraints:0];

  toolPreview2 = [(PKPaletteView *)self toolPreview];
  [viewCopy addSubview:toolPreview2];

  toolPreview3 = [(PKPaletteView *)self toolPreview];
  widthAnchor = [toolPreview3 widthAnchor];
  heightAnchor = [viewCopy heightAnchor];
  v12 = [widthAnchor constraintEqualToAnchor:heightAnchor];
  [(PKPaletteView *)self setToolPreviewWidthConstraint:v12];

  toolPreview4 = [(PKPaletteView *)self toolPreview];
  heightAnchor2 = [toolPreview4 heightAnchor];
  heightAnchor3 = [viewCopy heightAnchor];

  v16 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [(PKPaletteView *)self setToolPreviewHeightConstraint:v16];

  v17 = MEMORY[0x1E696ACD8];
  toolPreviewWidthConstraint = [(PKPaletteView *)self toolPreviewWidthConstraint];
  v36[0] = toolPreviewWidthConstraint;
  toolPreviewHeightConstraint = [(PKPaletteView *)self toolPreviewHeightConstraint];
  v36[1] = toolPreviewHeightConstraint;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v17 activateConstraints:v20];

  toolPreview5 = [(PKPaletteView *)self toolPreview];
  centerXAnchor = [toolPreview5 centerXAnchor];
  containerView = [(PKPaletteView *)self containerView];
  centerXAnchor2 = [containerView centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(PKPaletteView *)self setToolPreviewCenterXConstraint:v25];

  toolPreview6 = [(PKPaletteView *)self toolPreview];
  centerYAnchor = [toolPreview6 centerYAnchor];
  containerView2 = [(PKPaletteView *)self containerView];
  centerYAnchor2 = [containerView2 centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(PKPaletteView *)self setToolPreviewCenterYConstraint:v30];

  v31 = MEMORY[0x1E696ACD8];
  toolPreviewCenterXConstraint = [(PKPaletteView *)self toolPreviewCenterXConstraint];
  v35[0] = toolPreviewCenterXConstraint;
  toolPreviewCenterYConstraint = [(PKPaletteView *)self toolPreviewCenterYConstraint];
  v35[1] = toolPreviewCenterYConstraint;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [v31 activateConstraints:v34];

  [(PKPaletteView *)self _updateToolPreviewScalingAnimated:0];
}

- (void)_uninstallToolPreview
{
  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview removeFromSuperview];

  toolPreview = self->_toolPreview;
  self->_toolPreview = 0;
}

- (BOOL)isToolPreviewInstalled
{
  toolPreview = [(PKPaletteView *)self toolPreview];
  superview = [toolPreview superview];
  v4 = superview != 0;

  return v4;
}

- (void)setAutoHideEnabled:(BOOL)enabled
{
  if (self->_autoHideEnabled != enabled)
  {
    self->_autoHideEnabled = enabled;
    [(PKPaletteView *)self _didChangeAutoHideEnabled];
  }
}

- (void)_didChangeAutoHideEnabled
{
  internalDelegate = [(PKPaletteView *)self internalDelegate];
  [internalDelegate paletteViewStateDidChangeAutoHide:self];

  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v4 recordAutoMinimizeEnabledDidChange:[(PKPaletteView *)self paletteViewType] type:?];
}

- (BOOL)isVisible
{
  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  isPaletteVisible = [paletteViewHosting isPaletteVisible];

  return isPaletteVisible;
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
  containerView = [(PKPaletteView *)self containerView];
  [containerView alpha];
  v4 = v3;

  return v4;
}

- (void)setPaletteContentAlpha:(double)alpha
{
  containerView = [(PKPaletteView *)self containerView];
  [containerView setAlpha:alpha];

  [(PKPaletteView *)self _updateToolPreviewVisibility];
}

- (void)_updateToolPreviewVisibility
{
  containerView = [(PKPaletteView *)self containerView];
  [containerView alpha];
  v5 = v4;

  if ([(PKPaletteView *)self _isPaletteContentViewHidden])
  {
    v6 = v5 * -1.6 + 1.0;
  }

  else
  {
    toolPreviewMatchesExpandedTool = [(PKPaletteView *)self toolPreviewMatchesExpandedTool];
    v6 = v5 * -2.0 + 1.0;
    if (toolPreviewMatchesExpandedTool)
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

  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview setAlpha:v9];

  toolPreview2 = [(PKPaletteView *)self toolPreview];
  [toolPreview2 setHidden:v5 >= 1.0];
}

- (void)_setCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = PKPaletteView;
  [(PKPaletteView *)&v6 _setCornerRadius:?];
  clippingView = [(PKPaletteView *)self clippingView];
  [clippingView _setCornerRadius:radius];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = PKPaletteView;
  [(PKPaletteView *)&v6 _setContinuousCornerRadius:?];
  clippingView = [(PKPaletteView *)self clippingView];
  [clippingView _setContinuousCornerRadius:radius];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKPaletteView;
  [(PKPaletteView *)&v24 layoutSubviews];
  clippingView = [(PKPaletteView *)self clippingView];
  [clippingView bounds];
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
  backgroundMaterialView = [(PKPaletteView *)self backgroundMaterialView];
  [backgroundMaterialView setFrame:{x, y, width, height}];

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

    traitCollection = [(PKPaletteView *)self traitCollection];
    [traitCollection displayCornerRadius];
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

- (void)_updateContainerSizeConstraintsForEdge:(unint64_t)edge
{
  v33[2] = *MEMORY[0x1E69E9840];
  [(PKPaletteView *)self paletteSizeForEdge:?];
  v6 = v5;
  v8 = v7;
  paletteContainerWidthConstraint = [(PKPaletteView *)self paletteContainerWidthConstraint];
  [paletteContainerWidthConstraint setConstant:v6];

  paletteContainerHeightConstraint = [(PKPaletteView *)self paletteContainerHeightConstraint];
  [paletteContainerHeightConstraint setConstant:v8];

  if ([(PKPaletteView *)self isToolPreviewInstalled])
  {
    v11 = MEMORY[0x1E696ACD8];
    toolPreviewWidthConstraint = [(PKPaletteView *)self toolPreviewWidthConstraint];
    v33[0] = toolPreviewWidthConstraint;
    toolPreviewHeightConstraint = [(PKPaletteView *)self toolPreviewHeightConstraint];
    v33[1] = toolPreviewHeightConstraint;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    [v11 deactivateConstraints:v14];

    if (edge > 3)
    {
      if (edge != 4)
      {
        if (edge != 8)
        {
LABEL_11:
          v28 = MEMORY[0x1E696ACD8];
          toolPreviewWidthConstraint2 = [(PKPaletteView *)self toolPreviewWidthConstraint];
          v32[0] = toolPreviewWidthConstraint2;
          toolPreviewHeightConstraint2 = [(PKPaletteView *)self toolPreviewHeightConstraint];
          v32[1] = toolPreviewHeightConstraint2;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
          [v28 activateConstraints:v31];

          return;
        }

        goto LABEL_8;
      }
    }

    else if (edge != 1)
    {
      if (edge != 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      toolPreview = [(PKPaletteView *)self toolPreview];
      widthAnchor = [toolPreview widthAnchor];
      widthAnchor2 = [(PKPaletteView *)self widthAnchor];
      v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [(PKPaletteView *)self setToolPreviewWidthConstraint:v18];

      toolPreview2 = [(PKPaletteView *)self toolPreview];
      heightAnchor = [toolPreview2 heightAnchor];
      widthAnchor3 = [(PKPaletteView *)self widthAnchor];
LABEL_10:
      v26 = widthAnchor3;
      v27 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
      [(PKPaletteView *)self setToolPreviewHeightConstraint:v27];

      goto LABEL_11;
    }

    toolPreview3 = [(PKPaletteView *)self toolPreview];
    widthAnchor4 = [toolPreview3 widthAnchor];
    heightAnchor2 = [(PKPaletteView *)self heightAnchor];
    v25 = [widthAnchor4 constraintEqualToAnchor:heightAnchor2];
    [(PKPaletteView *)self setToolPreviewWidthConstraint:v25];

    toolPreview2 = [(PKPaletteView *)self toolPreview];
    heightAnchor = [toolPreview2 heightAnchor];
    widthAnchor3 = [(PKPaletteView *)self heightAnchor];
    goto LABEL_10;
  }
}

- (void)hostView:(id)view willDockPaletteToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion
{
  expansionCopy = expansion;
  [(PKPaletteView *)self _updateContainerViewConstraints];
  if (position > 4)
  {
    if (position > 6)
    {
      if (position == 7)
      {
        v10 = 8;
      }

      else
      {
        if (position != 8)
        {
          goto LABEL_26;
        }

        v10 = 4;
      }
    }

    else if (position == 5)
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
    if (position > 2)
    {
      if (position == 3)
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
      lastPaletteEdgePositionWhileDragging = [(PKPaletteView *)self lastPaletteEdgePositionWhileDragging];
      v13 = lastPaletteEdgePositionWhileDragging == 2 || lastPaletteEdgePositionWhileDragging == 8;
      [(PKPaletteView *)self _willDockPaletteToEdge:v9 prepareForExpansion:expansionCopy isPaletteChangingOrientation:v8 ^ v13];
      goto LABEL_26;
    }

    if (position == 1)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_17;
    }

    if (position == 2)
    {
      v8 = 1;
      v9 = 8;
      goto LABEL_17;
    }
  }

LABEL_26:

  [(PKPaletteView *)self setPalettePosition:position];
}

- (void)_willDockPaletteToEdge:(unint64_t)edge prepareForExpansion:(BOOL)expansion isPaletteChangingOrientation:(BOOL)orientation
{
  expansionCopy = expansion;
  self->_lastPaletteEdgePositionWhileDragging = edge;
  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview dismissPalettePopoverWithCompletion:0];

  containerView = [(PKPaletteView *)self containerView];
  [containerView setEdgeLocation:edge];

  traitCollection = [(PKPaletteView *)self traitCollection];
  window = [(PKPaletteView *)self window];
  windowScene = [window windowScene];
  v13 = PKUseCompactSize(traitCollection, windowScene);

  if (!v13)
  {
    [(PKPaletteView *)self _updateContainerSizeConstraintsForEdge:edge];
  }

  if (expansionCopy)
  {
    v14 = +[PKTextInputLanguageSelectionController sharedInstance];
    [v14 notifyLanguageDidChange];
  }
}

- (void)hostView:(id)view didDockPaletteToPosition:(int64_t)position
{
  [(PKPaletteView *)self setPalettePosition:position];
  if ((position - 1) <= 3)
  {
    self->_lastPaletteEdgePositionWhileDragging = qword_1C801C790[position - 1];
  }
}

- (void)_updateContainerViewConstraints
{
  v25[8] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E696ACD8];
  paletteContainerWidthConstraint = [(PKPaletteView *)self paletteContainerWidthConstraint];
  v25[0] = paletteContainerWidthConstraint;
  paletteContainerHeightConstraint = [(PKPaletteView *)self paletteContainerHeightConstraint];
  v25[1] = paletteContainerHeightConstraint;
  paletteContainerCenterXConstraint = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  v25[2] = paletteContainerCenterXConstraint;
  paletteContainerCenterYConstraint = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  v25[3] = paletteContainerCenterYConstraint;
  paletteContainerCompactTopConstraint = [(PKPaletteView *)self paletteContainerCompactTopConstraint];
  v25[4] = paletteContainerCompactTopConstraint;
  paletteContainerCompactBottomConstraint = [(PKPaletteView *)self paletteContainerCompactBottomConstraint];
  v25[5] = paletteContainerCompactBottomConstraint;
  paletteContainerCompactLeftConstraint = [(PKPaletteView *)self paletteContainerCompactLeftConstraint];
  v25[6] = paletteContainerCompactLeftConstraint;
  paletteContainerCompactRightConstraint = [(PKPaletteView *)self paletteContainerCompactRightConstraint];
  v25[7] = paletteContainerCompactRightConstraint;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:8];
  [v22 deactivateConstraints:v11];

  traitCollection = [(PKPaletteView *)self traitCollection];
  window = [(PKPaletteView *)self window];
  windowScene = [window windowScene];
  LODWORD(paletteContainerCenterYConstraint) = PKUseCompactSize(traitCollection, windowScene);

  v15 = MEMORY[0x1E696ACD8];
  if (paletteContainerCenterYConstraint)
  {
    paletteContainerCompactTopConstraint2 = [(PKPaletteView *)self paletteContainerCompactTopConstraint];
    v24[0] = paletteContainerCompactTopConstraint2;
    paletteContainerCompactBottomConstraint2 = [(PKPaletteView *)self paletteContainerCompactBottomConstraint];
    v24[1] = paletteContainerCompactBottomConstraint2;
    paletteContainerCompactLeftConstraint2 = [(PKPaletteView *)self paletteContainerCompactLeftConstraint];
    v24[2] = paletteContainerCompactLeftConstraint2;
    paletteContainerCompactRightConstraint2 = [(PKPaletteView *)self paletteContainerCompactRightConstraint];
    v24[3] = paletteContainerCompactRightConstraint2;
    v20 = v24;
  }

  else
  {
    paletteContainerCompactTopConstraint2 = [(PKPaletteView *)self paletteContainerWidthConstraint];
    v23[0] = paletteContainerCompactTopConstraint2;
    paletteContainerCompactBottomConstraint2 = [(PKPaletteView *)self paletteContainerHeightConstraint];
    v23[1] = paletteContainerCompactBottomConstraint2;
    paletteContainerCompactLeftConstraint2 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
    v23[2] = paletteContainerCompactLeftConstraint2;
    paletteContainerCompactRightConstraint2 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
    v23[3] = paletteContainerCompactRightConstraint2;
    v20 = v23;
  }

  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [v15 activateConstraints:v21];
}

- (void)paletteHostingWindowSceneDidChangeBounds:(id)bounds
{
  [bounds paletteHostingWindowSceneBounds];

  [(PKPaletteView *)self setAdjustedWindowSceneBounds:?];
}

- (void)setAdjustedWindowSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_adjustedWindowSceneBounds = &self->_adjustedWindowSceneBounds;
  if (!CGRectEqualToRect(self->_adjustedWindowSceneBounds, bounds))
  {
    p_adjustedWindowSceneBounds->origin.x = x;
    p_adjustedWindowSceneBounds->origin.y = y;
    p_adjustedWindowSceneBounds->size.width = width;
    p_adjustedWindowSceneBounds->size.height = height;
    _PKPaletteViewUpdateUI(self, 1);

    [(PKPaletteView *)self dismissPalettePopoverWithCompletion:0];
  }
}

- (void)_setPaletteScaleFactor:(double)factor notifyDidChange:(BOOL)change
{
  paletteScaleFactor = self->_paletteScaleFactor;
  if (paletteScaleFactor != factor && vabdd_f64(paletteScaleFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_paletteScaleFactor = factor;
    if (change)
    {
      [(PKPaletteView *)self didChangePaletteScaleFactor];
    }
  }
}

- (void)didChangePaletteScaleFactor
{
  [(PKPaletteView *)self _updateContainerSizeConstraints];
  internalDelegate = [(PKPaletteView *)self internalDelegate];
  [internalDelegate paletteViewStateDidChangeScaleFactor:self];

  [(PKPaletteView *)self _updateToolPreviewScalingAnimated:0];
  delegate = [(PKPaletteView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PKPaletteView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PKPaletteView *)self delegate];
      [delegate3 paletteViewDidChangeScaleFactor:self];
    }
  }
}

- (void)setPalettePosition:(int64_t)position
{
  if (self->_palettePosition != position)
  {
    v5 = [(PKPaletteView *)self palettePosition]- 1;
    if (v5 <= 3)
    {
      [(PKPaletteView *)self setLastEdgeLocation:qword_1C801C790[v5]];
    }

    palettePosition = self->_palettePosition;
    self->_palettePosition = position;
    [(PKPaletteView *)self didChangePalettePositionFromPosition:palettePosition toPosition:position];
    _nextAutoHideCorner = [(PKPaletteView *)self _nextAutoHideCorner];
    if (_nextAutoHideCorner != -1)
    {
      self->_autoHideCorner = _nextAutoHideCorner;
    }

    [(PKPaletteView *)self setNeedsUpdateConstraints];
  }
}

- (void)didChangePalettePositionFromPosition:(int64_t)position toPosition:(int64_t)toPosition
{
  delegate = [(PKPaletteView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteViewDidChangePosition:self fromPosition:position toPosition:toPosition];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKPaletteView *)self isPalettePresentingPopover]&& ([(PKPaletteView *)self toolPreview], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    toolPreview = [(PKPaletteView *)self toolPreview];
    [toolPreview dismissPalettePopoverWithCompletion:completionCopy];
  }

  else
  {
    v6 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    (*(completionCopy + 2))(completionCopy);
  }

  v6 = completionCopy;
LABEL_7:
}

- (unint64_t)_nextAutoHideCorner
{
  palettePosition = [(PKPaletteView *)self palettePosition];
  if (palettePosition > 4)
  {
    if (palettePosition > 6)
    {
      if (palettePosition == 7)
      {
        return 8;
      }

      if (palettePosition == 8)
      {
        return 4;
      }

      return -1;
    }

    if (palettePosition == 5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (palettePosition > 2)
  {
    if (palettePosition == 3)
    {
      autoHideCorner = [(PKPaletteView *)self autoHideCorner];
      if (autoHideCorner == 8 || autoHideCorner == 2)
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
    if (palettePosition != 1)
    {
      if (palettePosition == 2)
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

    autoHideCorner2 = [(PKPaletteView *)self autoHideCorner];
    if (autoHideCorner2 == 8 || autoHideCorner2 == 2)
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
  palettePopoverPresentingController = [(PKPaletteView *)self palettePopoverPresentingController];
  presentedViewController = [palettePopoverPresentingController presentedViewController];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  bundleIdentifier = [v4 bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.PaperKit"];

  if (presentedViewController && (v4 == v5) | v7 & 1)
  {
    v8 = 1;
  }

  else
  {
    popoverPresentationController = [presentedViewController popoverPresentationController];
    delegate = [popoverPresentationController delegate];

    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

    bundleIdentifier2 = [v11 bundleIdentifier];
    v14 = [bundleIdentifier2 isEqualToString:@"com.apple.PaperKit"];

    v8 = (v11 != 0) & ((v11 == v12) | v14);
  }

  return v8;
}

- (BOOL)shouldPalettePresentPopover
{
  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  isPaletteDragging = [paletteViewHosting isPaletteDragging];

  return isPaletteDragging ^ 1;
}

- (id)palettePopoverPassthroughViews
{
  v8[1] = *MEMORY[0x1E69E9840];
  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  if (paletteViewHosting)
  {
    paletteViewHosting2 = [(PKPaletteView *)self paletteViewHosting];
    hostingView = [paletteViewHosting2 hostingView];
    v8[0] = hostingView;
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
  _paletteViewHoverView = [(PKPaletteView *)self _paletteViewHoverView];
  if ([(PKPaletteView *)self wantsCustomPalettePopoverPresentationSource]&& _paletteViewHoverView)
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
    palettePosition = [(PKPaletteView *)self palettePosition];
    if (v11 > 3)
    {
      if ((palettePosition - 1) > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = qword_1C801C790[palettePosition - 1];
      }

      v15 = PKUIPopoverPermittedArrowDirectionsForEdge(v14);
    }

    else
    {
      if ((palettePosition - 5) > 3)
      {
        v13 = -1;
      }

      else
      {
        v13 = qword_1C801C770[palettePosition - 5];
      }

      v15 = PKUIPopoverPermittedArrowDirectionsForCorner(v13);
    }

    v4 = v15;
  }

  return v4;
}

- (void)setPalettePopoverLayoutSceneMargins:(UIEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.left;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_palettePopoverLayoutSceneMargins.top, v3), vceqq_f64(*&self->_palettePopoverLayoutSceneMargins.bottom, v4)))) & 1) == 0)
  {
    self->_palettePopoverLayoutSceneMargins = margins;
    [(PKPaletteView *)self updatePopoverUI];
  }
}

- (BOOL)_isCompactInSmallestQuickNoteWindowScene
{
  window = [(PKPaletteView *)self window];
  windowScene = [window windowScene];
  v5 = PKIsSmallestQuickNoteWindowScene(windowScene) && [(UIView *)self _pk_useCompactLayout];

  return v5;
}

- (id)_paletteViewHoverView
{
  hoverDelegate = [(PKPaletteView *)self hoverDelegate];

  if (hoverDelegate)
  {
    hoverDelegate2 = [(PKPaletteView *)self hoverDelegate];
    view = [hoverDelegate2 paletteViewHoverView:self];
    goto LABEL_3;
  }

  if ([(PKPaletteView *)self _shouldTrackHoverLocationForPencilTapActions])
  {
    window = [(PKPaletteView *)self window];
    windowScene = [window windowScene];
    hoverDelegate2 = [PKPencilObserverInteraction interactionForScene:windowScene];

    if (!hoverDelegate2 || (v10 = hoverDelegate2[8]) == 0 || *(v10 + 56) != 1)
    {
      v6 = 0;
      goto LABEL_4;
    }

    view = [hoverDelegate2 view];
LABEL_3:
    v6 = view;
LABEL_4:

    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

- (CGPoint)_paletteViewHoverLocation
{
  hoverDelegate = [(PKPaletteView *)self hoverDelegate];

  if (hoverDelegate)
  {
    hoverDelegate2 = [(PKPaletteView *)self hoverDelegate];
    [hoverDelegate2 paletteViewHoverLocation:self];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    window = [(PKPaletteView *)self window];
    windowScene = [window windowScene];
    hoverDelegate2 = [PKPencilObserverInteraction interactionForScene:windowScene];

    if (hoverDelegate2 && (v11 = *(hoverDelegate2 + 8)) != 0 && *(v11 + 56) == 1)
    {
      v6 = hoverDelegate2[15];
      v8 = hoverDelegate2[16];
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
    paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
    v4 = [paletteViewHosting isPaletteVisible] ^ 1;
  }

  else
  {
    _paletteViewHoverView = [(PKPaletteView *)self _paletteViewHoverView];

    if (_paletteViewHoverView)
    {
      LOBYTE(v4) = 1;
      return v4;
    }

    paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
    if ([paletteViewHosting isPaletteVisible])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

      if (v9)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier2 = [mainBundle2 bundleIdentifier];
        LOBYTE(v4) = [bundleIdentifier2 isEqualToString:@"com.apple.freeform"];
      }
    }
  }

  return v4;
}

- (CGRect)palettePopoverSourceRectToPresentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy || ![(PKPaletteView *)self _isCompactInSmallestQuickNoteWindowScene])
  {
    goto LABEL_7;
  }

  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  if ([paletteViewHosting isPaletteVisible])
  {

    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || ([(PKPaletteView *)self _palettePopoverSourceRect], x = v38.origin.x, y = v38.origin.y, width = v38.size.width, height = v38.size.height, CGRectIsNull(v38)))
  {
LABEL_7:
    _paletteViewHoverView = [(PKPaletteView *)self _paletteViewHoverView];
    if (_paletteViewHoverView)
    {
      [(PKPaletteView *)self _paletteViewHoverLocation];
      v13 = v12;
      v15 = v14;
      paletteViewHosting2 = [(PKPaletteView *)self paletteViewHosting];
      hostingView = [paletteViewHosting2 hostingView];

      x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(_paletteViewHoverView, hostingView, v13, v15, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
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

    palettePosition = [(PKPaletteView *)self palettePosition];
    paletteViewHosting3 = [(PKPaletteView *)self paletteViewHosting];
    hostingView2 = [paletteViewHosting3 hostingView];
    safeAreaLayoutGuide = [hostingView2 safeAreaLayoutGuide];
    [safeAreaLayoutGuide layoutFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    height = 0.0;
    if (palettePosition > 4)
    {
      if (palettePosition <= 6)
      {
        if (palettePosition != 5)
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
        if (palettePosition == 7)
        {
          v45.origin.x = v24;
          v45.origin.y = v26;
          v45.size.width = v28;
          v45.size.height = v30;
          MidX = CGRectGetMaxX(v45);
          goto LABEL_33;
        }

        if (palettePosition == 8)
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

        if (palettePosition != 9)
        {
          width = 0.0;
          goto LABEL_37;
        }
      }
    }

    else
    {
      if (palettePosition > 1)
      {
        if (palettePosition == 2)
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

        if (palettePosition != 3)
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

      if (palettePosition)
      {
        width = 0.0;
        if (palettePosition != 1)
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
  delegate = [(PKPaletteView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  delegate2 = [(PKPaletteView *)self delegate];
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

  delegate3 = [(PKPaletteView *)self delegate];
  v7 = [delegate3 paletteViewColorPickerPopoverPresentationSourceView:self];

  delegate4 = [(PKPaletteView *)self delegate];
  [delegate4 paletteViewColorPickerPopoverPresentationSourceRect:self];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  palettePopoverSourceView = [(PKPaletteView *)self palettePopoverSourceView];
  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v7, palettePopoverSourceView, v10, v12, v14, v16);
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
  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  hostingView = [paletteViewHosting hostingView];

  return hostingView;
}

- (void)updatePalettePopover:(id)popover
{
  popoverCopy = popover;
  if (popoverCopy)
  {
    v27 = popoverCopy;
    [(PKPaletteView *)self palettePopoverLayoutMargins];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    popoverPresentationController = [v27 popoverPresentationController];
    [popoverPresentationController setPopoverLayoutMargins:{v6, v8, v10, v12}];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v16 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

    if ((v16 & 1) != 0 || _UIApplicationIsExtension())
    {
      palettePopoverSourceView = [(PKPaletteView *)self palettePopoverSourceView];
      traitCollection = [palettePopoverSourceView traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      popoverPresentationController2 = [v27 popoverPresentationController];
      presentedView = [popoverPresentationController2 presentedView];
      [presentedView setOverrideUserInterfaceStyle:userInterfaceStyle];

      [v27 setOverrideUserInterfaceStyle:userInterfaceStyle];
    }

    traitCollection2 = [v27 traitCollection];
    userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];
    traitCollection3 = [(PKPaletteView *)self traitCollection];
    userInterfaceStyle3 = [traitCollection3 userInterfaceStyle];

    popoverCopy = v27;
    if (userInterfaceStyle2 != userInterfaceStyle3)
    {
      traitCollection4 = [(PKPaletteView *)self traitCollection];
      [v27 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection4, "userInterfaceStyle")}];

      popoverCopy = v27;
    }
  }
}

- (void)setToolPreviewMinimized:(BOOL)minimized animated:(BOOL)animated
{
  if (self->_toolPreviewMinimized != minimized)
  {
    self->_toolPreviewMinimized = minimized;
    [(PKPaletteView *)self _updateToolPreviewScalingAnimated:animated];
  }
}

- (void)_updateToolPreviewScalingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PKPaletteView *)self paletteScaleFactor];
  v6 = v5;
  if ([(PKPaletteView *)self isToolPreviewMinimized])
  {
    v6 = v6 * 0.8;
  }

  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview scalingFactor];
  if (v6 != v7)
  {
    v8 = fabs(v7 * 0.000000999999997);
    v9 = vabdd_f64(v6, v7);

    if (v9 < v8)
    {
      return;
    }

    toolPreview2 = [(PKPaletteView *)self toolPreview];
    toolPreview = toolPreview2;
    if (animatedCopy)
    {
      [toolPreview2 layoutIfNeeded];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__PKPaletteView__updateToolPreviewScalingAnimated___block_invoke;
      v12[3] = &unk_1E82D7170;
      v12[4] = self;
      *&v12[5] = v6;
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v12 tracking:0 dampingRatioSmoothing:0.845 responseSmoothing:0.531 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
      return;
    }

    [toolPreview2 setScalingFactor:v6];
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

- (void)willStartAppearanceAnimation:(BOOL)animation
{
  if (animation)
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

- (CGSize)paletteSizeForEdge:(unint64_t)edge
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = PKPaletteView;
  [(PKPaletteView *)&v13 traitCollectionDidChange:changeCopy];
  horizontalSizeClass = [changeCopy horizontalSizeClass];
  traitCollection = [(PKPaletteView *)self traitCollection];
  if (horizontalSizeClass != [traitCollection horizontalSizeClass])
  {

    goto LABEL_5;
  }

  verticalSizeClass = [changeCopy verticalSizeClass];
  traitCollection2 = [(PKPaletteView *)self traitCollection];
  verticalSizeClass2 = [traitCollection2 verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
LABEL_5:
    [(PKPaletteView *)self _updateContainerViewConstraints];
  }

  _PKPaletteViewUpdateUI(self, 1);
  delegate = [(PKPaletteView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteView:self didChangeTraitCollection:changeCopy];
  }
}

- (unint64_t)edgeLocationToDockFromCorner:(unint64_t)corner
{
  if (corner - 1 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1E82D7BF8[corner - 1];
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

    if (corner != 8)
    {
      v12 = result;
    }

    if (corner != 4)
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

    if (corner != 2)
    {
      v16 = result;
    }

    if (corner != 1)
    {
      v14 = v16;
    }

    if (corner <= 3)
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
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults dictionaryForKey:@"PKPaletteDefaults"];
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
  _stateDictionary = [(PKPaletteView *)self _stateDictionary];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:_stateDictionary forKey:@"PKPaletteDefaults"];
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