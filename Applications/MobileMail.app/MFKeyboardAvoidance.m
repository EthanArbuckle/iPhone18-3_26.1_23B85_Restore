@interface MFKeyboardAvoidance
+ (id)sharedController;
- (CGRect)_frameInViewUsingForView:(id)a3 keyboardInfo:(id)a4;
- (CGRect)_keyboardOverlapForView:(id)a3 usingKeyboardInfo:(id)a4;
- (double)_keyboardVerticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4;
- (id)_init;
- (void)_adjustAvoidable:(id)a3 forAutomaticKeyboardInfo:(id)a4 animated:(BOOL)a5;
- (void)_adjustAvoidablesForKeyboardInfo:(id)a3;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_registerForKeyboardNotifications;
- (void)_unregisterForKeyboardNotifications;
- (void)dealloc;
- (void)registerKeyboardAvoidable:(id)a3;
- (void)unregisterKeyboardAvoidable:(id)a3;
@end

@implementation MFKeyboardAvoidance

+ (id)sharedController
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001CFC60;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD500 != -1)
  {
    dispatch_once(&qword_1006DD500, block);
  }

  v2 = qword_1006DD4F8;

  return v2;
}

- (void)dealloc
{
  [(MFKeyboardAvoidance *)self _unregisterForKeyboardNotifications];
  v3.receiver = self;
  v3.super_class = MFKeyboardAvoidance;
  [(MFKeyboardAvoidance *)&v3 dealloc];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MFKeyboardAvoidance;
  return [(MFKeyboardAvoidance *)&v3 init];
}

- (void)registerKeyboardAvoidable:(id)a3
{
  v4 = a3;
  if (!self->_keyboardAvoidables)
  {
    v5 = [[NSHashTable alloc] initWithOptions:5 capacity:1];
    keyboardAvoidables = self->_keyboardAvoidables;
    self->_keyboardAvoidables = v5;
  }

  v7 = MFLogGeneral();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#keyboard registering keyboard avoidable <%{public}@:%p>", buf, 0x16u);
  }

  [(NSHashTable *)self->_keyboardAvoidables addObject:v4];
  v8 = [(NSHashTable *)self->_keyboardAvoidables allObjects];
  if ([v8 count] == 1)
  {
    registeredForNotifications = self->_registeredForNotifications;

    if (!registeredForNotifications)
    {
      [(MFKeyboardAvoidance *)self _registerForKeyboardNotifications];
    }
  }

  else
  {
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001CFFF4;
  v15[3] = &unk_10064C660;
  v15[4] = self;
  v10 = v4;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  v12 = [v10 transitionCoordinatorForKeyboardAvoidance:self];
  if (v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001D0008;
    v13[3] = &unk_10064E4B0;
    v14 = v11;
    [v12 animateAlongsideTransition:0 completion:v13];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (void)unregisterKeyboardAvoidable:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionCoordinatorForKeyboardAvoidance:self];
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#keyboard unregistering keyboard avoidable <%{public}@:%p>", buf, 0x16u);
  }

  [(NSHashTable *)self->_keyboardAvoidables removeObject:v4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D0254;
  v13[3] = &unk_10064C7E8;
  v13[4] = self;
  v7 = objc_retainBlock(v13);
  v8 = v7;
  if (v5)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001D030C;
    v11[3] = &unk_10064E4B0;
    v12 = v7;
    [v5 animateAlongsideTransition:0 completion:v11];
    v9 = v12;
  }

  else
  {
    v9 = +[EFScheduler mainThreadScheduler];
    v10 = [v9 afterDelay:v8 performBlock:1.0];
  }
}

