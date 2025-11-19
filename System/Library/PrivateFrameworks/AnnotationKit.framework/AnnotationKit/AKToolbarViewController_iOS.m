@interface AKToolbarViewController_iOS
- (AKToolbarViewController_iOS)initWithController:(id)a3;
- (BOOL)_legacyDoodlesEnabled;
- (BOOL)_validateUndoButton;
- (BOOL)isPresentingPopover;
- (BOOL)isPresentingPopovers;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (double)heightIncludingAdditionalVisibleBars;
- (double)visibleHeightOfAttributeBar;
- (id)_barButtonForToolbarType:(unint64_t)a3;
- (id)_buildUndoAlertController;
- (id)_createNewColorPickerToolbarButtonWithTarget:(id)a3 selector:(SEL)a4;
- (id)_createNewCustomViewToolbarButtonWithImage:(id)a3 target:(id)a4 selector:(SEL)a5;
- (id)_createNewToggleToolbarButtonWithImage:(id)a3 tag:(int64_t)a4 target:(id)a5 selector:(SEL)a6 autoUpdatesColor:(BOOL)a7;
- (id)_doodleModeToolbarImage;
- (id)_toolbarButtonItemOfType:(unint64_t)a3;
- (int64_t)_attributeTagForCurrentSelectionState;
- (unint64_t)_workaroundToolbarPopoverPositioningBug26744300;
- (void)_buildBasicItems;
- (void)_deleteSelectedItems:(id)a3;
- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_layoutAttributeContainer;
- (void)_layoutToolbarForTraitCollection:(id)a3;
- (void)_peripheralAvailabilityDidUpdate:(id)a3;
- (void)_redoButtonAction:(id)a3;
- (void)_setupPassthroughViewsForViewController:(id)a3;
- (void)_showColorPickerPopover:(id)a3;
- (void)_showLineStylePopover:(id)a3;
- (void)_showSignaturesPopover:(id)a3;
- (void)_showTextStylePopover:(id)a3;
- (void)_showUndoAlert:(id)a3;
- (void)_undoAllButtonAction:(id)a3;
- (void)_undoButtonAction:(id)a3;
- (void)_undoLongPressAction:(id)a3;
- (void)_undoManagerNotification:(id)a3;
- (void)_updateToggleButton:(id)a3 withTraitCollection:(id)a4;
- (void)dealloc;
- (void)dismissAttributeToolbarForSelectedAnnotations;
- (void)dismissAttributeToolbarImmediately;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)revalidateItems;
- (void)setBarTintColor:(id)a3;
- (void)setTintColor:(id)a3;
- (void)showAttributeToolbarForSelectedAnnotations:(id)a3 andToolMode:(unint64_t)a4;
- (void)signatureCreationControllerDidCreateSignature:(id)a3;
- (void)signaturesViewControllerContinueToCreateSignature:(id)a3;
- (void)signaturesViewControllerContinueToManageSignatures:(id)a3;
- (void)signaturesViewControllerDidCancel:(id)a3;
- (void)signaturesViewControllerDidSelectSignature:(id)a3;
- (void)signaturesViewControllerEnterSignatureMode:(id)a3;
- (void)syncUIToSelectedColor;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = [(AKToolbarViewController_iOS *)self undoButton];
  v3 = [v2 customView];

  if (!v3)
  {
    NSLog(&cfstr_UndoButtonMust.isa);
  }

  v4 = [v3 window];
  [v3 bounds];
  [v4 convertRect:v3 fromCoordinateSpace:?];
  v6 = v5;

  v7 = [v3 window];
  [v7 bounds];
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

- (AKToolbarViewController_iOS)initWithController:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AKToolbarViewController_iOS;
  v5 = [(AKToolbarViewController *)&v19 initWithController:v4];
  v6 = v5;
  if (v5)
  {
    [(AKToolbarViewController_iOS *)v5 _buildBasicItems];
    v7 = [v4 undoController];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = *MEMORY[0x277CCA810];
    v10 = [v7 undoManager];
    [v8 addObserver:v6 selector:sel__undoManagerNotification_ name:v9 object:v10];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277CCA808];
    v13 = [v7 undoManager];
    [v11 addObserver:v6 selector:sel__undoManagerNotification_ name:v12 object:v13];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *MEMORY[0x277CCA7F8];
    v16 = [v7 undoManager];
    [v14 addObserver:v6 selector:sel__undoManagerNotification_ name:v15 object:v16];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v6 selector:sel__peripheralAvailabilityDidUpdate_ name:@"AKPeripheralAvailabilityManagerAvailabilityNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_dismissAttributeToolbarForSelectedAnnotations object:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

  v10 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  [v10 setHidden:1];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = AKToolbarViewController_iOS;
  v4 = a3;
  [(AKToolbarViewController_iOS *)&v8 traitCollectionDidChange:v4];
  v5 = [(AKToolbarViewController_iOS *)self traitCollection:v8.receiver];
  v6 = sub_23F45174C(v5, v4);

  if (!v6)
  {
    v7 = [(AKToolbarViewController_iOS *)self traitCollection];
    [(AKToolbarViewController_iOS *)self _layoutToolbarForTraitCollection:v7];

    [(AKToolbarViewController_iOS *)self revalidateItems];
  }
}

