@interface PKPaletteMoreOptionsViewController
- (BOOL)_isCellInstalled:(id)a3;
- (BOOL)_shouldInstallOpenPencilSettingsCell;
- (BOOL)_shouldInstallResetHandwritingEducationPanelCell;
- (BOOL)_shouldInstallTapToRadarCell;
- (BOOL)_shouldRemoveOpenPencilSettingsCell;
- (BOOL)_shouldRemoveResetHandwritingEducationPanelCell;
- (BOOL)_shouldRemoveTapToRadarCell;
- (PKPaletteMoreOptionsViewControllerDelegate)delegate;
- (double)_contentSizeMinWidth;
- (void)_autoMinimizeCellDidChangeValue:(id)a3;
- (void)_autoRefineCellDidChangeValue:(id)a3;
- (void)_fingerDrawsCellDidChangeValue:(id)a3;
- (void)_handleOpenPencilSettingsCellTapped;
- (void)_handleResetHandwritingEducationPaneCellTapped;
- (void)_handleResetImageWandOnboardingCellTapped:(id)a3;
- (void)_handleTapToRadarCellTapped;
- (void)_proofreadingCellDidChangeValue:(id)a3;
- (void)_reloadItems;
- (void)_reloadResetImageWandOnboardingCell;
- (void)_updateAutoMinimizeCell;
- (void)_updateAutoRefineCell;
- (void)_updateContentSize;
- (void)_updateFingerDrawsCell;
- (void)_updateProofreadingCell;
- (void)setAutoHideOn:(BOOL)a3;
- (void)setExternalTraitCollection:(id)a3;
- (void)setIsAutoRefineOn:(BOOL)a3;
- (void)setIsFingerDrawsOn:(BOOL)a3;
- (void)setIsProofreadingOn:(BOOL)a3;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3;
- (void)setShouldShowFingerDrawsOption:(BOOL)a3;
- (void)setShouldShowOpenPencilSettingsOption:(BOOL)a3;
- (void)setShouldShowResetHandwritingEducationPane:(BOOL)a3;
- (void)setShouldShowTapToRadarOption:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKPaletteMoreOptionsViewController

- (void)viewDidLoad
{
  v90[4] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = PKPaletteMoreOptionsViewController;
  [(PKPaletteMoreOptionsViewController *)&v88 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PKPaletteMoreOptionsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [(PKPaletteMoreOptionsViewController *)self setScrollView:v5];

  v6 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [v7 setShowsVerticalScrollIndicator:1];

  v8 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [v8 setShowsHorizontalScrollIndicator:0];

  v9 = [(PKPaletteMoreOptionsViewController *)self view];
  v10 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [v9 addSubview:v10];

  v11 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v12 = [v11 bottomAnchor];
  v13 = [(PKPaletteMoreOptionsViewController *)self view];
  v14 = [v13 safeAreaLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v12 constraintEqualToAnchor:v15 constant:-12.0];

  LODWORD(v17) = 1144750080;
  v18 = v16;
  v87 = v16;
  [v16 setPriority:v17];
  v71 = MEMORY[0x1E696ACD8];
  v85 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v81 = [v85 leadingAnchor];
  v83 = [(PKPaletteMoreOptionsViewController *)self view];
  v79 = [v83 safeAreaLayoutGuide];
  v77 = [v79 leadingAnchor];
  v75 = [v81 constraintEqualToAnchor:v77];
  v90[0] = v75;
  v73 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v67 = [v73 trailingAnchor];
  v69 = [(PKPaletteMoreOptionsViewController *)self view];
  v65 = [v69 safeAreaLayoutGuide];
  v19 = [v65 trailingAnchor];
  v20 = [v67 constraintEqualToAnchor:v19];
  v90[1] = v20;
  v21 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v22 = [v21 topAnchor];
  v23 = [(PKPaletteMoreOptionsViewController *)self view];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 topAnchor];
  v26 = [v22 constraintEqualToAnchor:v25];
  v90[2] = v26;
  v90[3] = v18;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  [v71 activateConstraints:v27];

  v28 = objc_alloc(MEMORY[0x1E69DCF90]);
  v29 = [v28 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PKPaletteMoreOptionsViewController *)self setStackView:v29];

  v30 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v30 setDistribution:0];

  v31 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v31 setAlignment:0];

  v32 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v32 setAxis:1];

  v33 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v34 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v35 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v34 addSubview:v35];

  v86 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v82 = [v86 leadingAnchor];
  v84 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v80 = [v84 leadingAnchor];
  v78 = [v82 constraintEqualToAnchor:v80];
  v89[0] = v78;
  v76 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v72 = [v76 trailingAnchor];
  v74 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v70 = [v74 trailingAnchor];
  v68 = [v72 constraintEqualToAnchor:v70];
  v89[1] = v68;
  v66 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v63 = [v66 topAnchor];
  v64 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v62 = [v64 topAnchor];
  v61 = [v63 constraintEqualToAnchor:v62 constant:12.0];
  v89[2] = v61;
  v60 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v59 = [v60 bottomAnchor];
  v36 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v37 = [v36 bottomAnchor];
  v38 = [v59 constraintEqualToAnchor:v37];
  v89[3] = v38;
  v39 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v40 = [v39 widthAnchor];
  v41 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  v42 = [v41 widthAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v89[4] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  [(PKPaletteMoreOptionsViewController *)self setStackViewPositioningConstraints:v44];

  v45 = MEMORY[0x1E696ACD8];
  v46 = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
  [v45 activateConstraints:v46];

  v47 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeAndFingerDrawsCellsContainer:v47];

  v48 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [v48 setAxis:1];

  v49 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [v49 spacing];
  v51 = v50;
  v52 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [v52 setSpacing:v51];

  v53 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v54 = [v53 distribution];
  v55 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [v55 setDistribution:v54];

  v56 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v57 = [v56 alignment];
  v58 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [v58 setAlignment:v57];

  [(PKPaletteMoreOptionsViewController *)self _reloadItems];
}

