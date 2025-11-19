@interface PKTextInputElement
+ (double)hitToleranceFrameFromElementFrame:(double)a3 insets:(double)a4;
- (BOOL)clearActivePreview;
- (BOOL)containsPoint:(double)a3 inCoordinateSpace:(double)a4;
- (BOOL)showSelectionCommands;
- (CGRect)selectionClipRectInCoordinateSpace:(id)a3;
- (_NSRange)activeAffectedRange;
- (_NSRange)activePreviewRange;
- (__CFString)debugElementTypeDescription;
- (double)_safeHitFrame;
- (double)clampedReferencePoint:(uint64_t)a1;
- (double)frame;
- (double)hitToleranceFrameFromElementFrame:(double)a3;
- (id)_containerInteractionView;
- (id)_textInputResponder;
- (id)coordinateSpace;
- (id)description;
- (id)initWithElementInteraction:(void *)a3 elementIdentifier:(void *)a4 orderInContainer:;
- (id)initWithTextInput:(id *)a1;
- (id)referenceView;
- (id)selectionHighlightColor;
- (uint64_t)_isFromSameContainerAsElement:(uint64_t)a1;
- (uint64_t)containsView:(id *)a1;
- (uint64_t)isEditableElement;
- (uint64_t)isElementView:(uint64_t)a1;
- (uint64_t)isEquivalentToElement:(uint64_t)a1;
- (uint64_t)isFocused;
- (uint64_t)isInFrontOfElement:(uint64_t)a1;
- (uint64_t)shouldBeginAtLocation:(double)a3;
- (uint64_t)shouldPostponeFocusing;
- (void)_beginSuppressingFieldPlaceholder;
- (void)_finishSuppressingFieldPlaceholderIfNeeded;
- (void)_promoteKeyWindowIfNecessary:(void *)a1;
- (void)_scribbleInteraction;
- (void)dealloc;
- (void)didEndWriting;
- (void)didInsertText;
- (void)didMoveToWritingSession:(id)a3;
- (void)didTargetElementForTouches:(void *)a3 event:;
- (void)evaluateLineBreakForTapAtLocation:(char)a3 weakCursor:(void *)a4 allowTrailingWhitespace:(double)a5 completion:(CGFloat)a6;
- (void)focusElementIfNeededWithReferencePoint:(void *)a3 alwaysSetSelectionFromReferencePoint:(double)a4 completion:(double)a5;
- (void)loadContentFocusingIfNeededWithReferencePoint:(void *)a3 alwaysSetSelectionFromReferencePoint:(double)a4 rectOfInterest:(double)a5 completion:(CGFloat)a6;
- (void)notifyTextInputTextDidChange;
- (void)notifyTextInputTextWillChange;
- (void)swapWritingStateWithElement:(id)a3;
- (void)updateFromEquivalentElement:(uint64_t)a1;
- (void)updateWithFocusedTextInput:(uint64_t)a1;
- (void)willBeginWriting;
@end

@implementation PKTextInputElement

- (id)initWithElementInteraction:(void *)a3 elementIdentifier:(void *)a4 orderInContainer:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PKTextInputElement;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 10, a2);
      objc_storeStrong(a1 + 15, a3);
      a1[11] = a4;
      v11 = [(PKTextInputElement *)a1 _containerInteractionView];
      v12 = objc_opt_respondsToSelector();
      v13 = 1;
      if (v12)
      {
        v13 = 2;
      }

      a1[7] = v13;
    }
  }

  return a1;
}

- (id)_containerInteractionView
{
  if (a1)
  {
    v2 = a1;
    if (objc_opt_respondsToSelector())
    {
      a1 = [v2[10] interactionView];
    }

    else if (objc_opt_respondsToSelector())
    {
      a1 = [v2[10] view];
    }

    else
    {
      a1 = 0;
    }

    v1 = vars8;
  }

  return a1;
}

- (id)initWithTextInput:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = PKTextInputElement;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 13, v3);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeWeak(a1 + 8, v3);
      }

      else if (objc_opt_respondsToSelector())
      {
        v5 = [v3 textInputView];
        objc_storeWeak(a1 + 8, v5);
      }

      a1[7] = 0;
      v6 = PKScribbleInteractionInTextInput(v3);
      v7 = a1[9];
      a1[9] = v6;
    }
  }

  return a1;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self && self->__waitingForMatchingDidFinishWriting)
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v6 = self;
      _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Element deallocated while waiting for matching didEndWriting. %@", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = PKTextInputElement;
  [(PKTextInputElement *)&v4 dealloc];
}

- (id)coordinateSpace
{
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 56);
    if ((v1 - 1) >= 2)
    {
      if (v1)
      {
        WeakRetained = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((WeakRetained + 64));
      }
    }

    else
    {
      WeakRetained = [(PKTextInputElement *)WeakRetained _containerInteractionView];
    }
  }

  return WeakRetained;
}

