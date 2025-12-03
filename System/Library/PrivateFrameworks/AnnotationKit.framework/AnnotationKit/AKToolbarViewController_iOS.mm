@interface AKToolbarViewController_iOS
- (AKToolbarViewController_iOS)initWithController:(id)controller;
- (BOOL)_legacyDoodlesEnabled;
- (BOOL)_validateUndoButton;
- (BOOL)isPresentingPopover;
- (BOOL)isPresentingPopovers;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (double)heightIncludingAdditionalVisibleBars;
- (double)visibleHeightOfAttributeBar;
- (id)_barButtonForToolbarType:(unint64_t)type;
- (id)_buildUndoAlertController;
- (id)_createNewColorPickerToolbarButtonWithTarget:(id)target selector:(SEL)selector;
- (id)_createNewCustomViewToolbarButtonWithImage:(id)image target:(id)target selector:(SEL)selector;
- (id)_createNewToggleToolbarButtonWithImage:(id)image tag:(int64_t)tag target:(id)target selector:(SEL)selector autoUpdatesColor:(BOOL)color;
- (id)_doodleModeToolbarImage;
- (id)_toolbarButtonItemOfType:(unint64_t)type;
- (int64_t)_attributeTagForCurrentSelectionState;
- (unint64_t)_workaroundToolbarPopoverPositioningBug26744300;
- (void)_buildBasicItems;
- (void)_deleteSelectedItems:(id)items;
- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_layoutAttributeContainer;
- (void)_layoutToolbarForTraitCollection:(id)collection;
- (void)_peripheralAvailabilityDidUpdate:(id)update;
- (void)_redoButtonAction:(id)action;
- (void)_setupPassthroughViewsForViewController:(id)controller;
- (void)_showColorPickerPopover:(id)popover;
- (void)_showLineStylePopover:(id)popover;
- (void)_showSignaturesPopover:(id)popover;
- (void)_showTextStylePopover:(id)popover;
- (void)_showUndoAlert:(id)alert;
- (void)_undoAllButtonAction:(id)action;
- (void)_undoButtonAction:(id)action;
- (void)_undoLongPressAction:(id)action;
- (void)_undoManagerNotification:(id)notification;
- (void)_updateToggleButton:(id)button withTraitCollection:(id)collection;
- (void)dealloc;
- (void)dismissAttributeToolbarForSelectedAnnotations;
- (void)dismissAttributeToolbarImmediately;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)revalidateItems;
- (void)setBarTintColor:(id)color;
- (void)setTintColor:(id)color;
- (void)showAttributeToolbarForSelectedAnnotations:(id)annotations andToolMode:(unint64_t)mode;
- (void)signatureCreationControllerDidCreateSignature:(id)signature;
- (void)signaturesViewControllerContinueToCreateSignature:(id)signature;
- (void)signaturesViewControllerContinueToManageSignatures:(id)signatures;
- (void)signaturesViewControllerDidCancel:(id)cancel;
- (void)signaturesViewControllerDidSelectSignature:(id)signature;
- (void)signaturesViewControllerEnterSignatureMode:(id)mode;
- (void)syncUIToSelectedColor;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation AKToolbarViewController_iOS

- (BOOL)_legacyDoodlesEnabled
{
  if (qword_27E39B5F8 != -1)
  {
    sub_23F4BD024();
  }

  return byte_27E39B5F0;
}

- (unint64_t)_workaroundToolbarPopoverPositioningBug26744300
{
  undoButton = [(AKToolbarViewController_iOS *)self undoButton];
  customView = [undoButton customView];

  if (!customView)
  {
    NSLog(&cfstr_UndoButtonMust.isa);
  }

  window = [customView window];
  [customView bounds];
  [window convertRect:customView fromCoordinateSpace:?];
  v6 = v5;

  window2 = [customView window];
  [window2 bounds];
  v9 = v8;

  if (v6 < v9 * 0.5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  return v10;
}

- (AKToolbarViewController_iOS)initWithController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = AKToolbarViewController_iOS;
  v5 = [(AKToolbarViewController *)&v19 initWithController:controllerCopy];
  v6 = v5;
  if (v5)
  {
    [(AKToolbarViewController_iOS *)v5 _buildBasicItems];
    undoController = [controllerCopy undoController];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277CCA810];
    undoManager = [undoController undoManager];
    [defaultCenter addObserver:v6 selector:sel__undoManagerNotification_ name:v9 object:undoManager];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277CCA808];
    undoManager2 = [undoController undoManager];
    [defaultCenter2 addObserver:v6 selector:sel__undoManagerNotification_ name:v12 object:undoManager2];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *MEMORY[0x277CCA7F8];
    undoManager3 = [undoController undoManager];
    [defaultCenter3 addObserver:v6 selector:sel__undoManagerNotification_ name:v15 object:undoManager3];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__peripheralAvailabilityDidUpdate_ name:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_dismissAttributeToolbarForSelectedAnnotations object:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:0];
  v4.receiver = self;
  v4.super_class = AKToolbarViewController_iOS;
  [(AKToolbarViewController_iOS *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75C58]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(AKToolbarViewController_iOS *)self setView:v8];

  v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [(AKToolbarViewController_iOS *)self setFloatingAttributeToolbarContainer:v9];

  floatingAttributeToolbarContainer = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  [floatingAttributeToolbarContainer setHidden:1];
}