- (void)setShouldShowFingerDrawsOption:(BOOL)a3
{
  if (self->_shouldShowFingerDrawsOption != a3)
  {
    self->_shouldShowFingerDrawsOption = a3;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (void)setIsFingerDrawsOn:(BOOL)a3
{
  if (self->_isFingerDrawsOn != a3)
  {
    v4 = a3;
    self->_isFingerDrawsOn = a3;
    v5 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    if (v5)
    {
      v6 = v5;
      [v5[52] setOn:v4];
      v5 = v6;
    }
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3
{
  if (self->_shouldAlwaysShowAutoRefineControls != a3)
  {
    self->_shouldAlwaysShowAutoRefineControls = a3;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (void)setExternalTraitCollection:(id)a3
{
  v5 = a3;
  if (self->_externalTraitCollection != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_externalTraitCollection, a3);
    [(PKPaletteMoreOptionsViewController *)self _updateContentSize];
    v5 = v6;
  }
}

- (void)setAutoHideOn:(BOOL)a3
{
  if (self->_autoHideOn != a3)
  {
    self->_autoHideOn = a3;
    [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  }
}

- (void)_updateAutoMinimizeCell
{
  v3 = [(PKPaletteMoreOptionsViewController *)self isAutoHideOn];
  v4 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
  if (v4)
  {
    v5 = v4;
    [v4[52] setOn:v3];
    v4 = v5;
  }
}

- (void)_updateFingerDrawsCell
{
  v3 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];

  if (!v3)
  {
    v4 = _PencilKitBundle();
    v5 = [v4 localizedStringForKey:@"Draw with Finger" value:@"Draw with Finger" table:@"Localizable"];

    v6 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v5 subtitle:0 target:self action:sel__fingerDrawsCellDidChangeValue_];
    [(PKPaletteMoreOptionsViewController *)self setFingerDrawsCell:v6];

    v7 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    [v7 setAccessibilityIdentifier:@"Draw-with-Finger-Switch"];
  }

  v8 = [(PKPaletteMoreOptionsViewController *)self isFingerDrawsOn];
  v9 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
  if (v9)
  {
    v10 = v9;
    [v9[52] setOn:v8];
    v9 = v10;
  }
}

- (void)_updateAutoRefineCell
{
  v3 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];

  if (v3)
  {
    v4 = [(PKPaletteMoreOptionsViewController *)self isAutoRefineOn];
    v5 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    if (v5)
    {
      v6 = v5;
      [v5[52] setOn:v4];
      v5 = v6;
    }
  }
}

- (void)_autoMinimizeCellDidChangeValue:(id)a3
{
  self->_autoHideOn = [a3 isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  v4 = [(PKPaletteMoreOptionsViewController *)self delegate];
  [v4 moreOptionsViewControllerDidToggleAutoHide:self];
}

- (void)_fingerDrawsCellDidChangeValue:(id)a3
{
  self->_isFingerDrawsOn = [a3 isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateFingerDrawsCell];
  v4 = [(PKPaletteMoreOptionsViewController *)self delegate];
  [v4 moreOptionsViewControllerDidToggleFingerDraws:self];
}

- (void)_autoRefineCellDidChangeValue:(id)a3
{
  self->_isAutoRefineOn = [a3 isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateAutoRefineCell];
  v4 = [(PKPaletteMoreOptionsViewController *)self delegate];
  [v4 moreOptionsViewControllerDidToggleAutoRefine:self];
}

- (void)_updateProofreadingCell
{
  v3 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];

  if (v3)
  {
    v4 = [(PKPaletteMoreOptionsViewController *)self isProofreadingOn];
    v5 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
    if (v5)
    {
      v6 = v5;
      [v5[52] setOn:v4];
      v5 = v6;
    }
  }
}

- (void)_proofreadingCellDidChangeValue:(id)a3
{
  self->_isProofreadingOn = [a3 isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateProofreadingCell];
  v4 = [(PKPaletteMoreOptionsViewController *)self delegate];
  [v4 moreOptionsViewControllerDidToggleProofreading:self];
}

- (void)setIsProofreadingOn:(BOOL)a3
{
  if (self->_isProofreadingOn != a3)
  {
    v4 = a3;
    self->_isProofreadingOn = a3;
    v5 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
    if (v5)
    {
      v6 = v5;
      [v5[52] setOn:v4];
      v5 = v6;
    }
  }
}

- (void)setShouldShowTapToRadarOption:(BOOL)a3
{
  if (self->_shouldShowTapToRadarOption != a3)
  {
    self->_shouldShowTapToRadarOption = a3;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallTapToRadarCell
{
  if (os_variant_has_internal_diagnostics() && [(PKPaletteMoreOptionsViewController *)self shouldShowTapToRadarOption])
  {
    v5 = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    v3 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v5];
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_shouldRemoveTapToRadarCell
{
  if ((os_variant_has_internal_diagnostics() & 1) != 0 || [(PKPaletteMoreOptionsViewController *)self shouldShowTapToRadarOption])
  {
    return 0;
  }

  v4 = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v4];

  return v5;
}

- (void)_handleTapToRadarCellTapped
{
  v3 = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [v5 moreOptionsViewControllerDidSelectTapToRadar:self];
  }
}

- (void)setShouldShowResetHandwritingEducationPane:(BOOL)a3
{
  if (self->_shouldShowResetHandwritingEducationPane != a3)
  {
    self->_shouldShowResetHandwritingEducationPane = a3;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallResetHandwritingEducationPanelCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowResetHandwritingEducationPane])
  {
    v3 = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    v4 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v3];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_shouldRemoveResetHandwritingEducationPanelCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowResetHandwritingEducationPane])
  {
    return 0;
  }

  v4 = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v4];

  return v5;
}