- (double)frame
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if ((v2 - 1) >= 2)
    {
      if (v2)
      {
        return *(a1 + 8);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v9 = [(PKTextInputElement *)a1 coordinateSpace];
      v10 = v9;
      if (WeakRetained && v9)
      {
        [WeakRetained bounds];
        if (v10 != WeakRetained)
        {
          v11 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(WeakRetained, v10, v11, v12, v13, v14);
        }

        *(a1 + 8) = v11;
        *(a1 + 16) = v12;
        *(a1 + 24) = v13;
        *(a1 + 32) = v14;
      }
    }

    else
    {
      v3 = *(a1 + 120);
      WeakRetained = *(a1 + 80);
      [WeakRetained frameForElement:v3];
      *(a1 + 8) = v5;
      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
    }

    return *(a1 + 8);
  }

  return 0.0;
}

- (double)hitToleranceFrameFromElementFrame:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v10 = +[PKTextInputSettings sharedSettings];
  if ([(PKTextInputElement *)a1 isFocused])
  {
    [v10 firstResponderAttractionHorizontal];
    v12 = v11;
    [v10 firstResponderAttractionVertical];
  }

  else
  {
    [v10 textInputViewHitTestSlackHorizontal];
    v12 = v14;
    [v10 textInputViewHitTestSlackVertical];
  }

  v15 = v13;
  objc_opt_self();
  v16 = -v15;
  v17 = -v12;
  v18 = v12 * -1.25;
  v19 = [(PKTextInputElement *)a1 _scribbleInteraction];
  v20 = v19;
  if (v19)
  {
    [v19 hitToleranceInsetsWithDefaultInsets:a1[15] element:{v16, v17, v16, v18}];
    v16 = v21;
    v17 = v22;
  }

  v23 = [(PKTextInputElement *)a2 hitToleranceFrameFromElementFrame:a3 insets:a4, a5, v16, v17];

  return v23;
}

- (uint64_t)isFocused
{
  if (a1)
  {
    v2 = *(a1 + 7);
    if ((v2 - 1) < 2)
    {
      if ([*(a1 + 10) supportsIsElementFocused])
      {
        v3 = *(a1 + 10);
        v4 = *(a1 + 15);
        v5 = v3;
        v6 = [v5 isElementFocused:v4];

        return v6;
      }

      v10 = *(a1 + 50);
      return v10 & 1;
    }

    if (!v2)
    {
      v8 = [(PKTextInputElement *)a1 _textInputResponder];
      v9 = [v8 isFirstResponder];

      return v9;
    }
  }

  v10 = 0;
  return v10 & 1;
}

- (void)_scribbleInteraction
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  v2 = a1[7];
  if (v2 <= 2)
  {
    a1 = *(a1 + qword_1C801C660[v2]);
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

+ (double)hitToleranceFrameFromElementFrame:(double)a3 insets:(double)a4
{
  objc_opt_self();
  v9 = +[PKTextInputSettings sharedSettings];
  [v9 minimumWritingSpaceWidth];
  v11 = v10;

  if (a3 < v11)
  {
    v12 = +[PKTextInputSettings sharedSettings];
    [v12 minimumWritingSpaceWidth];
  }

  return a1 + a6;
}

- (id)description
{
  if (self)
  {
    elementType = self->__elementType;
    if (elementType > 2)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E82D7950[elementType];
    }
  }

  else
  {
    v4 = @"UITextInputView";
  }

  v5 = [(PKTextInputElement *)self coordinateSpace];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = [(PKTextInputElement *)self coordinateSpace];
  v7 = [v6 window];

  if (!v7)
  {
LABEL_9:
    v27 = MEMORY[0x1E696AEC0];
    v43.origin.x = [(PKTextInputElement *)self frame];
    v26 = NSStringFromCGRect(v43);
    [v27 stringWithFormat:@"frameInElement: %@", v26];
    goto LABEL_10;
  }

  v8 = [(PKTextInputElement *)self frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PKTextInputElement *)self coordinateSpace];
  v16 = [(PKTextInputElement *)self coordinateSpace];
  v17 = [v16 window];
  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v15, v17, v8, v10, v12, v14);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x1E696AEC0];
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = v22;
  v42.size.height = v24;
  v26 = NSStringFromCGRect(v42);
  [v25 stringWithFormat:@"frameInWindow: %@", v26];
  v28 = LABEL_10:;

  if (self && self->__containerInteraction)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = self->_containerElementIdentifier;
    v31 = [v29 stringWithFormat:@", containerElementID: %@, orderInContainer: %ld", v30, self->__orderInContainer];
  }

  else
  {
    v31 = &stru_1F476BD20;
  }

  v32 = [(PKTextInputElement *)&self->super.isa referenceView];
  v33 = v32;
  if (v32)
  {
    v34 = PKDebugStringRepresentation(v32);
  }

  else
  {
    v34 = @"None";
  }

  v40.receiver = self;
  v40.super_class = PKTextInputElement;
  v35 = [(PKTextInputElement *)&v40 description];
  v36 = v35;
  if (self)
  {
    recognitionIdentifier = self->_recognitionIdentifier;
  }

  else
  {
    recognitionIdentifier = 0;
  }

  v38 = [v35 stringByAppendingFormat:@" type: %@, recognitionID: %@%@, %@, referenceView: %@", v4, recognitionIdentifier, v31, v28, v34];

  return v38;
}