- (void)_buildBasicItems
{
  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 13;
  }

  v4 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:v3];
  [(AKToolbarViewController_iOS *)self setSketchButton:v4];

  v5 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:13];
  [(AKToolbarViewController_iOS *)self setInkButton:v5];

  v6 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:3];
  [(AKToolbarViewController_iOS *)self setSignatureButton:v6];

  v7 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:9];
  [(AKToolbarViewController_iOS *)self setLoupeButton:v7];

  v8 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:4];
  [(AKToolbarViewController_iOS *)self setTextButton:v8];

  v9 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:10];
  [(AKToolbarViewController_iOS *)self setUndoButton:v9];

  v10 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:11];
  [(AKToolbarViewController_iOS *)self setRedoButton:v10];

  v11 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:5];
  [(AKToolbarViewController_iOS *)self setTextStyleButton:v11];

  v12 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:6];
  [(AKToolbarViewController_iOS *)self setLineStyleButton:v12];

  v13 = [(AKToolbarViewController_iOS *)self _barButtonForToolbarType:7];
  [(AKToolbarViewController_iOS *)self setStrokeColorButton:v13];

  [(AKToolbarViewController_iOS *)self _layoutToolbarForTraitCollection:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = AKToolbarViewController_iOS;
  changeCopy = change;
  [(AKToolbarViewController_iOS *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(AKToolbarViewController_iOS *)self traitCollection:v8.receiver];
  v6 = sub_23F45174C(v5, changeCopy);

  if (!v6)
  {
    traitCollection = [(AKToolbarViewController_iOS *)self traitCollection];
    [(AKToolbarViewController_iOS *)self _layoutToolbarForTraitCollection:traitCollection];

    [(AKToolbarViewController_iOS *)self revalidateItems];
  }
}

- (void)_layoutToolbarForTraitCollection:(id)collection
{
  v44[15] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  view = [(AKToolbarViewController_iOS *)self view];
  v40 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v40 setWidth:8.0];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  objc_setAssociatedObject(v6, sel_akToolbarButtonItemType, &unk_2851BB448, 0x303);
  v7 = sub_23F4516FC(collectionCopy);
  floatingAttributeToolbarContainer = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  [floatingAttributeToolbarContainer setHidden:v7];

  v39 = MEMORY[0x277CBEB18];
  inkButton = [(AKToolbarViewController_iOS *)self inkButton];
  v10 = inkButton;
  if (!v7)
  {
    v42[0] = inkButton;
    v42[1] = v6;
    loupeButton = [(AKToolbarViewController_iOS *)self loupeButton];
    v42[2] = loupeButton;
    v42[3] = v6;
    textButton = [(AKToolbarViewController_iOS *)self textButton];
    v42[4] = textButton;
    v42[5] = v6;
    signatureButton = [(AKToolbarViewController_iOS *)self signatureButton];
    v42[6] = signatureButton;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
    v17 = [v39 arrayWithArray:v23];

    if (![(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      goto LABEL_8;
    }

    sketchButton = [(AKToolbarViewController_iOS *)self sketchButton];
    v41 = sketchButton;
    v19 = &v41;
    goto LABEL_6;
  }

  v37 = view;
  v38 = collectionCopy;
  v44[0] = inkButton;
  v44[1] = v6;
  loupeButton2 = [(AKToolbarViewController_iOS *)self loupeButton];
  v44[2] = loupeButton2;
  v44[3] = v6;
  textButton2 = [(AKToolbarViewController_iOS *)self textButton];
  v44[4] = textButton2;
  v44[5] = v6;
  signatureButton2 = [(AKToolbarViewController_iOS *)self signatureButton];
  v44[6] = signatureButton2;
  v44[7] = v6;
  v44[8] = v6;
  v44[9] = v6;
  strokeColorButton = [(AKToolbarViewController_iOS *)self strokeColorButton];
  v44[10] = strokeColorButton;
  v44[11] = v6;
  lineStyleButton = [(AKToolbarViewController_iOS *)self lineStyleButton];
  v44[12] = lineStyleButton;
  v44[13] = v6;
  textStyleButton = [(AKToolbarViewController_iOS *)self textStyleButton];
  v44[14] = textStyleButton;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:15];
  v17 = [v39 arrayWithArray:v16];

  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    sketchButton = [(AKToolbarViewController_iOS *)self sketchButton];
    v43 = sketchButton;
    v19 = &v43;
    view = v37;
    collectionCopy = v38;
LABEL_6:
    v19[1] = v6;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v25 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 2}];
    [v17 insertObjects:v24 atIndexes:v25];

    goto LABEL_8;
  }

  view = v37;
  collectionCopy = v38;
LABEL_8:
  [(AKToolbarViewController_iOS *)self setStaticToolbarItems:v17];

  barTintColor = [(AKToolbarViewController_iOS *)self barTintColor];
  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  toolbar = [attributeToolbarViewController toolbar];
  [toolbar setBarTintColor:barTintColor];

  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    sketchButton2 = [(AKToolbarViewController_iOS *)self sketchButton];
    [(AKToolbarViewController_iOS *)self _updateToggleButton:sketchButton2 withTraitCollection:collectionCopy];
  }

  inkButton2 = [(AKToolbarViewController_iOS *)self inkButton];
  [(AKToolbarViewController_iOS *)self _updateToggleButton:inkButton2 withTraitCollection:collectionCopy];

  signatureButton3 = [(AKToolbarViewController_iOS *)self signatureButton];
  [(AKToolbarViewController_iOS *)self _updateToggleButton:signatureButton3 withTraitCollection:collectionCopy];

  staticToolbarItems = [(AKToolbarViewController_iOS *)self staticToolbarItems];
  controller = [(AKToolbarViewController *)self controller];
  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    v35 = [delegate controller:controller willSetToolbarItems:staticToolbarItems];

    staticToolbarItems = v35;
  }

  [view setItems:staticToolbarItems animated:0];
}

