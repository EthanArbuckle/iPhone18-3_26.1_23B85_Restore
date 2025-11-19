@interface AXSSImageDescriptionViewController
- (AXSSImageDescriptionViewController)initWithContentSnapshot:(id)a3;
- (AXSSImageDescriptionViewControllerDelegate)delegate;
- (BOOL)_hasChanges;
- (BOOL)_hasFormView;
- (CGSize)preferredContentSize;
- (double)_textViewMaxHeight;
- (id)_modifiedImageDescription;
- (void)_adjustViewToKeyboardFrame:(id)a3;
- (void)_hideKeyboard;
- (void)_imageDescriptionViewControllerSetupConstraints;
- (void)_imageDescriptionViewControllerSetupUI;
- (void)_layoutContentBackground;
- (void)_layoutImagePreview;
- (void)_scrollTextViewCaretToVisibleRegion;
- (void)_updateTextScrollViewConstraints;
- (void)cancelChanges:(id)a3;
- (void)imagePreviewShouldExpand:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)saveChanges:(id)a3;
- (void)setContentBackgroundColor:(id)a3;
- (void)setContentSnapshot:(id)a3;
- (void)setHidesTextBackground:(BOOL)a3;
- (void)setImageDescription:(id)a3;
- (void)setPlaceholderText:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AXSSImageDescriptionViewController

- (AXSSImageDescriptionViewController)initWithContentSnapshot:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AXSSImageDescriptionViewController;
  v6 = [(AXSSImageDescriptionViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentSnapshot, a3);
    v8 = [MEMORY[0x277D75348] blackColor];
    contentBackgroundColor = v7->_contentBackgroundColor;
    v7->_contentBackgroundColor = v8;

    contentImage = v7->_contentImage;
    v7->_contentImage = 0;
  }

  return v7;
}

- (void)setContentSnapshot:(id)a3
{
  v5 = a3;
  if (self->_contentSnapshot != v5)
  {
    objc_storeStrong(&self->_contentSnapshot, a3);
    if ([(AXSSImageDescriptionViewController *)self isUIReady])
    {
      v6 = [(AXSSImageDescriptionViewController *)self imagePreviewController];

      if (v6)
      {
        v7 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
        v8 = [v7 view];
        [v8 removeFromSuperview];

        v9 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
        [v9 removeFromParentViewController];

        [(AXSSImageDescriptionViewController *)self setImagePreviewController:0];
      }

      if (v5)
      {
        v10 = [[AXSSImagePreviewViewController alloc] initWithContentSnapshot:v5];
        [(AXSSImagePreviewViewController *)v10 setDelegate:self];
        [(AXSSImageDescriptionViewController *)self addChildViewController:v10];
        v11 = [(AXSSImageDescriptionViewController *)self view];
        v12 = [(AXSSImagePreviewViewController *)v10 view];
        v13 = [(AXSSImageDescriptionViewController *)self navBar];
        [v11 insertSubview:v12 belowSubview:v13];

        [(AXSSImageDescriptionViewController *)self setImagePreviewController:v10];
      }

      v14 = [(AXSSImageDescriptionViewController *)self view];
      [v14 setNeedsUpdateConstraints];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__AXSSImageDescriptionViewController_setContentSnapshot___block_invoke;
      v15[3] = &unk_278BF0248;
      v15[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v15 options:0 animations:0.18 completion:0.0];
    }
  }
}

void __57__AXSSImageDescriptionViewController_setContentSnapshot___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)setContentBackgroundColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_contentBackgroundColor, a3);
  v5 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (v5)
  {
    v6 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];
    [v6 setBackgroundColor:v7];
  }
}

- (void)setHidesTextBackground:(BOOL)a3
{
  self->_hidesTextBackground = a3;
  if (a3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    v5 = [v4 CGColor];
    v6 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    v7 = [v6 layer];
    [v7 setBorderColor:v5];

    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] separatorColor];
    v9 = [v8 CGColor];
    v10 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    v12 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    v13 = [v12 layer];
    [v13 setBorderWidth:1.0];

    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v15 = ;
  v14 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  [v14 setBackgroundColor:v15];
}

