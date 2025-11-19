@interface CRLiOSKeyboardMonitor
+ (BOOL)isKeyboardFrameChanging:(id)a3;
+ (BOOL)isLocalKeyboardForNotification:(id)a3;
+ (BOOL)isNullInputView:(id)a3;
+ (BOOL)keyboardIsAnimating;
+ (BOOL)keyboardIsAnimatingInOrDocking;
+ (BOOL)keyboardIsAnimatingOutOrUndocking;
+ (BOOL)keyboardIsVisibleAndDocked;
+ (BOOL)keyboardIsVisibleAndUndocked;
+ (BOOL)undockedKeyboardWillHide;
+ (BOOL)undockedKeyboardWillShow;
+ (CGRect)p_localKeyboardFrameFromReportedFrame:(CGRect)a3 screenBounds:(CGRect)a4 inputView:(id)a5;
+ (id)sharedKeyboardMonitor;
+ (void)addKeyboardObserver:(id)a3;
+ (void)addModalKeyboardObserver:(id)a3;
+ (void)afterKeyboardAnimationPerformBlock:(id)a3;
+ (void)removeKeyboardObserver:(id)a3;
+ (void)removeModalKeyboardObserver:(id)a3;
- (BOOL)p_isFrameCorrespondingToRotatedKeyboard:(CGRect)a3;
- (BOOL)p_isFrameCorrespondingToUndockedKeyboard:(CGRect)a3;
- (BOOL)p_isNotificationCorrespondingToUndockedKeyboardWillHide:(id)a3;
- (BOOL)p_isNotificationCorrespondingToUndockedKeyboardWillShow:(id)a3;
- (CGRect)keyboardFrame;
- (CRLiOSKeyboardMonitor)init;
- (double)onScreenHeightInWindow:(id)a3;
- (double)p_verticalSpacingFromWindow:(id)a3 toWindow:(id)a4;
- (id)p_observersToNotify;
- (void)addKeyboardObserver:(id)a3;
- (void)addModalKeyboardObserver:(id)a3;
- (void)afterKeyboardAnimationPerformBlock:(id)a3;
- (void)p_clearKeyboardIsAnimatingInTimer;
- (void)p_enumerateObserversUsingBlock:(id)a3;
- (void)p_installKeyboardNotifications;
- (void)p_keyboardDidChangeFrame:(id)a3;
- (void)p_keyboardDidHideOrUndock:(id)a3;
- (void)p_keyboardDidShowOrDock:(id)a3;
- (void)p_keyboardWillChangeFrame:(id)a3;
- (void)p_keyboardWillHideOrUndock:(id)a3;
- (void)p_keyboardWillShowOrDock:(id)a3;
- (void)p_performAnimationCompletionBlocksWithVisible:(BOOL)a3;
- (void)p_scheduleKeyboardIsAnimatingInTimer;
- (void)p_updateKeyboardInfoFromNotification:(id)a3;
- (void)removeKeyboardObserver:(id)a3;
- (void)removeModalKeyboardObserver:(id)a3;
@end

@implementation CRLiOSKeyboardMonitor

+ (id)sharedKeyboardMonitor
{
  if (qword_101A34D58 != -1)
  {
    sub_10000D25C();
  }

  v3 = qword_101A34D50;

  return v3;
}

- (CRLiOSKeyboardMonitor)init
{
  v11.receiver = self;
  v11.super_class = CRLiOSKeyboardMonitor;
  v2 = [(CRLiOSKeyboardMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_keyboardIsVisibleAndDocked = 0;
    v2->_isLocalKeyboard = 1;
    v4 = +[NSPointerArray weakObjectsPointerArray];
    keyboardObservers = v3->_keyboardObservers;
    v3->_keyboardObservers = v4;

    v6 = +[NSHashTable weakObjectsHashTable];
    modalKeyboardObservers = v3->_modalKeyboardObservers;
    v3->_modalKeyboardObservers = v6;

    v8 = +[NSMutableArray array];
    completionBlocks = v3->_completionBlocks;
    v3->_completionBlocks = v8;

    [(CRLiOSKeyboardMonitor *)v3 p_installKeyboardNotifications];
  }

  return v3;
}

- (void)p_installKeyboardNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"p_keyboardWillShowOrDock:" name:UIKeyboardWillShowNotification object:0];
  [v3 addObserver:self selector:"p_keyboardDidShowOrDock:" name:UIKeyboardDidShowNotification object:0];
  [v3 addObserver:self selector:"p_keyboardWillHideOrUndock:" name:UIKeyboardWillHideNotification object:0];
  [v3 addObserver:self selector:"p_keyboardDidHideOrUndock:" name:UIKeyboardDidHideNotification object:0];
  [v3 addObserver:self selector:"p_keyboardWillChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];
  [v3 addObserver:self selector:"p_keyboardDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];
}

- (void)p_enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSKeyboardMonitor *)self p_observersToNotify];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003A705C;
  v7[3] = &unk_10185BAB8;
  v8 = v4;
  v6 = v4;
  [v5 crl_enumerateNonNullPointersUsingBlock:v7];
}