- (void)_updateToggleButton:(id)button withTraitCollection:(id)collection
{
  customView = [button customView];
  barTintColor = [(AKToolbarViewController_iOS *)self barTintColor];
  if (barTintColor && ([MEMORY[0x277D75348] whiteColor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(barTintColor, "akIsEqualToColor:", v6), v6, !v7))
  {
    [customView setShouldTintNormalImage:1];
    [customView setShowsBackgroundColor:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [customView setTintColor:whiteColor];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    [customView setShouldTintNormalImage:1];
    [customView setShowsBackgroundColor:1];
    view = [(AKToolbarViewController_iOS *)self view];
    tintColor = [view tintColor];
    [customView setTintColor:tintColor];

    systemBlueColor = [MEMORY[0x277D75348] whiteColor];
  }

  v12 = systemBlueColor;
  [customView setSelectedColor:systemBlueColor];

  if ([customView tag] == 764015)
  {
    _doodleModeToolbarImage = [(AKToolbarViewController_iOS *)self _doodleModeToolbarImage];
LABEL_14:
    v16 = _doodleModeToolbarImage;
    [customView setTemplateImage:_doodleModeToolbarImage];
    [customView setImage:v16 forState:0];

    goto LABEL_15;
  }

  if ([customView tag] == 764016)
  {
    v14 = objc_opt_class();
    v15 = 1;
LABEL_13:
    _doodleModeToolbarImage = [v14 imageForToolbarButtonItemOfType:v15];
    goto LABEL_14;
  }

  if ([customView tag] == 764017)
  {
    v14 = objc_opt_class();
    v15 = 13;
    goto LABEL_13;
  }

  if ([customView tag] == 764022)
  {
    v14 = objc_opt_class();
    v15 = 3;
    goto LABEL_13;
  }

  [customView tag];
LABEL_15:
}

- (void)revalidateItems
{
  controller = [(AKToolbarViewController *)self controller];
  if (([controller isTornDown] & 1) == 0)
  {
    if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      sketchButton = [(AKToolbarViewController_iOS *)self sketchButton];
      customView = [sketchButton customView];
      [controller validateSender:customView];
    }

    inkButton = [(AKToolbarViewController_iOS *)self inkButton];
    customView2 = [inkButton customView];
    [controller validateSender:customView2];

    signatureButton = [(AKToolbarViewController_iOS *)self signatureButton];
    customView3 = [signatureButton customView];
    [controller validateSender:customView3];

    if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      richSketchButton = [(AKToolbarViewController_iOS *)self richSketchButton];

      if (richSketchButton)
      {
        richSketchButton2 = [(AKToolbarViewController_iOS *)self richSketchButton];
        customView4 = [richSketchButton2 customView];
        [controller validateSender:customView4];
      }
    }

    v12 = [controller validateUndo:0];
    v13 = [controller validateRedo:0];
    undoButton = [(AKToolbarViewController_iOS *)self undoButton];
    [undoButton setEnabled:v12];

    redoButton = [(AKToolbarViewController_iOS *)self redoButton];
    [redoButton setEnabled:v13];

    toolController = [controller toolController];
    currentPageController = [controller currentPageController];
    pageModelController = [currentPageController pageModelController];

    selectedAnnotations = [pageModelController selectedAnnotations];
    traitCollection = [(AKToolbarViewController_iOS *)self traitCollection];
    v21 = sub_23F4516FC(traitCollection);

    if (v21)
    {
      if ([selectedAnnotations count] == 1)
      {
        anyObject = [selectedAnnotations anyObject];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v23 = 1;
      }

      lineStyleButton = [(AKToolbarViewController_iOS *)self lineStyleButton];
      [lineStyleButton setEnabled:v23 & 1];

      textStyleButton = [(AKToolbarViewController_iOS *)self textStyleButton];
      [textStyleButton setEnabled:v23 & 1];

      attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
      viewIfLoaded = [attributeToolbarViewController viewIfLoaded];
      superview = [viewIfLoaded superview];

      if (superview)
      {
        [(AKToolbarViewController_iOS *)self dismissAttributeToolbarImmediately];
      }
    }

    else
    {
      toolMode = [toolController toolMode];
      if ([selectedAnnotations count] || toolMode <= 5 && ((1 << toolMode) & 0x36) != 0)
      {
        [(AKToolbarViewController_iOS *)self showAttributeToolbarForSelectedAnnotations:selectedAnnotations andToolMode:toolMode];
      }

      else
      {
        [(AKToolbarViewController_iOS *)self performSelector:sel_dismissAttributeToolbarForSelectedAnnotations withObject:0 afterDelay:0.0];
      }
    }

    [(AKToolbarViewController_iOS *)self syncUIToSelectedColor];
  }
}

- (void)syncUIToSelectedColor
{
  controller = [(AKToolbarViewController *)self controller];
  attributeController = [controller attributeController];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  if ([selectedAnnotations count] == 1)
  {
    anyObject = [selectedAnnotations anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      anyObject2 = [selectedAnnotations anyObject];
      typingAttributes = [anyObject2 typingAttributes];
      strokeColor = [typingAttributes objectForKey:*MEMORY[0x277D740C0]];

      goto LABEL_7;
    }
  }

  if ([selectedAnnotations count] == 1)
  {
    anyObject3 = [selectedAnnotations anyObject];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      anyObject2 = [selectedAnnotations anyObject];
      strokeColor = [anyObject2 performSelector:sel_strokeColor];
LABEL_7:

      if (strokeColor)
      {
        goto LABEL_9;
      }
    }
  }

  strokeColor = [attributeController strokeColor];
LABEL_9:
  colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
  [colorPickerPopoverViewController setColor:strokeColor];

  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  [attributeToolbarViewController setColor:strokeColor];

  strokeColorButton = [(AKToolbarViewController_iOS *)self strokeColorButton];
  customView = [strokeColorButton customView];

  [customView setColor:strokeColor];
}

- (id)_barButtonForToolbarType:(unint64_t)type
{
  v17[1] = *MEMORY[0x277D85DE8];
  controller = [(AKToolbarViewController *)self controller];
  _doodleModeToolbarImage = 0;
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:3];
        v8 = [(AKToolbarViewController_iOS *)self _createNewToggleToolbarButtonWithImage:_doodleModeToolbarImage tag:764022 target:self selector:sel__showSignaturesPopover_ autoUpdatesColor:0];
        v7 = v8;
        v9 = 764019;
        goto LABEL_25;
      }

      if (type == 4)
      {
        _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:4];
        v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:_doodleModeToolbarImage style:0 target:controller action:sel_performActionForSender_];
        v7 = v8;
        v9 = 764014;
        goto LABEL_25;
      }

      _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:5];
      v10 = sel__showTextStylePopover_;
      goto LABEL_28;
    }

    if (type)
    {
      v7 = 0;
      if (type != 1)
      {
        goto LABEL_31;
      }

      _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:1];
      v11 = 764016;
    }

    else
    {
      _doodleModeToolbarImage = [(AKToolbarViewController_iOS *)self _doodleModeToolbarImage];
      v11 = 764015;
    }

LABEL_19:
    v12 = [(AKToolbarViewController_iOS *)self _createNewToggleToolbarButtonWithImage:_doodleModeToolbarImage tag:v11 target:controller selector:sel_performActionForSender_ autoUpdatesColor:1];
    goto LABEL_29;
  }

  if (type <= 9)
  {
    if (type != 6)
    {
      if (type == 7)
      {
        v7 = [(AKToolbarViewController_iOS *)self _createNewColorPickerToolbarButtonWithTarget:self selector:sel__showColorPickerPopover_];
        _doodleModeToolbarImage = 0;
        if (!v7)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v7 = 0;
      if (type != 9)
      {
        goto LABEL_31;
      }

      _doodleModeToolbarImage = [AKAnnotationImageHelper imageForShapeTag:764020];
      v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:_doodleModeToolbarImage style:0 target:controller action:sel_performActionForSender_];
      v7 = v8;
      v9 = 764020;
LABEL_25:
      [v8 setTag:v9];
      if (!v7)
      {
        goto LABEL_31;
      }

LABEL_30:
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      objc_setAssociatedObject(v7, sel_akToolbarButtonItemType, v13, 0x303);

      goto LABEL_31;
    }

    _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:6];
    v10 = sel__showLineStylePopover_;
LABEL_28:
    v12 = [(AKToolbarViewController_iOS *)self _createNewCustomViewToolbarButtonWithImage:_doodleModeToolbarImage target:self selector:v10];
