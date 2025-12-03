@interface PKTextInputElement
+ (double)hitToleranceFrameFromElementFrame:(double)frame insets:(double)insets;
- (BOOL)clearActivePreview;
- (BOOL)containsPoint:(double)point inCoordinateSpace:(double)space;
- (BOOL)showSelectionCommands;
- (CGRect)selectionClipRectInCoordinateSpace:(id)space;
- (_NSRange)activeAffectedRange;
- (_NSRange)activePreviewRange;
- (__CFString)debugElementTypeDescription;
- (double)_safeHitFrame;
- (double)clampedReferencePoint:(uint64_t)point;
- (double)frame;
- (double)hitToleranceFrameFromElementFrame:(double)frame;
- (id)_containerInteractionView;
- (id)_textInputResponder;
- (id)coordinateSpace;
- (id)description;
- (id)initWithElementInteraction:(void *)interaction elementIdentifier:(void *)identifier orderInContainer:;
- (id)initWithTextInput:(id *)input;
- (id)referenceView;
- (id)selectionHighlightColor;
- (uint64_t)_isFromSameContainerAsElement:(uint64_t)element;
- (uint64_t)containsView:(id *)view;
- (uint64_t)isEditableElement;
- (uint64_t)isElementView:(uint64_t)view;
- (uint64_t)isEquivalentToElement:(uint64_t)element;
- (uint64_t)isFocused;
- (uint64_t)isInFrontOfElement:(uint64_t)element;
- (uint64_t)shouldBeginAtLocation:(double)location;
- (uint64_t)shouldPostponeFocusing;
- (void)_beginSuppressingFieldPlaceholder;
- (void)_finishSuppressingFieldPlaceholderIfNeeded;
- (void)_promoteKeyWindowIfNecessary:(void *)necessary;
- (void)_scribbleInteraction;
- (void)dealloc;
- (void)didEndWriting;
- (void)didInsertText;
- (void)didMoveToWritingSession:(id)session;
- (void)didTargetElementForTouches:(void *)touches event:;
- (void)evaluateLineBreakForTapAtLocation:(char)location weakCursor:(void *)cursor allowTrailingWhitespace:(double)whitespace completion:(CGFloat)completion;
- (void)focusElementIfNeededWithReferencePoint:(void *)point alwaysSetSelectionFromReferencePoint:(double)referencePoint completion:(double)completion;
- (void)loadContentFocusingIfNeededWithReferencePoint:(void *)point alwaysSetSelectionFromReferencePoint:(double)referencePoint rectOfInterest:(double)interest completion:(CGFloat)completion;
- (void)notifyTextInputTextDidChange;
- (void)notifyTextInputTextWillChange;
- (void)swapWritingStateWithElement:(id)element;
- (void)updateFromEquivalentElement:(uint64_t)element;
- (void)updateWithFocusedTextInput:(uint64_t)input;
- (void)willBeginWriting;
@end

@implementation PKTextInputElement

- (id)initWithElementInteraction:(void *)interaction elementIdentifier:(void *)identifier orderInContainer:
{
  v8 = a2;
  interactionCopy = interaction;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = PKTextInputElement;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 10, a2);
      objc_storeStrong(self + 15, interaction);
      self[11] = identifier;
      _containerInteractionView = [(PKTextInputElement *)self _containerInteractionView];
      v12 = objc_opt_respondsToSelector();
      v13 = 1;
      if (v12)
      {
        v13 = 2;
      }

      self[7] = v13;
    }
  }

  return self;
}

