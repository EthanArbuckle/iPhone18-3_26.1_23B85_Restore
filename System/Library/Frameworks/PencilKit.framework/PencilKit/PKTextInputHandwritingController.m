@interface PKTextInputHandwritingController
- (BOOL)_evaluateAndProcessResultCommandsQueueImmediateCommit:(BOOL)a3;
- (BOOL)_wantsFloatingBackground;
- (BOOL)handwritingShot:(id)a3 hasCommittedResultsInSessionToElementRecognitionIdentifier:(id)a4;
- (BOOL)handwritingShot:(id)a3 shouldSuppressGesturesForStrokesBounds:(CGRect)a4 coordinateSpace:(id)a5;
- (BOOL)writingSession:(id)a3 elementHasPendingOperations:(id)a4;
- (PKTextInputHandwritingController)initWithCanvasController:(id)a3 elementsController:(id)a4 feedbackController:(id)a5 reserveSpaceController:(id)a6 debugLogController:(id)a7 cursorController:(id)a8;
- (PKTextInputHandwritingControllerDelegate)delegate;
- (_NSRange)handwritingShot:(id)a3 activePreviewRangeForElementRecognitionIdentifier:(id)a4 queryItemStableIdentifier:(id)a5;
- (_NSRange)handwritingShot:(id)a3 inProgressGestureInitialSelectedRangeForElementRecognitionIdentifier:(id)a4;
- (double)_continuousRecognitionInterval;
- (id)_pendingResultCommand;
- (id)_resultCommandToProcessQueryItem:(id)a3 handwritingShot:(id)a4;
- (id)handwritingShot:(id)a3 preferredTargetElementForQueryItemStableIdentifier:(id)a4 simultaneousItemStableIdentifiers:(id)a5 proposedTargetElement:(id)a6;
- (id)handwritingShotStrokeIdentifiersToExcludeFromRecognition:(id)a3;
- (id)resultCommandSupportedElementDelegate:(id)a3;
- (int64_t)_immediateCommitTypeForQueryItem:(id)a3 handwritingShot:(id)a4;
- (int64_t)handwritingShot:(id)a3 lastCharacterLevelPositionForElementRecognitionIdentifier:(id)a4;
- (int64_t)writingState;
- (void)_cancelInProgressStrokeFromHandwritingShots;
- (void)_cancelPendingResultCommand;
- (void)_createPossibleHandwritingShotIfNeeded;
- (void)_handleActiveHandwritingShotRecognitionFinished;
- (void)_handleResultCommandFinished:(id)a3;
- (void)_notifyDelegateOfResultCommandState;
- (void)_processPossibleShotIfReady;
- (void)_scheduleCommitForResultCommandIfNeeded:(id)a3;
- (void)_setActiveHandwritingShot:(id)a3;
- (void)_setActiveInputTargetState:(id)a3;
- (void)_setActiveResultCommand:(id)a3;
- (void)_setLastKnownDrawing:(id)a3;
- (void)_setPossibleHandwritingShot:(id)a3;
- (void)_setWritingSession:(id)a3;
- (void)_updateFloatingBackground;
- (void)_updateRecognitionManager;
- (void)_updateStrokeAlphaOverride;
- (void)_updateWritingSession;
- (void)canvasController:(id)a3 drawingDidChange:(id)a4;
- (void)canvasControllerDidBeginDrawing:(id)a3;
- (void)canvasControllerInProgressStrokeDidChange:(id)a3;
- (void)cleanUpFromCancelledReplay;
- (void)handwritingShot:(id)a3 willFocusAndLoadDataForTargetElement:(id)a4;
- (void)handwritingShotDidChangeState:(id)a3;
- (void)handwritingShotDidOverrideStrongCursor:(id)a3;
- (void)quickCommitIfPossible;
- (void)reportDebugStateDescription:(id)a3;
- (void)reserveSpaceControllerWillFocusElement:(id)a3;
- (void)resultCommandStateDidChange:(id)a3;
- (void)writingSession:(id)a3 didInsertTextInElement:(id)a4;
@end

@implementation PKTextInputHandwritingController

- (PKTextInputHandwritingController)initWithCanvasController:(id)a3 elementsController:(id)a4 feedbackController:(id)a5 reserveSpaceController:(id)a6 debugLogController:(id)a7 cursorController:(id)a8
{
  v27 = a3;
  v26 = a4;
  v15 = a5;
  v25 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = PKTextInputHandwritingController;
  v18 = [(PKTextInputHandwritingController *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_canvasController, a3);
    objc_storeStrong(&v19->_elementsController, a4);
    objc_storeStrong(&v19->_reserveSpaceController, a6);
    objc_storeStrong(&v19->_debugLogController, a7);
    objc_storeStrong(&v19->_cursorController, a8);
    objc_storeStrong(&v19->_feedbackController, a5);
    [v15 setReferenceElementContent:0 referenceRange:0x7FFFFFFFFFFFFFFFLL feedbackType:{0, 0}];
    v20 = objc_alloc_init(PKTextInputTargetState);
    activeInputTargetState = v19->__activeInputTargetState;
    v19->__activeInputTargetState = v20;

    v19->_strokeAlphaOverride = 1.0;
    v22 = [MEMORY[0x1E695DF70] array];
    resultCommandsQueue = v19->__resultCommandsQueue;
    v19->__resultCommandsQueue = v22;
  }

  return v19;
}

