@interface PKTextInputResultCommand
+ (id)_tokenColumnStringsForTopTranscriptionInTextResult:(uint64_t)result;
+ (id)_transcriptionForTokensAtColumn:(uint64_t)column row:(void *)row textResult:;
- (id)_strokeSliceIDsToRemoveForCommittedTokenColumnCount:(char)count forceRemoveAll:;
- (id)description;
- (uint64_t)initWithQueryItem:(void *)item handwritingShot:(uint64_t)shot immediateCommitType:(double)type applyAfterDelay:;
- (void)_applyResultCommandPhase2;
- (void)_applyTextReplacementWithCompletion:(uint64_t)completion;
- (void)_finishApplyingResultWithSuccess:(int)success cancelled:;
- (void)_removeStrokesForSliceIDs:(CGFloat)ds destinationRect:(CGFloat)rect;
- (void)_setCommandState:(uint64_t)state;
- (void)_updateInputTargetStateWithUncommittedPendingText:(void *)text activePreviewText:(uint64_t)previewText committedTextLength:(uint64_t)length accumulatedCommitLength:;
- (void)beginApplyingResultCommandWithInputTargetState:(uint64_t)state;
- (void)cancelDelayedCommand;
@end

@implementation PKTextInputResultCommand

- (uint64_t)initWithQueryItem:(void *)item handwritingShot:(uint64_t)shot immediateCommitType:(double)type applyAfterDelay:
{
  v10 = a2;
  itemCopy = item;
  if (self)
  {
    v23.receiver = self;
    v23.super_class = PKTextInputResultCommand;
    v12 = objc_msgSendSuper2(&v23, sel_init);
    self = v12;
    if (v12)
    {
      *(v12 + 3) = 0;
      objc_storeStrong(v12 + 4, a2);
      objc_storeStrong((self + 40), item);
      *(self + 64) = shot;
      correctionResult = [v10 correctionResult];
      inputTarget = [correctionResult inputTarget];
      inputTargetIdentifier = [inputTarget inputTargetIdentifier];

      if (inputTargetIdentifier)
      {
        v16 = [itemCopy textInputElementContentForRecognitionIdentifier:inputTargetIdentifier];
        v17 = *(self + 48);
        *(self + 48) = v16;
      }

      correctionResult2 = [v10 correctionResult];
      if (correctionResult2)
      {
        correctionResult3 = [v10 correctionResult];
        *(self + 112) = [correctionResult3 affectedRange];
        *(self + 120) = v20;
      }

      else
      {
        *(self + 112) = xmmword_1C801E6F0;
      }

      *(self + 11) = 1;
      if (type <= 0.0)
      {
        [(PKTextInputResultCommand *)self _setCommandState:?];
      }

      else
      {
        [(PKTextInputResultCommand *)self _setCommandState:?];
        objc_initWeak(&location, self);
        v21 = dispatch_time(0, (type * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__PKTextInputResultCommand__scheduleBecomeReadyAfterDelay___block_invoke;
        block[3] = &unk_1E82D69B8;
        objc_copyWeak(&v25, &location);
        dispatch_after(v21, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }
    }
  }

  return self;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = PKTextInputResultCommand;
  v3 = [(PKTextInputResultCommand *)&v13 description];
  if (self)
  {
    v4 = PKTextInputDescriptionForResultCommandState(self->_commandState);
    immediateCommitType = self->_immediateCommitType;
    if (immediateCommitType > 3)
    {
      v6 = &stru_1F476BD20;
    }

    else
    {
      v6 = off_1E82DB9A0[immediateCommitType];
    }

    v7 = self->_queryItem;
    v8 = self->_handwritingShot;
    targetElementContent = self->_targetElementContent;
  }

  else
  {
    v4 = @"SettingUp";
    v12 = @"SettingUp";
    v8 = 0;
    v7 = 0;
    targetElementContent = 0;
    v6 = @"None";
  }

  targetElementContent = [v3 stringByAppendingFormat:@" state: %@, immediateCommitType: %@, queryItem: %@, handwritingShot: %@, targetElementContent: %@", v4, v6, v7, v8, targetElementContent];

  return targetElementContent;
}

- (void)beginApplyingResultCommandWithInputTargetState:(uint64_t)state
{
  v81 = *MEMORY[0x1E69E9840];
  if (!state)
  {
    return;
  }

  objc_setProperty_nonatomic_copy(state, newValue, newValue, 56);
  correctionResult = [*(state + 32) correctionResult];
  v4 = *(state + 48);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  coordinateSpace = [(PKTextInputElement *)v7 coordinateSpace];
  WeakRetained = objc_loadWeakRetained((state + 16));
  v10 = [WeakRetained resultCommandSupportedElementDelegate:state];

  v11 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    resultType = [correctionResult resultType];
    v13 = NSStringFromRange(*(state + 112));
    v14 = *(state + 40);
    *buf = 134219010;
    stateCopy4 = state;
    v73 = 2048;
    v74 = resultType;
    v75 = 2112;
    v76 = v13;
    v77 = 2112;
    v78 = v7;
    v79 = 2048;
    v80 = v14;
    _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "ResultCommand %p: beginApplying, correctionType: %ld, affectedRange: %@, element: %@, shot: %p", buf, 0x34u);
  }

  if (v7 && coordinateSpace)
  {
    if (!correctionResult)
    {
      v17 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v59 = *(state + 32);
        v60 = *(state + 40);
        *buf = 134218498;
        stateCopy4 = state;
        v73 = 2048;
        v74 = v59;
        v75 = 2112;
        v76 = v60;
        v61 = v59;
        _os_log_error_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_ERROR, "ResultCommand %p: failed because correctionResult is nil. QueryItem: %p. Shot: <%@>", buf, 0x20u);
      }

      goto LABEL_16;
    }

    if ([correctionResult resultType] != 1 || (objc_msgSend(correctionResult, "textResult"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = 1;
      goto LABEL_17;
    }

    v17 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      error = [correctionResult error];
      v54 = *(state + 40);
      *buf = 134218498;
      stateCopy4 = state;
      v73 = 2112;
      v74 = error;
      v75 = 2112;
      v76 = v54;
      v55 = "ResultCommand %p: failed because text result is nil. Error: %@. Shot: <%@>";
      v56 = v17;
      v57 = 32;
LABEL_49:
      _os_log_error_impl(&dword_1C7CCA000, v56, OS_LOG_TYPE_ERROR, v55, buf, v57);
    }
  }

  else
  {
    v17 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      error = [correctionResult error];
      v58 = *(state + 40);
      *buf = 134219010;
      stateCopy4 = state;
      v73 = 2048;
      v74 = v7;
      v75 = 2048;
      v76 = coordinateSpace;
      v77 = 2112;
      v78 = error;
      v79 = 2112;
      v80 = v58;
      v55 = "ResultCommand %p: failed because of nil target element: %p or coordinate space: %p. Error: %@. Shot: <%@>";
      v56 = v17;
      v57 = 52;
      goto LABEL_49;
    }
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  v18 = *(state + 56);
  v19 = v18;
  if (!v18)
  {
    v20 = 0;
    goto LABEL_32;
  }

  v20 = v18[2];
  if (v20)
  {
    v21 = v19[6];
    v22 = [v21 length];

    if (v22)
    {
      v62 = correctionResult;
      v23 = coordinateSpace;
      v24 = v10;
      if (!v16)
      {
        goto LABEL_27;
      }

      v25 = *(state + 48);
      if (v25)
      {
        v26 = *(v25 + 8);
        v27 = v26;
        if (v26)
        {
          v28 = *(v26 + 14);
LABEL_24:
          v29 = v28;

          if (v29)
          {
            v30 = v19[2];
            v31 = [v30 isEqualToNumber:v29];

            if (v31)
            {
              correctionResult2 = [*(state + 32) correctionResult];
              resultType2 = [correctionResult2 resultType];

              if (resultType2 == 1)
              {
LABEL_31:
                v10 = v24;
                coordinateSpace = v23;
                correctionResult = v62;
                goto LABEL_32;
              }
            }
          }

LABEL_27:
          v34 = v19[4];
          v35 = [v34 textInputElementForRecognitionIdentifier:v20];
          v36 = v35;
          if (v35 && [v35 activePreviewRange] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v36 notifyTextInputTextWillChange];
            [v36 clearActivePreview];
            [v36 notifyTextInputTextDidChange];
          }

          goto LABEL_31;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = 0;
      goto LABEL_24;
    }
  }

LABEL_32:

  v37 = objc_alloc_init(PKTextInputTargetState);
  objc_storeStrong((state + 104), v37);

  v38 = *(state + 56);
  if (v38)
  {
    v39 = v38[8];
  }

  else
  {
    v39 = 0;
  }

  v40 = *(state + 104);
  if (v40)
  {
    *(v40 + 8) = v39 & 1;
  }

  if (v16)
  {
    if (([(PKTextInputElement *)v7 isFocused]& 1) != 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke_2;
      block[3] = &unk_1E82DACE8;
      v64 = v10;
      stateCopy5 = state;
      v66 = v7;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else if ([(PKTextInputElement *)v7 shouldPostponeFocusing]&& (*(state + 10) = 1, !*(state + 64)))
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke_51;
      v67[3] = &unk_1E82D7148;
      v67[4] = state;
      dispatch_async(MEMORY[0x1E69E96A0], v67);
    }

    else
    {
      [(PKTextInputResultCommand *)state _setCommandState:?];
      strokeIdentifiers = [*(state + 32) strokeIdentifiers];
      strokeProvider = [*(state + 40) strokeProvider];
      v43 = objc_loadWeakRetained((state + 16));
      v44 = [v43 resultCommandCanvasController:state];

      [strokeProvider startingPointForSlicesWithIdentifiers:strokeIdentifiers];
      v46 = v45;
      v48 = v47;
      canvasCoordinateSpace = [(PKTextInputCanvasController *)v44 canvasCoordinateSpace];
      v50 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(canvasCoordinateSpace, coordinateSpace, v46, v48, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
      v52 = v51;

      [(PKTextInputElement *)v7 updateWithFocusedTextInput:?];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke;
      v68[3] = &unk_1E82DB750;
      v68[4] = state;
      v69 = v7;
      v70 = v10;
      [(PKTextInputElement *)v69 focusElementIfNeededWithReferencePoint:v68 alwaysSetSelectionFromReferencePoint:v50 completion:v52];
    }
  }

  else
  {
    [(PKTextInputResultCommand *)state _finishApplyingResultWithSuccess:0 cancelled:?];
  }
}

- (void)_setCommandState:(uint64_t)state
{
  if (state)
  {
    *(state + 24) = a2;
    WeakRetained = objc_loadWeakRetained((state + 16));
    [WeakRetained resultCommandStateDidChange:state];
  }
}

void __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke(uint64_t *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = a1[4];
    if (v4)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = 0;
    }

    [(PKTextInputElementContent *)v5 loadDataIfNeededWithTextInput:v3];
  }

  [(PKTextInputElement *)a1[5] updateWithFocusedTextInput:v3];
  v6 = a1[6];
  if (!v6)
  {
    v13 = 0;
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v7 = a1[4];
  if (v7)
  {
    v8 = *(v7 + 48);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 2);
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_9:
  v11 = v10;
  v12 = [v6 isSupportedForTextInputTraits:v11];

  v13 = v12 ^ 1;
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ((v13 & 1) == 0)
  {
    [(PKTextInputResultCommand *)a1[4] _applyResultCommandPhase2];
    goto LABEL_16;
  }

LABEL_14:
  v14 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = @"Yes";
    if (v3)
    {
      v16 = @"Yes";
    }

    else
    {
      v16 = @"No";
    }

    v17 = a1[4];
    v18 = a1[5];
    v19 = 134218754;
    if (v13)
    {
      v15 = @"No";
    }

    v20 = v17;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v18;
    _os_log_error_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_ERROR, "ResultCommand %p: Failed to focus element, returned focusedTextInput: %@, is supported: %@. Element: %@", &v19, 0x2Au);
  }

  [(PKTextInputResultCommand *)a1[4] _finishApplyingResultWithSuccess:0 cancelled:?];
