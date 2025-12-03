@interface PKTextInputElementsFinder
+ (BOOL)isResponderNonEditableTextInput:(uint64_t)input;
+ (BOOL)shouldConsiderTextInputSearchForView:(uint64_t)view referenceHitPoint:(void *)point referenceCoordSpace:(void *)space;
+ (uint64_t)_anyOtherWindowAboveWindow:(uint64_t)window position:(void *)position;
+ (uint64_t)_isReachableHitTestView:(uint64_t)view nearPoint:(void *)point coordSpace:(void *)space;
+ (uint64_t)_shouldConsiderTextInputSearchForView:(uint64_t)view referenceHitPoint:(void *)point referenceCoordSpace:(void *)space nearPointOnly:(int)only;
+ (uint64_t)isResponderEditableTextInput:(uint64_t)input;
+ (uint64_t)responderSupportsPencilTextInput:(uint64_t)input;
+ (uint64_t)shouldAvoidElementWithHitView:(uint64_t)view;
+ (uint64_t)shouldDisableInputAssistantForTextInput:(uint64_t)input;
- (id)initWithWindowsToSearch:(id)search;
- (void)_collectTextInputs:(void *)inputs asyncElementContainers:(void *)containers underView:(void *)view referenceHitPoint:(uint64_t)point referenceSearchArea:(void *)area referenceCoordSpace:(void *)space nearPointOnly:(CGFloat)only firstResponderTextInputView:(CGFloat)self0 elementContainerCompletion:(double)self1;
- (void)_findAvailableTextInputElementsWithReusableElements:(void *)elements referenceHitPoint:(unsigned int)point referenceSearchArea:(void *)area referenceCoordSpace:(CGFloat)space nearPointOnly:(CGFloat)only completion:(CGFloat)completion;
- (void)_finishFindIfReadyTimedOut:(uint64_t)out;
@end

@implementation PKTextInputElementsFinder

- (id)initWithWindowsToSearch:(id)search
{
  v3 = a2;
  if (search)
  {
    v8.receiver = search;
    v8.super_class = PKTextInputElementsFinder;
    search = objc_msgSendSuper2(&v8, sel_init);
    if (search)
    {
      v4 = [v3 copy];
      v5 = *(search + 2);
      *(search + 2) = v4;

      *(search + 3) = 0;
      v6 = +[PKTextInputSettings sharedSettings];
      *(search + 9) = [v6 enableOnNonEditableViews];
    }
  }

  return search;
}

- (void)_findAvailableTextInputElementsWithReusableElements:(void *)elements referenceHitPoint:(unsigned int)point referenceSearchArea:(void *)area referenceCoordSpace:(CGFloat)space nearPointOnly:(CGFloat)only completion:(CGFloat)completion
{
  v77 = *MEMORY[0x1E69E9840];
  v56 = a2;
  elementsCopy = elements;
  newValue = area;
  if (!self)
  {
    goto LABEL_31;
  }

  v57 = +[PKTextInputSettings sharedSettings];
  [v57 firstResponderAttractionHorizontal];
  v22 = v21 + v21;
  [v57 firstResponderAttractionVertical];
  v80.size.height = v23 + v23;
  v80.origin.x = space - v22 * 0.5;
  v80.origin.y = only - (v23 + v23) * 0.5;
  v78.origin.x = completion;
  v78.origin.y = a9;
  v78.size.width = a10;
  v78.size.height = a11;
  v80.size.width = v22;
  v79 = CGRectUnion(v78, v80);
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  objc_setProperty_nonatomic_copy(self, v28, newValue, 40);
  objc_storeStrong((self + 48), a2);
  v29 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
  *(self + 24) = 1;
  v30 = [MEMORY[0x1E695DFA8] set];
  v31 = *(self + 56);
  *(self + 56) = v30;

  v32 = [MEMORY[0x1E695DFA8] set];
  v33 = *(self + 32);
  *(self + 32) = v32;

  *(self + 10) = 1;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = *(self + 16);
  v34 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (!v34)
  {
    goto LABEL_20;
  }

  v35 = *v72;
  do
  {
    v36 = 0;
    do
    {
      if (*v72 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v71 + 1) + 8 * v36);
      firstResponder = [v37 firstResponder];
      textInputView = +[PKTextInputSettings sharedSettings];
      if ([textInputView enableViewControllerSupport])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = [PKTextInputElementsFinder responderSupportsPencilTextInput:firstResponder];

          if (!v41)
          {
            goto LABEL_10;
          }

          textInputView = [firstResponder textInputView];
          if (textInputView != firstResponder)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_10:
      textInputView = 0;
LABEL_11:
      v40 = *(self + 32);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke;
      v70[3] = &unk_1E82D7B38;
      v70[4] = self;
      [(PKTextInputElementsFinder *)self _collectTextInputs:v29 asyncElementContainers:v40 underView:v37 referenceHitPoint:elementsCopy referenceSearchArea:point referenceCoordSpace:textInputView nearPointOnly:v70 firstResponderTextInputView:space elementContainerCompletion:only, x, y, width, height];
      if (textInputView && [v29 containsObject:textInputView])
      {
        [v29 removeObject:textInputView];
        [v29 addObject:firstResponder];
      }

      ++v36;
    }

    while (v34 != v36);
    v42 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    v34 = v42;
  }

  while (v42);
