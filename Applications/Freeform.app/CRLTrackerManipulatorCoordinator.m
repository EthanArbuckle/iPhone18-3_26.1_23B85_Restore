@interface CRLTrackerManipulatorCoordinator
+ (void)p_dynamicallySubclassGRForNotification:(id)a3;
+ (void)p_removeDynamicSubclass:(id)a3;
- (BOOL)relinquishTrackerManipulatorControl:(id)a3;
- (BOOL)takeControlWithTrackerManipulator:(id)a3;
- (CRLTrackerManipulatorCoordinator)init;
- (void)operationDidEnd;
- (void)operationWillEnd;
- (void)p_notifyControlChange;
- (void)registerTrackerManipulator:(id)a3;
- (void)unregisterTrackerManipulator:(id)a3;
@end

@implementation CRLTrackerManipulatorCoordinator

- (CRLTrackerManipulatorCoordinator)init
{
  v6.receiver = self;
  v6.super_class = CRLTrackerManipulatorCoordinator;
  v2 = [(CRLTrackerManipulatorCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    mRegisteredTMs = v2->mRegisteredTMs;
    v2->mRegisteredTMs = v3;
  }

  return v2;
}

- (void)registerTrackerManipulator:(id)a3
{
  v4 = a3;
  if (qword_101AD5CA0 != -1)
  {
    sub_101368324();
  }

  v5 = off_1019EFD58;
  if (os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "registering %@", &v9, 0xCu);
  }

  [(NSMutableSet *)self->mRegisteredTMs addObject:v4];
}

- (void)unregisterTrackerManipulator:(id)a3
{
  v4 = a3;
  if (qword_101AD5CA0 != -1)
  {
    sub_101368338();
  }

  v5 = off_1019EFD58;
  if (os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "unregistering %@", &v9, 0xCu);
  }

  [(NSMutableSet *)self->mRegisteredTMs removeObject:v4];
}

- (BOOL)takeControlWithTrackerManipulator:(id)a3
{
  v5 = a3;
  v6 = v5;
  p_mControllingTM = &self->mControllingTM;
  if (self->mControllingTM != v5)
  {
    if (v5 && ![(CRLTrackerManipulatorCoordinator *)self hasRegisteredTrackerManipulator:v5])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136834C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101368360();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013683E8();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLTrackerManipulatorCoordinator takeControlWithTrackerManipulator:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:55 isFatal:0 description:"attempting to take control with an unregistered TM %@", v6];
    }

    if (qword_101AD5CA0 != -1)
    {
      sub_101368410();
    }

    v11 = off_1019EFD58;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v6)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
      }

      else
      {
        v13 = @"(null)";
      }

      v14 = *p_mControllingTM;
      if (*p_mControllingTM)
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
      }

      else
      {
        v16 = @"(null)";
      }

      *buf = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "attempting to take control with %@ from controllingTM %@", buf, 0x16u);
      if (v14)
      {
      }

      if (v6)
      {
      }
    }

    v17 = *p_mControllingTM;
    if (!*p_mControllingTM || v17 == v6)
    {
      goto LABEL_32;
    }

    if ([(CRLTrackerManipulator *)v17 allowTrackerManipulatorToTakeControl:v6])
    {
      if (objc_opt_respondsToSelector())
      {
        [*p_mControllingTM didRelinquishControl];
      }

      [objc_opt_class() p_removeDynamicSubclass:self->mControllingTM];
      mControllingTM = self->mControllingTM;
      self->mControllingTM = 0;

LABEL_32:
      [objc_opt_class() p_dynamicallySubclassGRForNotification:v6];
      objc_storeStrong(&self->mControllingTM, a3);
      if (objc_opt_respondsToSelector())
      {
        [*p_mControllingTM willTakeControl];
      }

      [(CRLTrackerManipulatorCoordinator *)self p_notifyControlChange];
      goto LABEL_35;
    }

    if (qword_101AD5CA0 != -1)
    {
      sub_101368438();
    }

    v21 = off_1019EFD58;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
LABEL_49:

      v19 = 0;
      goto LABEL_36;
    }

    v22 = *p_mControllingTM;
    if (v22)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      if (v6)
      {
LABEL_42:
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
LABEL_45:
        *buf = 138412546;
        v28 = v24;
        v29 = 2112;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "ControllingTM %@ will not release control to %@", buf, 0x16u);
        if (v6)
        {
        }

        if (v22)
        {
        }

        goto LABEL_49;
      }
    }

    else
    {
      v24 = @"(null)";
      if (v6)
      {
        goto LABEL_42;
      }
    }

    v26 = @"(null)";
    goto LABEL_45;
  }

LABEL_35:
  v19 = 1;
LABEL_36:

  return v19;
}

