@interface SLComposeServiceViewController
+ (id)_imageAttachmentLoadDownsamplePreviewQueue;
- (BOOL)_areAttachmentsReady;
- (CGRect)sheetFrameForViewController:(id)a3;
- (CGRect)sheetFrameForViewController:(id)a3 topSpaceProportion:(double)a4 topSpaceOffset:(double)a5;
- (CGSize)_intrinsicSheetSize;
- (NSString)contentText;
- (SLComposeServiceViewController)initWithCoder:(id)a3;
- (SLComposeServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SLComposeServiceViewController)initWithServiceIconImage:(id)a3;
- (UITextView)textView;
- (UIView)loadPreviewView;
- (UIView)sheetView;
- (double)_sheetMinBottomMarginForVerticalSizeClass;
- (id)URLAttachments;
- (id)previewImageSource;
- (int64_t)_previewDisplayFormat;
- (void)_addAttachment:(id)a3;
- (void)_adjustContentViewIntrinsicHeightForPreviewView;
- (void)_animateCardSendFinished;
- (void)_animateSheetCancelFinished;
- (void)_animateSheetPresentationFinished;
- (void)_animateVignetteMaskFromSheetFrame:(CGRect)a3 toSheetFrame:(CGRect)a4 duration:(double)a5;
- (void)_convertExtensionItemProvidersToAttachments:(id)a3;
- (void)_downsampleImageAttachment:(id)a3;
- (void)_imageAttachmentDataDidLoad:(id)a3;
- (void)_loadImageAttachmentData:(id)a3;
- (void)_loadPreviewView;
- (void)_performCommonInitialization:(id)a3;
- (void)_positionSheetViewAnimatedForViewController:(id)a3;
- (void)_positionSheetViewForViewController:(id)a3;
- (void)_positionVignetteForSheetFrame:(CGRect)a3;
- (void)_presentSheet;
- (void)_presentedViewControllerContentSizeDidChange;
- (void)_setViewControllerForTrackingSheetSize:(id)a3;
- (void)_updateContentViewWithCharactersRemaining;
- (void)_willAppearInRemoteViewController;
- (void)animateCardSendOrientation:(int64_t)a3;
- (void)animateSheetCancelWithDuration:(double)a3;
- (void)animateSheetPresentationWithDuration:(double)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didSelectCancel;
- (void)didSelectPost;
- (void)hideKeyboardAnimated:(BOOL)a3;
- (void)hideKeyboardWithAnimationTime:(double)a3;
- (void)keyboardDidChange:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)networkActivityIndicatorNotification:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)popConfigurationViewController;
- (void)positionSheetView;
- (void)postButtonTapped:(id)a3;
- (void)pushConfigurationViewController:(UIViewController *)viewController;
- (void)reloadConfigurationItems;
- (void)send;
- (void)setAutoCompletionViewController:(UIViewController *)autoCompletionViewController;
- (void)setCharactersRemaining:(NSNumber *)charactersRemaining;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPostButtonTitle:(id)a3;
- (void)setServiceIconImage:(id)a3;
- (void)setSheetFrame:(CGRect)a3;
- (void)setTitle:(id)a3;
- (void)shouldShowNetworkActivityIndicator:(BOOL)a3;
- (void)showKeyboardAnimated:(BOOL)a3;
- (void)showKeyboardWithAnimationTime:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateKeyboardSize;
- (void)updateSheetForVerticalSizeClass;
- (void)validateContent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SLComposeServiceViewController

- (void)_performCommonInitialization:(id)a3
{
  objc_storeStrong(&self->_serviceIconImage, a3);
  v5 = a3;
  self->_unfulfilledItemProviderRepresentations = 0;
  v6 = objc_opt_new();
  attachments = self->_attachments;
  self->_attachments = v6;

  v8 = objc_opt_new();
  constraints = self->_constraints;
  self->_constraints = v8;

  self->_triggerPresentationAnimationOnKeyboard = 1;
  self->_maxImageAttachmentSize = 2048000;
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x1E69DDF68] object:0];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel_networkActivityIndicatorNotification_ name:SLShowNetworkActivityIndicatorNotification object:0];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel_networkActivityIndicatorNotification_ name:SLHideNetworkActivityIndicatorNotification object:0];

  [(SLComposeServiceViewController *)self setShouldForceNonAnimatedTransition:1];
}

- (SLComposeServiceViewController)initWithServiceIconImage:(id)a3
{
  v5 = a3;
  _SLLog(v3, 6, @"SLComposeServiceViewController initWithServiceIconImage:");
  v9.receiver = self;
  v9.super_class = SLComposeServiceViewController;
  v6 = [(SLComposeServiceViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(SLComposeServiceViewController *)v6 _performCommonInitialization:v5];
  }

  return v7;
}

- (SLComposeServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a4;
  v8 = a3;
  _SLLog(v4, 7, @"SLComposeServiceViewController initWithNibName:bundle:");
  v11.receiver = self;
  v11.super_class = SLComposeServiceViewController;
  v9 = [(SLComposeServiceViewController *)&v11 initWithNibName:v8 bundle:v7];

  if (v9)
  {
    [(SLComposeServiceViewController *)v9 _performCommonInitialization:0];
  }

  return v9;
}

- (SLComposeServiceViewController)initWithCoder:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLComposeServiceViewController initWithCoder:");
  v8.receiver = self;
  v8.super_class = SLComposeServiceViewController;
  v6 = [(SLComposeServiceViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
    [(SLComposeServiceViewController *)v6 _performCommonInitialization:0];
  }

  return v6;
}

- (void)dealloc
{
  _SLLog(v2, 7, @"SLComposeServiceViewController dealloc %@");
  [(SLComposeServiceViewController *)self _setViewControllerForTrackingSheetSize:0, self];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v6 dealloc];
}

- (id)previewImageSource
{
  previewImageSource = self->_previewImageSource;
  if (!previewImageSource)
  {
    v4 = objc_alloc_init(SLSheetPreviewImageSource);
    v5 = self->_previewImageSource;
    self->_previewImageSource = v4;

    previewImageSource = self->_previewImageSource;
  }

  return previewImageSource;
}

- (void)_positionSheetViewForViewController:(id)a3
{
  v13 = a3;
  v5 = [(SLComposeServiceViewController *)self preventSheetPositionChanges];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v12 = v6;
  _SLLog(v3, 7, @"SLComposeServiceViewController _positionSheetViewForViewController: %@ preventSheetPositionChanges %@");
  if (![(SLComposeServiceViewController *)self preventSheetPositionChanges:v13])
  {
    [(SLComposeServiceViewController *)self sheetFrameForViewController:v13];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    v11 = NSStringFromCGRect(v15);
    _SLLog(v3, 7, @"SLComposeServiceViewController _positionSheetViewForViewController new sheet frame is %@");

    [(SLComposeServiceViewController *)self setSheetFrame:x, y, width, height, v11];
    [(SLComposeServiceViewController *)self _positionVignetteForSheetFrame:x, y, width, height];
  }
}

- (void)positionSheetView
{
  _SLLog(v2, 7, @"SLComposeServiceViewController positionSheetView");
  v5 = [(SLComposeServiceViewController *)self navigationController];
  v4 = [v5 topViewController];
  [(SLComposeServiceViewController *)self _positionSheetViewForViewController:v4];
}

- (void)updateSheetForVerticalSizeClass
{
  v4 = MEMORY[0x1E696B098];
  v5 = [(SLComposeServiceViewController *)self contentView];
  [v5 intrinsicContentSize];
  v7 = [v4 valueWithCGSize:?];
  _SLLog(v2, 7, @"SLComposeServiceViewController updateSheetForVerticalSizeClass self.contentView.intrinsicContentSize %@");

  v8 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v6 = [(SLComposeServiceViewController *)self contentView];
  [v6 intrinsicContentSize];
  [v8 updateContentViewSize:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v21 traitCollectionDidChange:v5];
  v6 = [(SLComposeServiceViewController *)self traitCollection];
  v7 = [v6 verticalSizeClass];
  v8 = [v5 verticalSizeClass];

  if (v7 != v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(SLComposeServiceViewController *)self traitCollection];
    v11 = [v9 numberWithInteger:{objc_msgSend(v10, "verticalSizeClass")}];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "verticalSizeClass")}];
    _SLLog(v3, 7, @"SLComposeServiceViewController traitCollectionDidChange verticalSizeClass changed to %@ from %@");

    if (self->_waitingForAnimateAlongsideTransitionBlock)
    {
      v19 = [MEMORY[0x1E696AD98] numberWithBool:{1, v11, v20}];
      _SLLog(v3, 7, @"SLComposeServiceViewController traitCollectionDidChange skipping work because _waitingForAnimateAlongsideTransitionBlock is %@");
    }

    else
    {
      _SLLog(v3, 7, @"SLComposeServiceViewController traitCollectionDidChange calling updateSheetForVerticalSizeClass");
      [(SLComposeServiceViewController *)self updateSheetForVerticalSizeClass:v11];
    }
  }

  v12 = [(SLComposeServiceViewController *)self traitCollection];
  v13 = [v12 preferredContentSizeCategory];
  v14 = [v5 preferredContentSizeCategory];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [(SLComposeServiceViewController *)self contentView];
    v17 = [v16 accessoryView];

    if (v17)
    {
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [v17 setFont:v18];
    }
  }
}

- (void)keyboardWillShow:(id)a3
{
  _SLLog(v3, 7, @"keyboardWillShow");
  if (self->_triggerPresentationAnimationOnKeyboard)
  {

    [(SLComposeServiceViewController *)self _presentSheet];
  }
}

- (void)showKeyboardAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(SLComposeServiceViewController *)self suppressKeyboard])
  {
    v5 = [(SLComposeServiceViewController *)self contentView];
    v6 = [v5 textView];
    [v6 becomeFirstResponder];

    if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0)
    {

      MEMORY[0x1EEE4DE18](v3);
    }
  }
}

- (void)hideKeyboardAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SLComposeServiceViewController *)self contentView];
  v5 = [v4 textView];
  [v5 resignFirstResponder];

  if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0)
  {

    MEMORY[0x1EEE4DE28](v3);
  }
}

