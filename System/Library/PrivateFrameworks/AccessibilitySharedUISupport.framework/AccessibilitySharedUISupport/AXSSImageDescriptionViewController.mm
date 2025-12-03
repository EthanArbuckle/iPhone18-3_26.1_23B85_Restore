@interface AXSSImageDescriptionViewController
- (AXSSImageDescriptionViewController)initWithContentSnapshot:(id)snapshot;
- (AXSSImageDescriptionViewControllerDelegate)delegate;
- (BOOL)_hasChanges;
- (BOOL)_hasFormView;
- (CGSize)preferredContentSize;
- (double)_textViewMaxHeight;
- (id)_modifiedImageDescription;
- (void)_adjustViewToKeyboardFrame:(id)frame;
- (void)_hideKeyboard;
- (void)_imageDescriptionViewControllerSetupConstraints;
- (void)_imageDescriptionViewControllerSetupUI;
- (void)_layoutContentBackground;
- (void)_layoutImagePreview;
- (void)_scrollTextViewCaretToVisibleRegion;
- (void)_updateTextScrollViewConstraints;
- (void)cancelChanges:(id)changes;
- (void)imagePreviewShouldExpand:(id)expand;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)saveChanges:(id)changes;
- (void)setContentBackgroundColor:(id)color;
- (void)setContentSnapshot:(id)snapshot;
- (void)setHidesTextBackground:(BOOL)background;
- (void)setImageDescription:(id)description;
- (void)setPlaceholderText:(id)text;
- (void)textViewDidChange:(id)change;
- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AXSSImageDescriptionViewController

- (AXSSImageDescriptionViewController)initWithContentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = AXSSImageDescriptionViewController;
  v6 = [(AXSSImageDescriptionViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentSnapshot, snapshot);
    blackColor = [MEMORY[0x277D75348] blackColor];
    contentBackgroundColor = v7->_contentBackgroundColor;
    v7->_contentBackgroundColor = blackColor;

    contentImage = v7->_contentImage;
    v7->_contentImage = 0;
  }

  return v7;
}

- (void)setContentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_contentSnapshot != snapshotCopy)
  {
    objc_storeStrong(&self->_contentSnapshot, snapshot);
    if ([(AXSSImageDescriptionViewController *)self isUIReady])
    {
      imagePreviewController = [(AXSSImageDescriptionViewController *)self imagePreviewController];

      if (imagePreviewController)
      {
        imagePreviewController2 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
        view = [imagePreviewController2 view];
        [view removeFromSuperview];

        imagePreviewController3 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
        [imagePreviewController3 removeFromParentViewController];

        [(AXSSImageDescriptionViewController *)self setImagePreviewController:0];
      }

      if (snapshotCopy)
      {
        v10 = [[AXSSImagePreviewViewController alloc] initWithContentSnapshot:snapshotCopy];
        [(AXSSImagePreviewViewController *)v10 setDelegate:self];
        [(AXSSImageDescriptionViewController *)self addChildViewController:v10];
        view2 = [(AXSSImageDescriptionViewController *)self view];
        view3 = [(AXSSImagePreviewViewController *)v10 view];
        navBar = [(AXSSImageDescriptionViewController *)self navBar];
        [view2 insertSubview:view3 belowSubview:navBar];

        [(AXSSImageDescriptionViewController *)self setImagePreviewController:v10];
      }

      view4 = [(AXSSImageDescriptionViewController *)self view];
      [view4 setNeedsUpdateConstraints];

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

- (void)setContentBackgroundColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_contentBackgroundColor, color);
  contentBackgroundView = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (contentBackgroundView)
  {
    contentBackgroundView2 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];
    [contentBackgroundView2 setBackgroundColor:colorCopy];
  }
}

- (void)setHidesTextBackground:(BOOL)background
{
  self->_hidesTextBackground = background;
  if (background)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    cGColor = [clearColor CGColor];
    textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    layer = [textBackgroundView layer];
    [layer setBorderColor:cGColor];

    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    cGColor2 = [separatorColor CGColor];
    textBackgroundView2 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    layer2 = [textBackgroundView2 layer];
    [layer2 setBorderColor:cGColor2];

    textBackgroundView3 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    layer3 = [textBackgroundView3 layer];
    [layer3 setBorderWidth:1.0];

    [MEMORY[0x277D75348] systemBackgroundColor];
  }
  v15 = ;
  textBackgroundView4 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  [textBackgroundView4 setBackgroundColor:v15];
}

