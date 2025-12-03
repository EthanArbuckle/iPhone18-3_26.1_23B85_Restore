@interface PKPaletteMoreOptionsViewController
- (BOOL)_isCellInstalled:(id)installed;
- (BOOL)_shouldInstallOpenPencilSettingsCell;
- (BOOL)_shouldInstallResetHandwritingEducationPanelCell;
- (BOOL)_shouldInstallTapToRadarCell;
- (BOOL)_shouldRemoveOpenPencilSettingsCell;
- (BOOL)_shouldRemoveResetHandwritingEducationPanelCell;
- (BOOL)_shouldRemoveTapToRadarCell;
- (PKPaletteMoreOptionsViewControllerDelegate)delegate;
- (double)_contentSizeMinWidth;
- (void)_autoMinimizeCellDidChangeValue:(id)value;
- (void)_autoRefineCellDidChangeValue:(id)value;
- (void)_fingerDrawsCellDidChangeValue:(id)value;
- (void)_handleOpenPencilSettingsCellTapped;
- (void)_handleResetHandwritingEducationPaneCellTapped;
- (void)_handleResetImageWandOnboardingCellTapped:(id)tapped;
- (void)_handleTapToRadarCellTapped;
- (void)_proofreadingCellDidChangeValue:(id)value;
- (void)_reloadItems;
- (void)_reloadResetImageWandOnboardingCell;
- (void)_updateAutoMinimizeCell;
- (void)_updateAutoRefineCell;
- (void)_updateContentSize;
- (void)_updateFingerDrawsCell;
- (void)_updateProofreadingCell;
- (void)setAutoHideOn:(BOOL)on;
- (void)setExternalTraitCollection:(id)collection;
- (void)setIsAutoRefineOn:(BOOL)on;
- (void)setIsFingerDrawsOn:(BOOL)on;
- (void)setIsProofreadingOn:(BOOL)on;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls;
- (void)setShouldShowFingerDrawsOption:(BOOL)option;
- (void)setShouldShowOpenPencilSettingsOption:(BOOL)option;
- (void)setShouldShowResetHandwritingEducationPane:(BOOL)pane;
- (void)setShouldShowTapToRadarOption:(BOOL)option;
- (void)viewDidLoad;
@end

@implementation PKPaletteMoreOptionsViewController

