@interface PDFKitPopupView
- (CGRect)_popoverControllerSourceRect;
- (PDFKitPopupView)initWithParentAnnotation:(id)annotation owningPageView:(id)view owningPDFView:(id)fView;
- (void)_presentPopupView_iOS;
- (void)_presentViewController:(id)controller;
- (void)_removeControlForAnnotation;
- (void)_setupPopupView;
- (void)_updateParentContents;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)removeFromSuperview;
- (void)textViewDidChange:(id)change;
@end

@implementation PDFKitPopupView

- (PDFKitPopupView)initWithParentAnnotation:(id)annotation owningPageView:(id)view owningPDFView:(id)fView
{
  annotationCopy = annotation;
  viewCopy = view;
  fViewCopy = fView;
  v20.receiver = self;
  v20.super_class = PDFKitPopupView;
  v11 = [(PDFKitPopupView *)&v20 init];
  if (v11)
  {
    v12 = objc_alloc_init(PDFKitPopupViewPrivate);
    v13 = v11->_private;
    v11->_private = v12;

    objc_storeWeak(&v11->_private->parentAnnotation, annotationCopy);
    objc_storeWeak(&v11->_private->pageView, viewCopy);
    objc_storeWeak(&v11->_private->view, fViewCopy);
    v14 = v11->_private;
    popupTextViewUndoManager = v14->popupTextViewUndoManager;
    v14->popupTextViewUndoManager = 0;

    contents = [annotationCopy contents];
    v17 = v11->_private;
    contents = v17->contents;
    v17->contents = contents;

    v11->_private->deviceIsiPhone = PDFKitDeviceIsiPhone();
    v11->_private->deviceIsiPad = PDFKitDeviceIsiPad();
    [(PDFKitPopupView *)v11 _setupPopupView];
    [(PDFKitPopupView *)v11 _presentPopupView];
  }

  return v11;
}

- (void)_setupPopupView
{
  WeakRetained = objc_loadWeakRetained(&self->_private->parentAnnotation);
  contents = [WeakRetained contents];
  if ([WeakRetained isMarkupAnnotationSubtype])
  {
    v4 = +[PDFAnnotation PDFTextColors];
    markupStyle = [WeakRetained markupStyle];
    v6 = v4;
LABEL_3:
    color2 = [v6 objectAtIndex:markupStyle];

    goto LABEL_7;
  }

  color = [WeakRetained color];
  if (color)
  {
    color2 = color;
  }

  else
  {
    popup = [WeakRetained popup];
    color2 = [popup color];

    if (!color2)
    {
      v6 = +[PDFAnnotation PDFTextColors];
      v4 = v6;
      markupStyle = 0;
      goto LABEL_3;
    }
  }

LABEL_7:
  v10 = +[PDFAnnotation PDFTextColors];
  v11 = [v10 indexOfObject:color2];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = +[PDFAnnotationDrawing createLigtherColor:withIntensity:](PDFAnnotationDrawing, "createLigtherColor:withIntensity:", [color2 CGColor], 0.05);
  }

  else
  {
    v13 = +[PDFAnnotation PDFTextBorderColors];
    v12 = [v13 objectAtIndex:v11];
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DD168]);
  v15 = self->_private;
  popupTextView = v15->popupTextView;
  v15->popupTextView = v14;

  [(UITextView *)self->_private->popupTextView setDelegate:self];
  if (contents)
  {
    [(UITextView *)self->_private->popupTextView setText:contents];
  }

  v17 = self->_private;
  if (v17->deviceIsiPhone)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PDFKitPopupView *)self setBackgroundColor:systemBackgroundColor];

    [(PDFKitPopupView *)self addSubview:self->_private->popupTextView];
  }

  else if (v17->deviceIsiPad)
  {
    [(UITextView *)v17->popupTextView setBackgroundColor:color2];
    [(UITextView *)self->_private->popupTextView setTextContainerInset:14.0, 14.0, 14.0, 14.0];
    v19 = self->_private->popupTextView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UITextView *)v19 setTextColor:blackColor];
  }
}