- (id)referenceView
{
  if (WeakRetained)
  {
    v2 = WeakRetained;
    WeakRetained = objc_loadWeakRetained(WeakRetained + 8);
    if (!WeakRetained)
    {
      if (v2[10])
      {
        WeakRetained = [(PKTextInputElement *)v2 _containerInteractionView];
      }

      else
      {
        WeakRetained = 0;
      }
    }

    v1 = vars8;
  }

  return WeakRetained;
}

- (__CFString)debugElementTypeDescription
{
  if (result)
  {
    length = result[1].length;
    if (length > 2)
    {
      return @"?";
    }

    else
    {
      return off_1E82D7950[length];
    }
  }

  return result;
}

- (id)_textInputResponder
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 13);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = objc_loadWeakRetained(v1 + 13);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)updateWithFocusedTextInput:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 56) == 1)
  {
    v4 = v3;
    objc_storeWeak((a1 + 104), v3);
    v3 = v4;
  }
}

- (void)updateFromEquivalentElement:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      v4 = v3[50];
      v5 = *(v3 + 11);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    *(a1 + 50) = v4;
    *(a1 + 88) = v5;
  }
}

- (uint64_t)shouldBeginAtLocation:(double)a3
{
  if (!a1)
  {
    return 0;
  }

  v5 = [(PKTextInputElement *)a1 _scribbleInteraction];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 shouldBeginAtLocation:{a2, a3}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)didTargetElementForTouches:(void *)a3 event:
{
  v7 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [(PKTextInputElement *)a1 _scribbleInteraction];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 didTargetElement:a1[15] forTouches:v7 event:v5];
    }
  }
}

- (BOOL)containsPoint:(double)a3 inCoordinateSpace:(double)a4
{
  if (result)
  {
    v6 = result;
    v7 = a2;
    v8 = [(PKTextInputElement *)v6 coordinateSpace];
    v9 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v7, v8, a3, a4, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    v11 = v10;

    v12 = [(PKTextInputElement *)v6 frame];
    v16 = v9;
    v17 = v11;

    return CGRectContainsPoint(*&v12, *&v16);
  }

  return result;
}

- (uint64_t)isEquivalentToElement:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (v3)
  {
    v5 = v3[7];
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 56) != v5)
  {
    goto LABEL_19;
  }

  if (*(a1 + 112))
  {
    if (v3)
    {
      v6 = v3[14];
      if (v6)
      {
        a1 = [v6 isEqualToNumber:?];
        goto LABEL_20;
      }
    }
  }

  if (!*(a1 + 80))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));

    if (WeakRetained)
    {
      if (v4)
      {
        v11 = objc_loadWeakRetained(v4 + 13);
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_loadWeakRetained((a1 + 104));
      a1 = [v11 isEqual:v12];

      goto LABEL_20;
    }

LABEL_19:
    a1 = 0;
    goto LABEL_20;
  }

  if (![(PKTextInputElement *)a1 _isFromSameContainerAsElement:v4])
  {
    goto LABEL_19;
  }

  a1 = *(a1 + 120);
  if (a1)
  {
    if (v4)
    {
      v7 = v4[15];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = a1;
    a1 = [v8 isEqual:v9];
  }

LABEL_20:

  return a1;
}

- (uint64_t)_isFromSameContainerAsElement:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = *(v3 + 10);
    if (v6)
    {
      v7 = v6;
      v8 = v4[10];
      v9 = *(a1 + 80);
      v5 = [v9 isEqual:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)isInFrontOfElement:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(PKTextInputElement *)a1 referenceView];
    v5 = [(PKTextInputElement *)v3 referenceView];
    v6 = [v4 isDescendantOfView:v5];

    v7 = *(a1 + 56);
    if (v7 == 2)
    {
      if ([(PKTextInputElement *)a1 _isFromSameContainerAsElement:v3])
      {
        if (v3)
        {
          v9 = v3[11];
        }

        else
        {
          v9 = 0;
        }

        v6 = *(a1 + 88) < v9;
      }
    }

    else if (v7 == 1 && [(PKTextInputElement *)a1 _isFromSameContainerAsElement:v3])
    {
      if (v3)
      {
        v8 = v3[11];
      }

      else
      {
        v8 = 0;
      }

      v6 = *(a1 + 88) >= v8;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)isEditableElement
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 80))
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = *(v1 + 80);
        v3 = *(v1 + 120);
        v4 = v2;
        v5 = [v4 isEditableElement:v3];