- (void)setImageDescription:(id)a3
{
  objc_storeStrong(&self->_imageDescription, a3);
  v5 = a3;
  v6 = [(AXSSImageDescriptionViewController *)self textView];
  [v6 setText:v5];
}

- (void)setPlaceholderText:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_placeholderText, a3);
  if (self->_placeholderText)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_placeholderText];
    v6 = [(AXSSImageDescriptionViewController *)self textView];
    [v6 setAttributedPlaceholder:v5];
  }

  else
  {
    v5 = [(AXSSImageDescriptionViewController *)self textView];
    [v5 setAttributedPlaceholder:0];
  }
}

- (void)saveChanges:(id)a3
{
  if (![(AXSSImageDescriptionViewController *)self isSavingOrCancelling])
  {
    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:1];
    v4 = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
    [(AXSSImageDescriptionViewController *)self setImageDescription:v4];

    v5 = [(AXSSImageDescriptionViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 imageDescriptionViewControllerDidSave:self];
    }

    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:0];
  }
}

- (void)cancelChanges:(id)a3
{
  v4 = a3;
  if (![(AXSSImageDescriptionViewController *)self isSavingOrCancelling])
  {
    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:1];
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke;
    aBlock[3] = &unk_278BF0270;
    objc_copyWeak(&v38, location);
    v5 = _Block_copy(aBlock);
    v6 = [(AXSSImageDescriptionViewController *)self textView];
    v7 = [v6 isFirstResponder];

    if (v7)
    {
      v8 = [(AXSSImageDescriptionViewController *)self textView];
      [v8 resignFirstResponder];
    }

    if ([(AXSSImageDescriptionViewController *)self _hasChanges])
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_2;
      v34[3] = &unk_278BF0298;
      v36 = v7;
      objc_copyWeak(&v35, location);
      v31 = _Block_copy(v34);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_3;
      v32[3] = &unk_278BF0270;
      objc_copyWeak(&v33, location);
      v30 = _Block_copy(v32);
      v9 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v10 = [(AXSSImageDescriptionViewController *)self contentImage];
      if (v10)
      {
        [v9 setImage:v10];
      }

      v11 = [(AXSSImageDescriptionViewController *)self navBar];
      v12 = [v11 items];
      v13 = [v12 objectAtIndexedSubscript:0];
      v14 = [v13 leftBarButtonItem];
      v15 = [v9 popoverPresentationController];
      [v15 setBarButtonItem:v14];

      v16 = MEMORY[0x277D750F8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"Cancel" value:&stru_284FF0250 table:@"AccessibilitySharedUISupport"];
      v19 = [v16 actionWithTitle:v18 style:1 handler:v31];
      [v9 addAction:v19];

      v20 = MEMORY[0x277D750F8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"Discard Changes" value:&stru_284FF0250 table:@"AccessibilitySharedUISupport"];
      v23 = [v20 actionWithTitle:v22 style:2 handler:v5];
      [v9 addAction:v23];

      v24 = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
      v25 = [v24 length];

      if (v25)
      {
        v26 = MEMORY[0x277D750F8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"Done" value:&stru_284FF0250 table:@"AccessibilitySharedUISupport"];
        v29 = [v26 actionWithTitle:v28 style:0 handler:v30];
        [v9 addAction:v29];
      }

      [(AXSSImageDescriptionViewController *)self presentViewController:v9 animated:1 completion:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v35);
    }

    else
    {
      v5[2](v5, 0);
    }

    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }
}

void __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 imageDescriptionViewControllerDidCancel:WeakRetained];
  }
}

void __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained textView];
    [v2 becomeFirstResponder];
  }
}

void __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained saveChanges:WeakRetained];
}

- (void)viewDidLoad
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v7 viewDidLoad];
  [(AXSSImageDescriptionViewController *)self _imageDescriptionViewControllerSetupUI];
  [(AXSSImageDescriptionViewController *)self _imageDescriptionViewControllerSetupConstraints];
  v3 = [(AXSSImageDescriptionViewController *)self presentationController];
  [v3 setDelegate:self];

  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(AXSSImageDescriptionViewController *)self registerForTraitChanges:v4 withAction:sel_traitEnvironment_didChangeTraitCollection_];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(AXSSImageDescriptionViewController *)self textView];
  v9 = [v8 isFirstResponder];

  if (v9)
  {
    v10 = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
    [v10 setConstant:-16.0];

    v11 = [(AXSSImageDescriptionViewController *)self textView];
    [v11 resignFirstResponder];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__AXSSImageDescriptionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v12[3] = &unk_278BF02C0;
    v12[4] = self;
    [v7 animateAlongsideTransition:0 completion:v12];
  }
}