- (void)showKeyboardWithAnimationTime:(double)a3
{
  if (![(SLComposeServiceViewController *)self suppressKeyboard])
  {
    v5 = [(SLComposeServiceViewController *)self contentView];
    [v5 becomeFirstResponder];

    if (UIKeyboardIsAutomaticAppearanceEnabled())
    {
      v6.n128_f64[0] = a3;

      MEMORY[0x1EEE4DF40](0, v6);
    }

    else
    {
      v6.n128_f64[0] = a3;

      MEMORY[0x1EEE4DE20](0, v6);
    }
  }
}

- (void)hideKeyboardWithAnimationTime:(double)a3
{
  v4 = [(SLComposeServiceViewController *)self contentView];
  [v4 resignFirstResponder];

  if (UIKeyboardIsAutomaticAppearanceEnabled())
  {
    v5.n128_f64[0] = a3;

    MEMORY[0x1EEE4DF60](0, v5);
  }

  else
  {
    v5.n128_f64[0] = a3;

    MEMORY[0x1EEE4DE30](0, v5);
  }
}

- (void)setCharactersRemaining:(NSNumber *)charactersRemaining
{
  objc_storeStrong(&self->_charactersRemaining, charactersRemaining);
  v4 = [(SLComposeServiceViewController *)self contentView];

  if (v4)
  {

    [(SLComposeServiceViewController *)self _updateContentViewWithCharactersRemaining];
  }
}

- (void)_updateContentViewWithCharactersRemaining
{
  charactersRemaining = self->_charactersRemaining;
  v4 = [(SLComposeServiceViewController *)self contentView];
  v15 = v4;
  if (charactersRemaining)
  {
    v5 = [v4 accessoryView];

    v15 = v5;
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x1E69DCC10]);
      v15 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [v15 setFont:v7];

      v8 = [MEMORY[0x1E69DC888] clearColor];
      [v15 setBackgroundColor:v8];

      [v15 setAlpha:0.699999988];
    }

    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v10 = [v9 stringFromNumber:self->_charactersRemaining];
    [v15 setText:v10];

    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v15 setTextColor:v11];

    v12 = [(SLComposeServiceViewController *)self contentView];
    v13 = [v12 accessoryView];

    if (!v13)
    {
      v14 = [(SLComposeServiceViewController *)self contentView];
      [v14 setAccessoryView:v15];
    }
  }

  else
  {
    [v4 setAccessoryView:0];
  }
}

- (UITextView)textView
{
  v2 = [(SLComposeServiceViewController *)self contentView];
  v3 = [v2 textView];

  return v3;
}

- (NSString)contentText
{
  v2 = [(SLComposeServiceViewController *)self textView];
  v3 = [v2 text];

  return v3;
}

- (void)setPlaceholder:(NSString *)placeholder
{
  objc_storeStrong(&self->_placeholder, placeholder);
  v5 = placeholder;
  v6 = [(SLComposeServiceViewController *)self contentView];
  v7 = [v6 placeholderLabel];
  [v7 setText:v5];

  v8 = [(SLComposeServiceViewController *)self contentView];
  v9 = [v8 placeholderLabel];
  [v9 sizeToFit];

  v10 = [(SLComposeServiceViewController *)self contentView];
  [v10 setNeedsLayout];
}

- (void)_addAttachment:(id)a3
{
  v5 = a3;
  _SLLog(v3, 6, @"SLComposeServiceViewController _addAttachment: %@");
  [(NSMutableArray *)self->_attachments addObject:v5, v5];
  if (self->_maxImageAttachmentSize && ![v5 type])
  {
    [v5 setDownsampleStatus:1];
    [(SLComposeServiceViewController *)self _loadImageAttachmentData:v5];
  }

  [(SLComposeServiceViewController *)self validateContent];
}

- (BOOL)_areAttachmentsReady
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_unfulfilledItemProviderRepresentations)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(SLComposeServiceViewController *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 downsampleStatus] == 2 || objc_msgSend(v8, "downsampleStatus") == 1)
        {
          v2 = 0;
          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v2 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v2 = 1;
  }

LABEL_15:

  return v2;
}

- (void)validateContent
{
  v3 = [(SLComposeServiceViewController *)self contentView];
  v4 = [v3 textView];
  v5 = [v4 text];
  v6 = [v5 length] != 0;
  v7 = [(SLComposeServiceViewController *)self contentView];
  v8 = [v7 placeholderLabel];
  [v8 setHidden:v6];

  if ([(SLComposeServiceViewController *)self isContentValid])
  {
    v9 = [(SLComposeServiceViewController *)self _areAttachmentsReady];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v10 setPostButtonEnabled:v9];
}

- (id)URLAttachments
{
  v2 = [(SLComposeServiceViewController *)self attachments];
  v3 = [v2 objectsPassingTest:&__block_literal_global_6];

  return v3;
}

BOOL __48__SLComposeServiceViewController_URLAttachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 4 || objc_msgSend(v2, "type") == 5 || objc_msgSend(v2, "type") == 6 || objc_msgSend(v2, "type") == 7;

  return v3;
}

+ (id)_imageAttachmentLoadDownsamplePreviewQueue
{
  if (_imageAttachmentLoadDownsamplePreviewQueue_onceToken != -1)
  {
    +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
  }

  v3 = _imageAttachmentLoadDownsamplePreviewQueue__queue;

  return v3;
}

void __76__SLComposeServiceViewController__imageAttachmentLoadDownsamplePreviewQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.social.imageAttachmentLoadDownsamplePreview", v2);
  v1 = _imageAttachmentLoadDownsamplePreviewQueue__queue;
  _imageAttachmentLoadDownsamplePreviewQueue__queue = v0;
}

- (void)_loadImageAttachmentData:(id)a3
{
  v5 = a3;
  if (([v5 startedPayloadLoad] & 1) == 0)
  {
    [v5 setStartedPayloadLoad:1];
    _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@");
    objc_initWeak(&location, self);
    objc_initWeak(&from, v5);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke;
    v27[3] = &unk_1E81763B8;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    v6 = MEMORY[0x1C6917BF0](v27);
    v7 = [v5 identifier];
    v8 = [v5 itemProvider];
    v9 = [v5 typeIdentifier];
    v10 = [v5 payload];

    if (v10)
    {
      v6[2](v6, 0, 0);
    }

    else
    {
      v11 = [v5 payloadSourceFileURL];

      if (v11)
      {
        v16 = [v5 payloadSourceFileURL];
        _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ loading from %@");

        v12 = [v5 payloadSourceFileURL];
        v13 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_3;
        block[3] = &unk_1E8175928;
        v23 = v12;
        v24 = v7;
        v25 = v9;
        v26 = v6;
        v14 = v12;
        dispatch_async(v13, block);
      }

      else
      {
        _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ loading from itemProvider for typeIdentifier %@");
        v15 = [SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue:v7];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_4;
        v17[3] = &unk_1E8175928;
        v18 = v8;
        v19 = v9;
        v20 = v7;
        v21 = v6;
        dispatch_async(v15, v17);

        v14 = v18;
      }
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_2;
  v9[3] = &unk_1E8176390;
  objc_copyWeak(&v12, (a1 + 32));
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v2)
  {
    if (*(a1 + 32))
    {
      [v2 setPayload:?];
    }

    [WeakRetained _imageAttachmentDataDidLoad:v2];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_semaphore_signal(v3);
  }
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3 options:1 error:&v8];
  v5 = v8;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
  _SLLog(v1, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ typeIdentifier %@ got data length %@ error%@");

  (*(*(a1 + 56) + 16))(*(a1 + 56), v4, 0, v6);
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_4(id *a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_5;
  v6[3] = &unk_1E8176430;
  v7 = a1[6];
  v8 = a1[5];
  v11 = a1[7];
  v9 = v2;
  v10 = a1[4];
  v5 = v2;
  [v3 loadItemForTypeIdentifier:v4 options:0 completionHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = MEMORY[0x1E696AD98];
  v10 = a3;
  v16 = [v9 numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  v17 = v10;
  _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ typeIdentifier %@ got data length %@ error%@");

  if (v6)
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), v6, *(a1 + 48), v11);
  }

  else
  {
    v12 = dispatch_semaphore_create(0);
    v13 = [SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue:v7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_6;
    block[3] = &unk_1E8176408;
    v19 = *(a1 + 56);
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v14 = *(a1 + 64);
    v22 = v12;
    v23 = v14;
    v15 = v12;
    dispatch_async(v13, block);

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_7;
  v9[3] = &unk_1E81763E0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [v2 loadItemForTypeIdentifier:v3 options:0 completionHandler:v9];
  dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
}

void __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_7(uint64_t a1, void *a2)
{
  image = a2;
  _SLLog(v2, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ typeIdentifier %@ got image %@ error%@");
  if (image)
  {
    v5 = UIImageJPEGRepresentation(image, 0.8);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v5, *(a1 + 48), v4);
}

- (void)_imageAttachmentDataDidLoad:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"SLComposeServiceViewController _imageAttachmentDataDidLoad: %@");
  if ([v5 downsampleStatus] == 1)
  {
    [(SLComposeServiceViewController *)self _downsampleImageAttachment:v5];
  }

  if ([v5 needsAnotherPreviewGeneration])
  {
    v6 = [(SLComposeServiceViewController *)self contentView];
    v7 = [v6 previewView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(SLComposeServiceViewController *)self contentView];
      v10 = [v9 previewView];
      objc_initWeak(&location, v10);

      v11 = [(SLComposeServiceViewController *)self previewImageSource];
      v12 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__SLComposeServiceViewController__imageAttachmentDataDidLoad___block_invoke;
      v13[3] = &unk_1E8176480;
      objc_copyWeak(&v15, &location);
      v14 = v5;
      [v11 previewImageForAttachment:v14 queueToBlockWhileDownsampling:v12 resultBlock:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  [(SLComposeServiceViewController *)self validateContent];
}

void __62__SLComposeServiceViewController__imageAttachmentDataDidLoad___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__SLComposeServiceViewController__imageAttachmentDataDidLoad___block_invoke_2;
  v7[3] = &unk_1E8176458;
  objc_copyWeak(v10, (a1 + 40));
  v8 = v5;
  v9 = *(a1 + 32);
  v10[1] = *&a3;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(v10);
}

uint64_t __62__SLComposeServiceViewController__imageAttachmentDataDidLoad___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v6 = WeakRetained;
    if (v3)
    {
      [WeakRetained setPreviewImage:v3 forAttachment:*(a1 + 40)];
    }

    else
    {
      v4 = +[SLSheetImagePreviewView fallbackPreviewImage];
      [v6 setPreviewImage:v4 forAttachment:*(a1 + 40)];
    }

    if (*(a1 + 56) > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setVideoDuration:*(a1 + 56)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

- (void)_downsampleImageAttachment:(id)a3
{
  v5 = a3;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[SLComposeServiceViewController maxImageAttachmentSize](self, "maxImageAttachmentSize")}];
  _SLLog(v3, 6, @"SLComposeServiceViewController _downsampleImageAttachment: %@ starting downsampling of attached image to max size %@");

  [v5 setDownsampleStatus:{2, v5, v11}];
  objc_initWeak(&location, self);
  v6 = [v5 payload];
  v7 = [(SLComposeServiceViewController *)self maxImageAttachmentSize];
  v8 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke;
  block[3] = &unk_1E81764F8;
  v15[1] = v7;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  objc_copyWeak(v15, &location);
  dispatch_async(v8, block);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke_2;
  v6[3] = &unk_1E81764D0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  v5 = v2;
  v8 = v5;
  [SLImageDownsampling downsampleImageData:v4 toMaxByteSize:v3 resultsHandler:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v9);
}

void __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke_3;
  v5[3] = &unk_1E81764A8;
  v6 = a1[4];
  v7 = v3;
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke_3(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "length")}];
  _SLLog(v1, 6, @"SLComposeServiceViewController _downsampleImageAttachment: %@ downsampling complete, data size is %@");

  [*(a1 + 32) setPayload:{*(a1 + 40), v3, v4}];
  [*(a1 + 32) setDownsampleStatus:3];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [WeakRetained validateContent];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_loadPreviewView
{
  _SLLog(v2, 6, @"SLComposeServiceViewController:_loadPreviewView");
  v4 = [(SLComposeServiceViewController *)self loadPreviewView];
  v8 = v4;
  if (v4)
  {
    v7 = v4;
    _SLLog(v2, 6, @"SLComposeServiceViewController:_loadPreviewView preview created: %@");
    v5 = [(SLComposeServiceViewController *)self contentView];
    [v5 setPreviewView:v8];

    v6 = [(SLComposeServiceViewController *)self view];
    [v6 setNeedsUpdateConstraints];

    [(SLComposeServiceViewController *)self _adjustContentViewIntrinsicHeightForPreviewView];
  }

  else
  {
    _SLLog(v2, 6, @"Preview view creation failed or not needed");
  }
}