LABEL_16:
}

- (void)_applyResultCommandPhase2
{
  v112 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(PKTextInputResultCommand *)self _setCommandState:?];
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v93 = __53__PKTextInputResultCommand__applyResultCommandPhase2__block_invoke;
    v94 = &unk_1E82D8F30;
    selfCopy = self;
    v2 = v92;
    v3 = *(self + 32);
    v4 = *(self + 56);
    correctionResult = [v3 correctionResult];
    v6 = *(self + 48);
    v7 = v6;
    if (v6)
    {
      v8 = v6[1];
    }

    else
    {
      v8 = 0;
    }

    v90 = v3;
    v9 = v4;
    v89 = v8;
    v91 = *(self + 40);
    if (v7)
    {
      v10 = v7[3];
      if (v10 && v10 != 3)
      {
        v38 = *(self + 112);
        v39 = *(self + 120);
        if (v38 == 0x7FFFFFFFFFFFFFFFLL || ![(PKTextInputElementContent *)v7 isValidRange:*(self + 120)])
        {
          v40 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v113.location = v38;
            v113.length = v39;
            v66 = NSStringFromRange(v113);
            *buf = 134218242;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v66;
            _os_log_error_impl(&dword_1C7CCA000, v40, OS_LOG_TYPE_ERROR, "ResultCommand %p: Could not process result replacing range %@ because it is out of bounds.", buf, 0x16u);
          }

          v13 = 0;
          goto LABEL_34;
        }
      }
    }

    resultType = [correctionResult resultType];
    v13 = 1;
    if (resultType > 6)
    {
      if (resultType == 7)
      {
        v43 = v91;
        inputInProgressStroke = [v91 inputInProgressStroke];

        if (!inputInProgressStroke)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke_3;
          v102 = &unk_1E82DB7A0;
          selfCopy4 = self;
          selfCopy3 = v2;
          [(PKTextInputResultCommand *)self _applyTextReplacementWithCompletion:buf];

          v41 = v89;
          v42 = v90;
          goto LABEL_83;
        }

        v13 = 1;
        goto LABEL_34;
      }

      if (resultType == 8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((resultType - 2) < 5)
      {
LABEL_12:
        resultType2 = [correctionResult resultType];
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke_4;
        v96[3] = &unk_1E82D77F0;
        v96[4] = self;
        v85 = v2;
        v97 = v2;
        v15 = v96;
        v16 = *(self + 48);
        inputInProgressStroke2 = [*(self + 40) inputInProgressStroke];
        _strokeUUID = [inputInProgressStroke2 _strokeUUID];

        WeakRetained = objc_loadWeakRetained((self + 16));
        v19 = [WeakRetained resultCommandFeedbackController:self];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke;
        aBlock[3] = &unk_1E82DB818;
        v87 = v19;
        v99 = v87;
        v86 = v15;
        v100 = v86;
        v20 = _Block_copy(aBlock);
        if (!v16)
        {
          goto LABEL_80;
        }

        v21 = *(v16 + 3);
        if (!v21 || v21 == 3)
        {
          goto LABEL_80;
        }

        v82 = *(self + 120);
        log = *(self + 112);
        v22 = objc_loadWeakRetained((self + 16));
        v23 = [v22 resultCommandCursorController:self];
        [v23 makeCursorTemporarilyStrongWhileWriting];

        if (!_strokeUUID)
        {
          *(self + 8) = 1;
          v42 = v90;
          if (resultType2 == 6)
          {
            objc_setProperty_nonatomic_copy(self, v24, @"DeleteGesture", 96);
            v45 = *(v16 + 1);
            [v45 notifyTextInputTextWillChange];

            [v87 setReferenceElementContent:v16 referenceRange:log feedbackType:{v82, 1}];
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke_3;
            v102 = &unk_1E82DB868;
            v46 = v16;
            selfCopy4 = v46;
            selfCopy3 = self;
            v105 = v20;
            [(PKTextInputElementContent *)v46 deleteTextInRange:v82 completion:buf];

            v2 = v85;
          }

          else
          {
            objc_setProperty_nonatomic_copy(self, v24, @"SelectGesture", 96);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke_4;
            v102 = &unk_1E82DB890;
            selfCopy4 = self;
            v105 = v20;
            selfCopy6 = log;
            v107 = v82;
            selfCopy3 = v16;
            [(PKTextInputElementContent *)selfCopy3 selectTextInRange:v82 completion:buf];
            v47 = *(self + 48);
            v48 = v47;
            if (v47)
            {
              v49 = *(v47 + 1);
            }

            else
            {
              v49 = 0;
            }

            v50 = v49;

            v2 = v85;
            if (log != 0x7FFFFFFFFFFFFFFFLL && v82 && ([v50 showSelectionCommands] & 1) == 0)
            {
              referenceView = [(PKTextInputElement *)v50 referenceView];
              if (referenceView)
              {
                v81 = referenceView;
                [referenceView bounds];
                v56 = *(self + 48);
                if (v56)
                {
                  v57 = v81;
                  [(PKTextInputElementContent *)v56 firstRectForRange:v82 inCoordinateSpace:v81];
                  v59 = v58;
                  v61 = v60;
                  v63 = v62;
                  v65 = v64;
                }

                else
                {
                  v59 = v52;
                  v61 = v53;
                  v63 = v54;
                  v65 = v55;
                  loga = os_log_create("com.apple.pencilkit", "PencilTextInput");
                  if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
                  {
                    *v108 = 134218242;
                    selfCopy5 = self;
                    v110 = 2112;
                    v111 = v50;
                    _os_log_error_impl(&dword_1C7CCA000, loga, OS_LOG_TYPE_ERROR, "ResultCommand %p: Failed to load element content, the callout menu might show up in the wrong place. Element: %@", v108, 0x16u);
                  }

                  v57 = v81;
                }

                mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
                [mEMORY[0x1E69DCC68] showMenuFromView:v57 rect:{v59, v61, v63, v65}];

                referenceView = v57;
              }
            }
          }

          goto LABEL_82;
        }

        v25 = *(self + 56);
        if (!v25)
        {
          goto LABEL_60;
        }

        v26 = *(v25 + 80);
        if (!v26)
        {
          goto LABEL_60;
        }

        v27 = v26;
        v28 = *(self + 56);
        if (v28)
        {
          v28 = v28[10];
        }

        v29 = v28;
        v30 = [_strokeUUID isEqual:v29];

        if (v30)
        {
          v31 = *(self + 56);
          if (v31)
          {
            v32 = *(v31 + 104);
          }

          else
          {
            v32 = 0uLL;
          }

          v33 = v82;
          v34 = log;
          v35 = *(self + 104);
          if (v35)
          {
            *(v35 + 104) = v32;
            v31 = *(self + 56);
          }

          if (v31)
          {
            v36 = *(v31 + 88);
          }

          else
          {
            v36 = 0;
          }

          v37 = *(self + 104);
          if (v37)
          {
            *(v37 + 88) = v36;
          }
        }

        else
        {
LABEL_60:
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v69 = *(self + 104);
          if (v69)
          {
            *(v69 + 88) = v68;
          }

          v70 = *(self + 48);
          selectedRange = [(PKTextInputElementContent *)v70 selectedRange];
          v73 = *(self + 104);
          if (v73)
          {
            *(v73 + 104) = selectedRange;
            *(v73 + 112) = v72;
          }

          v33 = v82;
          v34 = log;
        }

        [(PKTextInputTargetState *)*(self + 104) setInProgressGestureStrokeUUID:_strokeUUID];
        v74 = *(self + 104);
        if (v74)
        {
          v75 = resultType2 == 6 ? 0 : v33;
          v76 = 0x7FFFFFFFFFFFFFFFLL;
          v77 = resultType2 == 6 ? 0x7FFFFFFFFFFFFFFFLL : v34;
          *(v74 + 120) = v77;
          *(v74 + 128) = v75;
          v78 = *(self + 104);
          if (v78)
          {
            if (resultType2 == 6)
            {
              v79 = v33;
            }

            else
            {
              v79 = 0;
            }

            if (resultType2 == 6)
            {
              v76 = v34;
            }

            *(v78 + 136) = v76;
            *(v78 + 144) = v79;
          }
        }

        if (resultType2 != 2)
        {
          if (resultType2 == 6)
          {
            v80 = 1;
          }

          else
          {
            v80 = 2;
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke_2;
          v102 = &unk_1E82DB840;
          selfCopy3 = v20;
          v105 = v80;
          selfCopy6 = v34;
          v107 = v33;
          selfCopy4 = v16;
          [(PKTextInputElementContent *)selfCopy4 selectTextInRange:v34 completion:v33, buf];
        }

        else
        {
LABEL_80:
          (*(v20 + 2))(v20, 1, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0);
        }

        v2 = v85;
        v42 = v90;
LABEL_82:
        v41 = v89;
        v43 = v91;

        goto LABEL_83;
      }

      if (resultType == 1)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke;
        v102 = &unk_1E82DB778;
        v41 = v89;
        selfCopy4 = v89;
        selfCopy3 = v9;
        v43 = v91;
        v105 = v91;
        selfCopy6 = self;
        v107 = v2;
        [(PKTextInputResultCommand *)self _applyTextReplacementWithCompletion:buf];

        v42 = v90;
        goto LABEL_83;
      }
    }

