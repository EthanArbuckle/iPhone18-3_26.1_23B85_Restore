@interface CRLProgressGroup
- (BOOL)isIndeterminate;
- (CRLProgressGroup)initWithChildren:(id)children;
- (double)maxValue;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (id)initForSubclass;
- (void)p_updateChildrenProgressObservers;
- (void)removeProgressObserver:(id)observer;
@end

@implementation CRLProgressGroup

- (CRLProgressGroup)initWithChildren:(id)children
{
  childrenCopy = children;
  v11.receiver = self;
  v11.super_class = CRLProgressGroup;
  initForSubclass = [(CRLProgress *)&v11 initForSubclass];
  if (initForSubclass)
  {
    v6 = [childrenCopy copy];
    children = initForSubclass->_children;
    initForSubclass->_children = v6;

    v8 = dispatch_queue_create("com.apple.freeform.CRLProgressGroup", 0);
    childrenProgressObserversQueue = initForSubclass->_childrenProgressObserversQueue;
    initForSubclass->_childrenProgressObserversQueue = v8;
  }

  return initForSubclass;
}

- (id)initForSubclass
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846518);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLProgressGroup initForSubclass]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m";
    v18 = 1024;
    v19 = 373;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846538);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLProgressGroup initForSubclass]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:373 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLProgressGroup initForSubclass]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (double)value
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_children;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) value];
        v6 = v6 + v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (double)maxValue
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_children;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) maxValue];
        v6 = v6 + v8;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (BOOL)isIndeterminate
{
  if ([(NSArray *)self->_children count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_children;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) isIndeterminate])
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8.receiver = self;
  v8.super_class = CRLProgressGroup;
  v6 = [(CRLProgress *)&v8 addProgressObserverWithValueInterval:queue queue:handler handler:interval];
  [(CRLProgressGroup *)self p_updateChildrenProgressObservers];

  return v6;
}

- (void)removeProgressObserver:(id)observer
{
  v4.receiver = self;
  v4.super_class = CRLProgressGroup;
  [(CRLProgress *)&v4 removeProgressObserver:observer];
  [(CRLProgressGroup *)self p_updateChildrenProgressObservers];
}

- (void)p_updateChildrenProgressObservers
{
  [(CRLProgress *)self protected_minProgressObserverValueInterval];
  childrenProgressObserversQueue = self->_childrenProgressObserversQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D1510;
  v5[3] = &unk_10183B720;
  v5[4] = self;
  v5[5] = v4;
  dispatch_async(childrenProgressObserversQueue, v5);
}

@end