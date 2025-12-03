@interface SLComposeServiceViewController
+ (id)_imageAttachmentLoadDownsamplePreviewQueue;
- (BOOL)_areAttachmentsReady;
- (CGRect)sheetFrameForViewController:(id)controller;
- (CGRect)sheetFrameForViewController:(id)controller topSpaceProportion:(double)proportion topSpaceOffset:(double)offset;
- (CGSize)_intrinsicSheetSize;
- (NSString)contentText;
- (SLComposeServiceViewController)initWithCoder:(id)coder;
- (SLComposeServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SLComposeServiceViewController)initWithServiceIconImage:(id)image;
- (UITextView)textView;
- (UIView)loadPreviewView;
- (UIView)sheetView;
- (double)_sheetMinBottomMarginForVerticalSizeClass;
- (id)URLAttachments;
- (id)previewImageSource;
- (int64_t)_previewDisplayFormat;
- (void)_addAttachment:(id)attachment;
- (void)_adjustContentViewIntrinsicHeightForPreviewView;
- (void)_animateCardSendFinished;
- (void)_animateSheetCancelFinished;
- (void)_animateSheetPresentationFinished;
- (void)_animateVignetteMaskFromSheetFrame:(CGRect)frame toSheetFrame:(CGRect)sheetFrame duration:(double)duration;
- (void)_convertExtensionItemProvidersToAttachments:(id)attachments;
- (void)_downsampleImageAttachment:(id)attachment;
- (void)_imageAttachmentDataDidLoad:(id)load;
- (void)_loadImageAttachmentData:(id)data;
- (void)_loadPreviewView;
- (void)_performCommonInitialization:(id)initialization;
- (void)_positionSheetViewAnimatedForViewController:(id)controller;
- (void)_positionSheetViewForViewController:(id)controller;
- (void)_positionVignetteForSheetFrame:(CGRect)frame;
- (void)_presentSheet;
- (void)_presentedViewControllerContentSizeDidChange;
- (void)_setViewControllerForTrackingSheetSize:(id)size;
- (void)_updateContentViewWithCharactersRemaining;
- (void)_willAppearInRemoteViewController;
- (void)animateCardSendOrientation:(int64_t)orientation;
- (void)animateSheetCancelWithDuration:(double)duration;
- (void)animateSheetPresentationWithDuration:(double)duration;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didSelectCancel;
- (void)didSelectPost;
- (void)hideKeyboardAnimated:(BOOL)animated;
- (void)hideKeyboardWithAnimationTime:(double)time;
- (void)keyboardDidChange:(id)change;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)networkActivityIndicatorNotification:(id)notification;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)popConfigurationViewController;
- (void)positionSheetView;
- (void)postButtonTapped:(id)tapped;
- (void)pushConfigurationViewController:(UIViewController *)viewController;
- (void)reloadConfigurationItems;
- (void)send;
- (void)setAutoCompletionViewController:(UIViewController *)autoCompletionViewController;
- (void)setCharactersRemaining:(NSNumber *)charactersRemaining;
- (void)setPlaceholder:(NSString *)placeholder;
- (void)setPostButtonTitle:(id)title;
- (void)setServiceIconImage:(id)image;
- (void)setSheetFrame:(CGRect)frame;
- (void)setTitle:(id)title;
- (void)shouldShowNetworkActivityIndicator:(BOOL)indicator;
- (void)showKeyboardAnimated:(BOOL)animated;
- (void)showKeyboardWithAnimationTime:(double)time;
- (void)traitCollectionDidChange:(id)change;
- (void)updateKeyboardSize;
- (void)updateSheetForVerticalSizeClass;
- (void)validateContent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SLComposeServiceViewController

- (void)_performCommonInitialization:(id)initialization
{
  objc_storeStrong(&self->_serviceIconImage, initialization);
  initializationCopy = initialization;
  self->_unfulfilledItemProviderRepresentations = 0;
  v6 = objc_opt_new();
  attachments = self->_attachments;
  self->_attachments = v6;

  v8 = objc_opt_new();
  constraints = self->_constraints;
  self->_constraints = v8;

  self->_triggerPresentationAnimationOnKeyboard = 1;
  self->_maxImageAttachmentSize = 2048000;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x1E69DDF68] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel_networkActivityIndicatorNotification_ name:SLShowNetworkActivityIndicatorNotification object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel_networkActivityIndicatorNotification_ name:SLHideNetworkActivityIndicatorNotification object:0];

  [(SLComposeServiceViewController *)self setShouldForceNonAnimatedTransition:1];
}

- (SLComposeServiceViewController)initWithServiceIconImage:(id)image
{
  imageCopy = image;
  _SLLog(v3, 6, @"SLComposeServiceViewController initWithServiceIconImage:");
  v9.receiver = self;
  v9.super_class = SLComposeServiceViewController;
  v6 = [(SLComposeServiceViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(SLComposeServiceViewController *)v6 _performCommonInitialization:imageCopy];
  }

  return v7;
}