- (void)setImageDescription:(id)description
{
  objc_storeStrong(&self->_imageDescription, description);
  descriptionCopy = description;
  textView = [(AXSSImageDescriptionViewController *)self textView];
  [textView setText:descriptionCopy];
}

- (void)setPlaceholderText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_placeholderText, text);
  if (self->_placeholderText)
  {
    textView2 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:self->_placeholderText];
    textView = [(AXSSImageDescriptionViewController *)self textView];
    [textView setAttributedPlaceholder:textView2];
  }

  else
  {
    textView2 = [(AXSSImageDescriptionViewController *)self textView];
    [textView2 setAttributedPlaceholder:0];
  }
}

- (void)saveChanges:(id)changes
{
  if (![(AXSSImageDescriptionViewController *)self isSavingOrCancelling])
  {
    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:1];
    _modifiedImageDescription = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
    [(AXSSImageDescriptionViewController *)self setImageDescription:_modifiedImageDescription];

    delegate = [(AXSSImageDescriptionViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate imageDescriptionViewControllerDidSave:self];
    }

    [(AXSSImageDescriptionViewController *)self setIsSavingOrCancelling:0];
  }
}

- (void)cancelChanges:(id)changes
{
  changesCopy = changes;
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
    textView = [(AXSSImageDescriptionViewController *)self textView];
    isFirstResponder = [textView isFirstResponder];

    if (isFirstResponder)
    {
      textView2 = [(AXSSImageDescriptionViewController *)self textView];
      [textView2 resignFirstResponder];
    }

    if ([(AXSSImageDescriptionViewController *)self _hasChanges])
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_2;
      v34[3] = &unk_278BF0298;
      v36 = isFirstResponder;
      objc_copyWeak(&v35, location);
      v31 = _Block_copy(v34);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __52__AXSSImageDescriptionViewController_cancelChanges___block_invoke_3;
      v32[3] = &unk_278BF0270;
      objc_copyWeak(&v33, location);
      v30 = _Block_copy(v32);
      v9 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
      contentImage = [(AXSSImageDescriptionViewController *)self contentImage];
      if (contentImage)
      {
        [v9 setImage:contentImage];
      }

      navBar = [(AXSSImageDescriptionViewController *)self navBar];
      items = [navBar items];
      v13 = [items objectAtIndexedSubscript:0];
      leftBarButtonItem = [v13 leftBarButtonItem];
      popoverPresentationController = [v9 popoverPresentationController];
      [popoverPresentationController setBarButtonItem:leftBarButtonItem];

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

      _modifiedImageDescription = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
      v25 = [_modifiedImageDescription length];

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
  presentationController = [(AXSSImageDescriptionViewController *)self presentationController];
  [presentationController setDelegate:self];

  v8[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(AXSSImageDescriptionViewController *)self registerForTraitChanges:v4 withAction:sel_traitEnvironment_didChangeTraitCollection_];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  textView = [(AXSSImageDescriptionViewController *)self textView];
  isFirstResponder = [textView isFirstResponder];

  if (isFirstResponder)
  {
    textScrollViewBottomConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
    [textScrollViewBottomConstraint setConstant:-16.0];

    textView2 = [(AXSSImageDescriptionViewController *)self textView];
    [textView2 resignFirstResponder];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__AXSSImageDescriptionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v12[3] = &unk_278BF02C0;
    v12[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v12];
  }
}

void __89__AXSSImageDescriptionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textView];
  [v1 becomeFirstResponder];
}

