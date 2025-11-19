@interface CRLiOSContextMenuController
- (CRLiOSContextMenuController)initWithDelegate:(id)a3;
- (CRLiOSContextMenuControllerDelegate)delegate;
- (void)dealloc;
- (void)p_contextMenuWillHide:(id)a3;
- (void)p_resumeCollaboration;
- (void)p_showContextMenuForChangeSources:(id)a3 withBlock:(id)a4;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)showContextMenuFromView:(id)a3 rect:(CGRect)a4 animated:(BOOL)a5 withChangeSources:(id)a6;
- (void)showContextMenuInPreviousLocationAnimated:(BOOL)a3 withChangeSources:(id)a4;
@end

@implementation CRLiOSContextMenuController

- (CRLiOSContextMenuController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLiOSContextMenuController;
  v5 = [(CRLiOSContextMenuController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(NSBlockOperation *)self->_resetOperation cancel];
  if (self->_changeSources)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320BF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320C04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320C98();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSContextMenuController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSContextMenuController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:50 isFatal:0 description:"expected nil value for '%{public}s'", "_changeSources"];
  }

  [(NSTimer *)self->_resumeCollaborationTimer invalidate];
  v6.receiver = self;
  v6.super_class = CRLiOSContextMenuController;
  [(CRLiOSContextMenuController *)&v6 dealloc];
}

- (void)showContextMenuInPreviousLocationAnimated:(BOOL)a3 withChangeSources:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016ABB0;
  v4[3] = &unk_1018412D0;
  v5 = a3;
  [(CRLiOSContextMenuController *)self p_showContextMenuForChangeSources:a4 withBlock:v4];
}

- (void)showContextMenuFromView:(id)a3 rect:(CGRect)a4 animated:(BOOL)a5 withChangeSources:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016ACE0;
  v13[3] = &unk_101841320;
  v19 = a5;
  v14 = a3;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  v12 = v14;
  [(CRLiOSContextMenuController *)self p_showContextMenuForChangeSources:a6 withBlock:v13];
}

- (void)p_showContextMenuForChangeSources:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained editingCoordinator];

  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320CC0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320CD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320D68();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSContextMenuController p_showContextMenuForChangeSources:withBlock:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSContextMenuController.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:79 isFatal:0 description:"invalid nil value for '%{public}s'", "_delegate.editingCoordinator"];
  }

  if (self->_changeSources)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320D90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320DB8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320E4C();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLiOSContextMenuController p_showContextMenuForChangeSources:withBlock:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSContextMenuController.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:82 isFatal:0 description:"expected nil value for '%{public}s'", "_changeSources"];
  }

  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = [v16 editingCoordinator];
  v18 = [v17 changeNotifier];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [v18 addObserver:self forChangeSource:*(*(&v32 + 1) + 8 * i)];
      }

      v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v21);
  }

  [(CRLiOSContextMenuController *)self setChangeSources:v19];
  if (self->_resumeCollaborationTimer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101320E74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101320E9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101320F30();
    }

    v24 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v24);
    }

    v25 = [NSString stringWithUTF8String:"[CRLiOSContextMenuController p_showContextMenuForChangeSources:withBlock:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSContextMenuController.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:90 isFatal:0 description:"expected nil value for '%{public}s'", "_resumeCollaborationTimer"];
  }

  v27 = [NSTimer scheduledTimerWithTimeInterval:self target:"p_resumeCollaboration" selector:0 userInfo:0 repeats:15.0];
  [(CRLiOSContextMenuController *)self setResumeCollaborationTimer:v27];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"p_contextMenuWillHide:" name:UIMenuControllerWillHideMenuNotification object:0];

  v29 = objc_loadWeakRetained(&self->_delegate);
  v30 = [v29 editingCoordinator];
  [v30 suspendCollaborationWithReason:@"CRLiOSContextMenu"];

  v7[2](v7);
  v31 = +[UIMenuController sharedMenuController];
  LOBYTE(v30) = [v31 isMenuVisible];

  if ((v30 & 1) == 0)
  {
    [(CRLiOSContextMenuController *)self p_contextMenuWillHide:0];
  }
}

- (void)p_contextMenuWillHide:(id)a3
{
  v4 = a3;
  resumeCollaborationTimer = self->_resumeCollaborationTimer;
  if (resumeCollaborationTimer)
  {
    [(NSTimer *)self->_resumeCollaborationTimer invalidate];
    [(CRLiOSContextMenuController *)self setResumeCollaborationTimer:0];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIMenuControllerWillHideMenuNotification object:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained editingCoordinator];
  v9 = [v8 changeNotifier];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_changeSources;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 removeObserver:self forChangeSource:{*(*(&v19 + 1) + 8 * v14), v19}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(CRLiOSContextMenuController *)self setChangeSources:0];
  if (resumeCollaborationTimer)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 editingCoordinator];
    [v16 resumeCollaborationWithReason:@"CRLiOSContextMenu"];
  }

  v17 = [(CRLiOSContextMenuController *)self resetOperation];
  [v17 cancel];

  [(CRLiOSContextMenuController *)self setResetOperation:0];
  v18 = objc_loadWeakRetained(&self->_delegate);
  [v18 contextMenuDidHideForContextMenuController:self];
}

- (void)p_resumeCollaboration
{
  [(NSTimer *)self->_resumeCollaborationTimer invalidate];
  [(CRLiOSContextMenuController *)self setResumeCollaborationTimer:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained editingCoordinator];
  [v3 resumeCollaborationWithReason:@"CRLiOSContextMenu"];
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSContextMenuController *)self resetOperation];

  if (!v8)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10016B888;
    v15 = &unk_10183AF10;
    objc_copyWeak(&v16, &location);
    v9 = [NSBlockOperation blockOperationWithBlock:&v12];
    [(CRLiOSContextMenuController *)self setResetOperation:v9, v12, v13, v14, v15];

    v10 = +[NSOperationQueue mainQueue];
    v11 = [(CRLiOSContextMenuController *)self resetOperation];
    [v10 addOperation:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (CRLiOSContextMenuControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end