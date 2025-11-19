@interface AKToolbarView
+ (id)redoButtonImageWithStyle:(unint64_t)a3;
+ (id)undoButtonImageWithStyle:(unint64_t)a3;
- (AKController)annotationController;
- (AKToolbarView)initWithFrame:(CGRect)a3;
- (AKToolbarViewOpacityEditingDelegate)opacityEditingDelegate;
- (BOOL)_hasSelectedAnnotations;
- (BOOL)_setToolPickerVisible:(BOOL)a3 forResponder:(id)a4;
- (BOOL)isPresentingPopovers;
- (BOOL)isToolPickerVisible;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)shouldHide;
- (BOOL)shouldUseCompactHeight;
- (BOOL)shouldUseCompactWidth;
- (CGRect)frameObscuredInView:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (PKToolPicker)toolPicker;
- (UIEdgeInsets)_safeAreaInsetsWithCachingIfNeeded;
- (double)_currentMaxHDRGain;
- (id)_paletteView;
- (id)_toolPickerUndoManager:(id)a3;
- (id)createUndoViewControllerWithActionHandler:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)paletteViewSelectedAnnotationColor:(id)a3;
- (id)popoverPresentingController;
- (id)presentedViewController;
- (id)selectedAnnotations;
- (void)_annotationSelectionNotification:(id)a3;
- (void)_askAnnotationControllerDelegateToEnterFullScreen:(BOOL)a3;
- (void)_cleanupAfterUndoAlert;
- (void)_clearPresentedPopoverPointers;
- (void)_configureCustomDetentPresentationIfNeeded:(id)a3;
- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_dismissImageDescriptionViewController;
- (void)_forceToolPickerVisibleForViewStateChange:(BOOL)a3;
- (void)_installAttributesPickerButtonInPaletteContextEditingViewIfNeeded;
- (void)_presentImageDescriptionViewController;
- (void)_presentViewController:(id)a3 animated:(BOOL)a4;
- (void)_redo:(id)a3;
- (void)_saveCachedSafeAreaInsets;
- (void)_setCurrentOverlaysToolPickerVisible:(BOOL)a3;
- (void)_setPopoverPresentationSource:(id)a3 fromSender:(id)a4;
- (void)_setPopoverPresentationSource:(id)a3 fromSender:(id)a4 sourceRect:(CGRect)a5;
- (void)_setupPaletteViewIfNecessary;
- (void)_showMarkupToolsPopover:(id)a3;
- (void)_showShapeAttributes:(id)a3;
- (void)_showShapeAttributesPopover:(id)a3;
- (void)_showSignaturesPopover:(id)a3 fromSourceView:(id)a4 sourceRect:(CGRect)a5;
- (void)_showTextAttributes:(id)a3;
- (void)_showTextStylePopover:(id)a3;
- (void)_showUndoAlertPopover:(id)a3;
- (void)_toolPicker:(id)a3 didChangeColor:(id)a4;
- (void)_undo:(id)a3;
- (void)_undoAll:(id)a3;
- (void)_undoLongPress:(id)a3;
- (void)_undoManagerNotification:(id)a3;
- (void)_updateAttributeControllerInk:(id)a3;
- (void)_updatePalette;
- (void)_updatePaletteUI;
- (void)_updateTraitCollectionForViewControllerIfNecessary:(id)a3;
- (void)attributePicker:(id)a3 didSelectToolWithTag:(int64_t)a4 attributeTag:(int64_t)a5;
- (void)dealloc;
- (void)didDismissPopover;
- (void)didDismissPopoverAndRestorePalette;
- (void)didMoveToWindow;
- (void)endAnnotationEditing;
- (void)endOpacityEditing;
- (void)forceHideRuler;
- (void)hideModernToolbarView;
- (void)imageDescriptionViewControllerDidCancel:(id)a3;
- (void)imageDescriptionViewControllerDidDismiss:(id)a3;
- (void)imageDescriptionViewControllerDidSave:(id)a3;
- (void)layoutSubviews;
- (void)paletteViewDidSelectPlusButton:(id)a3;
- (void)revalidateItems;
- (void)setAlpha:(double)a3;
- (void)setAnnotationController:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContentsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHidden:(BOOL)a3;
- (void)setInk:(id)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setShareButtonHidden:(BOOL)a3;
- (void)setUndoRedoButtonsHidden:(BOOL)a3;
- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)a3;
- (void)signatureCreationControllerDidCreateSignature:(id)a3;
- (void)signaturesViewControllerContinueToCreateSignature:(id)a3;
- (void)signaturesViewControllerContinueToManageSignatures:(id)a3;
- (void)signaturesViewControllerDidCancel:(id)a3;
- (void)signaturesViewControllerDidSelectSignature:(id)a3;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)toolPickerSelectedToolDidChange:(id)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)toolsList:(id)a3 didSelectToolWithTag:(int64_t)a4;
- (void)toolsListDidSelectOpacityItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateCurrentOverlaysToolPickerVisibility;
- (void)willMoveToWindow:(id)a3;
@end

@implementation AKToolbarView

