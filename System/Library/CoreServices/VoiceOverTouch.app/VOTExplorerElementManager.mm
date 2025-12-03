@interface VOTExplorerElementManager
- (SCRCThread)targetThread;
- (VOTExplorerElementManager)initWithTargetThread:(id)thread;
- (VOTExplorerElementManagerDelegate)delegate;
- (id)_nextExplorerElementInDirection:(unint64_t)direction fromElement:(id)element didWrap:(BOOL *)wrap;
- (void)__outputRequestFinished:(id)finished;
- (void)_finalizeReadAllOperation:(BOOL)operation interruptSpeechIfNeeded:(BOOL)needed;
- (void)_readElementInDirection:(unint64_t)direction assignNativeFocus:(BOOL)focus;
- (void)_sendExplorerOutputRequest:(id)request forceReread:(BOOL)reread interruptCurrentSpeech:(BOOL)speech;
- (void)_updateCurrentElementByMovingInDirection:(unint64_t)direction fromElement:(id)element context:(id)context;
- (void)cancelCurrentReadAll;
- (void)cancelPendingReadAll;
- (void)dealloc;
- (void)outputRequestFinished:(id)finished;
- (void)readAll:(id)all;
- (void)readAllAfterDelay:(double)delay context:(id)context;
- (void)updateWithExplorerElements:(id)elements focusedElement:(id)element;
@end

@implementation VOTExplorerElementManager

- (VOTExplorerElementManager)initWithTargetThread:(id)thread
{
  threadCopy = thread;
  v12.receiver = self;
  v12.super_class = VOTExplorerElementManager;
  v5 = [(VOTExplorerElementManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(VOTExplorerElementManager *)v5 setTargetThread:threadCopy];
    v7 = objc_alloc_init(VOTTVSpeechRequestManager);
    [(VOTExplorerElementManager *)v6 setTvSpeechRequestManager:v7];
    v8 = objc_allocWithZone(SCRCTargetSelectorTimer);
    targetThread = [(VOTExplorerElementManager *)v6 targetThread];
    v10 = [v8 initWithTarget:v6 selector:"_handleReadAllExplorerElementsTimerDidFire:" thread:targetThread];

    [(VOTExplorerElementManager *)v6 setReadAllExplorerElementsTimer:v10];
  }

  return v6;
}

- (void)dealloc
{
  [(VOTExplorerElementManager *)self setDelegate:0];
  [(VOTExplorerElementManager *)self setFocusedElement:0];
  readAllExplorerElementsTimer = [(VOTExplorerElementManager *)self readAllExplorerElementsTimer];
  [readAllExplorerElementsTimer invalidate];

  [(VOTExplorerElementManager *)self setReadAllExplorerElementsTimer:0];
  [(VOTExplorerElementManager *)self setTargetThread:0];
  [(VOTExplorerElementManager *)self setExplorerElements:0];
  [(VOTExplorerElementManager *)self setCurrentExplorerElement:0];
  [(VOTExplorerElementManager *)self setLastExplorerOutputRequest:0];
  [(VOTExplorerElementManager *)self setTvSpeechRequestManager:0];
  [(VOTExplorerElementManager *)self setCurrentReadAllContext:0];
  v4.receiver = self;
  v4.super_class = VOTExplorerElementManager;
  [(VOTExplorerElementManager *)&v4 dealloc];
}