- (void)traitEnvironment:(id)environment didChangeTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(AXSSImageDescriptionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    v9 = separatorColor;
    cGColor = [separatorColor CGColor];
    textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    layer = [textBackgroundView layer];
    [layer setBorderColor:cGColor];
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
    navBar = [(AXSSImageDescriptionViewController *)self navBar];
    [navBar bounds];
    v6 = v8 + CGRectGetHeight(v15);

    *&v4 = 600.0;
  }

  view = [(AXSSImageDescriptionViewController *)self view];
  [view setNeedsUpdateConstraints];

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
  _hasFormView = [(AXSSImageDescriptionViewController *)self _hasFormView];
  textScrollViewFixedHeightConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewFixedHeightConstraint];
  v5 = textScrollViewFixedHeightConstraint;
  if (_hasFormView)
  {
    [textScrollViewFixedHeightConstraint setActive:1];

    textScrollViewExpandingHeightConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    [textScrollViewExpandingHeightConstraint setActive:1];

    v7 = 0;
  }

  else
  {
    [textScrollViewFixedHeightConstraint setActive:0];

    imagePreviewController = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    v7 = imagePreviewController == 0;
    v9 = imagePreviewController != 0;

    textScrollViewExpandingHeightConstraint2 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    [textScrollViewExpandingHeightConstraint2 setActive:v9];
  }

  textBackgroundViewFixedTopConstraint = [(AXSSImageDescriptionViewController *)self textBackgroundViewFixedTopConstraint];
  [textBackgroundViewFixedTopConstraint setActive:v7];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXSSImageDescriptionViewController;
  [(AXSSImageDescriptionViewController *)&v3 viewDidLayoutSubviews];
  [(AXSSImageDescriptionViewController *)self _layoutImagePreview];
  [(AXSSImageDescriptionViewController *)self _layoutContentBackground];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(AXSSImageDescriptionViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate imageDescriptionViewControllerDidDismiss:self];
  }
}

- (void)imagePreviewShouldExpand:(id)expand
{
  expandCopy = expand;
  imagePreviewController = [(AXSSImageDescriptionViewController *)self imagePreviewController];

  if (imagePreviewController == expandCopy)
  {

    [(AXSSImageDescriptionViewController *)self _hideKeyboard];
  }
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  textView = [(AXSSImageDescriptionViewController *)self textView];

  if (textView == changeCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__AXSSImageDescriptionViewController_textViewDidChange___block_invoke;
    v16[3] = &unk_278BF0248;
    v16[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v16];
  }

  navBar = [(AXSSImageDescriptionViewController *)self navBar];
  items = [navBar items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    rightBarButtonItem = [firstObject rightBarButtonItem];

    if (rightBarButtonItem)
    {
      rightBarButtonItem2 = [firstObject rightBarButtonItem];
      accessibilityIdentifier = [rightBarButtonItem2 accessibilityIdentifier];
      v12 = [accessibilityIdentifier isEqualToString:@"AXImageDescriptionView-DoneButton"];

      if (v12)
      {
        _modifiedImageDescription = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
        v14 = [_modifiedImageDescription length] != 0;
        rightBarButtonItem3 = [firstObject rightBarButtonItem];
        [rightBarButtonItem3 setEnabled:v14];
      }
    }
  }
}

