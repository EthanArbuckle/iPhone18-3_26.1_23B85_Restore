@interface TUIKeyboardAvoidingSupport
- (TUIKeyboardAvoidingSupport)initWithViewController:(id)controller;
- (TUIKeyboardAvoidingSupportViewController)viewController;
- (double)_keyboardOverlapInView:(id)view usingKeyboardInfo:(id)info;
- (void)_adjustScrollViewForKeyboardInfo:(id)info;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)dealloc;
- (void)registerForNotifications;
- (void)unregisterForNotifications;
@end

@implementation TUIKeyboardAvoidingSupport

- (TUIKeyboardAvoidingSupport)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = TUIKeyboardAvoidingSupport;
  v5 = [(TUIKeyboardAvoidingSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUIKeyboardAvoidingSupport;
  [(TUIKeyboardAvoidingSupport *)&v4 dealloc];
}

- (void)registerForNotifications
{
  if (!self->_registeredForNotifications)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    tui_keyboardAvoidingScrollView = [WeakRetained tui_keyboardAvoidingScrollView];
    window = [tui_keyboardAvoidingScrollView window];
    screen = [window screen];

    [v8 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:screen];
    [v8 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:screen];
    [v8 addObserver:self selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:screen];
    self->_registeredForNotifications = 1;
  }
}

- (void)unregisterForNotifications
{
  if (self->_registeredForNotifications)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self];

    self->_registeredForNotifications = 0;
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  [(TUIKeyboardAvoidingSupport *)self _adjustScrollViewForKeyboardInfo:userInfo];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:"_adjustScrollViewForKeyboardInfo:" object:0];
}

- (void)_keyboardWillHide:(id)hide
{
  v4 = [NSArray arrayWithObject:NSRunLoopCommonModes];
  [(TUIKeyboardAvoidingSupport *)self performSelector:"_adjustScrollViewForKeyboardInfo:" withObject:0 afterDelay:v4 inModes:0.0];
}

- (void)_keyboardWillChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  [(TUIKeyboardAvoidingSupport *)self _adjustScrollViewForKeyboardInfo:userInfo];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:"_adjustScrollViewForKeyboardInfo:" object:0];
}

- (void)_adjustScrollViewForKeyboardInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    tui_keyboardAvoidingScrollView = [WeakRetained tui_keyboardAvoidingScrollView];

    if (!self->_viewIsDisappearing)
    {
      window = [tui_keyboardAvoidingScrollView window];

      if (window)
      {
        adjustmentForKeyboard = self->_adjustmentForKeyboard;
        [(TUIKeyboardAvoidingSupport *)self _keyboardOverlapInView:tui_keyboardAvoidingScrollView usingKeyboardInfo:infoCopy];
        if (adjustmentForKeyboard != v9)
        {
          v10 = v9;
          [tui_keyboardAvoidingScrollView contentInset];
          v32 = v12;
          v33 = v11;
          v14 = v13;
          v16 = v15;
          [tui_keyboardAvoidingScrollView verticalScrollIndicatorInsets];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = v10 - adjustmentForKeyboard;
          v24 = v10 - adjustmentForKeyboard + v14;
          v26 = v23 + v25;
          v27 = [infoCopy objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
          [v27 doubleValue];
          v29 = v28;
          v30 = [infoCopy objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
          integerValue = [v30 integerValue];
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_127F1C;
          v34[3] = &unk_260758;
          v35 = tui_keyboardAvoidingScrollView;
          v36 = v33;
          v37 = v32;
          v38 = v24;
          v39 = v16;
          v40 = v18;
          v41 = v20;
          v42 = v26;
          v43 = v22;
          [UIView animateWithDuration:integerValue | 4 delay:v34 options:0 animations:v29 completion:0.0];

          adjustmentForKeyboard = v10;
        }

        self->_adjustmentForKeyboard = adjustmentForKeyboard;
      }
    }
  }
}

- (double)_keyboardOverlapInView:(id)view usingKeyboardInfo:(id)info
{
  viewCopy = view;
  v6 = [info objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  if (v6)
  {
    window = [viewCopy window];
    [v6 CGRectValue];
    [window convertRect:0 fromWindow:?];
    [viewCopy convertRect:0 fromView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [viewCopy bounds];
    MaxY = CGRectGetMaxY(v21);
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v17 = MaxY - CGRectGetMinY(v22);
    [viewCopy safeAreaInsets];
    v19 = fmax(v17 - v18, 0.0);
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

- (TUIKeyboardAvoidingSupportViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end