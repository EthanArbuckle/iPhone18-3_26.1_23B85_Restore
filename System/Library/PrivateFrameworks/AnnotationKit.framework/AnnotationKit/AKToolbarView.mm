@interface AKToolbarView
+ (id)redoButtonImageWithStyle:(unint64_t)style;
+ (id)undoButtonImageWithStyle:(unint64_t)style;
- (AKController)annotationController;
- (AKToolbarView)initWithFrame:(CGRect)frame;
- (AKToolbarViewOpacityEditingDelegate)opacityEditingDelegate;
- (BOOL)_hasSelectedAnnotations;
- (BOOL)_setToolPickerVisible:(BOOL)visible forResponder:(id)responder;
- (BOOL)isPresentingPopovers;
- (BOOL)isToolPickerVisible;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldHide;
- (BOOL)shouldUseCompactHeight;
- (BOOL)shouldUseCompactWidth;
- (CGRect)frameObscuredInView:(id)view;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (PKToolPicker)toolPicker;
- (UIEdgeInsets)_safeAreaInsetsWithCachingIfNeeded;
- (double)_currentMaxHDRGain;
- (id)_paletteView;
- (id)_toolPickerUndoManager:(id)manager;
- (id)createUndoViewControllerWithActionHandler:(id)handler;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)paletteViewSelectedAnnotationColor:(id)color;
- (id)popoverPresentingController;
- (id)presentedViewController;
- (id)selectedAnnotations;
- (void)_annotationSelectionNotification:(id)notification;
- (void)_askAnnotationControllerDelegateToEnterFullScreen:(BOOL)screen;
- (void)_cleanupAfterUndoAlert;
- (void)_clearPresentedPopoverPointers;
- (void)_configureCustomDetentPresentationIfNeeded:(id)needed;
- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_dismissImageDescriptionViewController;
- (void)_forceToolPickerVisibleForViewStateChange:(BOOL)change;
- (void)_installAttributesPickerButtonInPaletteContextEditingViewIfNeeded;
- (void)_presentImageDescriptionViewController;
- (void)_presentViewController:(id)controller animated:(BOOL)animated;
- (void)_redo:(id)_redo;
- (void)_saveCachedSafeAreaInsets;
- (void)_setCurrentOverlaysToolPickerVisible:(BOOL)visible;
- (void)_setPopoverPresentationSource:(id)source fromSender:(id)sender;
- (void)_setPopoverPresentationSource:(id)source fromSender:(id)sender sourceRect:(CGRect)rect;
- (void)_setupPaletteViewIfNecessary;
- (void)_showMarkupToolsPopover:(id)popover;
- (void)_showShapeAttributes:(id)attributes;
- (void)_showShapeAttributesPopover:(id)popover;
- (void)_showSignaturesPopover:(id)popover fromSourceView:(id)view sourceRect:(CGRect)rect;
- (void)_showTextAttributes:(id)attributes;
- (void)_showTextStylePopover:(id)popover;
- (void)_showUndoAlertPopover:(id)popover;
- (void)_toolPicker:(id)picker didChangeColor:(id)color;
- (void)_undo:(id)_undo;
- (void)_undoAll:(id)all;
- (void)_undoLongPress:(id)press;
- (void)_undoManagerNotification:(id)notification;
- (void)_updateAttributeControllerInk:(id)ink;
- (void)_updatePalette;
- (void)_updatePaletteUI;
- (void)_updateTraitCollectionForViewControllerIfNecessary:(id)necessary;
- (void)attributePicker:(id)picker didSelectToolWithTag:(int64_t)tag attributeTag:(int64_t)attributeTag;
- (void)dealloc;
- (void)didDismissPopover;
- (void)didDismissPopoverAndRestorePalette;
- (void)didMoveToWindow;
- (void)endAnnotationEditing;
- (void)endOpacityEditing;
- (void)forceHideRuler;
- (void)hideModernToolbarView;
- (void)imageDescriptionViewControllerDidCancel:(id)cancel;
- (void)imageDescriptionViewControllerDidDismiss:(id)dismiss;
- (void)imageDescriptionViewControllerDidSave:(id)save;
- (void)layoutSubviews;
- (void)paletteViewDidSelectPlusButton:(id)button;
- (void)revalidateItems;
- (void)setAlpha:(double)alpha;
- (void)setAnnotationController:(id)controller;
- (void)setBackgroundColor:(id)color;
- (void)setContentsHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHidden:(BOOL)hidden;
- (void)setInk:(id)ink;
- (void)setOpaque:(BOOL)opaque;
- (void)setShareButtonHidden:(BOOL)hidden;
- (void)setUndoRedoButtonsHidden:(BOOL)hidden;
- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)size;
- (void)signatureCreationControllerDidCreateSignature:(id)signature;
- (void)signaturesViewControllerContinueToCreateSignature:(id)signature;
- (void)signaturesViewControllerContinueToManageSignatures:(id)signatures;
- (void)signaturesViewControllerDidCancel:(id)cancel;
- (void)signaturesViewControllerDidSelectSignature:(id)signature;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)toolPickerSelectedToolDidChange:(id)change;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)toolsList:(id)list didSelectToolWithTag:(int64_t)tag;
- (void)toolsListDidSelectOpacityItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateCurrentOverlaysToolPickerVisibility;
- (void)willMoveToWindow:(id)window;
@end

@implementation AKToolbarView

- (AKToolbarView)initWithFrame:(CGRect)frame
{
  v86[1] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = AKToolbarView;
  v3 = [(AKToolbarView *)&v83 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_undoRedoButtonsHidden = 0;
    v3->_alwaysShowUndoButton = 0;
    v3->_shareButtonHidden = 0;
    v3->_showAttributePicker = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA810] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA808] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel__undoManagerNotification_ name:*MEMORY[0x277CCA818] object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v4 selector:sel__annotationSelectionNotification_ name:off_27E39A380[0] object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v4 selector:sel__textEffectsWindowIsHosted_ name:*MEMORY[0x277D770A0] object:0];

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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIToolbar *)v4->_toolbar setBackgroundColor:clearColor];

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
    widthAnchor = [(AKAttributesPickerButton *)v4->_attributesPickerButton widthAnchor];
    v57 = [widthAnchor constraintEqualToConstant:36.0];
    attributesPickerButtonWidthConstraint = v4->_attributesPickerButtonWidthConstraint;
    v4->_attributesPickerButtonWidthConstraint = v57;

    heightAnchor = [(AKAttributesPickerButton *)v4->_attributesPickerButton heightAnchor];
    v60 = [heightAnchor constraintEqualToConstant:36.0];
    attributesPickerButtonHeigthConstraint = v4->_attributesPickerButtonHeigthConstraint;
    v4->_attributesPickerButtonHeigthConstraint = v60;

    v62 = MEMORY[0x277CCAAD0];
    v85[0] = v4->_attributesPickerButtonWidthConstraint;
    v85[1] = v4->_attributesPickerButtonHeigthConstraint;
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
    [v62 activateConstraints:v63];

    [(UIView *)v4 ak_addSubview:v4->_backgroundView withEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(AKToolbarView *)v4 addSubview:v4->_toolbar];
    leftAnchor = [(UIToolbar *)v4->_toolbar leftAnchor];
    leftAnchor2 = [(AKToolbarView *)v4 leftAnchor];
    v66 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

    rightAnchor = [(UIToolbar *)v4->_toolbar rightAnchor];
    rightAnchor2 = [(AKToolbarView *)v4 rightAnchor];
    v69 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

    bottomAnchor = [(UIToolbar *)v4->_toolbar bottomAnchor];
    bottomAnchor2 = [(AKToolbarView *)v4 bottomAnchor];
    [(AKToolbarView *)v4 _safeAreaInsetsWithCachingIfNeeded];
    v73 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-(v72 + 13.0)];
    toolbarBottomConstraint = v4->_toolbarBottomConstraint;
    v4->_toolbarBottomConstraint = v73;

    v75 = MEMORY[0x277CCAAD0];
    v84[0] = v66;
    v84[1] = v69;
    v84[2] = v4->_toolbarBottomConstraint;
    v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
    [v75 activateConstraints:v76];

    heightAnchor2 = [(AKToolbarView *)v4 heightAnchor];
    v78 = [heightAnchor2 constraintEqualToConstant:0.0];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = AKToolbarView;
  [(AKToolbarView *)&v7 didMoveToWindow];
  window = [(AKToolbarView *)self window];
  if (!window || (sub_23F415218() & 1) != 0 || (_UIApplicationIsExtension() & 1) != 0)
  {
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

    if ((v6 & 1) == 0)
    {
      [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    }
  }
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = AKToolbarView;
  [(AKToolbarView *)&v5 willMoveToWindow:?];
  if (!window && (_UIApplicationIsExtension() & 1) == 0)
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
  toolPicker = [(AKToolbarView *)self toolPicker];
  _paletteView = [toolPicker _paletteView];

  return _paletteView;
}

