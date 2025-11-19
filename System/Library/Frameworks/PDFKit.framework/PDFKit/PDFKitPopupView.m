@interface PDFKitPopupView
- (CGRect)_popoverControllerSourceRect;
- (PDFKitPopupView)initWithParentAnnotation:(id)a3 owningPageView:(id)a4 owningPDFView:(id)a5;
- (void)_presentPopupView_iOS;
- (void)_presentViewController:(id)a3;
- (void)_removeControlForAnnotation;
- (void)_setupPopupView;
- (void)_updateParentContents;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)removeFromSuperview;
- (void)textViewDidChange:(id)a3;
@end

@implementation PDFKitPopupView

- (PDFKitPopupView)initWithParentAnnotation:(id)a3 owningPageView:(id)a4 owningPDFView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PDFKitPopupView;
  v11 = [(PDFKitPopupView *)&v20 init];
  if (v11)
  {
    v12 = objc_alloc_init(PDFKitPopupViewPrivate);
    v13 = v11->_private;
    v11->_private = v12;

    objc_storeWeak(&v11->_private->parentAnnotation, v8);
    objc_storeWeak(&v11->_private->pageView, v9);
    objc_storeWeak(&v11->_private->view, v10);
    v14 = v11->_private;
    popupTextViewUndoManager = v14->popupTextViewUndoManager;
    v14->popupTextViewUndoManager = 0;

    v16 = [v8 contents];
    v17 = v11->_private;
    contents = v17->contents;
    v17->contents = v16;

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
  v3 = [WeakRetained contents];
  if ([WeakRetained isMarkupAnnotationSubtype])
  {
    v4 = +[PDFAnnotation PDFTextColors];
    v5 = [WeakRetained markupStyle];
    v6 = v4;
LABEL_3:
    v7 = [v6 objectAtIndex:v5];

    goto LABEL_7;
  }

  v8 = [WeakRetained color];
  if (v8)
  {
    v7 = v8;
  }

  else
  {
    v9 = [WeakRetained popup];
    v7 = [v9 color];

    if (!v7)
    {
      v6 = +[PDFAnnotation PDFTextColors];
      v4 = v6;
      v5 = 0;
      goto LABEL_3;
    }
  }

LABEL_7:
  v10 = +[PDFAnnotation PDFTextColors];
  v11 = [v10 indexOfObject:v7];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = +[PDFAnnotationDrawing createLigtherColor:withIntensity:](PDFAnnotationDrawing, "createLigtherColor:withIntensity:", [v7 CGColor], 0.05);
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
  if (v3)
  {
    [(UITextView *)self->_private->popupTextView setText:v3];
  }

  v17 = self->_private;
  if (v17->deviceIsiPhone)
  {
    v18 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PDFKitPopupView *)self setBackgroundColor:v18];

    [(PDFKitPopupView *)self addSubview:self->_private->popupTextView];
  }

  else if (v17->deviceIsiPad)
  {
    [(UITextView *)v17->popupTextView setBackgroundColor:v7];
    [(UITextView *)self->_private->popupTextView setTextContainerInset:14.0, 14.0, 14.0, 14.0];
    v19 = self->_private->popupTextView;
    v20 = [MEMORY[0x1E69DC888] blackColor];
    [(UITextView *)v19 setTextColor:v20];
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
    v5 = [(UITextView *)self->_private->popupTextView backgroundColor];
    v6 = [(UIViewController *)v4 view];
    [v6 setBackgroundColor:v5];

    v7 = self->_private;
    popupController = v7->popupController;
    v7->popupController = v4;
    v9 = v4;

    v10 = [(UIViewController *)v9 popoverPresentationController];
    [v10 setDelegate:self];
    WeakRetained = objc_loadWeakRetained(&self->_private->view);
    [v10 setSourceView:WeakRetained];

    [(PDFKitPopupView *)self _popoverControllerSourceRect];
    v83 = v10;
    [v10 setSourceRect:?];
    [v10 setPermittedArrowDirections:15];
    v12 = [(UIViewController *)v9 view];
    [v12 addSubview:self->_private->popupTextView];

    v13 = [(UIViewController *)v9 view];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(UITextView *)self->_private->popupTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = MEMORY[0x1E696ACD8];
    v79 = [(UITextView *)self->_private->popupTextView leadingAnchor];
    v81 = [(UIViewController *)v9 view];
    v77 = [v81 safeAreaLayoutGuide];
    v75 = [v77 leadingAnchor];
    v73 = [v79 constraintEqualToAnchor:v75 constant:0.0];
    v87[0] = v73;
    v69 = [(UITextView *)self->_private->popupTextView trailingAnchor];
    v71 = [(UIViewController *)v9 view];
    v67 = [v71 safeAreaLayoutGuide];
    v63 = [v67 trailingAnchor];
    v61 = [v69 constraintEqualToAnchor:v63 constant:0.0];
    v87[1] = v61;
    v57 = [(UITextView *)self->_private->popupTextView topAnchor];
    v59 = [(UIViewController *)v9 view];
    v55 = [v59 safeAreaLayoutGuide];
    v14 = [v55 topAnchor];
    v15 = [v57 constraintEqualToAnchor:v14 constant:0.0];
    v87[2] = v15;
    v16 = [(UITextView *)self->_private->popupTextView bottomAnchor];
    v17 = [(UIViewController *)v9 view];
    v18 = [v17 safeAreaLayoutGuide];
    v19 = [v18 bottomAnchor];
    v20 = [v16 constraintEqualToAnchor:v19 constant:0.0];
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
    v24 = [v22 view];
    [v24 addSubview:self];

    [(PDFKitPopupView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_private->popupTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v54 = MEMORY[0x1E696ACD8];
    v84 = [(PDFKitPopupView *)self leadingAnchor];
    v85 = [v22 view];
    v82 = [v85 leadingAnchor];
    v80 = [v84 constraintEqualToAnchor:v82];
    v86[0] = v80;
    v76 = [(PDFKitPopupView *)self trailingAnchor];
    v78 = [v22 view];
    v74 = [v78 trailingAnchor];
    v72 = [v76 constraintEqualToAnchor:v74];
    v86[1] = v72;
    v68 = [(PDFKitPopupView *)self topAnchor];
    v70 = [v22 view];
    v66 = [v70 topAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v86[2] = v64;
    v60 = [(PDFKitPopupView *)self bottomAnchor];
    v62 = [v22 view];
    v58 = [v62 bottomAnchor];
    v56 = [v60 constraintEqualToAnchor:v58];
    v86[3] = v56;
    v52 = [(UITextView *)self->_private->popupTextView leadingAnchor];
    v53 = [v22 view];
    v51 = [v53 safeAreaLayoutGuide];
    v50 = [v51 leadingAnchor];
    v49 = [v52 constraintEqualToAnchor:v50 constant:8.0];
    v86[4] = v49;
    v47 = [(UITextView *)self->_private->popupTextView trailingAnchor];
    v48 = [v22 view];
    v46 = [v48 safeAreaLayoutGuide];
    v45 = [v46 trailingAnchor];
    v44 = [v47 constraintEqualToAnchor:v45 constant:8.0];
    v86[5] = v44;
    v42 = [(UITextView *)self->_private->popupTextView topAnchor];
    v43 = [v22 view];
    v41 = [v43 safeAreaLayoutGuide];
    v40 = [v41 topAnchor];
    v25 = [v42 constraintEqualToAnchor:v40 constant:8.0];
    v86[6] = v25;
    v26 = [(UITextView *)self->_private->popupTextView bottomAnchor];
    v27 = [v22 view];
    v28 = [v27 safeAreaLayoutGuide];
    v29 = [v28 bottomAnchor];
    v30 = [v26 constraintEqualToAnchor:v29 constant:8.0];
    v86[7] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:8];
    [v54 activateConstraints:v31];

    v32 = objc_alloc(MEMORY[0x1E69DC708]);
    v33 = PDFKitLocalizedString(@"Done");
    v23 = [v32 initWithTitle:v33 style:0 target:self action:sel_doneButton_];

    v34 = [v22 navigationItem];
    [v34 setRightBarButtonItem:v23];

    v35 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v22];
    v36 = self->_private;
    v37 = v36->popupController;
    v36->popupController = v35;

    [(UIViewController *)self->_private->popupController setModalPresentationStyle:1];
    v9 = self->_private->popupController;
  }

  [(PDFKitPopupView *)self _presentViewController:v9];

LABEL_6:
  v38 = [(UITextView *)self->_private->popupTextView text];
  v39 = [v38 length];

  if (!v39)
  {
    [(UITextView *)self->_private->popupTextView becomeFirstResponder];
  }
}

- (void)_presentViewController:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v5 = [WeakRetained parentViewController];

  if (v5)
  {
    [v5 presentViewController:v6 animated:1 completion:0];
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

- (void)prepareForPopoverPresentation:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_private->view);
  v4 = [WeakRetained findFirstResponder];
  objc_storeWeak(&self->_private->savedFirstResponder, v4);
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
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

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  [(PDFKitPopupView *)self _popoverControllerSourceRect:a3];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  if (!PDFRectEqualToRect(*a4, v14))
  {
    a4->origin.x = v7;
    a4->origin.y = v9;
    a4->size.width = v11;
    a4->size.height = v13;
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

- (void)textViewDidChange:(id)a3
{
  v4 = [(UITextView *)self->_private->popupTextView text];
  v5 = self->_private;
  contents = v5->contents;
  v5->contents = v4;

  MEMORY[0x1EEE66BB8](v4, contents);
}

@end