- (void)viewDidLoad
{
  v90[4] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = PKPaletteMoreOptionsViewController;
  [(PKPaletteMoreOptionsViewController *)&v88 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(PKPaletteMoreOptionsViewController *)self view];
  [view setBackgroundColor:clearColor];

  v5 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [(PKPaletteMoreOptionsViewController *)self setScrollView:v5];

  scrollView = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView2 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [scrollView2 setShowsVerticalScrollIndicator:1];

  scrollView3 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [scrollView3 setShowsHorizontalScrollIndicator:0];

  view2 = [(PKPaletteMoreOptionsViewController *)self view];
  scrollView4 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  [view2 addSubview:scrollView4];

  scrollView5 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  bottomAnchor = [scrollView5 bottomAnchor];
  view3 = [(PKPaletteMoreOptionsViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];

  LODWORD(v17) = 1144750080;
  v18 = v16;
  v87 = v16;
  [v16 setPriority:v17];
  v71 = MEMORY[0x1E696ACD8];
  scrollView6 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  leadingAnchor = [scrollView6 leadingAnchor];
  view4 = [(PKPaletteMoreOptionsViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v75 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v90[0] = v75;
  scrollView7 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  trailingAnchor = [scrollView7 trailingAnchor];
  view5 = [(PKPaletteMoreOptionsViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v90[1] = v20;
  scrollView8 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  topAnchor = [scrollView8 topAnchor];
  view6 = [(PKPaletteMoreOptionsViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide4 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v90[2] = v26;
  v90[3] = v18;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  [v71 activateConstraints:v27];

  v28 = objc_alloc(MEMORY[0x1E69DCF90]);
  v29 = [v28 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PKPaletteMoreOptionsViewController *)self setStackView:v29];

  stackView = [(PKPaletteMoreOptionsViewController *)self stackView];
  [stackView setDistribution:0];

  stackView2 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [stackView2 setAlignment:0];

  stackView3 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [stackView3 setAxis:1];

  stackView4 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [stackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  scrollView9 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  stackView5 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [scrollView9 addSubview:stackView5];

  stackView6 = [(PKPaletteMoreOptionsViewController *)self stackView];
  leadingAnchor3 = [stackView6 leadingAnchor];
  scrollView10 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  leadingAnchor4 = [scrollView10 leadingAnchor];
  v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v89[0] = v78;
  stackView7 = [(PKPaletteMoreOptionsViewController *)self stackView];
  trailingAnchor3 = [stackView7 trailingAnchor];
  scrollView11 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  trailingAnchor4 = [scrollView11 trailingAnchor];
  v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v89[1] = v68;
  stackView8 = [(PKPaletteMoreOptionsViewController *)self stackView];
  topAnchor3 = [stackView8 topAnchor];
  scrollView12 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  topAnchor4 = [scrollView12 topAnchor];
  v61 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
  v89[2] = v61;
  stackView9 = [(PKPaletteMoreOptionsViewController *)self stackView];
  bottomAnchor3 = [stackView9 bottomAnchor];
  scrollView13 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  bottomAnchor4 = [scrollView13 bottomAnchor];
  v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v89[3] = v38;
  stackView10 = [(PKPaletteMoreOptionsViewController *)self stackView];
  widthAnchor = [stackView10 widthAnchor];
  scrollView14 = [(PKPaletteMoreOptionsViewController *)self scrollView];
  widthAnchor2 = [scrollView14 widthAnchor];
  v43 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v89[4] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  [(PKPaletteMoreOptionsViewController *)self setStackViewPositioningConstraints:v44];

  v45 = MEMORY[0x1E696ACD8];
  stackViewPositioningConstraints = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
  [v45 activateConstraints:stackViewPositioningConstraints];

  v47 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeAndFingerDrawsCellsContainer:v47];

  autoMinimizeAndFingerDrawsCellsContainer = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [autoMinimizeAndFingerDrawsCellsContainer setAxis:1];

  stackView11 = [(PKPaletteMoreOptionsViewController *)self stackView];
  [stackView11 spacing];
  v51 = v50;
  autoMinimizeAndFingerDrawsCellsContainer2 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [autoMinimizeAndFingerDrawsCellsContainer2 setSpacing:v51];

  stackView12 = [(PKPaletteMoreOptionsViewController *)self stackView];
  distribution = [stackView12 distribution];
  autoMinimizeAndFingerDrawsCellsContainer3 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [autoMinimizeAndFingerDrawsCellsContainer3 setDistribution:distribution];

  stackView13 = [(PKPaletteMoreOptionsViewController *)self stackView];
  alignment = [stackView13 alignment];
  autoMinimizeAndFingerDrawsCellsContainer4 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  [autoMinimizeAndFingerDrawsCellsContainer4 setAlignment:alignment];

  [(PKPaletteMoreOptionsViewController *)self _reloadItems];
}

- (void)setShouldShowFingerDrawsOption:(BOOL)option
{
  if (self->_shouldShowFingerDrawsOption != option)
  {
    self->_shouldShowFingerDrawsOption = option;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (void)setIsFingerDrawsOn:(BOOL)on
{
  if (self->_isFingerDrawsOn != on)
  {
    onCopy = on;
    self->_isFingerDrawsOn = on;
    fingerDrawsCell = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    if (fingerDrawsCell)
    {
      v6 = fingerDrawsCell;
      [fingerDrawsCell[52] setOn:onCopy];
      fingerDrawsCell = v6;
    }
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls
{
  if (self->_shouldAlwaysShowAutoRefineControls != controls)
  {
    self->_shouldAlwaysShowAutoRefineControls = controls;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (void)setExternalTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_externalTraitCollection != collectionCopy)
  {
    v6 = collectionCopy;
    objc_storeStrong(&self->_externalTraitCollection, collection);
    [(PKPaletteMoreOptionsViewController *)self _updateContentSize];
    collectionCopy = v6;
  }
}

- (void)setAutoHideOn:(BOOL)on
{
  if (self->_autoHideOn != on)
  {
    self->_autoHideOn = on;
    [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  }
}

- (void)_updateAutoMinimizeCell
{
  isAutoHideOn = [(PKPaletteMoreOptionsViewController *)self isAutoHideOn];
  autoMinimizeCell = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
  if (autoMinimizeCell)
  {
    v5 = autoMinimizeCell;
    [autoMinimizeCell[52] setOn:isAutoHideOn];
    autoMinimizeCell = v5;
  }
}

- (void)_updateFingerDrawsCell
{
  fingerDrawsCell = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];

  if (!fingerDrawsCell)
  {
    v4 = _PencilKitBundle();
    v5 = [v4 localizedStringForKey:@"Draw with Finger" value:@"Draw with Finger" table:@"Localizable"];

    v6 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v5 subtitle:0 target:self action:sel__fingerDrawsCellDidChangeValue_];
    [(PKPaletteMoreOptionsViewController *)self setFingerDrawsCell:v6];

    fingerDrawsCell2 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    [fingerDrawsCell2 setAccessibilityIdentifier:@"Draw-with-Finger-Switch"];
  }

  isFingerDrawsOn = [(PKPaletteMoreOptionsViewController *)self isFingerDrawsOn];
  fingerDrawsCell3 = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
  if (fingerDrawsCell3)
  {
    v10 = fingerDrawsCell3;
    [fingerDrawsCell3[52] setOn:isFingerDrawsOn];
    fingerDrawsCell3 = v10;
  }
}

- (void)_updateAutoRefineCell
{
  autoRefineCell = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];

  if (autoRefineCell)
  {
    isAutoRefineOn = [(PKPaletteMoreOptionsViewController *)self isAutoRefineOn];
    autoRefineCell2 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    if (autoRefineCell2)
    {
      v6 = autoRefineCell2;
      [autoRefineCell2[52] setOn:isAutoRefineOn];
      autoRefineCell2 = v6;
    }
  }
}

- (void)_autoMinimizeCellDidChangeValue:(id)value
{
  self->_autoHideOn = [value isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  [delegate moreOptionsViewControllerDidToggleAutoHide:self];
}

- (void)_fingerDrawsCellDidChangeValue:(id)value
{
  self->_isFingerDrawsOn = [value isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateFingerDrawsCell];
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  [delegate moreOptionsViewControllerDidToggleFingerDraws:self];
}

- (void)_autoRefineCellDidChangeValue:(id)value
{
  self->_isAutoRefineOn = [value isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateAutoRefineCell];
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  [delegate moreOptionsViewControllerDidToggleAutoRefine:self];
}

- (void)_updateProofreadingCell
{
  proofreadingCell = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];

  if (proofreadingCell)
  {
    isProofreadingOn = [(PKPaletteMoreOptionsViewController *)self isProofreadingOn];
    proofreadingCell2 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
    if (proofreadingCell2)
    {
      v6 = proofreadingCell2;
      [proofreadingCell2[52] setOn:isProofreadingOn];
      proofreadingCell2 = v6;
    }
  }
}

- (void)_proofreadingCellDidChangeValue:(id)value
{
  self->_isProofreadingOn = [value isOn];
  [(PKPaletteMoreOptionsViewController *)self _updateProofreadingCell];
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  [delegate moreOptionsViewControllerDidToggleProofreading:self];
}

- (void)setIsProofreadingOn:(BOOL)on
{
  if (self->_isProofreadingOn != on)
  {
    onCopy = on;
    self->_isProofreadingOn = on;
    proofreadingCell = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
    if (proofreadingCell)
    {
      v6 = proofreadingCell;
      [proofreadingCell[52] setOn:onCopy];
      proofreadingCell = v6;
    }
  }
}

- (void)setShouldShowTapToRadarOption:(BOOL)option
{
  if (self->_shouldShowTapToRadarOption != option)
  {
    self->_shouldShowTapToRadarOption = option;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallTapToRadarCell
{
  if (os_variant_has_internal_diagnostics() && [(PKPaletteMoreOptionsViewController *)self shouldShowTapToRadarOption])
  {
    tapToRadarCell = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    v3 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:tapToRadarCell];
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

  tapToRadarCell = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:tapToRadarCell];

  return v5;
}

- (void)_handleTapToRadarCellTapped
{
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [delegate2 moreOptionsViewControllerDidSelectTapToRadar:self];
  }
}

- (void)setShouldShowResetHandwritingEducationPane:(BOOL)pane
{
  if (self->_shouldShowResetHandwritingEducationPane != pane)
  {
    self->_shouldShowResetHandwritingEducationPane = pane;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallResetHandwritingEducationPanelCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowResetHandwritingEducationPane])
  {
    resetHandwritingEducationPaneCell = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    v4 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:resetHandwritingEducationPaneCell];
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

  resetHandwritingEducationPaneCell = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:resetHandwritingEducationPaneCell];

  return v5;
}

- (void)_handleResetHandwritingEducationPaneCellTapped
{
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [delegate2 moreOptionsViewControllerDidSelectResetHandwritingEducationPane:self];
  }
}

- (void)setShouldShowOpenPencilSettingsOption:(BOOL)option
{
  if (self->_shouldShowOpenPencilSettingsOption != option)
  {
    self->_shouldShowOpenPencilSettingsOption = option;
    [(PKPaletteMoreOptionsViewController *)self _reloadItems];
  }
}

- (BOOL)_shouldInstallOpenPencilSettingsCell
{
  if ([(PKPaletteMoreOptionsViewController *)self shouldShowOpenPencilSettingsOption])
  {
    openPencilSettingsCell = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    v4 = ![(PKPaletteMoreOptionsViewController *)self _isCellInstalled:openPencilSettingsCell];
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

  openPencilSettingsCell = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:openPencilSettingsCell];

  return v5;
}

- (void)_handleOpenPencilSettingsCellTapped
{
  delegate = [(PKPaletteMoreOptionsViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteMoreOptionsViewController *)self delegate];
    [delegate2 moreOptionsViewControllerDidSelectOpenPencilSettings:self];
  }
}

- (void)_reloadItems
{
  v126 = *MEMORY[0x1E69E9840];
  stackView = [(PKPaletteMoreOptionsViewController *)self stackView];

  if (!stackView)
  {
    return;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  stackView2 = [(PKPaletteMoreOptionsViewController *)self stackView];
  arrangedSubviews = [stackView2 arrangedSubviews];

  v6 = [arrangedSubviews countByEnumeratingWithState:&v119 objects:v125 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v10 = *(*(&v119 + 1) + 8 * i);
        stackView3 = [(PKPaletteMoreOptionsViewController *)self stackView];
        [stackView3 removeArrangedSubview:v10];

        [v10 removeFromSuperview];
      }

      v7 = [arrangedSubviews countByEnumeratingWithState:&v119 objects:v125 count:16];
    }

    while (v7);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  autoMinimizeAndFingerDrawsCellsContainer = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  arrangedSubviews2 = [autoMinimizeAndFingerDrawsCellsContainer arrangedSubviews];

  v14 = [arrangedSubviews2 countByEnumeratingWithState:&v115 objects:v124 count:16];
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
          objc_enumerationMutation(arrangedSubviews2);
        }

        v18 = *(*(&v115 + 1) + 8 * j);
        autoMinimizeAndFingerDrawsCellsContainer2 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
        [autoMinimizeAndFingerDrawsCellsContainer2 removeArrangedSubview:v18];

        [v18 removeFromSuperview];
      }

      v15 = [arrangedSubviews2 countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v15);
  }

  if ([(PKPaletteMoreOptionsViewController *)self shouldShowAutoMinimizeOption]&& ([(PKPaletteMoreOptionsViewController *)self autoMinimizeCell], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:v20], v20, !v21))
  {
    v25 = _PencilKitBundle();
    v26 = [v25 localizedStringForKey:@"Auto-Minimize" value:@"Auto-Minimize" table:@"Localizable"];

    v27 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v26 subtitle:0 target:self action:sel__autoMinimizeCellDidChangeValue_];
    [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeCell:v27];

    autoMinimizeCell = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    [autoMinimizeCell setAccessibilityIdentifier:@"Auto-minimize-Switch"];

    autoMinimizeAndFingerDrawsCellsContainer3 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    autoMinimizeCell2 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    [autoMinimizeAndFingerDrawsCellsContainer3 addArrangedSubview:autoMinimizeCell2];
  }

  else if (![(PKPaletteMoreOptionsViewController *)self shouldShowAutoMinimizeOption])
  {
    autoMinimizeCell3 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
    v23 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:autoMinimizeCell3];

    if (v23)
    {
      autoMinimizeCell4 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
      [autoMinimizeCell4 removeFromSuperview];

      [(PKPaletteMoreOptionsViewController *)self setAutoMinimizeCell:0];
    }
  }

  autoMinimizeCell5 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeCell];
  v32 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:autoMinimizeCell5];

  if (v32)
  {
    [(PKPaletteMoreOptionsViewController *)self _updateAutoMinimizeCell];
  }

  if ([(PKPaletteMoreOptionsViewController *)self shouldShowFingerDrawsOption])
  {
    [(PKPaletteMoreOptionsViewController *)self _updateFingerDrawsCell];
    autoMinimizeAndFingerDrawsCellsContainer4 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    fingerDrawsCell = [(PKPaletteMoreOptionsViewController *)self fingerDrawsCell];
    [autoMinimizeAndFingerDrawsCellsContainer4 addArrangedSubview:fingerDrawsCell];
  }

  autoMinimizeAndFingerDrawsCellsContainer5 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
  arrangedSubviews3 = [autoMinimizeAndFingerDrawsCellsContainer5 arrangedSubviews];
  v37 = [arrangedSubviews3 count];

  if (v37)
  {
    stackView4 = [(PKPaletteMoreOptionsViewController *)self stackView];
    autoMinimizeAndFingerDrawsCellsContainer6 = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
    [stackView4 addArrangedSubview:autoMinimizeAndFingerDrawsCellsContainer6];
  }

  if (PKIsAutoRefineEnabled() && ((PKCurrentAppSupportsRefinement() & 1) != 0 || self->_shouldAlwaysShowAutoRefineControls) && [objc_opt_class() hasAutoRefineLocaleEnabled])
  {
    if (PKIsPadDevice() && CHGetPersonalizedSynthesisSupportState() >= 3)
    {
      autoRefineNotReadyCell = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
      v41 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:autoRefineNotReadyCell];

      if (v41)
      {
        autoRefineNotReadyCell2 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
        [autoRefineNotReadyCell2 removeFromSuperview];

        [(PKPaletteMoreOptionsViewController *)self setAutoRefineNotReadyCell:0];
      }

      autoRefineCell = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];

      if (!autoRefineCell)
      {
        v44 = _PencilKitBundle();
        v45 = [v44 localizedStringForKey:@"Auto-Refine Handwriting" value:@"Auto-Refine Handwriting" table:@"Localizable"];

        v46 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v45 subtitle:0 target:self action:sel__autoRefineCellDidChangeValue_];
        [(PKPaletteMoreOptionsViewController *)self setAutoRefineCell:v46];

        autoRefineCell2 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
        [autoRefineCell2 setAccessibilityIdentifier:@"Auto-refine-Switch"];
      }

      [(PKPaletteMoreOptionsViewController *)self _updateAutoRefineCell];
      stackView5 = [(PKPaletteMoreOptionsViewController *)self stackView];
      autoRefineCell3 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    }

    else
    {
      v50 = CHGetPersonalizedSynthesisSupportState();
      if (!PKIsPadDevice() || (v50 - 1) > 1)
      {
        goto LABEL_55;
      }

      autoRefineCell4 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
      v52 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:autoRefineCell4];

      if (v52)
      {
        autoRefineCell5 = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
        [autoRefineCell5 removeFromSuperview];

        [(PKPaletteMoreOptionsViewController *)self setAutoRefineCell:0];
      }

      autoRefineNotReadyCell3 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];

      if (!autoRefineNotReadyCell3)
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

        autoRefineNotReadyCell4 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
        [autoRefineNotReadyCell4 setAccessibilityIdentifier:@"Auto-refine-Info"];
      }

      stackView5 = [(PKPaletteMoreOptionsViewController *)self stackView];
      autoRefineCell3 = [(PKPaletteMoreOptionsViewController *)self autoRefineNotReadyCell];
    }

    v65 = autoRefineCell3;
    [stackView5 addArrangedSubview:autoRefineCell3];
  }