- (void)_adjustContentViewIntrinsicHeightForPreviewView
{
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1)
    {
      return;
    }

    v5 = [(SLComposeServiceViewController *)self contentView];
    v6 = [v5 previewView];
    [v6 intrinsicContentSize];
    v8 = v7;

    v9 = v8 + -90.0 + 120.0;
    if (v9 == 120.0)
    {
      return;
    }

    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v12 = v11;

    v13 = round(v9 + v9) * 0.5;
    v14 = round(v9);
    if (v12 <= 1.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = [(SLComposeServiceViewController *)self contentView];
    [v16 setIntrinsicSize:2 forVerticalSizeClass:{*MEMORY[0x1E69DE788], v15}];

    v18 = [(SLComposeServiceViewController *)self sheetRootViewController];
    v17 = [(SLComposeServiceViewController *)self contentView];
    [v17 intrinsicContentSize];
    [v18 updateContentViewSize:?];
  }
}

- (int64_t)_previewDisplayFormat
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SLComposeServiceViewController *)self attachments];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) type];
        if (v8 > 9)
        {
          v9 = 1;
        }

        else
        {
          v9 = qword_1C23F44C8[v8];
        }

        if (v5 <= v9)
        {
          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)loadPreviewView
{
  v3 = self;
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = [(SLComposeServiceViewController *)self attachments];
  v5 = [v4 count];

  if (!v5)
  {
    _SLLog(v2, 6, @"SLComposeServiceViewController - Cannot create preview view with no attachments");
    v12 = 0;
    goto LABEL_55;
  }

  v6 = [(SLComposeServiceViewController *)v3 _previewDisplayFormat];
  v7 = [(SLComposeServiceViewController *)v3 attachments];
  v8 = v7;
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v11 = [v7 firstObjectPassingTest:&__block_literal_global_142];

        if (v11)
        {
          v17 = [v11 previewImage];
          if (v17)
          {
          }

          else if ([v11 itemProviderPreviewType] != 1)
          {
            v18 = [(SLComposeServiceViewController *)v3 attachments];
            v19 = [v18 firstObjectPassingTest:&__block_literal_global_144];

            v11 = v19;
            if (!v19)
            {
              goto LABEL_36;
            }
          }

LABEL_33:
          v13 = SLSheetBevelledImageView;
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (v6 != 6)
      {
LABEL_21:
        v11 = [v7 objectAtIndex:0];

        if (!v11)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      v11 = [v7 firstObjectPassingTest:&__block_literal_global_146];

      if (!v11)
      {
LABEL_36:
        v40 = 0;
        goto LABEL_37;
      }

      v13 = SLSheetPreComposedAppIconImageView;
LABEL_34:
      v10 = objc_alloc_init(v13);
      goto LABEL_35;
    }

    v11 = [v7 firstObjectPassingTest:&__block_literal_global_131];

    if (!v11)
    {
      goto LABEL_36;
    }

    v14 = [v11 previewImage];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
    }

    else
    {
      if ([v11 itemProviderPreviewType] == 1)
      {
        v16 = 0;
        goto LABEL_20;
      }

      _SLLog(v2, 7, @"SLComposeServiceViewController looking for image attachment to act as preview for SLAttachmentDisplayMusicAlbum");
      v37 = [(SLComposeServiceViewController *)v3 attachments];
      v15 = [v37 firstObjectPassingTest:&__block_literal_global_136];

      v16 = v15 == 0;
      if (v15)
      {
        _SLLog(v2, 7, @"SLComposeServiceViewController did find image attachment %@");
        v38 = v15;

        v11 = v38;
      }
    }

LABEL_20:
    v10 = objc_alloc_init(SLSheetBevelledImageView);
    [(SLSheetBevelledImageView *)v10 setNeedsURLPlaceholderImage:v16];
LABEL_35:
    v40 = 0;
    goto LABEL_38;
  }

  if (v6 == 1)
  {
    v11 = [v7 firstObjectPassingTest:&__block_literal_global_128];

    if (!v11)
    {
      goto LABEL_36;
    }

    v13 = SLSheetURLPreviewView;
    goto LABEL_34;
  }

  if (v6 == 2)
  {
    v11 = [v7 firstObjectPassingTest:&__block_literal_global_125];

    if (v11)
    {
      v13 = SLSheetVideoPreviewView;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v6 != 3)
  {
    goto LABEL_21;
  }

  v9 = [v7 objectsPassingTest:&__block_literal_global_122];

  v40 = v9;
  if (![v9 count])
  {
    v11 = 0;
LABEL_37:
    v10 = 0;
    goto LABEL_38;
  }

  v10 = [[SLSheetPhotoAlbumImageView alloc] initWithPrincipalAttachments:v9];
  v11 = 0;
LABEL_38:
  _SLLog(v2, 6, @"SLComposeServiceViewController - preview attachment is %@");
  v39 = v10;
  _SLLog(v2, 7, @"SLComposeServiceViewController - previewView %@");
  if (v11)
  {
    v56[0] = v11;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:{1, v10}];
    [(SLSheetImagePreviewView *)v10 setPrincipalAttachments:v20];
  }

  v41 = v11;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(SLSheetImagePreviewView *)v10 principalAttachments];
  v21 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v52;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v51 + 1) + 8 * i);
        v26 = [v25 previewImage];

        if (v26)
        {
          v27 = [v25 previewImage];
          [(SLSheetImagePreviewView *)v10 setPreviewImage:v27 forAttachment:v25];
        }

        else
        {
          _SLLog(v2, 6, @"SLComposeServiceViewController - attachment does not have a preview");
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_9;
          v47[3] = &unk_1E8176570;
          v28 = v10;
          v48 = v28;
          v49 = v25;
          v50 = v3;
          v29 = MEMORY[0x1C6917BF0](v47);
          [(SLSheetBevelledImageView *)v28 ensurePlaceholderPreviewImage];
          v30 = [v25 itemProvider];
          if (!v30 || (v31 = v30, v32 = v3, v33 = [v25 itemProviderPreviewType], v31, v34 = v33 == 2, v3 = v32, v34))
          {
            v29[2](v29);
          }

          else
          {
            _SLLog(v2, 7, @"SLComposeServiceViewController trying to load itemProvider previewImage");
            v35 = [v25 itemProvider];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_13;
            v43[3] = &unk_1E8176598;
            v44 = v28;
            v45 = v25;
            v46 = v29;
            [v35 loadPreviewImageWithOptions:0 completionHandler:v43];

            v3 = v32;
          }

          v27 = v48;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v22);
  }

  v12 = v10;
LABEL_55:

  return v12;
}

BOOL __49__SLComposeServiceViewController_loadPreviewView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ![v2 type] || objc_msgSend(v2, "type") == 2 || objc_msgSend(v2, "type") == 8 || objc_msgSend(v2, "type") == 9;

  return v3;
}

BOOL __49__SLComposeServiceViewController_loadPreviewView__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 8 || objc_msgSend(v2, "type") == 9;

  return v3;
}

BOOL __49__SLComposeServiceViewController_loadPreviewView__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = [v2 type] == 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