- (void)_presentPopupView_iOS
{
  v87[4] = *MEMORY[0x1E69E9840];
  v3 = self->_private;
  if (v3->deviceIsiPad)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
    PDFSizeMake([(UIViewController *)v4 setModalPresentationStyle:7], 300.0, 180.0);
    [(UIViewController *)v4 setPreferredContentSize:?];
    backgroundColor = [(UITextView *)self->_private->popupTextView backgroundColor];
    view = [(UIViewController *)v4 view];
    [view setBackgroundColor:backgroundColor];

    v7 = self->_private;
    popupController = v7->popupController;
    v7->popupController = v4;
    v9 = v4;

    popoverPresentationController = [(UIViewController *)v9 popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [popoverPresentationController setSourceView:WeakRetained];

    [(PDFKitPopupView *)self _popoverControllerSourceRect];
    v83 = popoverPresentationController;
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:15];
    view2 = [(UIViewController *)v9 view];
    [view2 addSubview:self->_private->popupTextView];

    view3 = [(UIViewController *)v9 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(UITextView *)self->_private->popupTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UITextView *)self->_private->popupTextView leadingAnchor];
    view4 = [(UIViewController *)v9 view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v87[0] = v73;
    trailingAnchor = [(UITextView *)self->_private->popupTextView trailingAnchor];
    view5 = [(UIViewController *)v9 view];
    safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v87[1] = v61;
    topAnchor = [(UITextView *)self->_private->popupTextView topAnchor];
    view6 = [(UIViewController *)v9 view];
    safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v87[2] = v15;
    bottomAnchor = [(UITextView *)self->_private->popupTextView bottomAnchor];
    view7 = [(UIViewController *)v9 view];
    safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v87[3] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:4];
    [v65 activateConstraints:v21];

    v22 = v83;
    v23 = v9;
  }

  else
  {
    if (!v3->deviceIsiPhone)
    {
      goto LABEL_6;
    }

    v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
    view8 = [v22 view];
    [view8 addSubview:self];

    [(PDFKitPopupView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_private->popupTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = MEMORY[0x1E696ACD8];
    leadingAnchor3 = [(PDFKitPopupView *)self leadingAnchor];
    view9 = [v22 view];
    leadingAnchor4 = [view9 leadingAnchor];
    v80 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v86[0] = v80;
    trailingAnchor3 = [(PDFKitPopupView *)self trailingAnchor];
    view10 = [v22 view];
    trailingAnchor4 = [view10 trailingAnchor];
    v72 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v86[1] = v72;
    topAnchor3 = [(PDFKitPopupView *)self topAnchor];
    view11 = [v22 view];
    topAnchor4 = [view11 topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v86[2] = v64;
    bottomAnchor3 = [(PDFKitPopupView *)self bottomAnchor];
    view12 = [v22 view];
    bottomAnchor4 = [view12 bottomAnchor];
    v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v86[3] = v56;
    leadingAnchor5 = [(UITextView *)self->_private->popupTextView leadingAnchor];
    view13 = [v22 view];
    safeAreaLayoutGuide5 = [view13 safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide5 leadingAnchor];
    v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
    v86[4] = v49;
    trailingAnchor5 = [(UITextView *)self->_private->popupTextView trailingAnchor];
    view14 = [v22 view];
    safeAreaLayoutGuide6 = [view14 safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide6 trailingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:8.0];
    v86[5] = v44;
    topAnchor5 = [(UITextView *)self->_private->popupTextView topAnchor];
    view15 = [v22 view];
    safeAreaLayoutGuide7 = [view15 safeAreaLayoutGuide];
    topAnchor6 = [safeAreaLayoutGuide7 topAnchor];
    v25 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:8.0];
    v86[6] = v25;
    bottomAnchor5 = [(UITextView *)self->_private->popupTextView bottomAnchor];
    view16 = [v22 view];
    safeAreaLayoutGuide8 = [view16 safeAreaLayoutGuide];
    bottomAnchor6 = [safeAreaLayoutGuide8 bottomAnchor];
    v30 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:8.0];
    v86[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:8];
    [v54 activateConstraints:v31];

    v32 = objc_alloc(MEMORY[0x1E69DC708]);
    v33 = PDFKitLocalizedString(@"Done");
    v23 = [v32 initWithTitle:v33 style:0 target:self action:sel_doneButton_];

    navigationItem = [v22 navigationItem];
    [navigationItem setRightBarButtonItem:v23];

    v35 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v22];
    v36 = self->_private;
    v37 = v36->popupController;
    v36->popupController = v35;

    [(UIViewController *)self->_private->popupController setModalPresentationStyle:1];
    v9 = self->_private->popupController;
  }

  [(PDFKitPopupView *)self _presentViewController:v9];