- (BOOL)relinquishTrackerManipulatorControl:(id)a3
{
  mControllingTM = self->mControllingTM;
  if (mControllingTM != a3)
  {
    goto LABEL_2;
  }

  if ([(CRLTrackerManipulator *)mControllingTM allowTrackerManipulatorToTakeControl:0])
  {
    if (objc_opt_respondsToSelector())
    {
      [(CRLTrackerManipulator *)self->mControllingTM didRelinquishControl];
    }

    [objc_opt_class() p_removeDynamicSubclass:self->mControllingTM];
    v6 = self->mControllingTM;
    self->mControllingTM = 0;

    [(CRLTrackerManipulatorCoordinator *)self p_notifyControlChange];
    LOBYTE(v5) = 1;
  }

  else
  {
    if (qword_101AD5CA0 != -1)
    {
      sub_101368460();
    }

    v7 = off_1019EFD58;
    v5 = os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO);
    if (v5)
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ControllingTM %@ will not relinquish control", &v12, 0xCu);

LABEL_2:
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)operationWillEnd
{
  if (qword_101AD5CA0 != -1)
  {
    sub_101368474();
  }

  v3 = off_1019EFD58;
  if (os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "operation will end with controllingTM: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 operationWillEnd];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)operationDidEnd
{
  if (qword_101AD5CA0 != -1)
  {
    sub_101368488();
  }

  v3 = off_1019EFD58;
  if (os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "operation did end with controllingTM: %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v20 + 1) + 8 * i) operationDidEnd];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(NSMutableSet *)self->mRegisteredTMs removeAllObjects];
  p_mControllingTM = &self->mControllingTM;
  [(CRLTrackerManipulatorCoordinator *)self relinquishTrackerManipulatorControl:self->mControllingTM];
  if (self->mControllingTM)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136849C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013684C4(p_mControllingTM, v14, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013685A4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLTrackerManipulatorCoordinator operationDidEnd]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m"];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:126 isFatal:0 description:"Controlling TM %@ would not give up control at the end of an operation", v19];
  }
}

- (void)p_notifyControlChange
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableSet *)self->mRegisteredTMs copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 trackerManipulatorDidTakeControl:self->mControllingTM];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (void)p_dynamicallySubclassGRForNotification:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    if (!qword_101A34DD0)
    {
      v5 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
      v6 = qword_101A34DD0;
      qword_101A34DD0 = v5;
    }

    Class = object_getClass(v3);
    v8 = [qword_101A34DD0 dictionaryRepresentation];
    v9 = [v8 allValues];
    v10 = [v9 containsObject:Class];

    if (v10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013686B0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013686C4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136874C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLTrackerManipulatorCoordinator p_dynamicallySubclassGRForNotification:]");
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:179 isFatal:0 description:"trying to subclass something that is already subclassed %@", v3];
LABEL_14:

LABEL_19:
      objc_sync_exit(v4);

      goto LABEL_20;
    }

    v14 = [qword_101A34DD0 objectForKey:Class];
    if (!v14)
    {
      v15 = [NSString stringWithFormat:@"__TSDResetNotifying%s", class_getName(Class)];
      v16 = [v15 UTF8String];

      v17 = objc_opt_class();
      ClassPair = objc_allocateClassPair(v17, v16, 0);
      v14 = ClassPair;
      if (!ClassPair)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013685E0();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          NSStringFromClass(v20);
          objc_claimAutoreleasedReturnValue();
          sub_1013685F4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101368688();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLTrackerManipulatorCoordinator p_dynamicallySubclassGRForNotification:]");
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m"];
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:198 isFatal:0 description:"No dynamic subclass for %@!", v23];

        goto LABEL_14;
      }

      class_addMethod(ClassPair, "reset", sub_1003DCD14, "v@:");
      objc_registerClassPair(v14);
      [qword_101A34DD0 setObject:v14 forKey:Class];
    }

    object_setClass(v3, v14);
    goto LABEL_19;
  }

LABEL_20:
}

+ (void)p_removeDynamicSubclass:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    objc_sync_enter(v4);
    Class = object_getClass(v3);
    v6 = [qword_101A34DD0 dictionaryRepresentation];
    v7 = [v6 allValues];
    v8 = [v7 containsObject:Class];

    if (v8)
    {
      Superclass = class_getSuperclass(Class);
      object_setClass(v3, Superclass);
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101368774();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101368788();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101368810();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v11 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLTrackerManipulatorCoordinator p_removeDynamicSubclass:]");
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTrackerManipulatorCoordinator.m"];
      [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:212 isFatal:0 description:"removing dynamic subclass from GR %@ that doesn't have one!", v3];
    }

    objc_sync_exit(v4);
  }
}

@end