LABEL_20:

  v69 = 0u;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  v43 = v29;
  v44 = [v43 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v44)
  {
    v45 = *v67;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v67 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = [[PKTextInputElement alloc] initWithTextInput:?];
        [*(self + 56) addObject:v47];
      }

      v44 = [v43 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v44);
  }

  *(self + 10) = 0;
  if ([*(self + 32) count])
  {
    *(self + 24) = 2;
    objc_initWeak(&location, self);
    v48 = +[PKTextInputSettings sharedSettings];
    [v48 asyncElementRequestTimeout];
    v50 = v49;

    v51 = dispatch_time(0, (v50 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke_8;
    block[3] = &unk_1E82D69B8;
    objc_copyWeak(&v64, &location);
    dispatch_after(v51, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&location);
  }

  else
  {
    v52 = +[PKTextInputSettings sharedSettings];
    [v52 debugElementFinderArtificialDelay];
    v54 = v53;

    v55 = dispatch_time(0, (v54 * 1000000000.0));
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke_2;
    v62[3] = &unk_1E82D7148;
    v62[4] = self;
    dispatch_after(v55, MEMORY[0x1E69E96A0], v62);
  }

LABEL_31:
}

+ (uint64_t)responderSupportsPencilTextInput:(uint64_t)input
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = PKScribbleInteractionInTextInput(v2);
  isElementContainer = [v4 isElementContainer];
  if (objc_opt_respondsToSelector())
  {
    isEnabled = [v4 isEnabled];
  }

  else
  {
    isEnabled = 1;
  }

  if (isElementContainer & isEnabled)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(PKTextInputElementsFinder *)v3 isResponderEditableTextInput:v2];
  }

  return v7;
}

void __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (v9 && *(v9 + 24) == 4)
  {
    v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218498;
      v17 = [v8 count];
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = a4;
      _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring text input elements: %ld because of timeout. Interaction: %@. Duration: %0.3fs.", &v16, 0x20u);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218498;
      v17 = [v8 count];
      v18 = 2112;
      v19 = v7;
      v20 = 2048;
      v21 = a4;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Received text input elements: %ld. Interaction: %@. Duration: %0.3fs.", &v16, 0x20u);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    [v13 removeObject:v7];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(v14 + 56);
    }

    else
    {
      v15 = 0;
    }

    [v15 addObjectsFromArray:v8];
    [(PKTextInputElementsFinder *)*(a1 + 32) _finishFindIfReadyTimedOut:?];
  }
}

- (void)_finishFindIfReadyTimedOut:(uint64_t)out
{
  v35 = *MEMORY[0x1E69E9840];
  if (out && (*(out + 24) - 3) >= 2 && ![*(out + 32) count] && (*(out + 10) & 1) == 0)
  {
    v2 = 3;
    if (a2)
    {
      v2 = 4;
    }

    *(out + 24) = v2;
    v3 = *(out + 48);
    v4 = *(out + 56);
    v5 = v3;
    objc_opt_self();
    v16 = v4;
    if ([v5 count])
    {
      v20 = [MEMORY[0x1E695DFA8] set];
      v6 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v4;
      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v7)
      {
        v8 = *v31;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v31 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v30 + 1) + 8 * i);
            v24 = 0;
            v25 = &v24;
            v26 = 0x3032000000;
            v27 = __Block_byref_object_copy__4;
            v28 = __Block_byref_object_dispose__4;
            v29 = v10;
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __61__PKTextInputElementsFinder__uniqueElements_reusingElements___block_invoke;
            v21[3] = &unk_1E82D7B60;
            v21[4] = v29;
            v23 = &v24;
            v22 = v6;
            [v5 enumerateObjectsAtIndexes:v22 options:0 usingBlock:v21];
            [v20 addObject:v25[5]];

            _Block_object_dispose(&v24, 8);
          }

          v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v20 = v4;
    }

    outCopy2 = out;
    v13 = *(out + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v20, a2);
      outCopy2 = out;
    }

    v14 = outCopy2;
    objc_setProperty_nonatomic_copy(outCopy2, v11, 0, 40);
    v15 = v14[6];
    v14[6] = 0;
  }
}

