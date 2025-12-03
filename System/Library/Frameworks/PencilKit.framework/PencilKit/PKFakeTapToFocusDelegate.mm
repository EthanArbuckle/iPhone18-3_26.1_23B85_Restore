@interface PKFakeTapToFocusDelegate
+ (BOOL)_shouldAttachForView:(id)view;
+ (BOOL)isPossibleForView:(id)view focusInfo:(id)info;
+ (id)_infoInProcess;
+ (id)_tapGestureForView:(id)view;
- (BOOL)_scribbleInteractionIsEnabled:(id)enabled;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (PKFakeTapToFocusDelegate)initWithView:(id)view;
- (void)_focusWithFocusInfo:(id)info;
- (void)_scribbleInteraction:(id)interaction didTargetElement:(id)element forTouches:(id)touches event:(id)event;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_waitForFirstResponderChangeWithFocusInfo:(id)info completion:(id)completion;
@end

@implementation PKFakeTapToFocusDelegate

+ (id)_infoInProcess
{
  if (qword_1ED6A5538 != -1)
  {
    dispatch_once(&qword_1ED6A5538, &__block_literal_global_194);
  }

  v3 = qword_1ED6A5530;

  return v3;
}

void __42__PKFakeTapToFocusDelegate__infoInProcess__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:10];
  v1 = qword_1ED6A5528;
  qword_1ED6A5528 = v0;

  v2 = qword_1ED6A5528;
  v3 = [_PKFakeTapToFocusInfo textFieldInfoWithInteractionValue:?];
  [v2 setObject:v3 forKey:0x19B59197E7178DCALL];

  v4 = qword_1ED6A5528;
  v5 = [_PKFakeTapToFocusInfo textFieldInfoWithInteractionValue:?];
  [v4 setObject:v5 forKey:0xF0BB69860FE7B106];

  v6 = qword_1ED6A5528;
  v7 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:?];
  [v6 setObject:v7 forKey:0x7838F9B1D3C01804];

  v8 = qword_1ED6A5528;
  v9 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:?];
  [v8 setObject:v9 forKey:0x7077CFFA7F89E0E4];

  v10 = qword_1ED6A5528;
  v11 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:0xDE8D388A4E693F22 targetValue:0xDE417A374F93F3A4 actionValue:0xE6C28B1B4EAE624BLL controlEvents:64 textInputValue:?];
  [v10 setObject:v11 forKey:0x45E68C020940D624];

  v12 = qword_1ED6A5528;
  v13 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:0xB2F09010117585 targetValue:0 actionValue:0 controlEvents:65 textInputValue:?];
  [v12 setObject:v13 forKey:0xD4040AF4B530D3A4];

  v14 = qword_1ED6A5528;
  v15 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:0xDE8D388A4E693F22 targetValue:0xE04BF7250B5CF98BLL actionValue:0xD6C7DAA82897923ALL controlEvents:64 textInputValue:?];
  [v14 setObject:v15 forKey:0x740E7DD9D64E6F3ALL];

  v16 = qword_1ED6A5528;
  v17 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:0xE457228ED2EB2668 targetValue:0xE457228ED2EB2668 actionValue:0x65329911294C9811 controlEvents:64 textInputValue:?];
  [v16 setObject:v17 forKey:0x16C0C530235A29CELL];

  v18 = qword_1ED6A5528;
  v19 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:0xDE8D388A4E693F22 targetValue:0xC76EF808E9F7A6CLL actionValue:0xACABC03EA61EEB31 controlEvents:64 textInputValue:?];
  [v18 setObject:v19 forKey:0x55F2A4B0E948E145];

  v20 = qword_1ED6A5528;
  v21 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:?];
  [v20 setObject:v21 forKey:0xF0B4DFE693370458];

  v22 = qword_1ED6A5528;
  v23 = objc_opt_self();
  v24 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:v23 targetValue:0xDE8D388A4E693F22 actionValue:0x10B9926FE6F58D34 controlEvents:0x5DA2AF0EB412511BLL textInputValue:64];
  *(v24 + 8) = 1;
  [v22 setObject:v24 forKey:0x1D9C656C35157109];
  v25 = qword_1ED6A5528;
  v26 = objc_opt_self();
  v27 = [_PKFakeTapToFocusInfo controlInfoWithInteractionValue:v26 targetValue:0xDE8D388A4E693F22 actionValue:0xE0667A6DCEB6885ELL controlEvents:0x49E229890D3D4237 textInputValue:64];
  *(v27 + 8) = 1;
  [v25 setObject:v27 forKey:0x16BCC6C64092E83BLL];
  v28 = qword_1ED6A5528;
  v29 = objc_opt_self();
  v30 = [(_PKFakeTapToFocusInfo *)v29 tapGestureInfoWithInteractionValue:0x73FEECA1B3E834CLL firstSubviewValue:0 textInputValue:?];
  [v28 setObject:v30 forKey:0x171648361A91B8];

  v31 = qword_1ED6A5528;
  v32 = objc_opt_self();
  v33 = [(_PKFakeTapToFocusInfo *)v32 tapGestureInfoWithInteractionValue:0 firstSubviewValue:0 textInputValue:?];
  [v31 setObject:v33 forKey:0x77F67D758E4B3E12];

  v34 = qword_1ED6A5528;
  v35 = objc_opt_self();
  v36 = [(_PKFakeTapToFocusInfo *)v35 tapGestureInfoWithInteractionValue:0 firstSubviewValue:0 textInputValue:?];
  [v34 setObject:v36 forKey:0x77F6767AA7605E22];

  v37 = qword_1ED6A5528;
  v38 = objc_opt_self();
  v39 = [(_PKFakeTapToFocusInfo *)v38 tapGestureInfoWithInteractionValue:0 firstSubviewValue:0 textInputValue:?];
  [v37 setObject:v39 forKey:0x93BC748310DA00A5];

  v40 = qword_1ED6A5528;
  v41 = [_PKFakeTapToFocusInfo tapGestureInfoWithInteractionValue:0 firstSubviewValue:0x24C5326594B7E975 textInputValue:?];
  [v40 setObject:v41 forKey:0x8ADE1D3DFF7A57A4];

  v42 = qword_1ED6A5528;
  v43 = objc_opt_self();
  v44 = [(_PKFakeTapToFocusInfo *)v43 tapGestureInfoWithInteractionValue:0xDD2EA25F3EEFEE50 firstSubviewValue:0 textInputValue:?];
  [v42 setObject:v44 forKey:0x48D72B7EADA6A598];

  v45 = [MEMORY[0x1E696AAE8] mainBundle];
  v48 = [v45 bundleIdentifier];

  v46 = [qword_1ED6A5528 objectForKey:{objc_msgSend(v48, "hash")}];
  v47 = qword_1ED6A5530;
  qword_1ED6A5530 = v46;
}