- (SLComposeServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  _SLLog(v4, 7, @"SLComposeServiceViewController initWithNibName:bundle:");
  v11.receiver = self;
  v11.super_class = SLComposeServiceViewController;
  v9 = [(SLComposeServiceViewController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];

  if (v9)
  {
    [(SLComposeServiceViewController *)v9 _performCommonInitialization:0];
  }

  return v9;
}

- (SLComposeServiceViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  _SLLog(v3, 7, @"SLComposeServiceViewController initWithCoder:");
  v8.receiver = self;
  v8.super_class = SLComposeServiceViewController;
  v6 = [(SLComposeServiceViewController *)&v8 initWithCoder:coderCopy];

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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)_positionSheetViewForViewController:(id)controller
{
  controllerCopy = controller;
  preventSheetPositionChanges = [(SLComposeServiceViewController *)self preventSheetPositionChanges];
  v6 = @"NO";
  if (preventSheetPositionChanges)
  {
    v6 = @"YES";
  }

  v12 = v6;
  _SLLog(v3, 7, @"SLComposeServiceViewController _positionSheetViewForViewController: %@ preventSheetPositionChanges %@");
  if (![(SLComposeServiceViewController *)self preventSheetPositionChanges:controllerCopy])
  {
    [(SLComposeServiceViewController *)self sheetFrameForViewController:controllerCopy];
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
  navigationController = [(SLComposeServiceViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  [(SLComposeServiceViewController *)self _positionSheetViewForViewController:topViewController];
}

- (void)updateSheetForVerticalSizeClass
{
  v4 = MEMORY[0x1E696B098];
  contentView = [(SLComposeServiceViewController *)self contentView];
  [contentView intrinsicContentSize];
  v7 = [v4 valueWithCGSize:?];
  _SLLog(v2, 7, @"SLComposeServiceViewController updateSheetForVerticalSizeClass self.contentView.intrinsicContentSize %@");

  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  contentView2 = [(SLComposeServiceViewController *)self contentView];
  [contentView2 intrinsicContentSize];
  [sheetRootViewController updateContentViewSize:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v21.receiver = self;
  v21.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v21 traitCollectionDidChange:changeCopy];
  traitCollection = [(SLComposeServiceViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  verticalSizeClass2 = [changeCopy verticalSizeClass];

  if (verticalSizeClass != verticalSizeClass2)
  {
    v9 = MEMORY[0x1E696AD98];
    traitCollection2 = [(SLComposeServiceViewController *)self traitCollection];
    v11 = [v9 numberWithInteger:{objc_msgSend(traitCollection2, "verticalSizeClass")}];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(changeCopy, "verticalSizeClass")}];
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

  traitCollection3 = [(SLComposeServiceViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection3 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v15 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v15 & 1) == 0)
  {
    contentView = [(SLComposeServiceViewController *)self contentView];
    accessoryView = [contentView accessoryView];

    if (accessoryView)
    {
      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [accessoryView setFont:v18];
    }
  }
}

- (void)keyboardWillShow:(id)show
{
  _SLLog(v3, 7, @"keyboardWillShow");
  if (self->_triggerPresentationAnimationOnKeyboard)
  {

    [(SLComposeServiceViewController *)self _presentSheet];
  }
}

- (void)showKeyboardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(SLComposeServiceViewController *)self suppressKeyboard])
  {
    contentView = [(SLComposeServiceViewController *)self contentView];
    textView = [contentView textView];
    [textView becomeFirstResponder];

    if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0)
    {

      MEMORY[0x1EEE4DE18](animatedCopy);
    }
  }
}

- (void)hideKeyboardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  contentView = [(SLComposeServiceViewController *)self contentView];
  textView = [contentView textView];
  [textView resignFirstResponder];

  if ((UIKeyboardIsAutomaticAppearanceEnabled() & 1) == 0)
  {

    MEMORY[0x1EEE4DE28](animatedCopy);
  }
}

- (void)showKeyboardWithAnimationTime:(double)time
{
  if (![(SLComposeServiceViewController *)self suppressKeyboard])
  {
    contentView = [(SLComposeServiceViewController *)self contentView];
    [contentView becomeFirstResponder];

    if (UIKeyboardIsAutomaticAppearanceEnabled())
    {
      v6.n128_f64[0] = time;

      MEMORY[0x1EEE4DF40](0, v6);
    }

    else
    {
      v6.n128_f64[0] = time;

      MEMORY[0x1EEE4DE20](0, v6);
    }
  }
}

- (void)hideKeyboardWithAnimationTime:(double)time
{
  contentView = [(SLComposeServiceViewController *)self contentView];
  [contentView resignFirstResponder];

  if (UIKeyboardIsAutomaticAppearanceEnabled())
  {
    v5.n128_f64[0] = time;

    MEMORY[0x1EEE4DF60](0, v5);
  }

  else
  {
    v5.n128_f64[0] = time;

    MEMORY[0x1EEE4DE30](0, v5);
  }
}

- (void)setCharactersRemaining:(NSNumber *)charactersRemaining
{
  objc_storeStrong(&self->_charactersRemaining, charactersRemaining);
  contentView = [(SLComposeServiceViewController *)self contentView];

  if (contentView)
  {

    [(SLComposeServiceViewController *)self _updateContentViewWithCharactersRemaining];
  }
}

- (void)_updateContentViewWithCharactersRemaining
{
  charactersRemaining = self->_charactersRemaining;
  contentView = [(SLComposeServiceViewController *)self contentView];
  v15 = contentView;
  if (charactersRemaining)
  {
    accessoryView = [contentView accessoryView];

    v15 = accessoryView;
    if (!accessoryView)
    {
      v6 = objc_alloc(MEMORY[0x1E69DCC10]);
      v15 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
      [v15 setFont:v7];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v15 setBackgroundColor:clearColor];

      [v15 setAlpha:0.699999988];
    }

    v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v10 = [v9 stringFromNumber:self->_charactersRemaining];
    [v15 setText:v10];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v15 setTextColor:secondaryLabelColor];

    contentView2 = [(SLComposeServiceViewController *)self contentView];
    accessoryView2 = [contentView2 accessoryView];

    if (!accessoryView2)
    {
      contentView3 = [(SLComposeServiceViewController *)self contentView];
      [contentView3 setAccessoryView:v15];
    }
  }

  else
  {
    [contentView setAccessoryView:0];
  }
}

- (UITextView)textView
{
  contentView = [(SLComposeServiceViewController *)self contentView];
  textView = [contentView textView];

  return textView;
}

- (NSString)contentText
{
  textView = [(SLComposeServiceViewController *)self textView];
  text = [textView text];

  return text;
}

- (void)setPlaceholder:(NSString *)placeholder
{
  objc_storeStrong(&self->_placeholder, placeholder);
  v5 = placeholder;
  contentView = [(SLComposeServiceViewController *)self contentView];
  placeholderLabel = [contentView placeholderLabel];
  [placeholderLabel setText:v5];

  contentView2 = [(SLComposeServiceViewController *)self contentView];
  placeholderLabel2 = [contentView2 placeholderLabel];
  [placeholderLabel2 sizeToFit];

  contentView3 = [(SLComposeServiceViewController *)self contentView];
  [contentView3 setNeedsLayout];
}

