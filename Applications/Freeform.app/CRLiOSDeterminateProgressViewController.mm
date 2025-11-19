@interface CRLiOSDeterminateProgressViewController
+ (id)progressViewControllerWithTitle:(id)a3 crlProgress:(id)a4 cancelHandler:(id)a5;
+ (id)progressViewControllerWithTitle:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (CRLiOSDeterminateProgressViewController)init;
- (CRLiOSDeterminateProgressViewControllerDelegate)delegate;
- (id)adaptiveViewController;
- (id)cancelButtonTitleNonNil;
- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (int64_t)preferredStatusBarStyle;
- (void)animateTransition:(id)a3;
- (void)cancelAnimated:(BOOL)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)runCancellationHandlers;
- (void)setCancelButtonTitle:(id)a3;
- (void)setCancelButtonVisible:(BOOL)a3;
- (void)setProgress:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupControlColors;
- (void)startObservingProgress:(id)a3;
- (void)stopObservingProgress:(id)a3;
- (void)updateMessageLabelWithProgress:(id)a3;
- (void)updateProgressViewDisplayWithProgress:(id)a3;
- (void)updateProgressViewWithProgress:(id)a3;
- (void)updateViewSize;
- (void)viewDidLoad;
@end

@implementation CRLiOSDeterminateProgressViewController

- (CRLiOSDeterminateProgressViewController)init
{
  v3 = [(CRLiOSDeterminateProgressViewController *)self nibName];
  v6.receiver = self;
  v6.super_class = CRLiOSDeterminateProgressViewController;
  v4 = [(CRLiOSDeterminateProgressViewController *)&v6 initWithNibName:v3 bundle:0];

  if (v4)
  {
    [(CRLiOSDeterminateProgressViewController *)v4 setModalPresentationStyle:4];
    [(CRLiOSDeterminateProgressViewController *)v4 setTransitioningDelegate:v4];
    v4->_shouldTouchesOutsideCancel = 1;
  }

  return v4;
}

+ (id)progressViewControllerWithTitle:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  [v11 loadViewIfNeeded];
  [v11 setTitle:v10];

  [v11 setMessage:&stru_1018BCA28];
  [v11 setProgress:v9];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Cancel" value:0 table:0];
  [v11 setCancelButtonTitle:v13];

  [v11 setCancelHandler:v8];

  return v11;
}

+ (id)progressViewControllerWithTitle:(id)a3 crlProgress:(id)a4 cancelHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [NSProgress crl_progressWithCRLProgress:a4 totalUnitCount:100];
  v11 = [a1 progressViewControllerWithTitle:v9 progress:v10 cancelHandler:v8];

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
  v3 = [(CRLiOSDeterminateProgressViewController *)self view];
  v4 = [v3 layer];
  [v4 setCornerRadius:8.0];

  v5 = [(CRLiOSDeterminateProgressViewController *)self title];
  [(UILabel *)self->_titleLabel setText:v5];

  [(UILabel *)self->_messageLabel setText:&stru_1018BCA28];
  cancelButton = self->_cancelButton;
  v7 = [(CRLiOSDeterminateProgressViewController *)self cancelButtonTitleNonNil];
  [(UIButton *)cancelButton setTitle:v7 forState:0];

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
  v4 = [(CRLiOSDeterminateProgressViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor labelColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v5 forKeyPath:@"titleLabel.textColor"];

  v6 = +[UIColor secondaryLabelColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v6 forKeyPath:@"messageLabel.textColor"];

  v7 = +[UIColor separatorColor];
  [(CRLiOSDeterminateProgressViewController *)self setValue:v7 forKeyPath:@"dividerLine.backgroundColor"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_1019F0AB8 == a6)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v21 = sub_1004A5488;
    v22 = &unk_10183AE28;
    v23 = self;
    v24 = v11;
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

  if (off_1019F0AC0 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v16 = sub_1004A5598;
    v17 = &unk_10183AE28;
    v18 = self;
    v19 = v11;
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
  [(CRLiOSDeterminateProgressViewController *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_12:
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLiOSDeterminateProgressViewController;
  v4 = a3;
  [(CRLiOSDeterminateProgressViewController *)&v5 setTitle:v4];
  [(UILabel *)self->_titleLabel setText:v4, v5.receiver, v5.super_class];
}

- (void)setProgress:(id)a3
{
  v5 = a3;
  progress = self->_progress;
  if (v5 | progress)
  {
    v8 = v5;
    v7 = [(NSProgress *)progress isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      [(CRLiOSDeterminateProgressViewController *)self stopObservingProgress:self->_progress];
      objc_storeStrong(&self->_progress, a3);
      [(CRLiOSDeterminateProgressViewController *)self updateProgressViewWithProgress:v8];
      self->_cancelled = 0;
      [(CRLiOSDeterminateProgressViewController *)self startObservingProgress:v8];
      v5 = v8;
    }
  }
}

- (void)startObservingProgress:(id)a3
{
  v4 = off_1019F0AB8;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"cancelled" options:5 context:v4];
  [v5 addObserver:self forKeyPath:@"fractionCompleted" options:5 context:off_1019F0AB8];
  [v5 addObserver:self forKeyPath:@"isIndeterminate" options:4 context:off_1019F0AC0];
}

- (void)stopObservingProgress:(id)a3
{
  v4 = off_1019F0AB8;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"cancelled" context:v4];
  [v5 removeObserver:self forKeyPath:@"fractionCompleted" context:off_1019F0AB8];
  [v5 removeObserver:self forKeyPath:@"isIndeterminate" context:off_1019F0AC0];
}

- (void)updateProgressViewWithProgress:(id)a3
{
  progressView = self->_progressView;
  if (a3)
  {
    [(UIProgressView *)progressView setObservedProgress:?];
  }

  else
  {
    [(UIProgressView *)progressView setProgress:0.0];
  }
}

- (void)updateProgressViewDisplayWithProgress:(id)a3
{
  v4 = [a3 isIndeterminate];
  v5 = [(UIActivityIndicatorView *)self->_spinnerView isHidden];
  v6 = v4 & v5;
  if (v6 == 1)
  {
    [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  }

  else
  {
    if ((v4 | v5))
    {
      return;
    }

    [(UIActivityIndicatorView *)self->_spinnerView stopAnimating];
  }

  progressView = self->_progressView;

  [(UIProgressView *)progressView setHidden:v6];
}

- (void)updateMessageLabelWithProgress:(id)a3
{
  v7 = a3;
  v4 = [(CRLiOSDeterminateProgressViewController *)self delegate];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 determinateProgressViewController:self messageLabelTextForProgress:v7];
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
    v4 = [(CRLiOSDeterminateProgressViewController *)self view];
    [v4 frame];
    v6 = v5;
    v8 = v7;

    v9 = [(CRLiOSDeterminateProgressViewController *)self view];
    [v9 setFrame:{v6, v8, 270.0, v3}];
  }
}