- (AKToolbarView)initWithFrame:(CGRect)a3
{
  v86[1] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AKToolbarView;
  v3 = [(AKToolbarView *)&v83 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_undoRedoButtonsHidden = 0;
    v3->_alwaysShowUndoButton = 0;
    v3->_shareButtonHidden = 0;
    v3->_showAttributePicker = 0;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA810] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA808] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA818] object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v4 selector:sel__annotationSelectionNotification_ name:off_27E39A380[0] object:0];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v4 selector:sel__textEffectsWindowIsHosted_ name:*MEMORY[0x277D770A0] object:0];

    v10 = [AKToolbarBackgroundView alloc];
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [(AKToolbarBackgroundView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v15;

    [(AKToolbarBackgroundView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [[_AKNonMinibarToolbar alloc] initWithFrame:v11, v12, v13, v14];
    toolbar = v4->_toolbar;
    v4->_toolbar = &v17->super;

    [(UIToolbar *)v4->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIToolbar *)v4->_toolbar setOpaque:0];
    [(UIToolbar *)v4->_toolbar setTranslucent:1];
    v19 = [MEMORY[0x277D75348] clearColor];
    [(UIToolbar *)v4->_toolbar setBackgroundColor:v19];

    v20 = v4->_toolbar;
    v21 = objc_alloc_init(MEMORY[0x277D755B8]);
    [(UIToolbar *)v20 setBackgroundImage:v21 forToolbarPosition:0 barMetrics:0];

    v22 = v4->_toolbar;
    v23 = objc_alloc_init(MEMORY[0x277D755B8]);
    [(UIToolbar *)v22 setShadowImage:v23 forToolbarPosition:0];

    v24 = objc_alloc(MEMORY[0x277D751E0]);
    v25 = +[AKToolbarView undoButtonImage];
    v26 = [v24 initWithImage:v25 style:0 target:v4 action:sel__undo_];
    undoButton = v4->_undoButton;
    v4->_undoButton = v26;

    v28 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel__undoLongPress_];
    v86[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
    [(UIBarButtonItem *)v4->_undoButton _setGestureRecognizers:v29];

    v30 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
    undoRedoFixedSpace = v4->_undoRedoFixedSpace;
    v4->_undoRedoFixedSpace = v30;

    v32 = sub_23F40E7DC();
    v33 = 10.0;
    if (v32)
    {
      v33 = 19.0;
    }

    [(UIBarButtonItem *)v4->_undoRedoFixedSpace setWidth:v33];
    v34 = objc_alloc(MEMORY[0x277D751E0]);
    v35 = +[AKToolbarView redoButtonImage];
    v36 = [v34 initWithImage:v35 style:0 target:v4 action:sel__redo_];
    redoButton = v4->_redoButton;
    v4->_redoButton = v36;

    v38 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:0 action:0];
    shareButton = v4->_shareButton;
    v4->_shareButton = v38;

    v40 = objc_alloc(MEMORY[0x277D751E0]);
    v41 = [MEMORY[0x277D755B8] akImageNamed:@"AKModern_Add"];
    v42 = [v40 initWithImage:v41 style:0 target:v4 action:sel__showShapesPicker_];
    shapesPickerButton = v4->_shapesPickerButton;
    v4->_shapesPickerButton = v42;

    v44 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
    attributesAddShapeFixedSpace = v4->_attributesAddShapeFixedSpace;
    v4->_attributesAddShapeFixedSpace = v44;

    v46 = sub_23F40E7DC();
    v47 = 37.0;
    if (!v46)
    {
      v47 = 0.0;
    }

    [(UIBarButtonItem *)v4->_attributesAddShapeFixedSpace setWidth:v47];
    v82 = [MEMORY[0x277D755B8] systemImageNamed:@"textformat.size"];
    v48 = objc_alloc(MEMORY[0x277D751E0]);
    v49 = [MEMORY[0x277D755B8] akImageNamed:@"AKModern_TextAttributes"];
    v50 = [v48 initWithImage:v49 style:0 target:v4 action:sel__showTextAttributes_];
    attributesPickerBarButton = v4->_attributesPickerBarButton;
    v4->_attributesPickerBarButton = v50;

    v52 = [AKAttributesPickerButton buttonWithType:0];
    attributesPickerButton = v4->_attributesPickerButton;
    v4->_attributesPickerButton = v52;

    [(AKAttributesPickerButton *)v4->_attributesPickerButton addTarget:v4 action:sel__showTextAttributes_ forControlEvents:64];
    [(AKAttributesPickerButton *)v4->_attributesPickerButton setImage:v82 forState:0];
    v54 = v4->_attributesPickerButton;
    v55 = objc_alloc_init(MEMORY[0x277D756C8]);
    [(AKAttributesPickerButton *)v54 addInteraction:v55];

    [(AKAttributesPickerButton *)v4->_attributesPickerButton setShowsLargeContentViewer:1];
    v56 = [(AKAttributesPickerButton *)v4->_attributesPickerButton widthAnchor];
    v57 = [v56 constraintEqualToConstant:36.0];
    attributesPickerButtonWidthConstraint = v4->_attributesPickerButtonWidthConstraint;
    v4->_attributesPickerButtonWidthConstraint = v57;

    v59 = [(AKAttributesPickerButton *)v4->_attributesPickerButton heightAnchor];
    v60 = [v59 constraintEqualToConstant:36.0];
    attributesPickerButtonHeigthConstraint = v4->_attributesPickerButtonHeigthConstraint;
    v4->_attributesPickerButtonHeigthConstraint = v60;

    v62 = MEMORY[0x277CCAAD0];
    v85[0] = v4->_attributesPickerButtonWidthConstraint;
    v85[1] = v4->_attributesPickerButtonHeigthConstraint;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    [v62 activateConstraints:v63];

    [(UIView *)v4 ak_addSubview:v4->_backgroundView withEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(AKToolbarView *)v4 addSubview:v4->_toolbar];
    v64 = [(UIToolbar *)v4->_toolbar leftAnchor];
    v65 = [(AKToolbarView *)v4 leftAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    v67 = [(UIToolbar *)v4->_toolbar rightAnchor];
    v68 = [(AKToolbarView *)v4 rightAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    v70 = [(UIToolbar *)v4->_toolbar bottomAnchor];
    v71 = [(AKToolbarView *)v4 bottomAnchor];
    [(AKToolbarView *)v4 _safeAreaInsetsWithCachingIfNeeded];
    v73 = [v70 constraintEqualToAnchor:v71 constant:-(v72 + 13.0)];
    toolbarBottomConstraint = v4->_toolbarBottomConstraint;
    v4->_toolbarBottomConstraint = v73;

    v75 = MEMORY[0x277CCAAD0];
    v84[0] = v66;
    v84[1] = v69;
    v84[2] = v4->_toolbarBottomConstraint;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
    [v75 activateConstraints:v76];

    v77 = [(AKToolbarView *)v4 heightAnchor];
    v78 = [v77 constraintEqualToConstant:0.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v78;

    LODWORD(v80) = 1144750080;
    [(NSLayoutConstraint *)v4->_heightConstraint setPriority:v80];
    [(NSLayoutConstraint *)v4->_heightConstraint setActive:1];
    [(UIBarButtonItem *)v4->_undoButton setAccessibilityIdentifier:@"undo-button"];
    [(UIBarButtonItem *)v4->_redoButton setAccessibilityIdentifier:@"redo-button"];
    [(UIBarButtonItem *)v4->_shareButton setAccessibilityIdentifier:@"share-button"];
    [(UIBarButtonItem *)v4->_shapesPickerButton setAccessibilityIdentifier:@"shapes-picker-button"];
    [(UIBarButtonItem *)v4->_attributesPickerBarButton setAccessibilityIdentifier:@"attributes-picker-button"];
    [(AKAttributesPickerButton *)v4->_attributesPickerButton setAccessibilityIdentifier:@"attributes-picker-button"];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = AKToolbarView;
  [(AKToolbarView *)&v7 didMoveToWindow];
  v3 = [(AKToolbarView *)self window];
  if (!v3 || (sub_23F415218() & 1) != 0 || (_UIApplicationIsExtension() & 1) != 0)
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:@"com.apple.ScreenshotServicesService"];

    if ((v6 & 1) == 0)
    {
      [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = AKToolbarView;
  [(AKToolbarView *)&v5 willMoveToWindow:?];
  if (!a3 && (_UIApplicationIsExtension() & 1) == 0)
  {
    [(AKToolbarView *)self _forceToolPickerVisibleForViewStateChange:0];
  }
}

- (void)hideModernToolbarView
{
  [(AKToolbarBackgroundView *)self->_backgroundView setHidden:1];
  toolbar = self->_toolbar;

  [(UIToolbar *)toolbar setHidden:1];
}

- (id)_paletteView
{
  v2 = [(AKToolbarView *)self toolPicker];
  v3 = [v2 _paletteView];

  return v3;
}

- (double)_currentMaxHDRGain
{
  v2 = [(AKToolbarView *)self annotationController];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  v4 = v3;
  v5 = 1.0;
  if (v3)
  {
    [v3 potentialEDRHeadroom];
    v7 = v6;
    if (qword_27E39B568 != -1)
    {
      sub_23F4BCC9C();
    }

    if (v7 > *&qword_27E399570)
    {
      [v2 maxHDRGain];
      v5 = v8;
    }
  }

  return v5;
}

- (PKToolPicker)toolPicker
{
  if (!self->_toolPicker)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD96A0]);
    toolPicker = self->_toolPicker;
    self->_toolPicker = v3;

    [(PKToolPicker *)self->_toolPicker setStateAutosaveName:@"com.apple.AnnotationKit"];
    [(PKToolPicker *)self->_toolPicker _setShowsHandwritingTool:0];
    [(PKToolPicker *)self->_toolPicker addObserver:self];
    [(PKToolPicker *)self->_toolPicker setColorUserInterfaceStyle:1];
    [(PKToolPicker *)self->_toolPicker setVisible:1 forFirstResponder:self];
  }

  [(AKToolbarView *)self _currentMaxHDRGain];
  [(PKToolPicker *)self->_toolPicker setColorMaximumLinearExposure:?];
  v5 = self->_toolPicker;

  return v5;
}

- (BOOL)isToolPickerVisible
{
  toolPicker = self->_toolPicker;
  if (toolPicker)
  {
    LOBYTE(toolPicker) = [(PKToolPicker *)toolPicker isVisible];
  }

  return toolPicker;
}

- (void)_setupPaletteViewIfNecessary
{
  v3 = [(AKToolbarView *)self window];
  if (v3)
  {
    didSetupToolPicker = self->_didSetupToolPicker;

    if (!didSetupToolPicker)
    {
      self->_didSetupToolPicker = 1;
      v8 = [(AKToolbarView *)self window];
      AKLog(@"Did successfully set up palette for window: %@");

      [(AKToolbarView *)self hideModernToolbarView];
      v9 = [(AKToolbarView *)self popoverPresentingController];
      if (!v9 || (-[AKToolbarView toolPicker](self, "toolPicker"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _presentationController], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v9 != v6))
      {
        v7 = [(AKToolbarView *)self toolPicker];
        [v7 _setPresentationController:v9];
      }

      [(AKToolbarView *)self _updatePalette];
    }
  }
}

- (void)_forceToolPickerVisibleForViewStateChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(AKToolbarView *)self window];
  v9 = [v5 firstResponder];

  [(AKToolbarView *)self becomeFirstResponder];
  v6 = v9;
  if (v9)
  {
    if (v9 != self)
    {
      v7 = [(AKToolbarView *)self window];
      v8 = [v7 firstResponder];

      v6 = v8;
    }
  }

  else
  {
    v6 = self;
  }

  v10 = v6;
  [(AKToolbarView *)self _setToolPickerVisible:v3 forResponder:v6];
}

- (BOOL)_setToolPickerVisible:(BOOL)a3 forResponder:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
  }

  v7 = [(AKToolbarView *)self toolPicker];
  v8 = [v7 isVisible];

  v9 = [(AKToolbarView *)self toolPicker];
  [v9 setVisible:v4 forFirstResponder:v6];

  [(AKToolbarView *)self _setCurrentOverlaysToolPickerVisible:v4];
  if (v4)
  {
    v10 = [(AKToolbarView *)self _paletteView];
    v11 = (v10 != 0) & v8;

    if (v11 == 1)
    {
      v12 = [(AKToolbarView *)self toolPicker];
      v13 = [v12 selectedTool];
      v14 = [v13 ink];
      [(AKToolbarView *)self _updateAttributeControllerInk:v14];
    }
  }

  return 1;
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 setHidden:a3];
  [(AKToolbarView *)self _updatePalette];
}

- (void)setAlpha:(double)a3
{
  [(AKToolbarView *)self alpha];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = AKToolbarView;
  [(AKToolbarView *)&v7 setAlpha:a3];
  if (v6 != a3)
  {
    [(AKToolbarView *)self _updatePalette];
  }
}