BOOL __49__SLComposeServiceViewController_loadPreviewView__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = [v2 type] == 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __49__SLComposeServiceViewController_loadPreviewView__block_invoke_9(uint64_t a1)
{
  if (([*(a1 + 32) generatePreviewImageFromAttachments] & 1) == 0)
  {
    if (![*(a1 + 40) type] || objc_msgSend(*(a1 + 40), "type") == 2 || objc_msgSend(*(a1 + 40), "type") == 8 || objc_msgSend(*(a1 + 40), "type") == 9)
    {
      _SLLog(v1, 6, @"SLComposeServiceViewController - creating preview image for image or video attachment");
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_10;
      block[3] = &unk_1E8176570;
      v6 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v7 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = +[SLSheetImagePreviewView fallbackPreviewImage];
      [v3 setPreviewImage:v4 forAttachment:*(a1 + 40)];
    }
  }
}

void __49__SLComposeServiceViewController_loadPreviewView__block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) previewImageSource];
  v3 = *(a1 + 40);
  v4 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_11;
  v5[3] = &unk_1E8176548;
  v6 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v7 = *(a1 + 48);
  [v2 previewImageForAttachment:v3 queueToBlockWhileDownsampling:v4 resultBlock:v5];
}

void __49__SLComposeServiceViewController_loadPreviewView__block_invoke_11(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_12;
  block[3] = &unk_1E8176520;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__SLComposeServiceViewController_loadPreviewView__block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 56) setPreviewImage:v2 forAttachment:*(a1 + 40)];
  }

  else
  {
    v3 = [*(a1 + 40) payload];
    if (v3)
    {
    }

    else if (![*(a1 + 40) type])
    {
      [*(a1 + 40) setNeedsAnotherPreviewGeneration:1];
      [*(a1 + 48) _loadImageAttachmentData:*(a1 + 40)];
      goto LABEL_7;
    }

    v4 = *(a1 + 56);
    v5 = +[SLSheetImagePreviewView fallbackPreviewImage];
    [v4 setPreviewImage:v5 forAttachment:*(a1 + 40)];
  }

LABEL_7:
  if (*(a1 + 64) > 0.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);

    [v6 setVideoDuration:v7];
  }
}

void __49__SLComposeServiceViewController_loadPreviewView__block_invoke_13(uint64_t a1, void *a2)
{
  v8 = a2;
  _SLLog(v2, 7, @"SLComposeServiceViewController did load itemProvider previewImage %@ error %{public}@");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_14;
  block[3] = &unk_1E8175928;
  v10 = v8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__SLComposeServiceViewController_loadPreviewView__block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(a1 + 40) setPreviewImage:v1 forAttachment:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

- (void)didSelectPost
{
  if (self->_hostProxy)
  {
    hostProxy = self->_hostProxy;

    [(SLSheetViewHostProtocol *)hostProxy userDidPost];
  }

  else
  {
    v4 = [(SLComposeServiceViewController *)self extensionContext];
    [v4 completeRequestReturningItems:0 completionHandler:0];
  }
}

- (void)didSelectCancel
{
  if (self->_hostProxy)
  {
    hostProxy = self->_hostProxy;

    [(SLSheetViewHostProtocol *)hostProxy userDidCancel];
  }

  else
  {
    v5 = [(SLComposeServiceViewController *)self extensionContext];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [v5 cancelRequestWithError:v4];
  }
}

- (void)send
{
  if (!self->_inPostButtonTapped)
  {
    [(SLComposeServiceViewController *)self postButtonTapped:0];
  }
}

- (void)reloadConfigurationItems
{
  if (self->_didFirstSheetActionLoad)
  {
    v6 = [(SLComposeServiceViewController *)self configurationItems];
    if (![v6 count])
    {
      v4 = [(SLComposeServiceViewController *)self sheetActions];

      v6 = v4;
    }

    v5 = [(SLComposeServiceViewController *)self sheetRootViewController];
    [v5 setConfigurationItems:v6];

    [(SLComposeServiceViewController *)self positionSheetView];
  }
}

- (void)pushConfigurationViewController:(UIViewController *)viewController
{
  v4 = viewController;
  [(UIViewController *)v4 setExtendedLayoutIncludesOpaqueBars:1];
  [(UIViewController *)v4 setEdgesForExtendedLayout:0];
  v5 = [(SLComposeServiceViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];

  [(SLComposeServiceViewController *)self hideKeyboardAnimated:1];
}

- (void)_setViewControllerForTrackingSheetSize:(id)a3
{
  v4 = a3;
  [(UIViewController *)self->_viewControllerForTrackingSheetSize removeObserver:self forKeyPath:@"preferredContentSize"];
  [(UIViewController *)v4 addObserver:self forKeyPath:@"preferredContentSize" options:1 context:0];
  viewControllerForTrackingSheetSize = self->_viewControllerForTrackingSheetSize;
  self->_viewControllerForTrackingSheetSize = v4;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  _SLLog(v5, 7, @"navigationController:willShowViewController:animated:");
  v8 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v9 = v8 != v7;

  self->_isPresentingActionViewController = v9;
  [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:v7];

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = a4;
  _SLLog(v5, 7, @"navigationController:didShowViewController:");
  v7 = [(SLComposeServiceViewController *)self sheetRootViewController];

  if (v7 == v8)
  {
    [(SLComposeServiceViewController *)self _setViewControllerForTrackingSheetSize:0];
    [(SLComposeServiceViewController *)self showKeyboardAnimated:1];
  }

  else
  {
    [(SLComposeServiceViewController *)self _setViewControllerForTrackingSheetSize:v8];
  }

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:0];
  [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:v8];
}

- (void)_presentedViewControllerContentSizeDidChange
{
  if (self->_isPresentingActionViewController)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v6 = v4;
  _SLLog(v2, 7, @"_presentedViewControllerContentSizeDidChange, isPresentingActionViewController=%@");
  if (self->_isPresentingActionViewController || self->_autoCompletionViewController && self->_autoCompletionViewControllerAffectsSheetSize)
  {
    v7 = [(SLComposeServiceViewController *)self navigationController];
    v5 = [v7 topViewController];
    [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:v5];
  }
}

- (void)_positionSheetViewAnimatedForViewController:(id)a3
{
  v5 = a3;
  _SLLog(v3, 7, @"_positionSheetViewAnimated");
  if (self->_hasPresentedSheet)
  {
    if (![(SLComposeServiceViewController *)self preventSheetPositionChanges])
    {
      v7 = MEMORY[0x1E69DD250];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __78__SLComposeServiceViewController__positionSheetViewAnimatedForViewController___block_invoke;
      v8[3] = &unk_1E81765C0;
      v8[4] = self;
      v9 = v5;
      v10 = 0x3FD999999999999ALL;
      [v7 animateWithDuration:2 delay:v8 options:0 animations:0.4 completion:0.0];

      goto LABEL_7;
    }

    v6 = @"Not doing _positionSheetViewAnimated, preventSheetPositionChanges == YES";
  }

  else
  {
    v6 = @"Not doing _positionSheetViewAnimated, _hasPresentedSheet == NO");
  }

  _SLLog(v3, 7, v6);
LABEL_7:
}

void __78__SLComposeServiceViewController__positionSheetViewAnimatedForViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sheetView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 32) _positionSheetViewForViewController:*(a1 + 40)];
  v11 = *(a1 + 32);
  v16 = [v11 sheetView];
  [v16 frame];
  [v11 _animateVignetteMaskFromSheetFrame:v4 toSheetFrame:v6 duration:{v8, v10, v12, v13, v14, v15, *(a1 + 48)}];
}

- (void)_animateVignetteMaskFromSheetFrame:(CGRect)a3 toSheetFrame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if (!CGRectEqualToRect(a3, a4))
  {
    v23.origin.x = v13;
    v23.origin.y = v12;
    v23.size.width = v11;
    v23.size.height = v10;
    v15 = NSStringFromCGRect(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v21 = NSStringFromCGRect(v24);
    _SLLog(v5, 7, @"_animateVignetteMaskFromSheetFrame from %@ to %@");

    vignetteLayer = self->_vignetteLayer;
    v25.origin.x = v13;
    v25.origin.y = v12;
    v25.size.width = v11;
    v25.size.height = v10;
    v26 = CGRectOffset(v25, 0.0, 0.0);
    v17 = v26.origin.x;
    v18 = v26.origin.y;
    v19 = v26.size.width;
    v20 = v26.size.height;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectOffset(v26, 0.0, 0.0);

    [(SLSheetMasklayer *)vignetteLayer animateSheetMaskFromOldSheetFrame:v17 toSheetFrame:v18 duration:v19, v20, v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];
  }
}

- (void)popConfigurationViewController
{
  v5 = [(SLComposeServiceViewController *)self navigationController];
  v3 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v4 = [v5 popToViewController:v3 animated:1];
}

- (void)setAutoCompletionViewController:(UIViewController *)autoCompletionViewController
{
  v5 = autoCompletionViewController;
  v6 = self->_autoCompletionViewController;
  if (v6 != v5)
  {
    if (v6)
    {
      if (self->_autoCompletionViewControllerAffectsSheetSize)
      {
        [(UIViewController *)v6 removeObserver:self forKeyPath:@"preferredContentSize"];
        v6 = self->_autoCompletionViewController;
      }

      self->_autoCompletionViewController = 0;

      self->_autoCompletionViewControllerAffectsSheetSize = 0;
      v7 = [(SLComposeServiceViewController *)self navigationController];
      v8 = [v7 topViewController];
      [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:v8];

      v9 = [(SLComposeServiceViewController *)self sheetRootViewController];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke;
      v22[3] = &unk_1E81757C8;
      v22[4] = self;
      [v9 dismissAutoCompletionViewControllerWithContentViewChangeBlock:v22];

      v10 = [(SLComposeServiceViewController *)self contentView];
      v11 = [v10 textView];
      [v11 becomeFirstResponder];
    }

    if (v5)
    {
      objc_storeStrong(&self->_autoCompletionViewController, autoCompletionViewController);
      v12 = [MEMORY[0x1E69DC938] currentDevice];
      if (objc_opt_respondsToSelector())
      {
        v13 = [MEMORY[0x1E69DC938] currentDevice];
        v14 = [v13 userInterfaceIdiom];

        if (v14 == 1)
        {
          self->_autoCompletionViewControllerAffectsSheetSize = 1;
          [(UIViewController *)v5 addObserver:self forKeyPath:@"preferredContentSize" options:1 context:0];
        }
      }

      else
      {
      }

      v15 = [(SLComposeServiceViewController *)self contentView];
      [v15 preflightAutoCompletionModeWithApparentHeight:46.0];

      v16 = [(SLComposeServiceViewController *)self sheetRootViewController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke_2;
      v21[3] = &unk_1E81757C8;
      v21[4] = self;
      [v16 presentAutoCompletionViewController:v5 apparentContentHeight:v21 contentViewChangeBlock:46.0];

      v17 = [(SLComposeServiceViewController *)self contentView];
      v18 = [v17 textView];
      [v18 becomeFirstResponder];

      v19 = [(SLComposeServiceViewController *)self navigationController];
      v20 = [v19 topViewController];
      [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:v20];
    }
  }
}

void __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 endAutoCompletionMode];
}