- (void)_addAttachment:(id)attachment
{
  attachmentCopy = attachment;
  _SLLog(v3, 6, @"SLComposeServiceViewController _addAttachment: %@");
  [(NSMutableArray *)self->_attachments addObject:attachmentCopy, attachmentCopy];
  if (self->_maxImageAttachmentSize && ![attachmentCopy type])
  {
    [attachmentCopy setDownsampleStatus:1];
    [(SLComposeServiceViewController *)self _loadImageAttachmentData:attachmentCopy];
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
  attachments = [(SLComposeServiceViewController *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 downsampleStatus] == 2 || objc_msgSend(v8, "downsampleStatus") == 1)
        {
          v2 = 0;
          goto LABEL_15;
        }
      }

      v5 = [attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  contentView = [(SLComposeServiceViewController *)self contentView];
  textView = [contentView textView];
  text = [textView text];
  v6 = [text length] != 0;
  contentView2 = [(SLComposeServiceViewController *)self contentView];
  placeholderLabel = [contentView2 placeholderLabel];
  [placeholderLabel setHidden:v6];

  if ([(SLComposeServiceViewController *)self isContentValid])
  {
    _areAttachmentsReady = [(SLComposeServiceViewController *)self _areAttachmentsReady];
  }

  else
  {
    _areAttachmentsReady = 0;
  }

  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController setPostButtonEnabled:_areAttachmentsReady];
}

