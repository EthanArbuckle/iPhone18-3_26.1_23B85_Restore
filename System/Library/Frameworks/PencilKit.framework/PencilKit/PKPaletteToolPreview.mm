@interface PKPaletteToolPreview
- (CGRect)_popoverPresentingSourceRect;
- (NSString)itemIdentifier;
- (PKPalettePopoverPresenting)delegate;
- (PKPaletteToolPreview)initWithFrame:(CGRect)a3;
- (UIColor)toolColor;
- (id)_popoverPresentingSourceView;
- (void)_animateToolViewToVisible:(BOOL)a3 completion:(id)a4;
- (void)_replaceCurrentToolWithTool:(id)a3;
- (void)_showColorSelectionPopover;
- (void)_updateLayoutGuideConstraints;
- (void)_updateToolViewInkingToolAttributesFromTool:(id)a3;
- (void)_updateUI;
- (void)colorPickerControllerDidChangeSelectedColor:(id)a3 isContinuousColorSelection:(BOOL)a4;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)flashAlternatePreviewView:(id)a3;
- (void)setAllowHDR:(BOOL)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setToolImageNeedsReload;
- (void)showPreviewForTool:(id)a3 animated:(BOOL)a4;
- (void)toggleColorSelectionPopover;
- (void)updateConstraints;
@end

@implementation PKPaletteToolPreview