void __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) contentView];
  [v1 beginAutoCompletionMode];
}

- (void)setPostButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v5 setPostButtonTitle:v4];
}

- (void)setTitle:(id)a3
{
  v6.receiver = self;
  v6.super_class = SLComposeServiceViewController;
  v4 = a3;
  [(SLComposeServiceViewController *)&v6 setTitle:v4];
  v5 = [(SLComposeServiceViewController *)self sheetRootViewController:v6.receiver];
  [v5 setTitle:v4];
}

- (void)setServiceIconImage:(id)a3
{
  objc_storeStrong(&self->_serviceIconImage, a3);
  v5 = a3;
  v6 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v6 setServiceIconImage:v5];
}

- (void)cancelButtonTapped:(id)a3
{
  _SLLog(v3, 6, @"SLComposeServiceViewController:cancelButtonTapped");

  [(SLComposeServiceViewController *)self cancel];
}

- (void)postButtonTapped:(id)a3
{
  self->_inPostButtonTapped = 1;
  _SLLog(v3, 6, @"postButtonTapped");
  v5 = [(SLComposeServiceViewController *)self contentView];
  v6 = [v5 textView];
  [v6 setEditable:0];

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  -[SLComposeServiceViewController animateCardSendOrientation:](self, "animateCardSendOrientation:", [v7 statusBarOrientation]);

  [(SLComposeServiceViewController *)self hideKeyboardAnimated:1];
}

- (void)animateCardSendOrientation:(int64_t)a3
{
  _SLLog(v3, 6, @"SLComposeServiceViewController-animateSendCard");
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  v5 = [(SLComposeServiceViewController *)self sheetView];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SLSheetMasklayer *)self->_vignetteLayer position];
  v13 = v12;
  v15 = v14;
  v16 = v11 + v14 - v11;
  [(SLSheetMasklayer *)self->_vignetteLayer removeSheetCutout];
  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:0.0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__SLComposeServiceViewController_animateCardSendOrientation___block_invoke;
  v18[3] = &unk_1E81765E8;
  v18[6] = v13;
  *&v18[7] = v15;
  v18[8] = v13;
  *&v18[9] = v16;
  v18[4] = self;
  v18[5] = 0x3FD6666666666666;
  v18[10] = v7;
  *&v18[11] = -v11;
  v18[12] = v9;
  *&v18[13] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__SLComposeServiceViewController_animateCardSendOrientation___block_invoke_2;
  v17[3] = &unk_1E8175DB8;
  v17[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v18 options:v17 animations:0.35 completion:0.0];
}

void __61__SLComposeServiceViewController_animateCardSendOrientation___block_invoke(uint64_t a1)
{
  v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  v2 = *(a1 + 40);
  UIAnimationDragCoefficient();
  [v20 setDuration:v2 * v3];
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{*(a1 + 48), *(a1 + 56)}];
  [v20 setFromValue:v4];

  v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{*(a1 + 64), *(a1 + 72)}];
  [v20 setToValue:v5];

  v6 = *MEMORY[0x1E6979EB8];
  v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v20 setTimingFunction:v7];

  [*(*(a1 + 32) + 1040) addAnimation:v20 forKey:@"PresentationAnimationTranslation"];
  [*(*(a1 + 32) + 1040) setPosition:{*(a1 + 64), *(a1 + 72)}];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v9 = *(a1 + 40);
  UIAnimationDragCoefficient();
  [v8 setDuration:v9 * v10];
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [v8 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v8 setToValue:v13];

  v14 = [MEMORY[0x1E69793D0] functionWithName:v6];
  [v8 setTimingFunction:v14];

  [*(*(a1 + 32) + 1040) addAnimation:v8 forKey:@"PresentationAnimationOpacity"];
  [*(*(a1 + 32) + 1040) setPosition:{*(a1 + 64), *(a1 + 72)}];
  [*(*(a1 + 32) + 1040) setOpacity:0.0];
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = [*(a1 + 32) sheetView];
  [v19 setFrame:{v15, v16, v17, v18}];
}

uint64_t __61__SLComposeServiceViewController_animateCardSendOrientation___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1040) restoreSheetCutout];
  v2 = *(a1 + 32);

  return [v2 _animateCardSendFinished];
}

- (void)_animateCardSendFinished
{
  _SLLog(v2, 7, @"animateCardSend animation finished");
  [(SLComposeServiceViewController *)self didSelectPost];
  v4 = [(SLComposeServiceViewController *)self sheetView];
  [v4 setHidden:1];

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:0];
}

- (void)_presentSheet
{
  if (!self->_didCallPresentSheet)
  {
    self->_didCallPresentSheet = 1;
    self->_triggerPresentationAnimationOnKeyboard = 0;
    _SLLog(v2, 7, @"presentSheet - kicking off presentation of sheet");

    [(SLComposeServiceViewController *)self animateSheetPresentationWithDuration:0.25];
  }
}

- (void)animateSheetPresentationWithDuration:(double)a3
{
  _SLLog(v3, 7, @"animateSheetPresentationWithDuration:");
  [(SLComposeServiceViewController *)self positionSheetView];
  v6 = [(SLComposeServiceViewController *)self sheetView];
  [v6 frame];
  [(SLComposeServiceViewController *)self _positionVignetteForSheetFrame:?];

  v7 = [(SLComposeServiceViewController *)self sheetView];
  [v7 setHidden:0];

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  v8 = [(SLComposeServiceViewController *)self sheetView];
  v9 = [v8 layer];
  [v9 setAllowsGroupOpacity:0];

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v16.a = *MEMORY[0x1E695EFD0];
  *&v16.c = v10;
  *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v17, &v16, 1.26, 1.26);
  v11 = [(SLComposeServiceViewController *)self sheetView];
  v16 = v17;
  [v11 setTransform:&v16];

  v12 = [(SLComposeServiceViewController *)self sheetView];
  [v12 setAlpha:0.0];

  LODWORD(v13) = 1.0;
  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:v13];
  [(SLSheetMasklayer *)self->_vignetteLayer removeSheetCutout];
  [(SLSheetMasklayer *)self->_vignetteLayer removeAllAnimations];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke;
  v15[3] = &unk_1E8176610;
  *&v15[5] = a3;
  v15[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke_2;
  v14[3] = &unk_1E8175DB8;
  v14[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:327680 delay:v15 options:v14 animations:a3 completion:0.0];
}

void __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v3 = *(a1 + 40);
  UIAnimationDragCoefficient();
  [v2 setDuration:v3 * v4];
  v5 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v2 setFromValue:v5];

  LODWORD(v6) = 1.0;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [v2 setToValue:v7];

  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v2 setTimingFunction:v8];

  [*(*(a1 + 32) + 1040) addAnimation:v2 forKey:@"PresentationAnimationOpacity"];
  v9 = [*(a1 + 32) sheetView];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v12[0] = *MEMORY[0x1E695EFD0];
  v12[1] = v10;
  v12[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v9 setTransform:v12];

  v11 = [*(a1 + 32) sheetView];
  [v11 setAlpha:1.0];
}

uint64_t __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke_2(uint64_t a1, int a2)
{
  v4 = @"NO";
  if (a2)
  {
    v4 = @"YES";
  }

  v10 = v4;
  _SLLog(v2, 7, @"Presentation animation completion, finshed=%@");
  LODWORD(v5) = 1.0;
  [*(*(a1 + 32) + 1040) setOpacity:{v5, v10}];
  v6 = [*(a1 + 32) sheetView];
  v7 = [v6 layer];
  [v7 setAllowsGroupOpacity:1];

  [*(*(a1 + 32) + 1040) restoreSheetCutout];
  v8 = *(a1 + 32);

  return [v8 _animateSheetPresentationFinished];
}

- (void)_animateSheetPresentationFinished
{
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:0];
  self->_hasPresentedSheet = 1;
  [(SLComposeServiceViewController *)self positionSheetView];

  [(SLComposeServiceViewController *)self presentationAnimationDidFinish];
}

- (void)animateSheetCancelWithDuration:(double)a3
{
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  v5 = [(SLComposeServiceViewController *)self sheetView];
  v6 = [v5 layer];
  [v6 setAllowsGroupOpacity:0];

  [(SLSheetMasklayer *)self->_vignetteLayer removeSheetCutout];
  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:0.0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke;
  v8[3] = &unk_1E8176610;
  *&v8[5] = a3;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke_2;
  v7[3] = &unk_1E8175DB8;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v8 options:v7 animations:a3 completion:0.0];
}

