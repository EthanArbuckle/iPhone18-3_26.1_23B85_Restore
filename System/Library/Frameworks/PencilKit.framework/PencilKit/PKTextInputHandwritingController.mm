@interface PKTextInputHandwritingController
- (BOOL)_evaluateAndProcessResultCommandsQueueImmediateCommit:(BOOL)commit;
- (BOOL)_wantsFloatingBackground;
- (BOOL)handwritingShot:(id)shot hasCommittedResultsInSessionToElementRecognitionIdentifier:(id)identifier;
- (BOOL)handwritingShot:(id)shot shouldSuppressGesturesForStrokesBounds:(CGRect)bounds coordinateSpace:(id)space;
- (BOOL)writingSession:(id)session elementHasPendingOperations:(id)operations;
- (PKTextInputHandwritingController)initWithCanvasController:(id)controller elementsController:(id)elementsController feedbackController:(id)feedbackController reserveSpaceController:(id)spaceController debugLogController:(id)logController cursorController:(id)cursorController;
- (PKTextInputHandwritingControllerDelegate)delegate;
- (_NSRange)handwritingShot:(id)shot activePreviewRangeForElementRecognitionIdentifier:(id)identifier queryItemStableIdentifier:(id)stableIdentifier;
- (_NSRange)handwritingShot:(id)shot inProgressGestureInitialSelectedRangeForElementRecognitionIdentifier:(id)identifier;
- (double)_continuousRecognitionInterval;
- (id)_pendingResultCommand;
- (id)_resultCommandToProcessQueryItem:(id)item handwritingShot:(id)shot;
- (id)handwritingShot:(id)shot preferredTargetElementForQueryItemStableIdentifier:(id)identifier simultaneousItemStableIdentifiers:(id)identifiers proposedTargetElement:(id)element;
- (id)handwritingShotStrokeIdentifiersToExcludeFromRecognition:(id)recognition;
- (id)resultCommandSupportedElementDelegate:(id)delegate;
- (int64_t)_immediateCommitTypeForQueryItem:(id)item handwritingShot:(id)shot;
- (int64_t)handwritingShot:(id)shot lastCharacterLevelPositionForElementRecognitionIdentifier:(id)identifier;
- (int64_t)writingState;
- (void)_cancelInProgressStrokeFromHandwritingShots;
- (void)_cancelPendingResultCommand;
- (void)_createPossibleHandwritingShotIfNeeded;
- (void)_handleActiveHandwritingShotRecognitionFinished;
- (void)_handleResultCommandFinished:(id)finished;
- (void)_notifyDelegateOfResultCommandState;
- (void)_processPossibleShotIfReady;
- (void)_scheduleCommitForResultCommandIfNeeded:(id)needed;
- (void)_setActiveHandwritingShot:(id)shot;
- (void)_setActiveInputTargetState:(id)state;
- (void)_setActiveResultCommand:(id)command;
- (void)_setLastKnownDrawing:(id)drawing;
- (void)_setPossibleHandwritingShot:(id)shot;
- (void)_setWritingSession:(id)session;
- (void)_updateFloatingBackground;
- (void)_updateRecognitionManager;
- (void)_updateStrokeAlphaOverride;
- (void)_updateWritingSession;
- (void)canvasController:(id)controller drawingDidChange:(id)change;
- (void)canvasControllerDidBeginDrawing:(id)drawing;
- (void)canvasControllerInProgressStrokeDidChange:(id)change;
- (void)cleanUpFromCancelledReplay;
- (void)handwritingShot:(id)shot willFocusAndLoadDataForTargetElement:(id)element;
- (void)handwritingShotDidChangeState:(id)state;
- (void)handwritingShotDidOverrideStrongCursor:(id)cursor;
- (void)quickCommitIfPossible;
- (void)reportDebugStateDescription:(id)description;
- (void)reserveSpaceControllerWillFocusElement:(id)element;
- (void)resultCommandStateDidChange:(id)change;
- (void)writingSession:(id)session didInsertTextInElement:(id)element;
@end

@implementation PKTextInputHandwritingController

- (PKTextInputHandwritingController)initWithCanvasController:(id)controller elementsController:(id)elementsController feedbackController:(id)feedbackController reserveSpaceController:(id)spaceController debugLogController:(id)logController cursorController:(id)cursorController
{
  controllerCopy = controller;
  elementsControllerCopy = elementsController;
  feedbackControllerCopy = feedbackController;
  spaceControllerCopy = spaceController;
  logControllerCopy = logController;
  cursorControllerCopy = cursorController;
  v28.receiver = self;
  v28.super_class = PKTextInputHandwritingController;
  v18 = [(PKTextInputHandwritingController *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_canvasController, controller);
    objc_storeStrong(&v19->_elementsController, elementsController);
    objc_storeStrong(&v19->_reserveSpaceController, spaceController);
    objc_storeStrong(&v19->_debugLogController, logController);
    objc_storeStrong(&v19->_cursorController, cursorController);
    objc_storeStrong(&v19->_feedbackController, feedbackController);
    [feedbackControllerCopy setReferenceElementContent:0 referenceRange:0x7FFFFFFFFFFFFFFFLL feedbackType:{0, 0}];
    v20 = objc_alloc_init(PKTextInputTargetState);
    activeInputTargetState = v19->__activeInputTargetState;
    v19->__activeInputTargetState = v20;

    v19->_strokeAlphaOverride = 1.0;
    array = [MEMORY[0x1E695DF70] array];
    resultCommandsQueue = v19->__resultCommandsQueue;
    v19->__resultCommandsQueue = array;
  }

  return v19;
}

- (void)_setWritingSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (self->__writingSession != sessionCopy)
  {
    writingState = [(PKTextInputHandwritingController *)self writingState];
    objc_storeStrong(&self->__writingSession, session);
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (writingState == 1)
      {
        v8 = @"Active";
      }

      else
      {
        v8 = 0;
      }

      if (writingState)
      {
        v9 = v8;
      }

      else
      {
        v9 = @"Idle";
      }

      v10 = v9;
      writingState2 = [(PKTextInputHandwritingController *)self writingState];
      if (writingState2 == 1)
      {
        v12 = @"Active";
      }

      else
      {
        v12 = 0;
      }

      if (!writingState2)
      {
        v12 = @"Idle";
      }

      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      v13 = v12;
      _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "HWController writing session state changed %@ -> %@", &v15, 0x16u);
    }

    delegate = [(PKTextInputHandwritingController *)self delegate];
    [delegate handwritingControllerWritingStateDidChange:self];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (int64_t)writingState
{
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  v3 = _writingSession != 0;

  return v3;
}

- (void)_notifyDelegateOfResultCommandState
{
  if (![(PKTextInputHandwritingController *)self writingState])
  {
    _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];
    if (!_activeResultCommand)
    {
      _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      v5 = [_resultCommandsQueue count];

      if (v5)
      {
        return;
      }

      delegate = [(PKTextInputHandwritingController *)self delegate];
      [delegate handwritingControllerDidFinishActiveCommands:self];
      _activeResultCommand = delegate;
    }
  }
}