+ (id)_tapGestureForView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  gestureRecognizers = [view gestureRecognizers];
  v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)_shouldAttachForView:(id)view
{
  viewCopy = view;
  if (viewCopy && (dyld_program_sdk_at_least() & 1) == 0)
  {
    _infoInProcess = [self _infoInProcess];
    v7 = [self isPossibleForView:viewCopy focusInfo:_infoInProcess];
    v5 = 0;
    if (_infoInProcess && v7)
    {
      if (_infoInProcess[3] && (v8 = objc_opt_class(), NSStringFromClass(v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hash], v11 = _infoInProcess[3], v9, v10 == v11) && (!_infoInProcess[4] || (objc_msgSend(viewCopy, "subviews"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) && (v14 = objc_opt_class(), NSStringFromClass(v14), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hash"), v17 = _infoInProcess[4], v15, v13, v16 == v17)))
      {
        if (_infoInProcess[5] && _infoInProcess[6])
        {
          v23 = 0;
          v24 = &v23;
          v25 = 0x2020000000;
          v26 = 0;
          v18 = viewCopy;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __49__PKFakeTapToFocusDelegate__shouldAttachForView___block_invoke;
          v20[3] = &unk_1E82DC548;
          v21 = _infoInProcess;
          v22 = &v23;
          [v18 enumerateEventHandlers:v20];
          v5 = *(v24 + 24);

          _Block_object_dispose(&v23, 8);
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void __49__PKFakeTapToFocusDelegate__shouldAttachForView___block_invoke(uint64_t a1, uint64_t a2, void *a3, const char *a4, uint64_t a5, _BYTE *a6)
{
  v21 = a3;
  v10 = objc_opt_respondsToSelector();
  v11 = v21;
  if (v10)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v13 hash];
    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = *(v15 + 40);
    }

    if (v14 == v15)
    {
      v16 = NSStringFromSelector(a4);
      v17 = [v16 hash];
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(v18 + 48);
      }

      else
      {
        v19 = 0;
      }

      v11 = v21;
      if (v17 == v19)
      {
        v20 = *(a1 + 32);
        if (v20)
        {
          *(v20 + 56) = a5;
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a6 = 1;
      }
    }

    else
    {

      v11 = v21;
    }
  }
}

+ (BOOL)isPossibleForView:(id)view focusInfo:(id)info
{
  viewCopy = view;
  infoCopy = info;
  v7 = infoCopy;
  if (infoCopy)
  {
    v8 = infoCopy[2];
    if (v8 == 2)
    {
      gestureRecognizers = [viewCopy gestureRecognizers];
      isKindOfClass = [gestureRecognizers count] != 0;

      goto LABEL_7;
    }

    if (v8 > 1)
    {
      isKindOfClass = 0;
      goto LABEL_7;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_7:

  return isKindOfClass & 1;
}

- (PKFakeTapToFocusDelegate)initWithView:(id)view
{
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = PKFakeTapToFocusDelegate;
  v5 = [(PKFakeTapToFocusDelegate *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, viewCopy);
    _infoInProcess = [objc_opt_class() _infoInProcess];
    focusInfo = v6->_focusInfo;
    v6->_focusInfo = _infoInProcess;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    elementID = v6->_elementID;
    v6->_elementID = uUID;

    v11 = v6->_focusInfo;
    if (v11)
    {
      if (v11->_type == 2)
      {
        v12 = [objc_opt_class() _tapGestureForView:viewCopy];
        objc_storeWeak(&v6->_tapGesture, v12);

        v13 = objc_alloc_init(PKFakeUITapGestureForRequirements);
        gestureForRequirements = v6->_gestureForRequirements;
        v6->_gestureForRequirements = v13;

        [(PKFakeUITapGestureForRequirements *)v6->_gestureForRequirements setName:@"com.apple.PencilKit.tapGestureFailure"];
        [(PKFakeUITapGestureForRequirements *)v6->_gestureForRequirements setAllowedTouchTypes:&unk_1F47C1EB0];
        [(PKFakeUITapGestureForRequirements *)v6->_gestureForRequirements setDelegate:v6];
        WeakRetained = objc_loadWeakRetained(&v6->_view);
        [WeakRetained addGestureRecognizer:v6->_gestureForRequirements];

        v16 = objc_loadWeakRetained(&v6->_tapGesture);
        [v16 requireGestureRecognizerToFail:v6->_gestureForRequirements];
      }
    }
  }

  return v6;
}

- (BOOL)_scribbleInteractionIsEnabled:(id)enabled
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  firstResponder = [WeakRetained firstResponder];

  if (firstResponder)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    v7 = [v6 _containsResponder:firstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_scribbleInteraction:(id)interaction didTargetElement:(id)element forTouches:(id)touches event:(id)event
{
  v30 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  elementCopy = element;
  touchesCopy = touches;
  eventCopy = event;
  focusInfo = self->_focusInfo;
  if (focusInfo)
  {
    if (focusInfo->_type == 2 && self->_elementID == elementCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_tapGesture);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v24 = interactionCopy;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v17 = touchesCopy;
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v25 + 1) + 8 * i);
              [(PKFakeUITapGestureForRequirements *)self->_gestureForRequirements _addTouch:v22 forEvent:eventCopy];
              v23 = objc_loadWeakRetained(&self->_tapGesture);
              [v23 _removeTouch:v22 forEvent:eventCopy];
            }

            v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v19);
        }

        interactionCopy = v24;
      }
    }
  }
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v9[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {
    v9[0] = self->_elementID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    completionCopy[2](completionCopy, v8, 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0], 0x7FFFFFFFFFFFFFFFLL);
  }
}

- (void)_focusWithFocusInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = infoCopy[2];
    if (v5 == 2)
    {
      v7 = infoCopy;
      [(PKFakeUITapGestureForRequirements *)self->_gestureForRequirements setState:5];
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      v7 = infoCopy;
      WeakRetained = objc_loadWeakRetained(&self->_view);
      [WeakRetained sendActionsForControlEvents:v7[7]];
      goto LABEL_7;
    }

    if (v5)
    {
      goto LABEL_10;
    }
  }

  v7 = infoCopy;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained becomeFirstResponder];