- (id)_containerInteractionView
{
  if (self)
  {
    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      self = [selfCopy[10] interactionView];
    }

    else if (objc_opt_respondsToSelector())
    {
      self = [selfCopy[10] view];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

- (id)initWithTextInput:(id *)input
{
  v3 = a2;
  if (input)
  {
    v9.receiver = input;
    v9.super_class = PKTextInputElement;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    input = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 13, v3);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeWeak(input + 8, v3);
      }

      else if (objc_opt_respondsToSelector())
      {
        textInputView = [v3 textInputView];
        objc_storeWeak(input + 8, textInputView);
      }

      input[7] = 0;
      v6 = PKScribbleInteractionInTextInput(v3);
      v7 = input[9];
      input[9] = v6;
    }
  }

  return input;
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
      selfCopy = self;
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
  if (self)
  {
    v2 = *(self + 56);
    if ((v2 - 1) >= 2)
    {
      if (v2)
      {
        return *(self + 8);
      }

      WeakRetained = objc_loadWeakRetained((self + 64));
      coordinateSpace = [(PKTextInputElement *)self coordinateSpace];
      v10 = coordinateSpace;
      if (WeakRetained && coordinateSpace)
      {
        [WeakRetained bounds];
        if (v10 != WeakRetained)
        {
          v11 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(WeakRetained, v10, v11, v12, v13, v14);
        }

        *(self + 8) = v11;
        *(self + 16) = v12;
        *(self + 24) = v13;
        *(self + 32) = v14;
      }
    }

    else
    {
      v3 = *(self + 120);
      WeakRetained = *(self + 80);
      [WeakRetained frameForElement:v3];
      *(self + 8) = v5;
      *(self + 16) = v6;
      *(self + 24) = v7;
      *(self + 32) = v8;
    }

    return *(self + 8);
  }

  return 0.0;
}

- (double)hitToleranceFrameFromElementFrame:(double)frame
{
  if (!self)
  {
    return 0.0;
  }

  v10 = +[PKTextInputSettings sharedSettings];
  if ([(PKTextInputElement *)self isFocused])
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
  _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
  v20 = _scribbleInteraction;
  if (_scribbleInteraction)
  {
    [_scribbleInteraction hitToleranceInsetsWithDefaultInsets:self[15] element:{v16, v17, v16, v18}];
    v16 = v21;
    v17 = v22;
  }

  v23 = [(PKTextInputElement *)a2 hitToleranceFrameFromElementFrame:frame insets:a4, a5, v16, v17];

  return v23;
}

- (uint64_t)isFocused
{
  if (self)
  {
    v2 = *(self + 7);
    if ((v2 - 1) < 2)
    {
      if ([*(self + 10) supportsIsElementFocused])
      {
        v3 = *(self + 10);
        v4 = *(self + 15);
        v5 = v3;
        v6 = [v5 isElementFocused:v4];

        return v6;
      }

      v10 = *(self + 50);
      return v10 & 1;
    }

    if (!v2)
    {
      _textInputResponder = [(PKTextInputElement *)self _textInputResponder];
      isFirstResponder = [_textInputResponder isFirstResponder];

      return isFirstResponder;
    }
  }

  v10 = 0;
  return v10 & 1;
}

- (void)_scribbleInteraction
{
  if (!self)
  {
LABEL_4:

    return self;
  }

  v2 = self[7];
  if (v2 <= 2)
  {
    self = *(self + qword_1C801C660[v2]);
    goto LABEL_4;
  }

  self = 0;

  return self;
}

+ (double)hitToleranceFrameFromElementFrame:(double)frame insets:(double)insets
{
  objc_opt_self();
  v9 = +[PKTextInputSettings sharedSettings];
  [v9 minimumWritingSpaceWidth];
  v11 = v10;

  if (frame < v11)
  {
    v12 = +[PKTextInputSettings sharedSettings];
    [v12 minimumWritingSpaceWidth];
  }

  return self + a6;
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

  coordinateSpace = [(PKTextInputElement *)self coordinateSpace];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  coordinateSpace2 = [(PKTextInputElement *)self coordinateSpace];
  window = [coordinateSpace2 window];

  if (!window)
  {
LABEL_9:
    v27 = MEMORY[0x1E696AEC0];
    v43.origin.x = [(PKTextInputElement *)self frame];
    v26 = NSStringFromCGRect(v43);
    [v27 stringWithFormat:@"frameInElement: %@", v26];
    goto LABEL_10;
  }

  frame = [(PKTextInputElement *)self frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  coordinateSpace3 = [(PKTextInputElement *)self coordinateSpace];
  coordinateSpace4 = [(PKTextInputElement *)self coordinateSpace];
  window2 = [coordinateSpace4 window];
  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace3, window2, frame, v10, v12, v14);
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

  referenceView = [(PKTextInputElement *)&self->super.isa referenceView];
  v33 = referenceView;
  if (referenceView)
  {
    v34 = PKDebugStringRepresentation(referenceView);
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
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 13);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = objc_loadWeakRetained(selfCopy + 13);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)updateWithFocusedTextInput:(uint64_t)input
{
  v3 = a2;
  if (input && *(input + 56) == 1)
  {
    v4 = v3;
    objc_storeWeak((input + 104), v3);
    v3 = v4;
  }
}