LABEL_8:
        v1 = v5;

        return v1;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      if (WeakRetained)
      {
        v7 = WeakRetained;
        v8 = objc_loadWeakRetained((v1 + 104));
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v4 = objc_loadWeakRetained((v1 + 104));
          v5 = [PKTextInputElementsFinder isResponderEditableTextInput:v4];
          goto LABEL_8;
        }
      }
    }

    return 1;
  }

  return v1;
}

- (uint64_t)isElementView:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 56);
    if ((v4 - 1) < 2)
    {
      WeakRetained = [(PKTextInputElement *)a1 _containerInteractionView];
      a1 = WeakRetained == v3;
LABEL_9:

      goto LABEL_10;
    }

    if (!v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      if (WeakRetained == v3)
      {
        a1 = 1;
      }

      else
      {
        v6 = objc_loadWeakRetained((a1 + 104));
        v7 = [v6 textInputView];
        a1 = v7 == v3;
      }

      goto LABEL_9;
    }

    a1 = 0;
  }

LABEL_10:

  return a1;
}

- (uint64_t)containsView:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(PKTextInputElement *)a1 referenceView];
    if (v4)
    {
      v5 = [v3 isDescendantOfView:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadContentFocusingIfNeededWithReferencePoint:(void *)a3 alwaysSetSelectionFromReferencePoint:(double)a4 rectOfInterest:(double)a5 completion:(CGFloat)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (a1)
  {
    v18 = [[PKTextInputElementContent alloc] initWithElement:a1];
    v19 = *(a1 + 56);
    if (v19 >= 2)
    {
      if (v19 == 2)
      {
        v47.origin.x = [(PKTextInputElement *)a1 _safeHitFrame];
        v49.origin.x = a6;
        v49.origin.y = a7;
        v49.size.width = a8;
        v49.size.height = a9;
        v48 = CGRectIntersection(v47, v49);
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        v24 = [(PKTextInputElement *)a1 _containerInteractionView];
        if (v24)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke_2;
          v30[3] = &unk_1E82D7868;
          v31 = v18;
          v32 = v24;
          v35 = x;
          v36 = y;
          v37 = width;
          v38 = height;
          v33 = a1;
          v34 = v17;
          [(PKTextInputElement *)a1 focusElementIfNeededWithReferencePoint:a2 alwaysSetSelectionFromReferencePoint:v30 completion:a4, a5];
        }

        else
        {
          v28 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 80);
            *buf = 138412546;
            v43 = a1;
            v44 = 2112;
            v45 = v29;
            _os_log_error_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_ERROR, "Failed to load content for web element because the interaction view is nil. element: %@, interaction: %@", buf, 0x16u);
          }

          (*(v17 + 2))(v17, v18);
        }
      }

      goto LABEL_25;
    }

    if (([(PKTextInputElement *)a1 isEditableElement]& 1) == 0 && !*(a1 + 56))
    {
      goto LABEL_17;
    }

    if (![(PKTextInputElement *)a1 shouldPostponeFocusing]|| [(PKTextInputElement *)a1 isFocused])
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke;
      v39[3] = &unk_1E82D7818;
      v40 = v18;
      v41 = v17;
      [(PKTextInputElement *)a1 focusElementIfNeededWithReferencePoint:a2 alwaysSetSelectionFromReferencePoint:v39 completion:a4, a5];

LABEL_25:
      goto LABEL_26;
    }

    if (*(a1 + 56))
    {
      v25 = [*(a1 + 80) interaction];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_20:
        (*(v17 + 2))(v17, v18);
        goto LABEL_25;
      }

      WeakRetained = *(a1 + 120);
      if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0 || ![WeakRetained conformsToProtocol:&unk_1F4840D28])
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
LABEL_17:
      WeakRetained = objc_loadWeakRetained((a1 + 104));
    }

    [(PKTextInputElementContent *)v18 loadDataIfNeededWithTextInput:?];
    goto LABEL_19;
  }

LABEL_26:
}