- (PKPaletteToolPreview)initWithFrame:(CGRect)a3
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKPaletteToolPreview;
  v3 = [(PKPaletteToolPreview *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    layoutGuide = v4->_layoutGuide;
    v4->_layoutGuide = v5;

    [(PKPaletteToolPreview *)v4 addLayoutGuide:v4->_layoutGuide];
    v7 = [(UILayoutGuide *)v4->_layoutGuide topAnchor];
    v8 = [(PKPaletteToolPreview *)v4 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    layoutGuideTopConstraint = v4->_layoutGuideTopConstraint;
    v4->_layoutGuideTopConstraint = v9;

    v11 = [(UILayoutGuide *)v4->_layoutGuide widthAnchor];
    v12 = [(PKPaletteToolPreview *)v4 widthAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    layoutGuideWidthConstraint = v4->_layoutGuideWidthConstraint;
    v4->_layoutGuideWidthConstraint = v13;

    v15 = [(UILayoutGuide *)v4->_layoutGuide heightAnchor];
    v16 = [(PKPaletteToolPreview *)v4 heightAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    layoutGuideHeightConstraint = v4->_layoutGuideHeightConstraint;
    v4->_layoutGuideHeightConstraint = v17;

    v19 = [(UILayoutGuide *)v4->_layoutGuide centerXAnchor];
    v20 = [(PKPaletteToolPreview *)v4 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    layoutGuideCenterXConstraint = v4->_layoutGuideCenterXConstraint;
    v4->_layoutGuideCenterXConstraint = v21;

    v23 = MEMORY[0x1E696ACD8];
    v27[0] = v4->_layoutGuideTopConstraint;
    v27[1] = v4->_layoutGuideWidthConstraint;
    v27[2] = v4->_layoutGuideHeightConstraint;
    v27[3] = v4->_layoutGuideCenterXConstraint;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v23 activateConstraints:v24];

    v4->_toolViewVisible = 1;
    [(PKPaletteToolPreview *)v4 _updateLayoutGuideConstraints];
    [(PKPaletteToolPreview *)v4 _updateUI];
  }

  return v4;
}

- (void)_updateUI
{
  v3 = [(PKPaletteToolPreview *)self edgeLocation];
  v4 = [(PKPaletteToolPreview *)self toolView];
  [v4 setEdgeLocation:v3];

  v5 = [(PKPaletteToolPreview *)self toolView];
  [v5 setAllowHDR:1];

  v6 = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
  v7 = [(PKPaletteToolPreview *)self toolView];
  [v7 setColorUserInterfaceStyle:v6];

  [(PKPaletteToolPreview *)self scalingFactor];
  v9 = v8;
  v10 = [(PKPaletteToolPreview *)self toolView];
  [v10 setScalingFactor:v9];

  v11 = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
  v13 = [(PKPaletteToolPreview *)self colorPickerController];
  v12 = [v13 colorPicker];
  [v12 setColorUserInterfaceStyle:v11];
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
    [(PKPaletteToolPreview *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)a3
{
  v4 = a3;
  v7 = [(PKPaletteToolPreview *)self toolView];
  v5 = [v7 tool];
  v6 = [v5 handwritingTool];
  [v6 setLocaleIdentifier:v4];
}

- (NSString)itemIdentifier
{
  v2 = [(PKPaletteToolPreview *)self toolView];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (void)showPreviewForTool:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PKPaletteToolPreview *)self toolView];
  v8 = [v7 tool];
  if (v8)
  {
    v9 = [(PKPaletteToolPreview *)self toolView];
    v10 = [v9 tool];
    v11 = [v10 itemIdentifier];
    v12 = [v6 itemIdentifier];
    v13 = [v11 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 1) != 0 || !v4)
  {
    v15 = [(PKPaletteToolPreview *)self toolView];
    v16 = [v15 tool];
    v17 = PKPaletteToolEqualTools(v16, v6);

    if ((v17 & 1) != 0 || v4)
    {
      [(PKPaletteToolPreview *)self _updateToolViewInkingToolAttributesFromTool:v6];
      v19 = [v6 handwritingTool];
      v20 = [v19 localeIdentifier];

      [(PKPaletteToolPreview *)self setLocaleIdentifier:v20];
      goto LABEL_12;
    }

    v18 = MEMORY[0x1E69DD250];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke_2;
    v21[3] = &unk_1E82D6E70;
    v21[4] = self;
    v22 = v6;
    [v18 performWithoutAnimation:v21];
    v14 = v22;
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke;
    v23[3] = &unk_1E82D6E70;
    v23[4] = self;
    v24 = v6;
    [(PKPaletteToolPreview *)self _animateToolViewToVisible:0 completion:v23];
    v14 = v24;
  }

LABEL_12:
}

uint64_t __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _replaceCurrentToolWithTool:*(a1 + 40)];
  [*(a1 + 32) _updateToolViewInkingToolAttributesFromTool:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _animateToolViewToVisible:1 completion:0];
}

uint64_t __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _replaceCurrentToolWithTool:*(a1 + 40)];
  [*(a1 + 32) _updateToolViewInkingToolAttributesFromTool:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setToolImageNeedsReload
{
  v2 = [(PKPaletteToolPreview *)self toolView];
  [v2 _setToolImageNeedsReload];
}

- (void)setAllowHDR:(BOOL)a3
{
  v3 = a3;
  self->_allowHDR = a3;
  v4 = [(PKPaletteToolPreview *)self toolView];
  [v4 setAllowHDR:v3];
}

- (void)flashAlternatePreviewView:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(PKPaletteToolPreview *)self addSubview:v4];
    v5 = MEMORY[0x1E696ACD8];
    v6 = [v4 centerXAnchor];
    v7 = [(PKPaletteToolPreview *)self centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v20[0] = v8;
    v9 = [v4 centerYAnchor];
    v10 = [(PKPaletteToolPreview *)self centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v5 activateConstraints:v12];

    v13 = [(PKPaletteToolPreview *)self toolView];
    [v13 setAlpha:0.0];

    [(PKPaletteToolPreview *)self layoutIfNeeded];
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke;
    v17[3] = &unk_1E82D6E70;
    v18 = v4;
    v19 = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke_2;
    v15[3] = &unk_1E82D8F30;
    v16 = v18;
    [v14 animateWithDuration:0 delay:v17 options:v15 animations:0.4 completion:2.0];
  }
}

void __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) toolView];
  [v2 setAlpha:1.0];
}

- (void)_animateToolViewToVisible:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(PKPaletteToolPreview *)self isToolViewVisible]!= v4)
  {
    [(PKPaletteToolPreview *)self layoutIfNeeded];
    v7 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke;
    v10[3] = &unk_1E82D90B8;
    v10[4] = self;
    v11 = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke_2;
    v8[3] = &unk_1E82D77F0;
    v8[4] = self;
    v9 = v6;
    [v7 animateWithDuration:0 delay:v10 usingSpringWithDamping:v8 initialSpringVelocity:0.325 options:0.0 animations:0.65 completion:0.0];
  }
}