LABEL_55:
  if (PKCurrentDeviceSupportsProofreading() && PKCurrentAppSupportsRefinement())
  {
    proofreadingCell = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];

    if (!proofreadingCell)
    {
      v67 = _PencilKitBundle();
      v68 = [v67 localizedStringForKey:@"Check Handwritten Spelling" value:@"Check Handwritten Spelling" table:@"Localizable"];

      v69 = [[PKPaletteOptionSwitchCell alloc] initWithTitle:v68 subtitle:0 target:self action:sel__proofreadingCellDidChangeValue_];
      [(PKPaletteMoreOptionsViewController *)self setProofreadingCell:v69];

      proofreadingCell2 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
      [proofreadingCell2 setAccessibilityIdentifier:@"Check-Handwritten-Spelling-Switch"];

      stackView6 = [(PKPaletteMoreOptionsViewController *)self stackView];
      proofreadingCell3 = [(PKPaletteMoreOptionsViewController *)self proofreadingCell];
      [stackView6 addArrangedSubview:proofreadingCell3];
    }

    [(PKPaletteMoreOptionsViewController *)self _updateProofreadingCell];
  }

  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallTapToRadarCell])
  {
    v73 = _PencilKitBundle();
    v74 = [v73 localizedStringForKey:@"Report a Problem…" value:@"Report a Problem…" table:@"Localizable"];

    v75 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v74 target:self action:sel__handleTapToRadarCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setTapToRadarCell:v75];

    stackView7 = [(PKPaletteMoreOptionsViewController *)self stackView];
    tapToRadarCell = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    [stackView7 addArrangedSubview:tapToRadarCell];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveTapToRadarCell])
  {
    tapToRadarCell2 = [(PKPaletteMoreOptionsViewController *)self tapToRadarCell];
    [tapToRadarCell2 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setTapToRadarCell:0];
  }

  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallResetHandwritingEducationPanelCell])
  {
    v79 = _PencilKitBundle();
    v80 = [v79 localizedStringForKey:@"Reset Handwriting Education Pane" value:@"Reset Handwriting Education Pane" table:@"Localizable"];

    v81 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v80 target:self action:sel__handleResetHandwritingEducationPaneCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setResetHandwritingEducationPaneCell:v81];

    stackView8 = [(PKPaletteMoreOptionsViewController *)self stackView];
    resetHandwritingEducationPaneCell = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    [stackView8 addArrangedSubview:resetHandwritingEducationPaneCell];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveResetHandwritingEducationPanelCell])
  {
    resetHandwritingEducationPaneCell2 = [(PKPaletteMoreOptionsViewController *)self resetHandwritingEducationPaneCell];
    [resetHandwritingEducationPaneCell2 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setResetHandwritingEducationPaneCell:0];
  }

  [(PKPaletteMoreOptionsViewController *)self _reloadResetImageWandOnboardingCell];
  if ([(PKPaletteMoreOptionsViewController *)self _shouldInstallOpenPencilSettingsCell])
  {
    v85 = _PencilKitBundle();
    v86 = [v85 localizedStringForKey:@"Pencil Settings…" value:@"Pencil Settings…" table:@"Localizable"];

    v87 = [[PKPaletteOptionTitleCell alloc] initWithTitle:v86 target:self action:sel__handleOpenPencilSettingsCellTapped];
    [(PKPaletteMoreOptionsViewController *)self setOpenPencilSettingsCell:v87];

    stackView9 = [(PKPaletteMoreOptionsViewController *)self stackView];
    openPencilSettingsCell = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    [stackView9 addArrangedSubview:openPencilSettingsCell];
  }

  else if ([(PKPaletteMoreOptionsViewController *)self _shouldRemoveOpenPencilSettingsCell])
  {
    openPencilSettingsCell2 = [(PKPaletteMoreOptionsViewController *)self openPencilSettingsCell];
    [openPencilSettingsCell2 removeFromSuperview];

    [(PKPaletteMoreOptionsViewController *)self setOpenPencilSettingsCell:0];
  }

  stackView10 = [(PKPaletteMoreOptionsViewController *)self stackView];
  arrangedSubviews4 = [stackView10 arrangedSubviews];
  v93 = [arrangedSubviews4 count];

  if (v93 >= 2)
  {
    stackView11 = [(PKPaletteMoreOptionsViewController *)self stackView];
    arrangedSubviews5 = [stackView11 arrangedSubviews];
    v96 = [arrangedSubviews5 count];

    if (v96 != 1)
    {
      v97 = 0;
      do
      {
        v98 = objc_alloc_init(PKPaletteOptionCellDividerView);
        [(PKPaletteOptionCellDividerView *)v98 setTranslatesAutoresizingMaskIntoConstraints:0];
        stackView12 = [(PKPaletteMoreOptionsViewController *)self stackView];
        [stackView12 insertArrangedSubview:v98 atIndex:v97 + 1];

        v110 = MEMORY[0x1E696ACD8];
        heightAnchor = [(PKPaletteOptionCellDividerView *)v98 heightAnchor];
        v113 = [heightAnchor constraintEqualToConstant:0.5];
        v123[0] = v113;
        leadingAnchor = [(PKPaletteOptionCellDividerView *)v98 leadingAnchor];
        stackView13 = [(PKPaletteMoreOptionsViewController *)self stackView];
        leadingAnchor2 = [stackView13 leadingAnchor];
        v101 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
        v123[1] = v101;
        trailingAnchor = [(PKPaletteOptionCellDividerView *)v98 trailingAnchor];
        stackView14 = [(PKPaletteMoreOptionsViewController *)self stackView];
        trailingAnchor2 = [stackView14 trailingAnchor];
        v105 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
        v123[2] = v105;
        v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:3];
        [v110 activateConstraints:v106];

        v97 += 2;
        stackView15 = [(PKPaletteMoreOptionsViewController *)self stackView];
        arrangedSubviews6 = [stackView15 arrangedSubviews];
        v109 = [arrangedSubviews6 count] - 1;
      }

      while (v97 < v109);
    }
  }

  [(PKPaletteMoreOptionsViewController *)self _updateContentSize];
}