- (void)_layoutToolbarForTraitCollection:(id)a3
{
  v44[15] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKToolbarViewController_iOS *)self view];
  v40 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:6 target:0 action:0];
  [v40 setWidth:8.0];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  objc_setAssociatedObject(v6, sel_akToolbarButtonItemType, &unk_2851BB448, 0x303);
  v7 = sub_23F4516FC(v4);
  v8 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  [v8 setHidden:v7];

  v39 = MEMORY[0x277CBEB18];
  v9 = [(AKToolbarViewController_iOS *)self inkButton];
  v10 = v9;
  if (!v7)
  {
    v42[0] = v9;
    v42[1] = v6;
    v20 = [(AKToolbarViewController_iOS *)self loupeButton];
    v42[2] = v20;
    v42[3] = v6;
    v21 = [(AKToolbarViewController_iOS *)self textButton];
    v42[4] = v21;
    v42[5] = v6;
    v22 = [(AKToolbarViewController_iOS *)self signatureButton];
    v42[6] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
    v17 = [v39 arrayWithArray:v23];

    if (![(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      goto LABEL_8;
    }

    v18 = [(AKToolbarViewController_iOS *)self sketchButton];
    v41 = v18;
    v19 = &v41;
    goto LABEL_6;
  }

  v37 = v5;
  v38 = v4;
  v44[0] = v9;
  v44[1] = v6;
  v36 = [(AKToolbarViewController_iOS *)self loupeButton];
  v44[2] = v36;
  v44[3] = v6;
  v11 = [(AKToolbarViewController_iOS *)self textButton];
  v44[4] = v11;
  v44[5] = v6;
  v12 = [(AKToolbarViewController_iOS *)self signatureButton];
  v44[6] = v12;
  v44[7] = v6;
  v44[8] = v6;
  v44[9] = v6;
  v13 = [(AKToolbarViewController_iOS *)self strokeColorButton];
  v44[10] = v13;
  v44[11] = v6;
  v14 = [(AKToolbarViewController_iOS *)self lineStyleButton];
  v44[12] = v14;
  v44[13] = v6;
  v15 = [(AKToolbarViewController_iOS *)self textStyleButton];
  v44[14] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:15];
  v17 = [v39 arrayWithArray:v16];

  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    v18 = [(AKToolbarViewController_iOS *)self sketchButton];
    v43 = v18;
    v19 = &v43;
    v5 = v37;
    v4 = v38;
LABEL_6:
    v19[1] = v6;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v25 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 2}];
    [v17 insertObjects:v24 atIndexes:v25];

    goto LABEL_8;
  }

  v5 = v37;
  v4 = v38;
LABEL_8:
  [(AKToolbarViewController_iOS *)self setStaticToolbarItems:v17];

  v26 = [(AKToolbarViewController_iOS *)self barTintColor];
  v27 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  v28 = [v27 toolbar];
  [v28 setBarTintColor:v26];

  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    v29 = [(AKToolbarViewController_iOS *)self sketchButton];
    [(AKToolbarViewController_iOS *)self _updateToggleButton:v29 withTraitCollection:v4];
  }

  v30 = [(AKToolbarViewController_iOS *)self inkButton];
  [(AKToolbarViewController_iOS *)self _updateToggleButton:v30 withTraitCollection:v4];

  v31 = [(AKToolbarViewController_iOS *)self signatureButton];
  [(AKToolbarViewController_iOS *)self _updateToggleButton:v31 withTraitCollection:v4];

  v32 = [(AKToolbarViewController_iOS *)self staticToolbarItems];
  v33 = [(AKToolbarViewController *)self controller];
  v34 = [v33 delegate];
  if (objc_opt_respondsToSelector())
  {
    v35 = [v34 controller:v33 willSetToolbarItems:v32];

    v32 = v35;
  }

  [v5 setItems:v32 animated:0];
}