void __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v3 = *(a1 + 40);
  UIAnimationDragCoefficient();
  [v2 setDuration:v3 * v4];
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v2 setFromValue:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v2 setToValue:v7];

  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v2 setTimingFunction:v8];

  [*(*(a1 + 32) + 1040) addAnimation:v2 forKey:@"CancelAnimationOpacity"];
  [*(a1 + 32) hideKeyboardAnimated:1];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v12.a = *MEMORY[0x1E695EFD0];
  *&v12.c = v9;
  *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v13, &v12, 0.84, 0.84);
  v10 = [*(a1 + 32) sheetView];
  v12 = v13;
  [v10 setTransform:&v12];

  v11 = [*(a1 + 32) sheetView];
  [v11 setAlpha:0.0];
}

uint64_t __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _animateSheetCancelFinished];
  v2 = *(*(a1 + 32) + 1040);

  return [v2 setOpacity:0.0];
}

- (void)_animateSheetCancelFinished
{
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:0];
  v3 = [(SLComposeServiceViewController *)self sheetView];
  [v3 setHidden:1];

  [(SLComposeServiceViewController *)self didSelectCancel];
}

- (void)keyboardDidChange:(id)a3
{
  _SLLog(v3, 6, @"SLComposeServiceViewController-keyboardDidChange");
  if (self->_hasPresentedSheet && ![(SLComposeServiceViewController *)self preventSheetPositionChanges])
  {

    [(SLComposeServiceViewController *)self updateKeyboardSize];
  }

  else if (self->_triggerPresentationAnimationOnKeyboard)
  {

    [(SLComposeServiceViewController *)self _presentSheet];
  }
}

- (void)updateKeyboardSize
{
  _SLLog(v2, 6, @"SLComposeServiceViewController-updateKeyboardSize");

  [(SLComposeServiceViewController *)self positionSheetView];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v11 isEqualToString:@"preferredContentSize"])
  {
    _SLLog(v6, 7, @"Received KVO for preferredContentSize on presented action VC");
    [(SLComposeServiceViewController *)self _presentedViewControllerContentSizeDidChange];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SLComposeServiceViewController;
    [(SLComposeServiceViewController *)&v14 observeValueForKeyPath:v11 ofObject:v12 change:v13 context:a6];
  }
}

- (void)setSheetFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  _SLLog(v3, 7, @"SLComposeServiceViewControlller setSheetFrame: %@");

  v9 = [(SLComposeServiceViewController *)self navigationController];
  v10 = [v9 view];
  [v10 setFrame:{x, y, width, height}];

  maskView = self->_maskView;

  [(UIView *)maskView setFrame:x, y, width, height];
}

- (void)_positionVignetteForSheetFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = NSStringFromCGRect(a3);
  _SLLog(v3, 7, @"SLComposeServiceViewControlller _positionVignetteForSheetFrame: %@");

  v9 = [(SLComposeServiceViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v12 = [(SLComposeServiceViewController *)self view];
  [v12 bounds];
  [(SLSheetMasklayer *)self->_vignetteLayer setFrame:0.0, 0.0, v11, height + v13 + 0.0];

  [(SLSheetMasklayer *)self->_vignetteLayer frame];
  v14 = NSStringFromCGRect(v27);
  [(SLSheetMasklayer *)self->_vignetteLayer bounds];
  v25 = NSStringFromCGRect(v28);
  _SLLog(v3, 7, @"SLComposeServiceViewControlller _positionVignetteForSheetFrame: _vignetteLayer.frame %@ _vignetteLayer.bounds %@");

  vignetteLayer = self->_vignetteLayer;
  [(SLSheetMasklayer *)vignetteLayer bounds:v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v30 = CGRectOffset(v29, 0.0, 0.0);

  [(SLSheetMasklayer *)vignetteLayer updateMaskWithBounds:v17 maskRect:v19, v21, v23, v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
}

- (UIView)sheetView
{
  v2 = [(SLComposeServiceViewController *)self navigationController];
  v3 = [v2 view];

  return v3;
}

- (CGSize)_intrinsicSheetSize
{
  v3 = [(SLComposeServiceViewController *)self contentView];
  [v3 invalidateIntrinsicContentSize];

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v5))
  {
    v6 = 70.0;
  }

  else
  {
    v6 = 44.0;
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v10 = [(SLComposeServiceViewController *)self contentView];
      [v10 intrinsicContentSize];
      v12 = v11;
      v13 = [(SLComposeServiceViewController *)self sheetRootViewController];
      v14 = [v13 configurationItems];
      v15 = v12 + [v14 count] * v6 + 44.0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = [(SLComposeServiceViewController *)self traitCollection];
  if ([v16 verticalSizeClass] == 2)
  {
    v17 = 44.0;
  }

  else
  {
    v17 = 32.0;
  }

  v10 = [(SLComposeServiceViewController *)self contentView];
  [v10 intrinsicContentSize];
  v19 = v18;
  v13 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v14 = [v13 configurationItems];
  v15 = v17 + v19 + [v14 count] * v6;
LABEL_12:

  v20 = [(SLComposeServiceViewController *)self view];
  [v20 bounds];
  v22 = v21;

  v23 = v22 + -30.0;
  v24 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v25 = [MEMORY[0x1E69DC938] currentDevice];
    v26 = [v25 userInterfaceIdiom];

    if (v26 == 1)
    {
      v27 = 390.0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = 552.0;
LABEL_17:
  if (v23 > v27)
  {
    v23 = v27;
  }

  v28 = v23;
  v29 = v15;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGRect)sheetFrameForViewController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 1 || ([(SLComposeServiceViewController *)self interfaceOrientation]- 1) >= 2)
  {
LABEL_6:
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    if (objc_opt_respondsToSelector())
    {
      v11 = [MEMORY[0x1E69DC938] currentDevice];
      v12 = [v11 userInterfaceIdiom];

      if (v12 == 1 && ([(SLComposeServiceViewController *)self interfaceOrientation]- 3) < 2)
      {
        v9 = 0.0;
        v8 = 50.0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v8 = 0.0;
    v9 = 0.5;
    goto LABEL_12;
  }

  v8 = 0.0;
  v9 = 0.550000012;
LABEL_12:
  [(SLComposeServiceViewController *)self sheetFrameForViewController:v4 topSpaceProportion:v9 topSpaceOffset:v8];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)sheetFrameForViewController:(id)a3 topSpaceProportion:(double)a4 topSpaceOffset:(double)a5
{
  v9 = a3;
  [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:{-[SLComposeServiceViewController interfaceOrientation](self, "interfaceOrientation")}];
  v11 = v10;
  [(SLComposeServiceViewController *)self _intrinsicSheetSize];
  v13 = v12;
  v15 = v14;
  v16 = [(SLComposeServiceViewController *)self view];
  [v16 bounds];
  v18 = v17;

  v19 = [(SLComposeServiceViewController *)self view];
  [v19 bounds];
  v21 = v20 - v11 - v15;

  v22 = v21 * a4;
  if (v21 * a4 < 20.0)
  {
    v22 = 20.0;
  }

  v23 = v22 + a5;
  v24 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v24 scale];
  v26 = v25;

  v27 = round(v23 + v23) * 0.5;
  v28 = round(v23);
  if (v26 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v31 = [MEMORY[0x1E69DC938] currentDevice];
    v32 = [v31 userInterfaceIdiom];

    if (v15 > v18 - (v11 + 15.0))
    {
      v33 = v18 - (v11 + 15.0);
    }

    else
    {
      v33 = v15;
    }

    if (v32 == 1)
    {
      v18 = v18 - (v11 + 15.0);
      v15 = v33;
    }
  }

  else
  {
  }

  v34 = [(SLComposeServiceViewController *)self view];
  [v34 bounds];
  v36 = v35;

  if (!self->_isPresentingActionViewController)
  {
    if (!self->_autoCompletionViewController || !self->_autoCompletionViewControllerAffectsSheetSize)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v37 = [(SLComposeServiceViewController *)self view];
  [v37 bounds];
  v39 = v38 - v29;
  [(SLComposeServiceViewController *)self _sheetMinBottomMarginForVerticalSizeClass];
  v18 = v39 - v40;

  if (!self->_isPresentingActionViewController)
  {
LABEL_18:
    [(UIViewController *)self->_autoCompletionViewController preferredContentSize];
    v42 = v43 + 46.0;
    goto LABEL_19;
  }

  [v9 preferredContentSize];
  v42 = v41;
LABEL_19:
  v44 = [(SLComposeServiceViewController *)self navigationController];
  v45 = [v44 navigationBar];
  [v45 bounds];
  v47 = v42 + v46;

  if (v47 >= v18)
  {
    v48 = v18;
  }

  else
  {
    v48 = v47;
  }

  if (v48 >= v15)
  {
    v15 = v48;
  }

LABEL_24:
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v51 = MEMORY[0x1E696AD98];
  v52 = [(SLComposeServiceViewController *)self traitCollection];
  v53 = [v51 numberWithInteger:{objc_msgSend(v52, "horizontalSizeClass")}];
  v54 = MEMORY[0x1E696AD98];
  v55 = [(SLComposeServiceViewController *)self traitCollection];
  v56 = [v54 numberWithInteger:{objc_msgSend(v55, "verticalSizeClass")}];
  v57 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SLComposeServiceViewController interfaceOrientation](self, "interfaceOrientation")}];
  v62 = [MEMORY[0x1E696B098] valueWithCGRect:{(v36 - v13) * 0.5, v29, v13, v15}];
  _SLLog(v5, 7, @"SLComposeServiceViewController sheetFrameForViewController:topSpaceProportion: %@ topSpaceOffset: %@ horizontalSizeClass %@ verticalSizeClass %@ orientation %@ => %@");

  v58 = (v36 - v13) * 0.5;
  v59 = v29;
  v60 = v13;
  v61 = v15;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (double)_sheetMinBottomMarginForVerticalSizeClass
{
  v2 = [(SLComposeServiceViewController *)self traitCollection];
  if ([v2 verticalSizeClass] != 1)
  {

    return 44.0;
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (!v5)
    {
      return 22.0;
    }

    return 44.0;
  }

  return 22.0;
}

- (void)_willAppearInRemoteViewController
{
  _SLLog(v2, 7, @"willAppearInRemoteViewController start");
  if (GSEventIsHardwareKeyboardAttached())
  {
    _SLLog(v2, 7, @"willAppearInRemoteViewController detected physical keyboard, so presenting sheet manually.");
    v4 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__SLComposeServiceViewController__willAppearInRemoteViewController__block_invoke;
    block[3] = &unk_1E81757C8;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  _SLLog(v2, 7, @"willAppearInRemoteViewController finish");
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  v10 = MEMORY[0x1E696AD98];
  v11 = [(SLComposeServiceViewController *)self traitCollection];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "horizontalSizeClass")}];
  v13 = MEMORY[0x1E696AD98];
  v14 = [(SLComposeServiceViewController *)self traitCollection];
  v21 = [v13 numberWithInteger:{objc_msgSend(v14, "verticalSizeClass")}];
  _SLLog(v4, 7, @"SLComposeServiceViewController viewWillTransitionToSize: %@ withTransitionCoordinator: horizontalSizeClass %@ verticalSizeClass %@");

  v27.receiver = self;
  v27.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v27 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height, v9, v12, v21];
  if (v8)
  {
    [v8 targetTransform];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v26);
  v16 = [(SLComposeServiceViewController *)self sheetView];
  [v16 frame];
  self->_sheetFrameStartingRotation.origin.x = v17;
  self->_sheetFrameStartingRotation.origin.y = v18;
  self->_sheetFrameStartingRotation.size.width = v19;
  self->_sheetFrameStartingRotation.size.height = v20;

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  self->_waitingForAnimateAlongsideTransitionBlock = 1;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __85__SLComposeServiceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v24[3] = &unk_1E8176638;
  v25 = IsIdentity;
  v24[4] = self;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__SLComposeServiceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v22[3] = &unk_1E8176638;
  v23 = IsIdentity;
  v22[4] = self;
  [v8 animateAlongsideTransition:v24 completion:v22];
}