LABEL_34:
    [(PKTextInputResultCommand *)self _updateInputTargetStateWithUncommittedPendingText:0 activePreviewText:0 committedTextLength:0 accumulatedCommitLength:?];
    v93(v2, v13);
    v41 = v89;
    v42 = v90;
    v43 = v91;
LABEL_83:
  }
}

- (void)_finishApplyingResultWithSuccess:(int)success cancelled:
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v4 = a2;
  if ((a2 & 1) == 0)
  {
    [(PKTextInputTargetState *)*(self + 104) clear];
  }

  v6 = *(self + 104);
  v7 = *(self + 32);
  [(PKMathResultAttribution *)v6 setString:v7];

  v8 = *(self + 104);
  v9 = *(self + 40);
  [(PKMathResultAttribution *)v8 setDate:v9];

  v10 = *(self + 48);
  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v12 = v10[1];
  v13 = v12;
  if (!v12)
  {
LABEL_23:
    v14 = 0;
    goto LABEL_7;
  }

  v14 = *(v12 + 14);
LABEL_7:
  v16 = v14;
  v17 = *(self + 104);
  if (v17)
  {
    objc_setProperty_nonatomic_copy(v17, v15, v16, 16);
  }

  v18 = *(self + 40);
  writingSessionIdentifier = [v18 writingSessionIdentifier];
  v21 = *(self + 104);
  if (v21)
  {
    objc_setProperty_nonatomic_copy(v21, v19, writingSessionIdentifier, 40);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v24 = *(self + 104);
  if (v24)
  {
    *(v24 + 96) = v23;
    v25 = *(self + 104);
  }

  else
  {
    v25 = 0;
  }

  objc_setProperty_nonatomic_copy(self, v22, v25, 72);
  if (v4)
  {
    v26 = 5;
  }

  else
  {
    v27 = [(PKTextInputResultCommand *)self _strokeSliceIDsToRemoveForCommittedTokenColumnCount:1 forceRemoveAll:?];
    [(PKTextInputResultCommand *)self _removeStrokesForSliceIDs:v27 destinationRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];

    if (success)
    {
      v26 = 7;
    }

    else
    {
      v26 = 6;
    }
  }

  v28 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PKTextInputDescriptionForResultCommandState(*(self + 24));
    v30 = PKTextInputDescriptionForResultCommandState(v26);
    v31 = 134218498;
    selfCopy = self;
    v33 = 2112;
    v34 = v29;
    v35 = 2112;
    v36 = v30;
    _os_log_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEFAULT, "ResultCommand %p: finishApplying. state change: %@ -> %@", &v31, 0x20u);
  }

  [(PKTextInputResultCommand *)self _setCommandState:v26];
}