- (void)updateFromEquivalentElement:(uint64_t)element
{
  v3 = a2;
  if (element)
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

    *(element + 50) = v4;
    *(element + 88) = v5;
  }
}

- (uint64_t)shouldBeginAtLocation:(double)location
{
  if (!self)
  {
    return 0;
  }

  _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
  v6 = _scribbleInteraction;
  if (_scribbleInteraction)
  {
    v7 = [_scribbleInteraction shouldBeginAtLocation:{a2, location}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)didTargetElementForTouches:(void *)touches event:
{
  v7 = a2;
  touchesCopy = touches;
  if (self)
  {
    _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
    if (_scribbleInteraction && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [_scribbleInteraction didTargetElement:self[15] forTouches:v7 event:touchesCopy];
    }
  }
}

- (BOOL)containsPoint:(double)point inCoordinateSpace:(double)space
{
  if (result)
  {
    v6 = result;
    v7 = a2;
    coordinateSpace = [(PKTextInputElement *)v6 coordinateSpace];
    v9 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v7, coordinateSpace, point, space, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    v11 = v10;

    frame = [(PKTextInputElement *)v6 frame];
    v16 = v9;
    v17 = v11;

    return CGRectContainsPoint(*&frame, *&v16);
  }

  return result;
}

- (uint64_t)isEquivalentToElement:(uint64_t)element
{
  v3 = a2;
  v4 = v3;
  if (!element)
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

  if (*(element + 56) != v5)
  {
    goto LABEL_19;
  }

  if (*(element + 112))
  {
    if (v3)
    {
      v6 = v3[14];
      if (v6)
      {
        element = [v6 isEqualToNumber:?];
        goto LABEL_20;
      }
    }
  }

  if (!*(element + 80))
  {
    WeakRetained = objc_loadWeakRetained((element + 104));

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

      v12 = objc_loadWeakRetained((element + 104));
      element = [v11 isEqual:v12];

      goto LABEL_20;
    }

LABEL_19:
    element = 0;
    goto LABEL_20;
  }

  if (![(PKTextInputElement *)element _isFromSameContainerAsElement:v4])
  {
    goto LABEL_19;
  }

  element = *(element + 120);
  if (element)
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
    elementCopy = element;
    element = [v8 isEqual:elementCopy];
  }

LABEL_20:

  return element;
}