- (void)_collectTextInputs:(void *)inputs asyncElementContainers:(void *)containers underView:(void *)view referenceHitPoint:(uint64_t)point referenceSearchArea:(void *)area referenceCoordSpace:(void *)space nearPointOnly:(CGFloat)only firstResponderTextInputView:(CGFloat)self0 elementContainerCompletion:(double)self1
{
  v107 = *MEMORY[0x1E69E9840];
  v92 = a2;
  inputsCopy = inputs;
  containersCopy = containers;
  viewCopy = view;
  areaCopy = area;
  spaceCopy = space;
  v32 = off_1E82D4000;
  point = [(PKTextInputElementsFinder *)only _shouldConsiderTextInputSearchForView:inputView referenceHitPoint:PKTextInputElementsFinder referenceCoordSpace:containersCopy nearPointOnly:viewCopy, point];
  if (point)
  {
    v34 = point;
    if (point == 1)
    {
      v35 = containersCopy;
      objc_opt_self();
      v36 = PKScribbleInteractionInView(v35);

      if ([v36 isElementContainer])
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v32 = off_1E82D4000;
    }

    else
    {
      v38 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v39 = [v38 isEnabled] ^ 1;
      if (!v38)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v39 = 0;
      if (!v38)
      {
        goto LABEL_21;
      }
    }

    if (!v39)
    {
      viewCopy = [(PKTextInputElementsFinder *)only _isReachableHitTestView:inputView nearPoint:v32[389] coordSpace:containersCopy, viewCopy];
      v41 = [PKTextInputUtilities isValidReachableInteraction:containersCopy];
      if (viewCopy)
      {
        v42 = inputsCopy && v41;
        if (spaceCopy && v42)
        {
          v43 = v38;
          window = [containersCopy window];
          [window bounds];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
          window2 = [containersCopy window];
          [containersCopy PK_convertRect:window2 fromView:{v46, v48, v50, v52}];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          subviews = +[PKTextInputSettings sharedSettings];
          if ([subviews useLargeHitTestArea])
          {
            [containersCopy bounds];
          }

          else
          {
            [containersCopy PK_convertRect:viewCopy fromCoordinateSpace:{completion, a12, a13, a14}];
          }

          v38 = v43;
          v109.origin.x = v55;
          v109.origin.y = v57;
          v109.size.width = v59;
          v109.size.height = v61;
          v108 = CGRectIntersection(*&v63, v109);
          x = v108.origin.x;
          y = v108.origin.y;
          width = v108.size.width;
          height = v108.size.height;
          if (!CGRectIsNull(v108))
          {
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v84 = v83;
            [inputsCopy addObject:v43];
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = __208__PKTextInputElementsFinder__collectTextInputs_asyncElementContainers_underView_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_firstResponderTextInputView_elementContainerCompletion___block_invoke;
            v97[3] = &unk_1E82D7B88;
            v100 = v84;
            v98 = v43;
            v99 = spaceCopy;
            [v98 requestElementsInRect:v97 completion:{x, y, width, height}];
          }

          goto LABEL_57;
        }
      }

      v32 = off_1E82D4000;
      if (v34 != 1)
      {
LABEL_49:
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        subviews = [containersCopy subviews];
        v75 = [subviews countByEnumeratingWithState:&v93 objects:v105 count:16];
        if (v75)
        {
          v76 = v75;
          v87 = v38;
          v89 = containersCopy;
          v77 = *v94;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v94 != v77)
              {
                objc_enumerationMutation(subviews);
              }

              [(PKTextInputElementsFinder *)self _collectTextInputs:v92 asyncElementContainers:inputsCopy underView:*(*(&v93 + 1) + 8 * i) referenceHitPoint:viewCopy referenceSearchArea:point referenceCoordSpace:areaCopy nearPointOnly:spaceCopy firstResponderTextInputView:only elementContainerCompletion:inputView, completion, a12, a13, a14];
            }

            v76 = [subviews countByEnumeratingWithState:&v93 objects:v105 count:16];
          }

          while (v76);
          v38 = v87;
          containersCopy = v89;
        }

LABEL_57:

        goto LABEL_58;
      }

