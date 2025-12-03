@interface CRLUndoManager
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)groupsByEvent;
- (BOOL)isRedoing;
- (BOOL)isUndoing;
- (CRLUndoManager)initWithCommandController:(id)controller;
- (CRLUndoManager)initWithCommandController:(id)controller delegate:(id)delegate;
- (id)prepareWithInvocationTarget:(id)target;
- (id)redoActionName;
- (id)undoActionName;
- (int64_t)groupingLevel;
- (unint64_t)redoCount;
- (unint64_t)undoCount;
- (void)beginUndoGrouping;
- (void)enableUndoRegistration;
- (void)endUndoGrouping;
- (void)p_commandControllerDidCloseUndoGroup:(id)group;
- (void)p_commandControllerDidOpenUndoGroup:(id)group;
- (void)p_commandControllerDidRedo:(id)redo;
- (void)p_commandControllerDidUndo:(id)undo;
- (void)p_commandControllerWillCloseUndoGroup:(id)group;
- (void)p_commandControllerWillRedo:(id)redo;
- (void)p_commandControllerWillUndo:(id)undo;
- (void)p_updateCanUndoAndRedo;
- (void)redo;
- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)object;
- (void)removeAllActionsWithTarget:(id)target;
- (void)setActionName:(id)name;
- (void)setGroupsByEvent:(BOOL)event;
- (void)setLevelsOfUndo:(unint64_t)undo;
- (void)setRunLoopModes:(id)modes;
- (void)undo;
- (void)undoNestedGroup;
@end

@implementation CRLUndoManager

- (CRLUndoManager)initWithCommandController:(id)controller
{
  controllerCopy = controller;
  v19.receiver = self;
  v19.super_class = CRLUndoManager;
  v5 = [(CRLUndoManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_commandController, controllerCopy);
    v7 = +[NSHashTable weakObjectsHashTable];
    delegates = v6->_delegates;
    v6->_delegates = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[NSNotification CRLCommandControllerDidOpenUndoGroup];
    [v9 addObserver:v6 selector:"p_commandControllerDidOpenUndoGroup:" name:v10 object:controllerCopy];

    v11 = +[NSNotification CRLCommandControllerWillCloseUndoGroup];
    [v9 addObserver:v6 selector:"p_commandControllerWillCloseUndoGroup:" name:v11 object:controllerCopy];

    v12 = +[NSNotification CRLCommandControllerDidCloseUndoGroup];
    [v9 addObserver:v6 selector:"p_commandControllerDidCloseUndoGroup:" name:v12 object:controllerCopy];

    v13 = +[NSNotification CRLCommandControllerHistoryStateDidChange];
    [v9 addObserver:v6 selector:"p_commandControllerHistoryStateChanged:" name:v13 object:controllerCopy];

    v14 = +[NSNotification CRLCommandControllerWillUndo];
    [v9 addObserver:v6 selector:"p_commandControllerWillUndo:" name:v14 object:controllerCopy];

    v15 = +[NSNotification CRLCommandControllerDidUndo];
    [v9 addObserver:v6 selector:"p_commandControllerDidUndo:" name:v15 object:controllerCopy];

    v16 = +[NSNotification CRLCommandControllerWillRedo];
    [v9 addObserver:v6 selector:"p_commandControllerWillRedo:" name:v16 object:controllerCopy];

    v17 = +[NSNotification CRLCommandControllerDidRedo];
    [v9 addObserver:v6 selector:"p_commandControllerDidRedo:" name:v17 object:controllerCopy];

    v6->_canUndo = [controllerCopy canUndo];
    v6->_canRedo = [controllerCopy canRedo];
  }

  return v6;
}

- (CRLUndoManager)initWithCommandController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = [(CRLUndoManager *)self initWithCommandController:controller];
  v8 = v7;
  if (v7)
  {
    [(CRLUndoManager *)v7 addDelegate:delegateCopy];
  }

  return v8;
}

- (void)beginUndoGrouping
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138046C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380480();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380508();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLUndoManager beginUndoGrouping]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:54 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: beginUndoGrouping"];
}

- (void)endUndoGrouping
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380530();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380544();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013805CC();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLUndoManager endUndoGrouping]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:58 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: endUndoGrouping"];
}

- (int64_t)groupingLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  groupingLevel = [WeakRetained groupingLevel];

  return groupingLevel;
}

- (void)enableUndoRegistration
{
  disableCount = self->_disableCount;
  if (disableCount > 0)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013805F4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380608();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380690();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLUndoManager enableUndoRegistration]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:74 isFatal:0 description:"Disable count underflow"];

  disableCount = self->_disableCount;
  if (disableCount >= 1)
  {
LABEL_11:
    self->_disableCount = disableCount - 1;
  }
}

- (BOOL)groupsByEvent
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013806B8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013806CC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380754();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLUndoManager groupsByEvent]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:87 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: groupsByEvent"];

  return 0;
}