- (id)p_observersToNotify
{
  v3 = [(CRLiOSKeyboardMonitor *)self modalKeyboardObservers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = +[NSPointerArray weakObjectsPointerArray];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [(CRLiOSKeyboardMonitor *)self modalKeyboardObservers];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 keyboardObserversWindow];
          [v5 addObject:v13];
          [v6 addPointer:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v9);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          v20 = [v19 keyboardObserversWindow];
          v21 = [v5 containsObject:v20];

          if ((v21 & 1) == 0)
          {
            [v6 addPointer:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v5 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
    v6 = [v5 copy];
  }

  return v6;
}

- (void)p_keyboardWillShowOrDock:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_101361FE4();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[CRLiOSKeyboardMonitor p_keyboardWillShowOrDock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
  width = self->_keyboardFrame.size.width;
  if (width == 0.0 || fabs(width) < 0.00999999978 || (height = self->_keyboardFrame.size.height, height == 0.0) || fabs(height) < 0.00999999978 || (onScreenHeight = self->_onScreenHeight, onScreenHeight == 0.0) || fabs(onScreenHeight) < 0.00999999978)
  {
    self->_weAreFakingAHideEvent = 1;
    if (self->_keyboardIsVisibleAndDocked)
    {
      [(CRLiOSKeyboardMonitor *)self p_keyboardWillHideOrUndock:v4];
    }

    else
    {
      self->_suppressDidHide = 1;
    }
  }

  else
  {
    if (self->_keyboardIsAnimatingOutOrUndocking)
    {
      self->_keyboardIsAnimatingOutOrUndocking = 0;
      [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:&stru_10185BB18];
    }

    self->_keyboardIsVisibleAndDocked = 1;
    self->_keyboardIsAnimatingInOrDocking = 1;
    [(CRLiOSKeyboardMonitor *)self p_scheduleKeyboardIsAnimatingInTimer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003A7558;
    v9[3] = &unk_10185BB40;
    v10 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v9];
  }
}

- (void)p_keyboardDidShowOrDock:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_101361FF8();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CRLiOSKeyboardMonitor p_keyboardDidShowOrDock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_weAreFakingAHideEvent)
  {
    if (!self->_suppressDidHide)
    {
      [(CRLiOSKeyboardMonitor *)self p_keyboardDidHideOrUndock:v4];
    }

    *&self->_weAreFakingAHideEvent = 256;
    self->_suppressDidHide = 0;
  }

  else if (self->_keyboardIsAnimatingInOrDocking)
  {
    [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
    self->_keyboardIsAnimatingInOrDocking = 0;
    [(CRLiOSKeyboardMonitor *)self p_clearKeyboardIsAnimatingInTimer];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003A7798;
    v6[3] = &unk_10185BB40;
    v7 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v6];
    [(CRLiOSKeyboardMonitor *)self p_performAnimationCompletionBlocksWithVisible:1];
  }
}

- (void)p_keyboardWillHideOrUndock:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_10136200C();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CRLiOSKeyboardMonitor p_keyboardWillHideOrUndock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  self->_suppressDidHide = 0;
  [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
  if (self->_keyboardIsAnimatingInOrDocking)
  {
    self->_keyboardIsAnimatingInOrDocking = 0;
    [(CRLiOSKeyboardMonitor *)self p_clearKeyboardIsAnimatingInTimer];
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:&stru_10185BBA0];
  }

  if (self->_keyboardIsVisibleAndDocked || !self->_lastHideWasFake)
  {
    self->_keyboardIsVisibleAndDocked = 0;
    self->_keyboardIsAnimatingOutOrUndocking = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003A7A1C;
    v6[3] = &unk_10185BB40;
    v7 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v6];
  }
}