- (uint64_t)shouldPostponeFocusing
{
  v1 = a1;
  if (a1)
  {
    v2 = [(PKTextInputElement *)a1 _scribbleInteraction];
    v3 = [v2 focusWillTransformElement:*(v1 + 120)];

    if (v3)
    {
      return 1;
    }

    else
    {
      v4 = +[PKTextInputSettings sharedSettings];
      v5 = [v4 UCBPaletteEnabled];

      if (v5)
      {
        return 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((v1 + 64));
        v7 = [WeakRetained window];

        if ((v7 || (-[PKTextInputElement _containerInteractionView](v1), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v7 = objc_claimAutoreleasedReturnValue(), v8, v7)) && (-[PKTextInputElement coordinateSpace](v1), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          v10 = [(PKTextInputElement *)v1 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v17 = [(PKTextInputElement *)v1 coordinateSpace];
          v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v17, v7, v10, v12, v14, v16);
          v20 = v19;
          v22 = v21;
          v24 = v23;

          [v7 bounds];
          MaxY = CGRectGetMaxY(v28);
          v29.origin.x = v18;
          v29.origin.y = v20;
          v29.size.width = v22;
          v29.size.height = v24;
          v26 = MaxY - CGRectGetMaxY(v29) < 120.0;
          v1 = v24 <= 120.0 && v26;
        }

        else
        {
          v1 = 0;
        }
      }
    }
  }

  return v1;
}

uint64_t __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [(PKTextInputElementContent *)*(a1 + 32) loadDataIfNeededWithTextInput:a2];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)focusElementIfNeededWithReferencePoint:(void *)a3 alwaysSetSelectionFromReferencePoint:(double)a4 completion:(double)a5
{
  v9 = a3;
  v10 = v9;
  if (!a1)
  {
    goto LABEL_39;
  }

  v11 = *(a1 + 56);
  if ((v11 - 1) >= 2)
  {
    if (v11)
    {
      goto LABEL_39;
    }

    v27 = [(PKTextInputElement *)a1 isFocused];
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    if (WeakRetained && ([(PKTextInputElement *)a1 coordinateSpace], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      if (!v27 || a2)
      {
        v30 = [(PKTextInputElement *)a1 coordinateSpace];
        v31 = [WeakRetained textInputView];
        v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v30, v31, a4, a5, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
        v34 = v33;

        [PKTextInputUITextInputInterface setSelectionWithReferencePoint:WeakRetained inTextInput:v32, v34];
      }

      v35 = [MEMORY[0x1E69DCBE0] activeInstance];
      v36 = [v35 textInputTraits];
      v37 = [v36 keyboardType];

      if (v37 == 122)
      {
        v38 = 1;
        if (!v10)
        {
          goto LABEL_38;
        }
      }

      else
      {
        [PKTextInputElement _promoteKeyWindowIfNecessary:?];
        v43 = [(PKTextInputElement *)a1 _textInputResponder];
        v38 = [PKTextInputUITextInputInterface makeTextInputFirstResponder:v43 forPencilInput:1];

        if (!v10)
        {
LABEL_38:

          goto LABEL_39;
        }
      }
    }

    else
    {
      v38 = 0;
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    if ((v27 & v38) == 1)
    {
      (v10)[2](v10, WeakRetained);
    }

    else
    {
      v44 = +[PKTextInputSettings sharedSettings];
      [v44 debugFirstResponderArtificialDelay];
      v46 = v45;

      v47 = dispatch_time(0, (v46 * 1000000000.0));
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke;
      v54[3] = &unk_1E82D78B8;
      v56 = v10;
      v57 = v38;
      v55 = WeakRetained;
      dispatch_after(v47, MEMORY[0x1E69E96A0], v54);
    }

    goto LABEL_38;
  }

  if (*(a1 + 80))
  {
    v59.origin.x = [(PKTextInputElement *)a1 frame];
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    v58.x = a4;
    v58.y = a5;
    v16 = CGRectContainsPoint(v59, v58);
    v17 = x + width;
    if (a4 <= x + width)
    {
      v17 = a4;
    }

    if (a4 < x)
    {
      v17 = x;
    }

    v18 = y + height;
    if (a5 <= y + height)
    {
      v18 = a5;
    }

    if (a5 < y)
    {
      v18 = y;
    }

    if (!v16)
    {
      a4 = v17;
      a5 = v18;
    }

    v19 = [(PKTextInputElement *)a1 _containerInteractionView];
    [PKTextInputElement _promoteKeyWindowIfNecessary:v19];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_2;
    aBlock[3] = &unk_1E82D7818;
    aBlock[4] = a1;
    v53 = v10;
    v20 = _Block_copy(aBlock);
    v21 = objc_loadWeakRetained((a1 + 104));
    if (v21)
    {
      v22 = v21;
      v23 = *(a1 + 80);
      if ([v23 supportsIsElementFocused])
      {
        v24 = [(PKTextInputElement *)a1 isFocused];

        if (v24)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_4;
          block[3] = &unk_1E82D7908;
          block[4] = a1;
          v51 = v20;
          v25 = v20;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          v26 = v51;
LABEL_33:

          goto LABEL_39;
        }
      }

      else
      {
      }
    }

    v39 = *(a1 + 80);
    v40 = *(a1 + 120);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_5;
    v48[3] = &unk_1E82D7818;
    v48[4] = a1;
    v49 = v20;
    v41 = v20;
    v42 = v39;
    [v42 focusElement:v40 initialFocusSelectionReferencePoint:v48 completion:{a4, a5}];

    v26 = v49;
    goto LABEL_33;
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

LABEL_39:
}

- (double)_safeHitFrame
{
  if (!a1)
  {
    return 0.0;
  }

  result = [(PKTextInputElement *)a1 frame];
  if (*(a1 + 56) == 2)
  {
    [(PKTextInputElement *)a1 frame];
    if (v3 * 0.5 <= 4.0)
    {
      v5 = v3 * 0.5;
    }

    else
    {
      v5 = 4.0;
    }

    if (v4 * 0.5 <= 4.0)
    {
      v6 = v4 * 0.5;
    }

    else
    {
      v6 = 4.0;
    }

    v7.origin.x = [(PKTextInputElement *)a1 frame];
    *&result = CGRectInset(v7, v5, v6);
  }

  return result;
}

void __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke_3;
    v9[3] = &unk_1E82D7840;
    v11 = *(a1 + 56);
    v10 = *(a1 + 32);
    [(PKTextInputElementContent *)v4 loadDataIfNeededWithWebDocumentSourceView:v5 textInput:a2 rectOfInterest:v9 completion:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
  }

  else
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = *(v7 + 80);
      }

      else
      {
        v8 = 0;
      }

      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_error_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_ERROR, "Failed to load content for web element because it returned a nil focusedTextInput. element: %@, interaction: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)evaluateLineBreakForTapAtLocation:(char)a3 weakCursor:(void *)a4 allowTrailingWhitespace:(double)a5 completion:(CGFloat)a6
{
  v11 = a4;
  if (a1)
  {
    v12 = +[PKTextInputSettings sharedSettings];
    [v12 tapToLineBreakVerticalDistance];
    v14 = v13;

    v15 = [(PKTextInputElement *)a1 coordinateSpace];
    [(PKTextInputElement *)a1 frame];
    v29.origin.x = 0.0;
    v29.size.height = 1.0;
    v29.origin.y = a6;
    v30 = CGRectInset(v29, 0.0, -v14);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __102__PKTextInputElement_evaluateLineBreakForTapAtLocation_weakCursor_allowTrailingWhitespace_completion___block_invoke;
    v21[3] = &unk_1E82D7890;
    v22 = v15;
    v23 = v11;
    v27 = a3;
    v24 = a5;
    v25 = a6;
    v21[4] = a1;
    v26 = v14;
    v28 = a2;
    v20 = v15;
    [(PKTextInputElement *)a1 loadContentFocusingIfNeededWithReferencePoint:v21 alwaysSetSelectionFromReferencePoint:a5 rectOfInterest:a6 completion:x, y, width, height];
  }
}

void __102__PKTextInputElement_evaluateLineBreakForTapAtLocation_weakCursor_allowTrailingWhitespace_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  if (([(PKTextInputElementContent *)v18 isSingleLineDocumentContent]& 1) == 0)
  {
    v3 = *(a1 + 80);
    v4 = [(PKTextInputElementContent *)v18 contentLength];
    v5 = [(PKTextInputElement *)*(a1 + 32) coordinateSpace];
    v6 = [(PKTextInputElementContent *)v18 characterIndexClosestToPoint:v5 inCoordinateSpace:0 forInsertingText:0 adjustForLastCharacter:*(a1 + 56), *(a1 + 64)];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v6 <= v4)
    {
      if (!v4 || !v3 || (NonWhitespace = [(PKTextInputElementContent *)v18 indexOfLastNonWhitespaceCharacter], NonWhitespace == 0x7FFFFFFFFFFFFFFFLL) || NonWhitespace >= v6)
      {
        if (v4 < 1)
        {
          v9 = [(PKTextInputElementContent *)v18 caretRectInCoordinateSpace:?];
        }

        else
        {
          [(PKTextInputElementContent *)v18 firstRectForRange:1uLL inCoordinateSpace:*(a1 + 40)];
        }

        v13 = v9;
        v14 = v10;
        v15 = v11;
        v16 = v12;
        if (!CGRectIsNull(*&v9))
        {
          v17 = *(a1 + 64);
          v20.origin.x = v13;
          v20.origin.y = v14;
          v20.size.width = v15;
          v20.size.height = v16;
          if (v17 > CGRectGetMaxY(v20) + *(a1 + 72) && *(a1 + 81) == 1)
          {
            [(PKTextInputElementContent *)v18 setSelectionWithReferencePoint:*(a1 + 56) completionHandler:*(a1 + 64)];
          }
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_promoteKeyWindowIfNecessary:(void *)a1
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = PKDynamicCast(v2, v1);

  v4 = [v3 _responderWindow];

  if (([v4 isKeyWindow] & 1) == 0)
  {
    [v4 makeKeyWindow];
  }
}

uint64_t __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3);
}

void __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PKTextInputUITextInputInterface makeTextInputFirstResponder:v3 forPencilInput:1];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 80);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 supportsIsElementFocused])
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, v3);
    }
  }

  else
  {
    v7 = [(PKTextInputElement *)*(a1 + 32) frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 80);
    }

    else
    {
      v15 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_3;
    v16[3] = &unk_1E82D78E0;
    v16[4] = v14;
    v18 = *(a1 + 40);
    v17 = v3;
    [v15 requestElementsInRect:v16 completion:{v7, v9, v11, v13}];
  }
}