- (double)_currentMaxHDRGain
{
  annotationController = [(AKToolbarView *)self annotationController];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = mainScreen;
  v5 = 1.0;
  if (mainScreen)
  {
    [mainScreen potentialEDRHeadroom];
    v7 = v6;
    if (qword_27E39B568 != -1)
    {
      sub_23F4BCC9C();
    }

    if (v7 > *&qword_27E399570)
    {
      [annotationController maxHDRGain];
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
  window = [(AKToolbarView *)self window];
  if (window)
  {
    didSetupToolPicker = self->_didSetupToolPicker;

    if (!didSetupToolPicker)
    {
      self->_didSetupToolPicker = 1;
      window2 = [(AKToolbarView *)self window];
      AKLog(@"Did successfully set up palette for window: %@");

      [(AKToolbarView *)self hideModernToolbarView];
      popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
      if (!popoverPresentingController || (-[AKToolbarView toolPicker](self, "toolPicker"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _presentationController], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, popoverPresentingController != v6))
      {
        toolPicker = [(AKToolbarView *)self toolPicker];
        [toolPicker _setPresentationController:popoverPresentingController];
      }

      [(AKToolbarView *)self _updatePalette];
    }
  }
}

- (void)_forceToolPickerVisibleForViewStateChange:(BOOL)change
{
  changeCopy = change;
  window = [(AKToolbarView *)self window];
  firstResponder = [window firstResponder];

  [(AKToolbarView *)self becomeFirstResponder];
  selfCopy = firstResponder;
  if (firstResponder)
  {
    if (firstResponder != self)
    {
      window2 = [(AKToolbarView *)self window];
      firstResponder2 = [window2 firstResponder];

      selfCopy = firstResponder2;
    }
  }

  else
  {
    selfCopy = self;
  }

  v10 = selfCopy;
  [(AKToolbarView *)self _setToolPickerVisible:changeCopy forResponder:selfCopy];
}

- (BOOL)_setToolPickerVisible:(BOOL)visible forResponder:(id)responder
{
  visibleCopy = visible;
  responderCopy = responder;
  if (visibleCopy)
  {
    [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
  }

  toolPicker = [(AKToolbarView *)self toolPicker];
  isVisible = [toolPicker isVisible];

  toolPicker2 = [(AKToolbarView *)self toolPicker];
  [toolPicker2 setVisible:visibleCopy forFirstResponder:responderCopy];

  [(AKToolbarView *)self _setCurrentOverlaysToolPickerVisible:visibleCopy];
  if (visibleCopy)
  {
    _paletteView = [(AKToolbarView *)self _paletteView];
    v11 = (_paletteView != 0) & isVisible;

    if (v11 == 1)
    {
      toolPicker3 = [(AKToolbarView *)self toolPicker];
      selectedTool = [toolPicker3 selectedTool];
      v14 = [selectedTool ink];
      [(AKToolbarView *)self _updateAttributeControllerInk:v14];
    }
  }

  return 1;
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 setHidden:hidden];
  [(AKToolbarView *)self _updatePalette];
}

- (void)setAlpha:(double)alpha
{
  [(AKToolbarView *)self alpha];
  v6 = v5;
  v7.receiver = self;
  v7.super_class = AKToolbarView;
  [(AKToolbarView *)&v7 setAlpha:alpha];
  if (v6 != alpha)
  {
    [(AKToolbarView *)self _updatePalette];
  }
}

- (void)_updateAttributeControllerInk:(id)ink
{
  inkCopy = ink;
  annotationController = [(AKToolbarView *)self annotationController];
  attributeController = [annotationController attributeController];
  v6 = [attributeController ink];
  v7 = [v6 isEqual:inkCopy];

  if ((v7 & 1) == 0)
  {
    v8 = [(AKMinimalUserInterfaceItem *)[AKMinimalInkChooserUserInterfaceItem alloc] initWithTag:765300];
    [(AKMinimalInkChooserUserInterfaceItem *)v8 setInk:inkCopy];
    [annotationController performActionForSender:v8];
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
  annotationController = [(AKToolbarView *)self annotationController];
  attributeController = [annotationController attributeController];
  [attributeController annotationEditingDidEndWithCompletion:0];
}

- (void)forceHideRuler
{
  annotationController = [(AKToolbarView *)self annotationController];
  attributeController = [annotationController attributeController];
  [attributeController forceHideRuler];
}

- (void)_updatePalette
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(AKToolbarView *)self shouldHide])
  {
    toolPicker = [(AKToolbarView *)self toolPicker];
    [toolPicker setRulerActive:0];

    v4 = os_log_create("com.apple.annotationkit", "AKToolbarView");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_23F3EC000, v4, OS_LOG_TYPE_DEFAULT, "AKToolbarView did force hide tool picker due to hidden, alpha, or contentsHidden %@", buf, 0xCu);
    }

    annotationController = [(AKToolbarView *)self annotationController];
    attributeController = [annotationController attributeController];

    if (attributeController)
    {
      attributeController2 = [annotationController attributeController];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_23F40F4AC;
      v18[3] = &unk_278C7B540;
      v18[4] = self;
      [attributeController2 annotationEditingDidEndWithCompletion:v18];
    }

    else
    {
      toolPicker2 = [(AKToolbarView *)self toolPicker];
      isVisible = [toolPicker2 isVisible];

      if (isVisible)
      {
        [(AKToolbarView *)self _forceToolPickerVisibleForViewStateChange:0];
      }
    }
  }

  else
  {
    [(AKToolbarView *)self _setupPaletteViewIfNecessary];
    [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
    toolPicker3 = [(AKToolbarView *)self toolPicker];
    isVisible2 = [toolPicker3 isVisible];

    if ((isVisible2 & 1) == 0)
    {
      v10 = os_log_create("com.apple.annotationkit", "AKToolbarView");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_23F3EC000, v10, OS_LOG_TYPE_DEFAULT, "ToolPicker: AKToolbarView did force show tool picker due to hidden, alpha, or contentsHidden %@", buf, 0xCu);
      }

      [(AKToolbarView *)self _forceToolPickerVisibleForViewStateChange:1];
    }
  }

  toolPicker4 = [(AKToolbarView *)self toolPicker];
  [toolPicker4 _setShowsPlusButton:1];

  toolPicker5 = [(AKToolbarView *)self toolPicker];
  [toolPicker5 _setAnnotationDelegate:self];

  toolPicker6 = [(AKToolbarView *)self toolPicker];
  [toolPicker6 set_delegate:self];

  v16 = os_log_create("com.apple.annotationkit", "AKToolbarView");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    toolPicker7 = [(AKToolbarView *)self toolPicker];
    *buf = 138412546;
    selfCopy3 = self;
    v21 = 2112;
    v22 = toolPicker7;
    _os_log_impl(&dword_23F3EC000, v16, OS_LOG_TYPE_DEFAULT, "ToolPicker: AKToolbarView did set annotationDelegate to %@ for toolpicker %@", buf, 0x16u);
  }

  [(AKToolbarView *)self _updatePaletteUI];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  toolPicker = [(AKToolbarView *)self toolPicker];
  _paletteHostView = [toolPicker _paletteHostView];
  [(AKToolbarView *)self convertPoint:_paletteHostView toView:x, y];
  v11 = v10;
  v13 = v12;

  toolPicker2 = [(AKToolbarView *)self toolPicker];
  _paletteHostView2 = [toolPicker2 _paletteHostView];
  LOBYTE(_paletteHostView) = [_paletteHostView2 pointInside:eventCopy withEvent:{v11, v13}];

  return _paletteHostView;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(AKToolbarView *)self contentsHidden])
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = AKToolbarView;
    v8 = [(AKToolbarView *)&v10 hitTest:eventCopy withEvent:x, y];
  }

  return v8;
}