uint64_t __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setToolViewVisible:*(a1 + 40)];
  [*(a1 + 32) _updateLayoutGuideConstraints];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateLayoutGuideConstraints];
  [*(a1 + 32) layoutIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateLayoutGuideConstraints
{
  v3 = 0.0;
  if (![(PKPaletteToolPreview *)self isToolViewVisible])
  {
    [(PKPaletteToolPreview *)self bounds];
    Height = CGRectGetHeight(v8);
    [(PKPaletteToolPreview *)self _toolViewTopSpacing];
    v3 = Height - v5;
  }

  v6 = [(PKPaletteToolPreview *)self layoutGuideTopConstraint];
  [v6 setConstant:v3];
}

- (void)_replaceCurrentToolWithTool:(id)a3
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaletteToolPreview *)self toolView];
  [v5 removeFromSuperview];

  v6 = [v4 toolIdentifier];
  v7 = [v4 itemIdentifier];
  v8 = [v4 toolVariant];
  v9 = [v4 configuration];

  v10 = [PKPaletteToolView toolViewWithToolIdentifier:v6 itemIdentifier:v7 variant:v8 configuration:v9];
  [(PKPaletteToolPreview *)self setToolView:v10];

  v11 = [(PKPaletteToolPreview *)self toolView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(PKPaletteToolPreview *)self toolView];
  [v12 setSelected:1];

  v13 = [(PKPaletteToolPreview *)self allowHDR];
  v14 = [(PKPaletteToolPreview *)self toolView];
  [v14 setAllowHDR:v13];

  v15 = [(PKPaletteToolPreview *)self toolView];
  [(PKPaletteToolPreview *)self addSubview:v15];

  v16 = [(PKPaletteToolPreview *)self toolView];
  v17 = [v16 topAnchor];
  v18 = [(PKPaletteToolPreview *)self layoutGuide];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:19.0];
  [(PKPaletteToolPreview *)self setToolViewTopAnchor:v20];

  v21 = [(PKPaletteToolPreview *)self toolView];
  v22 = [v21 heightAnchor];
  v23 = [v22 constraintEqualToConstant:103.0];
  [(PKPaletteToolPreview *)self setToolViewHeightAnchor:v23];

  v24 = MEMORY[0x1E696ACD8];
  v25 = [(PKPaletteToolPreview *)self toolViewTopAnchor];
  v26 = [(PKPaletteToolPreview *)self toolViewHeightAnchor];
  v33[1] = v26;
  v27 = [(PKPaletteToolPreview *)self toolView];
  v28 = [v27 centerXAnchor];
  v29 = [(PKPaletteToolPreview *)self layoutGuide];
  v30 = [v29 centerXAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v33[2] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v24 activateConstraints:v32];

  [(PKPaletteToolPreview *)self _updateUI];
}

- (void)_updateToolViewInkingToolAttributesFromTool:(id)a3
{
  v17 = a3;
  v4 = [(PKPaletteToolPreview *)self toolView];
  v5 = [v4 tool];
  if ([v5 isInkingTool])
  {
    v6 = [v17 isInkingTool];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [v17 inkingTool];
    v4 = [v7 ink];

    v8 = [(PKPaletteToolPreview *)self toolView];
    v9 = [v8 tool];
    v10 = [v9 inkingTool];
    v11 = [v4 colorForUIAllowHDR:1];
    [v10 setInkColor:v11];

    v12 = [(PKPaletteToolPreview *)self toolView];
    v13 = [v12 tool];
    v14 = [v13 inkingTool];
    [v4 weight];
    [v14 setInkWeight:?];

    v5 = [(PKPaletteToolPreview *)self toolView];
    v15 = [v5 tool];
    v16 = [v15 inkingTool];
    [v4 _azimuth];
    [v16 setInkAzimuth:?];
  }

LABEL_5:
}

- (void)updateConstraints
{
  [(PKPaletteToolPreview *)self _toolViewTopSpacing];
  v4 = v3;
  v5 = [(PKPaletteToolPreview *)self toolViewTopAnchor];
  [v5 setConstant:v4];

  [(PKPaletteToolPreview *)self scalingFactor];
  v7 = v6 * 103.0;
  v8 = [(PKPaletteToolPreview *)self toolViewHeightAnchor];
  [v8 setConstant:v7];

  v9.receiver = self;
  v9.super_class = PKPaletteToolPreview;
  [(PKPaletteToolPreview *)&v9 updateConstraints];
}