- (uint64_t)_isFromSameContainerAsElement:(uint64_t)element
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (element && v3)
  {
    v6 = *(v3 + 10);
    if (v6)
    {
      v7 = v6;
      v8 = v4[10];
      v9 = *(element + 80);
      v5 = [v9 isEqual:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)isInFrontOfElement:(uint64_t)element
{
  v3 = a2;
  if (element)
  {
    referenceView = [(PKTextInputElement *)element referenceView];
    referenceView2 = [(PKTextInputElement *)v3 referenceView];
    v6 = [referenceView isDescendantOfView:referenceView2];

    v7 = *(element + 56);
    if (v7 == 2)
    {
      if ([(PKTextInputElement *)element _isFromSameContainerAsElement:v3])
      {
        if (v3)
        {
          v9 = v3[11];
        }

        else
        {
          v9 = 0;
        }

        v6 = *(element + 88) < v9;
      }
    }

    else if (v7 == 1 && [(PKTextInputElement *)element _isFromSameContainerAsElement:v3])
    {
      if (v3)
      {
        v8 = v3[11];
      }

      else
      {
        v8 = 0;
      }

      v6 = *(element + 88) >= v8;
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
  selfCopy = self;
  if (self)
  {
    if (*(self + 80))
    {
      if (objc_opt_respondsToSelector())
      {
        v2 = *(selfCopy + 80);
        v3 = *(selfCopy + 120);
        v4 = v2;
        v5 = [v4 isEditableElement:v3];
LABEL_8:
        selfCopy = v5;

        return selfCopy;
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((self + 104));
      if (WeakRetained)
      {
        v7 = WeakRetained;
        v8 = objc_loadWeakRetained((selfCopy + 104));
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v4 = objc_loadWeakRetained((selfCopy + 104));
          v5 = [PKTextInputElementsFinder isResponderEditableTextInput:v4];
          goto LABEL_8;
        }
      }
    }

    return 1;
  }

  return selfCopy;
}

- (uint64_t)isElementView:(uint64_t)view
{
  v3 = a2;
  if (view)
  {
    v4 = *(view + 56);
    if ((v4 - 1) < 2)
    {
      WeakRetained = [(PKTextInputElement *)view _containerInteractionView];
      view = WeakRetained == v3;
LABEL_9:

      goto LABEL_10;
    }

    if (!v4)
    {
      WeakRetained = objc_loadWeakRetained((view + 104));
      if (WeakRetained == v3)
      {
        view = 1;
      }

      else
      {
        v6 = objc_loadWeakRetained((view + 104));
        textInputView = [v6 textInputView];
        view = textInputView == v3;
      }

      goto LABEL_9;
    }

    view = 0;
  }

LABEL_10:

  return view;
}

- (uint64_t)containsView:(id *)view
{
  v3 = a2;
  if (view)
  {
    referenceView = [(PKTextInputElement *)view referenceView];
    if (referenceView)
    {
      v5 = [v3 isDescendantOfView:referenceView];
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

- (void)loadContentFocusingIfNeededWithReferencePoint:(void *)point alwaysSetSelectionFromReferencePoint:(double)referencePoint rectOfInterest:(double)interest completion:(CGFloat)completion
{
  v46 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  if (self)
  {
    v18 = [[PKTextInputElementContent alloc] initWithElement:self];
    v19 = *(self + 56);
    if (v19 >= 2)
    {
      if (v19 == 2)
      {
        v47.origin.x = [(PKTextInputElement *)self _safeHitFrame];
        v49.origin.x = completion;
        v49.origin.y = a7;
        v49.size.width = a8;
        v49.size.height = a9;
        v48 = CGRectIntersection(v47, v49);
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        _containerInteractionView = [(PKTextInputElement *)self _containerInteractionView];
        if (_containerInteractionView)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke_2;
          v30[3] = &unk_1E82D7868;
          v31 = v18;
          v32 = _containerInteractionView;
          v35 = x;
          v36 = y;
          v37 = width;
          v38 = height;
          selfCopy = self;
          v34 = pointCopy;
          [(PKTextInputElement *)self focusElementIfNeededWithReferencePoint:a2 alwaysSetSelectionFromReferencePoint:v30 completion:referencePoint, interest];
        }

        else
        {
          v28 = os_log_create("com.apple.pencilkit", "PencilTextInput");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(self + 80);
            *buf = 138412546;
            selfCopy2 = self;
            v44 = 2112;
            v45 = v29;
            _os_log_error_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_ERROR, "Failed to load content for web element because the interaction view is nil. element: %@, interaction: %@", buf, 0x16u);
          }

          (*(pointCopy + 2))(pointCopy, v18);
        }
      }

      goto LABEL_25;
    }

    if (([(PKTextInputElement *)self isEditableElement]& 1) == 0 && !*(self + 56))
    {
      goto LABEL_17;
    }

    if (![(PKTextInputElement *)self shouldPostponeFocusing]|| [(PKTextInputElement *)self isFocused])
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __131__PKTextInputElement_loadContentFocusingIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_rectOfInterest_completion___block_invoke;
      v39[3] = &unk_1E82D7818;
      v40 = v18;
      v41 = pointCopy;
      [(PKTextInputElement *)self focusElementIfNeededWithReferencePoint:a2 alwaysSetSelectionFromReferencePoint:v39 completion:referencePoint, interest];

LABEL_25:
      goto LABEL_26;
    }

    if (*(self + 56))
    {
      interaction = [*(self + 80) interaction];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_20:
        (*(pointCopy + 2))(pointCopy, v18);
        goto LABEL_25;
      }

      WeakRetained = *(self + 120);
      if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0 || ![WeakRetained conformsToProtocol:&unk_1F4840D28])
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
LABEL_17:
      WeakRetained = objc_loadWeakRetained((self + 104));
    }

    [(PKTextInputElementContent *)v18 loadDataIfNeededWithTextInput:?];
    goto LABEL_19;
  }

LABEL_26:
}

- (uint64_t)shouldPostponeFocusing
{
  selfCopy = self;
  if (self)
  {
    _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
    v3 = [_scribbleInteraction focusWillTransformElement:*(selfCopy + 120)];

    if (v3)
    {
      return 1;
    }

    else
    {
      v4 = +[PKTextInputSettings sharedSettings];
      uCBPaletteEnabled = [v4 UCBPaletteEnabled];

      if (uCBPaletteEnabled)
      {
        return 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((selfCopy + 64));
        window = [WeakRetained window];

        if ((window || (-[PKTextInputElement _containerInteractionView](selfCopy), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], window = objc_claimAutoreleasedReturnValue(), v8, window)) && (-[PKTextInputElement coordinateSpace](selfCopy), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
        {
          frame = [(PKTextInputElement *)selfCopy frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          coordinateSpace = [(PKTextInputElement *)selfCopy coordinateSpace];
          v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace, window, frame, v12, v14, v16);
          v20 = v19;
          v22 = v21;
          v24 = v23;

          [window bounds];
          MaxY = CGRectGetMaxY(v28);
          v29.origin.x = v18;
          v29.origin.y = v20;
          v29.size.width = v22;
          v29.size.height = v24;
          v26 = MaxY - CGRectGetMaxY(v29) < 120.0;
          selfCopy = v24 <= 120.0 && v26;
        }

        else
        {
          selfCopy = 0;
        }
      }
    }
  }

  return selfCopy;
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

- (void)focusElementIfNeededWithReferencePoint:(void *)point alwaysSetSelectionFromReferencePoint:(double)referencePoint completion:(double)completion
{
  pointCopy = point;
  v10 = pointCopy;
  if (!self)
  {
    goto LABEL_39;
  }

  v11 = *(self + 56);
  if ((v11 - 1) >= 2)
  {
    if (v11)
    {
      goto LABEL_39;
    }

    isFocused = [(PKTextInputElement *)self isFocused];
    WeakRetained = objc_loadWeakRetained((self + 104));
    if (WeakRetained && ([(PKTextInputElement *)self coordinateSpace], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      if (!isFocused || a2)
      {
        coordinateSpace = [(PKTextInputElement *)self coordinateSpace];
        textInputView = [WeakRetained textInputView];
        v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace, textInputView, referencePoint, completion, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
        v34 = v33;

        [PKTextInputUITextInputInterface setSelectionWithReferencePoint:WeakRetained inTextInput:v32, v34];
      }

      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      textInputTraits = [activeInstance textInputTraits];
      keyboardType = [textInputTraits keyboardType];

      if (keyboardType == 122)
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
        _textInputResponder = [(PKTextInputElement *)self _textInputResponder];
        v38 = [PKTextInputUITextInputInterface makeTextInputFirstResponder:_textInputResponder forPencilInput:1];

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

    if ((isFocused & v38) == 1)
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

  if (*(self + 80))
  {
    v59.origin.x = [(PKTextInputElement *)self frame];
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    v58.x = referencePoint;
    v58.y = completion;
    v16 = CGRectContainsPoint(v59, v58);
    referencePointCopy = x + width;
    if (referencePoint <= x + width)
    {
      referencePointCopy = referencePoint;
    }

    if (referencePoint < x)
    {
      referencePointCopy = x;
    }

    completionCopy = y + height;
    if (completion <= y + height)
    {
      completionCopy = completion;
    }

    if (completion < y)
    {
      completionCopy = y;
    }

    if (!v16)
    {
      referencePoint = referencePointCopy;
      completion = completionCopy;
    }

    _containerInteractionView = [(PKTextInputElement *)self _containerInteractionView];
    [PKTextInputElement _promoteKeyWindowIfNecessary:_containerInteractionView];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_2;
    aBlock[3] = &unk_1E82D7818;
    aBlock[4] = self;
    v53 = v10;
    v20 = _Block_copy(aBlock);
    v21 = objc_loadWeakRetained((self + 104));
    if (v21)
    {
      v22 = v21;
      v23 = *(self + 80);
      if ([v23 supportsIsElementFocused])
      {
        isFocused2 = [(PKTextInputElement *)self isFocused];

        if (isFocused2)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_4;
          block[3] = &unk_1E82D7908;
          block[4] = self;
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

    v39 = *(self + 80);
    v40 = *(self + 120);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __109__PKTextInputElement_focusElementIfNeededWithReferencePoint_alwaysSetSelectionFromReferencePoint_completion___block_invoke_5;
    v48[3] = &unk_1E82D7818;
    v48[4] = self;
    v49 = v20;
    v41 = v20;
    v42 = v39;
    [v42 focusElement:v40 initialFocusSelectionReferencePoint:v48 completion:{referencePoint, completion}];

    v26 = v49;
    goto LABEL_33;
  }

  if (pointCopy)
  {
    (*(pointCopy + 2))(pointCopy, 0);
  }

LABEL_39:
}

- (double)_safeHitFrame
{
  if (!self)
  {
    return 0.0;
  }

  result = [(PKTextInputElement *)self frame];
  if (*(self + 56) == 2)
  {
    [(PKTextInputElement *)self frame];
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

    v7.origin.x = [(PKTextInputElement *)self frame];
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

- (void)evaluateLineBreakForTapAtLocation:(char)location weakCursor:(void *)cursor allowTrailingWhitespace:(double)whitespace completion:(CGFloat)completion
{
  cursorCopy = cursor;
  if (self)
  {
    v12 = +[PKTextInputSettings sharedSettings];
    [v12 tapToLineBreakVerticalDistance];
    v14 = v13;

    coordinateSpace = [(PKTextInputElement *)self coordinateSpace];
    [(PKTextInputElement *)self frame];
    v29.origin.x = 0.0;
    v29.size.height = 1.0;
    v29.origin.y = completion;
    v30 = CGRectInset(v29, 0.0, -v14);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __102__PKTextInputElement_evaluateLineBreakForTapAtLocation_weakCursor_allowTrailingWhitespace_completion___block_invoke;
    v21[3] = &unk_1E82D7890;
    v22 = coordinateSpace;
    v23 = cursorCopy;
    locationCopy = location;
    whitespaceCopy = whitespace;
    completionCopy = completion;
    v21[4] = self;
    v26 = v14;
    v28 = a2;
    v20 = coordinateSpace;
    [(PKTextInputElement *)self loadContentFocusingIfNeededWithReferencePoint:v21 alwaysSetSelectionFromReferencePoint:whitespace rectOfInterest:completion completion:x, y, width, height];
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

- (void)_promoteKeyWindowIfNecessary:(void *)necessary
{
  necessaryCopy = necessary;
  v2 = objc_opt_class();
  v3 = PKDynamicCast(v2, necessaryCopy);

  _responderWindow = [v3 _responderWindow];

  if (([_responderWindow isKeyWindow] & 1) == 0)
  {
    [_responderWindow makeKeyWindow];
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

- (double)clampedReferencePoint:(uint64_t)point
{
  if (!point)
  {
    return 0.0;
  }

  result = [(PKTextInputElement *)point _safeHitFrame];
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

  selectedTextRange = [WeakRetained selectedTextRange];
  start = [selectedTextRange start];

  if (p_isa)
  {
    v6 = objc_loadWeakRetained(p_isa + 13);
  }

  else
  {
    v6 = 0;
  }

  selectedTextRange2 = [v6 selectedTextRange];
  v8 = [selectedTextRange2 end];

  beginningOfDocument = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (start && v8)
  {
    if (p_isa)
    {
      v11 = objc_loadWeakRetained(p_isa + 13);
    }

    else
    {
      v11 = 0;
    }

    beginningOfDocument = [v11 beginningOfDocument];

    if (beginningOfDocument)
    {
      if (p_isa)
      {
        v12 = objc_loadWeakRetained(p_isa + 13);
      }

      else
      {
        v12 = 0;
      }

      beginningOfDocument2 = [v12 beginningOfDocument];
      v10 = [v12 offsetFromPosition:beginningOfDocument2 toPosition:start];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 13);
      }

      beginningOfDocument = [p_isa offsetFromPosition:start toPosition:v8];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v14 = v10;
  v15 = beginningOfDocument;
  result.length = v15;
  result.location = v14;
  return result;
}

- (void)_beginSuppressingFieldPlaceholder
{
  selfCopy = self;
  if (self)
  {
    if (self->__requestingPlaceholderSuppression || self->__elementType > 1uLL)
    {
      return;
    }

    _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
    self = objc_loadWeakRetained(&selfCopy->_textInput);
  }

  else
  {
    _scribbleInteraction = 0;
  }

  selfCopy2 = self;
  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      textAlignment = [(PKTextInputElement *)selfCopy2 textAlignment];
    }

    else
    {
      textAlignment = 4;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F476BD20];
    [(PKTextInputElement *)selfCopy2 _setOverridePlaceholder:v7 alignment:textAlignment];

    if (selfCopy)
    {
LABEL_16:
      selfCopy->__requestingPlaceholderSuppression = 1;
    }
  }

  else if (_scribbleInteraction)
  {
    if (selfCopy)
    {
      containerElementIdentifier = selfCopy->_containerElementIdentifier;
    }

    else
    {
      containerElementIdentifier = 0;
    }

    v6 = [_scribbleInteraction beginSuppressingPlaceholderForElement:containerElementIdentifier];

    if (selfCopy && v6)
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

    _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
  }

  else
  {
    _scribbleInteraction = 0;
    WeakRetained = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained _setOverridePlaceholder:0 alignment:{objc_msgSend(WeakRetained, "textAlignment")}];
  }

  else if (_scribbleInteraction)
  {
    if (self)
    {
      containerElementIdentifier = self->_containerElementIdentifier;
    }

    else
    {
      containerElementIdentifier = 0;
    }

    [_scribbleInteraction endSuppressingPlaceholderForElement:containerElementIdentifier];
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
        selectionHighlightColor = [WeakRetained selectionHighlightColor];
        goto LABEL_8;
      }

      if (objc_opt_respondsToSelector())
      {
        tintColor = [WeakRetained tintColor];
        selectionHighlightColor = [tintColor colorWithAlphaComponent:0.2];

LABEL_8:
        if (selectionHighlightColor)
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
    selectionHighlightColor = [MEMORY[0x1E69DC888] performSelector:sel_selectionHighlightColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    selectionHighlightColor = [systemBlueColor colorWithAlphaComponent:0.2];
  }

LABEL_15:

  return selectionHighlightColor;
}

- (CGRect)selectionClipRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  coordinateSpace = [(PKTextInputElement *)self coordinateSpace];

  if (coordinateSpace)
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
      coordinateSpace2 = [(PKTextInputElement *)self coordinateSpace];
      v8 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace2, spaceCopy, v8, v10, v12, v14);
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

- (void)swapWritingStateWithElement:(id)element
{
  elementCopy = element;
  if (self)
  {
    waitingForMatchingDidFinishWriting = self->__waitingForMatchingDidFinishWriting;
    if (elementCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    waitingForMatchingDidFinishWriting = 0;
    if (elementCopy)
    {
LABEL_3:
      v6 = elementCopy[49];
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
  if (elementCopy)
  {
    elementCopy[49] = waitingForMatchingDidFinishWriting;
  }
}

- (void)didMoveToWritingSession:(id)session
{
  if (self)
  {
    objc_storeWeak(&self->__writingSession, session);
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
        selfCopy = self;
        _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Element received willBeginWriting while waiting for matching didEndWriting. %@", &v7, 0xCu);
      }
    }

    self->__waitingForMatchingDidFinishWriting = 1;
  }

  [(PKTextInputElement *)self _beginSuppressingFieldPlaceholder];
  _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
  v5 = _scribbleInteraction;
  if (self)
  {
    [_scribbleInteraction willBeginWritingInElement:self->_containerElementIdentifier];

    WeakRetained = objc_loadWeakRetained(&self->__writingSession);
  }

  else
  {
    [_scribbleInteraction willBeginWritingInElement:0];

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
    selfCopy = self;
    _os_log_fault_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_FAULT, "Element received didEndWriting without a matching willBeginWriting. %@", &v7, 0xCu);
  }

  if (self)
  {
LABEL_6:
    self->__waitingForMatchingDidFinishWriting = 0;
  }

  [(PKTextInputElement *)self _finishSuppressingFieldPlaceholderIfNeeded];
  _scribbleInteraction = [(PKTextInputElement *)self _scribbleInteraction];
  v5 = _scribbleInteraction;
  if (self)
  {
    [_scribbleInteraction didFinishWritingInElement:self->_containerElementIdentifier];

    WeakRetained = objc_loadWeakRetained(&self->__writingSession);
  }

  else
  {
    [_scribbleInteraction didFinishWritingInElement:0];

    WeakRetained = 0;
  }

  [(PKTextInputWritingSession *)WeakRetained didEndWritingInElement:?];
}

- (void)didInsertText
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->__writingSession);
  }

  selfCopy2 = self;
  [(PKTextInputWritingSession *)self didInsertTextInElement:selfCopy];
}

@end