- (void)setAnnotationController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);
  v17 = controllerCopy;
  objc_storeWeak(&self->_annotationController, v17);
  [WeakRetained setModernToolbarView:0];
  [v17 setModernToolbarView:self];
  if (WeakRetained)
  {
    toolController = [WeakRetained toolController];
    toolMode = [toolController toolMode];

    attributeController = [WeakRetained attributeController];
    strokeColor = [attributeController strokeColor];

    if (!strokeColor)
    {
      strokeColor = [MEMORY[0x277D75348] blackColor];
    }

    v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalColorChooserUserInterfaceItem alloc] initWithTag:765101];
    [(AKMinimalColorChooserUserInterfaceItem *)v10 setColor:strokeColor];
    [v17 performActionForSender:v10];
    toolController2 = [v17 toolController];
    toolMode2 = [toolController2 toolMode];

    if (toolMode != toolMode2)
    {
      if (toolMode == 4)
      {
        toolController3 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
        [v17 performActionForSender:toolController3];
      }

      else
      {
        toolController3 = [v17 toolController];
        [(AKMinimalUserInterfaceItem *)toolController3 resetToDefaultMode];
      }
    }
  }

  else
  {
    strokeColor = [v17 attributeController];
    [strokeColor setDefaultInk];
  }

  toolPicker = [(AKToolbarView *)self toolPicker];
  selectedTool = [toolPicker selectedTool];
  v16 = [selectedTool ink];
  [(AKToolbarView *)self _updateAttributeControllerInk:v16];

  [(AKToolbarView *)self updateCurrentOverlaysToolPickerVisibility];
  [(AKToolbarView *)self revalidateItems];
}

- (void)updateCurrentOverlaysToolPickerVisibility
{
  toolPicker = [(AKToolbarView *)self toolPicker];
  -[AKToolbarView _setCurrentOverlaysToolPickerVisible:](self, "_setCurrentOverlaysToolPickerVisible:", [toolPicker isVisible]);
}

- (void)_setCurrentOverlaysToolPickerVisible:(BOOL)visible
{
  visibleCopy = visible;
  WeakRetained = objc_loadWeakRetained(&self->_annotationController);
  currentPageController = [WeakRetained currentPageController];
  toolPicker = [(AKToolbarView *)self toolPicker];
  [currentPageController _updateOverlayVisibilityWithToolPicker:toolPicker visible:visibleCopy];

  v7 = [WeakRetained currentPageIndex] + 1;
  pageControllers = [WeakRetained pageControllers];
  v9 = [pageControllers count];

  if (v7 < v9)
  {
    pageControllers2 = [WeakRetained pageControllers];
    v11 = [pageControllers2 objectAtIndex:{objc_msgSend(WeakRetained, "currentPageIndex") + 1}];

    toolPicker2 = [(AKToolbarView *)self toolPicker];
    [v11 _updateOverlayVisibilityWithToolPicker:toolPicker2 visible:visibleCopy];
  }
}