LABEL_29:
    v7 = v12;
    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (type != 10)
  {
    if (type == 11)
    {
      _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:11];
      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:_doodleModeToolbarImage style:0 target:controller action:sel_redo_];
      goto LABEL_29;
    }

    v7 = 0;
    if (type != 13)
    {
      goto LABEL_31;
    }

    _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:13];
    v11 = 764017;
    goto LABEL_19;
  }

  _doodleModeToolbarImage = [objc_opt_class() imageForToolbarButtonItemOfType:10];
  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:_doodleModeToolbarImage style:0 target:controller action:sel_undo_];
  v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__undoLongPressAction_];
  v17[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v7 _setGestureRecognizers:v16];

  if (v7)
  {
    goto LABEL_30;
  }

LABEL_31:

  return v7;
}

- (void)_deleteSelectedItems:(id)items
{
  controller = [(AKToolbarViewController *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];
  allObjects = [selectedAnnotations allObjects];

  if ([allObjects count])
  {
    pageModelController2 = [currentPageController pageModelController];
    v8 = [pageModelController2 mutableArrayValueForKey:@"annotations"];

    [v8 removeObjectsInArray:allObjects];
  }
}

- (id)_toolbarButtonItemOfType:(unint64_t)type
{
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        signatureButton = [(AKToolbarViewController_iOS *)self signatureButton];
      }

      else
      {
        if (type == 4)
        {
          [(AKToolbarViewController_iOS *)self textButton];
        }

        else
        {
          [(AKToolbarViewController_iOS *)self textStyleButton];
        }
        signatureButton = ;
      }

      goto LABEL_27;
    }

    if (!type)
    {
      signatureButton = [(AKToolbarViewController_iOS *)self sketchButton];
      goto LABEL_27;
    }

    if (type == 1)
    {
      signatureButton = [(AKToolbarViewController_iOS *)self richSketchButton];
      goto LABEL_27;
    }
  }

  else if (type > 9)
  {
    switch(type)
    {
      case 0xAuLL:
        signatureButton = [(AKToolbarViewController_iOS *)self undoButton];
        goto LABEL_27;
      case 0xBuLL:
        signatureButton = [(AKToolbarViewController_iOS *)self redoButton];
        goto LABEL_27;
      case 0xDuLL:
        signatureButton = [(AKToolbarViewController_iOS *)self inkButton];
        goto LABEL_27;
    }
  }

  else
  {
    switch(type)
    {
      case 6uLL:
        signatureButton = [(AKToolbarViewController_iOS *)self lineStyleButton];
        goto LABEL_27;
      case 7uLL:
        signatureButton = [(AKToolbarViewController_iOS *)self strokeColorButton];
        goto LABEL_27;
      case 9uLL:
        signatureButton = [(AKToolbarViewController_iOS *)self loupeButton];
        goto LABEL_27;
    }
  }

  NSLog(&cfstr_Toolbarbuttoni.isa, a2, type);
  signatureButton = 0;
LABEL_27:

  return signatureButton;
}

- (id)_createNewToggleToolbarButtonWithImage:(id)image tag:(int64_t)tag target:(id)target selector:(SEL)selector autoUpdatesColor:(BOOL)color
{
  colorCopy = color;
  imageCopy = image;
  targetCopy = target;
  v14 = [AKToggleButton alloc];
  v15 = [(AKToggleButton *)v14 initWithFrame:imageCopy templateImage:colorCopy autoUpdatesColor:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  traitCollection = [(AKToolbarViewController_iOS *)self traitCollection];
  v17 = sub_23F4516FC(traitCollection);

  [(AKToggleButton *)v15 setShouldTintNormalImage:1];
  if (v17)
  {
    [(AKToggleButton *)v15 setShowsBackgroundColor:1];
    view = [(AKToolbarViewController_iOS *)self view];
    tintColor = [view tintColor];
    [(AKToggleButton *)v15 setTintColor:tintColor];

    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [(AKToggleButton *)v15 setShowsBackgroundColor:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(AKToggleButton *)v15 setTintColor:whiteColor];

    [MEMORY[0x277D75348] systemBlueColor];
  }
  v21 = ;
  [(AKToggleButton *)v15 setSelectedColor:v21];

  [(AKToggleButton *)v15 setFrame:0.0, 0.0, 29.0, 29.0];
  layer = [(AKToggleButton *)v15 layer];
  [layer setCornerRadius:3.0];

  [(AKToggleButton *)v15 setTag:tag];
  [(AKToggleButton *)v15 setImage:imageCopy forState:0];
  [(AKToggleButton *)v15 addTarget:targetCopy action:selector forControlEvents:64];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v15];

  return v23;
}

- (id)_createNewColorPickerToolbarButtonWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v6 = [AKColorPaletteButton buttonWithType:0];
  [v6 setFrame:{0.0, 0.0, 19.0, 19.0}];
  [v6 addTarget:targetCopy action:selector forControlEvents:64];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v7;
}

- (id)_createNewCustomViewToolbarButtonWithImage:(id)image target:(id)target selector:(SEL)selector
{
  v7 = MEMORY[0x277D75220];
  targetCopy = target;
  imageCopy = image;
  v10 = [v7 buttonWithType:1];
  [v10 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v10 addTarget:targetCopy action:selector forControlEvents:64];

  [v10 setImage:imageCopy forState:0];
  [v10 sizeToFit];
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v10];

  return v11;
}

- (id)_doodleModeToolbarImage
{
  controller = [(AKToolbarViewController *)self controller];
  shouldDrawVariableStrokeDoodles = [controller shouldDrawVariableStrokeDoodles];

  v4 = [objc_opt_class() imageForToolbarButtonItemOfType:shouldDrawVariableStrokeDoodles];

  return v4;
}

- (double)heightIncludingAdditionalVisibleBars
{
  view = [(AKToolbarViewController_iOS *)self view];
  [view frame];
  Height = CGRectGetHeight(v8);
  [(AKToolbarViewController_iOS *)self visibleHeightOfAttributeBar];
  v6 = Height + v5;

  return v6;
}

- (double)visibleHeightOfAttributeBar
{
  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  v4 = 0.0;
  if (attributeToolbarViewController)
  {
    v5 = attributeToolbarViewController;
    floatingAttributeToolbarContainer = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];

    if (floatingAttributeToolbarContainer)
    {
      view = [(AKToolbarViewController_iOS *)self view];
      view2 = [(AKToolbarViewController_iOS *)self view];
      superview = [view2 superview];

      floatingAttributeToolbarContainer2 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
      [view frame];
      [superview convertRect:0 toView:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [floatingAttributeToolbarContainer2 frame];
      [superview convertRect:0 toView:?];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v29.origin.x = v12;
      v29.origin.y = v14;
      v29.size.width = v16;
      v29.size.height = v18;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v30 = CGRectIntersection(v29, v32);
      height = v30.size.height;
      v4 = 0.0;
      if (!CGRectIsNull(v30))
      {
        v31.origin.x = v20;
        v31.origin.y = v22;
        v31.size.width = v24;
        v31.size.height = v26;
        v4 = CGRectGetHeight(v31) - height;
      }
    }
  }

  return v4;
}