- (id)URLAttachments
{
  attachments = [(SLComposeServiceViewController *)self attachments];
  v3 = [attachments objectsPassingTest:&__block_literal_global_6];

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

- (void)_loadImageAttachmentData:(id)data
{
  dataCopy = data;
  if (([dataCopy startedPayloadLoad] & 1) == 0)
  {
    [dataCopy setStartedPayloadLoad:1];
    _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@");
    objc_initWeak(&location, self);
    objc_initWeak(&from, dataCopy);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke;
    v27[3] = &unk_1E81763B8;
    objc_copyWeak(&v28, &location);
    objc_copyWeak(&v29, &from);
    v6 = MEMORY[0x1C6917BF0](v27);
    identifier = [dataCopy identifier];
    itemProvider = [dataCopy itemProvider];
    typeIdentifier = [dataCopy typeIdentifier];
    payload = [dataCopy payload];

    if (payload)
    {
      v6[2](v6, 0, 0);
    }

    else
    {
      payloadSourceFileURL = [dataCopy payloadSourceFileURL];

      if (payloadSourceFileURL)
      {
        payloadSourceFileURL2 = [dataCopy payloadSourceFileURL];
        _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ loading from %@");

        payloadSourceFileURL3 = [dataCopy payloadSourceFileURL];
        v13 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_3;
        block[3] = &unk_1E8175928;
        v23 = payloadSourceFileURL3;
        v24 = identifier;
        v25 = typeIdentifier;
        v26 = v6;
        v14 = payloadSourceFileURL3;
        dispatch_async(v13, block);
      }

      else
      {
        _SLLog(v3, 7, @"SLComposeServiceViewController _loadImageAttachmentData: %@ loading from itemProvider for typeIdentifier %@");
        v15 = [SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue:identifier];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __59__SLComposeServiceViewController__loadImageAttachmentData___block_invoke_4;
        v17[3] = &unk_1E8175928;
        v18 = itemProvider;
        v19 = typeIdentifier;
        v20 = identifier;
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

- (void)_imageAttachmentDataDidLoad:(id)load
{
  loadCopy = load;
  _SLLog(v3, 7, @"SLComposeServiceViewController _imageAttachmentDataDidLoad: %@");
  if ([loadCopy downsampleStatus] == 1)
  {
    [(SLComposeServiceViewController *)self _downsampleImageAttachment:loadCopy];
  }

  if ([loadCopy needsAnotherPreviewGeneration])
  {
    contentView = [(SLComposeServiceViewController *)self contentView];
    previewView = [contentView previewView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contentView2 = [(SLComposeServiceViewController *)self contentView];
      previewView2 = [contentView2 previewView];
      objc_initWeak(&location, previewView2);

      previewImageSource = [(SLComposeServiceViewController *)self previewImageSource];
      v12 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__SLComposeServiceViewController__imageAttachmentDataDidLoad___block_invoke;
      v13[3] = &unk_1E8176480;
      objc_copyWeak(&v15, &location);
      v14 = loadCopy;
      [previewImageSource previewImageForAttachment:v14 queueToBlockWhileDownsampling:v12 resultBlock:v13];

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

- (void)_downsampleImageAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[SLComposeServiceViewController maxImageAttachmentSize](self, "maxImageAttachmentSize")}];
  _SLLog(v3, 6, @"SLComposeServiceViewController _downsampleImageAttachment: %@ starting downsampling of attached image to max size %@");

  [attachmentCopy setDownsampleStatus:{2, attachmentCopy, v11}];
  objc_initWeak(&location, self);
  payload = [attachmentCopy payload];
  maxImageAttachmentSize = [(SLComposeServiceViewController *)self maxImageAttachmentSize];
  v8 = +[SLComposeServiceViewController _imageAttachmentLoadDownsamplePreviewQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SLComposeServiceViewController__downsampleImageAttachment___block_invoke;
  block[3] = &unk_1E81764F8;
  v15[1] = maxImageAttachmentSize;
  v13 = payload;
  v14 = attachmentCopy;
  v9 = attachmentCopy;
  v10 = payload;
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
  loadPreviewView = [(SLComposeServiceViewController *)self loadPreviewView];
  v8 = loadPreviewView;
  if (loadPreviewView)
  {
    v7 = loadPreviewView;
    _SLLog(v2, 6, @"SLComposeServiceViewController:_loadPreviewView preview created: %@");
    contentView = [(SLComposeServiceViewController *)self contentView];
    [contentView setPreviewView:v8];

    view = [(SLComposeServiceViewController *)self view];
    [view setNeedsUpdateConstraints];

    [(SLComposeServiceViewController *)self _adjustContentViewIntrinsicHeightForPreviewView];
  }

  else
  {
    _SLLog(v2, 6, @"Preview view creation failed or not needed");
  }
}

- (void)_adjustContentViewIntrinsicHeightForPreviewView
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      return;
    }

    contentView = [(SLComposeServiceViewController *)self contentView];
    previewView = [contentView previewView];
    [previewView intrinsicContentSize];
    v8 = v7;

    v9 = v8 + -90.0 + 120.0;
    if (v9 == 120.0)
    {
      return;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
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

    contentView2 = [(SLComposeServiceViewController *)self contentView];
    [contentView2 setIntrinsicSize:2 forVerticalSizeClass:{*MEMORY[0x1E69DE788], v15}];

    currentDevice = [(SLComposeServiceViewController *)self sheetRootViewController];
    contentView3 = [(SLComposeServiceViewController *)self contentView];
    [contentView3 intrinsicContentSize];
    [currentDevice updateContentViewSize:?];
  }
}

- (int64_t)_previewDisplayFormat
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [(SLComposeServiceViewController *)self attachments];
  v3 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attachments);
        }

        type = [*(*(&v11 + 1) + 8 * i) type];
        if (type > 9)
        {
          v9 = 1;
        }

        else
        {
          v9 = qword_1C23F44C8[type];
        }

        if (v5 <= v9)
        {
          v5 = v9;
        }
      }

      v4 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  selfCopy = self;
  v56[1] = *MEMORY[0x1E69E9840];
  attachments = [(SLComposeServiceViewController *)self attachments];
  v5 = [attachments count];

  if (!v5)
  {
    _SLLog(v2, 6, @"SLComposeServiceViewController - Cannot create preview view with no attachments");
    v12 = 0;
    goto LABEL_55;
  }

  _previewDisplayFormat = [(SLComposeServiceViewController *)selfCopy _previewDisplayFormat];
  attachments2 = [(SLComposeServiceViewController *)selfCopy attachments];
  v8 = attachments2;
  if (_previewDisplayFormat > 3)
  {
    if (_previewDisplayFormat != 4)
    {
      if (_previewDisplayFormat == 5)
      {
        v11 = [attachments2 firstObjectPassingTest:&__block_literal_global_142];

        if (v11)
        {
          previewImage = [v11 previewImage];
          if (previewImage)
          {
          }

          else if ([v11 itemProviderPreviewType] != 1)
          {
            attachments3 = [(SLComposeServiceViewController *)selfCopy attachments];
            v19 = [attachments3 firstObjectPassingTest:&__block_literal_global_144];

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

      if (_previewDisplayFormat != 6)
      {
LABEL_21:
        v11 = [attachments2 objectAtIndex:0];

        if (!v11)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      v11 = [attachments2 firstObjectPassingTest:&__block_literal_global_146];

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

    v11 = [attachments2 firstObjectPassingTest:&__block_literal_global_131];

    if (!v11)
    {
      goto LABEL_36;
    }

    previewImage2 = [v11 previewImage];
    if (previewImage2)
    {
      v15 = previewImage2;
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
      attachments4 = [(SLComposeServiceViewController *)selfCopy attachments];
      v15 = [attachments4 firstObjectPassingTest:&__block_literal_global_136];

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

  if (_previewDisplayFormat == 1)
  {
    v11 = [attachments2 firstObjectPassingTest:&__block_literal_global_128];

    if (!v11)
    {
      goto LABEL_36;
    }

    v13 = SLSheetURLPreviewView;
    goto LABEL_34;
  }

  if (_previewDisplayFormat == 2)
  {
    v11 = [attachments2 firstObjectPassingTest:&__block_literal_global_125];

    if (v11)
    {
      v13 = SLSheetVideoPreviewView;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (_previewDisplayFormat != 3)
  {
    goto LABEL_21;
  }

  v9 = [attachments2 objectsPassingTest:&__block_literal_global_122];

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
        previewImage3 = [v25 previewImage];

        if (previewImage3)
        {
          previewImage4 = [v25 previewImage];
          [(SLSheetImagePreviewView *)v10 setPreviewImage:previewImage4 forAttachment:v25];
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
          v50 = selfCopy;
          v29 = MEMORY[0x1C6917BF0](v47);
          [(SLSheetBevelledImageView *)v28 ensurePlaceholderPreviewImage];
          itemProvider = [v25 itemProvider];
          if (!itemProvider || (v31 = itemProvider, v32 = selfCopy, v33 = [v25 itemProviderPreviewType], v31, v34 = v33 == 2, selfCopy = v32, v34))
          {
            v29[2](v29);
          }

          else
          {
            _SLLog(v2, 7, @"SLComposeServiceViewController trying to load itemProvider previewImage");
            itemProvider2 = [v25 itemProvider];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __49__SLComposeServiceViewController_loadPreviewView__block_invoke_13;
            v43[3] = &unk_1E8176598;
            v44 = v28;
            v45 = v25;
            v46 = v29;
            [itemProvider2 loadPreviewImageWithOptions:0 completionHandler:v43];

            selfCopy = v32;
          }

          previewImage4 = v48;
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
    extensionContext = [(SLComposeServiceViewController *)self extensionContext];
    [extensionContext completeRequestReturningItems:0 completionHandler:0];
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
    extensionContext = [(SLComposeServiceViewController *)self extensionContext];
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [extensionContext cancelRequestWithError:v4];
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
    configurationItems = [(SLComposeServiceViewController *)self configurationItems];
    if (![configurationItems count])
    {
      sheetActions = [(SLComposeServiceViewController *)self sheetActions];

      configurationItems = sheetActions;
    }

    sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
    [sheetRootViewController setConfigurationItems:configurationItems];

    [(SLComposeServiceViewController *)self positionSheetView];
  }
}

- (void)pushConfigurationViewController:(UIViewController *)viewController
{
  v4 = viewController;
  [(UIViewController *)v4 setExtendedLayoutIncludesOpaqueBars:1];
  [(UIViewController *)v4 setEdgesForExtendedLayout:0];
  navigationController = [(SLComposeServiceViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];

  [(SLComposeServiceViewController *)self hideKeyboardAnimated:1];
}

- (void)_setViewControllerForTrackingSheetSize:(id)size
{
  sizeCopy = size;
  [(UIViewController *)self->_viewControllerForTrackingSheetSize removeObserver:self forKeyPath:@"preferredContentSize"];
  [(UIViewController *)sizeCopy addObserver:self forKeyPath:@"preferredContentSize" options:1 context:0];
  viewControllerForTrackingSheetSize = self->_viewControllerForTrackingSheetSize;
  self->_viewControllerForTrackingSheetSize = sizeCopy;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  _SLLog(v5, 7, @"navigationController:willShowViewController:animated:");
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  v9 = sheetRootViewController != viewControllerCopy;

  self->_isPresentingActionViewController = v9;
  [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:viewControllerCopy];

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  viewControllerCopy = viewController;
  _SLLog(v5, 7, @"navigationController:didShowViewController:");
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];

  if (sheetRootViewController == viewControllerCopy)
  {
    [(SLComposeServiceViewController *)self _setViewControllerForTrackingSheetSize:0];
    [(SLComposeServiceViewController *)self showKeyboardAnimated:1];
  }

  else
  {
    [(SLComposeServiceViewController *)self _setViewControllerForTrackingSheetSize:viewControllerCopy];
  }

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:0];
  [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:viewControllerCopy];
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
    navigationController = [(SLComposeServiceViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:topViewController];
  }
}

- (void)_positionSheetViewAnimatedForViewController:(id)controller
{
  controllerCopy = controller;
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
      v9 = controllerCopy;
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

- (void)_animateVignetteMaskFromSheetFrame:(CGRect)frame toSheetFrame:(CGRect)sheetFrame duration:(double)duration
{
  height = sheetFrame.size.height;
  width = sheetFrame.size.width;
  y = sheetFrame.origin.y;
  x = sheetFrame.origin.x;
  v10 = frame.size.height;
  v11 = frame.size.width;
  v12 = frame.origin.y;
  v13 = frame.origin.x;
  if (!CGRectEqualToRect(frame, sheetFrame))
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
  navigationController = [(SLComposeServiceViewController *)self navigationController];
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  v4 = [navigationController popToViewController:sheetRootViewController animated:1];
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
      navigationController = [(SLComposeServiceViewController *)self navigationController];
      topViewController = [navigationController topViewController];
      [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:topViewController];

      sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke;
      v22[3] = &unk_1E81757C8;
      v22[4] = self;
      [sheetRootViewController dismissAutoCompletionViewControllerWithContentViewChangeBlock:v22];

      contentView = [(SLComposeServiceViewController *)self contentView];
      textView = [contentView textView];
      [textView becomeFirstResponder];
    }

    if (v5)
    {
      objc_storeStrong(&self->_autoCompletionViewController, autoCompletionViewController);
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if (objc_opt_respondsToSelector())
      {
        currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
        userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

        if (userInterfaceIdiom == 1)
        {
          self->_autoCompletionViewControllerAffectsSheetSize = 1;
          [(UIViewController *)v5 addObserver:self forKeyPath:@"preferredContentSize" options:1 context:0];
        }
      }

      else
      {
      }

      contentView2 = [(SLComposeServiceViewController *)self contentView];
      [contentView2 preflightAutoCompletionModeWithApparentHeight:46.0];

      sheetRootViewController2 = [(SLComposeServiceViewController *)self sheetRootViewController];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__SLComposeServiceViewController_setAutoCompletionViewController___block_invoke_2;
      v21[3] = &unk_1E81757C8;
      v21[4] = self;
      [sheetRootViewController2 presentAutoCompletionViewController:v5 apparentContentHeight:v21 contentViewChangeBlock:46.0];

      contentView3 = [(SLComposeServiceViewController *)self contentView];
      textView2 = [contentView3 textView];
      [textView2 becomeFirstResponder];

      navigationController2 = [(SLComposeServiceViewController *)self navigationController];
      topViewController2 = [navigationController2 topViewController];
      [(SLComposeServiceViewController *)self _positionSheetViewAnimatedForViewController:topViewController2];
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

- (void)setPostButtonTitle:(id)title
{
  titleCopy = title;
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController setPostButtonTitle:titleCopy];
}

- (void)setTitle:(id)title
{
  v6.receiver = self;
  v6.super_class = SLComposeServiceViewController;
  titleCopy = title;
  [(SLComposeServiceViewController *)&v6 setTitle:titleCopy];
  v5 = [(SLComposeServiceViewController *)self sheetRootViewController:v6.receiver];
  [v5 setTitle:titleCopy];
}

- (void)setServiceIconImage:(id)image
{
  objc_storeStrong(&self->_serviceIconImage, image);
  imageCopy = image;
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController setServiceIconImage:imageCopy];
}

- (void)cancelButtonTapped:(id)tapped
{
  _SLLog(v3, 6, @"SLComposeServiceViewController:cancelButtonTapped");

  [(SLComposeServiceViewController *)self cancel];
}

- (void)postButtonTapped:(id)tapped
{
  self->_inPostButtonTapped = 1;
  _SLLog(v3, 6, @"postButtonTapped");
  contentView = [(SLComposeServiceViewController *)self contentView];
  textView = [contentView textView];
  [textView setEditable:0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  -[SLComposeServiceViewController animateCardSendOrientation:](self, "animateCardSendOrientation:", [mEMORY[0x1E69DC668] statusBarOrientation]);

  [(SLComposeServiceViewController *)self hideKeyboardAnimated:1];
}

- (void)animateCardSendOrientation:(int64_t)orientation
{
  _SLLog(v3, 6, @"SLComposeServiceViewController-animateSendCard");
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView frame];
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
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView setHidden:1];

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

- (void)animateSheetPresentationWithDuration:(double)duration
{
  _SLLog(v3, 7, @"animateSheetPresentationWithDuration:");
  [(SLComposeServiceViewController *)self positionSheetView];
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView frame];
  [(SLComposeServiceViewController *)self _positionVignetteForSheetFrame:?];

  sheetView2 = [(SLComposeServiceViewController *)self sheetView];
  [sheetView2 setHidden:0];

  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  sheetView3 = [(SLComposeServiceViewController *)self sheetView];
  layer = [sheetView3 layer];
  [layer setAllowsGroupOpacity:0];

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v16.a = *MEMORY[0x1E695EFD0];
  *&v16.c = v10;
  *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v17, &v16, 1.26, 1.26);
  sheetView4 = [(SLComposeServiceViewController *)self sheetView];
  v16 = v17;
  [sheetView4 setTransform:&v16];

  sheetView5 = [(SLComposeServiceViewController *)self sheetView];
  [sheetView5 setAlpha:0.0];

  LODWORD(v13) = 1.0;
  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:v13];
  [(SLSheetMasklayer *)self->_vignetteLayer removeSheetCutout];
  [(SLSheetMasklayer *)self->_vignetteLayer removeAllAnimations];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke;
  v15[3] = &unk_1E8176610;
  *&v15[5] = duration;
  v15[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__SLComposeServiceViewController_animateSheetPresentationWithDuration___block_invoke_2;
  v14[3] = &unk_1E8175DB8;
  v14[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:327680 delay:v15 options:v14 animations:duration completion:0.0];
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

- (void)animateSheetCancelWithDuration:(double)duration
{
  [(SLComposeServiceViewController *)self setPreventSheetPositionChanges:1];
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  layer = [sheetView layer];
  [layer setAllowsGroupOpacity:0];

  [(SLSheetMasklayer *)self->_vignetteLayer removeSheetCutout];
  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:0.0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke;
  v8[3] = &unk_1E8176610;
  *&v8[5] = duration;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SLComposeServiceViewController_animateSheetCancelWithDuration___block_invoke_2;
  v7[3] = &unk_1E8175DB8;
  v7[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v8 options:v7 animations:duration completion:0.0];
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
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView setHidden:1];

  [(SLComposeServiceViewController *)self didSelectCancel];
}

- (void)keyboardDidChange:(id)change
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"preferredContentSize"])
  {
    _SLLog(v6, 7, @"Received KVO for preferredContentSize on presented action VC");
    [(SLComposeServiceViewController *)self _presentedViewControllerContentSizeDidChange];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SLComposeServiceViewController;
    [(SLComposeServiceViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setSheetFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  _SLLog(v3, 7, @"SLComposeServiceViewControlller setSheetFrame: %@");

  navigationController = [(SLComposeServiceViewController *)self navigationController];
  view = [navigationController view];
  [view setFrame:{x, y, width, height}];

  maskView = self->_maskView;

  [(UIView *)maskView setFrame:x, y, width, height];
}

- (void)_positionVignetteForSheetFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24 = NSStringFromCGRect(frame);
  _SLLog(v3, 7, @"SLComposeServiceViewControlller _positionVignetteForSheetFrame: %@");

  view = [(SLComposeServiceViewController *)self view];
  [view bounds];
  v11 = v10;
  view2 = [(SLComposeServiceViewController *)self view];
  [view2 bounds];
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
  navigationController = [(SLComposeServiceViewController *)self navigationController];
  view = [navigationController view];

  return view;
}

- (CGSize)_intrinsicSheetSize
{
  contentView = [(SLComposeServiceViewController *)self contentView];
  [contentView invalidateIntrinsicContentSize];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v6 = 70.0;
  }

  else
  {
    v6 = 44.0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      contentView2 = [(SLComposeServiceViewController *)self contentView];
      [contentView2 intrinsicContentSize];
      v12 = v11;
      sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
      configurationItems = [sheetRootViewController configurationItems];
      v15 = v12 + [configurationItems count] * v6 + 44.0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  traitCollection = [(SLComposeServiceViewController *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 2)
  {
    v17 = 44.0;
  }

  else
  {
    v17 = 32.0;
  }

  contentView2 = [(SLComposeServiceViewController *)self contentView];
  [contentView2 intrinsicContentSize];
  v19 = v18;
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  configurationItems = [sheetRootViewController configurationItems];
  v15 = v17 + v19 + [configurationItems count] * v6;
LABEL_12:

  view = [(SLComposeServiceViewController *)self view];
  [view bounds];
  v22 = v21;

  v23 = v22 + -30.0;
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice4 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
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

- (CGRect)sheetFrameForViewController:(id)controller
{
  controllerCopy = controller;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_6;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || ([(SLComposeServiceViewController *)self interfaceOrientation]- 1) >= 2)
  {
LABEL_6:
    currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
    if (objc_opt_respondsToSelector())
    {
      currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom2 = [currentDevice4 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 1 && ([(SLComposeServiceViewController *)self interfaceOrientation]- 3) < 2)
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
  [(SLComposeServiceViewController *)self sheetFrameForViewController:controllerCopy topSpaceProportion:v9 topSpaceOffset:v8];
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

- (CGRect)sheetFrameForViewController:(id)controller topSpaceProportion:(double)proportion topSpaceOffset:(double)offset
{
  controllerCopy = controller;
  [MEMORY[0x1E69DCBB8] sizeForInterfaceOrientation:{-[SLComposeServiceViewController interfaceOrientation](self, "interfaceOrientation")}];
  v11 = v10;
  [(SLComposeServiceViewController *)self _intrinsicSheetSize];
  v13 = v12;
  v15 = v14;
  view = [(SLComposeServiceViewController *)self view];
  [view bounds];
  v18 = v17;

  view2 = [(SLComposeServiceViewController *)self view];
  [view2 bounds];
  v21 = v20 - v11 - v15;

  v22 = v21 * proportion;
  if (v21 * proportion < 20.0)
  {
    v22 = 20.0;
  }

  v23 = v22 + offset;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
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

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (v15 > v18 - (v11 + 15.0))
    {
      v33 = v18 - (v11 + 15.0);
    }

    else
    {
      v33 = v15;
    }

    if (userInterfaceIdiom == 1)
    {
      v18 = v18 - (v11 + 15.0);
      v15 = v33;
    }
  }

  else
  {
  }

  view3 = [(SLComposeServiceViewController *)self view];
  [view3 bounds];
  v36 = v35;

  if (!self->_isPresentingActionViewController)
  {
    if (!self->_autoCompletionViewController || !self->_autoCompletionViewControllerAffectsSheetSize)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  view4 = [(SLComposeServiceViewController *)self view];
  [view4 bounds];
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

  [controllerCopy preferredContentSize];
  v42 = v41;
LABEL_19:
  navigationController = [(SLComposeServiceViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
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
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:proportion];
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:offset];
  v51 = MEMORY[0x1E696AD98];
  traitCollection = [(SLComposeServiceViewController *)self traitCollection];
  v53 = [v51 numberWithInteger:{objc_msgSend(traitCollection, "horizontalSizeClass")}];
  v54 = MEMORY[0x1E696AD98];
  traitCollection2 = [(SLComposeServiceViewController *)self traitCollection];
  v56 = [v54 numberWithInteger:{objc_msgSend(traitCollection2, "verticalSizeClass")}];
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
  traitCollection = [(SLComposeServiceViewController *)self traitCollection];
  if ([traitCollection verticalSizeClass] != 1)
  {

    return 44.0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (!userInterfaceIdiom)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  v10 = MEMORY[0x1E696AD98];
  traitCollection = [(SLComposeServiceViewController *)self traitCollection];
  v12 = [v10 numberWithInteger:{objc_msgSend(traitCollection, "horizontalSizeClass")}];
  v13 = MEMORY[0x1E696AD98];
  traitCollection2 = [(SLComposeServiceViewController *)self traitCollection];
  v21 = [v13 numberWithInteger:{objc_msgSend(traitCollection2, "verticalSizeClass")}];
  _SLLog(v4, 7, @"SLComposeServiceViewController viewWillTransitionToSize: %@ withTransitionCoordinator: horizontalSizeClass %@ verticalSizeClass %@");

  v27.receiver = self;
  v27.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v27 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height, v9, v12, v21];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v26);
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView frame];
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
  [coordinatorCopy animateAlongsideTransition:v24 completion:v22];
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
  view = [(SLComposeServiceViewController *)self view];
  [view bounds];
  [(SLSheetMasklayer *)self->_vignetteLayer setFrame:?];

  [(SLSheetMasklayer *)self->_vignetteLayer setOpacity:0.0];
  [(SLSheetMasklayer *)self->_vignetteLayer setNeedsDisplay];
  [(SLSheetMasklayer *)self->_vignetteLayer setAllowsGroupOpacity:0];
  view2 = [(SLComposeServiceViewController *)self view];
  layer = [view2 layer];
  [layer addSublayer:self->_vignetteLayer];

  v11 = objc_alloc_init(SLSheetRootViewController);
  [(SLComposeServiceViewController *)self setSheetRootViewController:v11];

  title = [(SLComposeServiceViewController *)self title];
  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController setTitle:title];

  v14 = *MEMORY[0x1E69DE3D0];
  sheetRootViewController2 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView = [sheetRootViewController2 tableView];
  [tableView setRowHeight:v14];

  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v17 lineHeight];
  v19 = v18 + v18;
  sheetRootViewController3 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView2 = [sheetRootViewController3 tableView];
  [tableView2 setEstimatedRowHeight:v19];

  sheetRootViewController4 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView3 = [sheetRootViewController4 tableView];
  backgroundView = [tableView3 backgroundView];
  [backgroundView setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  sheetRootViewController5 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView4 = [sheetRootViewController5 tableView];
  backgroundView2 = [tableView4 backgroundView];
  [backgroundView2 setBackgroundColor:clearColor];

  sheetRootViewController6 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView5 = [sheetRootViewController6 tableView];
  [tableView5 setOpaque:0];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  sheetRootViewController7 = [(SLComposeServiceViewController *)self sheetRootViewController];
  tableView6 = [sheetRootViewController7 tableView];
  [tableView6 setBackgroundColor:clearColor2];

  v34 = objc_alloc_init(SLSheetContentView);
  [(SLComposeServiceViewController *)self setContentView:v34];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      contentView = [(SLComposeServiceViewController *)self contentView];
      v39 = contentView;
      v40 = *MEMORY[0x1E69DE788];
      v41 = 120.0;
      v42 = 2;
      goto LABEL_9;
    }
  }

  else
  {
  }

  contentView2 = [(SLComposeServiceViewController *)self contentView];
  v44 = *MEMORY[0x1E69DE788];
  [contentView2 setIntrinsicSize:2 forVerticalSizeClass:{*MEMORY[0x1E69DE788], 138.0}];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v47 = v46;

  contentView = [(SLComposeServiceViewController *)self contentView];
  v39 = contentView;
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
  [contentView setIntrinsicSize:v42 forVerticalSizeClass:{v40, v41}];

  contentView3 = [(SLComposeServiceViewController *)self contentView];
  sheetRootViewController8 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController8 setContentView:contentView3];

  sheetRootViewController9 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController9 setDelegate:self];

  title2 = [(SLComposeServiceViewController *)self title];
  sheetRootViewController10 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController10 setTitle:title2];

  serviceIconImage = self->_serviceIconImage;
  sheetRootViewController11 = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController11 setServiceIconImage:serviceIconImage];

  v55 = [SLSheetNavigationController alloc];
  sheetRootViewController12 = [(SLComposeServiceViewController *)self sheetRootViewController];
  v57 = [(SLSheetNavigationController *)v55 initWithRootViewController:sheetRootViewController12];
  [(SLComposeServiceViewController *)self setNavigationController:v57];

  navigationController = [(SLComposeServiceViewController *)self navigationController];
  [navigationController setDelegate:self];

  navigationController2 = [(SLComposeServiceViewController *)self navigationController];
  [navigationController2 _setBuiltinTransitionStyle:1];

  navigationController3 = [(SLComposeServiceViewController *)self navigationController];
  [navigationController3 willMoveToParentViewController:self];

  navigationController4 = [(SLComposeServiceViewController *)self navigationController];
  [(SLComposeServiceViewController *)self addChildViewController:navigationController4];

  view3 = [(SLComposeServiceViewController *)self view];
  navigationController5 = [(SLComposeServiceViewController *)self navigationController];
  view4 = [navigationController5 view];
  [view3 addSubview:view4];

  navigationController6 = [(SLComposeServiceViewController *)self navigationController];
  [navigationController6 didMoveToParentViewController:self];

  navigationController7 = [(SLComposeServiceViewController *)self navigationController];
  view5 = [navigationController7 view];
  [view5 setAutoresizingMask:5];

  contentView4 = [(SLComposeServiceViewController *)self contentView];
  textView = [contentView4 textView];
  [textView setReturnKeyType:0];

  contentView5 = [(SLComposeServiceViewController *)self contentView];
  textView2 = [contentView5 textView];
  [textView2 setDelegate:self];

  placeholder = [(SLComposeServiceViewController *)self placeholder];
  contentView6 = [(SLComposeServiceViewController *)self contentView];
  placeholderLabel = [contentView6 placeholderLabel];
  [placeholderLabel setText:placeholder];

  contentView7 = [(SLComposeServiceViewController *)self contentView];
  placeholderLabel2 = [contentView7 placeholderLabel];
  [placeholderLabel2 sizeToFit];

  [(SLComposeServiceViewController *)self _updateContentViewWithCharactersRemaining];
  sheetView = [(SLComposeServiceViewController *)self sheetView];
  [sheetView setHidden:1];

  [(SLComposeServiceViewController *)self setSuppressKeyboard:1];
  extensionContext = [(SLComposeServiceViewController *)self extensionContext];
  if (!extensionContext)
  {
    return;
  }

  v79 = extensionContext;
  extensionContext2 = [(SLComposeServiceViewController *)self extensionContext];
  inputItems = [extensionContext2 inputItems];
  if (inputItems)
  {
    v82 = inputItems;
    extensionContext3 = [(SLComposeServiceViewController *)self extensionContext];
    inputItems2 = [extensionContext3 inputItems];
    v85 = [inputItems2 count];

    if (!v85)
    {
      return;
    }

    extensionContext4 = [(SLComposeServiceViewController *)self extensionContext];
    inputItems3 = [extensionContext4 inputItems];
    v79 = [inputItems3 objectAtIndexedSubscript:0];

    attributedTitle = [v79 attributedTitle];
    attributedContentText = [v79 attributedContentText];
    _SLLog(v2, 7, @"SLComposeServiceViewController loadView using extensionItem.attributedTitle %@ extensionItem.attributedContentText %@");

    attributedContentText2 = [v79 attributedContentText];
    string = [attributedContentText2 string];
    contentView8 = [(SLComposeServiceViewController *)self contentView];
    textView3 = [contentView8 textView];
    [textView3 setText:string];

    attachments = [v79 attachments];
    [(SLComposeServiceViewController *)self _convertExtensionItemProvidersToAttachments:attachments];

    [(SLComposeServiceViewController *)self validateContent];
  }

  else
  {
  }
}