void __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 11) = 0;
    [(PKTextInputResultCommand *)*(a1 + 32) _applyResultCommandPhase2];
  }

  else
  {
    [(PKTextInputResultCommand *)0 _applyResultCommandPhase2];
  }
}

void __75__PKTextInputResultCommand_beginApplyingResultCommandWithInputTargetState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_6:
    v9 = *(a1 + 40);
    if (v9)
    {
      *(v9 + 11) = 1;
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = 0;
    }

    [(PKTextInputResultCommand *)v10 _applyResultCommandPhase2];
    return;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 48);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 2);
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_5:
  v7 = v6;
  v8 = [v2 isSupportedForTextInputTraits:v7];

  if (v8)
  {
    goto LABEL_6;
  }

  v11 = *(a1 + 40);

  [(PKTextInputResultCommand *)v11 _finishApplyingResultWithSuccess:1 cancelled:?];
}

- (void)cancelDelayedCommand
{
  v5 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = 134217984;
      selfCopy = self;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "ResultCommand %p: Cancel delayed result command", &v3, 0xCu);
    }

    [(PKTextInputResultCommand *)self _setCommandState:?];
  }
}

void __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = *(a1 + 32);
  if (!v13)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v14 = *(v13 + 112);
  if (!v14)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    v15 = v15[2];
  }

  v16 = v15;
  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = v17[14];
  }

  v18 = v17;
  v19 = [v16 isEqualToNumber:v18];