- (int64_t)_attributeTagForCurrentSelectionState
{
  v2 = 765101;
  controller = [(AKToolbarViewController *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  if ([selectedAnnotations count] == 1)
  {
    anyObject = [selectedAnnotations anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v2 = 765106;
    }
  }

  return v2;
}

- (void)setBarTintColor:(id)color
{
  objc_storeStrong(&self->_barTintColor, color);
  colorCopy = color;
  view = [(AKToolbarViewController_iOS *)self view];
  [view setBarTintColor:colorCopy];
}

- (void)setTintColor:(id)color
{
  objc_storeStrong(&self->_tintColor, color);
  colorCopy = color;
  view = [(AKToolbarViewController_iOS *)self view];
  [view setTintColor:colorCopy];
}

- (BOOL)isPresentingPopover
{
  signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (signaturesAlertController)
  {
    return 1;
  }

  signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

  if (signaturesSheetViewController)
  {
    return 1;
  }

  lineStylesViewController = [(AKToolbarViewController_iOS *)self lineStylesViewController];

  if (lineStylesViewController)
  {
    return 1;
  }

  textAttributesViewController = [(AKToolbarViewController_iOS *)self textAttributesViewController];

  if (textAttributesViewController)
  {
    return 1;
  }

  colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

  if (colorPickerPopoverViewController)
  {
    return 1;
  }

  undoAlertController = [(AKToolbarViewController_iOS *)self undoAlertController];

  return undoAlertController != 0;
}

- (void)_undoManagerNotification:(id)notification
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(AKToolbarViewController_iOS *)self revalidateItems];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23F437588;
    block[3] = &unk_278C7B540;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_undoLongPressAction:(id)action
{
  actionCopy = action;
  presentedViewController = [(AKToolbarViewController_iOS *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(AKToolbarViewController_iOS *)self _showUndoAlert:actionCopy];
  }
}

- (void)_undoButtonAction:(id)action
{
  controller = [(AKToolbarViewController *)self controller];
  [controller undo:0];
}

- (void)_redoButtonAction:(id)action
{
  controller = [(AKToolbarViewController *)self controller];
  [controller redo:0];
}

- (void)_undoAllButtonAction:(id)action
{
  controller = [(AKToolbarViewController *)self controller];
  if ([controller validateUndo:0])
  {
    do
    {
      [controller undo:0];
    }

    while (([controller validateUndo:0] & 1) != 0);
  }
}

- (void)_showUndoAlert:(id)alert
{
  _buildUndoAlertController = [(AKToolbarViewController_iOS *)self _buildUndoAlertController];
  undoButton = [(AKToolbarViewController_iOS *)self undoButton];
  popoverPresentationController = [_buildUndoAlertController popoverPresentationController];
  [popoverPresentationController setBarButtonItem:undoButton];

  [_buildUndoAlertController setModalPresentationStyle:7];
  [(AKToolbarViewController_iOS *)self presentViewController:_buildUndoAlertController animated:1 completion:0];
}

- (id)_buildUndoAlertController
{
  controller = [(AKToolbarViewController *)self controller];
  objc_initWeak(&location, self);
  v4 = [controller validateUndo:0];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if (v4)
  {
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Undo" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

    undoController = [controller undoController];
    undoManager = [undoController undoManager];
    undoActionName = [undoManager undoActionName];

    if ([undoActionName length])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, undoActionName];

      v7 = v11;
    }

    v12 = MEMORY[0x277D750F8];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_23F437B1C;
    v25[3] = &unk_278C7BBA0;
    objc_copyWeak(&v26, &location);
    v13 = [v12 actionWithTitle:v7 style:0 handler:v25];
    [v5 addAction:v13];
    v14 = MEMORY[0x277D750F8];
    v15 = +[AKController akBundle];
    v16 = [v15 localizedStringForKey:@"Undo All" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23F437B60;
    v23[3] = &unk_278C7BBA0;
    objc_copyWeak(&v24, &location);
    v17 = [v14 actionWithTitle:v16 style:0 handler:v23];

    [v5 addAction:v17];
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
  }

  v18 = MEMORY[0x277D750F8];
  v19 = +[AKController akBundle];
  v20 = [v19 localizedStringForKey:@"Cancel" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];
  v21 = [v18 actionWithTitle:v20 style:1 handler:0];
  [v5 addAction:v21];

  objc_destroyWeak(&location);

  return v5;
}

- (BOOL)_validateUndoButton
{
  controller = [(AKToolbarViewController *)self controller];
  v3 = [controller validateUndo:0];

  return v3;
}