- (void)setGroupsByEvent:(BOOL)event
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138077C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380790();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380818();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLUndoManager setGroupsByEvent:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:92 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: setGroupsByEvent:"];
}

- (void)setLevelsOfUndo:(unint64_t)undo
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380840();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380854();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013808DC();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLUndoManager setLevelsOfUndo:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:96 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: setLevelsOfUndo:"];
}

- (unint64_t)undoCount
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  undoCount = [WeakRetained undoCount];

  return undoCount;
}

- (unint64_t)redoCount
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  redoCount = [WeakRetained redoCount];

  return redoCount;
}

- (void)setRunLoopModes:(id)modes
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380904();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380918();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013809A0();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLUndoManager setRunLoopModes:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:112 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: setRunLoopModes:"];
}

- (void)undoNestedGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  canUndo = [WeakRetained canUndo];

  if (canUndo)
  {
    v5 = objc_loadWeakRetained(&self->_commandController);
    [v5 undo];
  }
}

- (BOOL)isUndoing
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013809C8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013809DC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380A64();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLUndoManager isUndoing]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:128 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected."];

  return 0;
}

- (BOOL)isRedoing
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380A8C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380AA0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380B28();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLUndoManager isRedoing]"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:133 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected."];

  return 0;
}

- (void)removeAllActionsWithTarget:(id)target
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380B50();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380B64();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380BEC();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLUndoManager removeAllActionsWithTarget:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:145 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: removeAllActionsWithTarget:"];
}

- (void)registerUndoWithTarget:(id)target selector:(SEL)selector object:(id)object
{
  [CRLAssertionHandler _atomicIncrementAssertCount:target];
  if (qword_101AD5A10 != -1)
  {
    sub_101380C14();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380C28();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380CB0();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLUndoManager registerUndoWithTarget:selector:object:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:149 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: registerUndoWithTarget"];
}

- (id)prepareWithInvocationTarget:(id)target
{
  targetCopy = target;
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380CD8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380CEC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380D74();
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v5);
  }

  v6 = [NSString stringWithUTF8String:"[CRLUndoManager prepareWithInvocationTarget:]"];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:153 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: prepareWithInvocationTarget"];

  v10.receiver = self;
  v10.super_class = CRLUndoManager;
  v8 = [(CRLUndoManager *)&v10 prepareWithInvocationTarget:targetCopy];

  return v8;
}

- (id)undoActionName
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  undoActionString = [WeakRetained undoActionString];

  return undoActionString;
}

- (id)redoActionName
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  redoActionString = [WeakRetained redoActionString];

  return redoActionString;
}

- (void)setActionName:(id)name
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101380D9C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101380DB0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101380E38();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLUndoManager setActionName:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLUndoManager.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:168 isFatal:0 description:"CRLUndoManager: undo manager has been overridden. This call is unexpected: setActionName:"];
}

- (BOOL)canUndo
{
  if (![(CRLUndoManager *)self canUndoDisregardingDelegates])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        if (![*(*(&v10 + 1) + 8 * i) canUndo])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (BOOL)canRedo
{
  if (![(CRLUndoManager *)self canRedoDisregardingDelegates])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v4 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allObjects);
        }

        if (![*(*(&v10 + 1) + 8 * i) canRedo])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (void)undo
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  canUndo = [WeakRetained canUndo];

  if (canUndo)
  {
    v5 = objc_loadWeakRetained(&self->_commandController);
    [v5 undo];
  }
}

- (void)redo
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  canRedo = [WeakRetained canRedo];

  if (canRedo)
  {
    v5 = objc_loadWeakRetained(&self->_commandController);
    [v5 redo];
  }
}

- (void)p_commandControllerDidOpenUndoGroup:(id)group
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerDidOpenUndoGroupNotification object:self];
}

- (void)p_commandControllerWillCloseUndoGroup:(id)group
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerWillCloseUndoGroupNotification object:self];
}

- (void)p_commandControllerDidCloseUndoGroup:(id)group
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerDidCloseUndoGroupNotification object:self];
}

- (void)p_updateCanUndoAndRedo
{
  WeakRetained = objc_loadWeakRetained(&self->_commandController);
  self->_canUndo = [WeakRetained canUndo];

  v4 = objc_loadWeakRetained(&self->_commandController);
  self->_canRedo = [v4 canRedo];
}

- (void)p_commandControllerWillUndo:(id)undo
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerWillUndoChangeNotification object:self];
}

- (void)p_commandControllerDidUndo:(id)undo
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerDidUndoChangeNotification object:self];
}

- (void)p_commandControllerWillRedo:(id)redo
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerWillRedoChangeNotification object:self];
}

- (void)p_commandControllerDidRedo:(id)redo
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:NSUndoManagerDidRedoChangeNotification object:self];
}

@end