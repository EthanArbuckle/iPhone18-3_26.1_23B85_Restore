@interface PHPIPWrapperViewController
- (CGSize)preferredContentSize;
- (PHPIPWrapperViewController)init;
- (PHPIPWrapperViewControllerDelegateProtocol)delegate;
- (UIViewController)wrappedViewController;
- (void)_layoutWrappedSubview;
- (void)actionButtonTapped;
- (void)dealloc;
- (void)didAnimatePictureInPictureStop;
- (void)setWrappedViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidResize;
- (void)viewWillResize;
- (void)willAnimatePictureInPictureStart;
- (void)willAnimatePictureInPictureStop;
@end

@implementation PHPIPWrapperViewController

- (PHPIPWrapperViewController)init
{
  v3.receiver = self;
  v3.super_class = PHPIPWrapperViewController;
  return [(PHPIPWrapperViewController *)&v3 initWithNibName:0 bundle:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PHPIPWrapperViewController;
  [(PHPIPWrapperViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(PHPIPWrapperViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(PHPIPWrapperViewController *)self view];
  [v5 setOpaque:0];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHPIPWrapperViewController;
  [(PHPIPWrapperViewController *)&v3 viewDidLayoutSubviews];
  [(PHPIPWrapperViewController *)self _layoutWrappedSubview];
}

- (void)setWrappedViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_wrappedViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_wrappedViewController);
    v7 = [v6 parentViewController];

    if (v7 == self)
    {
      [v6 willMoveToParentViewController:0];
      v8 = [v6 view];
      [v8 removeFromSuperview];

      [v6 removeFromParentViewController];
    }

    objc_storeWeak(&self->_wrappedViewController, obj);

    v5 = obj;
  }
}

- (void)willAnimatePictureInPictureStart
{
  v3 = [(PHPIPWrapperViewController *)self wrappedViewController];

  v4 = sub_10000B2A0();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v22 = 138543362;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Moving content into the wrapping PIP controller", &v22, 0xCu);
    }

    v6 = [(PHPIPWrapperViewController *)self wrappedViewController];
    [(PHPIPWrapperViewController *)self addChildViewController:v6];

    v7 = [(PHPIPWrapperViewController *)self view];
    v8 = [(PHPIPWrapperViewController *)self wrappedViewController];
    v9 = [v8 view];
    [v7 addSubview:v9];

    v10 = [(PHPIPWrapperViewController *)self wrappedViewController];
    [v10 didMoveToParentViewController:self];

    v11 = [(PHPIPWrapperViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(PHPIPWrapperViewController *)self wrappedViewController];
    v21 = [v20 view];
    [v21 setFrame:{v13, v15, v17, v19}];
  }

  else if (v5)
  {
    v22 = 138543362;
    v23 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Warning: Not moving content into wrapped PIP controller because wrappedViewController is nil", &v22, 0xCu);
  }
}

- (void)willAnimatePictureInPictureStop
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "willAnimatePictureInPictureStop", v6, 2u);
  }

  v4 = [(PHPIPWrapperViewController *)self willAnimatePictureInPictureStopCompletionBlock];

  if (v4)
  {
    v5 = [(PHPIPWrapperViewController *)self willAnimatePictureInPictureStopCompletionBlock];
    v5[2](v5, 1);
  }
}

- (void)didAnimatePictureInPictureStop
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP Animation to fullscreen did complete", &v12, 0xCu);
  }

  v4 = [(PHPIPWrapperViewController *)self didAnimatePictureInPictureStopCompletionBlock];

  if (v4)
  {
    v5 = [(PHPIPWrapperViewController *)self delegate];
    v6 = [v5 wrapperViewControllerShouldReturnRestoreWrappedViewControllerHierarchy:self];

    if (v6)
    {
      v7 = [(PHPIPWrapperViewController *)self wrappedViewController];
    }

    else
    {
      v7 = 0;
    }

    v9 = sub_10000B2A0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Calling didAnimatePictureInPictureStopCompletionBlock with viewControllerToSteal: %@", &v12, 0x16u);
    }

    v10 = [(PHPIPWrapperViewController *)self didAnimatePictureInPictureStopCompletionBlock];
    (v10)[2](v10, 1, v7);

    [(PHPIPWrapperViewController *)self setDidAnimatePictureInPictureStopCompletionBlock:0];
  }

  else
  {
    v8 = sub_10000B2A0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Block didAnimatePictureInPictureStopCompletionBlock isn't set, won't restore view controller", &v12, 0xCu);
    }
  }

  v11 = [(PHPIPWrapperViewController *)self delegate];
  [v11 wrapperViewControllerNeedsCleanup:self];
}

- (CGSize)preferredContentSize
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating preferredContentSize to use for the PIP wrapper view controller", &v20, 0xCu);
  }

  v4 = [(PHPIPWrapperViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHPIPWrapperViewController *)self delegate];
    [v6 wrapperViewControllerPreferredContentSize:self];
    v8 = v7;
    v10 = v9;

    v11 = sub_10000B2A0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = self;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v10;
      v12 = "%{public}@: Found delegate with preferred size width=%f, height=%f";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v20, 0x20u);
    }
  }

  else
  {
    v13 = [(PHPIPWrapperViewController *)self wrappedViewController];
    v14 = [v13 conformsToProtocol:&OBJC_PROTOCOL___PHInCallRootViewControllerProtocol];

    if (!v14)
    {
      v10 = 0x4059000000000000;
      v8 = 0x4059000000000000;
      goto LABEL_11;
    }

    v15 = [(PHPIPWrapperViewController *)self wrappedViewController];
    [v15 preferredPIPContentAspectRatio];
    v8 = v16;
    v10 = v17;

    v11 = sub_10000B2A0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = self;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v10;
      v12 = "%{public}@: Found child view controller with preferred size width=%f, height=%f";
      goto LABEL_9;
    }
  }

LABEL_11:
  v18 = *&v8;
  v19 = *&v10;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)actionButtonTapped
{
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP action button tapped, will disconnect the current video call", &v7, 0xCu);
  }

  v4 = +[TUCallCenter sharedInstance];
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 currentVideoCall];
  [v4 disconnectCall:v6];
}

- (void)dealloc
{
  objc_storeWeak(&self->_wrappedViewController, 0);
  v3.receiver = self;
  v3.super_class = PHPIPWrapperViewController;
  [(PHPIPWrapperViewController *)&v3 dealloc];
}

- (void)viewWillResize
{
  [(PHPIPWrapperViewController *)self setPipIsBeingResized:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PHPIPControllerDidStartResizingNotification" object:self];
}

- (void)viewDidResize
{
  [(PHPIPWrapperViewController *)self setPipIsBeingResized:0];
  v3 = sub_10000B2A0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: PIP view did resize", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"PHPIPControllerDidFinishResizingNotification" object:self];
}

- (void)_layoutWrappedSubview
{
  v3 = [(PHPIPWrapperViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(PHPIPWrapperViewController *)self preferredContentSize];
  if (v8 == v9)
  {
    if (v5 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else if (v8 <= v9)
  {
    v11 = v8 * (v7 / fmax(v9, 1.0));
    v10 = v7;
  }

  else
  {
    v10 = v9 * (v5 / fmax(v8, 1.0));
    v11 = v5;
  }

  v13 = [(PHPIPWrapperViewController *)self wrappedViewController];
  v12 = [v13 view];
  [v12 setFrame:{(v5 - v11) * 0.5, (v7 - v10) * 0.5, v11, v10}];
}

- (UIViewController)wrappedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_wrappedViewController);

  return WeakRetained;
}

- (PHPIPWrapperViewControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end