- (BOOL)isPresentingPopovers
{
  presentedViewController = [(AKToolbarViewController_iOS *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)_showSignaturesPopover:(id)popover
{
  controller = [(AKToolbarViewController *)self controller];
  signatureModelController = [controller signatureModelController];
  toolController = [controller toolController];
  toolMode = [toolController toolMode];

  if (toolMode == 5)
  {
    v8 = objc_opt_new();
    [v8 setTag:764022];
    [controller performActionForSender:v8];
  }

  signatures = [signatureModelController signatures];
  v10 = [signatures count];

  if (v10)
  {
    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

    if (!signaturesSheetViewController)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F437DCC;
      v12[3] = &unk_278C7B810;
      v13 = controller;
      selfCopy = self;
      [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v12];
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23F437DC0;
    v15[3] = &unk_278C7B540;
    v15[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v15];
  }
}

- (void)_showLineStylePopover:(id)popover
{
  lineStylesViewController = [(AKToolbarViewController_iOS *)self lineStylesViewController];

  if (!lineStylesViewController)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F4383F4;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_showTextStylePopover:(id)popover
{
  textAttributesViewController = [(AKToolbarViewController_iOS *)self textAttributesViewController];

  if (!textAttributesViewController)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F438708;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_showColorPickerPopover:(id)popover
{
  colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

  if (!colorPickerPopoverViewController)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F438A1C;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(AKToolbarViewController_iOS *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(AKToolbarViewController_iOS *)self presentedViewController];
    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

    if (presentedViewController2 == signaturesSheetViewController)
    {
      signaturesSheetViewController2 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
      popoverPresentationController = [signaturesSheetViewController2 popoverPresentationController];
      [popoverPresentationController setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
    }

    else
    {
      presentedViewController3 = [(AKToolbarViewController_iOS *)self presentedViewController];
      lineStylesViewController = [(AKToolbarViewController_iOS *)self lineStylesViewController];

      if (presentedViewController3 == lineStylesViewController)
      {
        lineStylesViewController2 = [(AKToolbarViewController_iOS *)self lineStylesViewController];
        popoverPresentationController2 = [lineStylesViewController2 popoverPresentationController];
        [popoverPresentationController2 setDelegate:0];

        [(AKToolbarViewController_iOS *)self setLineStylesViewController:0];
      }

      else
      {
        presentedViewController4 = [(AKToolbarViewController_iOS *)self presentedViewController];
        undoAlertController = [(AKToolbarViewController_iOS *)self undoAlertController];

        if (presentedViewController4 == undoAlertController)
        {
          undoAlertController2 = [(AKToolbarViewController_iOS *)self undoAlertController];
          popoverPresentationController3 = [undoAlertController2 popoverPresentationController];
          [popoverPresentationController3 setDelegate:0];

          [(AKToolbarViewController_iOS *)self setUndoAlertController:0];
        }

        else
        {
          presentedViewController5 = [(AKToolbarViewController_iOS *)self presentedViewController];
          textAttributesViewController = [(AKToolbarViewController_iOS *)self textAttributesViewController];

          if (presentedViewController5 == textAttributesViewController)
          {
            textAttributesViewController2 = [(AKToolbarViewController_iOS *)self textAttributesViewController];
            popoverPresentationController4 = [textAttributesViewController2 popoverPresentationController];
            [popoverPresentationController4 setDelegate:0];

            [(AKToolbarViewController_iOS *)self setTextAttributesViewController:0];
          }

          else
          {
            presentedViewController6 = [(AKToolbarViewController_iOS *)self presentedViewController];
            colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

            if (presentedViewController6 == colorPickerPopoverViewController)
            {
              colorPickerPopoverViewController2 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
              [colorPickerPopoverViewController2 removeObserver:self forKeyPath:@"color"];

              colorPickerPopoverViewController3 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
              popoverPresentationController5 = [colorPickerPopoverViewController3 popoverPresentationController];
              [popoverPresentationController5 setDelegate:0];

              [(AKToolbarViewController_iOS *)self setColorPickerPopoverViewController:0];
            }
          }
        }
      }
    }

    presentedViewController7 = [(AKToolbarViewController_iOS *)self presentedViewController];
    [presentedViewController7 dismissViewControllerAnimated:animatedCopy completion:completionCopy];

    [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
  }

  else
  {
    v20 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_16;
    }

    (*(completionCopy + 2))(completionCopy);
  }

  v20 = completionCopy;
LABEL_16:
}

- (void)_setupPassthroughViewsForViewController:(id)controller
{
  v23[3] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  popoverPresentationController = [(AKLineStylesViewController *)controllerCopy popoverPresentationController];
  passthroughViews = [popoverPresentationController passthroughViews];
  array = [passthroughViews mutableCopy];

  v22 = popoverPresentationController;
  [popoverPresentationController _setIgnoreBarButtonItemSiblings:1];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  lineStyleButton = [(AKToolbarViewController_iOS *)self lineStyleButton];
  customView = [lineStyleButton customView];
  v23[0] = customView;
  strokeColorButton = [(AKToolbarViewController_iOS *)self strokeColorButton];
  customView2 = [strokeColorButton customView];
  v23[1] = customView2;
  textStyleButton = [(AKToolbarViewController_iOS *)self textStyleButton];
  customView3 = [textStyleButton customView];
  v23[2] = customView3;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [array addObjectsFromArray:v14];

  if (self->_colorPickerPopoverViewController == controllerCopy)
  {
    strokeColorButton2 = [(AKToolbarViewController_iOS *)self strokeColorButton];
  }

  else if (self->_textAttributesViewController == controllerCopy)
  {
    strokeColorButton2 = [(AKToolbarViewController_iOS *)self textStyleButton];
  }

  else
  {
    if (self->_lineStylesViewController != controllerCopy)
    {
      goto LABEL_10;
    }

    strokeColorButton2 = [(AKToolbarViewController_iOS *)self lineStyleButton];
  }

  v16 = strokeColorButton2;
  customView4 = [strokeColorButton2 customView];
  [array removeObject:customView4];

LABEL_10:
  controller = [(AKToolbarViewController *)self controller];
  currentPageController = [controller currentPageController];
  overlayView = [currentPageController overlayView];

  superview = [overlayView superview];

  if (superview)
  {
    [array addObject:overlayView];
  }

  [v22 setPassthroughViews:array];
}

- (void)_layoutAttributeContainer
{
  floatingAttributeToolbarContainer = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  superview = [floatingAttributeToolbarContainer superview];

  if (!superview)
  {
    floatingAttributeToolbarContainer2 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    [floatingAttributeToolbarContainer2 setTranslatesAutoresizingMaskIntoConstraints:0];

    firstValue = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    view = [(AKToolbarViewController_iOS *)self view];
    superview2 = [view superview];

    view2 = [(AKToolbarViewController_iOS *)self view];
    if (superview2)
    {
      [superview2 insertSubview:firstValue belowSubview:view2];
      v9 = _NSDictionaryOfVariableBindings(&cfstr_Attributetoolb.isa, firstValue, view2, 0);
      v10 = MEMORY[0x277CCAAD0];
      v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[attributeToolbarContainer]|" options:0 metrics:0 views:v9];
      [v10 activateConstraints:v11];

      v12 = MEMORY[0x277CCAAD0];
      v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[attributeToolbarContainer(44@999)]" options:0 metrics:0 views:v9];
      [v12 activateConstraints:v13];

      v14 = [MEMORY[0x277CCAAD0] constraintWithItem:firstValue attribute:4 relatedBy:0 toItem:view2 attribute:3 multiplier:1.0 constant:0.0];
      [(AKToolbarViewController_iOS *)self setAttributeToolbarViewControllerConstraint:v14];

      [view2 frame];
      Height = CGRectGetHeight(v20);
      attributeToolbarViewControllerConstraint = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
      [attributeToolbarViewControllerConstraint setConstant:Height];

      attributeToolbarViewControllerConstraint2 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
      [attributeToolbarViewControllerConstraint2 setActive:1];

      [superview2 layoutIfNeeded];
    }
  }
}

- (void)showAttributeToolbarForSelectedAnnotations:(id)annotations andToolMode:(unint64_t)mode
{
  v46[1] = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  [(AKToolbarViewController_iOS *)self _layoutAttributeContainer];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_dismissAttributeToolbarForSelectedAnnotations object:0];
  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];

  if (!attributeToolbarViewController)
  {
    controller = [(AKToolbarViewController *)self controller];
    v8 = [[AKFloatingAttributePickerViewController alloc] initWithController:controller];
    [(AKToolbarViewController_iOS *)self setAttributeToolbarViewController:v8];

    floatingAttributeToolbarContainer = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    attributeToolbarViewController2 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    view = [attributeToolbarViewController2 view];
    [floatingAttributeToolbarContainer addSubview:view];

    barTintColor = [(AKToolbarViewController_iOS *)self barTintColor];
    attributeToolbarViewController3 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    toolbar = [attributeToolbarViewController3 toolbar];
    [toolbar setBarTintColor:barTintColor];

    attributeToolbarViewController4 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    view2 = [attributeToolbarViewController4 view];

    v17 = _NSDictionaryOfVariableBindings(&cfstr_Attributetoolb_0.isa, view2, 0);
    v18 = MEMORY[0x277CCAAD0];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[attributeToolbar]|" options:0 metrics:0 views:v17];
    [v18 activateConstraints:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[attributeToolbar]|" options:0 metrics:0 views:v17];
    [v20 activateConstraints:v21];

    view3 = [(AKToolbarViewController_iOS *)self view];
    superview = [view3 superview];

    view4 = [(AKToolbarViewController_iOS *)self view];
    [view4 frame];
    Height = CGRectGetHeight(v47);
    attributeToolbarViewControllerConstraint = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
    [attributeToolbarViewControllerConstraint setConstant:Height];

    attributeToolbarViewControllerConstraint2 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
    [attributeToolbarViewControllerConstraint2 setActive:1];

    [superview layoutIfNeeded];
    v28 = MEMORY[0x277D75D18];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_23F4399F4;
    v42[3] = &unk_278C7BBF8;
    v42[4] = self;
    v43 = superview;
    v44 = controller;
    v29 = controller;
    v30 = superview;
    [v28 animateWithDuration:v42 animations:0 completion:0.1];
  }

  if ([annotationsCopy count] != 1)
  {
    attributeToolbarViewController5 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    lineStyleButton = [(AKToolbarViewController_iOS *)self lineStyleButton];
    v45 = lineStyleButton;
    textStyleButton2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    attributeToolbarViewController6 = attributeToolbarViewController5;
    v36 = textStyleButton2;
LABEL_7:
    [attributeToolbarViewController6 setRightButtonItems:v36 animated:1];
    goto LABEL_8;
  }

  attributeToolbarViewController5 = [annotationsCopy anyObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      lineStyleButton = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
      [lineStyleButton setRightButtonItems:0 animated:1];
      goto LABEL_9;
    }

    lineStyleButton = [MEMORY[0x277CBEB18] array];
    if (objc_opt_respondsToSelector())
    {
      textStyleButton = [(AKToolbarViewController_iOS *)self textStyleButton];
      [lineStyleButton addObject:textStyleButton];
    }

    if (objc_opt_respondsToSelector())
    {
      lineStyleButton2 = [(AKToolbarViewController_iOS *)self lineStyleButton];
      [lineStyleButton addObject:lineStyleButton2];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([attributeToolbarViewController5 pathIsPrestroked])
        {
          lineStyleButton3 = [(AKToolbarViewController_iOS *)self lineStyleButton];
          [lineStyleButton removeObject:lineStyleButton3];
        }
      }
    }

    attributeToolbarViewController6 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    textStyleButton2 = attributeToolbarViewController6;
    v36 = lineStyleButton;
    goto LABEL_7;
  }

  lineStyleButton = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  textStyleButton2 = [(AKToolbarViewController_iOS *)self textStyleButton];
  v46[0] = textStyleButton2;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  [lineStyleButton setRightButtonItems:v34 animated:1];

LABEL_8:
LABEL_9:

  _attributeTagForCurrentSelectionState = [(AKToolbarViewController_iOS *)self _attributeTagForCurrentSelectionState];
  attributeToolbarViewController7 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  [attributeToolbarViewController7 setColorAttributeTag:_attributeTagForCurrentSelectionState];

  [(AKToolbarViewController_iOS *)self syncUIToSelectedColor];
}

- (void)dismissAttributeToolbarForSelectedAnnotations
{
  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];

  if (attributeToolbarViewController)
  {
    view = [(AKToolbarViewController_iOS *)self view];
    superview = [view superview];

    view2 = [(AKToolbarViewController_iOS *)self view];
    v7 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F439BC0;
    v11[3] = &unk_278C7BBF8;
    v11[4] = self;
    v12 = view2;
    v13 = superview;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23F439C28;
    v10[3] = &unk_278C7B720;
    v10[4] = self;
    v8 = superview;
    v9 = view2;
    [v7 animateWithDuration:v11 animations:v10 completion:0.1];
  }
}