LABEL_10:
  v20 = [*(a1 + 48) writingSessionIdentifier];
  v21 = a4;
  if (v20)
  {
    v22 = v20;
    v43 = a3;
    v23 = a2;
    v24 = v12;
    v25 = *(a1 + 40);
    v26 = v11;
    if (v25)
    {
      v25 = v25[5];
    }

    v27 = v25;
    v28 = [*(a1 + 48) writingSessionIdentifier];
    v29 = [v27 isEqualToNumber:v28];

    v30 = v19 & v29;
    v21 = a4;
    v11 = v26;
    v12 = v24;
    a2 = v23;
    a3 = v43;
    if (v30 == 1)
    {
      v31 = *(a1 + 40);
      if (v31)
      {
        v31 = *(v31 + 64);
      }

      v21 = v31 + a4;
    }
  }

  [(PKTextInputResultCommand *)*(a1 + 56) _updateInputTargetStateWithUncommittedPendingText:v11 activePreviewText:v12 committedTextLength:a4 accumulatedCommitLength:v21];
  v32 = [(PKTextInputResultCommand *)*(a1 + 56) _strokeSliceIDsToRemoveForCommittedTokenColumnCount:a3 forceRemoveAll:0];
  if ([v32 count])
  {
    v42 = v12;
    v44 = v11;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke_2;
    v45[3] = &unk_1E82D7B10;
    v33 = *(a1 + 56);
    v46 = *(a1 + 64);
    v47 = a2;
    v34 = v32;
    v35 = v45;
    if (v33)
    {
      v36 = *(v33 + 48);
      WeakRetained = objc_loadWeakRetained((v33 + 16));
      v38 = [WeakRetained resultCommandCanvasController:v33];

      v39 = [(PKTextInputCanvasController *)v38 canvasCoordinateSpace];
      v40 = +[PKTextInputSettings sharedSettings];
      v41 = [v40 useTransformStrokesAnimation];

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      if (v41)
      {
        v49 = __96__PKTextInputResultCommand__removeCommittedTextInsertionStrokes_committedTextLength_completion___block_invoke;
        v50 = &unk_1E82DB8E0;
        v51 = v33;
        v52 = v34;
        v53 = v35;
        [(PKTextInputElementContent *)v36 requestUpdatedLastSelectionRectForCommittedTextLength:a4 targetCoordinateSpace:v39 completion:v48];
      }

      else
      {
        v49 = __96__PKTextInputResultCommand__removeCommittedTextInsertionStrokes_committedTextLength_completion___block_invoke_2;
        v50 = &unk_1E82DB8E0;
        v51 = v33;
        v52 = v34;
        v53 = v35;
        [(PKTextInputElementContent *)v36 requestUpdatedApproximateCaretRectInCoordinateSpace:v39 completion:v48];
      }
    }

    v12 = v42;
    v11 = v44;
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

- (void)_updateInputTargetStateWithUncommittedPendingText:(void *)text activePreviewText:(uint64_t)previewText committedTextLength:(uint64_t)length accumulatedCommitLength:
{
  if (!self)
  {
    return;
  }

  v9 = self[4];
  textCopy = text;
  v11 = a2;
  correctionResult = [v9 correctionResult];
  v12 = self[6];
  if (v12)
  {
    v12 = v12[1];
  }

  v13 = v12;
  if (v11)
  {
    v14 = self[7];
    if (v14)
    {
      v14 = v14[2];
    }

    v15 = v14;
    if (v13)
    {
      v16 = v13[14];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v15 isEqualToNumber:v17];

    if (v18)
    {
      v19 = self[7];
      if (v19)
      {
        affectedRange = *(v19 + 72);
      }

      else
      {
        affectedRange = 0;
      }

      goto LABEL_18;
    }
  }

  else if ([correctionResult isCharacterLevel])
  {
    resultType = [correctionResult resultType];
    if (resultType == 6)
    {
      affectedRange = [correctionResult affectedRange];
      goto LABEL_18;
    }

    if (resultType == 1)
    {
      affectedRange = 0x7FFFFFFFFFFFFFFFLL;
      if ([correctionResult affectedRange] != 0x7FFFFFFFFFFFFFFFLL)
      {
        affectedRange = [correctionResult affectedRange] + previewText;
      }

      goto LABEL_18;
    }
  }

  affectedRange = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  v23 = self[13];
  if (v23)
  {
    objc_setProperty_nonatomic_copy(v23, v22, v11, 48);
  }

  v25 = self[13];
  if (v25)
  {
    objc_setProperty_nonatomic_copy(v25, v24, textCopy, 56);
  }

  v26 = self[13];
  if (v26)
  {
    *(v26 + 64) = length;
    v27 = self[13];
    if (v27)
    {
      *(v27 + 72) = affectedRange;
    }
  }
}

- (id)_strokeSliceIDsToRemoveForCommittedTokenColumnCount:(char)count forceRemoveAll:
{
  if (self)
  {
    v6 = *(self + 32);
    v7 = *(self + 40);
    inputInProgressStroke = [v7 inputInProgressStroke];

    correctionResult = [v6 correctionResult];
    resultType = [correctionResult resultType];

    if (count)
    {
      v11 = 0;
      v12 = 1;
    }

    else
    {
      v17 = inputInProgressStroke == 0;
      v18 = (resultType < 9) & (0x1FDu >> resultType);
      v12 = v18 & v17;
      if ((v18 & v17) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2;
      }

      if ((v18 & (inputInProgressStroke == 0)) == 0 && v11 < 1)
      {
        v16 = MEMORY[0x1E695E0F0];
LABEL_21:

        goto LABEL_22;
      }
    }

    strokeProvider = [v7 strokeProvider];
    strokeIdentifiers = [v6 strokeIdentifiers];
    v15 = strokeIdentifiers;
    if (v12)
    {
      v16 = strokeIdentifiers;
      if (!inputInProgressStroke)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      correctionResult2 = [v6 correctionResult];
      textResult = [correctionResult2 textResult];
      v21 = [textResult strokeIndexesForColumnsInRange:{0, v11}];

      if (v21)
      {
        v16 = [v15 objectsAtIndexes:v21];
      }

      else
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      if (!inputInProgressStroke)
      {
        goto LABEL_20;
      }
    }

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __95__PKTextInputResultCommand__strokeSliceIDsToRemoveForCommittedTokenColumnCount_forceRemoveAll___block_invoke;
    v29 = &unk_1E82DB8B8;
    v30 = strokeProvider;
    v31 = v7;
    v22 = [v16 indexesOfObjectsPassingTest:&v26];
    v23 = [v22 count];
    if (v23 < [v16 count])
    {
      v24 = [v16 objectsAtIndexes:v22];

      v16 = v24;
    }

    goto LABEL_20;
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (void)_applyTextReplacementWithCompletion:(uint64_t)completion
{
  v244 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(completion + 48);
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = *(completion + 56);
  v191 = v5;
  v187 = v3;
  v188 = v7;
  if (v7 && (v9 = v7[14]) != 0 && ((v10 = v9, !v8) ? (v11 = 0) : (v11 = *(v8 + 2)), v12 = v11, v13 = v7[14], v14 = [v12 isEqualToNumber:v13], v13, v12, v10, (v14 & 1) != 0))
  {
    if (v8)
    {
      v204 = v8[8];
      v15 = *(completion + 32);
      v184 = 0;
      v189 = v8;
      v16 = *(v8 + 3);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v15 = *(completion + 32);
  v204 = 0;
  v189 = 0;
  v16 = 0;
  v184 = 1;
LABEL_12:
  v17 = v16;
  correctionResult = [v15 correctionResult];
  v185 = *(completion + 112);
  v194 = *(completion + 120);
  v18 = *(completion + 64);
  v19 = *(completion + 11);
  completionCopy = completion;
  v20 = *(completion + 40);
  languageSpec = [v20 languageSpec];
  uncommittedTokenColumnCount = [(PKTextInputLanguageSpec *)languageSpec uncommittedTokenColumnCount];
  v22 = v15;
  v192 = v17;
  v23 = objc_opt_self();
  v195 = v22;
  correctionResult2 = [v22 correctionResult];
  textResult = [correctionResult2 textResult];
  tokenColumnCount = [textResult tokenColumnCount];
  changeableTokenColumnCount = [textResult changeableTokenColumnCount];
  if (v19 != 1)
  {
    goto LABEL_31;
  }

  v28 = changeableTokenColumnCount;
  if (!v18 || tokenColumnCount < 1)
  {
    correctionResult3 = [v195 correctionResult];
    resultType = [correctionResult3 resultType];

    if (resultType == 7)
    {
      v32 = @"SplitJoinGesture";
      v29 = completionCopy;
      v35 = tokenColumnCount;
LABEL_33:
      v30 = v191;
      v31 = correctionResult;
      goto LABEL_36;
    }

    if (tokenColumnCount >= 2)
    {
      correctionResult4 = [v192 correctionResult];
      textResult2 = [correctionResult4 textResult];

      v35 = 0;
      if (textResult && textResult2)
      {
        v38 = [(PKTextInputResultCommand *)v23 _tokenColumnStringsForTopTranscriptionInTextResult:textResult];
        v209 = textResult2;
        v39 = textResult2;
        v40 = v38;
        v41 = [(PKTextInputResultCommand *)v23 _tokenColumnStringsForTopTranscriptionInTextResult:v39];
        v35 = 0;
        if ([v40 count])
        {
          v42 = 0;
          v211 = tokenColumnCount + ~v28;
          v213 = correctionResult2;
          while (v42 < [v41 count])
          {
            v43 = languageSpec;
            v44 = v20;
            v45 = [v40 objectAtIndexedSubscript:v42];
            v46 = v41;
            v47 = [v41 objectAtIndexedSubscript:v42];
            v48 = [v45 isEqualToString:v47];
            if (v42 <= v211)
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }

            v35 += v49;

            if ((v49 & 1) == 0)
            {
              v41 = v46;
              v20 = v44;
              languageSpec = v43;
              correctionResult2 = v213;
              break;
            }

            ++v42;
            v41 = v46;
            v20 = v44;
            languageSpec = v43;
            correctionResult2 = v213;
            if (v42 >= [v40 count])
            {
              break;
            }
          }
        }

        v183 = [v40 count];
        if (v35 >= v183 - uncommittedTokenColumnCount)
        {
          v35 = v183 - uncommittedTokenColumnCount;
        }

        textResult2 = v209;
      }

      v32 = @"StableWord";
      goto LABEL_32;
    }

LABEL_31:
    v35 = 0;
    v32 = &stru_1F476BD20;
LABEL_32:
    v29 = completionCopy;
    goto LABEL_33;
  }

  v29 = completionCopy;
  v30 = v191;
  v31 = correctionResult;
  if (v18 > 3)
  {
    v32 = &stru_1F476BD20;
  }

  else
  {
    v32 = off_1E82DB988[v18 - 1];
  }

  v35 = tokenColumnCount;
LABEL_36:

  v50 = v32;
  objc_setProperty_nonatomic_copy(v29, v51, v50, 96);
  v52 = v31;
  v53 = v30;
  v210 = objc_opt_self();
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v193 = v52;
  textResult3 = [v52 textResult];
  v57 = textResult3;
  v190 = v53;
  v186 = v50;
  if (textResult3)
  {
    transcriptionPaths = [textResult3 transcriptionPaths];
    firstObject = [transcriptionPaths firstObject];

    if (v30)
    {
      v30 = 0;
      v59 = v53[3];
      v208 = 0;
      if (v59 && v59 != 3)
      {
        v60 = v185;
        if (v185)
        {
          v61 = [(PKTextInputElementContent *)v53 stringInRange:1];
          v60 = v185;
          v62 = v61;
        }

        else
        {
          v62 = 0;
        }

        v64 = v194 + v60;
        v65 = v194 + v60 + 1;
        v202 = v62;
        if (v65 <= [(PKTextInputElementContent *)v53 contentLength])
        {
          v66 = [(PKTextInputElementContent *)v53 stringInRange:v64, 1];
        }

        else
        {
          v66 = 0;
        }

        65532 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 65532];
        v208 = v66;
        if ([v66 isEqualToString:65532] && v64 + 2 <= -[PKTextInputElementContent contentLength](v53))
        {
          v68 = [(PKTextInputElementContent *)v53 stringInRange:v65, 1];

          v208 = v68;
        }

        v30 = v202;
      }
    }

    else
    {
      v208 = 0;
    }

    v203 = v30;
    if ([v57 tokenColumnCount] >= 1)
    {
      v205 = array2;
      v206 = 0;
      v196 = 0;
      v69 = 0;
      v198 = v35 - 1;
      v199 = v57;
      v70 = v208;
      v200 = array;
      v201 = v35;
      while (1)
      {
        v71 = [firstObject indexAtPosition:v69];
        v72 = [v57 tokenRowsAtColumnIndex:v69];
        v214 = [v72 objectAtIndexedSubscript:v71];
        firstObject2 = [v214 firstObject];
        v212 = firstObject2;
        if (!firstObject2)
        {
          v75 = &stru_1F476BD20;
          goto LABEL_64;
        }

        v74 = [v57 precedingSeparatorForToken:firstObject2];
        v75 = v74;
        if (v69 != 0 || (v204 & 1) == 0)
        {
          if (v69)
          {
            goto LABEL_64;
          }
        }

        else
        {

          v75 = @" ";
        }

        if (![v203 length] || -[__CFString isEqualToString:](v75, "isEqualToString:", v203))
        {
          v76 = array;
          v77 = v35;
          newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
          [(__CFString *)v75 stringByTrimmingCharactersInSet:newlineCharacterSet];
          v80 = v79 = v75;
          v81 = [v80 length];

          if (v81)
          {

            v75 = &stru_1F476BD20;
            v70 = v208;
          }

          else
          {
            v70 = v208;
            v75 = v79;
          }

          v35 = v77;
          array = v76;
          array2 = v205;
        }

LABEL_64:
        v220 = v75;
        v217 = v72;
        if (v69 == [v57 tokenColumnCount] - 1)
        {
          trailingSeparator = [v57 trailingSeparator];
          goto LABEL_74;
        }

        if (v69 != v198)
        {
          trailingSeparator = &stru_1F476BD20;
          goto LABEL_74;
        }

        transcriptionPaths2 = [v57 transcriptionPaths];
        firstObject3 = [transcriptionPaths2 firstObject];
        v85 = [v57 tokensInTranscriptionPath:firstObject3 atColumnIndex:v35];

        firstObject4 = [v85 firstObject];
        if (firstObject4)
        {
          trailingSeparator = [v57 precedingSeparatorForToken:firstObject4];
          if (!trailingSeparator)
          {
            goto LABEL_73;
          }
        }

        else
        {
          trailingSeparator = &stru_1F476BD20;
        }

        v196 |= [(__CFString *)trailingSeparator length]!= 0;
LABEL_73:
        v70 = v208;

LABEL_74:
        if (![v70 length] || (-[__CFString isEqualToString:](trailingSeparator, "isEqualToString:", v70) & 1) != 0 || (objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"), v97 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend(v97, "characterIsMember:", objc_msgSend(v70, "characterAtIndex:", 0)), v97, (v98 & 1) != 0) || !trailingSeparator)
        {

          trailingSeparator = &stru_1F476BD20;
        }

        v87 = [(PKTextInputResultCommand *)v210 _transcriptionForTokensAtColumn:v69 row:v71 textResult:v57];
        v88 = v220;
        if (v69 >= v35)
        {
          string = v206;
          if (!v206)
          {
            string = [MEMORY[0x1E696AD60] string];
          }

          v206 = string;
          [string appendFormat:@"%@%@%@", v220, v87, trailingSeparator];
        }

        else
        {
          if ([(__CFString *)v220 length])
          {
            [array addObject:v220];
            [array2 addObject:MEMORY[0x1E695E0F0]];
          }

          v89 = v57;
          v90 = v87;
          v91 = objc_opt_self();
          v92 = [v89 tokenRowsAtColumnIndex:v69];
          array3 = [MEMORY[0x1E695DF70] array];
          if ([v92 count])
          {
            v94 = 0;
            do
            {
              v95 = [(PKTextInputResultCommand *)v91 _transcriptionForTokensAtColumn:v69 row:v94 textResult:v89];
              if (([v95 isEqualToString:v90] & 1) == 0)
              {
                [array3 addObject:v95];
              }

              ++v94;
            }

            while (v94 < [v92 count]);
          }

          array = v200;
          [v200 addObject:v90];
          array2 = v205;
          [v205 addObject:array3];
          if ([(__CFString *)trailingSeparator length])
          {
            [v200 addObject:trailingSeparator];
            [v205 addObject:MEMORY[0x1E695E0F0]];
          }

          v35 = v201;
          v57 = v199;
          v70 = v208;
          v88 = v220;
        }

        if (++v69 >= [v57 tokenColumnCount])
        {
          goto LABEL_97;
        }
      }
    }

    v196 = 0;
    v206 = 0;
    v70 = v208;
LABEL_97:

    v53 = v190;
    v63 = v206;
  }

  else
  {
    v196 = 0;
    v63 = 0;
  }

  v99 = array;
  v100 = array2;
  v101 = v63;

  v102 = array;
  v218 = array2;
  v103 = v63;
  v104 = +[PKTextInputSettings sharedSettings];
  activePreviewEnabled = [v104 activePreviewEnabled];

  if (!activePreviewEnabled)
  {
    v221 = 0;
    goto LABEL_112;
  }

  v106 = v103;
  v107 = *(completionCopy + 48);
  if (v107)
  {
    v107 = v107[1];
  }

  v108 = v107;
  v215 = *(completionCopy + 32);
  strokeProvider = [*(completionCopy + 40) strokeProvider];
  WeakRetained = objc_loadWeakRetained((completionCopy + 16));
  v111 = [WeakRetained resultCommandCanvasController:completionCopy];

  canvasCoordinateSpace = [(PKTextInputCanvasController *)v111 canvasCoordinateSpace];
  v113 = v106;
  v114 = v113;
  if (*(completionCopy + 11) != 1 || v194 || (v115 = *(completionCopy + 48)) == 0 || (v116 = *(v115 + 24), v116 == 3) || (strokeIdentifiers = v113, !v116))
  {

    strokeIdentifiers = 0;
  }

  if ([strokeIdentifiers length] < 3)
  {
    goto LABEL_108;
  }

  v221 = strokeIdentifiers;
  if (!strokeProvider)
  {
    goto LABEL_110;
  }

  if (!canvasCoordinateSpace)
  {
    goto LABEL_110;
  }

  coordinateSpace = [(PKTextInputElement *)v108 coordinateSpace];

  if (!coordinateSpace)
  {
    goto LABEL_110;
  }

  strokeIdentifiers = [v215 strokeIdentifiers];
  [strokeProvider boundsForSliceIdentifiers:strokeIdentifiers];
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v245.origin.x = [(PKTextInputElementContent *)*(completionCopy + 48) caretRectForCharacterIndex:v185 inCoordinateSpace:canvasCoordinateSpace];
  x = v245.origin.x;
  y = v245.origin.y;
  width = v245.size.width;
  height = v245.size.height;
  if (!CGRectIsNull(v245))
  {
    v148 = width + 50.0 >= 100.0 ? width + 50.0 : 100.0;
    v246.origin.x = v136;
    v246.origin.y = v138;
    v246.size.width = v140;
    v246.size.height = v142;
    v149 = y;
    v150 = height;
    v147 = x + -50.0;
    if (CGRectIntersectsRect(v246, *(&v148 - 2)))
    {

LABEL_108:
      v221 = 0;
    }
  }

LABEL_110:
LABEL_112:
  v118 = *(completionCopy + 40);
  v119 = v195;
  objc_opt_self();
  correctionResult5 = [v119 correctionResult];
  strokeProvider2 = [v118 strokeProvider];
  strokeIdentifiers2 = [v119 strokeIdentifiers];

  inputInProgressStroke = [v118 inputInProgressStroke];

  v124 = 0;
  if (inputInProgressStroke || v194 < 2)
  {
LABEL_138:

    v153 = 0;
    if (v191)
    {
      v151 = 1;
    }

    else
    {
      v151 = v124;
    }

    if (!v191)
    {
      v152 = v190;
LABEL_155:
      if (!v103)
      {
        goto LABEL_158;
      }

      goto LABEL_156;
    }

    v152 = v190;
    if (v124)
    {
      goto LABEL_155;
    }

    goto LABEL_143;
  }

  if ([strokeIdentifiers2 count] != 1)
  {
    inputInProgressStroke = 0;
    v124 = 0;
    goto LABEL_138;
  }

  textResult4 = [correctionResult5 textResult];
  tokenColumnCount2 = [textResult4 tokenColumnCount];

  if (tokenColumnCount2 == 1)
  {
    textResult5 = [correctionResult5 textResult];
    inputInProgressStroke = [textResult5 topTranscription];

    if ([inputInProgressStroke length])
    {
      [inputInProgressStroke rangeOfComposedCharacterSequenceAtIndex:0];
      v129 = v128;
      v130 = [inputInProgressStroke length];
      [strokeProvider2 boundsForSliceIdentifiers:strokeIdentifiers2];
      v124 = 0;
      if (v129 == v130)
      {
        v133 = v131 >= v132 ? v131 : v132;
        if (v133 <= 20.0)
        {
          v124 = 1;
        }
      }
    }

    else
    {
      v124 = 1;
    }

    goto LABEL_138;
  }

  v152 = v190;
  v151 = v191;
  if (!v191)
  {
    v153 = 0;
    if (!v103)
    {
      goto LABEL_158;
    }

LABEL_156:
    *(completionCopy + 9) = 1;
    goto LABEL_163;
  }

LABEL_143:
  v151 = 0;
  v154 = v152[3];
  if (!v154)
  {
    v153 = 0;
    if (!v103)
    {
      goto LABEL_158;
    }

    goto LABEL_156;
  }

  v153 = 0;
  if (v154 == 3)
  {
    goto LABEL_155;
  }

  if ([v102 count] > 1 || (objc_msgSend(v102, "firstObject"), v155 = objc_claimAutoreleasedReturnValue(), v156 = objc_msgSend(v155, "length"), v155, v156) || objc_msgSend(v193, "resultType") == 7)
  {
    if (v184)
    {
      v157 = 0;
    }

    else
    {
      v157 = v189[7];
    }

    v158 = v157;
LABEL_151:
    v153 = 1;
    goto LABEL_152;
  }

  v178 = *(completionCopy + 64);
  if (v184)
  {
    v179 = 0;
  }

  else
  {
    v179 = v189[7];
  }

  v180 = v179;
  v158 = v180;
  if (v178)
  {
    goto LABEL_151;
  }

  if ([v180 length] || objc_msgSend(v221, "length"))
  {
    v158 = v158;
    v181 = v221;
    v182 = v181;
    if (v158 == v181)
    {
      v153 = 0;
    }

    else
    {
      v153 = 1;
      if (v181 && v158)
      {
        v153 = [v158 isEqualToString:v181] ^ 1;
      }
    }
  }

  else
  {
    v153 = 0;
  }

LABEL_152:

  v151 = 0;
  if (v103)
  {
    goto LABEL_156;
  }

LABEL_158:
  if (v194)
  {
    v159 = v153;
  }

  else
  {
    v159 = 1;
  }

  if ((v159 & 1) == 0 && !*(completionCopy + 64))
  {
    goto LABEL_156;
  }

LABEL_163:
  if (v153)
  {
    v160 = v188;
    [v188 notifyTextInputTextWillChange];
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __64__PKTextInputResultCommand__applyTextReplacementWithCompletion___block_invoke;
    v227[3] = &unk_1E82DB7C8;
    v228 = v188;
    v229 = v102;
    v230 = completionCopy;
    v234 = v35;
    v235 = v196 & 1;
    v233 = v187;
    v231 = v103;
    v161 = v221;
    v232 = v221;
    v162 = v218;
    [(PKTextInputElementContent *)v152 insertTextsToCommit:v229 withAlternatives:v218 activePreviewText:v232 replacingRange:v185 completion:v194, v227];
  }

  else
  {
    if (v151)
    {
      v163 = *(completionCopy + 64);
      v161 = v221;
      if (v163)
      {
        v164 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
        {
          v165 = NSStringFromRange(*(completionCopy + 112));
          v166 = *(completionCopy + 40);
          *buf = 134218754;
          v237 = completionCopy;
          v161 = v221;
          v238 = 2112;
          v239 = v165;
          v240 = 2112;
          v241 = v188;
          v242 = 2048;
          v243 = v166;
          v152 = v190;
          _os_log_impl(&dword_1C7CCA000, v164, OS_LOG_TYPE_DEFAULT, "ResultCommand %p: ignoring final commit of text insertion as accidental replacement, affectedRange: %@, element: %@, shot: %p", buf, 0x2Au);
        }
      }

      (v187)[2](v187, v163 == 0, 0, 0, 0, 0);
    }

    else
    {
      inputInProgressStroke2 = [*(completionCopy + 40) inputInProgressStroke];
      _strokeUUID = [inputInProgressStroke2 _strokeUUID];

      v169 = *(completionCopy + 56);
      if (!v169)
      {
        goto LABEL_177;
      }

      v170 = *(v169 + 80);
      if (!v170)
      {
        goto LABEL_177;
      }

      v171 = v170;
      v172 = *(completionCopy + 56);
      if (v172)
      {
        v172 = v172[10];
      }

      v173 = v172;
      v174 = [_strokeUUID isEqual:v173];

      if (v174)
      {
        affectedRange = [v193 affectedRange];
        v177 = v176;
        v222[0] = MEMORY[0x1E69E9820];
        v222[1] = 3221225472;
        v222[2] = __64__PKTextInputResultCommand__applyTextReplacementWithCompletion___block_invoke_58;
        v222[3] = &unk_1E82DB7F0;
        v225 = v187;
        v226 = v35;
        v223 = v103;
        v161 = v221;
        v224 = v221;
        v152 = v190;
        [(PKTextInputElementContent *)v190 selectTextInRange:affectedRange completion:v177, v222];
      }

      else
      {
LABEL_177:
        v161 = v221;
        (v187)[2](v187, 1, v35, 0, v103, v221);
        v152 = v190;
      }
    }

    v160 = v188;
    v162 = v218;
  }
}

void __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a5;
  v12 = [(PKTextInputResultCommand *)v9 _strokeSliceIDsToRemoveForCommittedTokenColumnCount:0 forceRemoveAll:?];
  [(PKTextInputResultCommand *)*(a1 + 32) _removeStrokesForSliceIDs:v12 destinationRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  [(PKTextInputResultCommand *)*(a1 + 32) _updateInputTargetStateWithUncommittedPendingText:v11 activePreviewText:v10 committedTextLength:a4 accumulatedCommitLength:a4];

  (*(*(a1 + 40) + 16))();
}

- (void)_removeStrokesForSliceIDs:(CGFloat)ds destinationRect:(CGFloat)rect
{
  if (self)
  {
    v24 = *(self + 40);
    v12 = a2;
    strokeProvider = [v24 strokeProvider];
    v14 = [strokeProvider strokesForSliceIdentifiers:v12];

    if ([v14 count])
    {
      IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
      v26.origin.x = ds;
      v26.origin.y = rect;
      v26.size.width = a5;
      v26.size.height = a6;
      IsNull = CGRectIsNull(v26);
      WeakRetained = objc_loadWeakRetained((self + 16));
      v18 = [WeakRetained resultCommandCanvasController:self];

      if (IsNull || IsReduceMotionEnabled)
      {
        allObjects = [v14 allObjects];
        [(PKTextInputCanvasController *)v18 removeStrokes:allObjects animationDuration:0.1];
      }

      else
      {
        if (*(self + 10))
        {
          v19 = 1;
        }

        else
        {
          v21 = +[PKTextInputSettings sharedSettings];
          v19 = [v21 useTransformStrokesAnimation] ^ 1;
        }

        languageSpec = [*(self + 40) languageSpec];
        strokeFadeOutDuration = [(PKTextInputLanguageSpec *)languageSpec strokeFadeOutDuration];

        allObjects = [v14 allObjects];
        [(PKTextInputCanvasController *)v18 animateAndRemoveStrokes:allObjects destinationFrame:v19 animationDuration:ds useImpreciseAnimation:rect, a5, a6, strokeFadeOutDuration];
      }
    }
  }
}

void __68__PKTextInputResultCommand__applyResultCommandPhase3WithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [(PKTextInputResultCommand *)*(a1 + 32) _strokeSliceIDsToRemoveForCommittedTokenColumnCount:0 forceRemoveAll:?];
  [(PKTextInputResultCommand *)*(a1 + 32) _removeStrokesForSliceIDs:v2 destinationRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  [(PKTextInputResultCommand *)*(a1 + 32) _updateInputTargetStateWithUncommittedPendingText:0 activePreviewText:0 committedTextLength:0 accumulatedCommitLength:?];
  (*(*(a1 + 40) + 16))();
}

uint64_t __64__PKTextInputResultCommand__applyTextReplacementWithCompletion___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) notifyTextInputTextDidChange];
  if (a2)
  {
    v5 = [*(a1 + 40) componentsJoinedByString:&stru_1F476BD20];
    v6 = *(a1 + 48);
    if (v6)
    {
      objc_setProperty_nonatomic_copy(v6, v4, v5, 80);
      v7 = *(a1 + 48);
      if (v7)
      {
        *(v7 + 88) = *(a1 + 80);
      }
    }

    if ([v5 length])
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        WeakRetained = objc_loadWeakRetained((v8 + 16));
        v10 = *(a1 + 48);
      }

      else
      {
        v10 = 0;
        WeakRetained = 0;
      }

      v11 = [WeakRetained resultCommandCursorController:v10];
      [v11 makeCursorTemporarilyStrongWhileWriting];

      [*(a1 + 32) didInsertText];
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(v12 + 8) = 1;
    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(v13 + 104);
      if (v14)
      {
        *(v14 + 8) = *(a1 + 88);
      }
    }
  }

  v15 = *(*(a1 + 72) + 16);

  return v15();
}

