@interface CRLiOSDeterminateProgressViewController
+ (id)progressViewControllerWithTitle:(id)title crlProgress:(id)progress cancelHandler:(id)handler;
+ (id)progressViewControllerWithTitle:(id)title progress:(id)progress cancelHandler:(id)handler;
- (CRLiOSDeterminateProgressViewController)init;
- (CRLiOSDeterminateProgressViewControllerDelegate)delegate;
- (id)adaptiveViewController;
- (id)cancelButtonTitleNonNil;
- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (int64_t)preferredStatusBarStyle;
- (void)animateTransition:(id)transition;
- (void)cancelAnimated:(BOOL)animated completionQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)runCancellationHandlers;
- (void)setCancelButtonTitle:(id)title;
- (void)setCancelButtonVisible:(BOOL)visible;
- (void)setProgress:(id)progress;
- (void)setTitle:(id)title;
- (void)setupControlColors;
- (void)startObservingProgress:(id)progress;
- (void)stopObservingProgress:(id)progress;
- (void)updateMessageLabelWithProgress:(id)progress;
- (void)updateProgressViewDisplayWithProgress:(id)progress;
- (void)updateProgressViewWithProgress:(id)progress;
- (void)updateViewSize;
- (void)viewDidLoad;
@end

@implementation CRLiOSDeterminateProgressViewController

- (CRLiOSDeterminateProgressViewController)init
{
  nibName = [(CRLiOSDeterminateProgressViewController *)self nibName];
  v6.receiver = self;
  v6.super_class = CRLiOSDeterminateProgressViewController;
  v4 = [(CRLiOSDeterminateProgressViewController *)&v6 initWithNibName:nibName bundle:0];

  if (v4)
  {
    [(CRLiOSDeterminateProgressViewController *)v4 setModalPresentationStyle:4];
    [(CRLiOSDeterminateProgressViewController *)v4 setTransitioningDelegate:v4];
    v4->_shouldTouchesOutsideCancel = 1;
  }

  return v4;
}

+ (id)progressViewControllerWithTitle:(id)title progress:(id)progress cancelHandler:(id)handler
{
  handlerCopy = handler;
  progressCopy = progress;
  titleCopy = title;
  v11 = objc_alloc_init(self);
  [v11 loadViewIfNeeded];
  [v11 setTitle:titleCopy];

  [v11 setMessage:&stru_1018BCA28];
  [v11 setProgress:progressCopy];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Cancel" value:0 table:0];
  [v11 setCancelButtonTitle:v13];

  [v11 setCancelHandler:handlerCopy];

  return v11;
}

+ (id)progressViewControllerWithTitle:(id)title crlProgress:(id)progress cancelHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v10 = [NSProgress crl_progressWithCRLProgress:progress totalUnitCount:100];
  v11 = [self progressViewControllerWithTitle:titleCopy progress:v10 cancelHandler:handlerCopy];

  return v11;
}