- (void)_updateToggleButton:(id)a3 withTraitCollection:(id)a4
{
  v17 = [a3 customView];
  v5 = [(AKToolbarViewController_iOS *)self barTintColor];
  if (v5 && ([MEMORY[0x277D75348] whiteColor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "akIsEqualToColor:", v6), v6, !v7))
  {
    [v17 setShouldTintNormalImage:1];
    [v17 setShowsBackgroundColor:0];
    v11 = [MEMORY[0x277D75348] whiteColor];
    [v17 setTintColor:v11];

    v10 = [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    [v17 setShouldTintNormalImage:1];
    [v17 setShowsBackgroundColor:1];
    v8 = [(AKToolbarViewController_iOS *)self view];
    v9 = [v8 tintColor];
    [v17 setTintColor:v9];

    v10 = [MEMORY[0x277D75348] whiteColor];
  }

  v12 = v10;
  [v17 setSelectedColor:v10];

  if ([v17 tag] == 764015)
  {
    v13 = [(AKToolbarViewController_iOS *)self _doodleModeToolbarImage];
LABEL_14:
    v16 = v13;
    [v17 setTemplateImage:v13];
    [v17 setImage:v16 forState:0];

    goto LABEL_15;
  }

  if ([v17 tag] == 764016)
  {
    v14 = objc_opt_class();
    v15 = 1;
LABEL_13:
    v13 = [v14 imageForToolbarButtonItemOfType:v15];
    goto LABEL_14;
  }

  if ([v17 tag] == 764017)
  {
    v14 = objc_opt_class();
    v15 = 13;
    goto LABEL_13;
  }

  if ([v17 tag] == 764022)
  {
    v14 = objc_opt_class();
    v15 = 3;
    goto LABEL_13;
  }

  [v17 tag];
LABEL_15:
}

- (void)revalidateItems
{
  v30 = [(AKToolbarViewController *)self controller];
  if (([v30 isTornDown] & 1) == 0)
  {
    if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      v3 = [(AKToolbarViewController_iOS *)self sketchButton];
      v4 = [v3 customView];
      [v30 validateSender:v4];
    }

    v5 = [(AKToolbarViewController_iOS *)self inkButton];
    v6 = [v5 customView];
    [v30 validateSender:v6];

    v7 = [(AKToolbarViewController_iOS *)self signatureButton];
    v8 = [v7 customView];
    [v30 validateSender:v8];

    if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
    {
      v9 = [(AKToolbarViewController_iOS *)self richSketchButton];

      if (v9)
      {
        v10 = [(AKToolbarViewController_iOS *)self richSketchButton];
        v11 = [v10 customView];
        [v30 validateSender:v11];
      }
    }

    v12 = [v30 validateUndo:0];
    v13 = [v30 validateRedo:0];
    v14 = [(AKToolbarViewController_iOS *)self undoButton];
    [v14 setEnabled:v12];

    v15 = [(AKToolbarViewController_iOS *)self redoButton];
    [v15 setEnabled:v13];

    v16 = [v30 toolController];
    v17 = [v30 currentPageController];
    v18 = [v17 pageModelController];

    v19 = [v18 selectedAnnotations];
    v20 = [(AKToolbarViewController_iOS *)self traitCollection];
    v21 = sub_23F4516FC(v20);

    if (v21)
    {
      if ([v19 count] == 1)
      {
        v22 = [v19 anyObject];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass() ^ 1;
      }

      else
      {
        v23 = 1;
      }

      v25 = [(AKToolbarViewController_iOS *)self lineStyleButton];
      [v25 setEnabled:v23 & 1];

      v26 = [(AKToolbarViewController_iOS *)self textStyleButton];
      [v26 setEnabled:v23 & 1];

      v27 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
      v28 = [v27 viewIfLoaded];
      v29 = [v28 superview];

      if (v29)
      {
        [(AKToolbarViewController_iOS *)self dismissAttributeToolbarImmediately];
      }
    }

    else
    {
      v24 = [v16 toolMode];
      if ([v19 count] || v24 <= 5 && ((1 << v24) & 0x36) != 0)
      {
        [(AKToolbarViewController_iOS *)self showAttributeToolbarForSelectedAnnotations:v19 andToolMode:v24];
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
  v3 = [(AKToolbarViewController *)self controller];
  v4 = [v3 attributeController];
  v5 = [v3 currentPageController];
  v6 = [v5 pageModelController];

  v7 = [v6 selectedAnnotations];
  if ([v7 count] == 1)
  {
    v8 = [v7 anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v7 anyObject];
      v11 = [v10 typingAttributes];
      v18 = [v11 objectForKey:*MEMORY[0x277D740C0]];

      goto LABEL_7;
    }
  }

  if ([v7 count] == 1)
  {
    v12 = [v7 anyObject];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v10 = [v7 anyObject];
      v18 = [v10 performSelector:sel_strokeColor];
LABEL_7:

      if (v18)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = [v4 strokeColor];
LABEL_9:
  v14 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
  [v14 setColor:v18];

  v15 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  [v15 setColor:v18];

  v16 = [(AKToolbarViewController_iOS *)self strokeColorButton];
  v17 = [v16 customView];

  [v17 setColor:v18];
}

- (id)_barButtonForToolbarType:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [(AKToolbarViewController *)self controller];
  v6 = 0;
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v6 = [objc_opt_class() imageForToolbarButtonItemOfType:3];
        v8 = [(AKToolbarViewController_iOS *)self _createNewToggleToolbarButtonWithImage:v6 tag:764022 target:self selector:sel__showSignaturesPopover_ autoUpdatesColor:0];
        v7 = v8;
        v9 = 764019;
        goto LABEL_25;
      }

      if (a3 == 4)
      {
        v6 = [objc_opt_class() imageForToolbarButtonItemOfType:4];
        v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:v5 action:sel_performActionForSender_];
        v7 = v8;
        v9 = 764014;
        goto LABEL_25;
      }

      v6 = [objc_opt_class() imageForToolbarButtonItemOfType:5];
      v10 = sel__showTextStylePopover_;
      goto LABEL_28;
    }

    if (a3)
    {
      v7 = 0;
      if (a3 != 1)
      {
        goto LABEL_31;
      }

      v6 = [objc_opt_class() imageForToolbarButtonItemOfType:1];
      v11 = 764016;
    }

    else
    {
      v6 = [(AKToolbarViewController_iOS *)self _doodleModeToolbarImage];
      v11 = 764015;
    }

LABEL_19:
    v12 = [(AKToolbarViewController_iOS *)self _createNewToggleToolbarButtonWithImage:v6 tag:v11 target:v5 selector:sel_performActionForSender_ autoUpdatesColor:1];
    goto LABEL_29;
  }

  if (a3 <= 9)
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        v7 = [(AKToolbarViewController_iOS *)self _createNewColorPickerToolbarButtonWithTarget:self selector:sel__showColorPickerPopover_];
        v6 = 0;
        if (!v7)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v7 = 0;
      if (a3 != 9)
      {
        goto LABEL_31;
      }

      v6 = [AKAnnotationImageHelper imageForShapeTag:764020];
      v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:v5 action:sel_performActionForSender_];
      v7 = v8;
      v9 = 764020;
LABEL_25:
      [v8 setTag:v9];
      if (!v7)
      {
        goto LABEL_31;
      }

LABEL_30:
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      objc_setAssociatedObject(v7, sel_akToolbarButtonItemType, v13, 0x303);

      goto LABEL_31;
    }

    v6 = [objc_opt_class() imageForToolbarButtonItemOfType:6];
    v10 = sel__showLineStylePopover_;
LABEL_28:
    v12 = [(AKToolbarViewController_iOS *)self _createNewCustomViewToolbarButtonWithImage:v6 target:self selector:v10];