- (void)p_keyboardDidHideOrUndock:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_101362020();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CRLiOSKeyboardMonitor p_keyboardDidHideOrUndock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_keyboardIsAnimatingOutOrUndocking)
  {
    [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
    self->_keyboardIsAnimatingOutOrUndocking = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003A7C28;
    v6[3] = &unk_10185BB40;
    v7 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v6];
    [(CRLiOSKeyboardMonitor *)self p_performAnimationCompletionBlocksWithVisible:0];
    self->_lastHideWasFake = 0;
  }
}

- (void)p_clearKeyboardIsAnimatingInTimer
{
  v3 = [(CRLiOSKeyboardMonitor *)self keyboardIsAnimatingInTimer];
  [v3 invalidate];

  [(CRLiOSKeyboardMonitor *)self setKeyboardIsAnimatingInTimer:0];
}

- (void)p_scheduleKeyboardIsAnimatingInTimer
{
  v3 = [(CRLiOSKeyboardMonitor *)self keyboardIsAnimatingInTimer];
  [v3 invalidate];

  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1003A7DD4;
  v8 = &unk_10185A888;
  objc_copyWeak(&v9, &location);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:2.5];
  [(CRLiOSKeyboardMonitor *)self setKeyboardIsAnimatingInTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addKeyboardObserver:(id)a3
{
  v7 = a3;
  v4 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
  v5 = [v4 crl_indexOfPointer:v7];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
    [v6 addPointer:v7];
  }
}

- (void)removeKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
  v6 = [v5 crl_indexOfPointer:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
    [v7 removePointerAtIndex:v6];
  }

  v8 = [(CRLiOSKeyboardMonitor *)self keyboardObservers];
  [v8 compact];
}

- (void)addModalKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSKeyboardMonitor *)self modalKeyboardObservers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101362100();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362114();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013621A4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSKeyboardMonitor addModalKeyboardObserver:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:306 isFatal:0 description:"addModalKeyboardObserver attempt to add the same model observer."];
  }

  else
  {
    v10 = [(CRLiOSKeyboardMonitor *)self modalKeyboardObservers];
    [v10 addObject:v4];
  }
}

- (void)removeModalKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSKeyboardMonitor *)self modalKeyboardObservers];
  [v5 removeObject:v4];
}

- (void)afterKeyboardAnimationPerformBlock:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_1013621CC();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CRLiOSKeyboardMonitor afterKeyboardAnimationPerformBlock:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  completionBlocks = self->_completionBlocks;
  v7 = [v4 copy];
  v8 = objc_retainBlock(v7);
  [(NSMutableArray *)completionBlocks addObject:v8];
}

+ (void)addKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedKeyboardMonitor];
  [v5 addKeyboardObserver:v4];
}

+ (void)removeKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedKeyboardMonitor];
  [v5 removeKeyboardObserver:v4];
}

+ (void)addModalKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedKeyboardMonitor];
  [v5 addModalKeyboardObserver:v4];
}

+ (void)removeModalKeyboardObserver:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedKeyboardMonitor];
  [v5 removeModalKeyboardObserver:v4];
}

+ (BOOL)isKeyboardFrameChanging:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:UIKeyboardFrameBeginUserInfoKey];
  v7 = sub_100014370(v4, v6);

  v8 = objc_opt_class();
  v9 = [v3 userInfo];

  v10 = [v9 objectForKey:UIKeyboardFrameEndUserInfoKey];
  v11 = sub_100014370(v8, v10);

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013621E0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013621F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362290();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v26 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSKeyboardMonitor isKeyboardFrameChanging:]");
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:350 isFatal:0 description:"invalid nil value for '%{public}s'", "frameBeginValue"];

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
LABEL_14:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013622B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013622E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136237C();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v28);
    }

    v29 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSKeyboardMonitor isKeyboardFrameChanging:]");
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:351 isFatal:0 description:"invalid nil value for '%{public}s'", "frameEndValue"];

    goto LABEL_23;
  }

  [v7 CGRectValue];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v11 CGRectValue];
  v33.origin.x = v20;
  v33.origin.y = v21;
  v33.size.width = v22;
  v33.size.height = v23;
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  if (CGRectEqualToRect(v32, v33))
  {
LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  v24 = 1;
LABEL_24:

  return v24;
}