void __85__SLComposeServiceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  [v5 transitionDuration];
  v6 = [v4 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isAnimated")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) traitCollection];
  v39 = [v9 numberWithInteger:{objc_msgSend(v10, "verticalSizeClass")}];
  _SLLog(v2, 7, @"SLComposeServiceViewController animateAlongsideTransition: animation block start context.transitionDuration %@ context.isAnimated %@ rotating %@ verticalSizeClass %@");

  *(*(a1 + 32) + 1085) = 0;
  [*(a1 + 32) updateSheetForVerticalSizeClass];
  v11 = *(a1 + 32);
  v12 = [v11 navigationController];
  v13 = [v12 topViewController];
  [v11 sheetFrameForViewController:v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [*(a1 + 32) view];
  [v22 bounds];
  v24 = v23;

  v25 = [*(a1 + 32) view];
  [v25 bounds];
  v27 = v26;

  if (v24 < v27)
  {
    v24 = v27;
  }

  v28 = [*(a1 + 32) view];
  [v28 bounds];
  v30 = v29;

  v31 = [*(a1 + 32) view];
  [v31 bounds];
  v33 = v32;

  if (v30 >= v33)
  {
    v34 = v30;
  }

  else
  {
    v34 = v33;
  }

  [*(*(a1 + 32) + 1040) updateMaskWithBounds:0.0 maskRect:{0.0, v24, v34, *(*(a1 + 32) + 1088), *(*(a1 + 32) + 1096), *(*(a1 + 32) + 1104), *(*(a1 + 32) + 1112)}];
  v35 = *(a1 + 32);
  [v5 transitionDuration];
  v37 = v36;

  [v35 _animateVignetteMaskFromSheetFrame:v35[136] toSheetFrame:v35[137] duration:{v35[138], v35[139], v15, v17, v19, v21, v37}];
  v38 = [*(a1 + 32) sheetView];
  [v38 setFrame:{v15, v17, v19, v21}];

  _SLLog(v2, 7, @"SLComposeServiceViewController animateAlongsideTransition: animation block end");
}

void __85__SLComposeServiceViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v4 = MEMORY[0x1E696AD98];
  v5 = [*(a1 + 32) traitCollection];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "verticalSizeClass")}];
  _SLLog(v1, 7, @"SLComposeServiceViewController animateAlongsideTransition: completion block start, is rotating %@ verticalSizeClass %@");

  [*(a1 + 32) setPreventSheetPositionChanges:{0, v3, v6}];

  _SLLog(v1, 7, @"SLComposeServiceViewController animateAlongsideTransition: completion block end");
}

- (void)loadView
{
  _SLLog(v2, 6, @"SLComposeServiceViewController loadView");
  v95.receiver = self;
  v95.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v95 loadView];
  v4 = [SLSheetMasklayer alloc];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.400000006];
  v6 = [(SLSheetMasklayer *)v4 initWithBackgroundColor:v5 cornerRadius:7.0];
  vignetteLayer = self->_vignetteLayer;
  self->_vignetteLayer = v6;

  [(SLSheetMasklayer *)self->_vignetteLayer removeAllAnimations];
  v8 = [(SLComposeServiceViewController *)self view];
  [v8 bounds];
  [(SLSheetMasklayer *)self->_vignetteLayer setFrame:?];

  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:0.0];
  [(SLSheetMasklayer *)self->_vignetteLayer setNeedsDisplay];
  [(SLSheetMasklayer *)self->_vignetteLayer setAllowsGroupOpacity:0];
  v9 = [(SLComposeServiceViewController *)self view];
  v10 = [v9 layer];
  [v10 addSublayer:self->_vignetteLayer];

  v11 = objc_alloc_init(SLSheetRootViewController);
  [(SLComposeServiceViewController *)self setSheetRootViewController:v11];

  v12 = [(SLComposeServiceViewController *)self title];
  v13 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v13 setTitle:v12];

  v14 = *MEMORY[0x1E69DE3D0];
  v15 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v16 = [v15 tableView];
  [v16 setRowHeight:v14];

  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v17 lineHeight];
  v19 = v18 + v18;
  v20 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v21 = [v20 tableView];
  [v21 setEstimatedRowHeight:v19];

  v22 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v23 = [v22 tableView];
  v24 = [v23 backgroundView];
  [v24 setOpaque:0];

  v25 = [MEMORY[0x1E69DC888] clearColor];
  v26 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v27 = [v26 tableView];
  v28 = [v27 backgroundView];
  [v28 setBackgroundColor:v25];

  v29 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v30 = [v29 tableView];
  [v30 setOpaque:0];

  v31 = [MEMORY[0x1E69DC888] clearColor];
  v32 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v33 = [v32 tableView];
  [v33 setBackgroundColor:v31];

  v34 = objc_alloc_init(SLSheetContentView);
  [(SLComposeServiceViewController *)self setContentView:v34];

  v35 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v36 = [MEMORY[0x1E69DC938] currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if (v37 == 1)
    {
      v38 = [(SLComposeServiceViewController *)self contentView];
      v39 = v38;
      v40 = *MEMORY[0x1E69DE788];
      v41 = 120.0;
      v42 = 2;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v43 = [(SLComposeServiceViewController *)self contentView];
  v44 = *MEMORY[0x1E69DE788];
  [v43 setIntrinsicSize:2 forVerticalSizeClass:{*MEMORY[0x1E69DE788], 138.0}];

  v45 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v45 bounds];
  v47 = v46;

  v38 = [(SLComposeServiceViewController *)self contentView];
  v39 = v38;
  if (v47 <= 320.0)
  {
    v41 = 80.0;
  }

  else
  {
    v41 = 97.0;
  }

  v40 = v44;
  v42 = 1;
LABEL_9:
  [v38 setIntrinsicSize:v42 forVerticalSizeClass:{v40, v41}];

  v48 = [(SLComposeServiceViewController *)self contentView];
  v49 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v49 setContentView:v48];

  v50 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v50 setDelegate:self];

  v51 = [(SLComposeServiceViewController *)self title];
  v52 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v52 setTitle:v51];

  serviceIconImage = self->_serviceIconImage;
  v54 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v54 setServiceIconImage:serviceIconImage];

  v55 = [SLSheetNavigationController alloc];
  v56 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v57 = [(SLSheetNavigationController *)v55 initWithRootViewController:v56];
  [(SLComposeServiceViewController *)self setNavigationController:v57];

  v58 = [(SLComposeServiceViewController *)self navigationController];
  [v58 setDelegate:self];

  v59 = [(SLComposeServiceViewController *)self navigationController];
  [v59 _setBuiltinTransitionStyle:1];

  v60 = [(SLComposeServiceViewController *)self navigationController];
  [v60 willMoveToParentViewController:self];

  v61 = [(SLComposeServiceViewController *)self navigationController];
  [(SLComposeServiceViewController *)self addChildViewController:v61];

  v62 = [(SLComposeServiceViewController *)self view];
  v63 = [(SLComposeServiceViewController *)self navigationController];
  v64 = [v63 view];
  [v62 addSubview:v64];

  v65 = [(SLComposeServiceViewController *)self navigationController];
  [v65 didMoveToParentViewController:self];

  v66 = [(SLComposeServiceViewController *)self navigationController];
  v67 = [v66 view];
  [v67 setAutoresizingMask:5];

  v68 = [(SLComposeServiceViewController *)self contentView];
  v69 = [v68 textView];
  [v69 setReturnKeyType:0];

  v70 = [(SLComposeServiceViewController *)self contentView];
  v71 = [v70 textView];
  [v71 setDelegate:self];

  v72 = [(SLComposeServiceViewController *)self placeholder];
  v73 = [(SLComposeServiceViewController *)self contentView];
  v74 = [v73 placeholderLabel];
  [v74 setText:v72];

  v75 = [(SLComposeServiceViewController *)self contentView];
  v76 = [v75 placeholderLabel];
  [v76 sizeToFit];

  [(SLComposeServiceViewController *)self _updateContentViewWithCharactersRemaining];
  v77 = [(SLComposeServiceViewController *)self sheetView];
  [v77 setHidden:1];

  [(SLComposeServiceViewController *)self setSuppressKeyboard:1];
  v78 = [(SLComposeServiceViewController *)self extensionContext];
  if (!v78)
  {
    return;
  }

  v79 = v78;
  v80 = [(SLComposeServiceViewController *)self extensionContext];
  v81 = [v80 inputItems];
  if (v81)
  {
    v82 = v81;
    v83 = [(SLComposeServiceViewController *)self extensionContext];
    v84 = [v83 inputItems];
    v85 = [v84 count];

    if (!v85)
    {
      return;
    }

    v86 = [(SLComposeServiceViewController *)self extensionContext];
    v87 = [v86 inputItems];
    v79 = [v87 objectAtIndexedSubscript:0];

    v88 = [v79 attributedTitle];
    v94 = [v79 attributedContentText];
    _SLLog(v2, 7, @"SLComposeServiceViewController loadView using extensionItem.attributedTitle %@ extensionItem.attributedContentText %@");

    v89 = [v79 attributedContentText];
    v90 = [v89 string];
    v91 = [(SLComposeServiceViewController *)self contentView];
    v92 = [v91 textView];
    [v92 setText:v90];

    v93 = [v79 attachments];
    [(SLComposeServiceViewController *)self _convertExtensionItemProvidersToAttachments:v93];

    [(SLComposeServiceViewController *)self validateContent];
  }

  else
  {
  }
}