LABEL_29:
    v7 = v12;
    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      v6 = [objc_opt_class() imageForToolbarButtonItemOfType:11];
      v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:v5 action:sel_redo_];
      goto LABEL_29;
    }

    v7 = 0;
    if (a3 != 13)
    {
      goto LABEL_31;
    }

    v6 = [objc_opt_class() imageForToolbarButtonItemOfType:13];
    v11 = 764017;
    goto LABEL_19;
  }

  v6 = [objc_opt_class() imageForToolbarButtonItemOfType:10];
  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v6 style:0 target:v5 action:sel_undo_];
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

- (void)_deleteSelectedItems:(id)a3
{
  v9 = [(AKToolbarViewController *)self controller];
  v3 = [v9 currentPageController];
  v4 = [v3 pageModelController];
  v5 = [v4 selectedAnnotations];
  v6 = [v5 allObjects];

  if ([v6 count])
  {
    v7 = [v3 pageModelController];
    v8 = [v7 mutableArrayValueForKey:@"annotations"];

    [v8 removeObjectsInArray:v6];
  }
}

- (id)_toolbarButtonItemOfType:(unint64_t)a3
{
  if (a3 <= 5)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = [(AKToolbarViewController_iOS *)self signatureButton];
      }

      else
      {
        if (a3 == 4)
        {
          [(AKToolbarViewController_iOS *)self textButton];
        }

        else
        {
          [(AKToolbarViewController_iOS *)self textStyleButton];
        }
        v3 = ;
      }

      goto LABEL_27;
    }

    if (!a3)
    {
      v3 = [(AKToolbarViewController_iOS *)self sketchButton];
      goto LABEL_27;
    }

    if (a3 == 1)
    {
      v3 = [(AKToolbarViewController_iOS *)self richSketchButton];
      goto LABEL_27;
    }
  }

  else if (a3 > 9)
  {
    switch(a3)
    {
      case 0xAuLL:
        v3 = [(AKToolbarViewController_iOS *)self undoButton];
        goto LABEL_27;
      case 0xBuLL:
        v3 = [(AKToolbarViewController_iOS *)self redoButton];
        goto LABEL_27;
      case 0xDuLL:
        v3 = [(AKToolbarViewController_iOS *)self inkButton];
        goto LABEL_27;
    }
  }

  else
  {
    switch(a3)
    {
      case 6uLL:
        v3 = [(AKToolbarViewController_iOS *)self lineStyleButton];
        goto LABEL_27;
      case 7uLL:
        v3 = [(AKToolbarViewController_iOS *)self strokeColorButton];
        goto LABEL_27;
      case 9uLL:
        v3 = [(AKToolbarViewController_iOS *)self loupeButton];
        goto LABEL_27;
    }
  }

  NSLog(&cfstr_Toolbarbuttoni.isa, a2, a3);
  v3 = 0;
LABEL_27:

  return v3;
}

- (id)_createNewToggleToolbarButtonWithImage:(id)a3 tag:(int64_t)a4 target:(id)a5 selector:(SEL)a6 autoUpdatesColor:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = [AKToggleButton alloc];
  v15 = [(AKToggleButton *)v14 initWithFrame:v12 templateImage:v7 autoUpdatesColor:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v16 = [(AKToolbarViewController_iOS *)self traitCollection];
  v17 = sub_23F4516FC(v16);

  [(AKToggleButton *)v15 setShouldTintNormalImage:1];
  if (v17)
  {
    [(AKToggleButton *)v15 setShowsBackgroundColor:1];
    v18 = [(AKToolbarViewController_iOS *)self view];
    v19 = [v18 tintColor];
    [(AKToggleButton *)v15 setTintColor:v19];

    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [(AKToggleButton *)v15 setShowsBackgroundColor:0];
    v20 = [MEMORY[0x277D75348] whiteColor];
    [(AKToggleButton *)v15 setTintColor:v20];

    [MEMORY[0x277D75348] systemBlueColor];
  }
  v21 = ;
  [(AKToggleButton *)v15 setSelectedColor:v21];

  [(AKToggleButton *)v15 setFrame:0.0, 0.0, 29.0, 29.0];
  v22 = [(AKToggleButton *)v15 layer];
  [v22 setCornerRadius:3.0];

  [(AKToggleButton *)v15 setTag:a4];
  [(AKToggleButton *)v15 setImage:v12 forState:0];
  [(AKToggleButton *)v15 addTarget:v13 action:a6 forControlEvents:64];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v15];

  return v23;
}

- (id)_createNewColorPickerToolbarButtonWithTarget:(id)a3 selector:(SEL)a4
{
  v5 = a3;
  v6 = [AKColorPaletteButton buttonWithType:0];
  [v6 setFrame:{0.0, 0.0, 19.0, 19.0}];
  [v6 addTarget:v5 action:a4 forControlEvents:64];

  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];

  return v7;
}

- (id)_createNewCustomViewToolbarButtonWithImage:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v7 = MEMORY[0x277D75220];
  v8 = a4;
  v9 = a3;
  v10 = [v7 buttonWithType:1];
  [v10 setFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v10 addTarget:v8 action:a5 forControlEvents:64];

  [v10 setImage:v9 forState:0];
  [v10 sizeToFit];
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v10];

  return v11;
}

- (id)_doodleModeToolbarImage
{
  v2 = [(AKToolbarViewController *)self controller];
  v3 = [v2 shouldDrawVariableStrokeDoodles];

  v4 = [objc_opt_class() imageForToolbarButtonItemOfType:v3];

  return v4;
}