void __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_3(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v13 = v5;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    if ([v5 count] <= a3)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v13 objectAtIndexedSubscript:a3];
      v9 = a1[4];
      if (v9)
      {
        v10 = *(v9 + 120);
      }

      else
      {
        v10 = 0;
      }

      v7 = [v10 isEqual:v8];
    }

    v6 = v13;
  }

  v11 = a1[4];
  if (v11)
  {
    *(v11 + 50) = v7;
  }

  v12 = a1[6];
  if (v12)
  {
    (*(v12 + 16))(v12, a1[5]);
    v6 = v13;
  }
}

void __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  (*(v1 + 16))(v1, WeakRetained);
}

void __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_6;
  block[3] = &unk_1E82D7930;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_6(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 104), *(a1 + 40));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (double)clampedReferencePoint:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  result = [(PKTextInputElement *)a1 _safeHitFrame];
  if (a2 >= result)
  {
    result = result + v4;
    if (a2 <= result)
    {
      return a2;
    }
  }

  return result;
}

- (_NSRange)activeAffectedRange
{
  p_isa = &self->super.isa;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained selectedTextRange];
  v5 = [v4 start];

  if (p_isa)
  {
    v6 = objc_loadWeakRetained(p_isa + 13);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 selectedTextRange];
  v8 = [v7 end];

  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && v8)
  {
    if (p_isa)
    {
      v11 = objc_loadWeakRetained(p_isa + 13);
    }

    else
    {
      v11 = 0;
    }

    v9 = [v11 beginningOfDocument];

    if (v9)
    {
      if (p_isa)
      {
        v12 = objc_loadWeakRetained(p_isa + 13);
      }

      else
      {
        v12 = 0;
      }

      v13 = [v12 beginningOfDocument];
      v10 = [v12 offsetFromPosition:v13 toPosition:v5];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 13);
      }

      v9 = [p_isa offsetFromPosition:v5 toPosition:v8];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v14 = v10;
  v15 = v9;
  result.length = v15;
  result.location = v14;
  return result;
}