- (void)_updateAttributeControllerInk:(id)a3
{
  v9 = a3;
  v4 = [(AKToolbarView *)self annotationController];
  v5 = [v4 attributeController];
  v6 = [v5 ink];
  v7 = [v6 isEqual:v9];

  if ((v7 & 1) == 0)
  {
    v8 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
    [(AKMinimalInkChooserUserInterfaceItem *)v8 setInk:v9];
    [v4 performActionForSender:v8];
  }
}

- (BOOL)shouldHide
{
  if (([(AKToolbarView *)self isHidden]& 1) != 0)
  {
    return 1;
  }

  [(AKToolbarView *)self alpha];
  if (v3 < 1.0)
  {
    return 1;
  }

  return [(AKToolbarView *)self contentsHidden];
}

- (void)endAnnotationEditing
{
  v3 = [(AKToolbarView *)self annotationController];
  v2 = [v3 attributeController];
  [v2 annotationEditingDidEndWithCompletion:0];
}

- (void)forceHideRuler
{
  v3 = [(AKToolbarView *)self annotationController];
  v2 = [v3 attributeController];
  [v2 forceHideRuler];
}

- (void)_updatePalette
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(AKToolbarView *)self shouldHide])
  {
    v3 = [(AKToolbarView *)self toolPicker];
    [v3 setRulerActive:0];

    v4 = os_log_create("com.apple.annotationkit", "AKToolbarView");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = self;
      _os_log_impl(&dword_23F3EC000, v4, OS_LOG_TYPE_DEFAULT, "AKToolbarView did force hide tool picker due to hidden, alpha, or contentsHidden %@", buf, 0xCu);
    }

    v5 = [(AKToolbarView *)self annotationController];
    v6 = [v5 attributeController];

    if (v6)
    {
      v7 = [v5 attributeController];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23F40F4AC;
      v18[3] = &unk_278C7B540;
      v18[4] = self;
      [v7 annotationEditingDidEndWithCompletion:v18];
    }

    else
    {
      v11 = [(AKToolbarView *)self toolPicker];
      v12 = [v11 isVisible];

      if (v12)
      {
        [(AKToolbarView *)self _forceToolPickerVisibleForViewStateChange:0];
      }
    }
  }

  else
  {
    [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
    v8 = [(AKToolbarView *)self toolPicker];
    v9 = [v8 isVisible];

    if ((v9 & 1) == 0)
    {
      v10 = os_log_create("com.apple.annotationkit", "AKToolbarView");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = self;
        _os_log_impl(&dword_23F3EC000, v10, OS_LOG_TYPE_DEFAULT, "ToolPicker: AKToolbarView did force show tool picker due to hidden, alpha, or contentsHidden %@", buf, 0xCu);
      }

      [(AKToolbarView *)self _forceToolPickerVisibleForViewStateChange:1];
    }
  }

  v13 = [(AKToolbarView *)self toolPicker];
  [v13 _setShowsPlusButton:1];

  v14 = [(AKToolbarView *)self toolPicker];
  [v14 _setAnnotationDelegate:self];

  v15 = [(AKToolbarView *)self toolPicker];
  [v15 set_delegate:self];

  v16 = os_log_create("com.apple.annotationkit", "AKToolbarView");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(AKToolbarView *)self toolPicker];
    *buf = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_23F3EC000, v16, OS_LOG_TYPE_DEFAULT, "ToolPicker: AKToolbarView did set annotationDelegate to %@ for toolpicker %@", buf, 0x16u);
  }

  [(AKToolbarView *)self _updatePaletteUI];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(AKToolbarView *)self toolPicker];
  v9 = [v8 _paletteHostView];
  [(AKToolbarView *)self convertPoint:v9 toView:x, y];
  v11 = v10;
  v13 = v12;

  v14 = [(AKToolbarView *)self toolPicker];
  v15 = [v14 _paletteHostView];
  LOBYTE(v9) = [v15 pointInside:v7 withEvent:{v11, v13}];

  return v9;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(AKToolbarView *)self contentsHidden])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AKToolbarView;
    v8 = [(AKToolbarView *)&v10 hitTest:v7 withEvent:x, y];
  }

  return v8;
}

- (void)setAnnotationController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);
  v17 = v4;
  objc_storeWeak(&self->_annotationController, v17);
  [WeakRetained setModernToolbarView:0];
  [v17 setModernToolbarView:self];
  if (WeakRetained)
  {
    v6 = [WeakRetained toolController];
    v7 = [v6 toolMode];

    v8 = [WeakRetained attributeController];
    v9 = [v8 strokeColor];

    if (!v9)
    {
      v9 = [MEMORY[0x277D75348] blackColor];
    }

    v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalColorChooserUserInterfaceItem alloc] initWithTag:765101];
    [(AKMinimalColorChooserUserInterfaceItem *)v10 setColor:v9];
    [v17 performActionForSender:v10];
    v11 = [v17 toolController];
    v12 = [v11 toolMode];

    if (v7 != v12)
    {
      if (v7 == 4)
      {
        v13 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
        [v17 performActionForSender:v13];
      }

      else
      {
        v13 = [v17 toolController];
        [(AKMinimalUserInterfaceItem *)v13 resetToDefaultMode];
      }
    }
  }

  else
  {
    v9 = [v17 attributeController];
    [v9 setDefaultInk];
  }

  v14 = [(AKToolbarView *)self toolPicker];
  v15 = [v14 selectedTool];
  v16 = [v15 ink];
  [(AKToolbarView *)self _updateAttributeControllerInk:v16];

  [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
  [(AKToolbarView *)self revalidateItems];
}

- (void)updateCurrentOverlaysToolPickerVisibility
{
  v3 = [(AKToolbarView *)self toolPicker];
  -[AKToolbarView _setCurrentOverlaysToolPickerVisible:](self, "_setCurrentOverlaysToolPickerVisible:", [v3 isVisible]);
}

- (void)_setCurrentOverlaysToolPickerVisible:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);
  v5 = [WeakRetained currentPageController];
  v6 = [(AKToolbarView *)self toolPicker];
  [v5 _updateOverlayVisibilityWithToolPicker:v6 visible:v3];

  v7 = [WeakRetained currentPageIndex] + 1;
  v8 = [WeakRetained pageControllers];
  v9 = [v8 count];

  if (v7 < v9)
  {
    v10 = [WeakRetained pageControllers];
    v11 = [v10 objectAtIndex:{objc_msgSend(WeakRetained, "currentPageIndex") + 1}];

    v12 = [(AKToolbarView *)self toolPicker];
    [v11 _updateOverlayVisibilityWithToolPicker:v12 visible:v3];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(AKToolbarView *)self shouldUseCompactWidth];
  v3 = *MEMORY[0x277D77260];
  v4 = 75.0;
  if (!v2)
  {
    v4 = *MEMORY[0x277D77260];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if ([(AKToolbarView *)self shouldUseCompactWidth:a3.width])
  {
    v5 = 75.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(AKToolbarView *)self _safeAreaInsetsWithCachingIfNeeded];
  v7 = v5 + v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)a3
{
  if (self->_wantsClearBackgroundColorInCompactSize != a3)
  {
    self->_wantsClearBackgroundColorInCompactSize = a3;
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v40[3] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = AKToolbarView;
  [(AKToolbarView *)&v36 layoutSubviews];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  if (![(AKToolbarView *)self shouldUseCompactWidth])
  {
    undoRedoFixedSpace = self->_undoRedoFixedSpace;
    if (self->_showAttributePicker)
    {
      v38[0] = self->_undoButton;
      v38[1] = undoRedoFixedSpace;
      v38[2] = self->_redoButton;
      v38[3] = v3;
      attributesAddShapeFixedSpace = self->_attributesAddShapeFixedSpace;
      v38[4] = self->_attributesPickerBarButton;
      v38[5] = attributesAddShapeFixedSpace;
      v38[6] = self->_shapesPickerButton;
      v11 = MEMORY[0x277CBEA60];
      v12 = v38;
      v13 = 7;
    }

    else
    {
      v37[0] = self->_undoButton;
      v37[1] = undoRedoFixedSpace;
      v37[2] = self->_redoButton;
      v37[3] = v3;
      v37[4] = self->_shapesPickerButton;
      v11 = MEMORY[0x277CBEA60];
      v12 = v37;
      v13 = 5;
    }

    v4 = [v11 arrayWithObjects:v12 count:v13];
    v15 = 13.0;
    goto LABEL_18;
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(AKToolbarView *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = self->_undoRedoFixedSpace;
    v40[0] = self->_undoButton;
    v40[1] = v7;
    v40[2] = self->_redoButton;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    [v4 addObjectsFromArray:v8];

    goto LABEL_13;
  }

  if (self->_alwaysShowUndoButton)
  {
    v14 = 424;
  }

  else
  {
    if (self->_shareButtonHidden)
    {
      goto LABEL_13;
    }

    v14 = 440;
  }

  [v4 addObject:*(&self->super.super.super.isa + v14)];
LABEL_13:
  [v4 addObject:v3];
  if (self->_showAttributePicker)
  {
    attributesPickerBarButton = self->_attributesPickerBarButton;
    v39[0] = v3;
    v39[1] = attributesPickerBarButton;
    shapesPickerButton = self->_shapesPickerButton;
    v39[2] = v3;
    v39[3] = shapesPickerButton;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v4 addObjectsFromArray:v18];
  }

  else
  {
    [v4 addObject:self->_shapesPickerButton];
  }

  v19 = [(AKToolbarView *)self traitCollection];
  v20 = [v19 horizontalSizeClass];

  v15 = 0.0;
  if (v20 == 2)
  {
    NSLog(&cfstr_OkShowTheUndoR.isa);
  }

LABEL_18:
  if (self->_shareButtonHidden)
  {
    v21 = [v4 mutableCopy];
    [v21 removeObject:self->_shareButton];

    v4 = v21;
  }

  if (self->_undoRedoButtonsHidden && !self->_alwaysShowUndoButton)
  {
    v22 = [v4 mutableCopy];
    [v22 removeObject:self->_undoButton];
    [v22 removeObject:self->_undoRedoFixedSpace];
    [v22 removeObject:self->_redoButton];

    v4 = v22;
  }

  [(AKToolbarView *)self _safeAreaInsetsWithCachingIfNeeded];
  [(NSLayoutConstraint *)self->_toolbarBottomConstraint setConstant:-(v15 + v23)];
  [(UIToolbar *)self->_toolbar setItems:v4 animated:0];
  [(UIToolbar *)self->_toolbar layoutIfNeeded];
  if ([(AKToolbarView *)self shouldUseCompactWidth])
  {
    v24 = 75.0;
  }

  else
  {
    v24 = 0.0;
  }

  [(AKToolbarView *)self _safeAreaInsetsWithCachingIfNeeded];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:v24 + v25];
  if ([(AKToolbarView *)self useNewFullscreenPalette])
  {
    [(AKToolbarView *)self hideModernToolbarView];
    v26 = [(AKToolbarView *)self popoverPresentingController];
    v27 = [(AKToolbarView *)self toolPicker];
    [v27 _setPresentationController:v26];

    v28 = [(AKToolbarView *)self wantsClearBackgroundColorInCompactSize];
    v29 = [(AKToolbarView *)self toolPicker];
    [v29 _setWantsClearBackgroundColorInCompactSize:v28];

    v30 = [(AKToolbarView *)self traitCollection];
    v31 = [v30 userInterfaceStyle];

    if (v31 == 2)
    {
      v32 = [MEMORY[0x277D75348] systemDarkGrayColor];
      p_attributesPickerButton = &self->_attributesPickerButton;
      [(AKAttributesPickerButton *)self->_attributesPickerButton setBackgroundColor:v32];

      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      v34 = [MEMORY[0x277D75348] systemLightGrayColor];
      p_attributesPickerButton = &self->_attributesPickerButton;
      [(AKAttributesPickerButton *)self->_attributesPickerButton setBackgroundColor:v34];

      [MEMORY[0x277D75348] systemDarkGrayTintColor];
    }
    v35 = ;
    [(AKAttributesPickerButton *)*p_attributesPickerButton setTintColor:v35];
  }
}