uint64_t __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  [*(a1 + 32) setReferenceElementContent:a6 referenceRange:a4 feedbackType:{a5, a3}];
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

uint64_t __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke_3(void *a1, int a2)
{
  v4 = a1[4];
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  [v5 notifyTextInputTextDidChange];

  if (a2)
  {
    v6 = +[PKTextInputSettings sharedSettings];
    v7 = [v6 scratchOutMakesTheCursorStrong];

    if (v7)
    {
      v8 = a1[5];
      if (v8)
      {
        WeakRetained = objc_loadWeakRetained((v8 + 16));
        v10 = a1[5];
      }

      else
      {
        v10 = 0;
        WeakRetained = 0;
      }

      v11 = [WeakRetained resultCommandCursorController:v10];
      [v11 makeCursorStrong];
    }
  }

  v12 = *(a1[6] + 16);

  return v12();
}

uint64_t __73__PKTextInputResultCommand__applySelectOrDeleteGestureOfType_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 16));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = [WeakRetained resultCommandCursorController:v4];
  [v5 makeCursorStrong];

  v6 = *(*(a1 + 48) + 16);

  return v6();
}

uint64_t __95__PKTextInputResultCommand__strokeSliceIDsToRemoveForCommittedTokenColumnCount_forceRemoveAll___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = v3;
  v5 = 1;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [v4 strokesForSliceIdentifiers:v6];
  v8 = [v7 anyObject];

  if (v8)
  {
    v9 = [*(a1 + 40) inputInProgressStroke];
    v10 = [v9 isEqual:v8];

    v5 = v10 ^ 1;
  }

  return v5 & 1;
}