- (void)_beginSuppressingFieldPlaceholder
{
  v2 = self;
  if (self)
  {
    if (self->__requestingPlaceholderSuppression || self->__elementType > 1uLL)
    {
      return;
    }

    v3 = [(PKTextInputElement *)self _scribbleInteraction];
    self = objc_loadWeakRetained(&v2->_textInput);
  }

  else
  {
    v3 = 0;
  }

  v8 = self;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(PKTextInputElement *)v8 textAlignment];
    }

    else
    {
      v4 = 4;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F476BD20];
    [(PKTextInputElement *)v8 _setOverridePlaceholder:v7 alignment:v4];

    if (v2)
    {
LABEL_16:
      v2->__requestingPlaceholderSuppression = 1;
    }
  }

  else if (v3)
  {
    if (v2)
    {
      containerElementIdentifier = v2->_containerElementIdentifier;
    }

    else
    {
      containerElementIdentifier = 0;
    }

    v6 = [v3 beginSuppressingPlaceholderForElement:containerElementIdentifier];

    if (v2 && v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }
}

- (void)_finishSuppressingFieldPlaceholderIfNeeded
{
  if (self)
  {
    if (self->__elementType > 1uLL)
    {
LABEL_11:
      self->__requestingPlaceholderSuppression = 0;
      return;
    }

    v3 = [(PKTextInputElement *)self _scribbleInteraction];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
  }

  else
  {
    v3 = 0;
    WeakRetained = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained _setOverridePlaceholder:0 alignment:{objc_msgSend(WeakRetained, "textAlignment")}];
  }

  else if (v3)
  {
    if (self)
    {
      containerElementIdentifier = self->_containerElementIdentifier;
    }

    else
    {
      containerElementIdentifier = 0;
    }

    [v3 endSuppressingPlaceholderForElement:containerElementIdentifier];
  }

  if (self)
  {
    goto LABEL_11;
  }
}

- (BOOL)showSelectionCommands
{
  if (!self)
  {
    return 0;
  }

  if (self->__elementType > 1uLL)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained;
  v4 = [PKTextInputUITextInputInterface showSelectionCommandsForTextInput:WeakRetained];

  return v4;
}