LABEL_7:

LABEL_9:
  infoCopy = v7;
LABEL_10:
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  interactionCopy = interaction;
  elementCopy = element;
  completionCopy = completion;
  focusInfo = self->_focusInfo;
  if (focusInfo && focusInfo->_type == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tapGesture);
    if (WeakRetained)
    {
      v13 = WeakRetained;
      v14 = objc_loadWeakRetained(&self->_tapGesture);
      state = [v14 state];

      focusInfo = self->_focusInfo;
      if (state == 5)
      {
        [(PKFakeTapToFocusDelegate *)self _focusWithFocusInfo:focusInfo];
        completionCopy[2](completionCopy, 0);
        goto LABEL_10;
      }
    }

    else
    {
      focusInfo = self->_focusInfo;
    }
  }

  v16 = [(PKFakeTapToFocusDelegate *)self _shouldFocusBeforeObservingWithFocusInfo:focusInfo];
  v17 = self->_focusInfo;
  if (v16)
  {
    [(PKFakeTapToFocusDelegate *)self _focusWithFocusInfo:v17];
    [(PKFakeTapToFocusDelegate *)self _waitForFirstResponderChangeWithFocusInfo:self->_focusInfo completion:completionCopy];
  }

  else
  {
    [(PKFakeTapToFocusDelegate *)self _waitForFirstResponderChangeWithFocusInfo:v17 completion:completionCopy];
    [(PKFakeTapToFocusDelegate *)self _focusWithFocusInfo:self->_focusInfo];
  }