- (void)updateWithExplorerElements:(id)elements focusedElement:(id)element
{
  elementsCopy = elements;
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100112AB8;
  v26[3] = &unk_1001CB698;
  v26[4] = &v27;
  v10 = [elementsCopy axFilterObjectsUsingBlock:v26];
  v11 = v10;
  if (*(v28 + 24) == 1)
  {
    v12 = v10;

    elementsCopy = v12;
  }

  explorerElements = [(VOTExplorerElementManager *)self explorerElements];
  v14 = [elementsCopy axIsEqualToOrderedArray:explorerElements withPredicate:&stru_1001CB6D8];

  v15 = VOTLogTVExplorer();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [NSNumber numberWithBool:v14 ^ 1];
    v17 = +[NSThread callStackSymbols];
    *buf = 138543618;
    v32 = v16;
    v33 = 2114;
    v34 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Explorer elements did change? %{public}@\n%{public}@", buf, 0x16u);
  }

  [(VOTExplorerElementManager *)self setFocusedElement:elementCopy];
  [(VOTExplorerElementManager *)self setElementsDidChangeOnLastUpdate:v14 ^ 1];
  if ((v14 & 1) == 0)
  {
    tvSpeechRequestManager = [(VOTExplorerElementManager *)self tvSpeechRequestManager];
    [tvSpeechRequestManager reset];

    [(VOTExplorerElementManager *)self _finalizeReadAllOperation:0];
    [(VOTExplorerElementManager *)self setExplorerElements:elementsCopy];
    [(VOTExplorerElementManager *)self setStartedReadingCurrentElements:0];
    v19 = VOTLogTVExplorer();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v32 = elementsCopy;
      v33 = 2114;
      v34 = elementCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "New Explorer Elements: %{public}@\nFocus Element: %{public}@", buf, 0x16u);
    }
  }

  currentExplorerElement = [(VOTExplorerElementManager *)self currentExplorerElement];
  if (currentExplorerElement)
  {
    explorerElements2 = [(VOTExplorerElementManager *)self explorerElements];
    currentExplorerElement2 = [(VOTExplorerElementManager *)self currentExplorerElement];
    if ([explorerElements2 containsObject:currentExplorerElement2])
    {
    }

    else
    {
      currentExplorerElement3 = [(VOTExplorerElementManager *)self currentExplorerElement];
      focusedElement = [(VOTExplorerElementManager *)self focusedElement];
      v25 = [currentExplorerElement3 isEqual:focusedElement];

      if ((v25 & 1) == 0)
      {
        [(VOTExplorerElementManager *)self setCurrentExplorerElement:0];
      }
    }
  }

  _Block_object_dispose(&v27, 8);
}

- (void)cancelCurrentReadAll
{
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  v5 = VOTLogTVExplorer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Explicitily canceling explorer ReadAll", v6, 2u);
  }

  [(VOTExplorerElementManager *)self _finalizeReadAllOperation:0];
}

- (void)readAllAfterDelay:(double)delay context:(id)context
{
  contextCopy = context;
  readAllExplorerElementsTimer = [(VOTExplorerElementManager *)self readAllExplorerElementsTimer];
  [readAllExplorerElementsTimer dispatchAfterDelay:contextCopy withObject:delay];
}

- (void)cancelPendingReadAll
{
  readAllExplorerElementsTimer = [(VOTExplorerElementManager *)self readAllExplorerElementsTimer];
  [readAllExplorerElementsTimer cancel];
}