uint64_t __96__PKTextInputResultCommand__removeCommittedTextInsertionStrokes_committedTextLength_completion___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [(PKTextInputResultCommand *)*(a1 + 32) _removeStrokesForSliceIDs:a2 destinationRect:a3, a4, a5];
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

uint64_t __96__PKTextInputResultCommand__removeCommittedTextInsertionStrokes_committedTextLength_completion___block_invoke_2(uint64_t a1, double a2, CGFloat y, CGFloat width, CGFloat height)
{
  x = a2;
  if (!CGRectIsNull(*&a2))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, -10.0, 0.0);
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
  }

  [(PKTextInputResultCommand *)*(a1 + 32) _removeStrokesForSliceIDs:x destinationRect:y, width, height];
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

void __59__PKTextInputResultCommand__scheduleBecomeReadyAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] == 1)
  {
    v2 = WeakRetained;
    [(PKTextInputResultCommand *)WeakRetained _setCommandState:?];
    WeakRetained = v2;
  }
}

+ (id)_tokenColumnStringsForTopTranscriptionInTextResult:(uint64_t)result
{
  v2 = a2;
  objc_opt_self();
  tokenColumnCount = [v2 tokenColumnCount];
  transcriptionPaths = [v2 transcriptionPaths];
  firstObject = [transcriptionPaths firstObject];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * tokenColumnCount];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKTextInputResultCommand__tokenColumnStringsForTopTranscriptionInTextResult___block_invoke;
  v12[3] = &unk_1E82DB908;
  v7 = v6;
  v13 = v7;
  v14 = v2;
  v8 = v2;
  [v8 enumerateTokensInTranscriptionPath:firstObject columnRange:0 tokenProcessingBlock:{tokenColumnCount, v12}];
  v9 = v14;
  v10 = v7;

  return v7;
}