- (void)_handleResetHandwritingEducationPaneCellTapped
{
  v3 = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [v5 moreOptionsViewControllerDidSelectResetHandwritingEducationPane:self];
  }
}

- (void)setShouldShowOpenPencilSettingsOption:(BOOL)a3
{
  if (self->_shouldShowOpenPencilSettingsOption != a3)
  {
    self->_shouldShowOpenPencilSettingsOption = a3;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallOpenPencilSettingsCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowOpenPencilSettingsOption])
  {
    v3 = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    v4 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v3];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_shouldRemoveOpenPencilSettingsCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowOpenPencilSettingsOption])
  {
    return 0;
  }

  v4 = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v4];

  return v5;
}

- (void)_handleOpenPencilSettingsCellTapped
{
  v3 = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [v5 moreOptionsViewControllerDidSelectOpenPencilSettings:self];
  }
}

- (void)_reloadItems
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteMoreOptionsViewController *)self stackView];

  if (!v3)
  {
    return;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v4 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v5 = [v4 arrangedSubviews];

  v6 = [v5 countByEnumeratingWithState:&v119 objects:v125 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v120;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v120 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v119 + 1) + 8 * i);
        v11 = [(PKPaletteMoreOptionsViewController *)self stackView];
        [v11 removeArrangedSubview:v10];

        [v10 removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v119 objects:v125 count:16];
    }

    while (v7);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v12 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  v13 = [v12 arrangedSubviews];

  v14 = [v13 countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v116;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v116 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v115 + 1) + 8 * j);
        v19 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
        [v19 removeArrangedSubview:v18];

        [v18 removeFromSuperview];
      }

      v15 = [v13 countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v15);
  }

  if ([(PKPaletteMoreOptionsViewController *)self shouldShowAutoMinimizeOption]&& ([(PKPaletteMoreOptionsViewController *)self autoMinimizeCell], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v20], v20, !v21))
  {
    v25 = _PencilKitBundle();
    v26 = [v25 localizedStringForKey:@"Auto-Minimize" value:@"Auto-Minimize" table:@"Localizable"];

    v27 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v26 subtitle:0 target:self action:sel__autoMinimizeCellDidChangeValue_];
    [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeCell:v27];

    v28 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    [v28 setAccessibilityIdentifier:@"Auto-minimize-Switch"];

    v29 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    v30 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    [v29 addArrangedSubview:v30];
  }

  else if (![(PKPaletteMoreOptionsViewController *)self shouldShowAutoMinimizeOption])
  {
    v22 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    v23 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v22];

    if (v23)
    {
      v24 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
      [v24 removeFromSuperview];

      [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeCell:0];
    }
  }

  v31 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
  v32 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v31];

  if (v32)
  {
    [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  }

  if ([(PKPaletteMoreOptionsViewController *)self shouldShowFingerDrawsOption])
  {
    [(PKPaletteMoreOptionsViewController *)self _updateFingerDrawsCell];
    v33 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    v34 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    [v33 addArrangedSubview:v34];
  }

  v35 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  v36 = [v35 arrangedSubviews];
  v37 = [v36 count];

  if (v37)
  {
    v38 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v39 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    [v38 addArrangedSubview:v39];
  }

  if (PKIsAutoRefineEnabled() && ((PKCurrentAppSupportsRefinement() & 1) != 0 || self->_shouldAlwaysShowAutoRefineControls) && [objc_opt_class() hasAutoRefineLocaleEnabled])
  {
    if (PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() >= 3)
    {
      v40 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
      v41 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v40];

      if (v41)
      {
        v42 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
        [v42 removeFromSuperview];

        [(PKPaletteMoreOptionsViewController *)self setAutoRefineNotReadyCell:0];
      }

      v43 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];

      if (!v43)
      {
        v44 = _PencilKitBundle();
        v45 = [v44 localizedStringForKey:@"Auto-Refine Handwriting" value:@"Auto-Refine Handwriting" table:@"Localizable"];

        v46 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v45 subtitle:0 target:self action:sel__autoRefineCellDidChangeValue_];
        [(PKPaletteMoreOptionsViewController *)self setAutoRefineCell:v46];

        v47 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
        [v47 setAccessibilityIdentifier:@"Auto-refine-Switch"];
      }

      [(PKPaletteMoreOptionsViewController *)self _updateAutoRefineCell];
      v48 = [(PKPaletteMoreOptionsViewController *)self stackView];
      v49 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    }

    else
    {
      v50 = CHGetPersonalizedSynthesisSupportState();
      if (!PKIsPadDevice() || (v50 - 1) > 1)
      {
        goto LABEL_55;
      }

      v51 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
      v52 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v51];

      if (v52)
      {
        v53 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
        [v53 removeFromSuperview];

        [(PKPaletteMoreOptionsViewController *)self setAutoRefineCell:0];
      }

      v54 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];

      if (!v54)
      {
        v55 = PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() == 2;
        v56 = _PencilKitBundle();
        v57 = [v56 localizedStringForKey:@"Auto-Refine Handwriting" value:@"Auto-Refine Handwriting" table:@"Localizable"];

        if (v55)
        {
          v58 = _PencilKitBundle();
          v59 = v58;
          v60 = @"Auto-Refine will be available in a few minutes.";
        }

        else
        {
          v61 = MGGetBoolAnswer();
          v58 = _PencilKitBundle();
          v59 = v58;
          if (v61)
          {
            v60 = @"Support for improving handwriting legibility will download when connected to WLAN.";
          }

          else
          {
            v60 = @"Support for improving handwriting legibility will download when connected to Wi-Fi.";
          }
        }

        v62 = [v58 localizedStringForKey:v60 value:v60 table:@"Localizable"];

        v63 = [[PKPaletteOptionInfoCell alloc] initWithTitle:v57 detailText:v62];
        [(PKPaletteMoreOptionsViewController *)self setAutoRefineNotReadyCell:v63];

        v64 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
        [v64 setAccessibilityIdentifier:@"Auto-refine-Info"];
      }

      v48 = [(PKPaletteMoreOptionsViewController *)self stackView];
      v49 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
    }

    v65 = v49;
    [v48 addArrangedSubview:v49];
  }

