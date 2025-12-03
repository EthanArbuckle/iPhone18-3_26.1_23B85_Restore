@interface PPKPhotoEditingViewController
- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar;
- (BOOL)canHandleAdjustmentData:(id)data;
- (void)_updateUndoRedoButtons;
- (void)cancelContentEditing;
- (void)finishContentEditingWithCompletionHandler:(id)handler;
- (void)startContentEditingWithInput:(id)input placeholderImage:(id)image;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PPKPhotoEditingViewController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PPKPhotoEditingViewController;
  [(PPKPhotoEditingViewController *)&v21 viewDidLoad];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v2 = qword_1000087E0;
  v26 = qword_1000087E0;
  if (!qword_1000087E0)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001D98;
    v22[3] = &unk_100004238;
    v22[4] = &v23;
    sub_100001D98(v22);
    v2 = v24[3];
  }

  v3 = v2;
  _Block_object_dispose(&v23, 8);
  v4 = [[v2 alloc] initWithImageAnalysisEnabled:0];
  [v4 setAnnotationEditingEnabled:0];
  [v4 setPencilAlwaysDraws:1];
  [v4 setDelegate:self];
  [(PPKPhotoEditingViewController *)self setMarkupVC:v4];
  [(PPKPhotoEditingViewController *)self addChildViewController:v4];
  view = [v4 view];
  view2 = [(PPKPhotoEditingViewController *)self view];
  [view2 addSubview:view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [view topAnchor];
  topAnchor2 = [view2 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v17;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27[1] = v14;
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [view2 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v27[2] = v9;
  rightAnchor = [view rightAnchor];
  rightAnchor2 = [view2 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v27[3] = v12;
  v13 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  [v4 didMoveToParentViewController:self];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PPKPhotoEditingViewController;
  [(PPKPhotoEditingViewController *)&v4 traitCollectionDidChange:change];
  [(PPKPhotoEditingViewController *)self _updateUndoRedoButtons];
}

- (BOOL)canHandleAdjustmentData:(id)data
{
  formatIdentifier = [data formatIdentifier];
  if ([formatIdentifier isEqualToString:@"com.apple.Markup"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [formatIdentifier isEqualToString:@"com.apple.PaperKit.Markup"];
  }

  return v4;
}

- (void)startContentEditingWithInput:(id)input placeholderImage:(id)image
{
  inputCopy = input;
  imageCopy = image;
  [(PPKPhotoEditingViewController *)self setInput:inputCopy];
  adjustmentData = [inputCopy adjustmentData];
  data = [adjustmentData data];

  markupVC = [(PPKPhotoEditingViewController *)self markupVC];
  [markupVC setAnnotationEditingEnabled:1];

  markupVC2 = [(PPKPhotoEditingViewController *)self markupVC];
  fullSizeImageURL = [inputCopy fullSizeImageURL];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001504;
  v14[3] = &unk_1000041C0;
  v14[4] = self;
  v15 = inputCopy;
  v13 = inputCopy;
  [markupVC2 loadWithURL:fullSizeImageURL archivedModelData:data placeholderImage:imageCopy completionHandler:v14];
}

- (void)finishContentEditingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(PPKPhotoEditingViewController *)self setIsWritingOutputDoNotTearDown:1];
  markupVC = [(PPKPhotoEditingViewController *)self markupVC];
  [markupVC setAnnotationEditingEnabled:0];

  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000169C;
  v8[3] = &unk_100004210;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, v8);
}

- (void)cancelContentEditing
{
  markupVC = [(PPKPhotoEditingViewController *)self markupVC];
  [markupVC setAnnotationEditingEnabled:0];

  if (![(PPKPhotoEditingViewController *)self isWritingOutputDoNotTearDown])
  {
    markupVC2 = [(PPKPhotoEditingViewController *)self markupVC];
    [markupVC2 documentDidCloseTeardown];
  }
}

- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar
{
  traitCollection = [(PPKPhotoEditingViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    traitCollection2 = [(PPKPhotoEditingViewController *)self traitCollection];
    v4 = [traitCollection2 userInterfaceIdiom] == 0;
  }

  return v4;
}

- (void)_updateUndoRedoButtons
{
  extensionContext = [(PPKPhotoEditingViewController *)self extensionContext];
  sub_100000EB0();
  if (objc_opt_isKindOfClass())
  {
    if ([(PPKPhotoEditingViewController *)self _shouldShowUndoRedoButtonsInNavigationBar])
    {
      markupVC = [(PPKPhotoEditingViewController *)self markupVC];
      undoManager = [markupVC undoManager];
      [extensionContext setUndoManagerForBarButtons:undoManager];
    }

    else
    {
      [extensionContext setUndoManagerForBarButtons:0];
    }
  }
}

@end