void __89__AXSSImageDescriptionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textView];
  [v1 becomeFirstResponder];
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(AXSSImageDescriptionViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {
    v13 = [MEMORY[0x277D75348] separatorColor];
    v9 = v13;
    v10 = [v13 CGColor];
    v11 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    v12 = [v11 layer];
    [v12 setBorderColor:v10];
  }
}

- (CGSize)preferredContentSize
{
  v13.receiver = self;
  v13.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v13 preferredContentSize];
  v4 = v3;
  v6 = v5;
  if ([(AXSSImageDescriptionViewController *)self _hasFormView])
  {
    [(AXSSImageDescriptionViewController *)self _textViewMaxHeight];
    v8 = v7 + 32.0;
    v9 = [(AXSSImageDescriptionViewController *)self navBar];
    [v9 bounds];
    v6 = v8 + CGRectGetHeight(v15);

    *&v4 = 600.0;
  }

  v10 = [(AXSSImageDescriptionViewController *)self view];
  [v10 setNeedsUpdateConstraints];

  v11 = *&v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)updateViewConstraints
{
  v12.receiver = self;
  v12.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v12 updateViewConstraints];
  v3 = [(AXSSImageDescriptionViewController *)self _hasFormView];
  v4 = [(AXSSImageDescriptionViewController *)self textScrollViewFixedHeightConstraint];
  v5 = v4;
  if (v3)
  {
    [v4 setActive:1];

    v6 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    [v6 setActive:1];

    v7 = 0;
  }

  else
  {
    [v4 setActive:0];

    v8 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    v7 = v8 == 0;
    v9 = v8 != 0;

    v10 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    [v10 setActive:v9];
  }

  v11 = [(AXSSImageDescriptionViewController *)self textBackgroundViewFixedTopConstraint];
  [v11 setActive:v7];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v3 viewDidLayoutSubviews];
  [(AXSSImageDescriptionViewController *)self _layoutImagePreview];
  [(AXSSImageDescriptionViewController *)self _layoutContentBackground];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(AXSSImageDescriptionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 imageDescriptionViewControllerDidDismiss:self];
  }
}

- (void)imagePreviewShouldExpand:(id)a3
{
  v4 = a3;
  v5 = [(AXSSImageDescriptionViewController *)self imagePreviewController];

  if (v5 == v4)
  {

    [(AXSSImageDescriptionViewController *)self _hideKeyboard];
  }
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AXSSImageDescriptionViewController *)self textView];

  if (v5 == v4)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__AXSSImageDescriptionViewController_textViewDidChange___block_invoke;
    v16[3] = &unk_278BF0248;
    v16[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v16];
  }

  v6 = [(AXSSImageDescriptionViewController *)self navBar];
  v7 = [v6 items];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 rightBarButtonItem];

    if (v9)
    {
      v10 = [v8 rightBarButtonItem];
      v11 = [v10 accessibilityIdentifier];
      v12 = [v11 isEqualToString:@"AXImageDescriptionView-DoneButton"];

      if (v12)
      {
        v13 = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
        v14 = [v13 length] != 0;
        v15 = [v8 rightBarButtonItem];
        [v15 setEnabled:v14];
      }
    }
  }
}