LABEL_55:
  if (PKCurrentDeviceSupportsProofreading() && PKCurrentAppSupportsRefinement())
  {
    v66 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];

    if (!v66)
    {
      v67 = _PencilKitBundle();
      v68 = [v67 localizedStringForKey:@"Check Handwritten Spelling" value:@"Check Handwritten Spelling" table:@"Localizable"];

      v69 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v68 subtitle:0 target:self action:sel__proofreadingCellDidChangeValue_];
      [(PKPaletteMoreOptionsViewController *)self setProofreadingCell:v69];

      v70 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
      [v70 setAccessibilityIdentifier:@"Check-Handwritten-Spelling-Switch"];

      v71 = [(PKPaletteMoreOptionsViewController *)self stackView];
      v72 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
      [v71 addArrangedSubview:v72];
    }

    [(PKPaletteMoreOptionsViewController *)self _updateProofreadingCell];
  }

  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallTapToRadarCell])
  {
    v73 = _PencilKitBundle();
    v74 = [v73 localizedStringForKey:@"Report a Problem…" value:@"Report a Problem…" table:@"Localizable"];

    v75 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v74 target:self action:sel__handleTapToRadarCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setTapToRadarCell:v75];

    v76 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v77 = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    [v76 addArrangedSubview:v77];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveTapToRadarCell])
  {
    v78 = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    [v78 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setTapToRadarCell:0];
  }

  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallResetHandwritingEducationPanelCell])
  {
    v79 = _PencilKitBundle();
    v80 = [v79 localizedStringForKey:@"Reset Handwriting Education Pane" value:@"Reset Handwriting Education Pane" table:@"Localizable"];

    v81 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v80 target:self action:sel__handleResetHandwritingEducationPaneCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setResetHandwritingEducationPaneCell:v81];

    v82 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v83 = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    [v82 addArrangedSubview:v83];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveResetHandwritingEducationPanelCell])
  {
    v84 = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    [v84 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setResetHandwritingEducationPaneCell:0];
  }

  [(PKPaletteMoreOptionsViewController *)self _reloadResetImageWandOnboardingCell];
  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallOpenPencilSettingsCell])
  {
    v85 = _PencilKitBundle();
    v86 = [v85 localizedStringForKey:@"Pencil Settings…" value:@"Pencil Settings…" table:@"Localizable"];

    v87 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v86 target:self action:sel__handleOpenPencilSettingsCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setOpenPencilSettingsCell:v87];

    v88 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v89 = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    [v88 addArrangedSubview:v89];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveOpenPencilSettingsCell])
  {
    v90 = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    [v90 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setOpenPencilSettingsCell:0];
  }

  v91 = [(PKPaletteMoreOptionsViewController *)self stackView];
  v92 = [v91 arrangedSubviews];
  v93 = [v92 count];

  if (v93 >= 2)
  {
    v94 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v95 = [v94 arrangedSubviews];
    v96 = [v95 count];

    if (v96 != 1)
    {
      v97 = 0;
      do
      {
        v98 = objc_alloc_init(PKPaletteOptionCellDividerView);
        [(PKPaletteOptionCellDividerView *)v98 setTranslatesAutoresizingMaskIntoConstraints:0];
        v99 = [(PKPaletteMoreOptionsViewController *)self stackView];
        [v99 insertArrangedSubview:v98 atIndex:v97 + 1];

        v110 = MEMORY[0x1E696ACD8];
        v114 = [(PKPaletteOptionCellDividerView *)v98 heightAnchor];
        v113 = [v114 constraintEqualToConstant:0.5];
        v123[0] = v113;
        v111 = [(PKPaletteOptionCellDividerView *)v98 leadingAnchor];
        v112 = [(PKPaletteMoreOptionsViewController *)self stackView];
        v100 = [v112 leadingAnchor];
        v101 = [v111 constraintEqualToAnchor:v100 constant:16.0];
        v123[1] = v101;
        v102 = [(PKPaletteOptionCellDividerView *)v98 trailingAnchor];
        v103 = [(PKPaletteMoreOptionsViewController *)self stackView];
        v104 = [v103 trailingAnchor];
        v105 = [v102 constraintEqualToAnchor:v104 constant:-16.0];
        v123[2] = v105;
        v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:3];
        [v110 activateConstraints:v106];

        v97 += 2;
        v107 = [(PKPaletteMoreOptionsViewController *)self stackView];
        v108 = [v107 arrangedSubviews];
        v109 = [v108 count] - 1;
      }

      while (v97 < v109);
    }
  }

  [(PKPaletteMoreOptionsViewController *)self _updateContentSize];
}