- (void)readAll:(id)all
{
  allCopy = all;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  v7 = VOTLogTVExplorer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Checking readAll preconditions...", buf, 2u);
  }

  if ([allCopy userInitiated])
  {
    tvSpeechRequestManager = [(VOTExplorerElementManager *)self tvSpeechRequestManager];
    [tvSpeechRequestManager reset];
  }

  [(VOTExplorerElementManager *)self cancelPendingReadAll];
  if (([allCopy userInitiated] & 1) == 0 && !-[VOTExplorerElementManager elementsDidChangeOnLastUpdate](self, "elementsDidChangeOnLastUpdate") && -[VOTExplorerElementManager startedReadingCurrentElements](self, "startedReadingCurrentElements"))
  {
    v9 = VOTLogTVExplorer();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Bailing on readAll: Not user initiated and elements didn't change since last time", v20, 2u);
    }

    goto LABEL_26;
  }

  explorerElements = [(VOTExplorerElementManager *)self explorerElements];
  if ([explorerElements count])
  {

LABEL_15:
    delegate = [(VOTExplorerElementManager *)self delegate];
    [delegate willBeginReadAll:self];

    +[NSDate timeIntervalSinceReferenceDate];
    [allCopy setBeginTimestamp:?];
    [(VOTExplorerElementManager *)self setCurrentReadAllContext:allCopy];
    [(VOTExplorerElementManager *)self setStartedReadingCurrentElements:1];
    v13 = VOTLogTVExplorer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "About to perform readAll", v18, 2u);
    }

    if ([allCopy readFromCurrentExplorerElement])
    {
      selfCopy2 = self;
      v15 = 0;
    }

    else
    {
      selfCopy2 = self;
      v15 = 2;
    }

    [(VOTExplorerElementManager *)selfCopy2 _updateCurrentElementByMovingInDirection:v15 fromElement:0 context:allCopy];
    goto LABEL_21;
  }

  focusedElement = [(VOTExplorerElementManager *)self focusedElement];

  if (focusedElement)
  {
    goto LABEL_15;
  }

  v16 = VOTLogTVExplorer();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Bailing on readAll: No explorer elements", v19, 2u);
  }

  if ([allCopy userInitiated])
  {
    v9 = +[VOTOutputManager outputManager];
    v17 = +[VOSOutputEvent BoundaryEncountered];
    [v9 sendEvent:v17];

LABEL_26:
  }

LABEL_21:
}

- (void)_readElementInDirection:(unint64_t)direction assignNativeFocus:(BOOL)focus
{
  focusCopy = focus;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  [(VOTExplorerElementManager *)self cancelPendingReadAll];
  [(VOTExplorerElementManager *)self _finalizeReadAllOperation:0];
  explorerElements = [(VOTExplorerElementManager *)self explorerElements];
  v10 = [explorerElements count];

  if (v10)
  {
    [(VOTExplorerElementManager *)self setStartedReadingCurrentElements:1];
    v13 = +[VOTExplorerElementManagerContext context];
    [v13 setAttemptToSetNativeFocus:focusCopy];
    [v13 setUserInitiated:1];
    [v13 setInterruptsCurrentSpeech:1];
    tvSpeechRequestManager = [(VOTExplorerElementManager *)self tvSpeechRequestManager];
    [tvSpeechRequestManager resetElements];

    [(VOTExplorerElementManager *)self _updateCurrentElementByMovingInDirection:direction fromElement:0 context:v13];
  }

  else
  {
    v13 = +[VOTOutputManager outputManager];
    v12 = +[VOSOutputEvent BoundaryEncountered];
    [v13 sendEvent:v12];
  }
}

