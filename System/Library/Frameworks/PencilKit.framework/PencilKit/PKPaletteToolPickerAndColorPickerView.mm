@interface PKPaletteToolPickerAndColorPickerView
- (BOOL)_hasColorPickerContainerView;
- (BOOL)_hasPlusButtonView;
- (BOOL)_useCompactSize;
- (BOOL)shouldShowPlusButton;
- (PKPaletteColorPickerView)colorPickerView;
- (PKPaletteToolPickerAndColorPickerView)init;
- (PKPaletteToolPickerView)toolPickerView;
- (double)_compactToolsContainerWidth;
- (double)_stackViewSpacing;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateUI;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setContextEditingMode:(int64_t)mode;
- (void)setCornerLocation:(unint64_t)location;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setInputAssistantViewVisible:(BOOL)visible;
- (void)setLassoToolEditingViewIdentifier:(id)identifier;
- (void)setLassoToolEditingViewVisible:(BOOL)visible;
- (void)setPlusButton:(id)button;
- (void)setScalingFactor:(double)factor;
- (void)setShowsPlusButton:(BOOL)button;
- (void)setWantsColorPickerContainerViewInHierarchy:(BOOL)hierarchy;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColorPickerAndPlusView:(BOOL)view;
@end

@implementation PKPaletteToolPickerAndColorPickerView