LABEL_24:
      if ([(PKTextInputElementsFinder *)v32[389] isResponderEditableTextInput:containersCopy])
      {
        if (*(self + 8))
        {
          v67 = 0;
        }

        else
        {
          v67 = containersCopy;
        }

        v68 = v67;
      }

      else
      {
        if (*(self + 9) != 1)
        {
          v69 = 0;
LABEL_33:
          if (containersCopy == areaCopy || v69)
          {
            if (([(PKTextInputElementsFinder *)only _isReachableHitTestView:inputView nearPoint:v32[389] coordSpace:containersCopy, viewCopy]& 1) != 0)
            {
LABEL_47:
              [v92 addObject:{v69, v85}];
            }

            else
            {
              v85 = v69;
              v86 = v38;
              v88 = containersCopy;
              v90 = containersCopy;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v70 = *(self + 48);
              v71 = [v70 countByEnumeratingWithState:&v101 objects:v106 count:16];
              if (v71)
              {
                v72 = v71;
                v91 = *v102;
                while (2)
                {
                  for (j = 0; j != v72; ++j)
                  {
                    if (*v102 != v91)
                    {
                      objc_enumerationMutation(v70);
                    }

                    v74 = *(*(&v101 + 1) + 8 * j);
                    if ([(PKTextInputElement *)v74 isFocused]&& ([(PKTextInputElement *)v74 isElementView:v90]& 1) != 0)
                    {

                      v69 = v85;
                      v38 = v86;
                      containersCopy = v88;
                      goto LABEL_47;
                    }
                  }

                  v72 = [v70 countByEnumeratingWithState:&v101 objects:v106 count:16];
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }
              }

              v69 = v85;
              v38 = v86;
              containersCopy = v88;
            }
          }

          goto LABEL_49;
        }

        v68 = [PKTextInputUtilities nonEditableTextInputForView:containersCopy];
      }

      v69 = v68;
      goto LABEL_33;
    }

LABEL_21:
    [PKTextInputUtilities isValidReachableInteraction:containersCopy];
    if (v34 != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_24;
  }

LABEL_58:
}

void __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[3] == 2)
  {
    v4 = WeakRetained;
    v2 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v4 + 4);
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEFAULT, "Text input elements request timed out for containers: %@.", buf, 0xCu);
    }

    [*(v4 + 4) removeAllObjects];
    [(PKTextInputElementsFinder *)v4 _finishFindIfReadyTimedOut:?];
    WeakRetained = v4;
  }
}

void __61__PKTextInputElementsFinder__uniqueElements_reusingElements___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([(PKTextInputElement *)v8 isEquivalentToElement:?])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    [(PKTextInputElement *)v8 updateFromEquivalentElement:?];
    [*(a1 + 40) removeIndex:a3];
    *a4 = 1;
  }
}