- (double)_keyboardVerticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4
{
  v6 = a3;
  [(MFKeyboardAvoidance *)self _frameInViewUsingForView:v6 keyboardInfo:a4];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v11 = 0.0;
  if (!CGRectIsEmpty(v14))
  {
    [v6 bounds];
    MaxY = CGRectGetMaxY(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v11 = fmax(MaxY - CGRectGetMinY(v16), 0.0);
  }

  return v11;
}

- (CGRect)_keyboardOverlapForView:(id)a3 usingKeyboardInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFKeyboardAvoidance *)self _frameInViewUsingForView:v6 keyboardInfo:v7];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  if (CGRectIsEmpty(v20))
  {
    v12 = CGRectNull.origin.x;
    v13 = CGRectNull.origin.y;
    v14 = CGRectNull.size.width;
    v15 = CGRectNull.size.height;
  }

  else
  {
    [v6 bounds];
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v22 = CGRectIntersection(v21, v24);
    v12 = v22.origin.x;
    v13 = v22.origin.y;
    v14 = v22.size.width;
    v15 = v22.size.height;
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_frameInViewUsingForView:(id)a3 keyboardInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
    [v8 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v5;
    }

    else
    {
      v17 = [v5 window];
    }

    v22 = v17;
    [v17 convertRect:0 fromWindow:{v10, v12, v14, v16}];
    [v5 convertRect:0 fromView:?];
    x = v23;
    y = v24;
    width = v25;
    height = v26;
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v38.origin.x = v10;
      v38.origin.y = v12;
      v38.size.width = v14;
      v38.size.height = v16;
      v28 = NSStringFromCGRect(v38);
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v39.size.height = height;
      v29 = NSStringFromCGRect(v39);
      v34 = 138543618;
      v35 = v28;
      v36 = 2114;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "#keyboard _keyboardOverlap calculation - frameInScreen:%{public}@ frameInView:%{public}@", &v34, 0x16u);
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)_adjustAvoidable:(id)a3 forAutomaticKeyboardInfo:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 viewForKeyboardAvoidance:self];
  [(MFKeyboardAvoidance *)self _keyboardVerticalOverlapForView:v10 usingKeyboardInfo:v9];
  v12 = v11;
  [(MFKeyboardAvoidance *)self _keyboardOverlapForView:v10 usingKeyboardInfo:v9];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001D0934;
  v28[3] = &unk_100654228;
  v21 = v8;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v34 = v18;
  v35 = v20;
  v29 = v21;
  v30 = self;
  v22 = objc_retainBlock(v28);
  v23 = [v9 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
  [v23 doubleValue];
  v25 = v24;

  if (v5 && v25 > 0.0)
  {
    v26 = [v9 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    v27 = [v26 integerValue] << 16;

    [UIView animateWithDuration:v27 delay:v22 options:0 animations:v25 completion:0.0];
  }

  else
  {
    (v22[2])(v22);
  }
}

- (void)_adjustAvoidablesForKeyboardInfo:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#keyboard adjust avoidables for keyboard info: %{public}@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_keyboardAvoidables;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10)
        {
          [(MFKeyboardAvoidance *)self _adjustAvoidable:v10 forAutomaticKeyboardInfo:v4 animated:1, v13];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  currentKeyboardInfo = self->_currentKeyboardInfo;
  self->_currentKeyboardInfo = v11;
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 userInfo];
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#keyboard keyboard will hide: %{public}@", buf, 0xCu);
  }

  v7 = [v4 userInfo];
  v9 = NSRunLoopCommonModes;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(MFKeyboardAvoidance *)self performSelector:"_adjustAvoidablesForKeyboardInfo:" withObject:v7 afterDelay:v8 inModes:0.0];
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 userInfo];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#keyboard keyboard will show: %{public}@", &v8, 0xCu);
  }

  v7 = [v4 userInfo];
  [(MFKeyboardAvoidance *)self _adjustAvoidablesForKeyboardInfo:v7];

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_adjustAvoidablesForKeyboardInfo:" object:0];
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 userInfo];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#keyboard keyboard did change frame: %{public}@", &v8, 0xCu);
  }

  v7 = [v4 userInfo];
  [(MFKeyboardAvoidance *)self _adjustAvoidablesForKeyboardInfo:v7];

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_adjustAvoidablesForKeyboardInfo:" object:0];
}

- (void)_registerForKeyboardNotifications
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#keyboard registering for keyboard notifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  [v4 addObserver:self selector:"_keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
  [v4 addObserver:self selector:"_keyboardDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];
  self->_registeredForNotifications = 1;
}

- (void)_unregisterForKeyboardNotifications
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#keyboard unregistering for keyboard notifications", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v4 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  [v4 removeObserver:self name:UIKeyboardDidChangeFrameNotification object:0];
  currentKeyboardInfo = self->_currentKeyboardInfo;
  self->_currentKeyboardInfo = 0;

  self->_registeredForNotifications = 0;
}

@end