- (void)updateConstraints
{
  if ([(AKToolbarView *)self shouldUseCompactWidth])
  {
    [(NSLayoutConstraint *)self->_attributesPickerButtonWidthConstraint setConstant:28.0];
  }

  else
  {
    v3 = [(AKToolbarView *)self _paletteView];
    [v3 paletteScaleFactor];
    [(NSLayoutConstraint *)self->_attributesPickerButtonWidthConstraint setConstant:v4 * 36.0];
  }

  if ([(AKToolbarView *)self shouldUseCompactWidth])
  {
    [(NSLayoutConstraint *)self->_attributesPickerButtonHeigthConstraint setConstant:28.0];
  }

  else
  {
    v5 = [(AKToolbarView *)self _paletteView];
    [v5 paletteScaleFactor];
    [(NSLayoutConstraint *)self->_attributesPickerButtonHeigthConstraint setConstant:v6 * 36.0];
  }

  v7.receiver = self;
  v7.super_class = AKToolbarView;
  [(AKToolbarView *)&v7 updateConstraints];
}

- (void)_saveCachedSafeAreaInsets
{
  p_cachedSafeAreaInsets = &self->_cachedSafeAreaInsets;
  [(AKToolbarView *)self safeAreaInsets];
  p_cachedSafeAreaInsets->top = v3;
  p_cachedSafeAreaInsets->left = v4;
  p_cachedSafeAreaInsets->bottom = v5;
  p_cachedSafeAreaInsets->right = v6;
}

- (UIEdgeInsets)_safeAreaInsetsWithCachingIfNeeded
{
  if (self->_shouldUseCachedSafeAreaInsets)
  {
    top = self->_cachedSafeAreaInsets.top;
    left = self->_cachedSafeAreaInsets.left;
    bottom = self->_cachedSafeAreaInsets.bottom;
    right = self->_cachedSafeAreaInsets.right;
  }

  else
  {
    [(AKToolbarView *)self safeAreaInsets:v2];
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = AKToolbarView;
  [(AKToolbarView *)&v5 setBackgroundColor:a3];
  v4 = [(AKToolbarView *)self backgroundColor];
  [(AKToolbarBackgroundView *)self->_backgroundView setBackgroundColor:v4];
}

- (void)setOpaque:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 setOpaque:a3];
  [(AKToolbarBackgroundView *)self->_backgroundView setOpaque:[(AKToolbarView *)self isOpaque]];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AKToolbarView;
  [(AKToolbarView *)&v20 traitCollectionDidChange:v4];
  v5 = [(AKToolbarView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(AKToolbarView *)self toolPicker];
    v9 = [(AKToolbarView *)self traitCollection];
    [v8 _updatePaletteTraitCollection:v9];
  }

  v10 = [(AKToolbarView *)self traitCollection];
  v11 = [v10 horizontalSizeClass];
  v12 = [v4 horizontalSizeClass];

  if (v11 != v12)
  {
    [(AKToolbarView *)self setNeedsUpdateConstraints];
    [(AKToolbarView *)self setNeedsLayout];
  }

  v13 = [(AKToolbarView *)self presentedViewController];
  [(AKToolbarView *)self _updateTraitCollectionForViewControllerIfNecessary:v13];

  v14 = [(AKToolbarView *)self traitCollection];
  v15 = [v14 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v15)
  {
    v16 = [(AKToolbarView *)self presentedViewController];
    v17 = [v16 popoverPresentationController];

    if (v17)
    {
      v18 = [(AKToolbarView *)self presentedViewController];
      v19 = [v18 popoverPresentationController];
      [v19 traitCollectionDidChange:v4];
    }
  }
}