- (void)_adjustViewToKeyboardFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];

  if (v5)
  {
    v6 = -16.0;
    if (![(AXSSImageDescriptionViewController *)self _hasFormView])
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKey:*MEMORY[0x277D76BB8]];
      [v8 CGRectValue];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = [(AXSSImageDescriptionViewController *)self view];
      v18 = [v17 window];
      [v18 convertRect:0 fromView:{v10, v12, v14, v16}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = [(AXSSImageDescriptionViewController *)self view];
      v28 = [v27 window];
      v29 = [(AXSSImageDescriptionViewController *)self view];
      [v29 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [(AXSSImageDescriptionViewController *)self view];
      [v28 convertRect:v38 fromView:{v31, v33, v35, v37}];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v62.origin.x = v40;
      v6 = -16.0;
      v62.origin.y = v42;
      v62.size.width = v44;
      v62.size.height = v46;
      v65.origin.x = v20;
      v65.origin.y = v22;
      v65.size.width = v24;
      v65.size.height = v26;
      v63 = CGRectIntersection(v62, v65);
      x = v63.origin.x;
      y = v63.origin.y;
      width = v63.size.width;
      height = v63.size.height;
      if (!CGRectIsNull(v63))
      {
        v64.origin.x = x;
        v64.origin.y = y;
        v64.size.width = width;
        v64.size.height = height;
        v6 = -16.0 - CGRectGetHeight(v64);
      }
    }

    v51 = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
    [v51 constant];
    v53 = v52;

    if (v53 != v6)
    {
      v54 = [v4 userInfo];
      v55 = [v54 objectForKeyedSubscript:*MEMORY[0x277D76B78]];
      [v55 floatValue];
      v57 = v56;

      v58 = [v4 userInfo];
      v59 = [v58 objectForKey:*MEMORY[0x277D76B70]];
      v60 = [v59 integerValue];

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __65__AXSSImageDescriptionViewController__adjustViewToKeyboardFrame___block_invoke;
      v61[3] = &unk_278BF02E8;
      v61[4] = self;
      *&v61[5] = v6;
      [MEMORY[0x277D75D18] animateWithDuration:v60 << 16 delay:v61 options:0 animations:v57 completion:0.0];
    }
  }
}

void __65__AXSSImageDescriptionViewController__adjustViewToKeyboardFrame___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) textScrollViewBottomConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

- (id)_modifiedImageDescription
{
  v2 = [(AXSSImageDescriptionViewController *)self textView];
  v3 = [v2 text];
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_284FF0250;
  }

  v7 = v6;

  return v6;
}

- (BOOL)_hasFormView
{
  v2 = [(AXSSImageDescriptionViewController *)self presentationController];
  v3 = [v2 traitCollection];

  v4 = [v3 horizontalSizeClass] == 2 && objc_msgSend(v3, "verticalSizeClass") == 2;
  return v4;
}

- (BOOL)_hasChanges
{
  v3 = [(AXSSImageDescriptionViewController *)self imageDescription];
  v4 = v3;
  v5 = &stru_284FF0250;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
  v8 = [(__CFString *)v6 isEqualToString:v7];

  return v8 ^ 1;
}

- (void)_hideKeyboard
{
  v3 = [(AXSSImageDescriptionViewController *)self textView];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    v5 = [(AXSSImageDescriptionViewController *)self textView];
    [v5 resignFirstResponder];
  }
}

- (void)_updateTextScrollViewConstraints
{
  [(AXSSImageDescriptionViewController *)self _textViewMaxHeight];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__AXSSImageDescriptionViewController__updateTextScrollViewConstraints__block_invoke;
  v4[3] = &unk_278BF02E8;
  v4[4] = self;
  v4[5] = v3;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 options:0 animations:0.18 completion:0.0];
}

void __70__AXSSImageDescriptionViewController__updateTextScrollViewConstraints__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) textScrollViewExpandingHeightConstraint];
  [v3 setConstant:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) textScrollViewFixedHeightConstraint];
  [v5 setConstant:v4];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (double)_textViewMaxHeight
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v3 lineHeight];
  v5 = v4;
  [v3 leading];
  v7 = v5 + v6;
  v8 = [(AXSSImageDescriptionViewController *)self textView];
  [v8 textContainerInset];
  v10 = v9 + v7 * 4.5;
  v11 = [(AXSSImageDescriptionViewController *)self textView];
  [v11 textContainerInset];
  v13 = v10 + v12;

  return ceil(v13);
}

- (void)_layoutImagePreview
{
  v3 = [(AXSSImageDescriptionViewController *)self imagePreviewController];

  if (v3)
  {
    v4 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [v4 frame];
    MinY = CGRectGetMinY(v15);

    v6 = [(AXSSImageDescriptionViewController *)self view];
    [v6 frame];
    Width = CGRectGetWidth(v16);

    v8 = [(AXSSImageDescriptionViewController *)self navBar];
    [v8 bounds];
    v10 = v9;
    v11 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    [v11 setEdgeInsets:{v10, 0.0, 0.0, 0.0}];

    v13 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    v12 = [v13 view];
    [v12 setFrame:{0.0, 0.0, Width, fmax(MinY, 0.0)}];
  }
}