- (double)heightIncludingAdditionalVisibleBars
{
  v3 = [(AKToolbarViewController_iOS *)self view];
  [v3 frame];
  Height = CGRectGetHeight(v8);
  [(AKToolbarViewController_iOS *)self visibleHeightOfAttributeBar];
  v6 = Height + v5;

  return v6;
}

- (double)visibleHeightOfAttributeBar
{
  v3 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];

    if (v6)
    {
      v7 = [(AKToolbarViewController_iOS *)self view];
      v8 = [(AKToolbarViewController_iOS *)self view];
      v9 = [v8 superview];

      v10 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
      [v7 frame];
      [v9 convertRect:0 toView:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [v10 frame];
      [v9 convertRect:0 toView:?];
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
  v3 = [(AKToolbarViewController *)self controller];
  v4 = [v3 currentPageController];
  v5 = [v4 pageModelController];

  v6 = [v5 selectedAnnotations];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v2 = 765106;
    }
  }

  return v2;
}

- (void)setBarTintColor:(id)a3
{
  objc_storeStrong(&self->_barTintColor, a3);
  v5 = a3;
  v6 = [(AKToolbarViewController_iOS *)self view];
  [v6 setBarTintColor:v5];
}

- (void)setTintColor:(id)a3
{
  objc_storeStrong(&self->_tintColor, a3);
  v5 = a3;
  v6 = [(AKToolbarViewController_iOS *)self view];
  [v6 setTintColor:v5];
}

- (BOOL)isPresentingPopover
{
  v3 = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (v3)
  {
    return 1;
  }

  v4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

  if (v4)
  {
    return 1;
  }

  v5 = [(AKToolbarViewController_iOS *)self lineStylesViewController];

  if (v5)
  {
    return 1;
  }

  v6 = [(AKToolbarViewController_iOS *)self textAttributesViewController];

  if (v6)
  {
    return 1;
  }

  v7 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

  if (v7)
  {
    return 1;
  }

  v9 = [(AKToolbarViewController_iOS *)self undoAlertController];

  return v9 != 0;
}

- (void)_undoManagerNotification:(id)a3
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

- (void)_undoLongPressAction:(id)a3
{
  v6 = a3;
  v4 = [(AKToolbarViewController_iOS *)self presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(AKToolbarViewController_iOS *)self _showUndoAlert:v6];
  }
}

- (void)_undoButtonAction:(id)a3
{
  v3 = [(AKToolbarViewController *)self controller];
  [v3 undo:0];
}

- (void)_redoButtonAction:(id)a3
{
  v3 = [(AKToolbarViewController *)self controller];
  [v3 redo:0];
}

- (void)_undoAllButtonAction:(id)a3
{
  v3 = [(AKToolbarViewController *)self controller];
  if ([v3 validateUndo:0])
  {
    do
    {
      [v3 undo:0];
    }

    while (([v3 validateUndo:0] & 1) != 0);
  }
}

- (void)_showUndoAlert:(id)a3
{
  v6 = [(AKToolbarViewController_iOS *)self _buildUndoAlertController];
  v4 = [(AKToolbarViewController_iOS *)self undoButton];
  v5 = [v6 popoverPresentationController];
  [v5 setBarButtonItem:v4];

  [v6 setModalPresentationStyle:7];
  [(AKToolbarViewController_iOS *)self presentViewController:v6 animated:1 completion:0];
}