- (BOOL)shouldUseCompactWidth
{
  v3 = [(AKToolbarView *)self traitCollection];
  if ([v3 userInterfaceIdiom])
  {
    v4 = [(AKToolbarView *)self traitCollection];
    v5 = [v4 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)shouldUseCompactHeight
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(AKToolbarView *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  return !v4 || v6 == 1;
}

- (void)setContentsHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_contentsHidden != a3)
  {
    v5 = a4;
    v6 = a3;
    self->_contentsHidden = a3;
    v7 = !a3;
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F4106A4;
    v11[3] = &unk_278C7B6F8;
    objc_copyWeak(v12, &location);
    v12[1] = *&v7;
    v8 = MEMORY[0x245CAF110](v11);
    v9 = v8;
    if (v5)
    {
      if (v6)
      {
        [(AKToolbarView *)self _saveCachedSafeAreaInsets];
        [(AKToolbarView *)self _shouldUseCachedSafeAreaInsets:1];
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_23F410718;
      v10[3] = &unk_278C7B720;
      v10[4] = self;
      [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:6 animations:v9 completion:v10];
    }

    else
    {
      (*(v8 + 16))(v8);
    }

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  [(AKToolbarView *)self _updatePalette];
}

- (id)selectedAnnotations
{
  v2 = [(AKToolbarView *)self annotationController];
  v3 = [v2 currentPageController];
  v4 = [v3 pageModelController];

  v5 = [v4 selectedAnnotations];

  return v5;
}

- (id)createUndoViewControllerWithActionHandler:(id)a3
{
  v4 = a3;
  v5 = [(AKToolbarView *)self annotationController];
  v6 = [v5 delegate];
  v7 = [v6 undoManagerForAnnotationController:v5];

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v8 setModalPresentationStyle:7];
  v9 = [v8 popoverPresentationController];
  [v9 setDelegate:self];

  v10 = [v8 popoverPresentationController];
  [v10 setPermittedArrowDirections:3];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_23F410C54;
  v41[3] = &unk_278C7B748;
  v11 = v4;
  v42 = v11;
  v12 = MEMORY[0x245CAF110](v41);
  objc_initWeak(&location, self);
  if ([v5 validateUndo:0])
  {
    v13 = +[AKController akBundle];
    v14 = [v13 localizedStringForKey:@"Undo" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

    v15 = [v7 undoActionName];
    v31 = v11;
    if ([v15 length])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v14, v15];

      v14 = v16;
    }

    v17 = MEMORY[0x277D750F8];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = sub_23F410C6C;
    v37[3] = &unk_278C7B770;
    objc_copyWeak(&v39, &location);
    v18 = v12;
    v38 = v18;
    v19 = [v17 actionWithTitle:v14 style:0 handler:v37];
    v30 = v7;
    [v8 addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = +[AKController akBundle];
    v22 = [v21 localizedStringForKey:@"Undo All" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_23F410CD4;
    v34[3] = &unk_278C7B770;
    objc_copyWeak(&v36, &location);
    v35 = v18;
    v23 = [v20 actionWithTitle:v22 style:0 handler:v34];

    [v8 addAction:v23];
    objc_destroyWeak(&v36);

    objc_destroyWeak(&v39);
    v7 = v30;
    v11 = v31;
  }

  v24 = MEMORY[0x277D750F8];
  v25 = +[AKController akBundle];
  v26 = [v25 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_23F410D3C;
  v32[3] = &unk_278C7B798;
  v27 = v12;
  v33 = v27;
  v28 = [v24 actionWithTitle:v26 style:1 handler:v32];
  [v8 addAction:v28];

  objc_destroyWeak(&location);

  return v8;
}

- (void)_updatePaletteUI
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(AKToolbarView *)self annotationController];
  [v3 currentPageController];
  v42 = v41 = v3;
  v4 = [v3 currentPageController];
  v5 = [v4 pageModelController];

  v40 = v5;
  [v5 selectedAnnotations];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = v46 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(v6);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v12 = 0;
        v13 = 0;
        v14 = sel__showTextAttributes_;
        v15 = 1;
        v16 = @"textformat.size";
        goto LABEL_17;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = 0;
        goto LABEL_15;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v12 = 11;
LABEL_15:
    v13 = isKindOfClass ^ 1;
    goto LABEL_16;
  }

LABEL_11:
  v12 = 0;
  v13 = 0;
LABEL_16:

  v15 = 0;
  v14 = sel__showShapeAttributes_;
  v16 = @"square.fill.on.circle.fill";
LABEL_17:
  v17 = [(AKToolbarView *)self _paletteView];
  [v17 paletteScaleFactor];
  if (v18 == 1.0)
  {
    if ([(AKToolbarView *)self shouldUseCompactWidth])
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76918]];
  v21 = MEMORY[0x277D755D0];
  [v20 pointSize];
  v22 = [v21 configurationWithPointSize:7 weight:v19 scale:?];
  v23 = [MEMORY[0x277D755B8] systemImageNamed:v16 withConfiguration:v22];
  [(UIBarButtonItem *)self->_attributesPickerBarButton setAction:v14];
  [(UIBarButtonItem *)self->_attributesPickerBarButton setImage:v23];
  self->_showAttributePicker = (v13 | v15) & ([v6 count] != 0);
  if ([(AKToolbarView *)self useNewFullscreenPalette]&& self->_showAttributePicker)
  {
    if (v15)
    {
      v24 = 10;
    }

    else
    {
      v24 = 1;
    }

    v25 = [(AKToolbarView *)self _paletteView];
    [v25 setSelectedAnnotationType:v24];

    v26 = [v42 inkPageOverlayController];
    v27 = [v26 inkOverlayView];
    v28 = [v27 canvasView];
    v29 = [v28 _selectionInteraction];

    [v29 setEnabled:0];
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeTarget:self action:sel__showTextAttributes_ forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeTarget:self action:sel__showShapeAttributes_ forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton addTarget:self action:v14 forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton setImage:v23 forState:0];
    v30 = [(AKAttributesPickerButton *)self->_attributesPickerButton superview];
    v31 = [(AKToolbarView *)self _paletteView];
    v32 = [v31 contextualEditingView];

    if (v30 != v32)
    {
      [(AKToolbarView *)self _installAttributesPickerButtonInPaletteContextEditingViewIfNeeded];
    }

    v33 = v41;
    v34 = v42;
  }

  else
  {
    v35 = [(AKToolbarView *)self _paletteView];
    [v35 setSelectedAnnotationType:v12];

    v36 = [(AKAttributesPickerButton *)self->_attributesPickerButton superview];

    if (v36)
    {
      [(AKAttributesPickerButton *)self->_attributesPickerButton removeFromSuperview];
    }

    v34 = v42;
    v29 = [v42 inkPageOverlayController];
    v37 = [v29 inkOverlayView];
    v38 = [v37 canvasView];
    v39 = [v38 _selectionInteraction];
    [v39 setEnabled:1];

    v33 = v41;
  }

  [(AKToolbarView *)self setNeedsLayout];
  [(AKToolbarView *)self setNeedsUpdateConstraints];
}