- (void)_updateCurrentElementByMovingInDirection:(unint64_t)direction fromElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  attemptToSetNativeFocus = [contextCopy attemptToSetNativeFocus];
  v31 = 0;
  if (!elementCopy)
  {
    elementCopy = [(VOTExplorerElementManager *)self currentExplorerElement];
  }

  v13 = [(VOTExplorerElementManager *)self _nextExplorerElementInDirection:direction fromElement:elementCopy didWrap:&v31];
  currentReadAllContext = [(VOTExplorerElementManager *)self currentReadAllContext];

  if (currentReadAllContext)
  {
    if (v31 == 1)
    {
      [(VOTExplorerElementManager *)self _finalizeReadAllOperation:1];
      goto LABEL_19;
    }

    currentReadAllContext2 = [(VOTExplorerElementManager *)self currentReadAllContext];
    userInitiated = [currentReadAllContext2 userInitiated];

    if ((userInitiated & 1) == 0)
    {
      focusedElement = [(VOTExplorerElementManager *)self focusedElement];

      if (v13 == focusedElement || [v13 isMapItem])
      {
        [(VOTExplorerElementManager *)self _updateCurrentElementByMovingInDirection:0 fromElement:v13 context:contextCopy];
        goto LABEL_19;
      }
    }
  }

  if (v13)
  {
    [(VOTExplorerElementManager *)self setCurrentExplorerElement:v13];
    delegate = [(VOTExplorerElementManager *)self delegate];
    [delegate explorerElementManager:self didSetExplorerElementFocus:v13];

    if ([contextCopy userInitiated])
    {
      currentExplorerElement = [(VOTExplorerElementManager *)self currentExplorerElement];
      focusedElement2 = [(VOTExplorerElementManager *)self focusedElement];
      v21 = [currentExplorerElement isEqual:focusedElement2];

      if (v21)
      {
        v22 = +[VOTOutputManager outputManager];
        v23 = +[VOSOutputEvent DidSyncWithSystemFocus];
        [v22 sendEvent:v23];
      }
    }

    if (!attemptToSetNativeFocus || (-[VOTExplorerElementManager currentExplorerElement](self, "currentExplorerElement"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 setNativeFocus], v24, (v25 & 1) == 0))
    {
      delegate2 = [(VOTExplorerElementManager *)self delegate];
      currentExplorerElement2 = [(VOTExplorerElementManager *)self currentExplorerElement];
      [delegate2 explorerElementManager:self willReadElement:currentExplorerElement2];

      tvSpeechRequestManager = [(VOTExplorerElementManager *)self tvSpeechRequestManager];
      [tvSpeechRequestManager updateHeadersAndElementsWithTarget:v13 ignoreLastUpdate:0];

      tvSpeechRequestManager2 = [(VOTExplorerElementManager *)self tvSpeechRequestManager];
      v30 = [tvSpeechRequestManager2 generateOutputRequest:0];

      -[VOTExplorerElementManager _sendExplorerOutputRequest:forceReread:interruptCurrentSpeech:](self, "_sendExplorerOutputRequest:forceReread:interruptCurrentSpeech:", v30, [contextCopy userInitiated], objc_msgSend(contextCopy, "interruptsCurrentSpeech"));
    }
  }

LABEL_19:
}