LABEL_6:
  text = [(UITextView *)self->_private->popupTextView text];
  v39 = [text length];

  if (!v39)
  {
    [(UITextView *)self->_private->popupTextView becomeFirstResponder];
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  parentViewController = [WeakRetained parentViewController];

  if (parentViewController)
  {
    [parentViewController presentViewController:controllerCopy animated:1 completion:0];
  }
}

- (CGRect)_popoverControllerSourceRect
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v4 = objc_loadWeakRetained(&self->_private->pageView);
  v5 = objc_loadWeakRetained(&self->_private->parentAnnotation);
  [v5 noteBounds];
  [v4 convertRectToPageView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [WeakRetained visibleRectForPageView:v4];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v43.size.height = v20;
  v40.origin.x = v7;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  height = v43.size.height;
  v44 = PDFRectIntersection(v40, v43);
  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  if (PDFRectEqualToRect(v41, v44))
  {
    goto LABEL_12;
  }

  MinX = PDFRectGetMinX(v7, v9, v11);
  if (MinX < PDFRectGetMinX(v15, v17, v19))
  {
    v22 = PDFRectGetMinX(v15, v17, v19);
LABEL_6:
    v7 = v22;
    goto LABEL_7;
  }

  MaxX = PDFRectGetMaxX(v7, v9, v11);
  if (MaxX > PDFRectGetMaxX(v15, v17, v19))
  {
    v22 = PDFRectGetMaxX(v15, v17, v19);
    goto LABEL_6;
  }

LABEL_7:
  MinY = PDFRectGetMinY(v7, v9, v11, v13);
  if (MinY < PDFRectGetMinY(v15, v17, v19, height))
  {
    v25 = PDFRectGetMinY(v15, v17, v19, height);
LABEL_11:
    v9 = v25;
    goto LABEL_12;
  }

  MaxY = PDFRectGetMaxY(v7, v9, v11, v13);
  if (MaxY > PDFRectGetMaxY(v15, v17, v19, height))
  {
    v25 = PDFRectGetMaxY(v15, v17, v19, height);
    goto LABEL_11;
  }

LABEL_12:
  [v4 convertRect:WeakRetained toView:{v7, v9, v11, v13}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v28;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  findFirstResponder = [WeakRetained findFirstResponder];
  objc_storeWeak(&self->_private->savedFirstResponder, findFirstResponder);
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  [(PDFKitPopupView *)self _removeControlForAnnotation];
  WeakRetained = objc_loadWeakRetained(&self->_private->savedFirstResponder);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained becomeFirstResponder];
    WeakRetained = v5;
  }
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  [(PDFKitPopupView *)self _popoverControllerSourceRect:controller];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  if (!PDFRectEqualToRect(*rect, v14))
  {
    rect->origin.x = v7;
    rect->origin.y = v9;
    rect->size.width = v11;
    rect->size.height = v13;
  }
}

- (void)removeFromSuperview
{
  [(PDFKitPopupView *)self _updateParentContents];
  v3 = self->_private;
  if (v3->deviceIsiPhone)
  {
    popupController = v3->popupController;

    [(UIViewController *)popupController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PDFKitPopupView;
    [(PDFKitPopupView *)&v7 removeFromSuperview];
    v5 = self->_private;
    popupTextView = v5->popupTextView;
    v5->popupTextView = 0;
  }
}

- (void)_removeControlForAnnotation
{
  [(PDFKitPopupView *)self _updateParentContents];
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v3 = objc_loadWeakRetained(&self->_private->parentAnnotation);
  [WeakRetained removeControlForAnnotation:v3];
}

- (void)_updateParentContents
{
  if (![(NSString *)self->_private->contents length])
  {
    v3 = self->_private;
    contents = v3->contents;
    v3->contents = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_private->parentAnnotation);
  [WeakRetained setContents:self->_private->contents withUndo:1];
}

- (void)textViewDidChange:(id)change
{
  text = [(UITextView *)self->_private->popupTextView text];
  v5 = self->_private;
  contents = v5->contents;
  v5->contents = text;

  MEMORY[0x1EEE66BB8](text, contents);
}

@end