+ (id)_transcriptionForTokensAtColumn:(uint64_t)column row:(void *)row textResult:
{
  v30 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  objc_opt_self();
  v24 = rowCopy;
  v21 = [rowCopy tokenRowsAtColumnIndex:a2];
  v7 = [v21 objectAtIndexedSubscript:column];
  string = [MEMORY[0x1E696AD60] string];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      v13 = 0;
      v22 = v11;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        if (v11 < 1)
        {
          v15 = &stru_1F476BD20;
        }

        else
        {
          v15 = [v24 precedingSeparatorForToken:*(*(&v25 + 1) + 8 * v13)];
        }

        string2 = [v14 string];
        v17 = string2;
        if (string2)
        {
          v18 = string2;
        }

        else
        {
          v18 = &stru_1F476BD20;
        }

        v19 = v18;

        [string appendFormat:@"%@%@", v15, v19];
        ++v11;

        ++v13;
      }

      while (v10 != v13);
      v11 = v10 + v22;
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  return string;
}

void __79__PKTextInputResultCommand__tokenColumnStringsForTopTranscriptionInTextResult___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v6 = *(a4 + 16);
  if (v6 < 1)
  {
    v7 = &stru_1F476BD20;
  }

  else
  {
    v7 = [*(a1 + 32) lastObject];
  }

  v8 = [*(a1 + 40) precedingSeparatorForToken:v15];
  v9 = [v15 string];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F476BD20;
  }

  v12 = v11;

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v7, v8, v12];
  v14 = *(a1 + 32);
  if (v6 < 1)
  {
    [v14 addObject:v13];
  }

  else
  {
    [v14 replaceObjectAtIndex:objc_msgSend(v14 withObject:{"count") - 1, v13}];
  }
}

@end