- (id)_buildUndoAlertController
{
  v3 = [(AKToolbarViewController *)self controller];
  objc_initWeak(&location, self);
  v4 = [v3 validateUndo:0];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if (v4)
  {
    v6 = +[AKController akBundle];
    v7 = [v6 localizedStringForKey:@"Undo" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

    v8 = [v3 undoController];
    v9 = [v8 undoManager];
    v10 = [v9 undoActionName];

    if ([v10 length])
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v7, v10];

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
  v2 = [(AKToolbarViewController *)self controller];
  v3 = [v2 validateUndo:0];

  return v3;
}

- (BOOL)isPresentingPopovers
{
  v2 = [(AKToolbarViewController_iOS *)self presentedViewController];
  v3 = v2 != 0;

  return v3;
}

- (void)_showSignaturesPopover:(id)a3
{
  v4 = [(AKToolbarViewController *)self controller];
  v5 = [v4 signatureModelController];
  v6 = [v4 toolController];
  v7 = [v6 toolMode];

  if (v7 == 5)
  {
    v8 = objc_opt_new();
    [v8 setTag:764022];
    [v4 performActionForSender:v8];
  }

  v9 = [v5 signatures];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

    if (!v11)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_23F437DCC;
      v12[3] = &unk_278C7B810;
      v13 = v4;
      v14 = self;
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

- (void)_showLineStylePopover:(id)a3
{
  v4 = [(AKToolbarViewController_iOS *)self lineStylesViewController];

  if (!v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F4383F4;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_showTextStylePopover:(id)a3
{
  v4 = [(AKToolbarViewController_iOS *)self textAttributesViewController];

  if (!v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F438708;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_showColorPickerPopover:(id)a3
{
  v4 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

  if (!v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F438A1C;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    [(AKToolbarViewController_iOS *)self _dismissCurrentlyPresentedPopoverAnimated:0 withCompletion:v5];
  }
}

- (void)_dismissCurrentlyPresentedPopoverAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v30 = a4;
  v6 = [(AKToolbarViewController_iOS *)self presentedViewController];

  if (v6)
  {
    v7 = [(AKToolbarViewController_iOS *)self presentedViewController];
    v8 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];

    if (v7 == v8)
    {
      v21 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
      v22 = [v21 popoverPresentationController];
      [v22 setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
    }

    else
    {
      v9 = [(AKToolbarViewController_iOS *)self presentedViewController];
      v10 = [(AKToolbarViewController_iOS *)self lineStylesViewController];

      if (v9 == v10)
      {
        v23 = [(AKToolbarViewController_iOS *)self lineStylesViewController];
        v24 = [v23 popoverPresentationController];
        [v24 setDelegate:0];

        [(AKToolbarViewController_iOS *)self setLineStylesViewController:0];
      }

      else
      {
        v11 = [(AKToolbarViewController_iOS *)self presentedViewController];
        v12 = [(AKToolbarViewController_iOS *)self undoAlertController];

        if (v11 == v12)
        {
          v25 = [(AKToolbarViewController_iOS *)self undoAlertController];
          v26 = [v25 popoverPresentationController];
          [v26 setDelegate:0];

          [(AKToolbarViewController_iOS *)self setUndoAlertController:0];
        }

        else
        {
          v13 = [(AKToolbarViewController_iOS *)self presentedViewController];
          v14 = [(AKToolbarViewController_iOS *)self textAttributesViewController];

          if (v13 == v14)
          {
            v27 = [(AKToolbarViewController_iOS *)self textAttributesViewController];
            v28 = [v27 popoverPresentationController];
            [v28 setDelegate:0];

            [(AKToolbarViewController_iOS *)self setTextAttributesViewController:0];
          }

          else
          {
            v15 = [(AKToolbarViewController_iOS *)self presentedViewController];
            v16 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

            if (v15 == v16)
            {
              v17 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
              [v17 removeObserver:self forKeyPath:@"color"];

              v18 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
              v19 = [v18 popoverPresentationController];
              [v19 setDelegate:0];

              [(AKToolbarViewController_iOS *)self setColorPickerPopoverViewController:0];
            }
          }
        }
      }
    }

    v29 = [(AKToolbarViewController_iOS *)self presentedViewController];
    [v29 dismissViewControllerAnimated:v4 completion:v30];

    [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
  }

  else
  {
    v20 = v30;
    if (!v30)
    {
      goto LABEL_16;
    }

    (*(v30 + 2))(v30);
  }

  v20 = v30;
LABEL_16:
}

- (void)_setupPassthroughViewsForViewController:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKLineStylesViewController *)v4 popoverPresentationController];
  v6 = [v5 passthroughViews];
  v7 = [v6 mutableCopy];

  v22 = v5;
  [v5 _setIgnoreBarButtonItemSiblings:1];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
  }

  v8 = [(AKToolbarViewController_iOS *)self lineStyleButton];
  v9 = [v8 customView];
  v23[0] = v9;
  v10 = [(AKToolbarViewController_iOS *)self strokeColorButton];
  v11 = [v10 customView];
  v23[1] = v11;
  v12 = [(AKToolbarViewController_iOS *)self textStyleButton];
  v13 = [v12 customView];
  v23[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  [v7 addObjectsFromArray:v14];

  if (self->_colorPickerPopoverViewController == v4)
  {
    v15 = [(AKToolbarViewController_iOS *)self strokeColorButton];
  }

  else if (self->_textAttributesViewController == v4)
  {
    v15 = [(AKToolbarViewController_iOS *)self textStyleButton];
  }

  else
  {
    if (self->_lineStylesViewController != v4)
    {
      goto LABEL_10;
    }

    v15 = [(AKToolbarViewController_iOS *)self lineStyleButton];
  }

  v16 = v15;
  v17 = [v15 customView];
  [v7 removeObject:v17];

LABEL_10:
  v18 = [(AKToolbarViewController *)self controller];
  v19 = [v18 currentPageController];
  v20 = [v19 overlayView];

  v21 = [v20 superview];

  if (v21)
  {
    [v7 addObject:v20];
  }

  [v22 setPassthroughViews:v7];
}

- (void)_layoutAttributeContainer
{
  v3 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    firstValue = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    v6 = [(AKToolbarViewController_iOS *)self view];
    v7 = [v6 superview];

    v8 = [(AKToolbarViewController_iOS *)self view];
    if (v7)
    {
      [v7 insertSubview:firstValue belowSubview:v8];
      v9 = _NSDictionaryOfVariableBindings(&cfstr_Attributetoolb.isa, firstValue, v8, 0);
      v10 = MEMORY[0x277CCAAD0];
      v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[attributeToolbarContainer]|" options:0 metrics:0 views:v9];
      [v10 activateConstraints:v11];

      v12 = MEMORY[0x277CCAAD0];
      v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[attributeToolbarContainer(44@999)]" options:0 metrics:0 views:v9];
      [v12 activateConstraints:v13];

      v14 = [MEMORY[0x277CCAAD0] constraintWithItem:firstValue attribute:4 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:0.0];
      [(AKToolbarViewController_iOS *)self setAttributeToolbarViewControllerConstraint:v14];

      [v8 frame];
      Height = CGRectGetHeight(v20);
      v16 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
      [v16 setConstant:Height];

      v17 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
      [v17 setActive:1];

      [v7 layoutIfNeeded];
    }
  }
}

- (void)showAttributeToolbarForSelectedAnnotations:(id)a3 andToolMode:(unint64_t)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(AKToolbarViewController_iOS *)self _layoutAttributeContainer];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_dismissAttributeToolbarForSelectedAnnotations object:0];
  v6 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];

  if (!v6)
  {
    v7 = [(AKToolbarViewController *)self controller];
    v8 = [[AKFloatingAttributePickerViewController alloc] initWithController:v7];
    [(AKToolbarViewController_iOS *)self setAttributeToolbarViewController:v8];

    v9 = [(AKToolbarViewController_iOS *)self floatingAttributeToolbarContainer];
    v10 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    v11 = [v10 view];
    [v9 addSubview:v11];

    v12 = [(AKToolbarViewController_iOS *)self barTintColor];
    v13 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    v14 = [v13 toolbar];
    [v14 setBarTintColor:v12];

    v15 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    v16 = [v15 view];

    v17 = _NSDictionaryOfVariableBindings(&cfstr_Attributetoolb_0.isa, v16, 0);
    v18 = MEMORY[0x277CCAAD0];
    v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[attributeToolbar]|" options:0 metrics:0 views:v17];
    [v18 activateConstraints:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[attributeToolbar]|" options:0 metrics:0 views:v17];
    [v20 activateConstraints:v21];

    v22 = [(AKToolbarViewController_iOS *)self view];
    v23 = [v22 superview];

    v24 = [(AKToolbarViewController_iOS *)self view];
    [v24 frame];
    Height = CGRectGetHeight(v47);
    v26 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
    [v26 setConstant:Height];

    v27 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
    [v27 setActive:1];

    [v23 layoutIfNeeded];
    v28 = MEMORY[0x277D75D18];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_23F4399F4;
    v42[3] = &unk_278C7BBF8;
    v42[4] = self;
    v43 = v23;
    v44 = v7;
    v29 = v7;
    v30 = v23;
    [v28 animateWithDuration:v42 animations:0 completion:0.1];
  }

  if ([v5 count] != 1)
  {
    v31 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    v32 = [(AKToolbarViewController_iOS *)self lineStyleButton];
    v45 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v35 = v31;
    v36 = v33;
LABEL_7:
    [v35 setRightButtonItems:v36 animated:1];
    goto LABEL_8;
  }

  v31 = [v5 anyObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
      [v32 setRightButtonItems:0 animated:1];
      goto LABEL_9;
    }

    v32 = [MEMORY[0x277CBEB18] array];
    if (objc_opt_respondsToSelector())
    {
      v39 = [(AKToolbarViewController_iOS *)self textStyleButton];
      [v32 addObject:v39];
    }

    if (objc_opt_respondsToSelector())
    {
      v40 = [(AKToolbarViewController_iOS *)self lineStyleButton];
      [v32 addObject:v40];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v31 pathIsPrestroked])
        {
          v41 = [(AKToolbarViewController_iOS *)self lineStyleButton];
          [v32 removeObject:v41];
        }
      }
    }

    v35 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
    v33 = v35;
    v36 = v32;
    goto LABEL_7;
  }

  v32 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  v33 = [(AKToolbarViewController_iOS *)self textStyleButton];
  v46[0] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  [v32 setRightButtonItems:v34 animated:1];