- (void)_reloadResetImageWandOnboardingCell
{
  v3 = +[PKInternalSettings sharedInstance];
  showResetImageWandOnboardingInPalette = [(PKInternalSettings *)v3 showResetImageWandOnboardingInPalette];

  v5 = [(PKPaletteMoreOptionsViewController *)self _isCellInstalled:self->_resetImageWandOnboardingPaneCell];
  if (!showResetImageWandOnboardingInPalette || v5)
  {
    if (showResetImageWandOnboardingInPalette & 1 | !v5)
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

    stackView = [(PKPaletteMoreOptionsViewController *)self stackView];
    [(PKPaletteOptionTitleCell *)stackView addArrangedSubview:self->_resetImageWandOnboardingPaneCell];
    resetImageWandOnboardingPaneCell = stackView;
  }
}

- (void)_handleResetImageWandOnboardingCellTapped:(id)tapped
{
  if (os_variant_has_internal_diagnostics())
  {
    +[PKImageWandOnboardingController resetOnboarding];

    [(PKPaletteMoreOptionsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)_isCellInstalled:(id)installed
{
  installedCopy = installed;
  if (installedCopy)
  {
    stackView = [(PKPaletteMoreOptionsViewController *)self stackView];
    arrangedSubviews = [stackView arrangedSubviews];
    if ([arrangedSubviews containsObject:installedCopy])
    {
      v7 = 1;
    }

    else
    {
      autoMinimizeAndFingerDrawsCellsContainer = [(PKPaletteMoreOptionsViewController *)self autoMinimizeAndFingerDrawsCellsContainer];
      arrangedSubviews2 = [autoMinimizeAndFingerDrawsCellsContainer arrangedSubviews];
      v7 = [arrangedSubviews2 containsObject:installedCopy];
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
  stackView = [(PKPaletteMoreOptionsViewController *)self stackView];

  if (stackView)
  {
    v4 = MEMORY[0x1E696ACD8];
    stackViewPositioningConstraints = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
    [v4 deactivateConstraints:stackViewPositioningConstraints];

    stackView2 = [(PKPaletteMoreOptionsViewController *)self stackView];
    [stackView2 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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
    stackViewPositioningConstraints2 = [(PKPaletteMoreOptionsViewController *)self stackViewPositioningConstraints];
    [v12 activateConstraints:stackViewPositioningConstraints2];
  }
}

- (double)_contentSizeMinWidth
{
  externalTraitCollection = [(PKPaletteMoreOptionsViewController *)self externalTraitCollection];
  if ([externalTraitCollection horizontalSizeClass] == 1)
  {
    v3 = 200.0;
  }

  else
  {
    v3 = 250.0;
  }

  return v3;
}

- (void)setIsAutoRefineOn:(BOOL)on
{
  if (self->_isAutoRefineOn != on)
  {
    onCopy = on;
    self->_isAutoRefineOn = on;
    autoRefineCell = [(PKPaletteMoreOptionsViewController *)self autoRefineCell];
    if (autoRefineCell)
    {
      v6 = autoRefineCell;
      [autoRefineCell[52] setOn:onCopy];
      autoRefineCell = v6;
    }
  }
}

- (PKPaletteMoreOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end