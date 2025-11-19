@interface CRLiOSDocumentModeController
- (BOOL)setToPreviousModeAnimated:(BOOL)a3;
- (CRLiOSDocumentModeController)initWithDelegate:(id)a3;
- (CRLiOSDocumentModeControllerDelegate)delegate;
- (void)addModeObserver:(id)a3;
- (void)p_editorControllerSelectionPathDidChange:(id)a3;
- (void)p_notifyAllObserversOfModeChangeTo:(id)a3 from:(id)a4 animated:(BOOL)a5 didChange:(BOOL)a6;
- (void)p_setMode:(id)a3 animated:(BOOL)a4 forced:(BOOL)a5;
- (void)removeModeObserver:(id)a3;
- (void)resetToDefaultModeAnimated:(BOOL)a3;
- (void)setMode:(id)a3;
- (void)willTeardownEditorController:(id)a3;
@end

@implementation CRLiOSDocumentModeController

- (CRLiOSDocumentModeController)initWithDelegate:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CRLiOSDocumentModeController;
  v5 = [(CRLiOSDocumentModeController *)&v17 init];
  if (v5)
  {
    if (!+[NSThread isMainThread])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101388EA4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101388ECC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101388F54();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController initWithDelegate:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:35 isFatal:0 description:"This operation must only be performed on the main thread."];
    }

    v9 = [v4 defaultDocumentMode];
    mode = v5->_mode;
    v5->_mode = v9;

    if (!v5->_mode)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101388F7C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101388FA4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101389054();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController initWithDelegate:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:37 isFatal:0 description:"invalid nil value for '%{public}s'", "_mode"];
    }

    v14 = [NSHashTable hashTableWithOptions:5];
    observers = v5->_observers;
    v5->_observers = v14;

    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)p_editorControllerSelectionPathDidChange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v14 = sub_100013F00(v5, v6);

  if (!self->_currentlyChangingMode)
  {
    if (!-[CRLiOSDocumentMode isValidForEditorController:](self->_mode, "isValidForEditorController:", v14) || (v7 = objc_loadWeakRetained(&self->_delegate), v8 = [v7 isValidMode:self->_mode forEditorController:v14], v7, (v8 & 1) == 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained modeForEditorController:v14];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v12 = [v13 defaultDocumentMode];
      }

      [(CRLiOSDocumentModeController *)self p_setMode:v12 animated:1 forced:1];
    }
  }
}

- (void)addModeObserver:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138907C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389090();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389118();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController addModeObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:54 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if ([(NSHashTable *)self->_observers containsObject:v4])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389140();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389168();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013891F0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController addModeObserver:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:55 isFatal:0 description:"Trying to add a document mode observer that's already added"];
  }

  [(NSHashTable *)self->_observers addObject:v4];
}

- (void)removeModeObserver:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389218();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138922C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013892B4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController removeModeObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:61 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (![(NSHashTable *)self->_observers containsObject:v4])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013892DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389304();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138938C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController removeModeObserver:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:62 isFatal:0 description:"Trying to remove a document mode observer that has not been added"];
  }

  [(NSHashTable *)self->_observers removeObject:v4];
}

- (void)setMode:(id)a3
{
  v4 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013893B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013893C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389450();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController setMode:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:68 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  [(CRLiOSDocumentModeController *)self setMode:v4 animated:1];
}

- (void)p_setMode:(id)a3 animated:(BOOL)a4 forced:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v46 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389478();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138948C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389514();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController p_setMode:animated:forced:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:77 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if (self->_currentlyChangingMode)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138953C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389564();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013895EC();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v31);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Should not change mode while we are already changing the mode.", v32, v33, v34, v35, v36, v37, v38, "[CRLiOSDocumentModeController p_setMode:animated:forced:]");
    v39 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController p_setMode:animated:forced:]"];
    v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:81 isFatal:1 description:"Should not change mode while we are already changing the mode."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
    abort();
  }

  v43 = v5;
  v44 = v6;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = self->_observedEditorControllers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = +[NSNotificationCenter defaultCenter];
        [v17 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v16];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v13);
  }

  v18 = [v46 editorControllersToObserve];
  v19 = [v18 copy];
  observedEditorControllers = self->_observedEditorControllers;
  self->_observedEditorControllers = v19;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = self->_observedEditorControllers;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v47 + 1) + 8 * j);
        v27 = +[NSNotificationCenter defaultCenter];
        [v27 addObserver:self selector:"p_editorControllerSelectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v26];
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v23);
  }

  mode = self->_mode;
  v29 = mode;
  v30 = v46;
  if (([v30 isEqual:v29] & 1) == 0)
  {
    self->_currentlyChangingMode = 1;
    [(CRLiOSDocumentMode *)v29 modeWillEndForMode:v30 forced:v43];
    [v30 modeWillBeginFromMode:v29 forced:v43];
    [(CRLiOSDocumentModeController *)self p_notifyAllObserversOfModeChangeTo:v30 from:v29 animated:v44 didChange:0];
    objc_storeStrong(&self->_mode, a3);
    objc_storeStrong(&self->_previousMode, mode);
    [(CRLiOSDocumentMode *)v29 modeDidEndForMode:v30 forced:v43];
    [v30 modeDidBeginFromMode:v29 forced:v43];
    [(CRLiOSDocumentModeController *)self p_notifyAllObserversOfModeChangeTo:v30 from:v29 animated:v44 didChange:1];
    self->_currentlyChangingMode = 0;
  }
}

- (BOOL)setToPreviousModeAnimated:(BOOL)a3
{
  v3 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101389614();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101389628();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013896B0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController setToPreviousModeAnimated:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:120 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  previousMode = self->_previousMode;
  if (previousMode)
  {
    [(CRLiOSDocumentModeController *)self setMode:self->_previousMode animated:v3];
  }

  return previousMode != 0;
}

- (void)resetToDefaultModeAnimated:(BOOL)a3
{
  v3 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013896D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013896EC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101389774();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeController resetToDefaultModeAnimated:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:132 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained defaultDocumentMode];
  [(CRLiOSDocumentModeController *)self setMode:v9 animated:v3];
}

- (void)willTeardownEditorController:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_observedEditorControllers containsObject:v4])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v4];

    observedEditorControllers = self->_observedEditorControllers;
    v10 = v4;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = [(NSArray *)observedEditorControllers crl_arrayByRemovingObjectsIdenticalToObjectsInArray:v7];
    v9 = self->_observedEditorControllers;
    self->_observedEditorControllers = v8;
  }
}

- (void)p_notifyAllObserversOfModeChangeTo:(id)a3 from:(id)a4 animated:(BOOL)a5 didChange:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(NSHashTable *)self->_observers copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (v6)
        {
          [v18 didSetDocumentToMode:v10 fromMode:v11 animated:v7];
        }

        else
        {
          [v18 willSetDocumentToMode:v10 fromMode:v11 animated:{v7, v19}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (CRLiOSDocumentModeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end