- (int64_t)preferredStatusBarStyle
{
  if (self->_didOverrideOverridePreferredStatusBarStyle)
  {

    return [(CRLiOSDeterminateProgressViewController *)self overridePreferredStatusBarStyle];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = CRLiOSDeterminateProgressViewController;
    return [(CRLiOSDeterminateProgressViewController *)&v5 preferredStatusBarStyle];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CRLiOSDeterminateProgressViewController;
  [(CRLiOSDeterminateProgressViewController *)&v8 viewDidLoad];
  [(CRLiOSDeterminateProgressViewController *)self setupControlColors];
  [(CRLiOSDeterminateProgressViewController *)self updateViewSize];
  view = [(CRLiOSDeterminateProgressViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:8.0];

  title = [(CRLiOSDeterminateProgressViewController *)self title];
  [(UILabel *)self->_titleLabel setText:title];

  [(UILabel *)self->_messageLabel setText:&stru_1018BCA28];
  cancelButton = self->_cancelButton;
  cancelButtonTitleNonNil = [(CRLiOSDeterminateProgressViewController *)self cancelButtonTitleNonNil];
  [(UIButton *)cancelButton setTitle:cancelButtonTitleNonNil forState:0];

  [(CRLiOSDeterminateProgressViewController *)self updateProgressViewWithProgress:self->_progress];
  [(CRLiOSDeterminateProgressViewController *)self updateMessageLabelWithProgress:self->_progress];
}

- (void)dealloc
{
  [(CRLiOSDeterminateProgressViewController *)self stopObservingProgress:self->_progress];
  v3.receiver = self;
  v3.super_class = CRLiOSDeterminateProgressViewController;
  [(CRLiOSDeterminateProgressViewController *)&v3 dealloc];
}

- (void)setupControlColors
{
  v3 = +[UIColor secondarySystemGroupedBackgroundColor];
  view = [(CRLiOSDeterminateProgressViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIColor labelColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v5 forKeyPath:@"titleLabel.textColor"];

  v6 = +[UIColor secondaryLabelColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v6 forKeyPath:@"messageLabel.textColor"];

  v7 = +[UIColor separatorColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v7 forKeyPath:@"dividerLine.backgroundColor"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_1019F0AB8 == context)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v21 = sub_1004A5488;
    v22 = &unk_10183AE28;
    selfCopy = self;
    v24 = objectCopy;
    if (+[NSThread isMainThread])
    {
      v21(v20);
      goto LABEL_12;
    }

    v13 = v20;
LABEL_11:
    dispatch_async(&_dispatch_main_q, v13);
    goto LABEL_12;
  }

  if (off_1019F0AC0 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v16 = sub_1004A5598;
    v17 = &unk_10183AE28;
    selfCopy2 = self;
    v19 = objectCopy;
    if (+[NSThread isMainThread])
    {
      v16(block);
      goto LABEL_12;
    }

    v13 = block;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = CRLiOSDeterminateProgressViewController;
  [(CRLiOSDeterminateProgressViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_12:
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = CRLiOSDeterminateProgressViewController;
  titleCopy = title;
  [(CRLiOSDeterminateProgressViewController *)&v5 setTitle:titleCopy];
  [(UILabel *)self->_titleLabel setText:titleCopy, v5.receiver, v5.super_class];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progressCopy | progress)
  {
    v8 = progressCopy;
    v7 = [(NSProgress *)progress isEqual:progressCopy];
    progressCopy = v8;
    if ((v7 & 1) == 0)
    {
      [(CRLiOSDeterminateProgressViewController *)self stopObservingProgress:self->_progress];
      objc_storeStrong(&self->_progress, progress);
      [(CRLiOSDeterminateProgressViewController *)self updateProgressViewWithProgress:v8];
      self->_cancelled = 0;
      [(CRLiOSDeterminateProgressViewController *)self startObservingProgress:v8];
      progressCopy = v8;
    }
  }
}

- (void)startObservingProgress:(id)progress
{
  v4 = off_1019F0AB8;
  progressCopy = progress;
  [progressCopy addObserver:self forKeyPath:@"cancelled" options:5 context:v4];
  [progressCopy addObserver:self forKeyPath:@"fractionCompleted" options:5 context:off_1019F0AB8];
  [progressCopy addObserver:self forKeyPath:@"isIndeterminate" options:4 context:off_1019F0AC0];
}

- (void)stopObservingProgress:(id)progress
{
  v4 = off_1019F0AB8;
  progressCopy = progress;
  [progressCopy removeObserver:self forKeyPath:@"cancelled" context:v4];
  [progressCopy removeObserver:self forKeyPath:@"fractionCompleted" context:off_1019F0AB8];
  [progressCopy removeObserver:self forKeyPath:@"isIndeterminate" context:off_1019F0AC0];
}

- (void)updateProgressViewWithProgress:(id)progress
{
  progressView = self->_progressView;
  if (progress)
  {
    [(UIProgressView *)progressView setObservedProgress:?];
  }

  else
  {
    [(UIProgressView *)progressView setProgress:0.0];
  }
}

- (void)updateProgressViewDisplayWithProgress:(id)progress
{
  isIndeterminate = [progress isIndeterminate];
  isHidden = [(UIActivityIndicatorView *)self->_spinnerView isHidden];
  v6 = isIndeterminate & isHidden;
  if (v6 == 1)
  {
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  }

  else
  {
    if ((isIndeterminate | isHidden))
    {
      return;
    }

    [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
  }

  progressView = self->_progressView;

  [(UIProgressView *)progressView setHidden:v6];
}

- (void)updateMessageLabelWithProgress:(id)progress
{
  progressCopy = progress;
  delegate = [(CRLiOSDeterminateProgressViewController *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    v6 = [delegate determinateProgressViewController:self messageLabelTextForProgress:progressCopy];
    [(UILabel *)self->_messageLabel setText:v6];
  }
}

- (void)updateViewSize
{
  if (self->_cancelButtonVisible)
  {
    v3 = 125.0;
  }

  else
  {
    v3 = 82.0;
  }

  [(CRLiOSDeterminateProgressViewController *)self setPreferredContentSize:270.0, v3];
  if ([(CRLiOSDeterminateProgressViewController *)self isViewLoaded])
  {
    view = [(CRLiOSDeterminateProgressViewController *)self view];
    [view frame];
    v6 = v5;
    v8 = v7;

    view2 = [(CRLiOSDeterminateProgressViewController *)self view];
    [view2 setFrame:{v6, v8, 270.0, v3}];
  }
}

- (void)setCancelButtonVisible:(BOOL)visible
{
  if (self->_cancelButtonVisible != visible)
  {
    self->_cancelButtonVisible = visible;
    [(CRLiOSDeterminateProgressViewController *)self updateViewSize];
  }
}

- (void)setCancelButtonTitle:(id)title
{
  titleCopy = title;
  cancelButtonTitle = self->_cancelButtonTitle;
  v6 = titleCopy;
  v10 = v6;
  if (cancelButtonTitle == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !cancelButtonTitle)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)cancelButtonTitle isEqualToString:v6];

  v8 = v10;
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    cancelButtonTitle = self->_cancelButtonTitle;
    self->_cancelButtonTitle = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (id)cancelButtonTitleNonNil
{
  cancelButtonTitle = self->_cancelButtonTitle;
  if (cancelButtonTitle)
  {
    v3 = cancelButtonTitle;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"Cancel" value:0 table:0];
  }

  return v3;
}

- (void)runCancellationHandlers
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = 8;
  v3 = self->_cancellationHandlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        second = [v8 second];

        if (second)
        {
          first = [v8 first];

          if (first)
          {
            first2 = [v8 first];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1004A5E60;
            block[3] = &unk_10183AB38;
            block[4] = v8;
            dispatch_async(first2, block);
          }

          else
          {
            second2 = [v8 second];
            second2[2]();
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [*(&self->super.super.super.isa + v14) removeAllObjects];
  cancelHandler = self->_cancelHandler;
  if (cancelHandler)
  {
    cancelHandler[2]();
  }
}

- (void)cancelAnimated:(BOOL)animated completionQueue:(id)queue completionHandler:(id)handler
{
  v11 = sub_1004A5FA8;
  v12 = &unk_1018675F8;
  queueCopy = queue;
  handlerCopy = handler;
  selfCopy = self;
  animatedCopy = animated;
  v8 = queueCopy;
  v9 = handlerCopy;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v11(&v10);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &v10);
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = [[TSDiOSModalPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [(TSDiOSModalPresentationController *)v9 setDelegate:self];

  return v9;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = 0.0;
  if ([transitionCopy isAnimated])
  {
    [(CRLiOSDeterminateProgressViewController *)self transitionDuration:transitionCopy];
    v5 = v6;
  }

  if ([(CRLiOSDeterminateProgressViewController *)self isBeingPresented])
  {
    v7 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
    view = [v7 view];
    [transitionCopy finalFrameForViewController:v7];
    [view setFrame:?];
    CGAffineTransformMakeScale(&v24, 1.2, 1.2);
    v23 = v24;
    [view setTransform:&v23];
    [view setAlpha:0.0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1004A6740;
    v21[3] = &unk_10183AB38;
    v22 = view;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1004A6798;
    v19[3] = &unk_10183D270;
    v20 = transitionCopy;
    v9 = view;
    [UIView animateWithDuration:0x20000 delay:v21 options:v19 animations:v5 completion:0.0];

LABEL_7:
    goto LABEL_17;
  }

  if ([(CRLiOSDeterminateProgressViewController *)self isBeingDismissed])
  {
    [transitionCopy viewForKey:UITransitionContextFromViewKey];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1004A67A4;
    v18 = v17[3] = &unk_10183AB38;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004A67B0;
    v15[3] = &unk_10183D270;
    v16 = transitionCopy;
    v7 = v18;
    [UIView animateWithDuration:0x20000 delay:v17 options:v15 animations:v5 completion:0.0];

    goto LABEL_7;
  }

  v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10137FBB8();
  }

  v11 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10137FBCC(transitionCopy, v10, v11);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137FC88();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v12, v10);
  }

  v13 = [NSString stringWithUTF8String:"[CRLiOSDeterminateProgressViewController animateTransition:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSDeterminateProgressViewController.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:470 isFatal:0 description:"Unknown transition: %@", transitionCopy];

  [transitionCopy completeTransition:1];
LABEL_17:
}

- (id)adaptiveViewController
{
  v3 = [[CRLiOSSheetViewController alloc] initWithContentViewController:self];
  [(CRLiOSSheetViewController *)v3 setShouldStretchWidth:0];
  [(CRLiOSSheetViewController *)v3 setShouldTouchesOutsideCancel:[(CRLiOSDeterminateProgressViewController *)self shouldTouchesOutsideCancel]];
  cancelButtonTitleNonNil = [(CRLiOSDeterminateProgressViewController *)self cancelButtonTitleNonNil];
  [(CRLiOSSheetViewController *)v3 addCancelButtonWithTitle:cancelButtonTitleNonNil];

  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004A6978;
  v6[3] = &unk_10183AF10;
  objc_copyWeak(&v7, &location);
  [(CRLiOSSheetViewController *)v3 setCancelHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v3;
}

- (id)presentationController:(id)controller viewControllerForAdaptivePresentationStyle:(int64_t)style
{
  controllerCopy = controller;
  v5 = objc_opt_class();
  presentedViewController = [controllerCopy presentedViewController];

  v7 = sub_100014370(v5, presentedViewController);

  adaptiveViewController = [v7 adaptiveViewController];

  return adaptiveViewController;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  v7 = objc_opt_class();
  presentedViewController = [controllerCopy presentedViewController];

  v9 = sub_100013F00(v7, presentedViewController);

  [v9 setCancelButtonVisible:style == -1];
}

- (CRLiOSDeterminateProgressViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end