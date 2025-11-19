@interface TUIKeyboardAvoidingSupport
- (TUIKeyboardAvoidingSupport)initWithViewController:(id)a3;
- (TUIKeyboardAvoidingSupportViewController)viewController;
- (double)_keyboardOverlapInView:(id)a3 usingKeyboardInfo:(id)a4;
- (void)_adjustScrollViewForKeyboardInfo:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)dealloc;
- (void)registerForNotifications;
- (void)unregisterForNotifications;
@end

@implementation TUIKeyboardAvoidingSupport

- (TUIKeyboardAvoidingSupport)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIKeyboardAvoidingSupport;
  v5 = [(TUIKeyboardAvoidingSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
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
    v5 = [WeakRetained tui_keyboardAvoidingScrollView];
    v6 = [v5 window];
    v7 = [v6 screen];

    [v8 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:v7];
    [v8 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:v7];
    [v8 addObserver:self selector:"_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:v7];
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

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  [(TUIKeyboardAvoidingSupport *)self _adjustScrollViewForKeyboardInfo:v4];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:"_adjustScrollViewForKeyboardInfo:" object:0];
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [NSArray arrayWithObject:NSRunLoopCommonModes];
  [(TUIKeyboardAvoidingSupport *)self performSelector:"_adjustScrollViewForKeyboardInfo:" withObject:0 afterDelay:v4 inModes:0.0];
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  [(TUIKeyboardAvoidingSupport *)self _adjustScrollViewForKeyboardInfo:v4];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:"_adjustScrollViewForKeyboardInfo:" object:0];
}

- (void)_adjustScrollViewForKeyboardInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v6 = [WeakRetained tui_keyboardAvoidingScrollView];

    if (!self->_viewIsDisappearing)
    {
      v7 = [v6 window];

      if (v7)
      {
        adjustmentForKeyboard = self->_adjustmentForKeyboard;
        [(TUIKeyboardAvoidingSupport *)self _keyboardOverlapInView:v6 usingKeyboardInfo:v4];
        if (adjustmentForKeyboard != v9)
        {
          v10 = v9;
          [v6 contentInset];
          v32 = v12;
          v33 = v11;
          v14 = v13;
          v16 = v15;
          [v6 verticalScrollIndicatorInsets];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v23 = v10 - adjustmentForKeyboard;
          v24 = v10 - adjustmentForKeyboard + v14;
          v26 = v23 + v25;
          v27 = [v4 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
          [v27 doubleValue];
          v29 = v28;
          v30 = [v4 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
          v31 = [v30 integerValue];
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_127F1C;
          v34[3] = &unk_260758;
          v35 = v6;
          v36 = v33;
          v37 = v32;
          v38 = v24;
          v39 = v16;
          v40 = v18;
          v41 = v20;
          v42 = v26;
          v43 = v22;
          [UIView animateWithDuration:v31 | 4 delay:v34 options:0 animations:v29 completion:0.0];

          adjustmentForKeyboard = v10;
        }

        self->_adjustmentForKeyboard = adjustmentForKeyboard;
      }
    }
  }
}

- (double)_keyboardOverlapInView:(id)a3 usingKeyboardInfo:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  if (v6)
  {
    v7 = [v5 window];
    [v6 CGRectValue];
    [v7 convertRect:0 fromWindow:?];
    [v5 convertRect:0 fromView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v5 bounds];
    MaxY = CGRectGetMaxY(v21);
    v22.origin.x = v9;
    v22.origin.y = v11;
    v22.size.width = v13;
    v22.size.height = v15;
    v17 = MaxY - CGRectGetMinY(v22);
    [v5 safeAreaInsets];
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