- (void)_setActiveHandwritingShot:(id)shot
{
  shotCopy = shot;
  if (self->__activeHandwritingShot != shotCopy)
  {
    v8 = shotCopy;
    objc_storeStrong(&self->__activeHandwritingShot, shot);
    _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = _writingSession;
    if (_writingSession)
    {
      [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    shotCopy = v8;
  }
}

- (void)_setPossibleHandwritingShot:(id)shot
{
  shotCopy = shot;
  if (self->__possibleHandwritingShot != shotCopy)
  {
    v8 = shotCopy;
    objc_storeStrong(&self->__possibleHandwritingShot, shot);
    _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = _writingSession;
    if (_writingSession)
    {
      [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    shotCopy = v8;
  }
}

- (void)_setActiveResultCommand:(id)command
{
  commandCopy = command;
  if (self->__activeResultCommand != commandCopy)
  {
    v8 = commandCopy;
    objc_storeStrong(&self->__activeResultCommand, command);
    _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = _writingSession;
    if (_writingSession)
    {
      [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    [(PKTextInputHandwritingController *)self _notifyDelegateOfResultCommandState];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    commandCopy = v8;
  }
}

- (void)_setLastKnownDrawing:(id)drawing
{
  if (self->__lastKnownDrawing != drawing)
  {
    v5 = [drawing copy];
    lastKnownDrawing = self->__lastKnownDrawing;
    self->__lastKnownDrawing = v5;

    +[PKTextInputDebugStateIntrospector debugStateDidChange];

    [(PKTextInputHandwritingController *)self _updateFloatingBackground];
  }
}

- (void)_setActiveInputTargetState:(id)state
{
  stateCopy = state;
  if (self->__activeInputTargetState != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->__activeInputTargetState, state);
    [(PKTextInputHandwritingController *)self _updateWritingSession];
    [(PKTextInputHandwritingController *)self _updateFloatingBackground];
    [(PKTextInputHandwritingController *)self _updateStrokeAlphaOverride];
    stateCopy = v6;
  }
}

- (void)_updateWritingSession
{
  canvasController = [(PKTextInputHandwritingController *)self canvasController];
  v4 = canvasController;
  if (canvasController && ([*(canvasController + 96) isDrawing] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    if (_activeHandwritingShot)
    {
      v5 = 1;
    }

    else
    {
      _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
      if (_possibleHandwritingShot)
      {
        v5 = 1;
      }

      else
      {
        _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];
        if (_activeResultCommand)
        {
          v5 = 1;
        }

        else
        {
          reserveSpaceController = [(PKTextInputHandwritingController *)self reserveSpaceController];
          if ([reserveSpaceController isReserveSpaceActive])
          {
            v5 = 1;
          }

          else
          {
            _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
            v11 = _activeInputTargetState;
            if (_activeInputTargetState)
            {
              v12 = *(_activeInputTargetState + 48);
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;
            v5 = v13 != 0;
          }
        }
      }
    }
  }

  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];

  if (!v5 || _writingSession)
  {
    if (_writingSession)
    {
      v17 = v5;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      _writingSession2 = [(PKTextInputHandwritingController *)self _writingSession];
      [(PKTextInputWritingSession *)_writingSession2 invalidate];

      _writingSession3 = [(PKTextInputHandwritingController *)self _writingSession];
      v20 = _writingSession3;
      if (_writingSession3)
      {
        objc_storeWeak((_writingSession3 + 48), 0);
      }

      [(PKTextInputHandwritingController *)self _setWritingSession:0];
    }
  }

  else
  {
    v15 = objc_alloc_init(PKTextInputWritingSession);
    v16 = v15;
    v21 = v15;
    if (v15)
    {
      objc_storeWeak(&v15->_delegate, self);
      v16 = v21;
    }

    [(PKTextInputHandwritingController *)self _setWritingSession:v16];
  }
}

- (void)_updateRecognitionManager
{
  _recognitionManager = [(PKTextInputHandwritingController *)self _recognitionManager];

  if (!_recognitionManager)
  {
    v4 = objc_alloc_init(PKTextInputRecognitionManager);
    [(PKTextInputHandwritingController *)self set_recognitionManager:v4];
  }

  v5 = +[PKTextInputLanguageSelectionController sharedInstance];
  [v5 ensureKeyboardLanguageConsistencyIfNeeded];

  v6 = +[PKTextInputSettings sharedSettings];
  outOfProcessRecognition = [v6 outOfProcessRecognition];

  _recognitionManager2 = [(PKTextInputHandwritingController *)self _recognitionManager];
  [(PKTextInputRecognitionManager *)_recognitionManager2 setPreferOutOfProcessRecognition:outOfProcessRecognition];
}

- (void)reserveSpaceControllerWillFocusElement:(id)element
{
  elementCopy = element;
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  [(PKTextInputWritingSession *)_writingSession setCurrentTargetElement:elementCopy];
}

- (BOOL)_evaluateAndProcessResultCommandsQueueImmediateCommit:(BOOL)commit
{
  commitCopy = commit;
  _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  firstObject = [_resultCommandsQueue firstObject];

  if (!firstObject)
  {
    firstObject2 = 0;
    LOBYTE(commitCopy) = 0;
    goto LABEL_28;
  }

  v7 = firstObject[3];
  if (v7 == 7)
  {
    while (1)
    {
      _resultCommandsQueue2 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      [_resultCommandsQueue2 removeObjectAtIndex:0];

      _resultCommandsQueue3 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      firstObject2 = [_resultCommandsQueue3 firstObject];

      if (!firstObject2)
      {
        break;
      }

      firstObject = firstObject2;
      if (firstObject2[3] != 7)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(commitCopy) = 0;
    goto LABEL_25;
  }

  firstObject2 = firstObject;
LABEL_8:
  _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];
  if (_activeResultCommand)
  {

    goto LABEL_20;
  }

  v12 = firstObject2[3];
  v13 = v12 == 1 && commitCopy;
  if (v12 != 2 && !v13)
  {
LABEL_20:
    LOBYTE(commitCopy) = 0;
    if (v7 != 7)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  [(PKTextInputHandwritingController *)self _setActiveResultCommand:firstObject2];
  _resultCommandsQueue4 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  [_resultCommandsQueue4 removeObjectAtIndex:0];

  if (commitCopy)
  {
    if (firstObject2[3] == 1)
    {
      [(PKTextInputResultCommand *)firstObject2 _setCommandState:?];
      LOBYTE(commitCopy) = 1;
    }

    else
    {
      LOBYTE(commitCopy) = 0;
    }
  }

  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  [(PKTextInputResultCommand *)firstObject2 beginApplyingResultCommandWithInputTargetState:_activeInputTargetState];

LABEL_25:
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  v18 = _writingSession;
  if (_writingSession)
  {
    [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
LABEL_28:

  return commitCopy;
}

- (void)_handleResultCommandFinished:(id)finished
{
  finishedCopy = finished;
  _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];

  v5 = finishedCopy;
  if (finishedCopy && finishedCopy[3] - 5 <= 1)
  {
    v6 = finishedCopy[9];
    [(PKTextInputHandwritingController *)self _setActiveInputTargetState:v6];
    if (*(finishedCopy + 8) == 1)
    {
      debugLogController = [(PKTextInputHandwritingController *)self debugLogController];
      [(PKTextInputDebugLogController *)debugLogController logEntryForAppliedResult:finishedCopy];
    }

    [(PKTextInputHandwritingController *)self _scheduleCommitForResultCommandIfNeeded:finishedCopy];

    v5 = finishedCopy;
  }

  if (_activeResultCommand == v5)
  {
    [(PKTextInputHandwritingController *)self _setActiveResultCommand:0];
    v5 = finishedCopy;
  }

  if (v5)
  {
    objc_storeWeak(finishedCopy + 2, 0);
  }

  [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueue];
  [(PKTextInputHandwritingController *)self _processPossibleShotIfReady];
  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)_scheduleCommitForResultCommandIfNeeded:(id)needed
{
  neededCopy = needed;
  v35 = neededCopy;
  if (neededCopy)
  {
    v5 = neededCopy[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  inputInProgressStroke = [v6 inputInProgressStroke];

  canvasController = [(PKTextInputHandwritingController *)self canvasController];
  v9 = canvasController;
  if (canvasController)
  {
    isDrawing = [*(canvasController + 96) isDrawing];
  }

  else
  {
    isDrawing = 0;
  }

  if (!v35)
  {
    v14 = 0;
    v12 = 0;
    v15 = 0;
    goto LABEL_30;
  }

  v11 = v35[9];
  v12 = v11;
  if (v11)
  {
    v13 = v11[6];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v35[10];
  if (*(v35 + 9) != 1)
  {
    goto LABEL_30;
  }

  if (([v15 length] != 0) | isDrawing & 1)
  {
    goto LABEL_30;
  }

  if (inputInProgressStroke)
  {
    goto LABEL_30;
  }

  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

  if (_possibleHandwritingShot)
  {
    goto LABEL_30;
  }

  v17 = v35[4];
  correctionResult = [v17 correctionResult];

  languageSpec = [v6 languageSpec];
  standardCommitDelay = [(PKTextInputLanguageSpec *)languageSpec standardCommitDelay];

  if (![correctionResult isCharacterLevel])
  {
    v22 = [v14 length];
    v23 = [v14 length];
    if (v22 == 1)
    {
      v24 = [v14 characterAtIndex:v23 - 1];
      newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
      LODWORD(v24) = [newlineCharacterSet characterIsMember:v24];

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    else if (v23 || v35[15] != 1)
    {
      [v6 recognitionDuration];
      standardCommitDelay = fmax(standardCommitDelay - v26, 0.0);
      goto LABEL_20;
    }
  }

  languageSpec2 = [v6 languageSpec];
  standardCommitDelay = [(PKTextInputLanguageSpec *)languageSpec2 singleCharacterCommitDelay];

LABEL_20:
  v27 = [PKTextInputResultCommand alloc];
  v28 = v35[4];
  v29 = [(PKTextInputResultCommand *)v27 initWithQueryItem:v28 handwritingShot:v6 immediateCommitType:1 applyAfterDelay:standardCommitDelay];

  if (v29)
  {
    objc_storeWeak((v29 + 16), self);
  }

  if (v12)
  {
    v30 = v12[7];
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (v29 && v31)
  {
    *(v29 + 112) = v35[14];
    *(v29 + 120) = 0;
  }

  _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  [_resultCommandsQueue addObject:v29];

  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  v34 = _writingSession;
  if (_writingSession)
  {
    [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
LABEL_30:
}

- (id)_pendingResultCommand
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  v3 = [_resultCommandsQueue countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(_resultCommandsQueue);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && v6[3] == 1)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [_resultCommandsQueue countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)_cancelPendingResultCommand
{
  _pendingResultCommand = [(PKTextInputHandwritingController *)self _pendingResultCommand];
  if (_pendingResultCommand)
  {
    v3 = _pendingResultCommand;
    [(PKTextInputResultCommand *)_pendingResultCommand cancelDelayedCommand];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    _pendingResultCommand = v3;
  }
}

- (void)resultCommandStateDidChange:(id)change
{
  changeCopy = change;
  v12 = changeCopy;
  if (!changeCopy)
  {
    v8 = 0;
    v9 = 0;
    v6 = 1;
    goto LABEL_12;
  }

  v5 = *(changeCopy + 3);
  v6 = 1;
  if (v5 > 4)
  {
    if ((v5 - 5) < 3)
    {
      [(PKTextInputHandwritingController *)self _handleResultCommandFinished:changeCopy];
      changeCopy = v12;
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueue];
    changeCopy = v12;
  }

  else if (v5 != 3)
  {
    v6 = v5 != 4;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  v7 = *(changeCopy + 6);
  v8 = v7;
  if (v7)
  {
    v9 = *(v7 + 1);
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  v10 = v9;

  if (!v6 && v10)
  {
    _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)_writingSession setCurrentTargetElement:v10];
  }
}

- (id)resultCommandSupportedElementDelegate:(id)delegate
{
  delegate = [(PKTextInputHandwritingController *)self delegate];
  v5 = [delegate supportedElementDelegateForHandwritingController:self];

  return v5;
}

- (void)_createPossibleHandwritingShotIfNeeded
{
  v34 = *MEMORY[0x1E69E9840];
  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  v5 = +[PKTextInputSettings sharedSettings];
  recognitionLocaleIdentifiers = [v5 recognitionLocaleIdentifiers];

  if (!_possibleHandwritingShot)
  {
    if ([recognitionLocaleIdentifiers count])
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(recognitionLocaleIdentifiers, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = recognitionLocaleIdentifiers;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        do
        {
          v12 = 0;
          do
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v23 + 1) + 8 * v12), v23}];
            [v7 addObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
        }

        while (v10);
      }

      v14 = [[PKTextInputLanguageSpec alloc] initWithLocales:v7];
      v15 = [PKTextInputHandwritingShot alloc];
      canvasController = [(PKTextInputHandwritingController *)self canvasController];
      elementsController = [(PKTextInputHandwritingController *)self elementsController];
      _possibleHandwritingShot = [(PKTextInputHandwritingShot *)v15 initWithCanvasController:canvasController elementsController:elementsController languageSpec:v14];

      [(PKTextInputHandwritingShot *)_possibleHandwritingShot setDelegate:self];
      [(PKTextInputHandwritingShot *)_possibleHandwritingShot setWritingIsActiveAtStart:[(PKTextInputHandwritingController *)self writingState]== 1];
      cursorController = [(PKTextInputHandwritingController *)self cursorController];
      -[PKTextInputHandwritingShot setCursorIsWeakAtStart:](_possibleHandwritingShot, "setCursorIsWeakAtStart:", [cursorController isCursorWeak]);

      cursorController2 = [(PKTextInputHandwritingController *)self cursorController];
      -[PKTextInputHandwritingShot setCursorIsForcedStrongAtStart:](_possibleHandwritingShot, "setCursorIsForcedStrongAtStart:", [cursorController2 forceStrong]);

      v20 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = NSStringFromSelector(a2);
        _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
        *buf = 138412802;
        v28 = v21;
        v29 = 2112;
        v30 = _possibleHandwritingShot;
        v31 = 2112;
        v32 = _activeHandwritingShot;
        _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "HWController %@: created possible shot: %@, active shot: %@", buf, 0x20u);
      }

      [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:_possibleHandwritingShot];
    }

    else
    {
      _possibleHandwritingShot = 0;
    }
  }
}

- (void)_processPossibleShotIfReady
{
  v25 = *MEMORY[0x1E69E9840];
  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  v5 = _possibleHandwritingShot;
  if (_possibleHandwritingShot && [_possibleHandwritingShot shotState] == 2 && (-[PKTextInputHandwritingController _activeHandwritingShot](self, "_activeHandwritingShot"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) && (-[PKTextInputHandwritingController _activeResultCommand](self, "_activeResultCommand"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
    v10 = [_resultCommandsQueue count];

    _pendingResultCommand = [(PKTextInputHandwritingController *)self _pendingResultCommand];
    if (v10 == (_pendingResultCommand != 0))
    {
      v11 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = NSStringFromSelector(a2);
        _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
        v19 = 138412802;
        v20 = v17;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = _activeHandwritingShot;
        _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "HWController %@: promoting possibleShot to active: %@, old activeShot: %@", &v19, 0x20u);
      }

      [(PKTextInputHandwritingController *)self _setActiveHandwritingShot:v5];
      [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:0];
      [(PKTextInputHandwritingController *)self _updateRecognitionManager];
      _recognitionManager = [(PKTextInputHandwritingController *)self _recognitionManager];
      _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
      v14 = _writingSession;
      if (_writingSession)
      {
        v15 = *(_writingSession + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      [v5 setWritingSessionIdentifier:v16];

      [v5 beginRecognitionWithRecognitionManager:_recognitionManager];
      if (_pendingResultCommand)
      {
        [(PKTextInputHandwritingController *)self _cancelPendingResultCommand];
      }
    }
  }

  else
  {
    _pendingResultCommand = 0;
  }
}

- (void)_handleActiveHandwritingShotRecognitionFinished
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromSelector(a2);
    _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    *buf = 138412802;
    v26 = v17;
    v27 = 2112;
    v28 = _activeHandwritingShot;
    v29 = 2112;
    v30 = _possibleHandwritingShot;
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "HWController %@: will process active shot: %@, possibleShot: %@", buf, 0x20u);
  }

  _activeHandwritingShot2 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  v6 = _activeHandwritingShot2;
  if (_activeHandwritingShot2)
  {
    if ([_activeHandwritingShot2 isCancelled])
    {
      resultQueryItems = 0;
    }

    else
    {
      resultQueryItems = [v6 resultQueryItems];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = resultQueryItems;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(PKTextInputHandwritingController *)self _resultCommandToProcessQueryItem:*(*(&v20 + 1) + 8 * v12) handwritingShot:v6, v20];
          if (v13)
          {
            _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
            [_resultCommandsQueue addObject:v13];

            _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
            v16 = _writingSession;
            if (_writingSession)
            {
              [(PKTextInputWritingSession *)_writingSession _evaluatePendingWritingEndedElements];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueue];
  }
}

- (id)_resultCommandToProcessQueryItem:(id)item handwritingShot:(id)shot
{
  v48 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  shotCopy = shot;
  strokeIdentifiers = [itemCopy strokeIdentifiers];
  strokeProvider = [shotCopy strokeProvider];
  resultQueryItems = [shotCopy resultQueryItems];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = strokeIdentifiers;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v36 = *v42;
    v33 = resultQueryItems;
    v34 = itemCopy;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v11);
        }

        v46 = *(*(&v41 + 1) + 8 * i);
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:{1, v33, v34}];
        v16 = [strokeProvider strokesForSliceIdentifiers:v15];
        anyObject = [v16 anyObject];

        if (!anyObject)
        {
          goto LABEL_24;
        }

        inputInProgressStroke = [shotCopy inputInProgressStroke];
        v19 = [inputInProgressStroke isEqual:anyObject];

        if ((v19 & 1) == 0)
        {
          v20 = shotCopy;
          v21 = strokeProvider;
          v22 = v11;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          _lastKnownDrawing = [(PKTextInputHandwritingController *)selfCopy _lastKnownDrawing];
          strokes = [_lastKnownDrawing strokes];

          v25 = [strokes countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v38;
            while (2)
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v38 != v27)
                {
                  objc_enumerationMutation(strokes);
                }

                if ([*(*(&v37 + 1) + 8 * j) isEqual:anyObject])
                {

                  v11 = v22;
                  strokeProvider = v21;
                  shotCopy = v20;
                  goto LABEL_18;
                }
              }

              v26 = [strokes countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

          v11 = v22;
          strokeProvider = v21;
          shotCopy = v20;
LABEL_24:

          v30 = 0;
          resultQueryItems = v33;
          itemCopy = v34;
          goto LABEL_27;
        }

LABEL_18:
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      resultQueryItems = v33;
      itemCopy = v34;
      self = selfCopy;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ([resultQueryItems count] < 2 || (objc_msgSend(resultQueryItems, "firstObject"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29 == itemCopy))
  {
    v31 = [[PKTextInputResultCommand alloc] initWithQueryItem:itemCopy handwritingShot:shotCopy immediateCommitType:[(PKTextInputHandwritingController *)self _immediateCommitTypeForQueryItem:itemCopy handwritingShot:shotCopy] applyAfterDelay:0.0];
    v30 = v31;
    if (v31)
    {
      objc_storeWeak((v31 + 16), self);
    }
  }

  else
  {
    v30 = 0;
  }

LABEL_27:

  return v30;
}

- (int64_t)_immediateCommitTypeForQueryItem:(id)item handwritingShot:(id)shot
{
  itemCopy = item;
  shotCopy = shot;
  resultQueryItems = [shotCopy resultQueryItems];
  correctionResult = [itemCopy correctionResult];
  inputTarget = [correctionResult inputTarget];
  inputTargetIdentifier = [inputTarget inputTargetIdentifier];

  if ([resultQueryItems count] <= 1)
  {
    if (inputTargetIdentifier)
    {
      v12 = [shotCopy textInputElementForRecognitionIdentifier:inputTargetIdentifier];
      inputInProgressStroke = [shotCopy inputInProgressStroke];

      v11 = 0;
      if (v12 && !inputInProgressStroke)
      {
        v14 = objc_opt_class();
        correctionResult2 = [itemCopy correctionResult];
        LODWORD(v14) = [v14 _isCorrectionResultGesture:correctionResult2];

        if (v14 && [(PKTextInputElement *)v12 shouldPostponeFocusing])
        {
          if ([(PKTextInputElement *)v12 isFocused])
          {
            v11 = 0;
          }

          else
          {
            v11 = 3;
          }
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 2;
  }

  return v11;
}

- (double)_continuousRecognitionInterval
{
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v4 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v5 = *(_activeInputTargetState + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  correctionResult = [v6 correctionResult];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  _activeInputTargetState2 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  if (_activeInputTargetState2)
  {
    v11 = _activeInputTargetState2[12];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = +[PKTextInputSettings sharedSettings];
  [v12 continuousRecognitionWritingInterval];
  v14 = v13;

  if (correctionResult)
  {
    v15 = 0.3;
    if (v14 >= 0.3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0.3;
    }

    if (v16 < 0.1)
    {
      v16 = 0.1;
    }

    if (v9 - v11 < v16 + 0.5)
    {
      resultType = [correctionResult resultType];
      if ((resultType - 2) >= 7 && resultType)
      {
        if (resultType == 1)
        {
          _activeInputTargetState3 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
          v20 = _activeInputTargetState3;
          if (_activeInputTargetState3)
          {
            v21 = *(_activeInputTargetState3 + 48);
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          v23 = [v22 length];

          if (v23 <= 2)
          {
            v15 = 0.3;
          }

          else
          {
            v15 = v14;
          }
        }
      }

      else
      {
        v15 = 0.1;
      }
    }
  }

  else
  {
    v15 = 0.3;
  }

  return v15;
}

- (void)handwritingShotDidChangeState:(id)state
{
  stateCopy = state;
  shotState = [stateCopy shotState];
  if (shotState == 4)
  {
    _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];

    if (_activeHandwritingShot != stateCopy)
    {
      goto LABEL_8;
    }

    [(PKTextInputHandwritingController *)self _handleActiveHandwritingShotRecognitionFinished];
    [(PKTextInputHandwritingController *)self _setActiveHandwritingShot:0];
    goto LABEL_7;
  }

  if (shotState == 2)
  {
    _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

    if (_possibleHandwritingShot == stateCopy)
    {
LABEL_7:
      [(PKTextInputHandwritingController *)self _processPossibleShotIfReady];
    }
  }

LABEL_8:
}

- (void)handwritingShotDidOverrideStrongCursor:(id)cursor
{
  cursorController = [(PKTextInputHandwritingController *)self cursorController];
  forceStrong = [cursorController forceStrong];

  if ((forceStrong & 1) == 0)
  {
    cursorController2 = [(PKTextInputHandwritingController *)self cursorController];
    [cursorController2 makeCursorWeak];
  }
}

- (id)handwritingShot:(id)shot preferredTargetElementForQueryItemStableIdentifier:(id)identifier simultaneousItemStableIdentifiers:(id)identifiers proposedTargetElement:(id)element
{
  shotCopy = shot;
  identifierCopy = identifier;
  elementCopy = element;
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v13 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v14 = *(_activeInputTargetState + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  v17 = elementCopy;
  if (v13)
  {
    v17 = elementCopy;
    if (v15)
    {
      v18 = *(v13 + 24);
      itemStableIdentifier = [v18 itemStableIdentifier];

      v17 = elementCopy;
      if (itemStableIdentifier)
      {
        v17 = elementCopy;
        if ([identifierCopy isEqualToNumber:itemStableIdentifier])
        {
          v20 = *(v13 + 48);
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
          v23 = [v22 length];

          v17 = elementCopy;
          if (*(v13 + 64) + v23 >= 2)
          {
            v24 = [shotCopy textInputElementForRecognitionIdentifier:v16];
            v25 = v24;
            v17 = elementCopy;
            if (v24)
            {
              v17 = v24;
            }
          }
        }
      }
    }
  }

  return v17;
}

- (void)handwritingShot:(id)shot willFocusAndLoadDataForTargetElement:(id)element
{
  elementCopy = element;
  v5 = +[PKEmojiAlternativesGenerator sharedInstance];
  [(PKEmojiAlternativesGenerator *)v5 cancelScheduledTasks];

  v6 = +[PKEmojiAlternativesGenerator sharedInstance];
  if (elementCopy)
  {
    WeakRetained = objc_loadWeakRetained(elementCopy + 13);
    [(PKEmojiAlternativesGenerator *)v6 clearExistingAlternativesForTextInput:?];

    _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)_writingSession setCurrentTargetElement:elementCopy];

    if (([(PKTextInputElement *)elementCopy isFocused]& 1) != 0)
    {
      goto LABEL_5;
    }

    cursorController = [(PKTextInputHandwritingController *)self cursorController];
    [cursorController makeCursorWeak];
  }

  else
  {
    [(PKEmojiAlternativesGenerator *)v6 clearExistingAlternativesForTextInput:?];

    cursorController = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)cursorController setCurrentTargetElement:?];
  }

LABEL_5:
}

- (_NSRange)handwritingShot:(id)shot activePreviewRangeForElementRecognitionIdentifier:(id)identifier queryItemStableIdentifier:(id)stableIdentifier
{
  shotCopy = shot;
  identifierCopy = identifier;
  stableIdentifierCopy = stableIdentifier;
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v12 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v13 = *(_activeInputTargetState + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 isEqualToNumber:identifierCopy];

  if (!v15 || stableIdentifierCopy && (!v12 ? (v16 = 0) : (v16 = v12[3]), (v17 = v16, [v17 itemStableIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18) && (!v12 ? (v19 = 0) : (v19 = v12[3]), v20 = v19, objc_msgSend(v20, "itemStableIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(stableIdentifierCopy, "isEqualToNumber:", v21), v21, v20, !v22)))
  {
    v27 = 0;
    activePreviewRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = [shotCopy textInputElementForRecognitionIdentifier:identifierCopy];
    v24 = v23;
    if (v23)
    {
      activePreviewRange = [v23 activePreviewRange];
      v27 = v26;
    }

    else
    {
      v27 = 0;
      activePreviewRange = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v28 = activePreviewRange;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

- (BOOL)handwritingShot:(id)shot hasCommittedResultsInSessionToElementRecognitionIdentifier:(id)identifier
{
  shotCopy = shot;
  identifierCopy = identifier;
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v9 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v10 = *(_activeInputTargetState + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEqualToNumber:identifierCopy];

  if ((v12 & 1) != 0 && ([shotCopy writingSessionIdentifier], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    if (v9)
    {
      v15 = v9[5];
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    writingSessionIdentifier = [shotCopy writingSessionIdentifier];
    v18 = [v16 isEqualToNumber:writingSessionIdentifier];

    v19 = 0;
    if (v9 && v18)
    {
      v19 = v9[8] > 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (int64_t)handwritingShot:(id)shot lastCharacterLevelPositionForElementRecognitionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v7 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v8 = *(_activeInputTargetState + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 isEqualToNumber:identifierCopy];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 && v10)
  {
    v11 = v7[9];
  }

  return v11;
}

- (_NSRange)handwritingShot:(id)shot inProgressGestureInitialSelectedRangeForElementRecognitionIdentifier:(id)identifier
{
  shotCopy = shot;
  identifierCopy = identifier;
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v9 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v10 = *(_activeInputTargetState + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEqualToNumber:identifierCopy];

  if (v12)
  {
    strokeProvider = [shotCopy strokeProvider];
    if (v9)
    {
      v14 = v9[10];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      if (v9)
      {
        v16 = v9[10];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      v18 = [strokeProvider containsStrokeWithUUID:v17];

      v15 = 0;
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9 && v18)
      {
        v19 = v9[13];
        v15 = v9[14];
      }
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v19;
  v21 = v15;
  result.length = v21;
  result.location = v20;
  return result;
}

- (id)handwritingShotStrokeIdentifiersToExcludeFromRecognition:(id)recognition
{
  canvasController = [(PKTextInputHandwritingController *)self canvasController];
  v4 = canvasController;
  if (canvasController)
  {
    v5 = [*(canvasController + 8) copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)handwritingShot:(id)shot shouldSuppressGesturesForStrokesBounds:(CGRect)bounds coordinateSpace:(id)space
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  spaceCopy = space;
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  if (!_writingSession || (v12 = _writingSession[24], _writingSession, (v12 & 1) == 0))
  {
    reserveSpaceController = [(PKTextInputHandwritingController *)self reserveSpaceController];
    [reserveSpaceController placeholderFrameInCoordinateSpace:spaceCopy];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    if (CGRectIsNull(v25) || (v26.origin.x = v15, v26.origin.y = v17, v26.size.width = v19, v26.size.height = v21, v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, !CGRectIntersectsRect(v26, v27)))
    {
      v23 = 0;
      goto LABEL_10;
    }

    _writingSession2 = [(PKTextInputHandwritingController *)self _writingSession];
    if (_writingSession2)
    {
      _writingSession2[24] = 1;
    }
  }

  v23 = 1;
LABEL_10:

  return v23;
}

- (BOOL)writingSession:(id)session elementHasPendingOperations:(id)operations
{
  v33 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

  if (_possibleHandwritingShot)
  {
    goto LABEL_7;
  }

  _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  v8 = [_activeHandwritingShot isPotentiallyTargetingElement:operationsCopy];

  if (v8)
  {
    goto LABEL_7;
  }

  _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];
  v10 = _activeResultCommand;
  if (_activeResultCommand)
  {
    v11 = *(_activeResultCommand + 48);
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 1);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_6:
  v14 = v13;
  v15 = [(PKTextInputElement *)v14 isEquivalentToElement:operationsCopy];

  if ((v15 & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
    v16 = [_resultCommandsQueue countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v16)
    {
      goto LABEL_26;
    }

    v19 = *v29;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(_resultCommandsQueue);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        if (v21)
        {
          if (*(v21 + 24) == 7)
          {
            goto LABEL_19;
          }

          v22 = *(v21 + 48);
          v23 = v22;
          if (v22)
          {
            v24 = *(v22 + 1);
            goto LABEL_18;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = 0;
LABEL_18:
        v25 = v24;
        v26 = [(PKTextInputElement *)v25 isEquivalentToElement:operationsCopy];

        if (v26)
        {
          LOBYTE(v16) = 1;
          goto LABEL_26;
        }

LABEL_19:
        ++v20;
      }

      while (v16 != v20);
      v27 = [_resultCommandsQueue countByEnumeratingWithState:&v28 objects:v32 count:16];
      v16 = v27;
      if (!v27)
      {
LABEL_26:

        goto LABEL_8;
      }
    }
  }

LABEL_7:
  LOBYTE(v16) = 1;
LABEL_8:

  return v16;
}

- (void)writingSession:(id)session didInsertTextInElement:(id)element
{
  elementCopy = element;
  v5 = +[PKTextInputLanguageSelectionController sharedInstance];
  currentLanguageIdentifiersForEmojiAlternatives = [v5 currentLanguageIdentifiersForEmojiAlternatives];

  v6 = +[PKEmojiAlternativesGenerator sharedInstance];
  if (elementCopy)
  {
    WeakRetained = objc_loadWeakRetained(elementCopy + 13);
  }

  else
  {
    WeakRetained = 0;
  }

  [(PKEmojiAlternativesGenerator *)v6 scheduleGenerateAlternativesForTextInput:currentLanguageIdentifiersForEmojiAlternatives localeIdentifiers:?];
}

- (BOOL)_wantsFloatingBackground
{
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v4 = _activeInputTargetState;
  if (_activeInputTargetState)
  {
    v5 = *(_activeInputTargetState + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  correctionResult = [v6 correctionResult];

  if (v4)
  {
    v8 = v4[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  strokeProvider = [v9 strokeProvider];
  if (v4)
  {
    v11 = v4[3];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  inputTarget = [correctionResult inputTarget];
  inputTargetIdentifier = [inputTarget inputTargetIdentifier];

  v15 = +[PKTextInputSettings sharedSettings];
  floatingBackgroundEnabled = [v15 floatingBackgroundEnabled];

  LOBYTE(coordinateSpace) = 0;
  if (v9 && floatingBackgroundEnabled && correctionResult && strokeProvider && v12 && inputTargetIdentifier)
  {
    if ([correctionResult resultType] == 1)
    {
      strokeIdentifiers = [v12 strokeIdentifiers];
      [strokeProvider boundsForSliceIdentifiers:strokeIdentifiers];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [v9 textInputElementForRecognitionIdentifier:inputTargetIdentifier];
      coordinateSpace = [(PKTextInputElement *)v27 coordinateSpace];

      if (coordinateSpace)
      {
        frame = [(PKTextInputElement *)v27 frame];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        coordinateSpace = [(PKTextInputElement *)v27 coordinateSpace];
        canvasController = [(PKTextInputHandwritingController *)self canvasController];
        [(PKTextInputCanvasController *)canvasController canvasCoordinateSpace];
        v36 = v45 = strokeIdentifiers;
        v37 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace, v36, frame, v30, v32, v34);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        strokeIdentifiers = v45;
        v46.origin.x = v37;
        v46.origin.y = v39;
        v46.size.width = v41;
        v46.size.height = v43;
        v48.origin.x = v20;
        v48.origin.y = v22;
        v48.size.width = v24;
        v48.size.height = v26;
        v47 = CGRectIntersection(v46, v48);
        LOBYTE(coordinateSpace) = v24 * v26 - v47.size.width * v47.size.height >= v24 * v26 * 0.8;
      }
    }

    else
    {
      LOBYTE(coordinateSpace) = 0;
    }
  }

  return coordinateSpace;
}

- (void)_updateFloatingBackground
{
  canvasController = [(PKTextInputHandwritingController *)self canvasController];
  _wantsFloatingBackground = [(PKTextInputHandwritingController *)self _wantsFloatingBackground];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (_wantsFloatingBackground)
  {
    if (canvasController)
    {
      v9 = canvasController[14];
      v8 = canvasController[15];
      v10 = canvasController[16];
      v11 = canvasController[17];
    }

    else
    {
      v8 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      v9 = 0.0;
    }

    inProgressStroke = [(PKTextInputCanvasController *)canvasController inProgressStroke];
    v13 = inProgressStroke;
    if (inProgressStroke && [inProgressStroke _pointsCount])
    {
      [v13 _bounds];
      v75.origin.x = v14;
      v75.origin.y = v15;
      v75.size.width = v16;
      v75.size.height = v17;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v50 = CGRectUnion(v49, v75);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
    }

    _lastKnownDrawing = [(PKTextInputHandwritingController *)self _lastKnownDrawing];

    if (_lastKnownDrawing)
    {
      _lastKnownDrawing2 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
      [_lastKnownDrawing2 bounds];
      v76.origin.x = v20;
      v76.origin.y = v21;
      v76.size.width = v22;
      v76.size.height = v23;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v52 = CGRectUnion(v51, v76);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
    }

    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    if (!CGRectIsNull(v53))
    {
      y = y + -15.0;
      x = x + -20.0;
      height = height + 35.0;
      width = width + 170.0;
    }

    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    if (!CGRectIsNull(v54))
    {
      v55.origin.x = v9;
      v55.origin.y = v8;
      v55.size.width = v10;
      v55.size.height = v11;
      if (!CGRectIsNull(v55))
      {
        v56.origin.x = v9;
        v56.origin.y = v8;
        v56.size.width = v10;
        v56.size.height = v11;
        if (!CGRectIsEmpty(v56))
        {
          v57.origin.x = v9;
          v57.origin.y = v8;
          v57.size.width = v10;
          v57.size.height = v11;
          MinY = CGRectGetMinY(v57);
          v58.origin.x = x;
          v58.origin.y = y;
          v58.size.width = width;
          v58.size.height = height;
          v45 = MinY - CGRectGetMinY(v58);
          v59.origin.x = v9;
          v59.origin.y = v8;
          v59.size.width = v10;
          v59.size.height = v11;
          MinX = CGRectGetMinX(v59);
          v60.origin.x = x;
          v60.origin.y = y;
          v60.size.width = width;
          v60.size.height = height;
          v42 = MinX - CGRectGetMinX(v60);
          v61.origin.x = x;
          v61.origin.y = y;
          v61.size.width = width;
          v61.size.height = height;
          MaxY = CGRectGetMaxY(v61);
          v62.origin.x = v9;
          v62.origin.y = v8;
          v62.size.width = v10;
          v62.size.height = v11;
          v39 = MaxY - CGRectGetMaxY(v62);
          v63.origin.x = x;
          v63.origin.y = y;
          v63.size.width = width;
          v63.size.height = height;
          MaxX = CGRectGetMaxX(v63);
          v64.origin.x = v9;
          v64.origin.y = v8;
          v64.size.width = v10;
          v64.size.height = v11;
          v24 = MaxX - CGRectGetMaxX(v64);
          v25 = height - v45;
          if (v45 < 0.0 && v45 > -40.0)
          {
            y = y + v45;
          }

          else
          {
            v25 = height;
          }

          v26 = width - v42;
          if (v42 < 0.0)
          {
            x = x + v42;
          }

          else
          {
            v26 = width;
          }

          if (v39 > -40.0 && v39 < 0.0)
          {
            height = v25 - v39;
          }

          else
          {
            height = v25;
          }

          if (v24 >= 0.0)
          {
            width = v26;
          }

          else
          {
            width = v26 - v24;
          }
        }
      }
    }

    v65.origin.x = v9;
    v65.origin.y = v8;
    v65.size.width = v10;
    v65.size.height = v11;
    if (CGRectIsNull(v65))
    {
      goto LABEL_43;
    }

    v66.origin.x = v9;
    v66.origin.y = v8;
    v66.size.width = v10;
    v66.size.height = v11;
    if (CGRectIsEmpty(v66))
    {
      goto LABEL_43;
    }

    v67.origin.x = v9;
    v67.origin.y = v8;
    v67.size.width = v10;
    v67.size.height = v11;
    v46 = CGRectGetMinY(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v43 = CGRectGetMinY(v68);
    v69.origin.x = v9;
    v69.origin.y = v8;
    v69.size.width = v10;
    v69.size.height = v11;
    v40 = CGRectGetMinX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v37 = CGRectGetMinX(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v35 = CGRectGetMaxY(v71);
    v72.origin.x = v9;
    v72.origin.y = v8;
    v72.size.width = v10;
    v72.size.height = v11;
    v34 = CGRectGetMaxY(v72);
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    v33 = CGRectGetMaxX(v73);
    v74.origin.x = v9;
    v74.origin.y = v8;
    v74.size.width = v10;
    v74.size.height = v11;
    v28 = CGRectGetMaxX(v74);
    v29 = v46 - v43;
    if (v46 - v43 < 0.0)
    {
      v29 = -(v46 - v43);
    }

    if (v29 > 12.0)
    {
      goto LABEL_43;
    }

    v30 = -(v40 - v37);
    if (v40 - v37 >= 0.0)
    {
      v30 = v40 - v37;
    }

    if (v30 > 16.0)
    {
      goto LABEL_43;
    }

    v31 = v35 - v34;
    if (v35 - v34 < 0.0)
    {
      v31 = -(v35 - v34);
    }

    if (v31 > 16.0)
    {
      goto LABEL_43;
    }

    v32 = v33 - v28;
    if (v32 < 0.0)
    {
      v32 = -v32;
    }

    if (v32 > 120.0)
    {
LABEL_43:
      v8 = y;
      v11 = height;
      v10 = width;
      v9 = x;
    }

    height = v11;
    width = v10;
    y = v8;
    x = v9;
  }

  [(PKTextInputCanvasController *)canvasController setFloatingBackgroundRect:y, width, height];
}

- (void)_updateStrokeAlphaOverride
{
  _activeInputTargetState = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  if (_activeInputTargetState && (v4 = _activeInputTargetState[16], _activeInputTargetState, v4))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    _activeInputTargetState2 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
    if (_activeInputTargetState2)
    {
      v8 = _activeInputTargetState2[11];
    }

    else
    {
      v8 = 0.0;
    }

    v9 = v6 - v8;

    if (v9 >= 0.5)
    {
      _activeInputTargetState3 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
      v12 = _activeInputTargetState3;
      if (_activeInputTargetState3)
      {
        v13 = *(_activeInputTargetState3 + 24);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      correctionResult = [v14 correctionResult];

      if (correctionResult)
      {
        if ([correctionResult resultType] == 3)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = 0.65;
        }
      }

      else
      {
        v10 = 0.65;
      }
    }

    else
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateStrokeAlphaOverride object:0];
      [(PKTextInputHandwritingController *)self performSelector:sel__updateStrokeAlphaOverride withObject:0 afterDelay:0.5 - v9];
      v10 = 0.75;
    }
  }

  else
  {
    _activeInputTargetState4 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
    if (!_activeInputTargetState4 || (v17 = _activeInputTargetState4[18], _activeInputTargetState4, v10 = 0.75, !v17))
    {
      v10 = 1.0;
    }
  }

  if (v10 != self->_strokeAlphaOverride)
  {
    self->_strokeAlphaOverride = v10;
    delegate = [(PKTextInputHandwritingController *)self delegate];
    [delegate handwritingControllerStrokeAlphaOverrideDidChange:self];
  }
}

- (void)_cancelInProgressStrokeFromHandwritingShots
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = _possibleHandwritingShot;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "HWController %@: in progress stroke cancelled. Removing in progress stroke from possible shot %@", &v16, 0x16u);
  }

  _possibleHandwritingShot2 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  inputDrawing = [_possibleHandwritingShot2 inputDrawing];

  strokes = [inputDrawing strokes];
  v10 = [strokes count];

  if (v10)
  {
    _possibleHandwritingShot3 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    [_possibleHandwritingShot3 setInputDrawing:inputDrawing inputInProgressStroke:0];
  }

  else
  {
    [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:0];
    [(PKTextInputHandwritingController *)self _setActiveInputTargetState:0];
    _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    _possibleHandwritingShot3 = [_activeHandwritingShot inputDrawing];

    strokes2 = [_possibleHandwritingShot3 strokes];
    v14 = [strokes2 count];

    if (!v14)
    {
      _activeHandwritingShot2 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
      [_activeHandwritingShot2 setCancelled:1];
    }
  }
}

- (void)canvasControllerDidBeginDrawing:(id)drawing
{
  [(PKTextInputHandwritingController *)self _cancelPendingResultCommand];
  [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];

  [(PKTextInputHandwritingController *)self _updateWritingSession];
}

- (void)canvasControllerInProgressStrokeDidChange:(id)change
{
  changeCopy = change;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [(PKTextInputHandwritingController *)self _lastInProgressStrokeUpdateTime];
  v7 = v5 - v6;
  [(PKTextInputHandwritingController *)self _continuousRecognitionInterval];
  if (v7 >= v8)
  {
    v9 = +[PKTextInputSettings sharedSettings];
    continuousRecognition = [v9 continuousRecognition];

    if (continuousRecognition)
    {
      inProgressStroke = [(PKTextInputCanvasController *)changeCopy inProgressStroke];
      _lastInProgressStrokeUUID = [(PKTextInputHandwritingController *)self _lastInProgressStrokeUUID];
      _strokeUUID = [inProgressStroke _strokeUUID];
      v14 = [_lastInProgressStrokeUUID isEqual:_strokeUUID];

      if ((v14 & 1) != 0 || ([inProgressStroke _bounds], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, CGRectGetWidth(v27) >= 10.0) || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, CGRectGetHeight(v28) >= 10.0))
      {
        [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];
        _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
        _lastKnownDrawing = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
        [_possibleHandwritingShot setInputDrawing:_lastKnownDrawing inputInProgressStroke:inProgressStroke];

        [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUpdateTime:v5];
        _strokeUUID2 = [inProgressStroke _strokeUUID];
        [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUUID:_strokeUUID2];
      }
    }
  }

  v22 = +[PKTextInputSettings sharedSettings];
  floatingBackgroundEnabled = [v22 floatingBackgroundEnabled];

  if (floatingBackgroundEnabled)
  {
    [(PKTextInputHandwritingController *)self _floatingBackgroundLastUpdateTime];
    if (v5 - v24 >= 0.1)
    {
      [(PKTextInputHandwritingController *)self _updateFloatingBackground];
    }
  }
}

- (void)canvasController:(id)controller drawingDidChange:(id)change
{
  changeCopy = change;
  strokes = [changeCopy strokes];
  v6 = [strokes count];

  if (v6)
  {
    [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];
  }

  [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUUID:0];
  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  [_possibleHandwritingShot setInputDrawing:changeCopy inputInProgressStroke:0];

  [(PKTextInputHandwritingController *)self _setLastKnownDrawing:changeCopy];
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  writingState = [(PKTextInputHandwritingController *)self writingState];
  v5 = @"Active";
  if (writingState != 1)
  {
    v5 = 0;
  }

  if (writingState)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Idle";
  }

  descriptionCopy[2](descriptionCopy, @"Writing state", v6);
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  v8 = _writingSession;
  if (_writingSession && (v9 = *(_writingSession + 32)) != 0)
  {
    v10 = v9;
    _writingSession2 = [(PKTextInputHandwritingController *)self _writingSession];
    v12 = _writingSession2;
    if (_writingSession2)
    {
      v13 = *(_writingSession2 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 description];
    descriptionCopy[2](descriptionCopy, @"Writing session ID", v15);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Writing session ID", &stru_1F476BD20);
    v10 = 0;
  }

  _lastKnownDrawing = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
  if (_lastKnownDrawing)
  {
    v17 = MEMORY[0x1E696AEC0];
    _lastKnownDrawing2 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
    strokes = [_lastKnownDrawing2 strokes];
    v20 = [v17 stringWithFormat:@"%ld visible strokes", objc_msgSend(strokes, "count")];
    descriptionCopy[2](descriptionCopy, @"Last known drawing", v20);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Last known drawing", @"None");
  }

  _activeHandwritingShot = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  if (_activeHandwritingShot)
  {
    _activeHandwritingShot2 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    v23 = PKTextInputDescriptionForHandwritingShotState([_activeHandwritingShot2 shotState]);
    descriptionCopy[2](descriptionCopy, @"Active shot", v23);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Active shot", @"None");
  }

  _possibleHandwritingShot = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  if (_possibleHandwritingShot)
  {
    _possibleHandwritingShot2 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    v26 = PKTextInputDescriptionForHandwritingShotState([_possibleHandwritingShot2 shotState]);
    descriptionCopy[2](descriptionCopy, @"Possible shot", v26);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Possible shot", @"None");
  }

  _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];
  if (_activeResultCommand)
  {
    _activeResultCommand2 = [(PKTextInputHandwritingController *)self _activeResultCommand];
    v29 = _activeResultCommand2;
    if (_activeResultCommand2)
    {
      _activeResultCommand2 = *(_activeResultCommand2 + 24);
    }

    v30 = PKTextInputDescriptionForResultCommandState(_activeResultCommand2);
    descriptionCopy[2](descriptionCopy, @"Active result command", v30);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Active result command", @"None");
  }

  _pendingResultCommand = [(PKTextInputHandwritingController *)self _pendingResultCommand];
  if (_pendingResultCommand)
  {
    _pendingResultCommand2 = [(PKTextInputHandwritingController *)self _pendingResultCommand];
    v33 = _pendingResultCommand2;
    if (_pendingResultCommand2)
    {
      _pendingResultCommand2 = *(_pendingResultCommand2 + 24);
    }

    v34 = PKTextInputDescriptionForResultCommandState(_pendingResultCommand2);
    descriptionCopy[2](descriptionCopy, @"Pending result command", v34);
  }

  else
  {
    descriptionCopy[2](descriptionCopy, @"Pending result command", @"None");
  }

  v35 = MEMORY[0x1E696AD98];
  _resultCommandsQueue = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(_resultCommandsQueue, "count")}];
  v38 = [v37 description];
  descriptionCopy[2](descriptionCopy, @"Commands in queue", v38);

  _writingSession3 = [(PKTextInputHandwritingController *)self _writingSession];
  v40 = _writingSession3;
  if (_writingSession3)
  {
    v41 = *(_writingSession3 + 40);
    if (v41)
    {
      v42 = v41;
      v43 = MEMORY[0x1E696AEC0];
      _writingSession4 = [(PKTextInputHandwritingController *)self _writingSession];
      v45 = _writingSession4;
      if (_writingSession4)
      {
        v46 = *(_writingSession4 + 40);
        v47 = v46;
        if (v46)
        {
          v48 = *(v46 + 14);
LABEL_36:
          v49 = v48;
          v50 = [v43 stringWithFormat:@"%@", v49];
          descriptionCopy[2](descriptionCopy, @"Current target element", v50);

          goto LABEL_38;
        }
      }

      else
      {
        v47 = 0;
      }

      v48 = 0;
      goto LABEL_36;
    }
  }

  descriptionCopy[2](descriptionCopy, @"Current target element", @"None");
  v42 = 0;
LABEL_38:
}

- (PKTextInputHandwritingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)quickCommitIfPossible
{
  _activeResultCommand = [(PKTextInputHandwritingController *)self _activeResultCommand];

  if (_activeResultCommand)
  {
    _activeResultCommand2 = [(PKTextInputHandwritingController *)self _activeResultCommand];
    v5 = _activeResultCommand2;
    if (_activeResultCommand2 && *(_activeResultCommand2 + 24) == 1)
    {
      [(PKTextInputResultCommand *)_activeResultCommand2 _setCommandState:?];
    }
  }

  [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueueImmediateCommit:1];
}

- (void)cleanUpFromCancelledReplay
{
  _writingSession = [(PKTextInputHandwritingController *)self _writingSession];
  [(PKTextInputWritingSession *)_writingSession setCurrentTargetElement:?];

  [(PKTextInputHandwritingController *)self _setActiveInputTargetState:0];
}

@end