- (void)_layoutContentBackground
{
  v3 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (v3)
  {
    v4 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [v4 frame];
    MinY = CGRectGetMinY(v13);

    v6 = fmax(MinY, 0.0);
    v7 = [(AXSSImageDescriptionViewController *)self view];
    [v7 frame];
    Width = CGRectGetWidth(v14);

    v9 = [(AXSSImageDescriptionViewController *)self navBar];
    [v9 bounds];
    Height = CGRectGetHeight(v15);

    v11 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];
    [v11 setFrame:{0.0, Height, Width, fmax(v6 - Height, 0.0)}];
  }
}

- (void)_imageDescriptionViewControllerSetupUI
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(AXSSImageDescriptionViewController *)self contentBackgroundColor];
    [v5 setBackgroundColor:v6];

    v7 = [(AXSSImageDescriptionViewController *)self view];
    [v7 insertSubview:v5 atIndex:0];

    [(AXSSImageDescriptionViewController *)self setContentBackgroundView:v5];
  }

  v8 = [(AXSSImageDescriptionViewController *)self navBar];

  if (!v8)
  {
    v9 = objc_alloc(MEMORY[0x277D75780]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDelegate:self];
    v11 = objc_alloc(MEMORY[0x277D757A8]);
    v12 = [(AXSSImageDescriptionViewController *)self title];
    v13 = [v11 initWithTitle:v12];

    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveChanges_];
    [v13 setRightBarButtonItem:v14];

    v15 = [(AXSSImageDescriptionViewController *)self imageDescription];
    v16 = [v15 length] != 0;
    v17 = [v13 rightBarButtonItem];
    [v17 setEnabled:v16];

    v18 = [v13 rightBarButtonItem];
    [v18 setAccessibilityIdentifier:@"AXImageDescriptionView-DoneButton"];

    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelChanges_];
    [v13 setLeftBarButtonItem:v19];

    v57[0] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [v10 setItems:v20];

    [v10 updateConstraintsIfNeeded];
    v21 = [(AXSSImageDescriptionViewController *)self view];
    [v21 addSubview:v10];

    [(AXSSImageDescriptionViewController *)self setNavBar:v10];
  }

  v22 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
  if (!v22)
  {
    v23 = [(AXSSImageDescriptionViewController *)self contentSnapshot];

    if (!v23)
    {
      goto LABEL_9;
    }

    v24 = [AXSSImagePreviewViewController alloc];
    v25 = [(AXSSImageDescriptionViewController *)self contentSnapshot];
    v22 = [(AXSSImagePreviewViewController *)v24 initWithContentSnapshot:v25];

    [(AXSSImagePreviewViewController *)v22 setDelegate:self];
    [(AXSSImageDescriptionViewController *)self addChildViewController:v22];
    v26 = [(AXSSImageDescriptionViewController *)self view];
    v27 = [(AXSSImagePreviewViewController *)v22 view];
    v28 = [(AXSSImageDescriptionViewController *)self navBar];
    [v26 insertSubview:v27 belowSubview:v28];

    [(AXSSImageDescriptionViewController *)self setImagePreviewController:v22];
  }