- (void)_convertExtensionItemProvidersToAttachments:(id)attachments
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = attachments;
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
  view = [(SLComposeServiceViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:?];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewWillAppear: %@ begin");

  v11.receiver = self;
  v11.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v11 viewWillAppear:appearCopy, v9];
  [(SLComposeServiceViewController *)self updateSheetForVerticalSizeClass];
  [(SLComposeServiceViewController *)self _loadPreviewView];
  configurationItems = [(SLComposeServiceViewController *)self configurationItems];
  if (![configurationItems count])
  {
    sheetActions = [(SLComposeServiceViewController *)self sheetActions];

    configurationItems = sheetActions;
  }

  sheetRootViewController = [(SLComposeServiceViewController *)self sheetRootViewController];
  [sheetRootViewController setConfigurationItems:configurationItems];

  self->_didFirstSheetActionLoad = 1;
  [(SLComposeServiceViewController *)self positionSheetView];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:appearCopy];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewWillAppear: %@ end");
}

- (void)viewDidAppear:(BOOL)appear
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:appear];
  _SLLog(v3, 7, @"SLComposeServiceViewController viewDidAppear: %@");

  self->_wasPresented = 1;
  [(SLComposeServiceViewController *)self setSuppressKeyboard:0, v5];

  [(SLComposeServiceViewController *)self showKeyboardAnimated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v3 viewDidDisappear:disappear];
}

- (void)didReceiveMemoryWarning
{
  _SLLog(v2, 6, @"SheetViewController didReceiveMemoryWarning");
  v4.receiver = self;
  v4.super_class = SLComposeServiceViewController;
  [(SLComposeServiceViewController *)&v4 didReceiveMemoryWarning];
}

- (void)shouldShowNetworkActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  extensionContext = [(SLComposeServiceViewController *)self extensionContext];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:indicatorCopy];
  [extensionContext shouldShowNetworkActivityIndicator:v4];
}

- (void)networkActivityIndicatorNotification:(id)notification
{
  name = [notification name];
  -[SLComposeServiceViewController shouldShowNetworkActivityIndicator:](self, "shouldShowNetworkActivityIndicator:", [name isEqualToString:SLShowNetworkActivityIndicatorNotification]);
}

@end