- (void)_reloadResetImageWandOnboardingCell
{
  v3 = +[PKInternalSettings sharedInstance];
  v4 = [(PKInternalSettings *)v3 showResetImageWandOnboardingInPalette];

  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:self->_resetImageWandOnboardingPaneCell];
  if (!v4 || v5)
  {
    if (v4 & 1 | !v5)
    {
      return;
    }

    [(PKPaletteOptionTitleCell *)self->_resetImageWandOnboardingPaneCell removeFromSuperview];
    resetImageWandOnboardingPaneCell = self->_resetImageWandOnboardingPaneCell;
    self->_resetImageWandOnboardingPaneCell = 0;
  }

  else
  {
    v6 = [[PKPaletteOptionTitleCell alloc] initWithTitle:self target:sel__handleResetImageWandOnboardingCellTapped_ action:?];
    v7 = self->_resetImageWandOnboardingPaneCell;
    self->_resetImageWandOnboardingPaneCell = v6;

    v9 = [(PKPaletteMoreOptionsViewController *)self stackView];
    [(PKPaletteOptionTitleCell *)v9 addArrangedSubview:self->_resetImageWandOnboardingPaneCell];
    resetImageWandOnboardingPaneCell = v9;
  }
}

- (void)_handleResetImageWandOnboardingCellTapped:(id)a3
{
  if (os_variant_has_internal_diagnostics())
  {
    +[PKImageWandOnboardingController resetOnboarding];

    [(PKPaletteMoreOptionsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_isCellInstalled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaletteMoreOptionsViewController *)self stackView];
    v6 = [v5 arrangedSubviews];
    if ([v6 containsObject:v4])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
      v9 = [v8 arrangedSubviews];
      v7 = [v9 containsObject:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateContentSize
{
  v3 = [(PKPaletteMoreOptionsViewController *)self stackView];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD8];
    v5 = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
    [v4 deactivateConstraints:v5];

    v6 = [(PKPaletteMoreOptionsViewController *)self stackView];
    [v6 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v8 = v7;
    v10 = v9;

    [(PKPaletteMoreOptionsViewController *)self _contentSizeMinWidth];
    if (v11 < v8)
    {
      v11 = v8;
    }

    if (v11 > 500.0)
    {
      v11 = 500.0;
    }

    [(PKPaletteMoreOptionsViewController *)self setPreferredContentSize:v11, v10 + 24.0];
    v12 = MEMORY[0x1E696ACD8];
    v13 = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
    [v12 activateConstraints:v13];
  }
}

- (double)_contentSizeMinWidth
{
  v2 = [(PKPaletteMoreOptionsViewController *)self externalTraitCollection];
  if ([v2 horizontalSizeClass] == 1)
  {
    v3 = 200.0;
  }

  else
  {
    v3 = 250.0;
  }

  return v3;
}

- (void)setIsAutoRefineOn:(BOOL)a3
{
  if (self->_isAutoRefineOn != a3)
  {
    v4 = a3;
    self->_isAutoRefineOn = a3;
    v5 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    if (v5)
    {
      v6 = v5;
      [v5[52] setOn:v4];
      v5 = v6;
    }
  }
}

- (PKPaletteMoreOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end