LABEL_9:
  v29 = [(AXSSImageDescriptionViewController *)self textBackgroundView];

  if (!v29)
  {
    v30 = objc_alloc(MEMORY[0x277D75D18]);
    v31 = [v30 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (![(AXSSImageDescriptionViewController *)self hidesTextBackground])
    {
      v32 = [MEMORY[0x277D75348] separatorColor];
      v33 = [v32 CGColor];
      v34 = [v31 layer];
      [v34 setBorderColor:v33];

      v35 = [v31 layer];
      [v35 setBorderWidth:1.0];

      v36 = [MEMORY[0x277D75348] systemBackgroundColor];
      [v31 setBackgroundColor:v36];
    }

    v37 = [(AXSSImageDescriptionViewController *)self view];
    [v37 addSubview:v31];

    [(AXSSImageDescriptionViewController *)self setTextBackgroundView:v31];
  }

  v38 = [(AXSSImageDescriptionViewController *)self textScrollView];

  if (!v38)
  {
    v39 = objc_alloc(MEMORY[0x277D759D8]);
    v40 = [v39 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [v41 addSubview:v40];

    [(AXSSImageDescriptionViewController *)self setTextScrollView:v40];
  }

  v42 = [(AXSSImageDescriptionViewController *)self textView];

  if (!v42)
  {
    v43 = [AXSSScrollViewEnclosedTextView alloc];
    v44 = [(AXSSScrollViewEnclosedTextView *)v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AXSSScrollViewEnclosedTextView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AXSSScrollViewEnclosedTextView *)v44 setAdjustsFontForContentSizeCategory:1];
    v45 = [MEMORY[0x277D75348] clearColor];
    [(AXSSScrollViewEnclosedTextView *)v44 setBackgroundColor:v45];

    [(AXSSScrollViewEnclosedTextView *)v44 setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    v46 = [MEMORY[0x277D75348] labelColor];
    [(AXSSScrollViewEnclosedTextView *)v44 setTextColor:v46];

    v47 = MEMORY[0x277D74300];
    v48 = *MEMORY[0x277D76918];
    v49 = [MEMORY[0x277D75C80] currentTraitCollection];
    v50 = [v47 preferredFontForTextStyle:v48 compatibleWithTraitCollection:v49];
    [(AXSSScrollViewEnclosedTextView *)v44 setFont:v50];

    [(AXSSScrollViewEnclosedTextView *)v44 setScrollEnabled:0];
    [(AXSSScrollViewEnclosedTextView *)v44 setDelegate:self];
    v51 = objc_alloc(MEMORY[0x277CCA898]);
    v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"Add Image Description" value:&stru_284FF0250 table:@"AccessibilitySharedUISupport"];
    v54 = [v51 initWithString:v53];
    [(AXSSScrollViewEnclosedTextView *)v44 setAttributedPlaceholder:v54];

    v55 = [(AXSSImageDescriptionViewController *)self textScrollView];
    [v55 addSubview:v44];

    [(AXSSImageDescriptionViewController *)self setTextView:v44];
  }

  [(AXSSImageDescriptionViewController *)self setIsUIReady:1];
  v56 = *MEMORY[0x277D85DE8];
}