- (UIColor)toolColor
{
  v3 = [(PKPaletteToolPreview *)self toolView];
  v4 = [v3 tool];
  v5 = [v4 isInkingTool];

  if (v5)
  {
    v6 = [(PKPaletteToolPreview *)self toolView];
    v7 = [v6 tool];
    v8 = [v7 inkingTool];
    v9 = [v8 ink];
    v10 = [v9 color];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteToolPreview *)self _updateUI];

    [(PKPaletteToolPreview *)self setNeedsUpdateConstraints];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteToolPreview *)self _updateUI];
  }
}

- (void)toggleColorSelectionPopover
{
  v3 = [(PKPaletteToolPreview *)self toolView];
  v4 = [v3 tool];
  v5 = [v4 isHandwritingTool];

  if (v5)
  {
    v6 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "Can't present color picker popover when the handwriting tool is currently selected.", v9, 2u);
    }
  }

  else
  {
    v7 = [(PKPaletteToolPreview *)self delegate];
    v8 = [v7 isPalettePresentingPopover];

    if (v8)
    {

      [(PKPaletteToolPreview *)self dismissPalettePopoverWithCompletion:0];
    }

    else
    {

      [(PKPaletteToolPreview *)self _showColorSelectionPopover];
    }
  }
}

- (void)_showColorSelectionPopover
{
  v81[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteToolPreview *)self delegate];
  v4 = [v3 palettePopoverPresentingController];

  if (v4)
  {
    v5 = [(PKPaletteToolPreview *)self _popoverPresentingSourceView];
    if (v5)
    {
      v6 = [(PKPaletteToolPreview *)self colorPickerController];

      if (!v6)
      {
        v7 = +[PKPaletteColorPickerControllerFactory makeColorPickerController];
        [(PKPaletteToolPreview *)self setColorPickerController:v7];
      }

      v8 = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
      v9 = [(PKPaletteToolPreview *)self colorPickerController];
      v10 = [v9 colorPicker];
      [v10 setColorUserInterfaceStyle:v8];

      v11 = [(PKPaletteToolPreview *)self toolView];
      v12 = [v11 configuration];
      v13 = v12;
      if (v12)
      {
        if (*(v12 + 18) == 1)
        {
          v14 = *(v12 + 19);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      v16 = [(PKPaletteToolPreview *)self colorPickerController];
      v17 = [v16 colorPicker];
      [v17 setSupportsAlpha:v14 & 1];

      v18 = [(PKPaletteToolPreview *)self toolColor];
      v19 = [(PKPaletteToolPreview *)self colorPickerController];
      v20 = [v19 colorPicker];
      [v20 setSelectedColor:v18];

      v21 = [(PKPaletteToolPreview *)self colorPickerController];
      [v21 setDelegate:self];

      v22 = [(PKPaletteToolPreview *)self colorPickerController];
      v23 = [v22 viewController];
      [v23 setModalPresentationStyle:7];

      v24 = [(PKPaletteToolPreview *)self colorPickerController];
      v25 = [v24 viewController];
      v26 = [v25 popoverPresentationController];
      [v26 setDelegate:self];

      v27 = [(PKPaletteToolPreview *)self delegate];
      v28 = [v27 palettePopoverPermittedArrowDirections];
      v29 = [(PKPaletteToolPreview *)self colorPickerController];
      v30 = [v29 viewController];
      v31 = [v30 popoverPresentationController];
      [v31 setPermittedArrowDirections:v28];

      v32 = [(PKPaletteToolPreview *)self colorPickerController];
      v33 = [v32 viewController];
      v34 = [v33 popoverPresentationController];
      [v34 _setShouldDisableInteractionDuringTransitions:0];

      [(PKPaletteToolPreview *)self _popoverPresentingSourceRect];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = [(PKPaletteToolPreview *)self colorPickerController];
      v44 = [v43 viewController];
      v45 = [v44 popoverPresentationController];
      [v45 setSourceRect:{v36, v38, v40, v42}];

      v46 = [(PKPaletteToolPreview *)self colorPickerController];
      v47 = [v46 viewController];
      v48 = [v47 popoverPresentationController];
      [v48 setSourceView:v5];

      v49 = [v4 view];
      v81[0] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
      v51 = [(PKPaletteToolPreview *)self colorPickerController];
      v52 = [v51 viewController];
      v53 = [v52 popoverPresentationController];
      [v53 setPassthroughViews:v50];

      v54 = [(PKPaletteToolPreview *)self colorPickerController];
      v55 = [v54 viewController];
      v56 = [v55 popoverPresentationController];
      [v56 _setIgnoresKeyboardNotifications:1];

      v57 = [(PKPaletteToolPreview *)self delegate];
      [v57 palettePopoverLayoutMargins];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v66 = [(PKPaletteToolPreview *)self colorPickerController];
      v67 = [v66 viewController];
      v68 = [v67 popoverPresentationController];
      [v68 setPopoverLayoutMargins:{v59, v61, v63, v65}];

      v69 = [(PKPaletteToolPreview *)self colorPickerController];
      v70 = [v69 viewController];
      v71 = [(PKPaletteToolPreview *)self traitCollection];
      [v70 setOverrideUserInterfaceStyle:{objc_msgSend(v71, "userInterfaceStyle")}];

      v72 = [(PKPaletteToolPreview *)self colorPickerController];
      v73 = [v72 viewController];
      v74 = [v73 parentViewController];
      v75 = [(PKPaletteToolPreview *)self traitCollection];
      v76 = [(PKPaletteToolPreview *)self colorPickerController];
      v77 = [v76 viewController];
      [v74 setOverrideTraitCollection:v75 forChildViewController:v77];

      v78 = [(PKPaletteToolPreview *)self colorPickerController];
      v79 = [v78 viewController];
      [v4 presentViewController:v79 animated:1 completion:0];

      v15 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v15 recordColorPanelInvoked:?];
    }

    else
    {
      v15 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *v80 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_FAULT, "sourceView shouldn't be nil when presenting a popover", v80, 2u);
      }
    }
  }
}