+ (BOOL)keyboardIsVisibleAndDocked
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 keyboardIsVisibleAndDocked];

  return v3;
}

+ (BOOL)keyboardIsVisibleAndUndocked
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 keyboardIsVisibleAndUndocked];

  return v3;
}

+ (BOOL)undockedKeyboardWillShow
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 undockedKeyboardWillShow];

  return v3;
}

+ (BOOL)undockedKeyboardWillHide
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 undockedKeyboardWillHide];

  return v3;
}

+ (BOOL)keyboardIsAnimating
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 keyboardIsAnimating];

  return v3;
}

+ (BOOL)keyboardIsAnimatingInOrDocking
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 keyboardIsAnimatingInOrDocking];

  return v3;
}

+ (BOOL)keyboardIsAnimatingOutOrUndocking
{
  v2 = [a1 sharedKeyboardMonitor];
  v3 = [v2 keyboardIsAnimatingOutOrUndocking];

  return v3;
}

+ (void)afterKeyboardAnimationPerformBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedKeyboardMonitor];
  [v5 afterKeyboardAnimationPerformBlock:v4];
}

+ (BOOL)isLocalKeyboardForNotification:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:UIKeyboardIsLocalUserInfoKey];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013623A4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013623B8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101362454();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSKeyboardMonitor isLocalKeyboardForNotification:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:399 isFatal:0 description:"invalid nil value for '%{public}s'", "localUserKeyValue"];

    v6 = 1;
  }

  return v6;
}

+ (BOOL)isNullInputView:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136247C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101362490();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136252C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSKeyboardMonitor isNullInputView:]");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:404 isFatal:0 description:"invalid nil value for '%{public}s'", "inputView"];

    goto LABEL_14;
  }

  if (![v3 translatesAutoresizingMaskIntoConstraints] || (objc_msgSend(v4, "autoresizingMask") & 0x10) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  [v4 frame];
  v6 = v5 <= 0.0;
LABEL_15:

  return v6;
}

+ (CGRect)p_localKeyboardFrameFromReportedFrame:(CGRect)a3 screenBounds:(CGRect)a4 inputView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.size.height;
  v10 = a3.size.width;
  v11 = a3.origin.y;
  v12 = a3.origin.x;
  v14 = a5;
  if (v14)
  {
    if ([a1 isNullInputView:v14])
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MaxY = CGRectGetMaxY(v21);
      v24.origin.x = 0.0;
      v24.size.height = 0.0;
      v22.origin.x = v12;
      v22.origin.y = v11;
      v22.size.width = v10;
      v22.size.height = v9;
      v24.origin.y = MaxY;
      v24.size.width = width;
      if (!CGRectEqualToRect(v22, v24))
      {
        if (qword_101AD5B40 != -1)
        {
          sub_101362554();
        }

        v16 = off_1019EDB98;
        if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_ERROR))
        {
          sub_101362568(v16, v12, v11, v10, v9, 0.0, MaxY, width, 0.0);
        }

        v9 = 0.0;
        v10 = width;
        v11 = MaxY;
        v12 = 0.0;
      }
    }
  }

  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)p_updateKeyboardInfoFromNotification:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_10136268C();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 136315138;
    v39 = "[CRLiOSKeyboardMonitor p_updateKeyboardInfoFromNotification:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v38, 0xCu);
  }

  v6 = [v4 userInfo];
  self->_isLocalKeyboard = [CRLiOSKeyboardMonitor isLocalKeyboardForNotification:v4];
  v7 = objc_opt_class();
  v8 = [v6 objectForKey:UIKeyboardFrameEndUserInfoKey];
  v9 = sub_100014370(v7, v8);

  if (v9)
  {
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 keyWindow];

    [v9 CGRectValue];
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = v15;
    if (self->_isLocalKeyboard)
    {
      v20 = +[UIScreen mainScreen];
      [v20 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v29 = [v11 firstResponder];
      v30 = [v29 inputView];
      [CRLiOSKeyboardMonitor p_localKeyboardFrameFromReportedFrame:v30 screenBounds:v16 inputView:v17, v18, v19, v22, v24, v26, v28];
      self->_keyboardFrame.origin.x = v31;
      self->_keyboardFrame.origin.y = v32;
      self->_keyboardFrame.size.width = v33;
      self->_keyboardFrame.size.height = v34;
    }

    else
    {
      self->_keyboardFrame.origin.x = v12;
      self->_keyboardFrame.origin.y = v13;
      self->_keyboardFrame.size.width = v14;
      self->_keyboardFrame.size.height = v15;
    }

    [(CRLiOSKeyboardMonitor *)self onScreenHeightInWindow:v11];
    self->_onScreenHeight = v35;
  }

  v36 = [v6 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v36 doubleValue];
  self->_keyboardAnimationDuration = v37;
}

