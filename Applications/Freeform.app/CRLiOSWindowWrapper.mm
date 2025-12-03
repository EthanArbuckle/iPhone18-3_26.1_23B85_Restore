@interface CRLiOSWindowWrapper
+ (id)windowWrapperForView:(id)view assert:(BOOL)assert;
- (BOOL)isInSplitViewMode;
- (CRLiOSWindowWrapper)initWithWindow:(id)window;
- (UIWindow)window;
- (id)beginIgnoringUserInteraction;
- (id)newWrapperBeginningIgnoringUserInteractionSafely;
- (int64_t)interfaceOrientation;
- (void)endIgnoringUserInteractionWithToken:(id)token;
@end

@implementation CRLiOSWindowWrapper

- (CRLiOSWindowWrapper)initWithWindow:(id)window
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = CRLiOSWindowWrapper;
  v5 = [(CRLiOSWindowWrapper *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_window, windowCopy);
    v7 = [[CRLTraceableResource alloc] initWithName:@"CRLiOSWindowWrapper.UserInteraction" logContext:0];
    userInteractionIgnoredTraceableResource = v6->_userInteractionIgnoredTraceableResource;
    v6->_userInteractionIgnoredTraceableResource = v7;
  }

  return v6;
}

+ (id)windowWrapperForView:(id)view assert:(BOOL)assert
{
  assertCopy = assert;
  viewCopy = view;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132490C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324920();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013249A8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSWindowWrapper windowWrapperForView:assert:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:33 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  window = [viewCopy window];
  if (!window)
  {
    v10 = 0;
LABEL_18:
    if (assertCopy)
    {
      v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013249F8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_101324A20(viewCopy, v11, v12);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101324B24();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLiOSWindowWrapper windowWrapperForView:assert:]");
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
      if (viewCopy)
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:53 isFatal:0 description:"Could not find scene wrapper for view <%{public}@: %{public}p>", v17, viewCopy];
      }

      else
      {
        [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:53 isFatal:0 description:"Could not find scene wrapper for view <%{public}@: %{public}p>", @"Nil", 0];
      }

      v10 = 0;
    }

    goto LABEL_31;
  }

  if (qword_101A34760 != -1)
  {
    sub_1013249D0();
  }

  v10 = [qword_101A34758 objectForKey:window];
  if (!v10)
  {
    v10 = [[CRLiOSWindowWrapper alloc] initWithWindow:window];
    [qword_101A34758 setObject:v10 forKey:window];
    if (!v10)
    {
      goto LABEL_18;
    }
  }

LABEL_31:

  return v10;
}

- (id)beginIgnoringUserInteraction
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324B4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324B60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324BE8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSWindowWrapper beginIgnoringUserInteraction]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:60 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v6 = [(CRLTraceableResource *)self->_userInteractionIgnoredTraceableResource willAcquireResourceWithIntent:@"IgnoreUserInteraction" timeout:10 parent:0 context:0];
  userInteractionIgnoredCount = self->_userInteractionIgnoredCount;
  if (!userInteractionIgnoredCount)
  {
    if (self->_suspendUserInteractionIgnoredCount)
    {
      userInteractionIgnoredCount = 0;
    }

    else
    {
      window = [(CRLiOSWindowWrapper *)self window];
      isUserInteractionEnabled = [window isUserInteractionEnabled];

      if ((isUserInteractionEnabled & 1) == 0)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101324C10();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101324C38();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101324CC0();
        }

        v10 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v10);
        }

        v11 = [NSString stringWithUTF8String:"[CRLiOSWindowWrapper beginIgnoringUserInteraction]"];
        v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
        [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:67 isFatal:0 description:"userInteraction should be enabled when _userInteractionEnabledCount = 0"];
      }

      window2 = [(CRLiOSWindowWrapper *)self window];
      [window2 setUserInteractionEnabled:0];

      userInteractionIgnoredCount = self->_userInteractionIgnoredCount;
    }
  }

  self->_userInteractionIgnoredCount = userInteractionIgnoredCount + 1;
  [(CRLTraceableResource *)self->_userInteractionIgnoredTraceableResource didAcquireResourceWithToken:v6];

  return v6;
}

- (void)endIgnoringUserInteractionWithToken:(id)token
{
  tokenCopy = token;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324CE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324CFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324D84();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSWindowWrapper endIgnoringUserInteractionWithToken:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:80 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  userInteractionIgnoredCount = self->_userInteractionIgnoredCount;
  if (userInteractionIgnoredCount)
  {
    v9 = userInteractionIgnoredCount - 1;
    self->_userInteractionIgnoredCount = v9;
    if (!v9)
    {
LABEL_13:
      window = [(CRLiOSWindowWrapper *)self window];
      [window setUserInteractionEnabled:1];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324DAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324DD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324E5C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSWindowWrapper endIgnoringUserInteractionWithToken:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSWindowWrapper.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:85 isFatal:0 description:"Called endIgnoringUserInteractionWithToken without matching beginIgnoringUserInteraction"];

    if (!self->_userInteractionIgnoredCount)
    {
      goto LABEL_13;
    }
  }

  [(CRLTraceableResource *)self->_userInteractionIgnoredTraceableResource didRelinquishResourceWithToken:tokenCopy];
}

- (id)newWrapperBeginningIgnoringUserInteractionSafely
{
  beginIgnoringUserInteraction = [(CRLiOSWindowWrapper *)self beginIgnoringUserInteraction];
  v4 = [[CRLiOSWindowIgnoreUserInteractionSafeWrapper alloc] initWithWindowWrapper:self token:beginIgnoringUserInteraction];

  return v4;
}

- (BOOL)isInSplitViewMode
{
  window = [(CRLiOSWindowWrapper *)self window];
  screen = [window screen];
  [screen bounds];
  Width = CGRectGetWidth(v9);

  window2 = [(CRLiOSWindowWrapper *)self window];
  [window2 bounds];
  v7 = CGRectGetWidth(v10);

  return Width - v7 >= 100.0;
}

- (int64_t)interfaceOrientation
{
  window = [(CRLiOSWindowWrapper *)self window];
  screen = [window screen];
  [screen bounds];
  v5 = v4;
  v7 = v6;

  if (v5 <= v7)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end