- (CGRect)_popoverPresentingSourceRect
{
  [(PKPaletteToolPreview *)self bounds];
  v22 = CGRectInset(v21, -5.0, -5.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v7 = [(PKPaletteToolPreview *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v8 = [(PKPaletteToolPreview *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v7 = [(PKPaletteToolPreview *)self delegate];
    if ([v7 wantsCustomPalettePopoverPresentationSource])
    {
      v10 = [(PKPaletteToolPreview *)self delegate];
      v11 = [(PKPaletteToolPreview *)self colorPickerController];
      v12 = [v11 viewController];
      [v10 palettePopoverSourceRectToPresentViewController:v12];
      x = v13;
      y = v14;
      width = v15;
      height = v16;
    }

    goto LABEL_5;
  }

LABEL_6:
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_popoverPresentingSourceView
{
  v2 = self;
  v3 = [(PKPaletteToolPreview *)v2 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v4 = [(PKPaletteToolPreview *)v2 delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PKPaletteToolPreview *)v2 delegate];
    v7 = [v6 wantsCustomPalettePopoverPresentationSource];

    if (v7)
    {
      v8 = [(PKPaletteToolPreview *)v2 delegate];
      v3 = [v8 palettePopoverSourceView];

      if (v3)
      {
        v3 = v3;

        v2 = v3;
      }

      goto LABEL_6;
    }
  }

LABEL_7:

  return v2;
}

- (void)colorPickerControllerDidChangeSelectedColor:(id)a3 isContinuousColorSelection:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 colorPicker];
  v14 = [v6 selectedColor];

  v7 = [(PKPaletteToolPreview *)self toolView];
  v8 = [v7 tool];
  v9 = [v8 isInkingTool];

  if (v9)
  {
    v10 = [(PKPaletteToolPreview *)self toolView];
    v11 = [v10 tool];
    v12 = [v11 inkingTool];
    [v12 setInkColor:v14];
  }

  v13 = [(PKPaletteToolPreview *)self delegate];
  [v13 toolPreviewDidChangeToolColor:self isContinuousColorSelection:v4];
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(PKPaletteToolPreview *)self colorPickerController];
  v5 = [v4 viewController];

  if (v5)
  {
    v6 = [(PKPaletteToolPreview *)self colorPickerController];
    v7 = [v6 viewController];
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }

  else if (v8)
  {
    v8[2]();
  }
}

- (PKPalettePopoverPresenting)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end