- (void)p_performAnimationCompletionBlocksWithVisible:(BOOL)a3
{
  if (qword_101AD5B40 != -1)
  {
    sub_1013626A0();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[CRLiOSKeyboardMonitor p_performAnimationCompletionBlocksWithVisible:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_completionBlocks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1003A9700;
        v12[3] = &unk_10183D140;
        v12[4] = v11;
        v13 = a3;
        dispatch_async(&_dispatch_main_q, v12);
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
}

- (BOOL)p_isFrameCorrespondingToUndockedKeyboard:(CGRect)a3
{
  if (![UIDevice crl_padUI:a3.origin.x])
  {
    return 0;
  }

  v4 = +[UIApplication sharedApplication];
  v5 = [v4 keyWindow];

  v6 = [v5 subviews];
  v7 = [v6 firstObject];

  [v7 convertRect:0 fromView:{self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 frame];
  [v7 convertRect:0 fromView:?];
  MaxY = CGRectGetMaxY(v24);
  if ([(CRLiOSKeyboardMonitor *)self p_isFrameCorrespondingToRotatedKeyboard:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height])
  {
    v17 = [v5 coordinateSpace];
    [v17 bounds];
    v19 = v18;
    v21 = v20;

    MaxY = v19 - (v21 - MaxY);
  }

  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  v22 = CGRectGetMaxY(v25) < MaxY + -1.0;

  return v22;
}

- (BOOL)p_isFrameCorrespondingToRotatedKeyboard:(CGRect)a3
{
  Width = CGRectGetWidth(a3);
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = Width == CGRectGetHeight(v7);

  return v5;
}

- (double)onScreenHeightInWindow:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (CGRectGetHeight(self->_keyboardFrame) > 0.0 && ![(CRLiOSKeyboardMonitor *)self p_isFrameCorrespondingToUndockedKeyboard:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height])
  {
    if ([(CRLiOSKeyboardMonitor *)self p_isFrameCorrespondingToRotatedKeyboard:self->_keyboardFrame.origin.x, self->_keyboardFrame.origin.y, self->_keyboardFrame.size.width, self->_keyboardFrame.size.height])
    {
      v6 = +[UIScreen mainScreen];
      [v6 bounds];
      Width = CGRectGetWidth(v12);

      [(CRLiOSKeyboardMonitor *)self p_verticalSpacingFromWindow:v4 toWindow:0];
      Height = Width - v8;
    }

    else
    {
      [v4 bounds];
      Height = CGRectGetHeight(v13);
    }

    MinY = CGRectGetMinY(self->_keyboardFrame);
    if (Height < MinY)
    {
      MinY = Height;
    }

    v5 = Height - MinY;
  }

  return v5;
}

- (double)p_verticalSpacingFromWindow:(id)a3 toWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0.0;
  if (v7 != v6 && self->_onScreenHeight != 0.0)
  {
    if (v7)
    {
      [v7 frame];
      Height = CGRectGetHeight(v13);
    }

    else
    {
      v11 = +[UIScreen mainScreen];
      [v11 bounds];
      Height = CGRectGetHeight(v14);
    }

    [v6 frame];
    v9 = fmax((Height - CGRectGetHeight(v15)) * 0.5, 0.0);
  }

  return v9;
}

- (BOOL)p_isNotificationCorrespondingToUndockedKeyboardWillShow:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_1013626B4();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[CRLiOSKeyboardMonitor p_isNotificationCorrespondingToUndockedKeyboardWillShow:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
  }

  v6 = objc_opt_class();
  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:UIKeyboardFrameBeginUserInfoKey];
  v9 = sub_100014370(v6, v8);

  v10 = objc_opt_class();
  v11 = [v4 userInfo];
  v12 = [v11 objectForKey:UIKeyboardFrameEndUserInfoKey];
  v13 = sub_100014370(v10, v12);

  v14 = 0;
  if (v9)
  {
    if (v13)
    {
      [v9 CGRectValue];
      Height = CGRectGetHeight(v20);
      [v13 CGRectValue];
      v16 = CGRectGetHeight(v21);
      v14 = 0;
      if (Height > 0.0 && v16 > 0.0)
      {
        if (Height == v16 || vabdd_f64(Height, v16) < 0.00999999978)
        {
          [v13 CGRectValue];
          v14 = [(CRLiOSKeyboardMonitor *)self p_isFrameCorrespondingToUndockedKeyboard:?];
        }

        else
        {
          v14 = 0;
        }
      }
    }
  }

  return v14;
}