LABEL_8:
LABEL_9:

  v37 = [(AKToolbarViewController_iOS *)self _attributeTagForCurrentSelectionState];
  v38 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  [v38 setColorAttributeTag:v37];

  [(AKToolbarViewController_iOS *)self syncUIToSelectedColor];
}

- (void)dismissAttributeToolbarForSelectedAnnotations
{
  v3 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];

  if (v3)
  {
    v4 = [(AKToolbarViewController_iOS *)self view];
    v5 = [v4 superview];

    v6 = [(AKToolbarViewController_iOS *)self view];
    v7 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23F439BC0;
    v11[3] = &unk_278C7BBF8;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23F439C28;
    v10[3] = &unk_278C7B720;
    v10[4] = self;
    v8 = v5;
    v9 = v6;
    [v7 animateWithDuration:v11 animations:v10 completion:0.1];
  }
}

- (void)dismissAttributeToolbarImmediately
{
  v7 = [(AKToolbarViewController_iOS *)self view];
  [v7 frame];
  Height = CGRectGetHeight(v9);
  v4 = [(AKToolbarViewController_iOS *)self attributeToolbarViewControllerConstraint];
  [v4 setConstant:Height];

  v5 = [(AKToolbarViewController_iOS *)self attributeToolbarViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  [(AKToolbarViewController_iOS *)self setAttributeToolbarViewController:0];
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  AKLog(@"%s %@");
  v5 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS presentationControllerShouldDismiss:]"];
  v6 = [v5 popoverPresentationController];

  if (v6 == v4)
  {
    v19 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    v20 = [v19 popoverPresentationController];
    [v20 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
    goto LABEL_14;
  }

  v7 = [(AKToolbarViewController_iOS *)self lineStylesViewController];
  v8 = [v7 popoverPresentationController];

  if (v8 == v4)
  {
    v21 = [(AKToolbarViewController_iOS *)self lineStylesViewController];
    v22 = [v21 popoverPresentationController];
    [v22 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setLineStylesViewController:0];
LABEL_13:
    [MEMORY[0x277D758A8] _setAlwaysAllowPopoverPresentations:0];
    goto LABEL_14;
  }

  v9 = [(AKToolbarViewController_iOS *)self undoAlertController];
  v10 = [v9 popoverPresentationController];

  if (v10 == v4)
  {
    v23 = [(AKToolbarViewController_iOS *)self undoAlertController];
    v24 = [v23 popoverPresentationController];
    [v24 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setUndoAlertController:0];
    goto LABEL_13;
  }

  v11 = [(AKToolbarViewController_iOS *)self textAttributesViewController];
  v12 = [v11 popoverPresentationController];

  if (v12 == v4)
  {
    v25 = [(AKToolbarViewController_iOS *)self textAttributesViewController];
    v26 = [v25 popoverPresentationController];
    [v26 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setTextAttributesViewController:0];
    goto LABEL_13;
  }

  v13 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
  v14 = [v13 popoverPresentationController];

  if (v14 == v4)
  {
    v27 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
    [v27 removeObserver:self forKeyPath:@"color"];

    v28 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
    v29 = [v28 popoverPresentationController];
    [v29 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setColorPickerPopoverViewController:0];
    goto LABEL_13;
  }

  v15 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
  v16 = [v15 popoverPresentationController];

  if (v16 == v4)
  {
    v17 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    v18 = [v17 popoverPresentationController];
    [v18 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

LABEL_14:

  return 1;
}

- (void)signaturesViewControllerDidCancel:(id)a3
{
  AKLog(@"%s %@");
  v4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerDidCancel:]"];

  if (v4)
  {
    v12 = [(AKToolbarViewController *)self controller];
    v5 = [v12 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 controllerWillDismissSignatureManagerView:v12];
    }

    [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    v6 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    v7 = [v6 popoverPresentationController];
    [v7 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
  }

  else
  {
    v8 = [(AKToolbarViewController_iOS *)self signaturesAlertController];

    if (v8)
    {
      v9 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
      v10 = [v9 popoverPresentationController];
      [v10 setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
    }
  }
}

- (void)signaturesViewControllerDidSelectSignature:(id)a3
{
  AKLog(@"%s %@");
  v4 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerDidSelectSignature:]"];

  if (v4)
  {
    v5 = [(AKToolbarViewController *)self controller];
    v6 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 controllerWillDismissSignatureManagerView:v5];
    }

    [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    v7 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    v8 = [v7 popoverPresentationController];
    [v8 setDelegate:0];

    v9 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v9 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:0];
  }

  else
  {
    v10 = [(AKToolbarViewController_iOS *)self signaturesAlertController];

    if (v10)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
      v11 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
      v12 = [v11 popoverPresentationController];
      [v12 setDelegate:0];

      [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
    }
  }

  v16 = [(AKToolbarViewController *)self controller];
  v13 = objc_alloc(MEMORY[0x277D75220]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setTag:764019];
  [v16 performActionForSender:v14];
}

- (void)signaturesViewControllerContinueToManageSignatures:(id)a3
{
  v23 = a3;
  v4 = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (v4)
  {
    v5 = [(AKToolbarViewController_iOS *)self presentedViewController];

    if (v5)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    }

    v6 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    v7 = [v6 popoverPresentationController];
    [v7 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

  AKLog(@"%s %@");
  v8 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController:"[AKToolbarViewController_iOS signaturesViewControllerContinueToManageSignatures:]"];

  v9 = v23;
  if (!v8)
  {
    v10 = [AKSignaturesViewController_iOS alloc];
    v11 = [(AKToolbarViewController *)self controller];
    v12 = [(AKSignaturesViewController_iOS *)v10 initWithController:v11];
    [(AKToolbarViewController_iOS *)self setSignaturesSheetViewController:v12];

    v13 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v13 setDelegate:self];

    v14 = [MEMORY[0x277D75418] currentDevice];
    if ([v14 userInterfaceIdiom] == 1)
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v16 setModalPresentationStyle:v15];

    v17 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v17 setShowsNavigationBar:1];

    v18 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v18 setPresentedInAlert:0];

    v19 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [v19 setAllowsEdits:1];

    v20 = [(AKToolbarViewController *)self controller];
    v21 = [v20 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v21 controllerWillShowSignatureManagerView:v20];
    }

    v22 = [(AKToolbarViewController_iOS *)self signaturesSheetViewController];
    [(AKToolbarViewController_iOS *)self presentViewController:v22 animated:1 completion:0];

    v9 = v23;
  }
}

