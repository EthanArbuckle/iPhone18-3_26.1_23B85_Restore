@interface FKATypeaheadViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (FKATypeaheadViewControllerDelegate)delegate;
- (NSString)queryString;
- (void)dealloc;
- (void)loadView;
- (void)sendDidChangeQueryString:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)startTypeaheadStringClearCacheTimer;
- (void)toggleTypeaheadState;
@end

@implementation FKATypeaheadViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(FKATypeaheadViewController *)self setView:v3];

  v4 = [FKATypeaheadPresenter alloc];
  v6 = [(FKATypeaheadViewController *)self view];
  v5 = [(FKATypeaheadPresenter *)v4 initWithContainingView:v6];
  [(FKATypeaheadViewController *)self setTypeaheadPresenter:v5];
}

- (void)toggleTypeaheadState
{
  v3 = [(FKATypeaheadViewController *)self state];
  if (v3)
  {
    if (v3 != 1)
    {
      return;
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  [(FKATypeaheadViewController *)self setState:v4];
}

- (void)setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
        [v4 invalidate];

        [(FKATypeaheadViewController *)self setClearCachedTypeaheadStringTimer:0];
        v5 = [(FKATypeaheadViewController *)self delegate];
        [v5 typeaheadViewControllerWillAppear:self];

        v6 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        [v6 setAlignedEdge:15];

        v7 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        [v7 presentTypeaheadView];

        v8 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        v9 = [v8 typeaheadView];
        v10 = [v9 typeaheadTextField];
        [v10 becomeFirstResponder];

        v11 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        v12 = [v11 typeaheadView];
        v13 = [v12 typeaheadTextField];
        [v13 setDelegate:self];

        v14 = [(FKATypeaheadViewController *)self cachedTypeaheadString];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [(FKATypeaheadViewController *)self cachedTypeaheadString];
          v17 = [(FKATypeaheadViewController *)self typeaheadPresenter];
          v18 = [v17 typeaheadView];
          v19 = [v18 typeaheadTextField];
          [v19 setText:v16];

          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10000B198;
          v24[3] = &unk_100028790;
          v24[4] = self;
          v25 = v16;
          v20 = v16;
          dispatch_async(&_dispatch_main_q, v24);
        }
      }
    }

    else
    {
      v21 = [(FKATypeaheadViewController *)self queryString];
      [(FKATypeaheadViewController *)self setCachedTypeaheadString:v21];

      v22 = [(FKATypeaheadViewController *)self typeaheadPresenter];
      [v22 dismissFloatingView];

      v23 = [(FKATypeaheadViewController *)self delegate];
      [v23 typeaheadViewControllerWillDismiss:self];

      [(FKATypeaheadViewController *)self startTypeaheadStringClearCacheTimer];
    }
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [v9 isEqualToString:@"\n"];
  if (v11)
  {
    [v10 setText:0];

    v12 = [(FKATypeaheadViewController *)self delegate];
    [v12 typeaheadViewControllerDidTypeReturn:self];
  }

  else
  {
    v13 = [v10 text];

    v12 = [v13 stringByReplacingCharactersInRange:location withString:{length, v9}];

    [(FKATypeaheadViewController *)self sendDidChangeQueryString:v12];
  }

  return v11 ^ 1;
}

- (void)sendDidChangeQueryString:(id)a3
{
  v4 = a3;
  v5 = [(FKATypeaheadViewController *)self delegate];
  [v5 typeaheadViewController:self didChangeQueryString:v4];
}

- (NSString)queryString
{
  v2 = [(FKATypeaheadViewController *)self typeaheadPresenter];
  v3 = [v2 typeaheadView];
  v4 = [v3 typeaheadTextField];
  v5 = [v4 text];

  return v5;
}

- (void)startTypeaheadStringClearCacheTimer
{
  v3 = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
  if (v3)
  {
  }

  else
  {
    v4 = [(FKATypeaheadViewController *)self cachedTypeaheadString];
    v5 = [v4 length];

    if (v5)
    {
      objc_initWeak(&location, self);
      v7 = _NSConcreteStackBlock;
      v8 = 3221225472;
      v9 = sub_10000B4E4;
      v10 = &unk_100028948;
      objc_copyWeak(&v11, &location);
      v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v7 block:30.0];
      [(FKATypeaheadViewController *)self setClearCachedTypeaheadStringTimer:v6, v7, v8, v9, v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

- (void)dealloc
{
  v3 = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = FKATypeaheadViewController;
  [(FKATypeaheadViewController *)&v4 dealloc];
}

- (FKATypeaheadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end