- (PKPaletteToolPickerAndColorPickerView)init
{
  v82[4] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = PKPaletteToolPickerAndColorPickerView;
  v2 = [(PKPaletteToolPickerAndColorPickerView *)&v81 init];
  v3 = v2;
  if (v2)
  {
    v2->_scalingFactor = 1.0;
    v2->_wantsColorPickerContainerViewInHierarchy = 1;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    lassoToolEditingViewForIdentifierTable = v3->_lassoToolEditingViewForIdentifierTable;
    v3->_lassoToolEditingViewForIdentifierTable = dictionary;

    v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v6;

    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerAndColorPickerView *)v3 addSubview:v3->_stackView];
    v75 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    topAnchor2 = [(PKPaletteToolPickerAndColorPickerView *)v3 topAnchor];
    v78 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v82[0] = v78;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    bottomAnchor2 = [(PKPaletteToolPickerAndColorPickerView *)v3 bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v82[1] = v8;
    leftAnchor = [(UIStackView *)v3->_stackView leftAnchor];
    leftAnchor2 = [(PKPaletteToolPickerAndColorPickerView *)v3 leftAnchor];
    v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v82[2] = v11;
    rightAnchor = [(UIStackView *)v3->_stackView rightAnchor];
    rightAnchor2 = [(PKPaletteToolPickerAndColorPickerView *)v3 rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v82[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    [v75 activateConstraints:v15];

    v16 = objc_alloc_init(PKPaletteToolPickerContainerView);
    toolPickerContainerView = v3->_toolPickerContainerView;
    v3->_toolPickerContainerView = v16;

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_toolPickerContainerView];
    heightAnchor = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView heightAnchor];
    heightAnchor2 = [(UIStackView *)v3->_stackView heightAnchor];
    v20 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    toolPickerContainerViewHeightConstraint = v3->_toolPickerContainerViewHeightConstraint;
    v3->_toolPickerContainerViewHeightConstraint = v20;

    widthAnchor = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView widthAnchor];
    widthAnchor2 = [(UIStackView *)v3->_stackView widthAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    toolPickerContainerViewWidthConstraint = v3->_toolPickerContainerViewWidthConstraint;
    v3->_toolPickerContainerViewWidthConstraint = v24;

    widthAnchor3 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView widthAnchor];
    v27 = [widthAnchor3 constraintEqualToConstant:28.0];
    compactToolPickerContainerViewWidthConstraint = v3->_compactToolPickerContainerViewWidthConstraint;
    v3->_compactToolPickerContainerViewWidthConstraint = v27;

    heightAnchor3 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView heightAnchor];
    heightAnchor4 = [(UIStackView *)v3->_stackView heightAnchor];
    v31 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    compactToolPickerContainerViewHeightConstraint = v3->_compactToolPickerContainerViewHeightConstraint;
    v3->_compactToolPickerContainerViewHeightConstraint = v31;

    LODWORD(v33) = 1148829696;
    [(NSLayoutConstraint *)v3->_toolPickerContainerViewWidthConstraint setPriority:v33];
    LODWORD(v34) = 1148829696;
    [(NSLayoutConstraint *)v3->_toolPickerContainerViewHeightConstraint setPriority:v34];
    v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
    colorPickerAndPlusView = v3->_colorPickerAndPlusView;
    v3->_colorPickerAndPlusView = v35;

    widthAnchor4 = [(UIView *)v3->_colorPickerAndPlusView widthAnchor];
    v38 = [widthAnchor4 constraintEqualToConstant:28.0];
    compactColorPickerAndPlusViewWidthConstraint = v3->_compactColorPickerAndPlusViewWidthConstraint;
    v3->_compactColorPickerAndPlusViewWidthConstraint = v38;

    heightAnchor5 = [(UIView *)v3->_colorPickerAndPlusView heightAnchor];
    v41 = [heightAnchor5 constraintEqualToConstant:62.0];
    compactColorPickerAndPlusViewHeightConstraint = v3->_compactColorPickerAndPlusViewHeightConstraint;
    v3->_compactColorPickerAndPlusViewHeightConstraint = v41;

    v43 = objc_alloc_init(PKPaletteColorPickerContainerView);
    colorPickerContainerView = v3->_colorPickerContainerView;
    v3->_colorPickerContainerView = v43;

    [(UIStackView *)v3->_stackView addSubview:v3->_colorPickerContainerView];
    widthAnchor5 = [(PKPaletteColorPickerContainerView *)v3->_colorPickerContainerView widthAnchor];
    v46 = [widthAnchor5 constraintEqualToConstant:28.0];
    compactColorPickerContainerViewWidthConstraint = v3->_compactColorPickerContainerViewWidthConstraint;
    v3->_compactColorPickerContainerViewWidthConstraint = v46;

    heightAnchor6 = [(PKPaletteColorPickerContainerView *)v3->_colorPickerContainerView heightAnchor];
    v49 = [heightAnchor6 constraintEqualToConstant:28.0];
    compactColorPickerContainerViewHeightConstraint = v3->_compactColorPickerContainerViewHeightConstraint;
    v3->_compactColorPickerContainerViewHeightConstraint = v49;

    v51 = +[PKPaletteButton plusButton];
    plusButton = v3->_plusButton;
    v3->_plusButton = v51;

    v53 = objc_alloc_init(MEMORY[0x1E69DD250]);
    lassoToolEditingContainerView = v3->_lassoToolEditingContainerView;
    v3->_lassoToolEditingContainerView = v53;

    [(UIView *)v3->_lassoToolEditingContainerView setClipsToBounds:1];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_lassoToolEditingContainerView];
    widthAnchor6 = [(UIView *)v3->_lassoToolEditingContainerView widthAnchor];
    v56 = [widthAnchor6 constraintEqualToConstant:0.0];
    lassoToolEditingContainerViewWidthConstraint = v3->_lassoToolEditingContainerViewWidthConstraint;
    v3->_lassoToolEditingContainerViewWidthConstraint = v56;

    heightAnchor7 = [(UIView *)v3->_lassoToolEditingContainerView heightAnchor];
    v59 = [heightAnchor7 constraintEqualToConstant:0.0];
    lassoToolEditingContainerViewHeightConstraint = v3->_lassoToolEditingContainerViewHeightConstraint;
    v3->_lassoToolEditingContainerViewHeightConstraint = v59;

    widthAnchor7 = [(UIView *)v3->_lassoToolEditingContainerView widthAnchor];
    v62 = [widthAnchor7 constraintEqualToConstant:188.0];
    lassoToolEditingContainerViewCompactWidthConstraint = v3->_lassoToolEditingContainerViewCompactWidthConstraint;
    v3->_lassoToolEditingContainerViewCompactWidthConstraint = v62;

    heightAnchor8 = [(UIView *)v3->_lassoToolEditingContainerView heightAnchor];
    heightAnchor9 = [(UIStackView *)v3->_stackView heightAnchor];
    v66 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9];
    lassoToolEditingContainerViewCompactHeightConstraint = v3->_lassoToolEditingContainerViewCompactHeightConstraint;
    v3->_lassoToolEditingContainerViewCompactHeightConstraint = v66;

    LODWORD(v68) = 1148829696;
    [(NSLayoutConstraint *)v3->_lassoToolEditingContainerViewWidthConstraint setPriority:v68];
    LODWORD(v69) = 1148829696;
    [(NSLayoutConstraint *)v3->_lassoToolEditingContainerViewHeightConstraint setPriority:v69];
    v70 = objc_alloc_init(MEMORY[0x1E69DD250]);
    lassoToolEditingViewForNilIdentifier = v3->_lassoToolEditingViewForNilIdentifier;
    v3->_lassoToolEditingViewForNilIdentifier = v70;

    v72 = objc_alloc_init(PKDrawingPaletteInputAssistantView);
    paletteInputAssistantView = v3->_paletteInputAssistantView;
    v3->_paletteInputAssistantView = v72;

    [(PKDrawingPaletteInputAssistantView *)v3->_paletteInputAssistantView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_paletteInputAssistantView];
    [(PKPaletteToolPickerAndColorPickerView *)v3 _updateUI];
  }

  return v3;
}

