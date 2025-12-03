@interface EXPlaceholderViewController
- (EXPlaceholderViewController)init;
- (EXPlaceholderViewController)initWithCoder:(id)coder;
- (NSTimer)timer;
- (void)hostViewController:(id)controller didBeginHosting:(id)hosting;
- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error;
- (void)hostViewController:(id)controller didPrepareToHost:(id)host;
- (void)loadView;
- (void)setState:(unint64_t)state;
@end

@implementation EXPlaceholderViewController

- (EXPlaceholderViewController)init
{
  v5.receiver = self;
  v5.super_class = EXPlaceholderViewController;
  v2 = [(EXPlaceholderViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    [(EXPlaceholderViewController *)v2 setState:0];
  }

  return v3;
}

- (EXPlaceholderViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = EXPlaceholderViewController;
  v3 = [(EXPlaceholderViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(EXPlaceholderViewController *)v3 setState:0];
  }

  return v4;
}

- (void)loadView
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  mEMORY[0x1E6966CA0] = [MEMORY[0x1E6966CA0] sharedInstance];
  defaultPlaceholderViewControllerShowsState = [mEMORY[0x1E6966CA0] defaultPlaceholderViewControllerShowsState];

  if (defaultPlaceholderViewControllerShowsState)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setHidesWhenStopped:1];
    [(EXPlaceholderViewController *)self setActivityView:v6];
    [v3 addSubview:v6];
    v30 = MEMORY[0x1E696ACD8];
    centerXAnchor = [v6 centerXAnchor];
    centerXAnchor2 = [v3 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v33[0] = v9;
    centerYAnchor = [v6 centerYAnchor];
    centerYAnchor2 = [v3 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v33[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    [v30 activateConstraints:v13];

    v31 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"puzzlepiece"];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v31];
    completeIcon = self->_completeIcon;
    self->_completeIcon = v14;

    [(UIImageView *)self->_completeIcon setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_completeIcon setHidden:1];
    [v3 addSubview:self->_completeIcon];
    v25 = MEMORY[0x1E696ACD8];
    heightAnchor = [(UIImageView *)self->_completeIcon heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:64.0];
    v32[0] = v28;
    widthAnchor = [(UIImageView *)self->_completeIcon widthAnchor];
    heightAnchor2 = [(UIImageView *)self->_completeIcon heightAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v32[1] = v16;
    centerXAnchor3 = [(UIImageView *)self->_completeIcon centerXAnchor];
    centerXAnchor4 = [v3 centerXAnchor];
    v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v32[2] = v19;
    centerYAnchor3 = [(UIImageView *)self->_completeIcon centerYAnchor];
    centerYAnchor4 = [v3 centerYAnchor];
    v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v32[3] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v25 activateConstraints:v23];
  }

  [(EXPlaceholderViewController *)self setView:v3];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)setState:(unint64_t)state
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_initWeak(&location, self);
  v5 = _EXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [EXPlaceholderViewController setState:];
  }

  mEMORY[0x1E6966CA0] = [MEMORY[0x1E6966CA0] sharedInstance];
  defaultPlaceholderViewControllerShowsState = [mEMORY[0x1E6966CA0] defaultPlaceholderViewControllerShowsState];

  if (defaultPlaceholderViewControllerShowsState)
  {
    if (state == 1)
    {
      v8 = MEMORY[0x1E695DFF0];
      mEMORY[0x1E6966CA0]2 = [MEMORY[0x1E6966CA0] sharedInstance];
      [mEMORY[0x1E6966CA0]2 defaultPlaceholderDelayBeforeShowingLoadingIndicator];
      v11 = v10;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __40__EXPlaceholderViewController_setState___block_invoke;
      v21 = &unk_1E8401D80;
      objc_copyWeak(&v22, &location);
      v12 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v18 block:v11];
      [(EXPlaceholderViewController *)self setTimer:v12, v18, v19, v20, v21];

      objc_destroyWeak(&v22);
    }

    else
    {
      timer = [(EXPlaceholderViewController *)self timer];
      [timer invalidate];

      if (state == 2)
      {
        v14 = _EXDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [EXPlaceholderViewController setState:];
        }

        [(UIActivityIndicatorView *)self->_activityView startAnimating];
LABEL_19:
        if (self->_state == 4)
        {
          v17 = _EXDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [EXPlaceholderViewController setState:];
          }
        }

        [(UIImageView *)self->_completeIcon setHidden:1];
        goto LABEL_24;
      }
    }

    if (self->_state == 2)
    {
      v15 = _EXDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [EXPlaceholderViewController setState:];
      }
    }

    [(UIActivityIndicatorView *)self->_activityView stopAnimating];
    if (state - 3 <= 1)
    {
      v16 = _EXDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [EXPlaceholderViewController setState:];
      }

      [(UIImageView *)self->_completeIcon setHidden:0];
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_24:
  self->_state = state;
  objc_destroyWeak(&location);
}

void __40__EXPlaceholderViewController_setState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:2];
}

- (void)hostViewController:(id)controller didPrepareToHost:(id)host
{
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EXPlaceholderViewController hostViewController:didPrepareToHost:];
  }
}

- (void)hostViewController:(id)controller didBeginHosting:(id)hosting
{
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EXPlaceholderViewController hostViewController:didBeginHosting:];
  }
}

- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error
{
  errorCopy = error;
  v7 = _EXDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [EXPlaceholderViewController hostViewController:didEndHosting:error:];
  }

  if (errorCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  [(EXPlaceholderViewController *)self setState:v8];
}

- (NSTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

- (void)setState:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setState:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setState:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)hostViewController:didPrepareToHost:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostViewController:didBeginHosting:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)hostViewController:didEndHosting:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end