+ (uint64_t)_shouldConsiderTextInputSearchForView:(uint64_t)view referenceHitPoint:(void *)point referenceCoordSpace:(void *)space nearPointOnly:(int)only
{
  pointCopy = point;
  spaceCopy = space;
  objc_opt_self();
  if (([pointCopy isHidden] & 1) != 0 || (objc_msgSend(pointCopy, "alpha"), v12 == 0.0))
  {
    v13 = 0;
    goto LABEL_4;
  }

  window = [pointCopy window];
  [window bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  window2 = [pointCopy window];
  [pointCopy PK_convertRect:window2 fromView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [pointCopy bounds];
  v59.origin.x = v26;
  v59.origin.y = v28;
  v59.size.width = v30;
  v59.size.height = v32;
  v55 = CGRectIntersection(v54, v59);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  [pointCopy frame];
  if (CGRectIsEmpty(v56) || (v57.origin.x = x, v57.origin.y = y, v57.size.width = width, v57.size.height = height, CGRectIsNull(v57)))
  {
    if ([pointCopy clipsToBounds])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_4;
  }

  if (!only)
  {
LABEL_18:
    [PKTextInputFakeInteractions attachFakeInteractionToViewIfNecessary:pointCopy];
    v13 = 1;
    goto LABEL_4;
  }

  v37 = +[PKTextInputSettings sharedSettings];
  [v37 textInputViewHitTestSlackHorizontal];
  v39 = v38;
  [v37 firstResponderAttractionHorizontal];
  if (v39 >= v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = v40;
  }

  [v37 textInputViewHitTestSlackVertical];
  v43 = v42;
  [v37 firstResponderAttractionVertical];
  if (v43 < v44)
  {
    v43 = v44;
  }

  objc_opt_self();
  [pointCopy bounds];
  v49 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(pointCopy, spaceCopy, v45, v46, v47, v48);
  v58.origin.x = [(PKTextInputElement *)v49 hitToleranceFrameFromElementFrame:v50 insets:v51, v52, -v43, -v41];
  v53.x = self;
  v53.y = a2;
  if (CGRectContainsPoint(v58, v53))
  {

    goto LABEL_18;
  }

  if ([pointCopy clipsToBounds])
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

LABEL_4:
  return v13;
}

+ (uint64_t)_isReachableHitTestView:(uint64_t)view nearPoint:(void *)point coordSpace:(void *)space
{
  v45 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  spaceCopy = space;
  v10 = objc_opt_self();
  window = [pointCopy window];
  if (window)
  {
    [pointCopy bounds];
    [pointCopy PK_convertRect:window toView:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [window bounds];
    v54.origin.x = v20;
    v54.origin.y = v21;
    v54.size.width = v22;
    v54.size.height = v23;
    v47.origin.x = v13;
    v47.origin.y = v15;
    v47.size.width = v17;
    v47.size.height = v19;
    v48 = NSIntersectionRect(v47, v54);
    v49 = CGRectInset(v48, 2.0, 2.0);
    x = v49.origin.x;
    y = v49.origin.y;
    width = v49.size.width;
    height = v49.size.height;
    if (!CGRectIsNull(v49))
    {
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      MidX = CGRectGetMidX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      MidY = CGRectGetMidY(v51);
      if (spaceCopy)
      {
        [window PK_convertPoint:spaceCopy fromCoordinateSpace:{self, a2}];
        v32 = v31;
        v34 = v33;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v46.x = v32;
        v46.y = v34;
        if (CGRectContainsPoint(v52, v46))
        {
          x = v32;
LABEL_7:
          y = v34;
          goto LABEL_14;
        }

        if (v32 >= x)
        {
          v35 = x + width;
          v36 = v32 <= x + width;
          x = v32;
          if (!v36)
          {
            x = v35;
          }
        }

        if (v34 >= y)
        {
          y = y + height;
          if (v34 <= y)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        x = MidX;
        y = MidY;
      }

LABEL_14:
      v37 = [window hitTest:0 withEvent:{x, y}];
      if (([v37 isDescendantOfView:pointCopy] & 1) == 0)
      {
        [v37 frame];
        if (!CGRectIsEmpty(v53) || ([v37 subviews], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v39, v40))
        {
          v38 = 0;
LABEL_19:
          if (qword_1EC297168 == -1)
          {
            if (v38)
            {
              goto LABEL_24;
            }
          }

          else
          {
            dispatch_once(&qword_1EC297168, &__block_literal_global_20);
            if (v38)
            {
              goto LABEL_24;
            }
          }

          if (_MergedGlobals_39 && qword_1EC297158)
          {
            v38 |= objc_opt_isKindOfClass();
          }

LABEL_24:
          if (v38 & 1) == 0 && qword_1EC297160 && (objc_opt_isKindOfClass())
          {
            if ((objc_opt_respondsToSelector() & 1) == 0 || ([v37 suppressesBackdrops] & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (v38)
          {
LABEL_29:
            v28 = [(PKTextInputElementsFinder *)x _anyOtherWindowAboveWindow:v10 position:window]^ 1;
LABEL_32:

            goto LABEL_33;
          }

          v28 = 0;
          goto LABEL_32;
        }

        v42 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = 138412290;
          v44 = v37;
          _os_log_debug_impl(&dword_1C7CCA000, v42, OS_LOG_TYPE_DEBUG, "ignoring empty hitView during elementFinder reachability check: %@", &v43, 0xCu);
        }
      }

      v38 = 1;
      goto LABEL_19;
    }
  }

  v28 = 0;
LABEL_33:

  return v28;
}

void __208__PKTextInputElementsFinder__collectTextInputs_asyncElementContainers_underView_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_firstResponderTextInputView_elementContainerCompletion___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [[PKTextInputElement alloc] initWithElementInteraction:*(*(&v18 + 1) + 8 * i) elementIdentifier:v13 orderInContainer:?];
        v17 = v16;
        if (v16)
        {
          *(v16 + 50) = a3 == v13;
        }

        [v9 addObject:{v16, v18}];
        ++v13;
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 40) + 16))(v7 - v8);
}

+ (uint64_t)isResponderEditableTextInput:(uint64_t)input
{
  v2 = a2;
  objc_opt_self();
  if ([PKTextInputUtilities isResponderSupportedTextInput:v2])
  {
    v3 = PKScribbleInteractionInTextInput(v2);
    if (([v3 supportsShouldBegin] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      isEditable = 1;
    }

    else
    {
      isEditable = [v2 isEditable];
    }
  }

  else
  {
    isEditable = 0;
  }

  return isEditable;
}

+ (BOOL)isResponderNonEditableTextInput:(uint64_t)input
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = objc_opt_class();
  v5 = PKDynamicCast(v4, v2);
  if (v5 && ([(PKTextInputElementsFinder *)v3 isResponderEditableTextInput:v2]& 1) == 0)
  {
    v7 = [PKTextInputUtilities nonEditableTextInputForView:v5];
    v6 = v7 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (uint64_t)shouldDisableInputAssistantForTextInput:(uint64_t)input
{
  v2 = a2;
  objc_opt_self();
  if ([PKTextInputUtilities isResponderSupportedTextInput:v2]&& [PKTextInputUtilities responderTextInputSource:v2]== 3)
  {
    v3 = PKScribbleInteractionInTextInput(v2);
    if (objc_opt_respondsToSelector())
    {
      shouldDisableInputAssistant = [v3 shouldDisableInputAssistant];
    }

    else
    {
      shouldDisableInputAssistant = 0;
    }
  }

  else
  {
    shouldDisableInputAssistant = 0;
  }

  return shouldDisableInputAssistant;
}

+ (BOOL)shouldConsiderTextInputSearchForView:(uint64_t)view referenceHitPoint:(void *)point referenceCoordSpace:(void *)space
{
  spaceCopy = space;
  pointCopy = point;
  v10 = objc_opt_self();
  v11 = [(PKTextInputElementsFinder *)self _shouldConsiderTextInputSearchForView:a2 referenceHitPoint:v10 referenceCoordSpace:pointCopy nearPointOnly:spaceCopy, 0];

  return v11 == 1;
}

Class __74__PKTextInputElementsFinder__isReachableHitTestView_nearPoint_coordSpace___block_invoke()
{
  _MergedGlobals_39 = NSClassFromString(&cfstr_Uitextrangevie.isa);
  qword_1EC297158 = NSClassFromString(&cfstr_Wkcontentview.isa);
  result = NSClassFromString(&cfstr_Uidimmingview.isa);
  qword_1EC297160 = result;
  return result;
}

+ (uint64_t)_anyOtherWindowAboveWindow:(uint64_t)window position:(void *)position
{
  v26 = *MEMORY[0x1E69E9840];
  positionCopy = position;
  objc_opt_self();
  windowScene = [positionCopy windowScene];
  _visibleWindows = [windowScene _visibleWindows];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = _visibleWindows;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (v13 != positionCopy)
        {
          [*(*(&v21 + 1) + 8 * i) windowLevel];
          v15 = v14;
          [positionCopy windowLevel];
          if (v15 > v16)
          {
            [positionCopy PK_convertPoint:v13 toView:{self, a2}];
            v17 = [v13 hitTest:0 withEvent:?];
            if (v17)
            {
              v18 = v17;
              window = [v17 window];

              if (window == v13)
              {
                v10 = 1;
                goto LABEL_14;
              }
            }
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v10;
}

+ (uint64_t)shouldAvoidElementWithHitView:(uint64_t)view
{
  v2 = a2;
  objc_opt_self();
  if (qword_1EC297178 != -1)
  {
    dispatch_once(&qword_1EC297178, &__block_literal_global_33);
  }

  if (qword_1EC297170 && (v3 = v2) != 0)
  {
    v4 = v3;
    do
    {
      v5 = [qword_1EC297170 containsObject:objc_opt_class()];
      if (v5)
      {
        break;
      }

      superview = [v4 superview];

      v4 = superview;
    }

    while (superview);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __59__PKTextInputElementsFinder_shouldAvoidElementWithHitView___block_invoke()
{
  v0 = NSClassFromString(&cfstr_Uicontextmenuv.isa);
  if (v0)
  {
    v0 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  }

  v1 = qword_1EC297170;
  qword_1EC297170 = v0;
}

@end