- (void)setCancelButtonVisible:(BOOL)a3
{
  if (self->_cancelButtonVisible != a3)
  {
    self->_cancelButtonVisible = a3;
    [(CRLiOSDeterminateProgressViewController *)self updateViewSize];
  }
}

- (void)setCancelButtonTitle:(id)a3
{
  v4 = a3;
  cancelButtonTitle = self->_cancelButtonTitle;
  v6 = v4;
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
        v9 = [v8 second];

        if (v9)
        {
          v10 = [v8 first];

          if (v10)
          {
            v11 = [v8 first];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1004A5E60;
            block[3] = &unk_10183AB38;
            block[4] = v8;
            dispatch_async(v11, block);
          }

          else
          {
            v12 = [v8 second];
            v12[2]();
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

- (void)cancelAnimated:(BOOL)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v11 = sub_1004A5FA8;
  v12 = &unk_1018675F8;
  v14 = a4;
  v15 = a5;
  v13 = self;
  v16 = a3;
  v8 = v14;
  v9 = v15;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v11(&v10);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, &v10);
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[TSDiOSModalPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v7];

  [(TSDiOSModalPresentationController *)v9 setDelegate:self];

  return v9;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([v4 isAnimated])
  {
    [(CRLiOSDeterminateProgressViewController *)self transitionDuration:v4];
    v5 = v6;
  }

  if ([(CRLiOSDeterminateProgressViewController *)self isBeingPresented])
  {
    v7 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
    v8 = [v7 view];
    [v4 finalFrameForViewController:v7];
    [v8 setFrame:?];
    CGAffineTransformMakeScale(&v24, 1.2, 1.2);
    v23 = v24;
    [v8 setTransform:&v23];
    [v8 setAlpha:0.0];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1004A6740;
    v21[3] = &unk_10183AB38;
    v22 = v8;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1004A6798;
    v19[3] = &unk_10183D270;
    v20 = v4;
    v9 = v8;
    [UIView animateWithDuration:0x20000 delay:v21 options:v19 animations:v5 completion:0.0];

LABEL_7:
    goto LABEL_17;
  }

  if ([(CRLiOSDeterminateProgressViewController *)self isBeingDismissed])
  {
    [v4 viewForKey:UITransitionContextFromViewKey];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1004A67A4;
    v18 = v17[3] = &unk_10183AB38;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1004A67B0;
    v15[3] = &unk_10183D270;
    v16 = v4;
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
    sub_10137FBCC(v4, v10, v11);
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
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:470 isFatal:0 description:"Unknown transition: %@", v4];

  [v4 completeTransition:1];
LABEL_17:
}

- (id)adaptiveViewController
{
  v3 = [[CRLiOSSheetViewController alloc] initWithContentViewController:self];
  [(CRLiOSSheetViewController *)v3 setShouldStretchWidth:0];
  [(CRLiOSSheetViewController *)v3 setShouldTouchesOutsideCancel:[(CRLiOSDeterminateProgressViewController *)self shouldTouchesOutsideCancel]];
  v4 = [(CRLiOSDeterminateProgressViewController *)self cancelButtonTitleNonNil];
  [(CRLiOSSheetViewController *)v3 addCancelButtonWithTitle:v4];

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

- (id)presentationController:(id)a3 viewControllerForAdaptivePresentationStyle:(int64_t)a4
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 presentedViewController];

  v7 = sub_100014370(v5, v6);

  v8 = [v7 adaptiveViewController];

  return v8;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 presentedViewController];

  v9 = sub_100013F00(v7, v8);

  [v9 setCancelButtonVisible:a4 == -1];
}

- (CRLiOSDeterminateProgressViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end