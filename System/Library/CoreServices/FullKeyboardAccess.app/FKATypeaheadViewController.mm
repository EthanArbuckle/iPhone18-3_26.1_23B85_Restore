@interface FKATypeaheadViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (FKATypeaheadViewControllerDelegate)delegate;
- (NSString)queryString;
- (void)dealloc;
- (void)loadView;
- (void)sendDidChangeQueryString:(id)string;
- (void)setState:(unint64_t)state;
- (void)startTypeaheadStringClearCacheTimer;
- (void)toggleTypeaheadState;
@end

@implementation FKATypeaheadViewController

- (void)loadView
{
  v3 = objc_opt_new();
  [(FKATypeaheadViewController *)self setView:v3];

  v4 = [FKATypeaheadPresenter alloc];
  view = [(FKATypeaheadViewController *)self view];
  v5 = [(FKATypeaheadPresenter *)v4 initWithContainingView:view];
  [(FKATypeaheadViewController *)self setTypeaheadPresenter:v5];
}

- (void)toggleTypeaheadState
{
  state = [(FKATypeaheadViewController *)self state];
  if (state)
  {
    if (state != 1)
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

- (void)setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    if (state)
    {
      if (state == 1)
      {
        clearCachedTypeaheadStringTimer = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
        [clearCachedTypeaheadStringTimer invalidate];

        [(FKATypeaheadViewController *)self setClearCachedTypeaheadStringTimer:0];
        delegate = [(FKATypeaheadViewController *)self delegate];
        [delegate typeaheadViewControllerWillAppear:self];

        typeaheadPresenter = [(FKATypeaheadViewController *)self typeaheadPresenter];
        [typeaheadPresenter setAlignedEdge:15];

        typeaheadPresenter2 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        [typeaheadPresenter2 presentTypeaheadView];

        typeaheadPresenter3 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        typeaheadView = [typeaheadPresenter3 typeaheadView];
        typeaheadTextField = [typeaheadView typeaheadTextField];
        [typeaheadTextField becomeFirstResponder];

        typeaheadPresenter4 = [(FKATypeaheadViewController *)self typeaheadPresenter];
        typeaheadView2 = [typeaheadPresenter4 typeaheadView];
        typeaheadTextField2 = [typeaheadView2 typeaheadTextField];
        [typeaheadTextField2 setDelegate:self];

        cachedTypeaheadString = [(FKATypeaheadViewController *)self cachedTypeaheadString];
        v15 = [cachedTypeaheadString length];

        if (v15)
        {
          cachedTypeaheadString2 = [(FKATypeaheadViewController *)self cachedTypeaheadString];
          typeaheadPresenter5 = [(FKATypeaheadViewController *)self typeaheadPresenter];
          typeaheadView3 = [typeaheadPresenter5 typeaheadView];
          typeaheadTextField3 = [typeaheadView3 typeaheadTextField];
          [typeaheadTextField3 setText:cachedTypeaheadString2];

          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_10000B198;
          v24[3] = &unk_100028790;
          v24[4] = self;
          v25 = cachedTypeaheadString2;
          v20 = cachedTypeaheadString2;
          dispatch_async(&_dispatch_main_q, v24);
        }
      }
    }

    else
    {
      queryString = [(FKATypeaheadViewController *)self queryString];
      [(FKATypeaheadViewController *)self setCachedTypeaheadString:queryString];

      typeaheadPresenter6 = [(FKATypeaheadViewController *)self typeaheadPresenter];
      [typeaheadPresenter6 dismissFloatingView];

      delegate2 = [(FKATypeaheadViewController *)self delegate];
      [delegate2 typeaheadViewControllerWillDismiss:self];

      [(FKATypeaheadViewController *)self startTypeaheadStringClearCacheTimer];
    }
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  fieldCopy = field;
  v11 = [stringCopy isEqualToString:@"\n"];
  if (v11)
  {
    [fieldCopy setText:0];

    delegate = [(FKATypeaheadViewController *)self delegate];
    [delegate typeaheadViewControllerDidTypeReturn:self];
  }

  else
  {
    text = [fieldCopy text];

    delegate = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    [(FKATypeaheadViewController *)self sendDidChangeQueryString:delegate];
  }

  return v11 ^ 1;
}

- (void)sendDidChangeQueryString:(id)string
{
  stringCopy = string;
  delegate = [(FKATypeaheadViewController *)self delegate];
  [delegate typeaheadViewController:self didChangeQueryString:stringCopy];
}

- (NSString)queryString
{
  typeaheadPresenter = [(FKATypeaheadViewController *)self typeaheadPresenter];
  typeaheadView = [typeaheadPresenter typeaheadView];
  typeaheadTextField = [typeaheadView typeaheadTextField];
  text = [typeaheadTextField text];

  return text;
}

- (void)startTypeaheadStringClearCacheTimer
{
  clearCachedTypeaheadStringTimer = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
  if (clearCachedTypeaheadStringTimer)
  {
  }

  else
  {
    cachedTypeaheadString = [(FKATypeaheadViewController *)self cachedTypeaheadString];
    v5 = [cachedTypeaheadString length];

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
  clearCachedTypeaheadStringTimer = [(FKATypeaheadViewController *)self clearCachedTypeaheadStringTimer];
  [clearCachedTypeaheadStringTimer invalidate];

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