- (void)_installAttributesPickerButtonInPaletteContextEditingViewIfNeeded
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [(AKToolbarView *)self _paletteView];
  v4 = [v3 contextualEditingView];

  if (v4)
  {
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeFromSuperview];
    [v4 addSubview:self->_attributesPickerButton];
    [(AKAttributesPickerButton *)self->_attributesPickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(AKToolbarView *)self toolPicker];
    v6 = [v5 _palettePosition];

    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 != 4)
        {
LABEL_11:
          [(AKToolbarView *)self setNeedsUpdateConstraints];
          [(AKToolbarView *)self layoutIfNeeded];
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      v7 = MEMORY[0x277CCAAD0];
      v8 = [(AKAttributesPickerButton *)self->_attributesPickerButton topAnchor];
      v9 = [v4 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v17[0] = v10;
      v11 = [(AKAttributesPickerButton *)self->_attributesPickerButton centerXAnchor];
      v12 = [v4 centerXAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v17[1] = v13;
      v14 = v17;
LABEL_10:
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      [v7 activateConstraints:v15];

      goto LABEL_11;
    }

    v7 = MEMORY[0x277CCAAD0];
    v8 = [(AKAttributesPickerButton *)self->_attributesPickerButton leadingAnchor];
    v9 = [v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v16[0] = v10;
    v11 = [(AKAttributesPickerButton *)self->_attributesPickerButton centerYAnchor];
    v12 = [v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v16[1] = v13;
    v14 = v16;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)revalidateItems
{
  v4 = [(AKToolbarView *)self annotationController];
  if (([v4 isTornDown] & 1) == 0)
  {
    -[UIBarButtonItem setEnabled:](self->_undoButton, "setEnabled:", [v4 validateUndo:0]);
    -[UIBarButtonItem setEnabled:](self->_redoButton, "setEnabled:", [v4 validateRedo:0]);
    v3 = [(AKToolbarView *)self _paletteView];
    [v3 setNeedsLayout];

    [(AKToolbarView *)self _updatePaletteUI];
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (void)_undoManagerNotification:(id)a3
{
  v13 = a3;
  v4 = [(AKToolbarView *)self annotationController];
  v5 = [v4 delegate];
  v6 = [v5 undoManagerForAnnotationController:v4];
  v7 = [v13 object];

  if (v7 == v6)
  {
    v8 = [v13 name];
    if ([v8 isEqualToString:*MEMORY[0x277CCA810]])
    {
    }

    else
    {
      v9 = [v13 name];
      v10 = [v9 isEqualToString:*MEMORY[0x277CCA808]];

      if (!v10)
      {
LABEL_6:
        [(AKToolbarView *)self revalidateItems];
        goto LABEL_7;
      }
    }

    v11 = [(AKToolbarView *)self window];
    [v11 makeKeyWindow];

    v12 = [(AKToolbarView *)self toolPicker];
    [v12 _updateToolPickerVisibility];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_annotationSelectionNotification:(id)a3
{
  v4 = a3;
  v15 = [(AKToolbarView *)self annotationController];
  v5 = [v15 modelController];
  v6 = [v5 pageModelControllers];
  v7 = [v4 object];

  LODWORD(v4) = [v6 containsObject:v7];
  if (v4)
  {
    [(AKToolbarView *)self revalidateItems];
    v8 = [v15 currentPageController];
    v9 = [v8 pageModelController];

    v10 = [v9 selectedAnnotations];
    v11 = [v15 currentPageController];
    v12 = [v11 inkPageOverlayController];
    v13 = [v12 inkOverlayView];
    v14 = [v13 canvasView];

    if ([v10 count] && objc_msgSend(v14, "_hasSelection"))
    {
      [v14 commitSelectionIfNecessaryWithCompletion:0];
    }

    [(AKToolbarView *)self _updatePaletteUI];
  }
}

- (void)_undo:(id)a3
{
  v3 = [(AKToolbarView *)self annotationController];
  [v3 undo:0];
}

- (void)_undoAll:(id)a3
{
  v3 = [(AKToolbarView *)self annotationController];
  if ([v3 validateUndo:0])
  {
    do
    {
      [v3 undo:0];
    }

    while (([v3 validateUndo:0] & 1) != 0);
  }
}

- (void)_cleanupAfterUndoAlert
{
  if (self->_undoAlertController)
  {
    self->_undoAlertController = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)_undoLongPress:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    v4 = [v5 view];
    [(AKToolbarView *)self _showUndoAlertPopover:v4];
  }
}

- (void)_redo:(id)a3
{
  v3 = [(AKToolbarView *)self annotationController];
  [v3 redo:0];
}

- (void)_showTextAttributes:(id)a3
{
  v4 = a3;
  if (sub_23F4119E4(self->_textAttributesViewController))
  {
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  }

  else if ((sub_23F411A24(self->_textAttributesViewController) & 1) == 0)
  {
    [(AKToolbarView *)self _showTextStylePopover:v4];
  }
}

- (void)_showShapeAttributes:(id)a3
{
  v4 = a3;
  if (sub_23F4119E4(self->_attributePickerViewController))
  {
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  }

  else if ((sub_23F411A24(self->_attributePickerViewController) & 1) == 0)
  {
    [(AKToolbarView *)self _showShapeAttributesPopover:v4];
  }
}

- (void)setUndoRedoButtonsHidden:(BOOL)a3
{
  if (self->_undoRedoButtonsHidden != a3)
  {
    self->_undoRedoButtonsHidden = a3;
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (void)setShareButtonHidden:(BOOL)a3
{
  if (self->_shareButtonHidden != a3)
  {
    self->_shareButtonHidden = a3;
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (BOOL)isPresentingPopovers
{
  v2 = [(AKToolbarView *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_clearPresentedPopoverPointers
{
  textAttributesViewController = self->_textAttributesViewController;
  self->_textAttributesViewController = 0;

  signaturesSheetViewController = self->_signaturesSheetViewController;
  self->_signaturesSheetViewController = 0;

  signaturesAlertController = self->_signaturesAlertController;
  self->_signaturesAlertController = 0;

  signaturesCreationController = self->_signaturesCreationController;
  self->_signaturesCreationController = 0;

  toolsListViewController = self->_toolsListViewController;
  self->_toolsListViewController = 0;

  undoAlertController = self->_undoAlertController;
  self->_undoAlertController = 0;

  imageDescriptionViewController = self->_imageDescriptionViewController;
  self->_imageDescriptionViewController = 0;
}

- (id)popoverPresentingController
{
  v3 = [(AKToolbarView *)self annotationController];
  v4 = [v3 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 popoverPresentingViewControllerForAnnotationController:v3], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(AKToolbarView *)self window];
    v5 = [v6 rootViewController];
  }

  return v5;
}

- (id)presentedViewController
{
  v3 = [(AKToolbarView *)self popoverPresentingController];
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    p_signaturesAlertController = &self->_signaturesAlertController;
    signaturesAlertController = self->_signaturesAlertController;
    if (signaturesAlertController && (-[AKAlertController presentationController](signaturesAlertController, "presentationController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 presentingViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) || (p_signaturesAlertController = &self->_undoAlertController, (undoAlertController = self->_undoAlertController) != 0) && (-[UIAlertController presentationController](undoAlertController, "presentationController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11) || (p_signaturesAlertController = &self->_textAttributesViewController, (textAttributesViewController = self->_textAttributesViewController) != 0) && (-[AKTextAttributesViewController presentationController](textAttributesViewController, "presentationController"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "presentingViewController"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14) || (p_signaturesAlertController = &self->_toolsListViewController, (toolsListViewController = self->_toolsListViewController) != 0) && (-[AKToolsListViewController presentationController](toolsListViewController, "presentationController"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "presentingViewController"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) || (p_signaturesAlertController = &self->_attributePickerViewController, (attributePickerViewController = self->_attributePickerViewController) != 0) && (-[AKAttributePickerViewController presentationController](attributePickerViewController, "presentationController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "presentingViewController"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20) || (p_signaturesAlertController = &self->_signaturesCreationController, (signaturesCreationController = self->_signaturesCreationController) != 0) && (-[AKSignatureCreationViewController_iOS presentationController](signaturesCreationController, "presentationController"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "presentingViewController"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23) || (p_signaturesAlertController = &self->_signaturesSheetViewController, (signaturesSheetViewController = self->_signaturesSheetViewController) != 0) && (-[AKSignaturesViewController_iOS presentationController](signaturesSheetViewController, "presentationController"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "presentingViewController"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
LABEL_18:
      v4 = *p_signaturesAlertController;
      goto LABEL_19;
    }

    p_signaturesAlertController = &self->_imageDescriptionViewController;
    imageDescriptionViewController = self->_imageDescriptionViewController;
    if (imageDescriptionViewController)
    {
      v28 = [(AXSSImageDescriptionViewController *)imageDescriptionViewController presentationController];
      v4 = [v28 presentingViewController];

      if (!v4)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v4 = 0;
  }

LABEL_19:

  return v4;
}

- (void)didDismissPopoverAndRestorePalette
{
  [(AKToolbarView *)self didDismissPopover];
  [(AKToolbarView *)self becomeFirstResponder];

  [(AKToolbarView *)self _setToolPickerVisible:1 forResponder:self];
}

- (void)didDismissPopover
{
  v3 = [(AKToolbarView *)self annotationController];
  v2 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 controllerDidDismissPopover:v3];
  }
}

- (void)_showSignaturesPopover:(id)a3 fromSourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(AKToolbarView *)self annotationController];
  v12 = [v11 signatureModelController];
  v13 = [v12 signatures];
  v14 = [v13 count];

  if (v14)
  {
    if (!self->_signaturesSheetViewController)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_23F412224;
      v15[3] = &unk_278C7B7E8;
      v16 = v11;
      v17 = self;
      v18 = v10;
      v19 = x;
      v20 = y;
      v21 = width;
      v22 = height;
      [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v15];
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23F412218;
    v23[3] = &unk_278C7B540;
    v23[4] = self;
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v23];
  }
}

- (void)_showTextStylePopover:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23F4125D8;
  v6[3] = &unk_278C7B810;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v6];
}

- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23F41292C;
  v20[3] = &unk_278C7B838;
  v7 = v6;
  v20[4] = self;
  v21 = v7;
  v8 = MEMORY[0x245CAF110](v20);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_23F412984;
  v18 = sub_23F412994;
  v19 = [(AKToolbarView *)self presentedViewController];
  v9 = v15[5];
  if (v9 && ([v9 isBeingDismissed] & 1) == 0)
  {
    v10 = v15[5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F41299C;
    v11[3] = &unk_278C7B860;
    v13 = &v14;
    v11[4] = self;
    v12 = v8;
    [v10 dismissViewControllerAnimated:v4 completion:v11];
  }

  else
  {
    v8[2](v8);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [MEMORY[0x277D75348] systemBackgroundColor];
  v7 = [v12 popoverPresentationController];
  [v7 setBackgroundColor:v6];

  v8 = [v12 popoverPresentationController];
  [v8 _setIgnoreBarButtonItemSiblings:1];
  v9 = [(AKToolbarView *)self _paletteView];

  if (v9)
  {
    v10 = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
    [v10 layoutSceneMargins];
    [v8 setPopoverLayoutMargins:?];
  }

  v11 = [(AKToolbarView *)self popoverPresentingController];
  [v11 presentViewController:v12 animated:v4 completion:0];

  [(AKToolbarView *)self _updateTraitCollectionForViewControllerIfNecessary:v12];
}

- (void)_updateTraitCollectionForViewControllerIfNecessary:(id)a3
{
  v9 = a3;
  v4 = [v9 _responderWindow];
  v5 = [v4 _isTextEffectsWindow];

  if (v5)
  {
    v6 = [(AKToolbarView *)self traitCollection];
    [v9 setOverrideUserInterfaceStyle:{objc_msgSend(v6, "userInterfaceStyle")}];

    v7 = [v9 parentViewController];
    v8 = [(AKToolbarView *)self traitCollection];
    [v7 setOverrideTraitCollection:v8 forChildViewController:v9];
  }
}

- (void)_showMarkupToolsPopover:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23F412C7C;
  v6[3] = &unk_278C7B810;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v6];
}

- (void)endOpacityEditing
{
  v2 = [(AKToolbarView *)self _paletteView];
  [v2 endOpacityEditing];
}

- (void)_showShapeAttributesPopover:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23F412F20;
  v3[3] = &unk_278C7B540;
  v3[4] = self;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v3];
}

- (void)_showUndoAlertPopover:(id)a3
{
  v4 = a3;
  v5 = [(AKToolbarView *)self createUndoViewController];
  undoAlertController = self->_undoAlertController;
  self->_undoAlertController = v5;

  [(AKToolbarView *)self _setPopoverPresentationSource:self->_undoAlertController fromSender:v4];
  v7 = self->_undoAlertController;

  [(AKToolbarView *)self _presentViewController:v7 animated:1];
}

- (void)_setPopoverPresentationSource:(id)a3 fromSender:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    [v7 bounds];
    [(AKToolbarView *)self _setPopoverPresentationSource:v8 fromSender:v7 sourceRect:?];
  }

  else
  {
    [(AKToolbarView *)self _setPopoverPresentationSource:v8 fromSender:v6 sourceRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }
}

- (void)_setPopoverPresentationSource:(id)a3 fromSender:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v10 = [a3 popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setSourceView:v11];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, -6.0, -6.0);
    [v10 setSourceRect:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setBarButtonItem:v11];
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  AKLog(@"%s %@");
  v5 = [(AKSignatureCreationViewController_iOS *)self->_signaturesCreationController popoverPresentationController:"[AKToolbarView presentationControllerShouldDismiss:]"];

  if (v5 == v4)
  {
    v6 = [(AKToolbarView *)self annotationController];
    v7 = [v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 controllerWillDismissSignatureCaptureView:v6];
    }
  }

  return 1;
}

- (void)signaturesViewControllerDidCancel:(id)a3
{
  AKLog(@"%s %@");
  if (self->_signaturesSheetViewController)
  {
    v4 = [(AKToolbarView *)self annotationController:"[AKToolbarView signaturesViewControllerDidCancel:]"];
    v5 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 controllerWillDismissSignatureManagerView:v4];
    }

    v6 = [(AKToolbarView *)self popoverPresentingController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F413744;
    v13[3] = &unk_278C7B540;
    v13[4] = self;
    [v6 dismissViewControllerAnimated:1 completion:v13];

    v7 = [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController popoverPresentationController];
    [v7 setDelegate:0];

    signaturesSheetViewController = self->_signaturesSheetViewController;
    self->_signaturesSheetViewController = 0;
  }

  else
  {
    signaturesAlertController = self->_signaturesAlertController;
    if (signaturesAlertController)
    {
      v10 = [(AKAlertController *)signaturesAlertController popoverPresentationController:"[AKToolbarView signaturesViewControllerDidCancel:]"];
      [v10 setDelegate:0];

      v11 = self->_signaturesAlertController;
      self->_signaturesAlertController = 0;

      [(AKToolbarView *)self didDismissPopoverAndRestorePalette];
    }
  }
}

- (void)signaturesViewControllerDidSelectSignature:(id)a3
{
  v4 = a3;
  AKLog(@"%s %@");
  v5 = [(AKToolbarView *)self annotationController:"[AKToolbarView signaturesViewControllerDidSelectSignature:]"];
  v6 = v5;
  if (self->_signaturesSheetViewController)
  {
    v7 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 controllerWillDismissSignatureManagerView:v6];
    }

    v8 = [(AKToolbarView *)self popoverPresentingController];
    [v8 dismissViewControllerAnimated:1 completion:0];

    v9 = [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController popoverPresentationController];
    [v9 setDelegate:0];

    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setDelegate:0];
    signaturesSheetViewController = self->_signaturesSheetViewController;
    self->_signaturesSheetViewController = 0;

    [(AKToolbarView *)self didDismissPopoverAndRestorePalette];
  }

  else if (self->_signaturesAlertController)
  {
    objc_initWeak(&location, self);
    signaturesAlertController = self->_signaturesAlertController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F413938;
    v13[3] = &unk_278C7B888;
    objc_copyWeak(&v14, &location);
    v13[4] = self;
    [(AKAlertController *)signaturesAlertController dismissViewControllerAnimated:1 completion:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v12 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764019];
  [v6 performActionForSender:v12];
}