- (void)_setWritingSession:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->__writingSession != v5)
  {
    v6 = [(PKTextInputHandwritingController *)self writingState];
    objc_storeStrong(&self->__writingSession, a3);
    v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 == 1)
      {
        v8 = @"Active";
      }

      else
      {
        v8 = 0;
      }

      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = @"Idle";
      }

      v10 = v9;
      v11 = [(PKTextInputHandwritingController *)self writingState];
      if (v11 == 1)
      {
        v12 = @"Active";
      }

      else
      {
        v12 = 0;
      }

      if (!v11)
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

    v14 = [(PKTextInputHandwritingController *)self delegate];
    [v14 handwritingControllerWritingStateDidChange:self];

    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

- (int64_t)writingState
{
  v2 = [(PKTextInputHandwritingController *)self _writingSession];
  v3 = v2 != 0;

  return v3;
}

- (void)_notifyDelegateOfResultCommandState
{
  if (![(PKTextInputHandwritingController *)self writingState])
  {
    v3 = [(PKTextInputHandwritingController *)self _activeResultCommand];
    if (!v3)
    {
      v4 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      v5 = [v4 count];

      if (v5)
      {
        return;
      }

      v6 = [(PKTextInputHandwritingController *)self delegate];
      [v6 handwritingControllerDidFinishActiveCommands:self];
      v3 = v6;
    }
  }
}

- (void)_setActiveHandwritingShot:(id)a3
{
  v5 = a3;
  if (self->__activeHandwritingShot != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__activeHandwritingShot, a3);
    v6 = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = v6;
    if (v6)
    {
      [(PKTextInputWritingSession *)v6 _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    v5 = v8;
  }
}

- (void)_setPossibleHandwritingShot:(id)a3
{
  v5 = a3;
  if (self->__possibleHandwritingShot != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__possibleHandwritingShot, a3);
    v6 = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = v6;
    if (v6)
    {
      [(PKTextInputWritingSession *)v6 _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    v5 = v8;
  }
}

- (void)_setActiveResultCommand:(id)a3
{
  v5 = a3;
  if (self->__activeResultCommand != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__activeResultCommand, a3);
    v6 = [(PKTextInputHandwritingController *)self _writingSession];
    v7 = v6;
    if (v6)
    {
      [(PKTextInputWritingSession *)v6 _evaluatePendingWritingEndedElements];
    }

    [(PKTextInputHandwritingController *)self _updateWritingSession];
    [(PKTextInputHandwritingController *)self _notifyDelegateOfResultCommandState];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    v5 = v8;
  }
}

- (void)_setLastKnownDrawing:(id)a3
{
  if (self->__lastKnownDrawing != a3)
  {
    v5 = [a3 copy];
    lastKnownDrawing = self->__lastKnownDrawing;
    self->__lastKnownDrawing = v5;

    +[PKTextInputDebugStateIntrospector debugStateDidChange];

    [(PKTextInputHandwritingController *)self _updateFloatingBackground];
  }
}

- (void)_setActiveInputTargetState:(id)a3
{
  v5 = a3;
  if (self->__activeInputTargetState != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__activeInputTargetState, a3);
    [(PKTextInputHandwritingController *)self _updateWritingSession];
    [(PKTextInputHandwritingController *)self _updateFloatingBackground];
    [(PKTextInputHandwritingController *)self _updateStrokeAlphaOverride];
    v5 = v6;
  }
}