- (_NSRange)activePreviewRange
{
  if (self && self->__elementType <= 1uLL && (WeakRetained = objc_loadWeakRetained(&self->_textInput)) != 0)
  {
    v3 = WeakRetained;
    v4 = [PKTextInputUITextInputInterface activePreviewRangeInTextInput:WeakRetained];
    v6 = v5;
  }

  else
  {
    v6 = 0;
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (BOOL)clearActivePreview
{
  if (!self)
  {
    return 0;
  }

  if (self->__elementType > 1uLL)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  if (!WeakRetained)
  {
    return 0;
  }

  v3 = WeakRetained;
  v4 = [PKTextInputUITextInputInterface clearActivePreviewInTextInput:WeakRetained];

  return v4;
}

- (id)selectionHighlightColor
{
  if (self)
  {
    if (self->__elementType > 1uLL)
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    if (WeakRetained)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [WeakRetained selectionHighlightColor];
        goto LABEL_8;
      }

      if (objc_opt_respondsToSelector())
      {
        v4 = [WeakRetained tintColor];
        v3 = [v4 colorWithAlphaComponent:0.2];

LABEL_8:
        if (v3)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    WeakRetained = 0;
  }

LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E69DC888] performSelector:sel_selectionHighlightColor];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemBlueColor];
    v3 = [v5 colorWithAlphaComponent:0.2];
  }

LABEL_15:

  return v3;
}

- (CGRect)selectionClipRectInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(PKTextInputElement *)self coordinateSpace];

  if (v5)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textInput);
    }

    else
    {
      WeakRetained = 0;
    }

    [PKTextInputUtilities selectionClipRectForTextInput:WeakRetained];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    if (!CGRectIsNull(v23))
    {
      v15 = [(PKTextInputElement *)self coordinateSpace];
      v8 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v15, v4, v8, v10, v12, v14);
      v10 = v16;
      v12 = v17;
      v14 = v18;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)notifyTextInputTextWillChange
{
  if (self)
  {
    if (self->__elementType <= 1uLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textInput);
      if (WeakRetained)
      {
        v3 = WeakRetained;
        [PKTextInputUITextInputInterface notifyTextWillChangeInTextInput:WeakRetained];
      }
    }
  }
}

- (void)notifyTextInputTextDidChange
{
  if (self)
  {
    if (self->__elementType <= 1uLL)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textInput);
      if (WeakRetained)
      {
        v3 = WeakRetained;
        [PKTextInputUITextInputInterface notifyTextDidChangeInTextInput:WeakRetained];
      }
    }
  }
}

- (void)swapWritingStateWithElement:(id)a3
{
  v4 = a3;
  if (self)
  {
    waitingForMatchingDidFinishWriting = self->__waitingForMatchingDidFinishWriting;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    waitingForMatchingDidFinishWriting = 0;
    if (v4)
    {
LABEL_3:
      v6 = v4[49];
      if (!self)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v6 = 0;
  if (self)
  {
LABEL_4:
    self->__waitingForMatchingDidFinishWriting = v6 & 1;
  }

LABEL_5:
  if (v4)
  {
    v4[49] = waitingForMatchingDidFinishWriting;
  }
}

- (void)didMoveToWritingSession:(id)a3
{
  if (self)
  {
    objc_storeWeak(&self->__writingSession, a3);
  }
}

- (void)willBeginWriting
{
  v9 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->__waitingForMatchingDidFinishWriting)
    {
      v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Element received willBeginWriting while waiting for matching didEndWriting. %@", &v7, 0xCu);
      }
    }

    self->__waitingForMatchingDidFinishWriting = 1;
  }

  [(PKTextInputElement *)self _beginSuppressingFieldPlaceholder];
  v4 = [(PKTextInputElement *)self _scribbleInteraction];
  v5 = v4;
  if (self)
  {
    [v4 willBeginWritingInElement:self->_containerElementIdentifier];

    WeakRetained = objc_loadWeakRetained(&self->__writingSession);
  }

  else
  {
    [v4 willBeginWritingInElement:0];

    WeakRetained = 0;
  }

  [(PKTextInputWritingSession *)WeakRetained willBeginWritingInElement:?];
}

- (void)didEndWriting
{
  v9 = *MEMORY[0x1E69E9840];
  if (self && self->__waitingForMatchingDidFinishWriting)
  {
    goto LABEL_6;
  }

  v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Element received didEndWriting without a matching willBeginWriting. %@", &v7, 0xCu);
  }

  if (self)
  {
LABEL_6:
    self->__waitingForMatchingDidFinishWriting = 0;
  }

  [(PKTextInputElement *)self _finishSuppressingFieldPlaceholderIfNeeded];
  v4 = [(PKTextInputElement *)self _scribbleInteraction];
  v5 = v4;
  if (self)
  {
    [v4 didFinishWritingInElement:self->_containerElementIdentifier];

    WeakRetained = objc_loadWeakRetained(&self->__writingSession);
  }

  else
  {
    [v4 didFinishWritingInElement:0];

    WeakRetained = 0;
  }

  [(PKTextInputWritingSession *)WeakRetained didEndWritingInElement:?];
}

- (void)didInsertText
{
  v2 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->__writingSession);
  }

  v3 = self;
  [(PKTextInputWritingSession *)self didInsertTextInElement:v2];
}

@end