- (void)signaturesViewControllerContinueToManageSignatures:(id)a3
{
  v4 = a3;
  signaturesAlertController = self->_signaturesAlertController;
  v16 = v4;
  if (signaturesAlertController)
  {
    v6 = [(AKAlertController *)signaturesAlertController popoverPresentationController];
    [v6 setDelegate:0];

    v7 = self->_signaturesAlertController;
    self->_signaturesAlertController = 0;

    v4 = v16;
  }

  v15 = v4;
  AKLog(@"%s %@");
  v8 = v16;
  if (!self->_signaturesSheetViewController)
  {
    v9 = [AKSignaturesViewController_iOS alloc];
    v10 = [(AKToolbarView *)self annotationController:"[AKToolbarView signaturesViewControllerContinueToManageSignatures:]"];
    v11 = [(AKSignaturesViewController_iOS *)v9 initWithController:v10];
    signaturesSheetViewController = self->_signaturesSheetViewController;
    self->_signaturesSheetViewController = v11;

    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setDelegate:self];
    [(AKToolbarView *)self _configureCustomDetentPresentationIfNeeded:self->_signaturesSheetViewController];
    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setModalPresentationStyle:2];
    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setModalInPresentation:1];
    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setShowsNavigationBar:1];
    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setPresentedInAlert:0];
    [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController setAllowsEdits:1];
    v13 = [(AKToolbarView *)self annotationController];
    v14 = [v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 controllerWillShowSignatureManagerView:v13];
    }

    [(AKToolbarView *)self _presentViewController:self->_signaturesSheetViewController animated:1];

    v8 = v16;
  }
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)a3
{
  AKLog(@"%s %@");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F413C44;
  v8[3] = &unk_278C7B540;
  v8[4] = self;
  v4 = MEMORY[0x245CAF110](v8);
  v5 = v4;
  if (self->_signaturesSheetViewController || self->_signaturesAlertController)
  {
    v6 = [(AKToolbarView *)self popoverPresentingController:"[AKToolbarView signaturesViewControllerContinueToCreateSignature:]"];
    [v6 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    (*(v4 + 16))(v4);
  }
}

- (void)_configureCustomDetentPresentationIfNeeded:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 sheetPresentationController];
  if (v4)
  {
    v5 = [(AKToolbarView *)self traitCollection];
    if ([v5 userInterfaceIdiom])
    {
    }

    else
    {
      v6 = sub_23F415218();

      if (v6)
      {
        v7 = [MEMORY[0x277D75A28] customDetentWithIdentifier:@"markupDetentIdentifier" resolver:&unk_28519E530];
        v9[0] = v7;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
        [v4 setDetents:v8];

        [v4 setSelectedDetentIdentifier:@"markupDetentIdentifier"];
      }
    }
  }
}

- (void)signatureCreationControllerDidCreateSignature:(id)a3
{
  v4 = [(AKToolbarView *)self annotationController];
  v3 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764019];
  [v4 performActionForSender:v3];
}

- (void)toolsList:(id)a3 didSelectToolWithTag:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 764066)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23F4140C8;
    v14[3] = &unk_278C7B540;
    v14[4] = self;
    v12 = v14;
LABEL_6:
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:v12];
    goto LABEL_7;
  }

  if (a4 != 764019)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F4140D0;
    v13[3] = &unk_278C7B8D0;
    v13[4] = self;
    v13[5] = a4;
    v12 = v13;
    goto LABEL_6;
  }

  shapesPickerButton = self->_shapesPickerButton;
  v9 = [v6 popoverPresentationController];
  v10 = [v9 sourceView];
  v11 = [v7 popoverPresentationController];
  [v11 sourceRect];
  [(AKToolbarView *)self _showSignaturesPopover:shapesPickerButton fromSourceView:v10 sourceRect:?];

LABEL_7:
}

- (void)toolsListDidSelectOpacityItem:(id)a3
{
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  v4 = [(AKToolbarView *)self opacityEditingDelegate];
  if (v4)
  {
    v8 = v4;
    v5 = [(AKToolbarView *)self _paletteView];
    [v5 startOpacityEditing];

    v6 = [(AKToolbarView *)self _paletteView];
    v7 = [v6 opacityEditingView];
    [v8 toolbarDidSelectOpacityOptionWithAccessoryView:v7];

    v4 = v8;
  }
}