- (void)_imageDescriptionViewControllerSetupConstraints
{
  v90[10] = *MEMORY[0x277D85DE8];
  v3 = [(AXSSImageDescriptionViewController *)self textView];
  v4 = [v3 heightAnchor];
  v5 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v6 = [v5 heightAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];

  LODWORD(v8) = 1144733696;
  [v7 setPriority:v8];
  v9 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];

  if (!v9)
  {
    v10 = [(AXSSImageDescriptionViewController *)self textScrollView];
    v11 = [v10 heightAnchor];
    v12 = [v11 constraintLessThanOrEqualToConstant:0.0];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewExpandingHeightConstraint:v12];

    v13 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    LODWORD(v14) = 1148829696;
    [v13 setPriority:v14];
  }

  v15 = [(AXSSImageDescriptionViewController *)self textBackgroundViewFixedTopConstraint];

  if (!v15)
  {
    v16 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    v17 = [v16 topAnchor];
    v18 = [(AXSSImageDescriptionViewController *)self navBar];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [(AXSSImageDescriptionViewController *)self setTextBackgroundViewFixedTopConstraint:v20];
  }

  v21 = [(AXSSImageDescriptionViewController *)self textScrollViewFixedHeightConstraint];

  if (!v21)
  {
    v22 = [(AXSSImageDescriptionViewController *)self textScrollView];
    v23 = [v22 heightAnchor];
    v24 = [v23 constraintEqualToConstant:0.0];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewFixedHeightConstraint:v24];
  }

  v25 = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];

  if (!v25)
  {
    v26 = [(AXSSImageDescriptionViewController *)self textScrollView];
    v27 = [v26 bottomAnchor];
    v28 = [(AXSSImageDescriptionViewController *)self view];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29 constant:-16.0];

    LODWORD(v31) = 1148829696;
    [v30 setPriority:v31];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewBottomConstraint:v30];
  }

  [(AXSSImageDescriptionViewController *)self _updateTextScrollViewConstraints];
  v66 = objc_alloc(MEMORY[0x277CBEB18]);
  v89 = [(AXSSImageDescriptionViewController *)self navBar];
  v87 = [v89 topAnchor];
  v88 = [(AXSSImageDescriptionViewController *)self view];
  v86 = [v88 safeAreaLayoutGuide];
  v85 = [v86 topAnchor];
  v84 = [v87 constraintEqualToAnchor:v85];
  v90[0] = v84;
  v83 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  v81 = [v83 topAnchor];
  v82 = [(AXSSImageDescriptionViewController *)self view];
  v80 = [v82 safeAreaLayoutGuide];
  v79 = [v80 topAnchor];
  v78 = [v81 constraintGreaterThanOrEqualToAnchor:v79];
  v90[1] = v78;
  v77 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  v75 = [v77 bottomAnchor];
  v76 = [(AXSSImageDescriptionViewController *)self view];
  v73 = [v76 bottomAnchor];
  v72 = [v75 constraintEqualToAnchor:v73];
  v90[2] = v72;
  v71 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v69 = [v71 topAnchor];
  v70 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  v68 = [v70 safeAreaLayoutGuide];
  v65 = [v68 topAnchor];
  v64 = [v69 constraintEqualToAnchor:v65 constant:16.0];
  v90[3] = v64;
  v63 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v61 = [v63 leadingAnchor];
  v62 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  v60 = [v62 safeAreaLayoutGuide];
  v59 = [v60 leadingAnchor];
  v58 = [v61 constraintEqualToAnchor:v59 constant:16.0];
  v90[4] = v58;
  v57 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v55 = [v57 trailingAnchor];
  v56 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  v54 = [v56 safeAreaLayoutGuide];
  v53 = [v54 trailingAnchor];
  v52 = [v55 constraintEqualToAnchor:v53 constant:-16.0];
  v90[5] = v52;
  v51 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v49 = [v51 bottomAnchor];
  v50 = [(AXSSImageDescriptionViewController *)self view];
  v48 = [v50 safeAreaLayoutGuide];
  v32 = [v48 bottomAnchor];
  v33 = [v49 constraintLessThanOrEqualToAnchor:v32 constant:-16.0];
  v90[6] = v33;
  v34 = [(AXSSImageDescriptionViewController *)self textView];
  v35 = [v34 widthAnchor];
  v36 = [(AXSSImageDescriptionViewController *)self textScrollView];
  v37 = [v36 widthAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
  v90[7] = v38;
  v39 = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
  v90[8] = v39;
  v90[9] = v7;
  [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:10];
  v40 = v74 = v7;
  v67 = [v66 initWithArray:v40];

  v41 = _NSDictionaryOfVariableBindings(&cfstr_NavbarTextback.isa, self->_navBar, self->_textBackgroundView, self->_textView, 0);
  v42 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_navBar]|" options:0 metrics:0 views:v41];
  [v67 addObjectsFromArray:v42];

  v43 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_textBackgroundView]|" options:0 metrics:0 views:v41];
  [v67 addObjectsFromArray:v43];

  v44 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_textView]|" options:0 metrics:0 views:v41];
  [v67 addObjectsFromArray:v44];

  v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_textView]|" options:0 metrics:0 views:v41];
  [v67 addObjectsFromArray:v45];

  [MEMORY[0x277CCAAD0] activateConstraints:v67];
  v46 = [(AXSSImageDescriptionViewController *)self view];
  [v46 layoutIfNeeded];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_scrollTextViewCaretToVisibleRegion
{
  v3 = [(AXSSImageDescriptionViewController *)self textView];
  v4 = [(AXSSImageDescriptionViewController *)self textView];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  [v3 caretRectForPosition:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  if (!CGRectIsEmpty(v27))
  {
    v15 = [(AXSSImageDescriptionViewController *)self textScrollView];
    v16 = [(AXSSImageDescriptionViewController *)self textView];
    [v15 convertRect:v16 fromView:{v8, v10, v12, v14}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [(AXSSImageDescriptionViewController *)self textScrollView];
    [v25 scrollRectToVisible:0 animated:{v18, v20, v22, v24}];
  }
}

- (AXSSImageDescriptionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end