- (void)_adjustViewToKeyboardFrame:(id)frame
{
  frameCopy = frame;
  userInfo = [frameCopy userInfo];

  if (userInfo)
  {
    v6 = -16.0;
    if (![(AXSSImageDescriptionViewController *)self _hasFormView])
    {
      userInfo2 = [frameCopy userInfo];
      v8 = [userInfo2 objectForKey:*MEMORY[0x277D76BB8]];
      [v8 CGRectValue];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      view = [(AXSSImageDescriptionViewController *)self view];
      window = [view window];
      [window convertRect:0 fromView:{v10, v12, v14, v16}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      view2 = [(AXSSImageDescriptionViewController *)self view];
      window2 = [view2 window];
      view3 = [(AXSSImageDescriptionViewController *)self view];
      [view3 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      view4 = [(AXSSImageDescriptionViewController *)self view];
      [window2 convertRect:view4 fromView:{v31, v33, v35, v37}];
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

    textScrollViewBottomConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
    [textScrollViewBottomConstraint constant];
    v53 = v52;

    if (v53 != v6)
    {
      userInfo3 = [frameCopy userInfo];
      v55 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277D76B78]];
      [v55 floatValue];
      v57 = v56;

      userInfo4 = [frameCopy userInfo];
      v59 = [userInfo4 objectForKey:*MEMORY[0x277D76B70]];
      integerValue = [v59 integerValue];

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __65__AXSSImageDescriptionViewController__adjustViewToKeyboardFrame___block_invoke;
      v61[3] = &unk_278BF02E8;
      v61[4] = self;
      *&v61[5] = v6;
      [MEMORY[0x277D75D18] animateWithDuration:integerValue << 16 delay:v61 options:0 animations:v57 completion:0.0];
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
  textView = [(AXSSImageDescriptionViewController *)self textView];
  text = [textView text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
  presentationController = [(AXSSImageDescriptionViewController *)self presentationController];
  traitCollection = [presentationController traitCollection];

  v4 = [traitCollection horizontalSizeClass] == 2 && objc_msgSend(traitCollection, "verticalSizeClass") == 2;
  return v4;
}

- (BOOL)_hasChanges
{
  imageDescription = [(AXSSImageDescriptionViewController *)self imageDescription];
  v4 = imageDescription;
  v5 = &stru_284FF0250;
  if (imageDescription)
  {
    v5 = imageDescription;
  }

  v6 = v5;

  _modifiedImageDescription = [(AXSSImageDescriptionViewController *)self _modifiedImageDescription];
  v8 = [(__CFString *)v6 isEqualToString:_modifiedImageDescription];

  return v8 ^ 1;
}

- (void)_hideKeyboard
{
  textView = [(AXSSImageDescriptionViewController *)self textView];
  isFirstResponder = [textView isFirstResponder];

  if (isFirstResponder)
  {
    textView2 = [(AXSSImageDescriptionViewController *)self textView];
    [textView2 resignFirstResponder];
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
  textView = [(AXSSImageDescriptionViewController *)self textView];
  [textView textContainerInset];
  v10 = v9 + v7 * 4.5;
  textView2 = [(AXSSImageDescriptionViewController *)self textView];
  [textView2 textContainerInset];
  v13 = v10 + v12;

  return ceil(v13);
}

- (void)_layoutImagePreview
{
  imagePreviewController = [(AXSSImageDescriptionViewController *)self imagePreviewController];

  if (imagePreviewController)
  {
    textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [textBackgroundView frame];
    MinY = CGRectGetMinY(v15);

    view = [(AXSSImageDescriptionViewController *)self view];
    [view frame];
    Width = CGRectGetWidth(v16);

    navBar = [(AXSSImageDescriptionViewController *)self navBar];
    [navBar bounds];
    v10 = v9;
    imagePreviewController2 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    [imagePreviewController2 setEdgeInsets:{v10, 0.0, 0.0, 0.0}];

    imagePreviewController3 = [(AXSSImageDescriptionViewController *)self imagePreviewController];
    view2 = [imagePreviewController3 view];
    [view2 setFrame:{0.0, 0.0, Width, fmax(MinY, 0.0)}];
  }
}

- (void)_layoutContentBackground
{
  contentBackgroundView = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (contentBackgroundView)
  {
    textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [textBackgroundView frame];
    MinY = CGRectGetMinY(v13);

    v6 = fmax(MinY, 0.0);
    view = [(AXSSImageDescriptionViewController *)self view];
    [view frame];
    Width = CGRectGetWidth(v14);

    navBar = [(AXSSImageDescriptionViewController *)self navBar];
    [navBar bounds];
    Height = CGRectGetHeight(v15);

    contentBackgroundView2 = [(AXSSImageDescriptionViewController *)self contentBackgroundView];
    [contentBackgroundView2 setFrame:{0.0, Height, Width, fmax(v6 - Height, 0.0)}];
  }
}

- (void)_imageDescriptionViewControllerSetupUI
{
  v57[1] = *MEMORY[0x277D85DE8];
  contentBackgroundView = [(AXSSImageDescriptionViewController *)self contentBackgroundView];

  if (!contentBackgroundView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentBackgroundColor = [(AXSSImageDescriptionViewController *)self contentBackgroundColor];
    [v5 setBackgroundColor:contentBackgroundColor];

    view = [(AXSSImageDescriptionViewController *)self view];
    [view insertSubview:v5 atIndex:0];

    [(AXSSImageDescriptionViewController *)self setContentBackgroundView:v5];
  }

  navBar = [(AXSSImageDescriptionViewController *)self navBar];

  if (!navBar)
  {
    v9 = objc_alloc(MEMORY[0x277D75780]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDelegate:self];
    v11 = objc_alloc(MEMORY[0x277D757A8]);
    title = [(AXSSImageDescriptionViewController *)self title];
    v13 = [v11 initWithTitle:title];

    v14 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_saveChanges_];
    [v13 setRightBarButtonItem:v14];

    imageDescription = [(AXSSImageDescriptionViewController *)self imageDescription];
    v16 = [imageDescription length] != 0;
    rightBarButtonItem = [v13 rightBarButtonItem];
    [rightBarButtonItem setEnabled:v16];

    rightBarButtonItem2 = [v13 rightBarButtonItem];
    [rightBarButtonItem2 setAccessibilityIdentifier:@"AXImageDescriptionView-DoneButton"];

    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelChanges_];
    [v13 setLeftBarButtonItem:v19];

    v57[0] = v13;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [v10 setItems:v20];

    [v10 updateConstraintsIfNeeded];
    view2 = [(AXSSImageDescriptionViewController *)self view];
    [view2 addSubview:v10];

    [(AXSSImageDescriptionViewController *)self setNavBar:v10];
  }

  imagePreviewController = [(AXSSImageDescriptionViewController *)self imagePreviewController];
  if (!imagePreviewController)
  {
    contentSnapshot = [(AXSSImageDescriptionViewController *)self contentSnapshot];

    if (!contentSnapshot)
    {
      goto LABEL_9;
    }

    v24 = [AXSSImagePreviewViewController alloc];
    contentSnapshot2 = [(AXSSImageDescriptionViewController *)self contentSnapshot];
    imagePreviewController = [(AXSSImagePreviewViewController *)v24 initWithContentSnapshot:contentSnapshot2];

    [(AXSSImagePreviewViewController *)imagePreviewController setDelegate:self];
    [(AXSSImageDescriptionViewController *)self addChildViewController:imagePreviewController];
    view3 = [(AXSSImageDescriptionViewController *)self view];
    view4 = [(AXSSImagePreviewViewController *)imagePreviewController view];
    navBar2 = [(AXSSImageDescriptionViewController *)self navBar];
    [view3 insertSubview:view4 belowSubview:navBar2];

    [(AXSSImageDescriptionViewController *)self setImagePreviewController:imagePreviewController];
  }

LABEL_9:
  textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];

  if (!textBackgroundView)
  {
    v30 = objc_alloc(MEMORY[0x277D75D18]);
    v31 = [v30 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (![(AXSSImageDescriptionViewController *)self hidesTextBackground])
    {
      separatorColor = [MEMORY[0x277D75348] separatorColor];
      cGColor = [separatorColor CGColor];
      layer = [v31 layer];
      [layer setBorderColor:cGColor];

      layer2 = [v31 layer];
      [layer2 setBorderWidth:1.0];

      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [v31 setBackgroundColor:systemBackgroundColor];
    }

    view5 = [(AXSSImageDescriptionViewController *)self view];
    [view5 addSubview:v31];

    [(AXSSImageDescriptionViewController *)self setTextBackgroundView:v31];
  }

  textScrollView = [(AXSSImageDescriptionViewController *)self textScrollView];

  if (!textScrollView)
  {
    v39 = objc_alloc(MEMORY[0x277D759D8]);
    v40 = [v39 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    textBackgroundView2 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    [textBackgroundView2 addSubview:v40];

    [(AXSSImageDescriptionViewController *)self setTextScrollView:v40];
  }

  textView = [(AXSSImageDescriptionViewController *)self textView];

  if (!textView)
  {
    v43 = [AXSSScrollViewEnclosedTextView alloc];
    v44 = [(AXSSScrollViewEnclosedTextView *)v43 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AXSSScrollViewEnclosedTextView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AXSSScrollViewEnclosedTextView *)v44 setAdjustsFontForContentSizeCategory:1];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AXSSScrollViewEnclosedTextView *)v44 setBackgroundColor:clearColor];

    [(AXSSScrollViewEnclosedTextView *)v44 setTextContainerInset:0.0, 0.0, 0.0, 0.0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(AXSSScrollViewEnclosedTextView *)v44 setTextColor:labelColor];

    v47 = MEMORY[0x277D74300];
    v48 = *MEMORY[0x277D76918];
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v50 = [v47 preferredFontForTextStyle:v48 compatibleWithTraitCollection:currentTraitCollection];
    [(AXSSScrollViewEnclosedTextView *)v44 setFont:v50];

    [(AXSSScrollViewEnclosedTextView *)v44 setScrollEnabled:0];
    [(AXSSScrollViewEnclosedTextView *)v44 setDelegate:self];
    v51 = objc_alloc(MEMORY[0x277CCA898]);
    v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v53 = [v52 localizedStringForKey:@"Add Image Description" value:&stru_284FF0250 table:@"AccessibilitySharedUISupport"];
    v54 = [v51 initWithString:v53];
    [(AXSSScrollViewEnclosedTextView *)v44 setAttributedPlaceholder:v54];

    textScrollView2 = [(AXSSImageDescriptionViewController *)self textScrollView];
    [textScrollView2 addSubview:v44];

    [(AXSSImageDescriptionViewController *)self setTextView:v44];
  }

  [(AXSSImageDescriptionViewController *)self setIsUIReady:1];
  v56 = *MEMORY[0x277D85DE8];
}

- (void)_imageDescriptionViewControllerSetupConstraints
{
  v90[10] = *MEMORY[0x277D85DE8];
  textView = [(AXSSImageDescriptionViewController *)self textView];
  heightAnchor = [textView heightAnchor];
  textScrollView = [(AXSSImageDescriptionViewController *)self textScrollView];
  heightAnchor2 = [textScrollView heightAnchor];
  v7 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  LODWORD(v8) = 1144733696;
  [v7 setPriority:v8];
  textScrollViewExpandingHeightConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];

  if (!textScrollViewExpandingHeightConstraint)
  {
    textScrollView2 = [(AXSSImageDescriptionViewController *)self textScrollView];
    heightAnchor3 = [textScrollView2 heightAnchor];
    v12 = [heightAnchor3 constraintLessThanOrEqualToConstant:0.0];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewExpandingHeightConstraint:v12];

    textScrollViewExpandingHeightConstraint2 = [(AXSSImageDescriptionViewController *)self textScrollViewExpandingHeightConstraint];
    LODWORD(v14) = 1148829696;
    [textScrollViewExpandingHeightConstraint2 setPriority:v14];
  }

  textBackgroundViewFixedTopConstraint = [(AXSSImageDescriptionViewController *)self textBackgroundViewFixedTopConstraint];

  if (!textBackgroundViewFixedTopConstraint)
  {
    textBackgroundView = [(AXSSImageDescriptionViewController *)self textBackgroundView];
    topAnchor = [textBackgroundView topAnchor];
    navBar = [(AXSSImageDescriptionViewController *)self navBar];
    bottomAnchor = [navBar bottomAnchor];
    v20 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    [(AXSSImageDescriptionViewController *)self setTextBackgroundViewFixedTopConstraint:v20];
  }

  textScrollViewFixedHeightConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewFixedHeightConstraint];

  if (!textScrollViewFixedHeightConstraint)
  {
    textScrollView3 = [(AXSSImageDescriptionViewController *)self textScrollView];
    heightAnchor4 = [textScrollView3 heightAnchor];
    v24 = [heightAnchor4 constraintEqualToConstant:0.0];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewFixedHeightConstraint:v24];
  }

  textScrollViewBottomConstraint = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];

  if (!textScrollViewBottomConstraint)
  {
    textScrollView4 = [(AXSSImageDescriptionViewController *)self textScrollView];
    bottomAnchor2 = [textScrollView4 bottomAnchor];
    view = [(AXSSImageDescriptionViewController *)self view];
    bottomAnchor3 = [view bottomAnchor];
    v30 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];

    LODWORD(v31) = 1148829696;
    [v30 setPriority:v31];
    [(AXSSImageDescriptionViewController *)self setTextScrollViewBottomConstraint:v30];
  }

  [(AXSSImageDescriptionViewController *)self _updateTextScrollViewConstraints];
  v66 = objc_alloc(MEMORY[0x277CBEB18]);
  navBar2 = [(AXSSImageDescriptionViewController *)self navBar];
  topAnchor2 = [navBar2 topAnchor];
  view2 = [(AXSSImageDescriptionViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  topAnchor3 = [safeAreaLayoutGuide topAnchor];
  v84 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v90[0] = v84;
  textBackgroundView2 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  topAnchor4 = [textBackgroundView2 topAnchor];
  view3 = [(AXSSImageDescriptionViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  topAnchor5 = [safeAreaLayoutGuide2 topAnchor];
  v78 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5];
  v90[1] = v78;
  textBackgroundView3 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  bottomAnchor4 = [textBackgroundView3 bottomAnchor];
  view4 = [(AXSSImageDescriptionViewController *)self view];
  bottomAnchor5 = [view4 bottomAnchor];
  v72 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v90[2] = v72;
  textScrollView5 = [(AXSSImageDescriptionViewController *)self textScrollView];
  topAnchor6 = [textScrollView5 topAnchor];
  textBackgroundView4 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  safeAreaLayoutGuide3 = [textBackgroundView4 safeAreaLayoutGuide];
  topAnchor7 = [safeAreaLayoutGuide3 topAnchor];
  v64 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:16.0];
  v90[3] = v64;
  textScrollView6 = [(AXSSImageDescriptionViewController *)self textScrollView];
  leadingAnchor = [textScrollView6 leadingAnchor];
  textBackgroundView5 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  safeAreaLayoutGuide4 = [textBackgroundView5 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide4 leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v90[4] = v58;
  textScrollView7 = [(AXSSImageDescriptionViewController *)self textScrollView];
  trailingAnchor = [textScrollView7 trailingAnchor];
  textBackgroundView6 = [(AXSSImageDescriptionViewController *)self textBackgroundView];
  safeAreaLayoutGuide5 = [textBackgroundView6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide5 trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v90[5] = v52;
  textScrollView8 = [(AXSSImageDescriptionViewController *)self textScrollView];
  bottomAnchor6 = [textScrollView8 bottomAnchor];
  view5 = [(AXSSImageDescriptionViewController *)self view];
  safeAreaLayoutGuide6 = [view5 safeAreaLayoutGuide];
  bottomAnchor7 = [safeAreaLayoutGuide6 bottomAnchor];
  v33 = [bottomAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7 constant:-16.0];
  v90[6] = v33;
  textView2 = [(AXSSImageDescriptionViewController *)self textView];
  widthAnchor = [textView2 widthAnchor];
  textScrollView9 = [(AXSSImageDescriptionViewController *)self textScrollView];
  widthAnchor2 = [textScrollView9 widthAnchor];
  v38 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v90[7] = v38;
  textScrollViewBottomConstraint2 = [(AXSSImageDescriptionViewController *)self textScrollViewBottomConstraint];
  v90[8] = textScrollViewBottomConstraint2;
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
  view6 = [(AXSSImageDescriptionViewController *)self view];
  [view6 layoutIfNeeded];

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_scrollTextViewCaretToVisibleRegion
{
  textView = [(AXSSImageDescriptionViewController *)self textView];
  textView2 = [(AXSSImageDescriptionViewController *)self textView];
  selectedTextRange = [textView2 selectedTextRange];
  start = [selectedTextRange start];
  [textView caretRectForPosition:start];
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
    textScrollView = [(AXSSImageDescriptionViewController *)self textScrollView];
    textView3 = [(AXSSImageDescriptionViewController *)self textView];
    [textScrollView convertRect:textView3 fromView:{v8, v10, v12, v14}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    textScrollView2 = [(AXSSImageDescriptionViewController *)self textScrollView];
    [textScrollView2 scrollRectToVisible:0 animated:{v18, v20, v22, v24}];
  }
}

- (AXSSImageDescriptionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end