LABEL_10:
}

- (void)_waitForFirstResponderChangeWithFocusInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3042000000;
  v20 = __Block_byref_object_copy__36;
  v21 = __Block_byref_object_dispose__36;
  v22 = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69DEB18];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PKFakeTapToFocusDelegate__waitForFirstResponderChangeWithFocusInfo_completion___block_invoke;
  v13[3] = &unk_1E82DC570;
  v15 = completionCopy;
  v16 = &v17;
  v14 = infoCopy;
  v10 = completionCopy;
  v11 = infoCopy;
  v12 = [defaultCenter addObserverForName:v8 object:0 queue:mainQueue usingBlock:v13];
  objc_storeWeak(v18 + 5, v12);

  _Block_object_dispose(&v17, 8);
  objc_destroyWeak(&v22);
}

void __81__PKFakeTapToFocusDelegate__waitForFirstResponderChangeWithFocusInfo_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 userInfo];
  v14 = [v3 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  v4 = a1[4];
  if (v4)
  {
    if (*(v4 + 64) && v14 != 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v7 hash];
      v9 = a1[4];
      v10 = v9 ? *(v9 + 64) : 0;

      if (v8 != v10)
      {

        v14 = 0;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1[6] + 8) + 40));
  if (WeakRetained)
  {
    v12 = v14 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 removeObserver:WeakRetained];

    (*(a1[5] + 16))();
  }
}

@end