- (id)_nextExplorerElementInDirection:(unint64_t)direction fromElement:(id)element didWrap:(BOOL *)wrap
{
  elementCopy = element;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  explorerElements = [(VOTExplorerElementManager *)self explorerElements];
  if ([explorerElements count])
  {

    if (elementCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  focusedElement = [(VOTExplorerElementManager *)self focusedElement];

  if (focusedElement)
  {
    if (elementCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  _AXAssert();
  if (!elementCopy)
  {
LABEL_8:
    elementCopy = [(VOTExplorerElementManager *)self currentExplorerElement];
  }

LABEL_9:
  v13 = +[NSMutableArray array];
  explorerElements2 = [(VOTExplorerElementManager *)self explorerElements];
  v15 = [explorerElements2 count];

  if (v15)
  {
    explorerElements3 = [(VOTExplorerElementManager *)self explorerElements];
    [v13 addObjectsFromArray:explorerElements3];
  }

  focusedElement2 = [(VOTExplorerElementManager *)self focusedElement];
  if (focusedElement2)
  {
    v18 = focusedElement2;
    explorerElements4 = [(VOTExplorerElementManager *)self explorerElements];
    focusedElement3 = [(VOTExplorerElementManager *)self focusedElement];
    v21 = [explorerElements4 containsObject:focusedElement3];

    if ((v21 & 1) == 0)
    {
      focusedElement4 = [(VOTExplorerElementManager *)self focusedElement];
      [v13 addObject:focusedElement4];
    }
  }

  if (direction == 2)
  {
    if (wrap)
    {
      *wrap = 0;
    }

    firstObject = [v13 firstObject];
LABEL_35:
    v25 = firstObject;
    goto LABEL_36;
  }

  if (!elementCopy)
  {
    elementCopy = [v13 firstObject];
  }

  v24 = [v13 indexOfObject:elementCopy];
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = v24;
    v27 = [v13 count];
    v28 = v27 - 1;
    if (v26)
    {
      v29 = v26 - 1;
    }

    else
    {
      v29 = v27 - 1;
    }

    v30 = v26 == v28;
    if (v26 == v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = v26 + 1;
    }

    if (direction)
    {
      v30 = v26 == 0;
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (wrap)
    {
      *wrap = v30;
    }

    firstObject = [v13 objectAtIndex:v32];
    goto LABEL_35;
  }

  v25 = 0;
  if (wrap)
  {
    *wrap = 0;
  }

LABEL_36:

  return v25;
}

- (void)_sendExplorerOutputRequest:(id)request forceReread:(BOOL)reread interruptCurrentSpeech:(BOOL)speech
{
  speechCopy = speech;
  requestCopy = request;
  v11 = requestCopy;
  if (speechCopy)
  {
    v8 = +[VOTOutputManager outputManager];
    [v8 stopSpeakingAtBoundary:0 allRequests:1 sessionDeactivationDelay:0];

    requestCopy = v11;
  }

  [requestCopy setCompletionDelegate:self];
  [v11 setDoesNotInterrupt:1];
  [v11 setGeneratesBraille:1];
  [v11 send];
  [(VOTExplorerElementManager *)self setLastExplorerOutputRequest:v11];
  outputActions = [v11 outputActions];
  v10 = [outputActions count];

  if (!v10)
  {
    [v11 setFinishedSuccessfully:1];
    [(VOTExplorerElementManager *)self outputRequestFinished:v11];
  }
}

- (void)_finalizeReadAllOperation:(BOOL)operation interruptSpeechIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  operationCopy = operation;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  currentReadAllContext = [(VOTExplorerElementManager *)self currentReadAllContext];

  if (currentReadAllContext)
  {
    if (neededCopy)
    {
      v10 = VOTLogTVExplorer();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1001314D4(v10);
      }

      v11 = +[VOTOutputManager outputManager];
      [v11 stopSpeakingAtBoundary:0 allRequests:1 sessionDeactivationDelay:0];
    }

    [(VOTExplorerElementManager *)self setCurrentReadAllContext:0];
    v12 = VOTLogTVExplorer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100131518(v12);
    }

    delegate = [(VOTExplorerElementManager *)self delegate];
    [delegate explorerElementManager:self didFinishReadAll:operationCopy];
  }
}

- (void)outputRequestFinished:(id)finished
{
  finishedCopy = finished;
  targetThread = [(VOTExplorerElementManager *)self targetThread];
  [targetThread performSelector:"__outputRequestFinished:" onTarget:self count:1 objects:finishedCopy];
}

- (void)__outputRequestFinished:(id)finished
{
  finishedCopy = finished;
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);
  _debug_currentlyRunningOnThisThread = [WeakRetained _debug_currentlyRunningOnThisThread];

  if ((_debug_currentlyRunningOnThisThread & 1) == 0)
  {
    _AXAssert();
  }

  if (([finishedCopy finishedSuccessfully] & 1) != 0 || (objc_msgSend(finishedCopy, "sendTimestamp"), v8 = v7, -[VOTExplorerElementManager currentReadAllContext](self, "currentReadAllContext"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "beginTimestamp"), v11 = v10, v9, v8 <= v11))
  {
    currentReadAllContext = [(VOTExplorerElementManager *)self currentReadAllContext];

    if (currentReadAllContext)
    {
      currentReadAllContext2 = [(VOTExplorerElementManager *)self currentReadAllContext];
      [(VOTExplorerElementManager *)self _updateCurrentElementByMovingInDirection:0 fromElement:0 context:currentReadAllContext2];
    }
  }

  else
  {
    v12 = VOTLogTVExplorer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138477827;
      v16 = finishedCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Explorer request did not finish sucessfully: %{private}@", &v15, 0xCu);
    }

    [(VOTExplorerElementManager *)self _finalizeReadAllOperation:0 interruptSpeechIfNeeded:0];
  }
}

- (VOTExplorerElementManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SCRCThread)targetThread
{
  WeakRetained = objc_loadWeakRetained(&self->_targetThread);

  return WeakRetained;
}

@end