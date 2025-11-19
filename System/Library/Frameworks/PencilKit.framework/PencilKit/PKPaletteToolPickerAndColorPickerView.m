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
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateUI;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)setContextEditingMode:(int64_t)a3;
- (void)setCornerLocation:(unint64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setInputAssistantViewVisible:(BOOL)a3;
- (void)setLassoToolEditingViewIdentifier:(id)a3;
- (void)setLassoToolEditingViewVisible:(BOOL)a3;
- (void)setPlusButton:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setShowsPlusButton:(BOOL)a3;
- (void)setWantsColorPickerContainerViewInHierarchy:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateColorPickerAndPlusView:(BOOL)a3;
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    lassoToolEditingViewForIdentifierTable = v3->_lassoToolEditingViewForIdentifierTable;
    v3->_lassoToolEditingViewForIdentifierTable = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v3->_stackView;
    v3->_stackView = v6;

    [(UIStackView *)v3->_stackView setAxis:0];
    [(UIStackView *)v3->_stackView setAlignment:3];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteToolPickerAndColorPickerView *)v3 addSubview:v3->_stackView];
    v75 = MEMORY[0x1E696ACD8];
    v80 = [(UIStackView *)v3->_stackView topAnchor];
    v79 = [(PKPaletteToolPickerAndColorPickerView *)v3 topAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v82[0] = v78;
    v77 = [(UIStackView *)v3->_stackView bottomAnchor];
    v76 = [(PKPaletteToolPickerAndColorPickerView *)v3 bottomAnchor];
    v8 = [v77 constraintEqualToAnchor:v76];
    v82[1] = v8;
    v9 = [(UIStackView *)v3->_stackView leftAnchor];
    v10 = [(PKPaletteToolPickerAndColorPickerView *)v3 leftAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v82[2] = v11;
    v12 = [(UIStackView *)v3->_stackView rightAnchor];
    v13 = [(PKPaletteToolPickerAndColorPickerView *)v3 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v82[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
    [v75 activateConstraints:v15];

    v16 = objc_alloc_init(PKPaletteToolPickerContainerView);
    toolPickerContainerView = v3->_toolPickerContainerView;
    v3->_toolPickerContainerView = v16;

    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_toolPickerContainerView];
    v18 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView heightAnchor];
    v19 = [(UIStackView *)v3->_stackView heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    toolPickerContainerViewHeightConstraint = v3->_toolPickerContainerViewHeightConstraint;
    v3->_toolPickerContainerViewHeightConstraint = v20;

    v22 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView widthAnchor];
    v23 = [(UIStackView *)v3->_stackView widthAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    toolPickerContainerViewWidthConstraint = v3->_toolPickerContainerViewWidthConstraint;
    v3->_toolPickerContainerViewWidthConstraint = v24;

    v26 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView widthAnchor];
    v27 = [v26 constraintEqualToConstant:28.0];
    compactToolPickerContainerViewWidthConstraint = v3->_compactToolPickerContainerViewWidthConstraint;
    v3->_compactToolPickerContainerViewWidthConstraint = v27;

    v29 = [(PKPaletteToolPickerContainerView *)v3->_toolPickerContainerView heightAnchor];
    v30 = [(UIStackView *)v3->_stackView heightAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    compactToolPickerContainerViewHeightConstraint = v3->_compactToolPickerContainerViewHeightConstraint;
    v3->_compactToolPickerContainerViewHeightConstraint = v31;

    LODWORD(v33) = 1148829696;
    [(NSLayoutConstraint *)v3->_toolPickerContainerViewWidthConstraint setPriority:v33];
    LODWORD(v34) = 1148829696;
    [(NSLayoutConstraint *)v3->_toolPickerContainerViewHeightConstraint setPriority:v34];
    v35 = objc_alloc_init(MEMORY[0x1E69DD250]);
    colorPickerAndPlusView = v3->_colorPickerAndPlusView;
    v3->_colorPickerAndPlusView = v35;

    v37 = [(UIView *)v3->_colorPickerAndPlusView widthAnchor];
    v38 = [v37 constraintEqualToConstant:28.0];
    compactColorPickerAndPlusViewWidthConstraint = v3->_compactColorPickerAndPlusViewWidthConstraint;
    v3->_compactColorPickerAndPlusViewWidthConstraint = v38;

    v40 = [(UIView *)v3->_colorPickerAndPlusView heightAnchor];
    v41 = [v40 constraintEqualToConstant:62.0];
    compactColorPickerAndPlusViewHeightConstraint = v3->_compactColorPickerAndPlusViewHeightConstraint;
    v3->_compactColorPickerAndPlusViewHeightConstraint = v41;

    v43 = objc_alloc_init(PKPaletteColorPickerContainerView);
    colorPickerContainerView = v3->_colorPickerContainerView;
    v3->_colorPickerContainerView = v43;

    [(UIStackView *)v3->_stackView addSubview:v3->_colorPickerContainerView];
    v45 = [(PKPaletteColorPickerContainerView *)v3->_colorPickerContainerView widthAnchor];
    v46 = [v45 constraintEqualToConstant:28.0];
    compactColorPickerContainerViewWidthConstraint = v3->_compactColorPickerContainerViewWidthConstraint;
    v3->_compactColorPickerContainerViewWidthConstraint = v46;

    v48 = [(PKPaletteColorPickerContainerView *)v3->_colorPickerContainerView heightAnchor];
    v49 = [v48 constraintEqualToConstant:28.0];
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
    v55 = [(UIView *)v3->_lassoToolEditingContainerView widthAnchor];
    v56 = [v55 constraintEqualToConstant:0.0];
    lassoToolEditingContainerViewWidthConstraint = v3->_lassoToolEditingContainerViewWidthConstraint;
    v3->_lassoToolEditingContainerViewWidthConstraint = v56;

    v58 = [(UIView *)v3->_lassoToolEditingContainerView heightAnchor];
    v59 = [v58 constraintEqualToConstant:0.0];
    lassoToolEditingContainerViewHeightConstraint = v3->_lassoToolEditingContainerViewHeightConstraint;
    v3->_lassoToolEditingContainerViewHeightConstraint = v59;

    v61 = [(UIView *)v3->_lassoToolEditingContainerView widthAnchor];
    v62 = [v61 constraintEqualToConstant:188.0];
    lassoToolEditingContainerViewCompactWidthConstraint = v3->_lassoToolEditingContainerViewCompactWidthConstraint;
    v3->_lassoToolEditingContainerViewCompactWidthConstraint = v62;

    v64 = [(UIView *)v3->_lassoToolEditingContainerView heightAnchor];
    v65 = [(UIStackView *)v3->_stackView heightAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
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
  v2 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  v3 = [v2 toolPickerView];

  return v3;
}

- (PKPaletteColorPickerView)colorPickerView
{
  v2 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  v3 = [v2 colorPickerView];

  return v3;
}

- (void)setInputAssistantViewVisible:(BOOL)a3
{
  if (self->_inputAssistantViewVisible != a3)
  {
    self->_inputAssistantViewVisible = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setWantsColorPickerContainerViewInHierarchy:(BOOL)a3
{
  if (self->_wantsColorPickerContainerViewInHierarchy != a3)
  {
    self->_wantsColorPickerContainerViewInHierarchy = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setLassoToolEditingViewVisible:(BOOL)a3
{
  if (self->_lassoToolEditingViewVisible != a3)
  {
    self->_lassoToolEditingViewVisible = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setLassoToolEditingViewIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_lassoToolEditingViewIdentifier;
  v6 = v4;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [(PKPaletteToolPickerAndColorPickerView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  v14 = [v13 hitTest:v7 withEvent:{v10, v12}];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PKPaletteToolPickerAndColorPickerView;
    v15 = [(PKPaletteToolPickerAndColorPickerView *)&v18 hitTest:v7 withEvent:x, y];
  }

  v16 = v15;

  return v16;
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)a3
{
  if (self->_cornerLocation != a3)
  {
    self->_cornerLocation = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setContextEditingMode:(int64_t)a3
{
  if (self->_contextEditingMode != a3)
  {
    self->_contextEditingMode = a3;
    [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
  }
}

- (void)setPlusButton:(id)a3
{
  v5 = a3;
  if (self->_plusButton != v5)
  {
    v6 = v5;
    if ([(PKPaletteToolPickerAndColorPickerView *)self _hasPlusButtonView])
    {
      [(PKPaletteButton *)self->_plusButton removeFromSuperview];
    }

    objc_storeStrong(&self->_plusButton, a3);
    v5 = v6;
    if (self->_showsPlusButton)
    {
      [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
      v5 = v6;
    }
  }
}

- (void)setShowsPlusButton:(BOOL)a3
{
  if (self->_showsPlusButton != a3)
  {
    self->_showsPlusButton = a3;
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

- (void)updateColorPickerAndPlusView:(BOOL)a3
{
  v3 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
  v6 = v5;
  if (v3)
  {
    v7 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [v6 addSubview:v7];

    v8 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v9 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    [v8 addSubview:v9];

    v10 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    v11 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    [v10 addArrangedSubview:v11];

    v22 = MEMORY[0x1E696ACD8];
    v24 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    v12 = [v24 topAnchor];
    v13 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v26[0] = v15;
    v16 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v17 = [v16 bottomAnchor];
    v18 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v26[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    [v22 activateConstraints:v21];
  }

  else
  {
    [v5 removeFromSuperview];

    v23 = MEMORY[0x1E696ACD8];
    v24 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    v12 = [v24 topAnchor];
    v13 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v25[0] = v15;
    v16 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v17 = [v16 bottomAnchor];
    v18 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    v25[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [v23 deactivateConstraints:v21];
  }
}

- (BOOL)_useCompactSize
{
  v3 = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
  v4 = [(PKPaletteToolPickerAndColorPickerView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

  return v6;
}

- (void)_updateUI
{
  v120[4] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteToolPickerAndColorPickerView *)self _hasColorPickerContainerView]&& ([(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton]|| ![(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]))
  {
    v3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [v3 removeFromSuperview];
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
    v4 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    v5 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
    [v4 addArrangedSubview:v5];
  }

  v6 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];

  if (v6)
  {
    v7 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
    [v7 setClippingViewLassoToolEditingViewVisible:{-[PKPaletteToolPickerAndColorPickerView isLassoToolEditingViewVisible](self, "isLassoToolEditingViewVisible")}];

    lassoToolEditingViewForIdentifierTable = self->_lassoToolEditingViewForIdentifierTable;
    v9 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];
    v10 = [(NSMutableDictionary *)lassoToolEditingViewForIdentifierTable objectForKey:v9];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v11 = self->_lassoToolEditingViewForIdentifierTable;
      v12 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingViewIdentifier];
      [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
    }
  }

  else
  {
    v10 = self->_lassoToolEditingViewForNilIdentifier;
  }

  v13 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingView];

  obj = v10;
  if (v10 != v13)
  {
    v14 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingView];
    [v14 removeFromSuperview];

    v15 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    [v15 addSubview:v10];

    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v103 = MEMORY[0x1E696ACD8];
    v112 = [(UIView *)v10 topAnchor];
    v114 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    v110 = [v114 topAnchor];
    v108 = [v112 constraintEqualToAnchor:v110];
    v120[0] = v108;
    v105 = [(UIView *)v10 leadingAnchor];
    v106 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    v104 = [v106 leadingAnchor];
    v102 = [v105 constraintEqualToAnchor:v104];
    v120[1] = v102;
    v16 = [(UIView *)v10 trailingAnchor];
    v17 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    v18 = [v17 trailingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v120[2] = v19;
    v20 = [(UIView *)obj bottomAnchor];
    v21 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
    v22 = [v21 bottomAnchor];
    v23 = [v20 constraintEqualToAnchor:v22];
    v120[3] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:4];
    [v103 activateConstraints:v24];

    objc_storeStrong(&self->_lassoToolEditingView, obj);
  }

  v25 = [(PKPaletteToolPickerAndColorPickerView *)self isLassoToolEditingViewVisible];
  v26 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerView];
  [v26 setHidden:!v25];

  v27 = [(PKPaletteToolPickerAndColorPickerView *)self isInputAssistantViewVisible];
  v28 = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [v28 setHidden:!v27];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v30 = v29;
  v31 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [v31 setScalingFactor:v30];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v33 = v32;
  v34 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
  [v34 setScalingFactor:v33];

  [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
  v36 = v35;
  v37 = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [v37 setScalingFactor:v36];

  v38 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  v39 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [v39 setEdgeLocation:v38];

  v40 = [(PKPaletteToolPickerAndColorPickerView *)self cornerLocation];
  v41 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerView];
  [v41 setCornerLocation:v40];

  v42 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  v43 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
  [v43 setEdgeLocation:v42];

  v44 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
  v45 = [(PKPaletteToolPickerAndColorPickerView *)self paletteInputAssistantView];
  [v45 setEdgeLocation:v44];

  [(PKPaletteToolPickerAndColorPickerView *)self _stackViewSpacing];
  v47 = v46;
  v48 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
  [v48 setSpacing:v47];

  v107 = MEMORY[0x1E696ACD8];
  v115 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewWidthConstraint];
  v119[0] = v115;
  v113 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewHeightConstraint];
  v119[1] = v113;
  v111 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
  v119[2] = v111;
  v109 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewHeightConstraint];
  v119[3] = v109;
  v49 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewWidthConstraint];
  v119[4] = v49;
  v50 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewHeightConstraint];
  v119[5] = v50;
  v51 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
  v119[6] = v51;
  v52 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewHeightConstraint];
  v119[7] = v52;
  v53 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
  v119[8] = v53;
  v54 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
  v119[9] = v54;
  v55 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactWidthConstraint];
  v119[10] = v55;
  v56 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactHeightConstraint];
  v119[11] = v56;
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:12];
  [v107 deactivateConstraints:v57];

  if ([(PKPaletteToolPickerAndColorPickerView *)self _useCompactSize])
  {
    v58 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    [v58 setAxis:0];

    v59 = MEMORY[0x1E696ACD8];
    v60 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewHeightConstraint];
    v118[0] = v60;
    v61 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
    v118[1] = v61;
    v62 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewHeightConstraint];
    v118[2] = v62;
    v63 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
    v118[3] = v63;
    v64 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewHeightConstraint];
    v118[4] = v64;
    v65 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactWidthConstraint];
    v118[5] = v65;
    v66 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewCompactHeightConstraint];
    v118[6] = v66;
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
    v71 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
    [v71 setColorPickerMode:v69];

    v72 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerContainerViewWidthConstraint];
    [v72 setActive:v68];

    v73 = v68 && [(PKPaletteToolPickerAndColorPickerView *)self wantsColorPickerContainerViewInHierarchy]&& [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton];
    v95 = [(PKPaletteToolPickerAndColorPickerView *)self compactColorPickerAndPlusViewWidthConstraint];
    [v95 setActive:v73];

    v96 = [(PKPaletteToolPickerAndColorPickerView *)self isLassoToolEditingViewVisible];
    if (v96)
    {
      v97 = 46.0;
    }

    else
    {
      v97 = 28.0;
    }

    if (!v96 && ((v68 ^ 1) & 1) == 0)
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

    v91 = [(PKPaletteToolPickerAndColorPickerView *)self compactToolPickerContainerViewWidthConstraint];
    [v91 setConstant:v97];
  }

  else
  {
    v74 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerView];
    [v74 setColorPickerMode:0];

    v75 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
    v77 = v75 == 2 || v75 == 8;
    v78 = PKPaletteColorSwatchesSize(v77);
    v80 = v79;
    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    v82 = v78 * v81;
    v83 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
    [v83 setConstant:v82];

    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    v85 = v80 * v84;
    v86 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
    [v86 setConstant:v85];

    v87 = MEMORY[0x1E695DF70];
    v88 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewWidthConstraint];
    v117[0] = v88;
    v89 = [(PKPaletteToolPickerAndColorPickerView *)self lassoToolEditingContainerViewHeightConstraint];
    v117[1] = v89;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
    v91 = [v87 arrayWithArray:v90];

    v92 = [(PKPaletteToolPickerAndColorPickerView *)self edgeLocation];
    if (v92 == 8 || v92 == 2)
    {
      v93 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
      [v93 setAxis:1];

      v94 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewWidthConstraint];
    }

    else
    {
      v98 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
      [v98 setAxis:0];

      v94 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerContainerViewHeightConstraint];
    }

    v99 = v94;
    v70 = obj;
    [v91 addObject:v94];

    [MEMORY[0x1E696ACD8] activateConstraints:v91];
  }

  v101 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  [v101 setLayoutAxis:1];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPaletteToolPickerAndColorPickerView;
  [(PKPaletteToolPickerAndColorPickerView *)&v7 layoutSubviews];
  if ([(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton])
  {
    v3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v4 = [v3 subviews];
    v5 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v6 = [v4 containsObject:v5];

    if ((v6 & 1) == 0)
    {
      [(PKPaletteToolPickerAndColorPickerView *)self _updateUI];
    }
  }
}