- (PKPaletteToolPickerView)toolPickerView
{
  toolPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  toolPickerView = [toolPickerContainerView toolPickerView];

  return toolPickerView;
}

- (PKPaletteColorPickerView)colorPickerView
{
  colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  colorPickerView = [colorPickerContainerView colorPickerView];

  return colorPickerView;
}

- (void)setInputAssistantViewVisible:(BOOL)visible
{
  if (self->_inputAssistantViewVisible != visible)
  {
    self->_inputAssistantViewVisible = visible;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setWantsColorPickerContainerViewInHierarchy:(BOOL)hierarchy
{
  if (self->_wantsColorPickerContainerViewInHierarchy != hierarchy)
  {
    self->_wantsColorPickerContainerViewInHierarchy = hierarchy;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setLassoToolEditingViewVisible:(BOOL)visible
{
  if (self->_lassoToolEditingViewVisible != visible)
  {
    self->_lassoToolEditingViewVisible = visible;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setLassoToolEditingViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_lassoToolEditingViewIdentifier;
  v6 = identifierCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    lassoToolEditingViewIdentifier = self->_lassoToolEditingViewIdentifier;
    self->_lassoToolEditingViewIdentifier = v8;

    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }

LABEL_9:
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  toolPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [(PKPaletteToolPickerAndColorPickerView *)self convertPoint:toolPickerContainerView toView:x, y];
  v10 = v9;
  v12 = v11;

  toolPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  v14 = [toolPickerContainerView2 hitTest:eventCopy withEvent:{v10, v12}];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PKPaletteToolPickerAndColorPickerView;
    v15 = [(PKPaletteToolPickerAndColorPickerView *)&v18 hitTest:eventCopy withEvent:x, y];
  }

  v16 = v15;

  return v16;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)location
{
  if (self->_cornerLocation != location)
  {
    self->_cornerLocation = location;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setContextEditingMode:(int64_t)mode
{
  if (self->_contextEditingMode != mode)
  {
    self->_contextEditingMode = mode;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setPlusButton:(id)button
{
  buttonCopy = button;
  if (self->_plusButton != buttonCopy)
  {
    v6 = buttonCopy;
    if ([(PKPaletteToolPickerAndColorPickerView *)self _hasPlusButtonView])
    {
      [(PKPaletteButton *)self->_plusButton removeFromSuperview];
    }

    objc_storeStrong(&self->_plusButton, button);
    buttonCopy = v6;
    if (self->_showsPlusButton)
    {
      [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
      buttonCopy = v6;
    }
  }
}

- (void)setShowsPlusButton:(BOOL)button
{
  if (self->_showsPlusButton != button)
  {
    self->_showsPlusButton = button;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (BOOL)shouldShowPlusButton
{
  if (![(PKPaletteToolPickerAndColorPickerView *)self _useCompactSize]|| PKIsPhoneDevice())
  {
    return 0;
  }

  return [(PKPaletteToolPickerAndColorPickerView *)self showsPlusButton];
}

- (void)updateColorPickerAndPlusView:(BOOL)view
{
  viewCopy = view;
  v26[2] = *MEMORY[0x1E69E9840];
  colorPickerAndPlusView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
  v6 = colorPickerAndPlusView;
  if (viewCopy)
  {
    colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [v6 addSubview:colorPickerContainerView];

    colorPickerAndPlusView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    plusButton = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    [colorPickerAndPlusView2 addSubview:plusButton];

    stackView = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    colorPickerAndPlusView3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    [stackView addArrangedSubview:colorPickerAndPlusView3];

    v22 = MEMORY[0x1E696ACD8];
    colorPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    topAnchor = [colorPickerContainerView2 topAnchor];
    colorPickerAndPlusView4 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    topAnchor2 = [colorPickerAndPlusView4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26[0] = v15;
    plusButton2 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    bottomAnchor = [plusButton2 bottomAnchor];
    colorPickerAndPlusView5 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    bottomAnchor2 = [colorPickerAndPlusView5 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v26[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v22 activateConstraints:v21];
  }

  else
  {
    [colorPickerAndPlusView removeFromSuperview];

    v23 = MEMORY[0x1E696ACD8];
    colorPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    topAnchor = [colorPickerContainerView2 topAnchor];
    colorPickerAndPlusView4 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    topAnchor2 = [colorPickerAndPlusView4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v15;
    plusButton2 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    bottomAnchor = [plusButton2 bottomAnchor];
    colorPickerAndPlusView5 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    bottomAnchor2 = [colorPickerAndPlusView5 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v23 deactivateConstraints:v21];
  }
}

- (BOOL)_useCompactSize
{
  traitCollection = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
  window = [(PKPaletteToolPickerAndColorPickerView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  return v6;
}

- (void)_updateUI
{
  v120[4] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteToolPickerAndColorPickerView *)self _hasColorPickerContainerView]&& ([(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton]|| ![(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]))
  {
    colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [colorPickerContainerView removeFromSuperview];
  }

  if (![(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton]&& [(PKPaletteToolPickerAndColorPickerView *)self _hasPlusButtonView])
  {
    [(PKPaletteToolPickerAndColorPickerView *)self updateColorPickerAndPlusView:0];
  }

  if (![(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]|| [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton]|| [(PKPaletteToolPickerAndColorPickerView *)self _hasColorPickerContainerView])
  {
    if ([(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]&& [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton]&& ![(PKPaletteToolPickerAndColorPickerView *)self _hasPlusButtonView])
    {
      [(PKPaletteToolPickerAndColorPickerView *)self updateColorPickerAndPlusView:1];
    }
  }

  else
  {
    stackView = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    colorPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [stackView addArrangedSubview:colorPickerContainerView2];
  }

  lassoToolEditingViewIdentifier = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];

  if (lassoToolEditingViewIdentifier)
  {
    toolPickerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
    [toolPickerView setClippingViewLassoToolEditingViewVisible:{-[PKPaletteToolPickerAndColorPickerView isLassoToolEditingViewVisible](self, "isLassoToolEditingViewVisible")}];

    lassoToolEditingViewForIdentifierTable = self->_lassoToolEditingViewForIdentifierTable;
    lassoToolEditingViewIdentifier2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];
    v10 = [(NSMutableDictionary *)lassoToolEditingViewForIdentifierTable objectForKey:lassoToolEditingViewIdentifier2];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v11 = self->_lassoToolEditingViewForIdentifierTable;
      lassoToolEditingViewIdentifier3 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];
      [(NSMutableDictionary *)v11 setObject:v10 forKey:lassoToolEditingViewIdentifier3];
    }
  }

  else
  {
    v10 = self->_lassoToolEditingViewForNilIdentifier;
  }

  lassoToolEditingView = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingView];

  obj = v10;
  if (v10 != lassoToolEditingView)
  {
    lassoToolEditingView2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingView];
    [lassoToolEditingView2 removeFromSuperview];

    lassoToolEditingContainerView = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    [lassoToolEditingContainerView addSubview:v10];

    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v103 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v10 topAnchor];
    lassoToolEditingContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    topAnchor2 = [lassoToolEditingContainerView2 topAnchor];
    v108 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v120[0] = v108;
    leadingAnchor = [(UIView *)v10 leadingAnchor];
    lassoToolEditingContainerView3 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    leadingAnchor2 = [lassoToolEditingContainerView3 leadingAnchor];
    v102 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v120[1] = v102;
    trailingAnchor = [(UIView *)v10 trailingAnchor];
    lassoToolEditingContainerView4 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    trailingAnchor2 = [lassoToolEditingContainerView4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v120[2] = v19;
    bottomAnchor = [(UIView *)obj bottomAnchor];
    lassoToolEditingContainerView5 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    bottomAnchor2 = [lassoToolEditingContainerView5 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v120[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
    [v103 activateConstraints:v24];

    objc_storeStrong(&self->_lassoToolEditingView, obj);
  }

  isLassoToolEditingViewVisible = [(PKPaletteToolPickerAndColorPickerView *)self isLassoToolEditingViewVisible];
  lassoToolEditingContainerView6 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
  [lassoToolEditingContainerView6 setHidden:!isLassoToolEditingViewVisible];

  isInputAssistantViewVisible = [(PKPaletteToolPickerAndColorPickerView *)self isInputAssistantViewVisible];
  paletteInputAssistantView = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [paletteInputAssistantView setHidden:!isInputAssistantViewVisible];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v30 = v29;
  toolPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [toolPickerContainerView setScalingFactor:v30];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v33 = v32;
  colorPickerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
  [colorPickerView setScalingFactor:v33];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v36 = v35;
  paletteInputAssistantView2 = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [paletteInputAssistantView2 setScalingFactor:v36];

  edgeLocation = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  toolPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [toolPickerContainerView2 setEdgeLocation:edgeLocation];

  cornerLocation = [(PKPaletteToolPickerAndColorPickerView *)self cornerLocation];
  toolPickerContainerView3 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [toolPickerContainerView3 setCornerLocation:cornerLocation];

  edgeLocation2 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  colorPickerView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
  [colorPickerView2 setEdgeLocation:edgeLocation2];

  edgeLocation3 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  paletteInputAssistantView3 = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [paletteInputAssistantView3 setEdgeLocation:edgeLocation3];

  [(PKPaletteToolPickerAndColorPickerView *)self _stackViewSpacing];
  v47 = v46;
  stackView2 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
  [stackView2 setSpacing:v47];

  v107 = MEMORY[0x1E696ACD8];
  toolPickerContainerViewWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewWidthConstraint];
  v119[0] = toolPickerContainerViewWidthConstraint;
  toolPickerContainerViewHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewHeightConstraint];
  v119[1] = toolPickerContainerViewHeightConstraint;
  compactToolPickerContainerViewWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
  v119[2] = compactToolPickerContainerViewWidthConstraint;
  compactToolPickerContainerViewHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewHeightConstraint];
  v119[3] = compactToolPickerContainerViewHeightConstraint;
  compactColorPickerContainerViewWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewWidthConstraint];
  v119[4] = compactColorPickerContainerViewWidthConstraint;
  compactColorPickerContainerViewHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewHeightConstraint];
  v119[5] = compactColorPickerContainerViewHeightConstraint;
  compactColorPickerAndPlusViewWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
  v119[6] = compactColorPickerAndPlusViewWidthConstraint;
  compactColorPickerAndPlusViewHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewHeightConstraint];
  v119[7] = compactColorPickerAndPlusViewHeightConstraint;
  lassoToolEditingContainerViewWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
  v119[8] = lassoToolEditingContainerViewWidthConstraint;
  lassoToolEditingContainerViewHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
  v119[9] = lassoToolEditingContainerViewHeightConstraint;
  lassoToolEditingContainerViewCompactWidthConstraint = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactWidthConstraint];
  v119[10] = lassoToolEditingContainerViewCompactWidthConstraint;
  lassoToolEditingContainerViewCompactHeightConstraint = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactHeightConstraint];
  v119[11] = lassoToolEditingContainerViewCompactHeightConstraint;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:12];
  [v107 deactivateConstraints:v57];

  if ([(PKPaletteToolPickerAndColorPickerView *)self _useCompactSize])
  {
    stackView3 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    [stackView3 setAxis:0];

    v59 = MEMORY[0x1E696ACD8];
    compactToolPickerContainerViewHeightConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewHeightConstraint];
    v118[0] = compactToolPickerContainerViewHeightConstraint2;
    compactToolPickerContainerViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
    v118[1] = compactToolPickerContainerViewWidthConstraint2;
    compactColorPickerContainerViewHeightConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewHeightConstraint];
    v118[2] = compactColorPickerContainerViewHeightConstraint2;
    compactColorPickerAndPlusViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
    v118[3] = compactColorPickerAndPlusViewWidthConstraint2;
    compactColorPickerAndPlusViewHeightConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewHeightConstraint];
    v118[4] = compactColorPickerAndPlusViewHeightConstraint2;
    lassoToolEditingContainerViewCompactWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactWidthConstraint];
    v118[5] = lassoToolEditingContainerViewCompactWidthConstraint2;
    lassoToolEditingContainerViewCompactHeightConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactHeightConstraint];
    v118[6] = lassoToolEditingContainerViewCompactHeightConstraint2;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:7];
    [v59 activateConstraints:v67];

    if (![(PKPaletteToolPickerAndColorPickerView *)self contextEditingMode]|| [(PKPaletteToolPickerAndColorPickerView *)self contextEditingMode]== 3 || [(PKPaletteToolPickerAndColorPickerView *)self contextEditingMode]== 4)
    {
      v68 = 1;
      v69 = 2;
    }

    else
    {
      v68 = 0;
      v69 = 1;
    }

    v70 = obj;
    colorPickerView3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
    [colorPickerView3 setColorPickerMode:v69];

    compactColorPickerContainerViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewWidthConstraint];
    [compactColorPickerContainerViewWidthConstraint2 setActive:v68];

    v73 = v68 && [(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]&& [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton];
    compactColorPickerAndPlusViewWidthConstraint3 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
    [compactColorPickerAndPlusViewWidthConstraint3 setActive:v73];

    isLassoToolEditingViewVisible2 = [(PKPaletteToolPickerAndColorPickerView *)self isLassoToolEditingViewVisible];
    if (isLassoToolEditingViewVisible2)
    {
      v97 = 46.0;
    }

    else
    {
      v97 = 28.0;
    }

    if (!isLassoToolEditingViewVisible2 && ((v68 ^ 1) & 1) == 0)
    {
      if (PKIsVisionDevice())
      {
        if (PKIsVisionDevice())
        {
          v97 = 534.0;
        }

        else
        {
          v97 = 372.0;
        }
      }

      else
      {
        v97 = 268.0;
      }

      [(PKPaletteToolPickerAndColorPickerView *)self _compactToolsContainerWidth];
      if (v97 >= v100)
      {
        v97 = v100;
      }
    }

    compactToolPickerContainerViewWidthConstraint3 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
    [compactToolPickerContainerViewWidthConstraint3 setConstant:v97];
  }

  else
  {
    colorPickerView4 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
    [colorPickerView4 setColorPickerMode:0];

    edgeLocation4 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
    v77 = edgeLocation4 == 2 || edgeLocation4 == 8;
    v78 = PKPaletteColorSwatchesSize(v77);
    v80 = v79;
    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    v82 = v78 * v81;
    lassoToolEditingContainerViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
    [lassoToolEditingContainerViewWidthConstraint2 setConstant:v82];

    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    v85 = v80 * v84;
    lassoToolEditingContainerViewHeightConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
    [lassoToolEditingContainerViewHeightConstraint2 setConstant:v85];

    v87 = MEMORY[0x1E695DF70];
    lassoToolEditingContainerViewWidthConstraint3 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
    v117[0] = lassoToolEditingContainerViewWidthConstraint3;
    lassoToolEditingContainerViewHeightConstraint3 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
    v117[1] = lassoToolEditingContainerViewHeightConstraint3;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    compactToolPickerContainerViewWidthConstraint3 = [v87 arrayWithArray:v90];

    edgeLocation5 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
    if (edgeLocation5 == 8 || edgeLocation5 == 2)
    {
      stackView4 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
      [stackView4 setAxis:1];

      toolPickerContainerViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewWidthConstraint];
    }

    else
    {
      stackView5 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
      [stackView5 setAxis:0];

      toolPickerContainerViewWidthConstraint2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewHeightConstraint];
    }

    v99 = toolPickerContainerViewWidthConstraint2;
    v70 = obj;
    [compactToolPickerContainerViewWidthConstraint3 addObject:toolPickerContainerViewWidthConstraint2];

    [MEMORY[0x1E696ACD8] activateConstraints:compactToolPickerContainerViewWidthConstraint3];
  }

  colorPickerContainerView3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  [colorPickerContainerView3 setLayoutAxis:1];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPaletteToolPickerAndColorPickerView;
  [(PKPaletteToolPickerAndColorPickerView *)&v7 layoutSubviews];
  if ([(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton])
  {
    colorPickerAndPlusView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    subviews = [colorPickerAndPlusView subviews];
    plusButton = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v6 = [subviews containsObject:plusButton];

    if ((v6 & 1) == 0)
    {
      [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
    }
  }
}

- (double)_compactToolsContainerWidth
{
  toolPickerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  toolViews = [toolPickerView toolViews];
  v6 = [toolViews count];

  if (!v6)
  {
    return 0.0;
  }

  toolPickerView2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  toolViews2 = [toolPickerView2 toolViews];
  v9 = [toolViews2 count];
  toolPickerView3 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  toolViews3 = [toolPickerView3 toolViews];
  v12 = [toolViews3 count];
  shouldShowPlusButton = [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton];
  v14 = 5.0;
  v15 = 5.0;
  if (shouldShowPlusButton)
  {
    plusButton = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v15 = 2.0;
    if (!plusButton)
    {
      v15 = 5.0;
    }
  }

  v16 = v9;
  if (v12 >= 8)
  {
    v14 = v15;
  }

  toolPickerView4 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  toolViews4 = [toolPickerView4 toolViews];
  v19 = v14 * ([toolViews4 count] - 1);

  if (shouldShowPlusButton)
  {
  }

  v20 = v19 + v16 * 46.0;

  return v20;
}

- (double)_stackViewSpacing
{
  _useCompactSize = [(PKPaletteToolPickerAndColorPickerView *)self _useCompactSize];
  result = 16.0;
  if (!_useCompactSize)
  {
    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    return v5 * 12.0;
  }

  return result;
}

- (BOOL)_hasColorPickerContainerView
{
  stackView = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  v6 = [arrangedSubviews containsObject:colorPickerContainerView];

  return v6;
}

- (BOOL)_hasPlusButtonView
{
  colorPickerAndPlusView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
  subviews = [colorPickerAndPlusView subviews];
  plusButton = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
  if ([subviews containsObject:plusButton])
  {
    stackView = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    subviews2 = [stackView subviews];
    colorPickerAndPlusView2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v9 = [subviews2 containsObject:colorPickerAndPlusView2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  toolPickerView = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaletteToolPickerAndColorPickerView_dismissPalettePopoverWithCompletion___block_invoke;
  v12[3] = &unk_1E82D7148;
  v7 = v5;
  v13 = v7;
  [toolPickerView dismissPalettePopoverWithCompletion:v12];

  dispatch_group_enter(v7);
  colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaletteToolPickerAndColorPickerView_dismissPalettePopoverWithCompletion___block_invoke_2;
  v10[3] = &unk_1E82D7148;
  v9 = v7;
  v11 = v9;
  [colorPickerContainerView dismissPalettePopoverWithCompletion:v10];

  if (completionCopy)
  {
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], completionCopy);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteToolPickerAndColorPickerView;
  [(PKPaletteToolPickerAndColorPickerView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
LABEL_6:
}

@end