- (CGSize)intrinsicContentSize
{
  shouldUseCompactWidth = [(AKToolbarView *)self shouldUseCompactWidth];
  v3 = *MEMORY[0x277D77260];
  v4 = 75.0;
  if (!shouldUseCompactWidth)
  {
    v4 = *MEMORY[0x277D77260];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if ([(AKToolbarView *)self shouldUseCompactWidth:fits.width])
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

- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)size
{
  if (self->_wantsClearBackgroundColorInCompactSize != size)
  {
    self->_wantsClearBackgroundColorInCompactSize = size;
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

    array = [v11 arrayWithObjects:v12 count:v13];
    v15 = 13.0;
    goto LABEL_18;
  }

  array = [MEMORY[0x277CBEB18] array];
  traitCollection = [(AKToolbarView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    v7 = self->_undoRedoFixedSpace;
    v40[0] = self->_undoButton;
    v40[1] = v7;
    v40[2] = self->_redoButton;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    [array addObjectsFromArray:v8];

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

  [array addObject:*(&self->super.super.super.isa + v14)];
LABEL_13:
  [array addObject:v3];
  if (self->_showAttributePicker)
  {
    attributesPickerBarButton = self->_attributesPickerBarButton;
    v39[0] = v3;
    v39[1] = attributesPickerBarButton;
    shapesPickerButton = self->_shapesPickerButton;
    v39[2] = v3;
    v39[3] = shapesPickerButton;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [array addObjectsFromArray:v18];
  }

  else
  {
    [array addObject:self->_shapesPickerButton];
  }

  traitCollection2 = [(AKToolbarView *)self traitCollection];
  horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

  v15 = 0.0;
  if (horizontalSizeClass2 == 2)
  {
    NSLog(&cfstr_OkShowTheUndoR.isa);
  }

LABEL_18:
  if (self->_shareButtonHidden)
  {
    v21 = [array mutableCopy];
    [v21 removeObject:self->_shareButton];

    array = v21;
  }

  if (self->_undoRedoButtonsHidden && !self->_alwaysShowUndoButton)
  {
    v22 = [array mutableCopy];
    [v22 removeObject:self->_undoButton];
    [v22 removeObject:self->_undoRedoFixedSpace];
    [v22 removeObject:self->_redoButton];

    array = v22;
  }

  [(AKToolbarView *)self _safeAreaInsetsWithCachingIfNeeded];
  [(NSLayoutConstraint *)self->_toolbarBottomConstraint setConstant:-(v15 + v23)];
  [(UIToolbar *)self->_toolbar setItems:array animated:0];
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
    popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
    toolPicker = [(AKToolbarView *)self toolPicker];
    [toolPicker _setPresentationController:popoverPresentingController];

    wantsClearBackgroundColorInCompactSize = [(AKToolbarView *)self wantsClearBackgroundColorInCompactSize];
    toolPicker2 = [(AKToolbarView *)self toolPicker];
    [toolPicker2 _setWantsClearBackgroundColorInCompactSize:wantsClearBackgroundColorInCompactSize];

    traitCollection3 = [(AKToolbarView *)self traitCollection];
    userInterfaceStyle = [traitCollection3 userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
      p_attributesPickerButton = &self->_attributesPickerButton;
      [(AKAttributesPickerButton *)self->_attributesPickerButton setBackgroundColor:systemDarkGrayColor];

      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
      p_attributesPickerButton = &self->_attributesPickerButton;
      [(AKAttributesPickerButton *)self->_attributesPickerButton setBackgroundColor:systemLightGrayColor];

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
    _paletteView = [(AKToolbarView *)self _paletteView];
    [_paletteView paletteScaleFactor];
    [(NSLayoutConstraint *)self->_attributesPickerButtonWidthConstraint setConstant:v4 * 36.0];
  }

  if ([(AKToolbarView *)self shouldUseCompactWidth])
  {
    [(NSLayoutConstraint *)self->_attributesPickerButtonHeigthConstraint setConstant:28.0];
  }

  else
  {
    _paletteView2 = [(AKToolbarView *)self _paletteView];
    [_paletteView2 paletteScaleFactor];
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

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = AKToolbarView;
  [(AKToolbarView *)&v5 setBackgroundColor:color];
  backgroundColor = [(AKToolbarView *)self backgroundColor];
  [(AKToolbarBackgroundView *)self->_backgroundView setBackgroundColor:backgroundColor];
}

- (void)setOpaque:(BOOL)opaque
{
  v4.receiver = self;
  v4.super_class = AKToolbarView;
  [(AKToolbarView *)&v4 setOpaque:opaque];
  [(AKToolbarBackgroundView *)self->_backgroundView setOpaque:[(AKToolbarView *)self isOpaque]];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v20.receiver = self;
  v20.super_class = AKToolbarView;
  [(AKToolbarView *)&v20 traitCollectionDidChange:changeCopy];
  traitCollection = [(AKToolbarView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    toolPicker = [(AKToolbarView *)self toolPicker];
    traitCollection2 = [(AKToolbarView *)self traitCollection];
    [toolPicker _updatePaletteTraitCollection:traitCollection2];
  }

  traitCollection3 = [(AKToolbarView *)self traitCollection];
  horizontalSizeClass = [traitCollection3 horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    [(AKToolbarView *)self setNeedsUpdateConstraints];
    [(AKToolbarView *)self setNeedsLayout];
  }

  presentedViewController = [(AKToolbarView *)self presentedViewController];
  [(AKToolbarView *)self _updateTraitCollectionForViewControllerIfNecessary:presentedViewController];

  traitCollection4 = [(AKToolbarView *)self traitCollection];
  v15 = [traitCollection4 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v15)
  {
    presentedViewController2 = [(AKToolbarView *)self presentedViewController];
    popoverPresentationController = [presentedViewController2 popoverPresentationController];

    if (popoverPresentationController)
    {
      presentedViewController3 = [(AKToolbarView *)self presentedViewController];
      popoverPresentationController2 = [presentedViewController3 popoverPresentationController];
      [popoverPresentationController2 traitCollectionDidChange:changeCopy];
    }
  }
}

- (BOOL)shouldUseCompactWidth
{
  traitCollection = [(AKToolbarView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
    traitCollection2 = [(AKToolbarView *)self traitCollection];
    v5 = [traitCollection2 horizontalSizeClass] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)shouldUseCompactHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  traitCollection = [(AKToolbarView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return !userInterfaceIdiom || horizontalSizeClass == 1;
}

- (void)setContentsHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_contentsHidden != hidden)
  {
    animatedCopy = animated;
    hiddenCopy = hidden;
    self->_contentsHidden = hidden;
    v7 = !hidden;
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F4106A4;
    v11[3] = &unk_278C7B6F8;
    objc_copyWeak(v12, &location);
    v12[1] = *&v7;
    v8 = MEMORY[0x245CAF110](v11);
    v9 = v8;
    if (animatedCopy)
    {
      if (hiddenCopy)
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
  annotationController = [(AKToolbarView *)self annotationController];
  currentPageController = [annotationController currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];

  return selectedAnnotations;
}

- (id)createUndoViewControllerWithActionHandler:(id)handler
{
  handlerCopy = handler;
  annotationController = [(AKToolbarView *)self annotationController];
  delegate = [annotationController delegate];
  v7 = [delegate undoManagerForAnnotationController:annotationController];

  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  [v8 setModalPresentationStyle:7];
  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  popoverPresentationController2 = [v8 popoverPresentationController];
  [popoverPresentationController2 setPermittedArrowDirections:3];

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_23F410C54;
  v41[3] = &unk_278C7B748;
  v11 = handlerCopy;
  v42 = v11;
  v12 = MEMORY[0x245CAF110](v41);
  objc_initWeak(&location, self);
  if ([annotationController validateUndo:0])
  {
    v13 = +[AKController akBundle];
    v14 = [v13 localizedStringForKey:@"Undo" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

    undoActionName = [v7 undoActionName];
    v31 = v11;
    if ([undoActionName length])
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v14, undoActionName];

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
  annotationController = [(AKToolbarView *)self annotationController];
  [annotationController currentPageController];
  v42 = v41 = annotationController;
  currentPageController = [annotationController currentPageController];
  pageModelController = [currentPageController pageModelController];

  v40 = pageModelController;
  [pageModelController selectedAnnotations];
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
  _paletteView = [(AKToolbarView *)self _paletteView];
  [_paletteView paletteScaleFactor];
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

    _paletteView2 = [(AKToolbarView *)self _paletteView];
    [_paletteView2 setSelectedAnnotationType:v24];

    inkPageOverlayController = [v42 inkPageOverlayController];
    inkOverlayView = [inkPageOverlayController inkOverlayView];
    canvasView = [inkOverlayView canvasView];
    _selectionInteraction = [canvasView _selectionInteraction];

    [_selectionInteraction setEnabled:0];
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeTarget:self action:sel__showTextAttributes_ forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeTarget:self action:sel__showShapeAttributes_ forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton addTarget:self action:v14 forControlEvents:64];
    [(AKAttributesPickerButton *)self->_attributesPickerButton setImage:v23 forState:0];
    superview = [(AKAttributesPickerButton *)self->_attributesPickerButton superview];
    _paletteView3 = [(AKToolbarView *)self _paletteView];
    contextualEditingView = [_paletteView3 contextualEditingView];

    if (superview != contextualEditingView)
    {
      [(AKToolbarView *)self _installAttributesPickerButtonInPaletteContextEditingViewIfNeeded];
    }

    v33 = v41;
    v34 = v42;
  }

  else
  {
    _paletteView4 = [(AKToolbarView *)self _paletteView];
    [_paletteView4 setSelectedAnnotationType:v12];

    superview2 = [(AKAttributesPickerButton *)self->_attributesPickerButton superview];

    if (superview2)
    {
      [(AKAttributesPickerButton *)self->_attributesPickerButton removeFromSuperview];
    }

    v34 = v42;
    _selectionInteraction = [v42 inkPageOverlayController];
    inkOverlayView2 = [_selectionInteraction inkOverlayView];
    canvasView2 = [inkOverlayView2 canvasView];
    _selectionInteraction2 = [canvasView2 _selectionInteraction];
    [_selectionInteraction2 setEnabled:1];

    v33 = v41;
  }

  [(AKToolbarView *)self setNeedsLayout];
  [(AKToolbarView *)self setNeedsUpdateConstraints];
}

- (void)_installAttributesPickerButtonInPaletteContextEditingViewIfNeeded
{
  v17[2] = *MEMORY[0x277D85DE8];
  _paletteView = [(AKToolbarView *)self _paletteView];
  contextualEditingView = [_paletteView contextualEditingView];

  if (contextualEditingView)
  {
    [(AKAttributesPickerButton *)self->_attributesPickerButton removeFromSuperview];
    [contextualEditingView addSubview:self->_attributesPickerButton];
    [(AKAttributesPickerButton *)self->_attributesPickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
    toolPicker = [(AKToolbarView *)self toolPicker];
    _palettePosition = [toolPicker _palettePosition];

    if (_palettePosition > 2)
    {
      if (_palettePosition != 3)
      {
        if (_palettePosition != 4)
        {
LABEL_11:
          [(AKToolbarView *)self setNeedsUpdateConstraints];
          [(AKToolbarView *)self layoutIfNeeded];
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }

    else if (_palettePosition != 1)
    {
      if (_palettePosition != 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      v7 = MEMORY[0x277CCAAD0];
      topAnchor = [(AKAttributesPickerButton *)self->_attributesPickerButton topAnchor];
      topAnchor2 = [contextualEditingView topAnchor];
      v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v17[0] = v10;
      centerXAnchor = [(AKAttributesPickerButton *)self->_attributesPickerButton centerXAnchor];
      centerXAnchor2 = [contextualEditingView centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v17[1] = v13;
      v14 = v17;
LABEL_10:
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      [v7 activateConstraints:v15];

      goto LABEL_11;
    }

    v7 = MEMORY[0x277CCAAD0];
    topAnchor = [(AKAttributesPickerButton *)self->_attributesPickerButton leadingAnchor];
    topAnchor2 = [contextualEditingView leadingAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v16[0] = v10;
    centerXAnchor = [(AKAttributesPickerButton *)self->_attributesPickerButton centerYAnchor];
    centerXAnchor2 = [contextualEditingView centerYAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v16[1] = v13;
    v14 = v16;
    goto LABEL_10;
  }

LABEL_12:
}

- (void)revalidateItems
{
  annotationController = [(AKToolbarView *)self annotationController];
  if (([annotationController isTornDown] & 1) == 0)
  {
    -[UIBarButtonItem setEnabled:](self->_undoButton, "setEnabled:", [annotationController validateUndo:0]);
    -[UIBarButtonItem setEnabled:](self->_redoButton, "setEnabled:", [annotationController validateRedo:0]);
    _paletteView = [(AKToolbarView *)self _paletteView];
    [_paletteView setNeedsLayout];

    [(AKToolbarView *)self _updatePaletteUI];
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (void)_undoManagerNotification:(id)notification
{
  notificationCopy = notification;
  annotationController = [(AKToolbarView *)self annotationController];
  delegate = [annotationController delegate];
  v6 = [delegate undoManagerForAnnotationController:annotationController];
  object = [notificationCopy object];

  if (object == v6)
  {
    name = [notificationCopy name];
    if ([name isEqualToString:*MEMORY[0x277CCA810]])
    {
    }

    else
    {
      name2 = [notificationCopy name];
      v10 = [name2 isEqualToString:*MEMORY[0x277CCA808]];

      if (!v10)
      {
LABEL_6:
        [(AKToolbarView *)self revalidateItems];
        goto LABEL_7;
      }
    }

    window = [(AKToolbarView *)self window];
    [window makeKeyWindow];

    toolPicker = [(AKToolbarView *)self toolPicker];
    [toolPicker _updateToolPickerVisibility];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_annotationSelectionNotification:(id)notification
{
  notificationCopy = notification;
  annotationController = [(AKToolbarView *)self annotationController];
  modelController = [annotationController modelController];
  pageModelControllers = [modelController pageModelControllers];
  object = [notificationCopy object];

  LODWORD(notificationCopy) = [pageModelControllers containsObject:object];
  if (notificationCopy)
  {
    [(AKToolbarView *)self revalidateItems];
    currentPageController = [annotationController currentPageController];
    pageModelController = [currentPageController pageModelController];

    selectedAnnotations = [pageModelController selectedAnnotations];
    currentPageController2 = [annotationController currentPageController];
    inkPageOverlayController = [currentPageController2 inkPageOverlayController];
    inkOverlayView = [inkPageOverlayController inkOverlayView];
    canvasView = [inkOverlayView canvasView];

    if ([selectedAnnotations count] && objc_msgSend(canvasView, "_hasSelection"))
    {
      [canvasView commitSelectionIfNecessaryWithCompletion:0];
    }

    [(AKToolbarView *)self _updatePaletteUI];
  }
}

- (void)_undo:(id)_undo
{
  annotationController = [(AKToolbarView *)self annotationController];
  [annotationController undo:0];
}

- (void)_undoAll:(id)all
{
  annotationController = [(AKToolbarView *)self annotationController];
  if ([annotationController validateUndo:0])
  {
    do
    {
      [annotationController undo:0];
    }

    while (([annotationController validateUndo:0] & 1) != 0);
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

- (void)_undoLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    view = [pressCopy view];
    [(AKToolbarView *)self _showUndoAlertPopover:view];
  }
}

- (void)_redo:(id)_redo
{
  annotationController = [(AKToolbarView *)self annotationController];
  [annotationController redo:0];
}

- (void)_showTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (sub_23F4119E4(self->_textAttributesViewController))
  {
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  }

  else if ((sub_23F411A24(self->_textAttributesViewController) & 1) == 0)
  {
    [(AKToolbarView *)self _showTextStylePopover:attributesCopy];
  }
}

- (void)_showShapeAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (sub_23F4119E4(self->_attributePickerViewController))
  {
    [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  }

  else if ((sub_23F411A24(self->_attributePickerViewController) & 1) == 0)
  {
    [(AKToolbarView *)self _showShapeAttributesPopover:attributesCopy];
  }
}

- (void)setUndoRedoButtonsHidden:(BOOL)hidden
{
  if (self->_undoRedoButtonsHidden != hidden)
  {
    self->_undoRedoButtonsHidden = hidden;
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (void)setShareButtonHidden:(BOOL)hidden
{
  if (self->_shareButtonHidden != hidden)
  {
    self->_shareButtonHidden = hidden;
    [(AKToolbarView *)self setNeedsLayout];
  }
}

- (BOOL)isPresentingPopovers
{
  presentedViewController = [(AKToolbarView *)self presentedViewController];
  v3 = presentedViewController != 0;

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
  annotationController = [(AKToolbarView *)self annotationController];
  delegate = [annotationController delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate popoverPresentingViewControllerForAnnotationController:annotationController], (rootViewController = objc_claimAutoreleasedReturnValue()) == 0))
  {
    window = [(AKToolbarView *)self window];
    rootViewController = [window rootViewController];
  }

  return rootViewController;
}

- (id)presentedViewController
{
  popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
  presentedViewController = [popoverPresentingController presentedViewController];

  if (!presentedViewController)
  {
    p_signaturesAlertController = &self->_signaturesAlertController;
    signaturesAlertController = self->_signaturesAlertController;
    if (signaturesAlertController && (-[AKAlertController presentationController](signaturesAlertController, "presentationController"), v7 = objc_claimAutoreleasedReturnValue(), [v7 presentingViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) || (p_signaturesAlertController = &self->_undoAlertController, (undoAlertController = self->_undoAlertController) != 0) && (-[UIAlertController presentationController](undoAlertController, "presentationController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11) || (p_signaturesAlertController = &self->_textAttributesViewController, (textAttributesViewController = self->_textAttributesViewController) != 0) && (-[AKTextAttributesViewController presentationController](textAttributesViewController, "presentationController"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "presentingViewController"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14) || (p_signaturesAlertController = &self->_toolsListViewController, (toolsListViewController = self->_toolsListViewController) != 0) && (-[AKToolsListViewController presentationController](toolsListViewController, "presentationController"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "presentingViewController"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) || (p_signaturesAlertController = &self->_attributePickerViewController, (attributePickerViewController = self->_attributePickerViewController) != 0) && (-[AKAttributePickerViewController presentationController](attributePickerViewController, "presentationController"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "presentingViewController"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20) || (p_signaturesAlertController = &self->_signaturesCreationController, (signaturesCreationController = self->_signaturesCreationController) != 0) && (-[AKSignatureCreationViewController_iOS presentationController](signaturesCreationController, "presentationController"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "presentingViewController"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23) || (p_signaturesAlertController = &self->_signaturesSheetViewController, (signaturesSheetViewController = self->_signaturesSheetViewController) != 0) && (-[AKSignaturesViewController_iOS presentationController](signaturesSheetViewController, "presentationController"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "presentingViewController"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
LABEL_18:
      presentedViewController = *p_signaturesAlertController;
      goto LABEL_19;
    }

    p_signaturesAlertController = &self->_imageDescriptionViewController;
    imageDescriptionViewController = self->_imageDescriptionViewController;
    if (imageDescriptionViewController)
    {
      presentationController = [(AXSSImageDescriptionViewController *)imageDescriptionViewController presentationController];
      presentedViewController = [presentationController presentingViewController];

      if (!presentedViewController)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    presentedViewController = 0;
  }

LABEL_19:

  return presentedViewController;
}

- (void)didDismissPopoverAndRestorePalette
{
  [(AKToolbarView *)self didDismissPopover];
  [(AKToolbarView *)self becomeFirstResponder];

  [(AKToolbarView *)self _setToolPickerVisible:1 forResponder:self];
}

- (void)didDismissPopover
{
  annotationController = [(AKToolbarView *)self annotationController];
  delegate = [annotationController delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate controllerDidDismissPopover:annotationController];
  }
}

- (void)_showSignaturesPopover:(id)popover fromSourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  annotationController = [(AKToolbarView *)self annotationController];
  signatureModelController = [annotationController signatureModelController];
  signatures = [signatureModelController signatures];
  v14 = [signatures count];

  if (v14)
  {
    if (!self->_signaturesSheetViewController)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_23F412224;
      v15[3] = &unk_278C7B7E8;
      v16 = annotationController;
      selfCopy = self;
      v18 = viewCopy;
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

- (void)_showTextStylePopover:(id)popover
{
  popoverCopy = popover;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23F4125D8;
  v6[3] = &unk_278C7B810;
  v6[4] = self;
  v7 = popoverCopy;
  v5 = popoverCopy;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v6];
}

- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23F41292C;
  v20[3] = &unk_278C7B838;
  v7 = completionCopy;
  v20[4] = self;
  v21 = v7;
  v8 = MEMORY[0x245CAF110](v20);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_23F412984;
  v18 = sub_23F412994;
  presentedViewController = [(AKToolbarView *)self presentedViewController];
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
    [v10 dismissViewControllerAnimated:animatedCopy completion:v11];
  }

  else
  {
    v8[2](v8);
  }

  _Block_object_dispose(&v14, 8);
}

- (void)_presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setBackgroundColor:systemBackgroundColor];

  popoverPresentationController2 = [controllerCopy popoverPresentationController];
  [popoverPresentationController2 _setIgnoreBarButtonItemSiblings:1];
  _paletteView = [(AKToolbarView *)self _paletteView];

  if (_paletteView)
  {
    _toolPickerPopoverConfiguration = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
    [_toolPickerPopoverConfiguration layoutSceneMargins];
    [popoverPresentationController2 setPopoverLayoutMargins:?];
  }

  popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
  [popoverPresentingController presentViewController:controllerCopy animated:animatedCopy completion:0];

  [(AKToolbarView *)self _updateTraitCollectionForViewControllerIfNecessary:controllerCopy];
}

- (void)_updateTraitCollectionForViewControllerIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  _responderWindow = [necessaryCopy _responderWindow];
  _isTextEffectsWindow = [_responderWindow _isTextEffectsWindow];

  if (_isTextEffectsWindow)
  {
    traitCollection = [(AKToolbarView *)self traitCollection];
    [necessaryCopy setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    parentViewController = [necessaryCopy parentViewController];
    traitCollection2 = [(AKToolbarView *)self traitCollection];
    [parentViewController setOverrideTraitCollection:traitCollection2 forChildViewController:necessaryCopy];
  }
}

- (void)_showMarkupToolsPopover:(id)popover
{
  popoverCopy = popover;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23F412C7C;
  v6[3] = &unk_278C7B810;
  v6[4] = self;
  v7 = popoverCopy;
  v5 = popoverCopy;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v6];
}

- (void)endOpacityEditing
{
  _paletteView = [(AKToolbarView *)self _paletteView];
  [_paletteView endOpacityEditing];
}

- (void)_showShapeAttributesPopover:(id)popover
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_23F412F20;
  v3[3] = &unk_278C7B540;
  v3[4] = self;
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v3];
}

- (void)_showUndoAlertPopover:(id)popover
{
  popoverCopy = popover;
  createUndoViewController = [(AKToolbarView *)self createUndoViewController];
  undoAlertController = self->_undoAlertController;
  self->_undoAlertController = createUndoViewController;

  [(AKToolbarView *)self _setPopoverPresentationSource:self->_undoAlertController fromSender:popoverCopy];
  v7 = self->_undoAlertController;

  [(AKToolbarView *)self _presentViewController:v7 animated:1];
}

- (void)_setPopoverPresentationSource:(id)source fromSender:(id)sender
{
  sourceCopy = source;
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = senderCopy;
    [v7 bounds];
    [(AKToolbarView *)self _setPopoverPresentationSource:sourceCopy fromSender:v7 sourceRect:?];
  }

  else
  {
    [(AKToolbarView *)self _setPopoverPresentationSource:sourceCopy fromSender:senderCopy sourceRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }
}

- (void)_setPopoverPresentationSource:(id)source fromSender:(id)sender sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  senderCopy = sender;
  popoverPresentationController = [source popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setSourceView:senderCopy];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, -6.0, -6.0);
    [popoverPresentationController setSourceRect:{v14.origin.x, v14.origin.y, v14.size.width, v14.size.height}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [popoverPresentationController setBarButtonItem:senderCopy];
    }
  }
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  AKLog(@"%s %@");
  v5 = [(AKSignatureCreationViewController_iOS *)self->_signaturesCreationController popoverPresentationController:"[AKToolbarView presentationControllerShouldDismiss:]"];

  if (v5 == dismissCopy)
  {
    annotationController = [(AKToolbarView *)self annotationController];
    delegate = [annotationController delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillDismissSignatureCaptureView:annotationController];
    }
  }

  return 1;
}

- (void)signaturesViewControllerDidCancel:(id)cancel
{
  AKLog(@"%s %@");
  if (self->_signaturesSheetViewController)
  {
    v4 = [(AKToolbarView *)self annotationController:"[AKToolbarView signaturesViewControllerDidCancel:]"];
    delegate = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillDismissSignatureManagerView:v4];
    }

    popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F413744;
    v13[3] = &unk_278C7B540;
    v13[4] = self;
    [popoverPresentingController dismissViewControllerAnimated:1 completion:v13];

    popoverPresentationController = [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

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

- (void)signaturesViewControllerDidSelectSignature:(id)signature
{
  signatureCopy = signature;
  AKLog(@"%s %@");
  v5 = [(AKToolbarView *)self annotationController:"[AKToolbarView signaturesViewControllerDidSelectSignature:]"];
  v6 = v5;
  if (self->_signaturesSheetViewController)
  {
    delegate = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillDismissSignatureManagerView:v6];
    }

    popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
    [popoverPresentingController dismissViewControllerAnimated:1 completion:0];

    popoverPresentationController = [(AKSignaturesViewController_iOS *)self->_signaturesSheetViewController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

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

- (void)signaturesViewControllerContinueToManageSignatures:(id)signatures
{
  signaturesCopy = signatures;
  signaturesAlertController = self->_signaturesAlertController;
  v16 = signaturesCopy;
  if (signaturesAlertController)
  {
    popoverPresentationController = [(AKAlertController *)signaturesAlertController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    v7 = self->_signaturesAlertController;
    self->_signaturesAlertController = 0;

    signaturesCopy = v16;
  }

  v15 = signaturesCopy;
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
    annotationController = [(AKToolbarView *)self annotationController];
    delegate = [annotationController delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillShowSignatureManagerView:annotationController];
    }

    [(AKToolbarView *)self _presentViewController:self->_signaturesSheetViewController animated:1];

    v8 = v16;
  }
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)signature
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

- (void)_configureCustomDetentPresentationIfNeeded:(id)needed
{
  v9[1] = *MEMORY[0x277D85DE8];
  sheetPresentationController = [needed sheetPresentationController];
  if (sheetPresentationController)
  {
    traitCollection = [(AKToolbarView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom])
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
        [sheetPresentationController setDetents:v8];

        [sheetPresentationController setSelectedDetentIdentifier:@"markupDetentIdentifier"];
      }
    }
  }
}

- (void)signatureCreationControllerDidCreateSignature:(id)signature
{
  annotationController = [(AKToolbarView *)self annotationController];
  v3 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764019];
  [annotationController performActionForSender:v3];
}

- (void)toolsList:(id)list didSelectToolWithTag:(int64_t)tag
{
  listCopy = list;
  v7 = listCopy;
  if (tag == 764066)
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

  if (tag != 764019)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23F4140D0;
    v13[3] = &unk_278C7B8D0;
    v13[4] = self;
    v13[5] = tag;
    v12 = v13;
    goto LABEL_6;
  }

  shapesPickerButton = self->_shapesPickerButton;
  popoverPresentationController = [listCopy popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];
  popoverPresentationController2 = [v7 popoverPresentationController];
  [popoverPresentationController2 sourceRect];
  [(AKToolbarView *)self _showSignaturesPopover:shapesPickerButton fromSourceView:sourceView sourceRect:?];

LABEL_7:
}

- (void)toolsListDidSelectOpacityItem:(id)item
{
  [(AKToolbarView *)self _dismissCurrentlyPresentedPopoverAnimated:1 withCompletion:0];
  opacityEditingDelegate = [(AKToolbarView *)self opacityEditingDelegate];
  if (opacityEditingDelegate)
  {
    v8 = opacityEditingDelegate;
    _paletteView = [(AKToolbarView *)self _paletteView];
    [_paletteView startOpacityEditing];

    _paletteView2 = [(AKToolbarView *)self _paletteView];
    opacityEditingView = [_paletteView2 opacityEditingView];
    [v8 toolbarDidSelectOpacityOptionWithAccessoryView:opacityEditingView];

    opacityEditingDelegate = v8;
  }
}

- (void)attributePicker:(id)picker didSelectToolWithTag:(int64_t)tag attributeTag:(int64_t)attributeTag
{
  v35 = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  annotationController = [(AKToolbarView *)self annotationController];
  currentPageController = [annotationController currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  v10 = [(AKMinimalUserInterfaceItem *)[AKMinimalColorChooserUserInterfaceItem alloc] initWithTag:765102];
  v11 = v10;
  if (tag == 765102)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = selectedAnnotations;
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

      strokeColor = [v18 strokeColor];

      if (strokeColor)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_10:
    }

    attributeController = [annotationController attributeController];
    strokeColor = [attributeController strokeColor];

LABEL_16:
    [(AKMinimalColorChooserUserInterfaceItem *)v11 setColor:strokeColor];
    [annotationController performActionForSender:v11];
  }

  else
  {
    [(AKMinimalColorChooserUserInterfaceItem *)v10 setColor:0];
    [annotationController performActionForSender:v11];
    v19 = [[AKMinimalUserInterfaceItem alloc] initWithTag:tag];
    [annotationController performActionForSender:v19];
    if (attributeTag != 763000)
    {
      v20 = [[AKMinimalUserInterfaceItem alloc] initWithTag:attributeTag];

      [annotationController performActionForSender:v20];
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
  selectedAnnotations = [(AKToolbarView *)self selectedAnnotations];
  v3 = [selectedAnnotations count] != 0;

  return v3;
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  annotationController = [(AKToolbarView *)self annotationController];
  [(AKToolbarView *)self _updateAttributeControllerInk:inkCopy];

  toolController = [annotationController toolController];
  toolMode = [toolController toolMode];

  if (toolMode != 4 && [annotationController annotationEditingEnabled])
  {
    v7 = [[AKMinimalUserInterfaceItem alloc] initWithTag:764017];
    [annotationController performActionForSender:v7];
  }
}

- (id)paletteViewSelectedAnnotationColor:(id)color
{
  annotationController = [(AKToolbarView *)self annotationController];
  attributeController = [annotationController attributeController];
  selectedAnnotations = [(AKToolbarView *)self selectedAnnotations];
  anyObject = [selectedAnnotations anyObject];

  if (anyObject)
  {
    [anyObject valueForKey:@"strokeColor"];
  }

  else
  {
    [attributeController strokeColor];
  }
  v8 = ;

  return v8;
}

- (void)paletteViewDidSelectPlusButton:(id)button
{
  buttonCopy = button;
  [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:1];
  v4 = objc_alloc_init(AKToolsListViewController);
  [(AKToolsListViewController *)v4 setSupportsOpacityEditing:[(AKToolbarView *)self supportsOpacityEditing]];
  annotationController = [(AKToolbarView *)self annotationController];
  -[AKToolsListViewController setSupportsImageDescriptionEditing:](v4, "setSupportsImageDescriptionEditing:", [annotationController supportsImageDescriptionEditing]);

  [(AKToolsListViewController *)v4 setDelegate:self];
  [(AKToolsListViewController *)v4 setModalPresentationStyle:7];
  popoverPresentationController = [(AKToolsListViewController *)v4 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  popoverPresentationController2 = [(AKToolsListViewController *)v4 popoverPresentationController];
  [popoverPresentationController2 setBackgroundColor:systemBackgroundColor];

  objc_storeStrong(&self->_toolsListViewController, v4);
  popoverPresentationController3 = [(AKToolsListViewController *)v4 popoverPresentationController];
  [popoverPresentationController3 _setShouldDisableInteractionDuringTransitions:0];
  _toolPickerPopoverConfiguration = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
  passthroughViews = [_toolPickerPopoverConfiguration passthroughViews];
  [popoverPresentationController3 setPassthroughViews:passthroughViews];

  _toolPickerPopoverConfiguration2 = [(AKToolbarView *)self _toolPickerPopoverConfiguration];
  [popoverPresentationController3 setPermittedArrowDirections:{objc_msgSend(_toolPickerPopoverConfiguration2, "permittedArrowDirections")}];

  [popoverPresentationController3 setSourceView:buttonCopy];
  [buttonCopy plusButtonFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  palettePosition = [buttonCopy palettePosition];
  if (palettePosition <= 2)
  {
    if (palettePosition != 1)
    {
      v22 = palettePosition == 2;
      goto LABEL_6;
    }

LABEL_9:
    [buttonCopy bounds];
    v16 = v25;
    [buttonCopy bounds];
    v20 = v26;
    goto LABEL_10;
  }

  if (palettePosition == 3)
  {
    goto LABEL_9;
  }

  v22 = palettePosition == 4;
LABEL_6:
  if (v22)
  {
    [buttonCopy bounds];
    v14 = v23;
    [buttonCopy bounds];
    v18 = v24;
  }

LABEL_10:
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  v30 = CGRectInset(v29, -6.0, -6.0);
  [popoverPresentationController3 setSourceRect:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  [popoverPresentationController3 _setIgnoresKeyboardNotifications:1];
  [(AKToolbarView *)self _presentViewController:v4 animated:1];
}

- (id)_toolPickerUndoManager:(id)manager
{
  annotationController = [(AKToolbarView *)self annotationController];
  undoController = [annotationController undoController];
  undoManager = [undoController undoManager];

  return undoManager;
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  changeCopy = change;
  [(AKToolbarView *)self _updatePaletteUI];
  annotationController = [(AKToolbarView *)self annotationController];
  [annotationController _updateGestureDependencyPriority];
  [annotationController toolPickerVisibilityDidChange:changeCopy];
}

- (void)toolPickerSelectedToolDidChange:(id)change
{
  selectedTool = [change selectedTool];
  v4 = [selectedTool ink];
  [(AKToolbarView *)self setInk:v4];
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  changeCopy = change;
  annotationController = [(AKToolbarView *)self annotationController];
  isRulerActive = [changeCopy isRulerActive];

  attributeController = [annotationController attributeController];
  v7 = attributeController;
  if (isRulerActive)
  {
    [attributeController forceShowRuler];
  }

  else
  {
    [attributeController forceHideRuler];
  }
}

- (void)_toolPicker:(id)picker didChangeColor:(id)color
{
  pickerCopy = picker;
  colorCopy = color;
  if (![(AKToolbarView *)self _hasSelectedAnnotations])
  {
    WeakRetained = objc_loadWeakRetained(&self->_annotationController);
    currentPageController = [WeakRetained currentPageController];

    inkPageOverlayController = [currentPageController inkPageOverlayController];
    inkOverlayView = [inkPageOverlayController inkOverlayView];
    canvasView = [inkOverlayView canvasView];

    [canvasView _toolPicker:pickerCopy didChangeColor:colorCopy];
    goto LABEL_9;
  }

  currentPageController = [(AKToolbarView *)self annotationController];
  v8 = [AKToolbarUtilities attributeTagForCurrentSelectionState:currentPageController];
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
    [(AKMinimalColorChooserUserInterfaceItem *)v15 setColor:colorCopy];
    [currentPageController performActionForSender:v15];

    goto LABEL_9;
  }

  NSLog(&cfstr_SCalledWithInc.isa, "[AKToolbarView _toolPicker:didChangeColor:]", v8);
LABEL_9:
}

+ (id)undoButtonImageWithStyle:(unint64_t)style
{
  if (style == 1)
  {
    v3 = @"AKModern_Undo_Bold";
  }

  else
  {
    v3 = @"AKModern_Undo";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

+ (id)redoButtonImageWithStyle:(unint64_t)style
{
  if (style == 1)
  {
    v3 = @"AKModern_Redo_Bold";
  }

  else
  {
    v3 = @"AKModern_Redo";
  }

  return [MEMORY[0x277D755B8] akImageNamed:v3];
}

- (CGRect)frameObscuredInView:(id)view
{
  viewCopy = view;
  toolPicker = [(AKToolbarView *)self toolPicker];
  [toolPicker frameObscuredInView:viewCopy];
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

- (void)_askAnnotationControllerDelegateToEnterFullScreen:(BOOL)screen
{
  screenCopy = screen;
  annotationController = [(AKToolbarView *)self annotationController];
  delegate = [annotationController delegate];
  if (screenCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillShowSignatureCaptureView:annotationController];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate controllerWillDismissSignatureCaptureView:annotationController];
  }
}

- (void)_presentImageDescriptionViewController
{
  if (!self->_imageDescriptionViewController)
  {
    [(AKToolbarView *)self _askAnnotationControllerDelegateToEnterFullScreen:1];
    annotationController = [(AKToolbarView *)self annotationController];
    delegate = [annotationController delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate performSelector:sel_contentSnapshot];
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
    originalOrModifiedImageDescription = [annotationController originalOrModifiedImageDescription];
    [(AXSSImageDescriptionViewController *)self->_imageDescriptionViewController setImageDescription:originalOrModifiedImageDescription];

    [(AKToolbarView *)self _configureCustomDetentPresentationIfNeeded:self->_imageDescriptionViewController];
    [(AKToolbarView *)self _presentViewController:self->_imageDescriptionViewController animated:1];
  }
}

- (void)_dismissImageDescriptionViewController
{
  popoverPresentingController = [(AKToolbarView *)self popoverPresentingController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23F421C00;
  v5[3] = &unk_278C7B540;
  v5[4] = self;
  [popoverPresentingController dismissViewControllerAnimated:1 completion:v5];

  imageDescriptionViewController = self->_imageDescriptionViewController;
  self->_imageDescriptionViewController = 0;
}

- (void)imageDescriptionViewControllerDidCancel:(id)cancel
{
  if (self->_imageDescriptionViewController)
  {
    MEMORY[0x2821F9670](self, sel__dismissImageDescriptionViewController);
  }
}

- (void)imageDescriptionViewControllerDidSave:(id)save
{
  if (self->_imageDescriptionViewController)
  {
    imageDescription = [save imageDescription];
    annotationController = [(AKToolbarView *)self annotationController];
    [annotationController setModifiedImageDescription:imageDescription];

    MEMORY[0x2821F9670](self, sel__dismissImageDescriptionViewController);
  }
}

- (void)imageDescriptionViewControllerDidDismiss:(id)dismiss
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