- (void)_updateWritingSession
{
  v3 = [(PKTextInputHandwritingController *)self canvasController];
  v4 = v3;
  if (v3 && ([*(v3 + 96) isDrawing] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [(PKTextInputHandwritingController *)self _activeResultCommand];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [(PKTextInputHandwritingController *)self reserveSpaceController];
          if ([v9 isReserveSpaceActive])
          {
            v5 = 1;
          }

          else
          {
            v10 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
            v11 = v10;
            if (v10)
            {
              v12 = *(v10 + 48);
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

  v14 = [(PKTextInputHandwritingController *)self _writingSession];

  if (!v5 || v14)
  {
    if (v14)
    {
      v17 = v5;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      v18 = [(PKTextInputHandwritingController *)self _writingSession];
      [(PKTextInputWritingSession *)v18 invalidate];

      v19 = [(PKTextInputHandwritingController *)self _writingSession];
      v20 = v19;
      if (v19)
      {
        objc_storeWeak((v19 + 48), 0);
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
  v3 = [(PKTextInputHandwritingController *)self _recognitionManager];

  if (!v3)
  {
    v4 = objc_alloc_init(PKTextInputRecognitionManager);
    [(PKTextInputHandwritingController *)self set_recognitionManager:v4];
  }

  v5 = +[PKTextInputLanguageSelectionController sharedInstance];
  [v5 ensureKeyboardLanguageConsistencyIfNeeded];

  v6 = +[PKTextInputSettings sharedSettings];
  v7 = [v6 outOfProcessRecognition];

  v8 = [(PKTextInputHandwritingController *)self _recognitionManager];
  [(PKTextInputRecognitionManager *)v8 setPreferOutOfProcessRecognition:v7];
}

- (void)reserveSpaceControllerWillFocusElement:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputHandwritingController *)self _writingSession];
  [(PKTextInputWritingSession *)v5 setCurrentTargetElement:v4];
}

- (BOOL)_evaluateAndProcessResultCommandsQueueImmediateCommit:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  v6 = [v5 firstObject];

  if (!v6)
  {
    v10 = 0;
    LOBYTE(v3) = 0;
    goto LABEL_28;
  }

  v7 = v6[3];
  if (v7 == 7)
  {
    while (1)
    {
      v8 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      [v8 removeObjectAtIndex:0];

      v9 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
      v10 = [v9 firstObject];

      if (!v10)
      {
        break;
      }

      v6 = v10;
      if (v10[3] != 7)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v3) = 0;
    goto LABEL_25;
  }

  v10 = v6;
LABEL_8:
  v11 = [(PKTextInputHandwritingController *)self _activeResultCommand];
  if (v11)
  {

    goto LABEL_20;
  }

  v12 = v10[3];
  v13 = v12 == 1 && v3;
  if (v12 != 2 && !v13)
  {
LABEL_20:
    LOBYTE(v3) = 0;
    if (v7 != 7)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  [(PKTextInputHandwritingController *)self _setActiveResultCommand:v10];
  v15 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  [v15 removeObjectAtIndex:0];

  if (v3)
  {
    if (v10[3] == 1)
    {
      [(PKTextInputResultCommand *)v10 _setCommandState:?];
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  v16 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  [(PKTextInputResultCommand *)v10 beginApplyingResultCommandWithInputTargetState:v16];

LABEL_25:
  v17 = [(PKTextInputHandwritingController *)self _writingSession];
  v18 = v17;
  if (v17)
  {
    [(PKTextInputWritingSession *)v17 _evaluatePendingWritingEndedElements];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
LABEL_28:

  return v3;
}

- (void)_handleResultCommandFinished:(id)a3
{
  v8 = a3;
  v4 = [(PKTextInputHandwritingController *)self _activeResultCommand];

  v5 = v8;
  if (v8 && v8[3] - 5 <= 1)
  {
    v6 = v8[9];
    [(PKTextInputHandwritingController *)self _setActiveInputTargetState:v6];
    if (*(v8 + 8) == 1)
    {
      v7 = [(PKTextInputHandwritingController *)self debugLogController];
      [(PKTextInputDebugLogController *)v7 logEntryForAppliedResult:v8];
    }

    [(PKTextInputHandwritingController *)self _scheduleCommitForResultCommandIfNeeded:v8];

    v5 = v8;
  }

  if (v4 == v5)
  {
    [(PKTextInputHandwritingController *)self _setActiveResultCommand:0];
    v5 = v8;
  }

  if (v5)
  {
    objc_storeWeak(v8 + 2, 0);
  }

  [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueue];
  [(PKTextInputHandwritingController *)self _processPossibleShotIfReady];
  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)_scheduleCommitForResultCommandIfNeeded:(id)a3
{
  v4 = a3;
  v35 = v4;
  if (v4)
  {
    v5 = v4[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 inputInProgressStroke];

  v8 = [(PKTextInputHandwritingController *)self canvasController];
  v9 = v8;
  if (v8)
  {
    v10 = [*(v8 + 96) isDrawing];
  }

  else
  {
    v10 = 0;
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

  if (([v15 length] != 0) | v10 & 1)
  {
    goto LABEL_30;
  }

  if (v7)
  {
    goto LABEL_30;
  }

  v16 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

  if (v16)
  {
    goto LABEL_30;
  }

  v17 = v35[4];
  v18 = [v17 correctionResult];

  v19 = [v6 languageSpec];
  v20 = [(PKTextInputLanguageSpec *)v19 standardCommitDelay];

  if (![v18 isCharacterLevel])
  {
    v22 = [v14 length];
    v23 = [v14 length];
    if (v22 == 1)
    {
      v24 = [v14 characterAtIndex:v23 - 1];
      v25 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      LODWORD(v24) = [v25 characterIsMember:v24];

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    else if (v23 || v35[15] != 1)
    {
      [v6 recognitionDuration];
      v20 = fmax(v20 - v26, 0.0);
      goto LABEL_20;
    }
  }

  v21 = [v6 languageSpec];
  v20 = [(PKTextInputLanguageSpec *)v21 singleCharacterCommitDelay];

LABEL_20:
  v27 = [PKTextInputResultCommand alloc];
  v28 = v35[4];
  v29 = [(PKTextInputResultCommand *)v27 initWithQueryItem:v28 handwritingShot:v6 immediateCommitType:1 applyAfterDelay:v20];

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

  v32 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  [v32 addObject:v29];

  v33 = [(PKTextInputHandwritingController *)self _writingSession];
  v34 = v33;
  if (v33)
  {
    [(PKTextInputWritingSession *)v33 _evaluatePendingWritingEndedElements];
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
  v2 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (v6 && v6[3] == 1)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(PKTextInputHandwritingController *)self _pendingResultCommand];
  if (v2)
  {
    v3 = v2;
    [(PKTextInputResultCommand *)v2 cancelDelayedCommand];
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
    v2 = v3;
  }
}

- (void)resultCommandStateDidChange:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    v6 = 1;
    goto LABEL_12;
  }

  v5 = *(v4 + 3);
  v6 = 1;
  if (v5 > 4)
  {
    if ((v5 - 5) < 3)
    {
      [(PKTextInputHandwritingController *)self _handleResultCommandFinished:v4];
      v4 = v12;
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueue];
    v4 = v12;
  }

  else if (v5 != 3)
  {
    v6 = v5 != 4;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  v7 = *(v4 + 6);
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
    v11 = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)v11 setCurrentTargetElement:v10];
  }
}

- (id)resultCommandSupportedElementDelegate:(id)a3
{
  v4 = [(PKTextInputHandwritingController *)self delegate];
  v5 = [v4 supportedElementDelegateForHandwritingController:self];

  return v5;
}

- (void)_createPossibleHandwritingShotIfNeeded
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  v5 = +[PKTextInputSettings sharedSettings];
  v6 = [v5 recognitionLocaleIdentifiers];

  if (!v4)
  {
    if ([v6 count])
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v6;
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
      v16 = [(PKTextInputHandwritingController *)self canvasController];
      v17 = [(PKTextInputHandwritingController *)self elementsController];
      v4 = [(PKTextInputHandwritingShot *)v15 initWithCanvasController:v16 elementsController:v17 languageSpec:v14];

      [(PKTextInputHandwritingShot *)v4 setDelegate:self];
      [(PKTextInputHandwritingShot *)v4 setWritingIsActiveAtStart:[(PKTextInputHandwritingController *)self writingState]== 1];
      v18 = [(PKTextInputHandwritingController *)self cursorController];
      -[PKTextInputHandwritingShot setCursorIsWeakAtStart:](v4, "setCursorIsWeakAtStart:", [v18 isCursorWeak]);

      v19 = [(PKTextInputHandwritingController *)self cursorController];
      -[PKTextInputHandwritingShot setCursorIsForcedStrongAtStart:](v4, "setCursorIsForcedStrongAtStart:", [v19 forceStrong]);

      v20 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = NSStringFromSelector(a2);
        v22 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
        *buf = 138412802;
        v28 = v21;
        v29 = 2112;
        v30 = v4;
        v31 = 2112;
        v32 = v22;
        _os_log_debug_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_DEBUG, "HWController %@: created possible shot: %@, active shot: %@", buf, 0x20u);
      }

      [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:v4];
    }

    else
    {
      v4 = 0;
    }
  }
}

- (void)_processPossibleShotIfReady
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  v5 = v4;
  if (v4 && [v4 shotState] == 2 && (-[PKTextInputHandwritingController _activeHandwritingShot](self, "_activeHandwritingShot"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) && (-[PKTextInputHandwritingController _activeResultCommand](self, "_activeResultCommand"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
    v10 = [v9 count];

    v8 = [(PKTextInputHandwritingController *)self _pendingResultCommand];
    if (v10 == (v8 != 0))
    {
      v11 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = NSStringFromSelector(a2);
        v18 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
        v19 = 138412802;
        v20 = v17;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v18;
        _os_log_debug_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEBUG, "HWController %@: promoting possibleShot to active: %@, old activeShot: %@", &v19, 0x20u);
      }

      [(PKTextInputHandwritingController *)self _setActiveHandwritingShot:v5];
      [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:0];
      [(PKTextInputHandwritingController *)self _updateRecognitionManager];
      v12 = [(PKTextInputHandwritingController *)self _recognitionManager];
      v13 = [(PKTextInputHandwritingController *)self _writingSession];
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      [v5 setWritingSessionIdentifier:v16];

      [v5 beginRecognitionWithRecognitionManager:v12];
      if (v8)
      {
        [(PKTextInputHandwritingController *)self _cancelPendingResultCommand];
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)_handleActiveHandwritingShotRecognitionFinished
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v17 = NSStringFromSelector(a2);
    v18 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    v19 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    *buf = 138412802;
    v26 = v17;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v19;
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "HWController %@: will process active shot: %@, possibleShot: %@", buf, 0x20u);
  }

  v5 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  v6 = v5;
  if (v5)
  {
    if ([v5 isCancelled])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 resultQueryItems];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
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
            v14 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
            [v14 addObject:v13];

            v15 = [(PKTextInputHandwritingController *)self _writingSession];
            v16 = v15;
            if (v15)
            {
              [(PKTextInputWritingSession *)v15 _evaluatePendingWritingEndedElements];
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

- (id)_resultCommandToProcessQueryItem:(id)a3 handwritingShot:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 strokeIdentifiers];
  v9 = [v7 strokeProvider];
  v10 = [v7 resultQueryItems];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v35 = self;
    v36 = *v42;
    v33 = v10;
    v34 = v6;
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
        v16 = [v9 strokesForSliceIdentifiers:v15];
        v17 = [v16 anyObject];

        if (!v17)
        {
          goto LABEL_24;
        }

        v18 = [v7 inputInProgressStroke];
        v19 = [v18 isEqual:v17];

        if ((v19 & 1) == 0)
        {
          v20 = v7;
          v21 = v9;
          v22 = v11;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v23 = [(PKTextInputHandwritingController *)v35 _lastKnownDrawing];
          v24 = [v23 strokes];

          v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                  objc_enumerationMutation(v24);
                }

                if ([*(*(&v37 + 1) + 8 * j) isEqual:v17])
                {

                  v11 = v22;
                  v9 = v21;
                  v7 = v20;
                  goto LABEL_18;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

          v11 = v22;
          v9 = v21;
          v7 = v20;
LABEL_24:

          v30 = 0;
          v10 = v33;
          v6 = v34;
          goto LABEL_27;
        }

LABEL_18:
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
      v10 = v33;
      v6 = v34;
      self = v35;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if ([v10 count] < 2 || (objc_msgSend(v10, "firstObject"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29 == v6))
  {
    v31 = [[PKTextInputResultCommand alloc] initWithQueryItem:v6 handwritingShot:v7 immediateCommitType:[(PKTextInputHandwritingController *)self _immediateCommitTypeForQueryItem:v6 handwritingShot:v7] applyAfterDelay:0.0];
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

- (int64_t)_immediateCommitTypeForQueryItem:(id)a3 handwritingShot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 resultQueryItems];
  v8 = [v5 correctionResult];
  v9 = [v8 inputTarget];
  v10 = [v9 inputTargetIdentifier];

  if ([v7 count] <= 1)
  {
    if (v10)
    {
      v12 = [v6 textInputElementForRecognitionIdentifier:v10];
      v13 = [v6 inputInProgressStroke];

      v11 = 0;
      if (v12 && !v13)
      {
        v14 = objc_opt_class();
        v15 = [v5 correctionResult];
        LODWORD(v14) = [v14 _isCorrectionResultGesture:v15];

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
  v3 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 correctionResult];

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  if (v10)
  {
    v11 = v10[12];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = +[PKTextInputSettings sharedSettings];
  [v12 continuousRecognitionWritingInterval];
  v14 = v13;

  if (v7)
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
      v17 = [v7 resultType];
      if ((v17 - 2) >= 7 && v17)
      {
        if (v17 == 1)
        {
          v19 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
          v20 = v19;
          if (v19)
          {
            v21 = *(v19 + 48);
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

- (void)handwritingShotDidChangeState:(id)a3
{
  v7 = a3;
  v4 = [v7 shotState];
  if (v4 == 4)
  {
    v6 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];

    if (v6 != v7)
    {
      goto LABEL_8;
    }

    [(PKTextInputHandwritingController *)self _handleActiveHandwritingShotRecognitionFinished];
    [(PKTextInputHandwritingController *)self _setActiveHandwritingShot:0];
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

    if (v5 == v7)
    {
LABEL_7:
      [(PKTextInputHandwritingController *)self _processPossibleShotIfReady];
    }
  }

LABEL_8:
}

- (void)handwritingShotDidOverrideStrongCursor:(id)a3
{
  v4 = [(PKTextInputHandwritingController *)self cursorController];
  v5 = [v4 forceStrong];

  if ((v5 & 1) == 0)
  {
    v6 = [(PKTextInputHandwritingController *)self cursorController];
    [v6 makeCursorWeak];
  }
}

- (id)handwritingShot:(id)a3 preferredTargetElementForQueryItemStableIdentifier:(id)a4 simultaneousItemStableIdentifiers:(id)a5 proposedTargetElement:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  v17 = v11;
  if (v13)
  {
    v17 = v11;
    if (v15)
    {
      v18 = *(v13 + 24);
      v19 = [v18 itemStableIdentifier];

      v17 = v11;
      if (v19)
      {
        v17 = v11;
        if ([v10 isEqualToNumber:v19])
        {
          v20 = *(v13 + 48);
          v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:v21];
          v23 = [v22 length];

          v17 = v11;
          if (*(v13 + 64) + v23 >= 2)
          {
            v24 = [v9 textInputElementForRecognitionIdentifier:v16];
            v25 = v24;
            v17 = v11;
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

- (void)handwritingShot:(id)a3 willFocusAndLoadDataForTargetElement:(id)a4
{
  v10 = a4;
  v5 = +[PKEmojiAlternativesGenerator sharedInstance];
  [(PKEmojiAlternativesGenerator *)v5 cancelScheduledTasks];

  v6 = +[PKEmojiAlternativesGenerator sharedInstance];
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained(v10 + 13);
    [(PKEmojiAlternativesGenerator *)v6 clearExistingAlternativesForTextInput:?];

    v8 = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)v8 setCurrentTargetElement:v10];

    if (([(PKTextInputElement *)v10 isFocused]& 1) != 0)
    {
      goto LABEL_5;
    }

    v9 = [(PKTextInputHandwritingController *)self cursorController];
    [v9 makeCursorWeak];
  }

  else
  {
    [(PKEmojiAlternativesGenerator *)v6 clearExistingAlternativesForTextInput:?];

    v9 = [(PKTextInputHandwritingController *)self _writingSession];
    [(PKTextInputWritingSession *)v9 setCurrentTargetElement:?];
  }

LABEL_5:
}

- (_NSRange)handwritingShot:(id)a3 activePreviewRangeForElementRecognitionIdentifier:(id)a4 queryItemStableIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [v14 isEqualToNumber:v9];

  if (!v15 || v10 && (!v12 ? (v16 = 0) : (v16 = v12[3]), (v17 = v16, [v17 itemStableIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18) && (!v12 ? (v19 = 0) : (v19 = v12[3]), v20 = v19, objc_msgSend(v20, "itemStableIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v10, "isEqualToNumber:", v21), v21, v20, !v22)))
  {
    v27 = 0;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = [v8 textInputElementForRecognitionIdentifier:v9];
    v24 = v23;
    if (v23)
    {
      v25 = [v23 activePreviewRange];
      v27 = v26;
    }

    else
    {
      v27 = 0;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

- (BOOL)handwritingShot:(id)a3 hasCommittedResultsInSessionToElementRecognitionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEqualToNumber:v7];

  if ((v12 & 1) != 0 && ([v6 writingSessionIdentifier], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
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
    v17 = [v6 writingSessionIdentifier];
    v18 = [v16 isEqualToNumber:v17];

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

- (int64_t)handwritingShot:(id)a3 lastCharacterLevelPositionForElementRecognitionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 isEqualToNumber:v5];

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

- (_NSRange)handwritingShot:(id)a3 inProgressGestureInitialSelectedRangeForElementRecognitionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isEqualToNumber:v7];

  if (v12)
  {
    v13 = [v6 strokeProvider];
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
      v18 = [v13 containsStrokeWithUUID:v17];

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

- (id)handwritingShotStrokeIdentifiersToExcludeFromRecognition:(id)a3
{
  v3 = [(PKTextInputHandwritingController *)self canvasController];
  v4 = v3;
  if (v3)
  {
    v5 = [*(v3 + 8) copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)handwritingShot:(id)a3 shouldSuppressGesturesForStrokesBounds:(CGRect)a4 coordinateSpace:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  v11 = [(PKTextInputHandwritingController *)self _writingSession];
  if (!v11 || (v12 = v11[24], v11, (v12 & 1) == 0))
  {
    v13 = [(PKTextInputHandwritingController *)self reserveSpaceController];
    [v13 placeholderFrameInCoordinateSpace:v10];
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

    v22 = [(PKTextInputHandwritingController *)self _writingSession];
    if (v22)
    {
      v22[24] = 1;
    }
  }

  v23 = 1;
LABEL_10:

  return v23;
}

- (BOOL)writingSession:(id)a3 elementHasPendingOperations:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  v8 = [v7 isPotentiallyTargetingElement:v5];

  if (v8)
  {
    goto LABEL_7;
  }

  v9 = [(PKTextInputHandwritingController *)self _activeResultCommand];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 48);
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
  v15 = [(PKTextInputElement *)v14 isEquivalentToElement:v5];

  if ((v15 & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
    v16 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v18);
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
        v26 = [(PKTextInputElement *)v25 isEquivalentToElement:v5];

        if (v26)
        {
          LOBYTE(v16) = 1;
          goto LABEL_26;
        }

LABEL_19:
        ++v20;
      }

      while (v16 != v20);
      v27 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
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

- (void)writingSession:(id)a3 didInsertTextInElement:(id)a4
{
  v4 = a4;
  v5 = +[PKTextInputLanguageSelectionController sharedInstance];
  v8 = [v5 currentLanguageIdentifiersForEmojiAlternatives];

  v6 = +[PKEmojiAlternativesGenerator sharedInstance];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(v4 + 13);
  }

  else
  {
    WeakRetained = 0;
  }

  [(PKEmojiAlternativesGenerator *)v6 scheduleGenerateAlternativesForTextInput:v8 localeIdentifiers:?];
}

- (BOOL)_wantsFloatingBackground
{
  v3 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 correctionResult];

  if (v4)
  {
    v8 = v4[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 strokeProvider];
  if (v4)
  {
    v11 = v4[3];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v7 inputTarget];
  v14 = [v13 inputTargetIdentifier];

  v15 = +[PKTextInputSettings sharedSettings];
  v16 = [v15 floatingBackgroundEnabled];

  LOBYTE(v17) = 0;
  if (v9 && v16 && v7 && v10 && v12 && v14)
  {
    if ([v7 resultType] == 1)
    {
      v18 = [v12 strokeIdentifiers];
      [v10 boundsForSliceIdentifiers:v18];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [v9 textInputElementForRecognitionIdentifier:v14];
      v17 = [(PKTextInputElement *)v27 coordinateSpace];

      if (v17)
      {
        v28 = [(PKTextInputElement *)v27 frame];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v17 = [(PKTextInputElement *)v27 coordinateSpace];
        v35 = [(PKTextInputHandwritingController *)self canvasController];
        [(PKTextInputCanvasController *)v35 canvasCoordinateSpace];
        v36 = v45 = v18;
        v37 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v17, v36, v28, v30, v32, v34);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v18 = v45;
        v46.origin.x = v37;
        v46.origin.y = v39;
        v46.size.width = v41;
        v46.size.height = v43;
        v48.origin.x = v20;
        v48.origin.y = v22;
        v48.size.width = v24;
        v48.size.height = v26;
        v47 = CGRectIntersection(v46, v48);
        LOBYTE(v17) = v24 * v26 - v47.size.width * v47.size.height >= v24 * v26 * 0.8;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  return v17;
}

- (void)_updateFloatingBackground
{
  v47 = [(PKTextInputHandwritingController *)self canvasController];
  v3 = [(PKTextInputHandwritingController *)self _wantsFloatingBackground];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  if (v3)
  {
    if (v47)
    {
      v9 = v47[14];
      v8 = v47[15];
      v10 = v47[16];
      v11 = v47[17];
    }

    else
    {
      v8 = 0.0;
      v10 = 0.0;
      v11 = 0.0;
      v9 = 0.0;
    }

    v12 = [(PKTextInputCanvasController *)v47 inProgressStroke];
    v13 = v12;
    if (v12 && [v12 _pointsCount])
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

    v18 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];

    if (v18)
    {
      v19 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
      [v19 bounds];
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

  [(PKTextInputCanvasController *)v47 setFloatingBackgroundRect:y, width, height];
}

- (void)_updateStrokeAlphaOverride
{
  v3 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
  if (v3 && (v4 = v3[16], v3, v4))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
    if (v7)
    {
      v8 = v7[11];
    }

    else
    {
      v8 = 0.0;
    }

    v9 = v6 - v8;

    if (v9 >= 0.5)
    {
      v11 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 24);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;
      v15 = [v14 correctionResult];

      if (v15)
      {
        if ([v15 resultType] == 3)
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
    v16 = [(PKTextInputHandwritingController *)self _activeInputTargetState];
    if (!v16 || (v17 = v16[18], v16, v10 = 0.75, !v17))
    {
      v10 = 1.0;
    }
  }

  if (v10 != self->_strokeAlphaOverride)
  {
    self->_strokeAlphaOverride = v10;
    v18 = [(PKTextInputHandwritingController *)self delegate];
    [v18 handwritingControllerStrokeAlphaOverrideDidChange:self];
  }
}

- (void)_cancelInProgressStrokeFromHandwritingShots
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "HWController %@: in progress stroke cancelled. Removing in progress stroke from possible shot %@", &v16, 0x16u);
  }

  v7 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  v8 = [v7 inputDrawing];

  v9 = [v8 strokes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    [v11 setInputDrawing:v8 inputInProgressStroke:0];
  }

  else
  {
    [(PKTextInputHandwritingController *)self _setPossibleHandwritingShot:0];
    [(PKTextInputHandwritingController *)self _setActiveInputTargetState:0];
    v12 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    v11 = [v12 inputDrawing];

    v13 = [v11 strokes];
    v14 = [v13 count];

    if (!v14)
    {
      v15 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
      [v15 setCancelled:1];
    }
  }
}

- (void)canvasControllerDidBeginDrawing:(id)a3
{
  [(PKTextInputHandwritingController *)self _cancelPendingResultCommand];
  [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];

  [(PKTextInputHandwritingController *)self _updateWritingSession];
}

- (void)canvasControllerInProgressStrokeDidChange:(id)a3
{
  v25 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  [(PKTextInputHandwritingController *)self _lastInProgressStrokeUpdateTime];
  v7 = v5 - v6;
  [(PKTextInputHandwritingController *)self _continuousRecognitionInterval];
  if (v7 >= v8)
  {
    v9 = +[PKTextInputSettings sharedSettings];
    v10 = [v9 continuousRecognition];

    if (v10)
    {
      v11 = [(PKTextInputCanvasController *)v25 inProgressStroke];
      v12 = [(PKTextInputHandwritingController *)self _lastInProgressStrokeUUID];
      v13 = [v11 _strokeUUID];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) != 0 || ([v11 _bounds], x = v27.origin.x, y = v27.origin.y, width = v27.size.width, height = v27.size.height, CGRectGetWidth(v27) >= 10.0) || (v28.origin.x = x, v28.origin.y = y, v28.size.width = width, v28.size.height = height, CGRectGetHeight(v28) >= 10.0))
      {
        [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];
        v19 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
        v20 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
        [v19 setInputDrawing:v20 inputInProgressStroke:v11];

        [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUpdateTime:v5];
        v21 = [v11 _strokeUUID];
        [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUUID:v21];
      }
    }
  }

  v22 = +[PKTextInputSettings sharedSettings];
  v23 = [v22 floatingBackgroundEnabled];

  if (v23)
  {
    [(PKTextInputHandwritingController *)self _floatingBackgroundLastUpdateTime];
    if (v5 - v24 >= 0.1)
    {
      [(PKTextInputHandwritingController *)self _updateFloatingBackground];
    }
  }
}

- (void)canvasController:(id)a3 drawingDidChange:(id)a4
{
  v8 = a4;
  v5 = [v8 strokes];
  v6 = [v5 count];

  if (v6)
  {
    [(PKTextInputHandwritingController *)self _createPossibleHandwritingShotIfNeeded];
  }

  [(PKTextInputHandwritingController *)self set_lastInProgressStrokeUUID:0];
  v7 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  [v7 setInputDrawing:v8 inputInProgressStroke:0];

  [(PKTextInputHandwritingController *)self _setLastKnownDrawing:v8];
}

- (void)reportDebugStateDescription:(id)a3
{
  v51 = a3;
  v4 = [(PKTextInputHandwritingController *)self writingState];
  v5 = @"Active";
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Idle";
  }

  v51[2](v51, @"Writing state", v6);
  v7 = [(PKTextInputHandwritingController *)self _writingSession];
  v8 = v7;
  if (v7 && (v9 = *(v7 + 32)) != 0)
  {
    v10 = v9;
    v11 = [(PKTextInputHandwritingController *)self _writingSession];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 description];
    v51[2](v51, @"Writing session ID", v15);
  }

  else
  {
    v51[2](v51, @"Writing session ID", &stru_1F476BD20);
    v10 = 0;
  }

  v16 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(PKTextInputHandwritingController *)self _lastKnownDrawing];
    v19 = [v18 strokes];
    v20 = [v17 stringWithFormat:@"%ld visible strokes", objc_msgSend(v19, "count")];
    v51[2](v51, @"Last known drawing", v20);
  }

  else
  {
    v51[2](v51, @"Last known drawing", @"None");
  }

  v21 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
  if (v21)
  {
    v22 = [(PKTextInputHandwritingController *)self _activeHandwritingShot];
    v23 = PKTextInputDescriptionForHandwritingShotState([v22 shotState]);
    v51[2](v51, @"Active shot", v23);
  }

  else
  {
    v51[2](v51, @"Active shot", @"None");
  }

  v24 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
  if (v24)
  {
    v25 = [(PKTextInputHandwritingController *)self _possibleHandwritingShot];
    v26 = PKTextInputDescriptionForHandwritingShotState([v25 shotState]);
    v51[2](v51, @"Possible shot", v26);
  }

  else
  {
    v51[2](v51, @"Possible shot", @"None");
  }

  v27 = [(PKTextInputHandwritingController *)self _activeResultCommand];
  if (v27)
  {
    v28 = [(PKTextInputHandwritingController *)self _activeResultCommand];
    v29 = v28;
    if (v28)
    {
      v28 = *(v28 + 24);
    }

    v30 = PKTextInputDescriptionForResultCommandState(v28);
    v51[2](v51, @"Active result command", v30);
  }

  else
  {
    v51[2](v51, @"Active result command", @"None");
  }

  v31 = [(PKTextInputHandwritingController *)self _pendingResultCommand];
  if (v31)
  {
    v32 = [(PKTextInputHandwritingController *)self _pendingResultCommand];
    v33 = v32;
    if (v32)
    {
      v32 = *(v32 + 24);
    }

    v34 = PKTextInputDescriptionForResultCommandState(v32);
    v51[2](v51, @"Pending result command", v34);
  }

  else
  {
    v51[2](v51, @"Pending result command", @"None");
  }

  v35 = MEMORY[0x1E696AD98];
  v36 = [(PKTextInputHandwritingController *)self _resultCommandsQueue];
  v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v36, "count")}];
  v38 = [v37 description];
  v51[2](v51, @"Commands in queue", v38);

  v39 = [(PKTextInputHandwritingController *)self _writingSession];
  v40 = v39;
  if (v39)
  {
    v41 = *(v39 + 40);
    if (v41)
    {
      v42 = v41;
      v43 = MEMORY[0x1E696AEC0];
      v44 = [(PKTextInputHandwritingController *)self _writingSession];
      v45 = v44;
      if (v44)
      {
        v46 = *(v44 + 40);
        v47 = v46;
        if (v46)
        {
          v48 = *(v46 + 14);
LABEL_36:
          v49 = v48;
          v50 = [v43 stringWithFormat:@"%@", v49];
          v51[2](v51, @"Current target element", v50);

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

  v51[2](v51, @"Current target element", @"None");
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
  v3 = [(PKTextInputHandwritingController *)self _activeResultCommand];

  if (v3)
  {
    v4 = [(PKTextInputHandwritingController *)self _activeResultCommand];
    v5 = v4;
    if (v4 && *(v4 + 24) == 1)
    {
      [(PKTextInputResultCommand *)v4 _setCommandState:?];
    }
  }

  [(PKTextInputHandwritingController *)self _evaluateAndProcessResultCommandsQueueImmediateCommit:1];
}

- (void)cleanUpFromCancelledReplay
{
  v3 = [(PKTextInputHandwritingController *)self _writingSession];
  [(PKTextInputWritingSession *)v3 setCurrentTargetElement:?];

  [(PKTextInputHandwritingController *)self _setActiveInputTargetState:0];
}

@end