- (void)_convertExtensionItemProvidersToAttachments:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v20 = *MEMORY[0x1E69638B8];
    v21 = *MEMORY[0x1E69637C0];
    v18 = *MEMORY[0x1E69637F8];
    v19 = *MEMORY[0x1E6963808];
    v17 = *MEMORY[0x1E6963850];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34[0] = v21;
          v34[1] = v20;
          v34[2] = v19;
          v34[3] = v18;
          v34[4] = v17;
          v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v25 + 1) + 8 * j);
                if ([v7 hasItemConformingToTypeIdentifier:{v14, v15}])
                {
                  v15 = v14;
                  _SLLog(v23, 7, @"SLComposeServiceViewController got itemProvider conforming to %@");
                  ++self->_unfulfilledItemProviderRepresentations;
                  v24[0] = MEMORY[0x1E69E9820];
                  v24[1] = 3221225472;
                  v24[2] = __78__SLComposeServiceViewController__convertExtensionItemProvidersToAttachments___block_invoke;
                  v24[3] = &unk_1E8176660;
                  v24[4] = v14;
                  v24[5] = v7;
                  v24[6] = self;
                  [v7 loadItemForTypeIdentifier:v14 options:0 completionHandler:v24];
                  goto LABEL_18;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }

        else
        {
          v15 = objc_opt_class();
          _SLLog(v23, 3, @"SLComposeServiceViewController ignoring unrecognized attachment class %@");
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v4);
  }
}

void __78__SLComposeServiceViewController__convertExtensionItemProvidersToAttachments___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  _SLLog(v2, 3, @"SLComposeServiceViewController got NSURL %@ for %@ error: %@");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SLComposeServiceViewController__convertExtensionItemProvidersToAttachments___block_invoke_2;
  block[3] = &unk_1E8176028;
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 40);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__SLComposeServiceViewController__convertExtensionItemProvidersToAttachments___block_invoke_2(id *a1)
{
  if ([a1[4] isEqualToString:*MEMORY[0x1E6963808]])
  {
    goto LABEL_3;
  }

  v3 = *MEMORY[0x1E69637F8];
  if ([a1[4] isEqualToString:*MEMORY[0x1E69637F8]])
  {
    goto LABEL_3;
  }

  v17 = *MEMORY[0x1E6963850];
  if ([a1[4] isEqualToString:*MEMORY[0x1E6963850]])
  {
    goto LABEL_18;
  }

  if (!a1[5])
  {
    v6 = 0;
    v4 = 0;
    LOBYTE(v5) = 0;
    goto LABEL_34;
  }

  if ([a1[6] hasItemConformingToTypeIdentifier:v17])
  {
    v36 = v17;
    _SLLog(v1, 7, @"SLComposeServiceViewController itemProvider also conforms to %@");
LABEL_18:
    v6 = 0;
    LOBYTE(v5) = 0;
    v7 = 2;
    v4 = 1;
    goto LABEL_4;
  }

  if ([a1[6] hasItemConformingToTypeIdentifier:v3])
  {
    v36 = v3;
    _SLLog(v1, 7, @"SLComposeServiceViewController itemProvider also conforms to %@");
LABEL_3:
    v4 = 0;
    LOBYTE(v5) = 0;
    v6 = 1;
    v7 = 1;
    goto LABEL_4;
  }

  v23 = [a1[5] scheme];
  v24 = [v23 isEqualToString:@"assets-library"];

  v25 = a1[5];
  if (!v24)
  {
    v30 = [v25 scheme];
    v6 = [v30 isEqualToString:@"file"];

    if (!v6)
    {
      v4 = 0;
      v7 = 3;
      LOBYTE(v5) = 1;
      goto LABEL_4;
    }

    v31 = [a1[5] resourceSpecifier];
    if ([v31 hasCaseInsensitiveSuffix:@".MOV"])
    {

      goto LABEL_18;
    }

    v32 = [a1[5] resourceSpecifier];
    v33 = [v32 hasCaseInsensitiveSuffix:@".MOV?"];

    if (v33)
    {
      goto LABEL_18;
    }

    v34 = [a1[5] resourceSpecifier];
    if ([v34 hasCaseInsensitiveSuffix:@".JPG"])
    {

      goto LABEL_3;
    }

    v35 = [a1[5] resourceSpecifier];
    v5 = [v35 hasCaseInsensitiveSuffix:@".JPEG"];

    if (v5)
    {
      goto LABEL_3;
    }

    v6 = 0;
    v4 = 0;
LABEL_34:
    v7 = 0;
    goto LABEL_4;
  }

  v26 = [v25 resourceSpecifier];
  [v26 rangeOfString:@".MOV?"];
  v28 = v27;

  LOBYTE(v5) = 0;
  v29 = v28 == 0;
  v6 = v28 == 0;
  v4 = !v29;
  if (v29)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

LABEL_4:
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v7, v36}];
  _SLLog(v1, 3, @"SLComposeServiceViewController got attachment coarseType %@");

  if (v6)
  {
    v8 = a1[5];
    if (v8)
    {
      v9 = [v8 scheme];
      v10 = [v9 isEqualToString:@"assets-library"];

      if (v10)
      {
        v11 = SLImageAttachment;
LABEL_12:
        v15 = [[v11 alloc] initWithAsset:a1[5] preview:0];
        goto LABEL_25;
      }
    }

    v16 = [[SLImageAttachment alloc] initWithJPEGData:0 preview:0];
  }

  else
  {
    if (!v4)
    {
      if ((v5 & 1) == 0)
      {
        --*(a1[7] + 125);
        goto LABEL_30;
      }

      v18 = [a1[6] userInfo];
      v19 = [v18 objectForKeyedSubscript:@"SLAttachmentURLType"];

      v20 = [SLURLAttachment alloc];
      if (v19)
      {
        v21 = -[SLURLAttachment initWithURL:ofType:preview:](v20, "initWithURL:ofType:preview:", a1[5], [v19 integerValue], 0);
      }

      else
      {
        v21 = [(SLURLAttachment *)v20 initWithURL:a1[5] previewImage:0];
      }

      v38 = v21;

      goto LABEL_24;
    }

    v12 = a1[5];
    if (v12)
    {
      v13 = [v12 scheme];
      v14 = [v13 isEqualToString:@"assets-library"];

      if (v14)
      {
        v11 = SLVideoAttachment;
        goto LABEL_12;
      }
    }

    v16 = [[SLVideoAttachment alloc] initWithVideoData:0 preview:0];
  }

  v38 = v16;
  [(SLAttachment *)v16 setPayloadSourceFileURL:a1[5], v37];
LABEL_24:
  v15 = v38;
LABEL_25:
  --*(a1[7] + 125);
  if (v15)
  {
    v39 = v15;
    [v15 setItemProvider:a1[6]];
    [v39 setTypeIdentifier:a1[4]];
    [a1[7] _addAttachment:v39];

    return;
  }

LABEL_30:
  _SLLog(v1, 3, @"SLComposeServiceViewController made no attachment for itemProvider conforming to %@");
  v22 = a1[7];

  [v22 validateContent];
}

- (void)viewDidLoad
{
  _SLLog(v2, 6, @"SLComposeServiceViewController viewDidLoad");
  v5.receiver = self;
  v5.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v5 viewDidLoad];
  v4 = [(SLComposeServiceViewController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = a3;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:?];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewWillAppear: %@ begin");

  v11.receiver = self;
  v11.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v11 viewWillAppear:v4, v9];
  [(SLComposeServiceViewController *)self updateSheetForVerticalSizeClass];
  [(SLComposeServiceViewController *)self _loadPreviewView];
  v6 = [(SLComposeServiceViewController *)self configurationItems];
  if (![v6 count])
  {
    v7 = [(SLComposeServiceViewController *)self sheetActions];

    v6 = v7;
  }

  v8 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [v8 setConfigurationItems:v6];

  self->_didFirstSheetActionLoad = 1;
  [(SLComposeServiceViewController *)self positionSheetView];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewWillAppear: %@ end");
}

- (void)viewDidAppear:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewDidAppear: %@");

  self->_wasPresented = 1;
  [(SLComposeServiceViewController *)self setSuppressKeyboard:0, v5];

  [(SLComposeServiceViewController *)self showKeyboardAnimated:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v3 viewDidDisappear:a3];
}

- (void)didReceiveMemoryWarning
{
  _SLLog(v2, 6, @"SheetViewController didReceiveMemoryWarning");
  v4.receiver = self;
  v4.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v4 didReceiveMemoryWarning];
}

- (void)shouldShowNetworkActivityIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = [(SLComposeServiceViewController *)self extensionContext];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v5 shouldShowNetworkActivityIndicator:v4];
}

- (void)networkActivityIndicatorNotification:(id)a3
{
  v4 = [a3 name];
  -[SLComposeServiceViewController shouldShowNetworkActivityIndicator:](self, "shouldShowNetworkActivityIndicator:", [v4 isEqualToString:SLShowNetworkActivityIndicatorNotification]);
}

@end