- (void)dismissAttributeToolbarImmediately
{
  view = [(AKToolbarViewController_iOS *)self view];
  [view frame];
  Height = CGRectGetHeight(v9);
  attributeToolbarViewControllerConstraint = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
  [attributeToolbarViewControllerConstraint setConstant:Height];

  attributeToolbarViewController = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  view2 = [attributeToolbarViewController view];
  [view2 removeFromSuperview];

  [(AKToolbarViewController_iOS *)self setAttributeToolbarViewController:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  AKLog(@"%s %@");
  v5 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS presentationControllerShouldDismiss:]"];
  popoverPresentationController = [v5 popoverPresentationController];

  if (popoverPresentationController == dismissCopy)
  {
    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    popoverPresentationController2 = [signaturesSheetViewController popoverPresentationController];
    [popoverPresentationController2 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
    goto LABEL_14;
  }

  lineStylesViewController = [(AKToolbarViewController_iOS *)self lineStylesViewController];
  popoverPresentationController3 = [lineStylesViewController popoverPresentationController];

  if (popoverPresentationController3 == dismissCopy)
  {
    lineStylesViewController2 = [(AKToolbarViewController_iOS *)self lineStylesViewController];
    popoverPresentationController4 = [lineStylesViewController2 popoverPresentationController];
    [popoverPresentationController4 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setLineStylesViewController:0];
LABEL_13:
    [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
    goto LABEL_14;
  }

  undoAlertController = [(AKToolbarViewController_iOS *)self undoAlertController];
  popoverPresentationController5 = [undoAlertController popoverPresentationController];

  if (popoverPresentationController5 == dismissCopy)
  {
    undoAlertController2 = [(AKToolbarViewController_iOS *)self undoAlertController];
    popoverPresentationController6 = [undoAlertController2 popoverPresentationController];
    [popoverPresentationController6 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setUndoAlertController:0];
    goto LABEL_13;
  }

  textAttributesViewController = [(AKToolbarViewController_iOS *)self textAttributesViewController];
  popoverPresentationController7 = [textAttributesViewController popoverPresentationController];

  if (popoverPresentationController7 == dismissCopy)
  {
    textAttributesViewController2 = [(AKToolbarViewController_iOS *)self textAttributesViewController];
    popoverPresentationController8 = [textAttributesViewController2 popoverPresentationController];
    [popoverPresentationController8 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setTextAttributesViewController:0];
    goto LABEL_13;
  }

  colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
  popoverPresentationController9 = [colorPickerPopoverViewController popoverPresentationController];

  if (popoverPresentationController9 == dismissCopy)
  {
    colorPickerPopoverViewController2 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
    [colorPickerPopoverViewController2 removeObserver:self forKeyPath:@"color"];

    colorPickerPopoverViewController3 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
    popoverPresentationController10 = [colorPickerPopoverViewController3 popoverPresentationController];
    [popoverPresentationController10 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setColorPickerPopoverViewController:0];
    goto LABEL_13;
  }

  signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];
  popoverPresentationController11 = [signaturesAlertController popoverPresentationController];

  if (popoverPresentationController11 == dismissCopy)
  {
    signaturesAlertController2 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    popoverPresentationController12 = [signaturesAlertController2 popoverPresentationController];
    [popoverPresentationController12 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

LABEL_14:

  return 1;
}

- (void)signaturesViewControllerDidCancel:(id)cancel
{
  AKLog(@"%s %@");
  v4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerDidCancel:]"];

  if (v4)
  {
    controller = [(AKToolbarViewController *)self controller];
    delegate = [controller delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillDismissSignatureManagerView:controller];
    }

    [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    popoverPresentationController = [signaturesSheetViewController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
  }

  else
  {
    signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];

    if (signaturesAlertController)
    {
      signaturesAlertController2 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
      popoverPresentationController2 = [signaturesAlertController2 popoverPresentationController];
      [popoverPresentationController2 setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
    }
  }
}

- (void)signaturesViewControllerDidSelectSignature:(id)signature
{
  AKLog(@"%s %@");
  v4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerDidSelectSignature:]"];

  if (v4)
  {
    controller = [(AKToolbarViewController *)self controller];
    delegate = [controller delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillDismissSignatureManagerView:controller];
    }

    [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    popoverPresentationController = [signaturesSheetViewController popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    signaturesSheetViewController2 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController2 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
  }

  else
  {
    signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];

    if (signaturesAlertController)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
      signaturesAlertController2 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
      popoverPresentationController2 = [signaturesAlertController2 popoverPresentationController];
      [popoverPresentationController2 setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
    }
  }

  controller2 = [(AKToolbarViewController *)self controller];
  v13 = objc_alloc(MEMORY[0x277D75220]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setTag:764019];
  [controller2 performActionForSender:v14];
}

- (void)signaturesViewControllerContinueToManageSignatures:(id)signatures
{
  signaturesCopy = signatures;
  signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (signaturesAlertController)
  {
    presentedViewController = [(AKToolbarViewController_iOS *)self presentedViewController];

    if (presentedViewController)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    }

    signaturesAlertController2 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    popoverPresentationController = [signaturesAlertController2 popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

  AKLog(@"%s %@");
  v8 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerContinueToManageSignatures:]"];

  v9 = signaturesCopy;
  if (!v8)
  {
    v10 = [AKSignaturesViewController_iOS alloc];
    controller = [(AKToolbarViewController *)self controller];
    v12 = [(AKSignaturesViewController_iOS *)v10 initWithController:controller];
    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:v12];

    signaturesSheetViewController = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController setDelegate:self];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    signaturesSheetViewController2 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController2 setModalPresentationStyle:v15];

    signaturesSheetViewController3 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController3 setShowsNavigationBar:1];

    signaturesSheetViewController4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController4 setPresentedInAlert:0];

    signaturesSheetViewController5 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [signaturesSheetViewController5 setAllowsEdits:1];

    controller2 = [(AKToolbarViewController *)self controller];
    delegate = [controller2 delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate controllerWillShowSignatureManagerView:controller2];
    }

    signaturesSheetViewController6 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [(AKToolbarViewController_iOS *)self presentViewController:signaturesSheetViewController6 animated:1 completion:0];

    v9 = signaturesCopy;
  }
}