- (BOOL)p_isNotificationCorrespondingToUndockedKeyboardWillHide:(id)a3
{
  v3 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_1013626C8();
  }

  v4 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CRLiOSKeyboardMonitor p_isNotificationCorrespondingToUndockedKeyboardWillHide:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v17, 0xCu);
  }

  v5 = objc_opt_class();
  v6 = [v3 userInfo];
  v7 = [v6 objectForKey:UIKeyboardFrameBeginUserInfoKey];
  v8 = sub_100014370(v5, v7);

  v9 = objc_opt_class();
  v10 = [v3 userInfo];
  v11 = [v10 objectForKey:UIKeyboardFrameEndUserInfoKey];
  v12 = sub_100014370(v9, v11);

  v13 = 0;
  if (v8 && v12)
  {
    [v8 CGRectValue];
    Height = CGRectGetHeight(v19);
    [v12 CGRectValue];
    v15 = CGRectGetHeight(v20);
    v13 = (Height == 0.0 || vabdd_f64(0.0, Height) < 0.00999999978) && (vabdd_f64(0.0, v15) < 0.00999999978 || v15 == 0.0);
  }

  return v13;
}

- (void)p_keyboardWillChangeFrame:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_1013626DC();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CRLiOSKeyboardMonitor p_keyboardWillChangeFrame:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (!self->_keyboardIsAnimatingInOrDocking && !self->_keyboardIsAnimatingOutOrUndocking)
  {
    [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
    self->_undockedKeyboardWillShow = [(CRLiOSKeyboardMonitor *)self p_isNotificationCorrespondingToUndockedKeyboardWillShow:v4];
    self->_undockedKeyboardWillHide = [(CRLiOSKeyboardMonitor *)self p_isNotificationCorrespondingToUndockedKeyboardWillHide:v4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003AA0BC;
    v6[3] = &unk_10185BB40;
    v7 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v6];
  }
}

- (void)p_keyboardDidChangeFrame:(id)a3
{
  v4 = a3;
  if (qword_101AD5B40 != -1)
  {
    sub_1013626F0();
  }

  v5 = off_1019EDB98;
  if (os_log_type_enabled(off_1019EDB98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CRLiOSKeyboardMonitor p_keyboardDidChangeFrame:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (!self->_keyboardIsAnimatingInOrDocking && !self->_keyboardIsAnimatingOutOrUndocking)
  {
    [(CRLiOSKeyboardMonitor *)self p_updateKeyboardInfoFromNotification:v4];
    *&self->_undockedKeyboardWillShow = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003AA2E4;
    v7[3] = &unk_10185BB40;
    v8 = v4;
    [(CRLiOSKeyboardMonitor *)self p_enumerateObserversUsingBlock:v7];
    v6 = self->_keyboardFrame.size.height > 0.0 || self->_keyboardFrame.size.width > 0.0;
    [(CRLiOSKeyboardMonitor *)self p_performAnimationCompletionBlocksWithVisible:v6];
  }
}

- (CGRect)keyboardFrame
{
  objc_copyStruct(v6, &self->_keyboardFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end