- (void)signaturesViewControllerEnterSignatureMode:(id)a3
{
  v4 = [(AKToolbarViewController_iOS *)self signaturesAlertController];

  if (v4)
  {
    v5 = [(AKToolbarViewController_iOS *)self presentedViewController];

    if (v5)
    {
      [(AKToolbarViewController_iOS *)self dismissViewControllerAnimated:1 completion:0];
    }

    v6 = [(AKToolbarViewController_iOS *)self signaturesAlertController];
    v7 = [v6 popoverPresentationController];
    [v7 setDelegate:0];

    [(AKToolbarViewController_iOS *)self setSignaturesAlertController:0];
  }

  v9 = [(AKToolbarViewController *)self controller];
  v8 = objc_opt_new();
  [v8 setTag:764022];
  [v9 performActionForSender:v8];
}

- (void)signaturesViewControllerContinueToCreateSignature:(id)a3
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

- (void)signatureCreationControllerDidCreateSignature:(id)a3
{
  v5 = [(AKToolbarViewController *)self controller];
  v3 = objc_alloc(MEMORY[0x277D75220]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTag:764019];
  [v5 performActionForSender:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = a4;
  if ([a3 isEqualToString:@"color"])
  {
    v8 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];

    if (v8 == v13)
    {
      v9 = [(AKToolbarViewController_iOS *)self strokeColorButton];
      v10 = [v9 customView];

      v11 = [(AKToolbarViewController_iOS *)self colorPickerPopoverViewController];
      v12 = [v11 color];
      [v10 setColor:v12];
    }
  }
}

- (void)_peripheralAvailabilityDidUpdate:(id)a3
{
  if ([(AKToolbarViewController_iOS *)self _legacyDoodlesEnabled])
  {
    v4 = [(AKToolbarViewController_iOS *)self sketchButton];
    v5 = [(AKToolbarViewController_iOS *)self traitCollection];
    [(AKToolbarViewController_iOS *)self _updateToggleButton:v4 withTraitCollection:v5];
  }

  [(AKToolbarViewController_iOS *)self revalidateItems];
}

@end