- (void)signaturesViewControllerEnterSignatureMode:(id)mode
{
  signaturesAlertController = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (signaturesAlertController)
  {
    presentedViewController = [(AKToolbarViewController_iOS *)self presentedViewController];

    if (presentedViewController)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    }

    signaturesAlertController2 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    popoverPresentationController = [signaturesAlertController2 popoverPresentationController];
    [popoverPresentationController setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

  controller = [(AKToolbarViewController *)self controller];
  v8 = objc_opt_new();
  [v8 setTag:764022];
  [controller performActionForSender:v8];
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)signature
{
  AKLog(@"%s %@");
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23F43A7B4;
  v8[3] = &unk_278C7B540;
  v8[4] = self;
  v4 = MEMORY[0x245CAF110](v8);
  v5 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerContinueToCreateSignature:]"];

  if (v5 || ([(AKToolbarViewController_iOS *)self signaturesAlertController], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:v4];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)signatureCreationControllerDidCreateSignature:(id)signature
{
  controller = [(AKToolbarViewController *)self controller];
  v3 = objc_alloc(MEMORY[0x277D75220]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTag:764019];
  [controller performActionForSender:v4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"color"])
  {
    colorPickerPopoverViewController = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

    if (colorPickerPopoverViewController == objectCopy)
    {
      strokeColorButton = [(AKToolbarViewController_iOS *)self strokeColorButton];
      customView = [strokeColorButton customView];

      colorPickerPopoverViewController2 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
      color = [colorPickerPopoverViewController2 color];
      [customView setColor:color];
    }
  }
}

- (void)_peripheralAvailabilityDidUpdate:(id)update
{
  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    sketchButton = [(AKToolbarViewController_iOS *)self sketchButton];
    traitCollection = [(AKToolbarViewController_iOS *)self traitCollection];
    [(AKToolbarViewController_iOS *)self _updateToggleButton:sketchButton withTraitCollection:traitCollection];
  }

  [(AKToolbarViewController_iOS *)self revalidateItems];
}

@end