- (double)_compactToolsContainerWidth
{
  v4 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v5 = [v4 toolViews];
  v6 = [v5 count];

  if (!v6)
  {
    return 0.0;
  }

  v7 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v8 = [v7 toolViews];
  v9 = [v8 count];
  v10 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v11 = [v10 toolViews];
  v12 = [v11 count];
  v13 = [(PKPaletteToolPickerAndColorPickerView *)self shouldShowPlusButton];
  v14 = 5.0;
  v15 = 5.0;
  if (v13)
  {
    v2 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
    v15 = 2.0;
    if (!v2)
    {
      v15 = 5.0;
    }
  }

  v16 = v9;
  if (v12 >= 8)
  {
    v14 = v15;
  }

  v17 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v18 = [v17 toolViews];
  v19 = v14 * ([v18 count] - 1);

  if (v13)
  {
  }

  v20 = v19 + v16 * 46.0;

  return v20;
}

- (double)_stackViewSpacing
{
  v3 = [(PKPaletteToolPickerAndColorPickerView *)self _useCompactSize];
  result = 16.0;
  if (!v3)
  {
    [(PKPaletteToolPickerAndColorPickerView *)self scalingFactor];
    return v5 * 12.0;
  }

  return result;
}

- (BOOL)_hasColorPickerContainerView
{
  v3 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
  v4 = [v3 arrangedSubviews];
  v5 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)_hasPlusButtonView
{
  v3 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
  v4 = [v3 subviews];
  v5 = [(PKPaletteToolPickerAndColorPickerView *)self plusButton];
  if ([v4 containsObject:v5])
  {
    v6 = [(PKPaletteToolPickerAndColorPickerView *)self stackView];
    v7 = [v6 subviews];
    v8 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerAndPlusView];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [(PKPaletteToolPickerAndColorPickerView *)self toolPickerView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaletteToolPickerAndColorPickerView_dismissPalettePopoverWithCompletion___block_invoke;
  v12[3] = &unk_1E82D7148;
  v7 = v5;
  v13 = v7;
  [v6 dismissPalettePopoverWithCompletion:v12];

  dispatch_group_enter(v7);
  v8 = [(PKPaletteToolPickerAndColorPickerView *)self colorPickerContainerView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PKPaletteToolPickerAndColorPickerView_dismissPalettePopoverWithCompletion___block_invoke_2;
  v10[3] = &unk_1E82D7148;
  v9 = v7;
  v11 = v9;
  [v8 dismissPalettePopoverWithCompletion:v10];

  if (v4)
  {
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v4);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteToolPickerAndColorPickerView;
  [(PKPaletteToolPickerAndColorPickerView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteToolPickerAndColorPickerView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
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