- (void)attributePicker:(id)a3 didSelectToolWithTag:(int64_t)a4 attributeTag:(int64_t)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v8 = [(AKToolbarView *)self annotationController];
  v9 = [v8 currentPageController];
  v26 = [v9 pageModelController];

  v25 = [v26 selectedAnnotations];
  v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalColorChooserUserInterfaceItem alloc] initWithTag:765102];
  v11 = v10;
  if (a4 == 765102)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v25;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v13)
    {
      v14 = *v31;
      v15 = &selRef_setOverlayView_;
LABEL_4:
      v16 = 0;
      v17 = v15;
      while (1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v30 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          break;
        }

        if (v13 == ++v16)
        {
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
          v15 = v17;
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v21 = [v18 strokeColor];

      if (v21)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_10:
    }

    v22 = [v8 attributeController];
    v21 = [v22 strokeColor];

LABEL_16:
    [(AKMinimalColorChooserUserInterfaceItem *)v11 setColor:v21];
    [v8 performActionForSender:v11];
  }

  else
  {
    [(AKMinimalColorChooserUserInterfaceItem *)v10 setColor:0];
    [v8 performActionForSender:v11];
    v19 = [[AKMinimalUserInterfaceItem alloc] initWithTag:a4];
    [v8 performActionForSender:v19];
    if (a5 != 763000)
    {
      v20 = [[AKMinimalUserInterfaceItem alloc] initWithTag:a5];

      [v8 performActionForSender:v20];
      v19 = v20;
    }
  }

  if (self->_attributePickerViewController)
  {
    objc_initWeak(&location, self);
    attributePickerViewController = self->_attributePickerViewController;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_23F414520;
    v27[3] = &unk_278C7B8F8;
    objc_copyWeak(&v28, &location);
    [(AKAttributePickerViewController *)attributePickerViewController dismissViewControllerAnimated:1 completion:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_hasSelectedAnnotations
{
  v2 = [(AKToolbarView *)self selectedAnnotations];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setInk:(id)a3
{
  v4 = a3;
  v8 = [(AKToolbarView *)self annotationController];
  [(AKToolbarView *)self _updateAttributeControllerInk:v4];

  v5 = [v8 toolController];
  v6 = [v5 toolMode];

  if (v6 != 4 && [v8 annotationEditingEnabled])
  {
    v7 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
    [v8 performActionForSender:v7];
  }
}

- (id)paletteViewSelectedAnnotationColor:(id)a3
{
  v4 = [(AKToolbarView *)self annotationController];
  v5 = [v4 attributeController];
  v6 = [(AKToolbarView *)self selectedAnnotations];
  v7 = [v6 anyObject];

  if (v7)
  {
    [v7 valueForKey:@"strokeColor"];
  }

  else
  {
    [v5 strokeColor];
  }
  v8 = ;

  return v8;
}

- (void)paletteViewDidSelectPlusButton:(id)a3
{
  v27 = a3;
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v4 = objc_alloc_init(AKToolsListViewController);
  [(AKToolsListViewController *)v4 setSupportsOpacityEditing:[(AKToolbarView *)self supportsOpacityEditing]];
  v5 = [(AKToolbarView *)self annotationController];
  -[AKToolsListViewController setSupportsImageDescriptionEditing:](v4, "setSupportsImageDescriptionEditing:", [v5 supportsImageDescriptionEditing]);

  [(AKToolsListViewController *)v4 setDelegate:self];
  [(AKToolsListViewController *)v4 setModalPresentationStyle:7];
  v6 = [(AKToolsListViewController *)v4 popoverPresentationController];
  [v6 setDelegate:self];

  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  v8 = [(AKToolsListViewController *)v4 popoverPresentationController];
  [v8 setBackgroundColor:v7];

  objc_storeStrong(&self->_toolsListViewController, v4);
  v9 = [(AKToolsListViewController *)v4 popoverPresentationController];
  [v9 _setShouldDisableInteractionDuringTransitions:0];
  v10 = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
  v11 = [v10 passthroughViews];
  [v9 setPassthroughViews:v11];

  v12 = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
  [v9 setPermittedArrowDirections:{objc_msgSend(v12, "permittedArrowDirections")}];

  [v9 setSourceView:v27];
  [v27 plusButtonFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v27 palettePosition];
  if (v21 <= 2)
  {
    if (v21 != 1)
    {
      v22 = v21 == 2;
      goto LABEL_6;
    }

LABEL_9:
    [v27 bounds];
    v16 = v25;
    [v27 bounds];
    v20 = v26;
    goto LABEL_10;
  }

  if (v21 == 3)
  {
    goto LABEL_9;
  }

  v22 = v21 == 4;
LABEL_6:
  if (v22)
  {
    [v27 bounds];
    v14 = v23;
    [v27 bounds];
    v18 = v24;
  }

LABEL_10:
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  v30 = CGRectInset(v29, -6.0, -6.0);
  [v9 setSourceRect:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  [v9 _setIgnoresKeyboardNotifications:1];
  [(AKToolbarView *)self _presentViewController:v4 animated:1];
}

- (id)_toolPickerUndoManager:(id)a3
{
  v3 = [(AKToolbarView *)self annotationController];
  v4 = [v3 undoController];
  v5 = [v4 undoManager];

  return v5;
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v4 = a3;
  [(AKToolbarView *)self _updatePaletteUI];
  v5 = [(AKToolbarView *)self annotationController];
  [v5 _updateGestureDependencyPriority];
  [v5 toolPickerVisibilityDidChange:v4];
}

- (void)toolPickerSelectedToolDidChange:(id)a3
{
  v5 = [a3 selectedTool];
  v4 = [v5 ink];
  [(AKToolbarView *)self setInk:v4];
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = a3;
  v8 = [(AKToolbarView *)self annotationController];
  v5 = [v4 isRulerActive];

  v6 = [v8 attributeController];
  v7 = v6;
  if (v5)
  {
    [v6 forceShowRuler];
  }

  else
  {
    [v6 forceHideRuler];
  }
}

- (void)_toolPicker:(id)a3 didChangeColor:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (![(AKToolbarView *)self _hasSelectedAnnotations])
  {
    WeakRetained = objc_loadWeakRetained(&self->_annotationController);
    v7 = [WeakRetained currentPageController];

    v12 = [v7 inkPageOverlayController];
    v13 = [v12 inkOverlayView];
    v14 = [v13 canvasView];

    [v14 _toolPicker:v16 didChangeColor:v6];
    goto LABEL_9;
  }

  v7 = [(AKToolbarView *)self annotationController];
  v8 = [AKToolbarUtilities attributeTagForCurrentSelectionState:v7];
  if (v8 == 765106)
  {
    v9 = [AKMinimalTextColorUserInterfaceItem alloc];
    v10 = 765106;
    goto LABEL_7;
  }

  if (v8 == 765101)
  {
    v9 = [AKMinimalColorChooserUserInterfaceItem alloc];
    v10 = 765101;
LABEL_7:
    v15 = [(AKMinimalUserInterfaceItem *)v9 initWithTag:v10];
    [(AKMinimalColorChooserUserInterfaceItem *)v15 setColor:v6];
    [v7 performActionForSender:v15];

    goto LABEL_9;
  }

  NSLog(&cfstr_SCalledWithInc.isa, "[AKToolbarView _toolPicker:didChangeColor:]", v8);
LABEL_9:
}

+ (id)undoButtonImageWithStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"AKModern_Undo_Bold";
  }

  else
  {
    v3 = @"AKModern_Undo";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

+ (id)redoButtonImageWithStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"AKModern_Redo_Bold";
  }

  else
  {
    v3 = @"AKModern_Redo";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

- (CGRect)frameObscuredInView:(id)a3
{
  v4 = a3;
  v5 = [(AKToolbarView *)self toolPicker];
  [v5 frameObscuredInView:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(AKToolbarView *)self isHidden])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [(AKToolbarView *)self alpha];
  v6 = v5;
  if ([(AKToolbarView *)self contentsHidden])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return [v3 stringWithFormat:@"<AKToolbarView: %p, hidden: %@, alpha:%f, contentsHidden:%@>", self, v4, v6, v7];
}

- (AKController)annotationController
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);

  return WeakRetained;
}

- (AKToolbarViewOpacityEditingDelegate)opacityEditingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_opacityEditingDelegate);

  return WeakRetained;
}

- (void)_askAnnotationControllerDelegateToEnterFullScreen:(BOOL)a3
{
  v3 = a3;
  v5 = [(AKToolbarView *)self annotationController];
  v4 = [v5 delegate];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 controllerWillShowSignatureCaptureView:v5];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 controllerWillDismissSignatureCaptureView:v5];
  }
}

- (void)_presentImageDescriptionViewController
{
  if (!self->_imageDescriptionViewController)
  {
    [(AKToolbarView *)self _askAnnotationControllerDelegateToEnterFullScreen:1];
    v3 = [(AKToolbarView *)self annotationController];
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_contentSnapshot];
    }

    else
    {
      v5 = 0;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = qword_27E39B580;
    v17 = qword_27E39B580;
    if (!qword_27E39B580)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_23F421D48;
      v13[3] = &unk_278C7B9D0;
      v13[4] = &v14;
      sub_23F421D48(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = [[v6 alloc] initWithContentSnapshot:v5];
    imageDescriptionViewController = self->_imageDescriptionViewController;
    self->_imageDescriptionViewController = v8;

    v10 = +[AKController akBundle];
    v11 = [v10 localizedStringForKey:@"Image Description" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setTitle:v11];

    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setModalPresentationStyle:2];
    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setModalInPresentation:0];
    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setDelegate:self];
    v12 = [v3 originalOrModifiedImageDescription];
    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setImageDescription:v12];

    [(AKToolbarView *)self _configureCustomDetentPresentationIfNeeded:self->_imageDescriptionViewController];
    [(AKToolbarView *)self _presentViewController:self->_imageDescriptionViewController animated:1];
  }
}

- (void)_dismissImageDescriptionViewController
{
  v3 = [(AKToolbarView *)self popoverPresentingController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F421C00;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v5];

  imageDescriptionViewController = self->_imageDescriptionViewController;
  self->_imageDescriptionViewController = 0;
}

- (void)imageDescriptionViewControllerDidCancel:(id)a3
{
  if (self->_imageDescriptionViewController)
  {
    MEMORY[0x2821F9670](self, sel__dismissImageDescriptionViewController);
  }
}

- (void)imageDescriptionViewControllerDidSave:(id)a3
{
  if (self->_imageDescriptionViewController)
  {
    v4 = [a3 imageDescription];
    v5 = [(AKToolbarView *)self annotationController];
    [v5 setModifiedImageDescription:v4];

    MEMORY[0x2821F9670](self, sel__dismissImageDescriptionViewController);
  }
}

- (void)imageDescriptionViewControllerDidDismiss:(id)a3
{
  if (self->_imageDescriptionViewController)
  {
    [(AKToolbarView *)self _askAnnotationControllerDelegateToEnterFullScreen:0];
    [(AKToolbarView *)self becomeFirstResponder];
    imageDescriptionViewController = self->_imageDescriptionViewController;
    self->_imageDescriptionViewController = 0;
  }
}

@end