@interface PKTextInputElementsFinder
+ (BOOL)isResponderNonEditableTextInput:(uint64_t)a1;
+ (BOOL)shouldConsiderTextInputSearchForView:(uint64_t)a3 referenceHitPoint:(void *)a4 referenceCoordSpace:(void *)a5;
+ (uint64_t)_anyOtherWindowAboveWindow:(uint64_t)a3 position:(void *)a4;
+ (uint64_t)_isReachableHitTestView:(uint64_t)a3 nearPoint:(void *)a4 coordSpace:(void *)a5;
+ (uint64_t)_shouldConsiderTextInputSearchForView:(uint64_t)a3 referenceHitPoint:(void *)a4 referenceCoordSpace:(void *)a5 nearPointOnly:(int)a6;
+ (uint64_t)isResponderEditableTextInput:(uint64_t)a1;
+ (uint64_t)responderSupportsPencilTextInput:(uint64_t)a1;
+ (uint64_t)shouldAvoidElementWithHitView:(uint64_t)a1;
+ (uint64_t)shouldDisableInputAssistantForTextInput:(uint64_t)a1;
- (id)initWithWindowsToSearch:(id)a1;
- (void)_collectTextInputs:(void *)a3 asyncElementContainers:(void *)a4 underView:(void *)a5 referenceHitPoint:(uint64_t)a6 referenceSearchArea:(void *)a7 referenceCoordSpace:(void *)a8 nearPointOnly:(CGFloat)a9 firstResponderTextInputView:(CGFloat)a10 elementContainerCompletion:(double)a11;
- (void)_findAvailableTextInputElementsWithReusableElements:(void *)a3 referenceHitPoint:(unsigned int)a4 referenceSearchArea:(void *)a5 referenceCoordSpace:(CGFloat)a6 nearPointOnly:(CGFloat)a7 completion:(CGFloat)a8;
- (void)_finishFindIfReadyTimedOut:(uint64_t)a1;
@end

@implementation PKTextInputElementsFinder

- (id)initWithWindowsToSearch:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = PKTextInputElementsFinder;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = *(a1 + 2);
      *(a1 + 2) = v4;

      *(a1 + 3) = 0;
      v6 = +[PKTextInputSettings sharedSettings];
      *(a1 + 9) = [v6 enableOnNonEditableViews];
    }
  }

  return a1;
}

- (void)_findAvailableTextInputElementsWithReusableElements:(void *)a3 referenceHitPoint:(unsigned int)a4 referenceSearchArea:(void *)a5 referenceCoordSpace:(CGFloat)a6 nearPointOnly:(CGFloat)a7 completion:(CGFloat)a8
{
  v77 = *MEMORY[0x1E69E9840];
  v56 = a2;
  v61 = a3;
  newValue = a5;
  if (!a1)
  {
    goto LABEL_31;
  }

  v57 = +[PKTextInputSettings sharedSettings];
  [v57 firstResponderAttractionHorizontal];
  v22 = v21 + v21;
  [v57 firstResponderAttractionVertical];
  v80.size.height = v23 + v23;
  v80.origin.x = a6 - v22 * 0.5;
  v80.origin.y = a7 - (v23 + v23) * 0.5;
  v78.origin.x = a8;
  v78.origin.y = a9;
  v78.size.width = a10;
  v78.size.height = a11;
  v80.size.width = v22;
  v79 = CGRectUnion(v78, v80);
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  objc_setProperty_nonatomic_copy(a1, v28, newValue, 40);
  objc_storeStrong((a1 + 48), a2);
  v29 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
  *(a1 + 24) = 1;
  v30 = [MEMORY[0x1E695DFA8] set];
  v31 = *(a1 + 56);
  *(a1 + 56) = v30;

  v32 = [MEMORY[0x1E695DFA8] set];
  v33 = *(a1 + 32);
  *(a1 + 32) = v32;

  *(a1 + 10) = 1;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = *(a1 + 16);
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
      v38 = [v37 firstResponder];
      v39 = +[PKTextInputSettings sharedSettings];
      if ([v39 enableViewControllerSupport])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = [PKTextInputElementsFinder responderSupportsPencilTextInput:v38];

          if (!v41)
          {
            goto LABEL_10;
          }

          v39 = [v38 textInputView];
          if (v39 != v38)
          {
            goto LABEL_11;
          }
        }
      }

LABEL_10:
      v39 = 0;
LABEL_11:
      v40 = *(a1 + 32);
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __164__PKTextInputElementsFinder__findAvailableTextInputElementsWithReusableElements_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_completion___block_invoke;
      v70[3] = &unk_1E82D7B38;
      v70[4] = a1;
      [(PKTextInputElementsFinder *)a1 _collectTextInputs:v29 asyncElementContainers:v40 underView:v37 referenceHitPoint:v61 referenceSearchArea:a4 referenceCoordSpace:v39 nearPointOnly:v70 firstResponderTextInputView:a6 elementContainerCompletion:a7, x, y, width, height];
      if (v39 && [v29 containsObject:v39])
      {
        [v29 removeObject:v39];
        [v29 addObject:v38];
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
        [*(a1 + 56) addObject:v47];
      }

      v44 = [v43 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v44);
  }

  *(a1 + 10) = 0;
  if ([*(a1 + 32) count])
  {
    *(a1 + 24) = 2;
    objc_initWeak(&location, a1);
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
    v62[4] = a1;
    dispatch_after(v55, MEMORY[0x1E69E96A0], v62);
  }

LABEL_31:
}

+ (uint64_t)responderSupportsPencilTextInput:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = PKScribbleInteractionInTextInput(v2);
  v5 = [v4 isElementContainer];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 isEnabled];
  }

  else
  {
    v6 = 1;
  }

  if (v5 & v6)
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

- (void)_finishFindIfReadyTimedOut:(uint64_t)a1
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 24) - 3) >= 2 && ![*(a1 + 32) count] && (*(a1 + 10) & 1) == 0)
  {
    v2 = 3;
    if (a2)
    {
      v2 = 4;
    }

    *(a1 + 24) = v2;
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
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

    v12 = a1;
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v20, a2);
      v12 = a1;
    }

    v14 = v12;
    objc_setProperty_nonatomic_copy(v12, v11, 0, 40);
    v15 = v14[6];
    v14[6] = 0;
  }
}

- (void)_collectTextInputs:(void *)a3 asyncElementContainers:(void *)a4 underView:(void *)a5 referenceHitPoint:(uint64_t)a6 referenceSearchArea:(void *)a7 referenceCoordSpace:(void *)a8 nearPointOnly:(CGFloat)a9 firstResponderTextInputView:(CGFloat)a10 elementContainerCompletion:(double)a11
{
  v107 = *MEMORY[0x1E69E9840];
  v92 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a7;
  v31 = a8;
  v32 = off_1E82D4000;
  v33 = [(PKTextInputElementsFinder *)a9 _shouldConsiderTextInputSearchForView:a10 referenceHitPoint:PKTextInputElementsFinder referenceCoordSpace:v28 nearPointOnly:v29, a6];
  if (v33)
  {
    v34 = v33;
    if (v33 == 1)
    {
      v35 = v28;
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
      v40 = [(PKTextInputElementsFinder *)a9 _isReachableHitTestView:a10 nearPoint:v32[389] coordSpace:v28, v29];
      v41 = [PKTextInputUtilities isValidReachableInteraction:v28];
      if (v40)
      {
        v42 = v27 && v41;
        if (v31 && v42)
        {
          v43 = v38;
          v44 = [v28 window];
          [v44 bounds];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v53 = [v28 window];
          [v28 PK_convertRect:v53 fromView:{v46, v48, v50, v52}];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          v62 = +[PKTextInputSettings sharedSettings];
          if ([v62 useLargeHitTestArea])
          {
            [v28 bounds];
          }

          else
          {
            [v28 PK_convertRect:v29 fromCoordinateSpace:{a11, a12, a13, a14}];
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
            [v27 addObject:v43];
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = __208__PKTextInputElementsFinder__collectTextInputs_asyncElementContainers_underView_referenceHitPoint_referenceSearchArea_referenceCoordSpace_nearPointOnly_firstResponderTextInputView_elementContainerCompletion___block_invoke;
            v97[3] = &unk_1E82D7B88;
            v100 = v84;
            v98 = v43;
            v99 = v31;
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
        v62 = [v28 subviews];
        v75 = [v62 countByEnumeratingWithState:&v93 objects:v105 count:16];
        if (v75)
        {
          v76 = v75;
          v87 = v38;
          v89 = v28;
          v77 = *v94;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v94 != v77)
              {
                objc_enumerationMutation(v62);
              }

              [(PKTextInputElementsFinder *)a1 _collectTextInputs:v92 asyncElementContainers:v27 underView:*(*(&v93 + 1) + 8 * i) referenceHitPoint:v29 referenceSearchArea:a6 referenceCoordSpace:v30 nearPointOnly:v31 firstResponderTextInputView:a9 elementContainerCompletion:a10, a11, a12, a13, a14];
            }

            v76 = [v62 countByEnumeratingWithState:&v93 objects:v105 count:16];
          }

          while (v76);
          v38 = v87;
          v28 = v89;
        }

LABEL_57:

        goto LABEL_58;
      }

LABEL_24:
      if ([(PKTextInputElementsFinder *)v32[389] isResponderEditableTextInput:v28])
      {
        if (*(a1 + 8))
        {
          v67 = 0;
        }

        else
        {
          v67 = v28;
        }

        v68 = v67;
      }

      else
      {
        if (*(a1 + 9) != 1)
        {
          v69 = 0;
LABEL_33:
          if (v28 == v30 || v69)
          {
            if (([(PKTextInputElementsFinder *)a9 _isReachableHitTestView:a10 nearPoint:v32[389] coordSpace:v28, v29]& 1) != 0)
            {
LABEL_47:
              [v92 addObject:{v69, v85}];
            }

            else
            {
              v85 = v69;
              v86 = v38;
              v88 = v28;
              v90 = v28;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v70 = *(a1 + 48);
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
                      v28 = v88;
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
              v28 = v88;
            }
          }

          goto LABEL_49;
        }

        v68 = [PKTextInputUtilities nonEditableTextInputForView:v28];
      }

      v69 = v68;
      goto LABEL_33;
    }

LABEL_21:
    [PKTextInputUtilities isValidReachableInteraction:v28];
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

+ (uint64_t)_shouldConsiderTextInputSearchForView:(uint64_t)a3 referenceHitPoint:(void *)a4 referenceCoordSpace:(void *)a5 nearPointOnly:(int)a6
{
  v10 = a4;
  v11 = a5;
  objc_opt_self();
  if (([v10 isHidden] & 1) != 0 || (objc_msgSend(v10, "alpha"), v12 == 0.0))
  {
    v13 = 0;
    goto LABEL_4;
  }

  v15 = [v10 window];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v10 window];
  [v10 PK_convertRect:v24 fromView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v10 bounds];
  v59.origin.x = v26;
  v59.origin.y = v28;
  v59.size.width = v30;
  v59.size.height = v32;
  v55 = CGRectIntersection(v54, v59);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  [v10 frame];
  if (CGRectIsEmpty(v56) || (v57.origin.x = x, v57.origin.y = y, v57.size.width = width, v57.size.height = height, CGRectIsNull(v57)))
  {
    if ([v10 clipsToBounds])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    goto LABEL_4;
  }

  if (!a6)
  {
LABEL_18:
    [PKTextInputFakeInteractions attachFakeInteractionToViewIfNecessary:v10];
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
  [v10 bounds];
  v49 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v10, v11, v45, v46, v47, v48);
  v58.origin.x = [(PKTextInputElement *)v49 hitToleranceFrameFromElementFrame:v50 insets:v51, v52, -v43, -v41];
  v53.x = a1;
  v53.y = a2;
  if (CGRectContainsPoint(v58, v53))
  {

    goto LABEL_18;
  }

  if ([v10 clipsToBounds])
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

+ (uint64_t)_isReachableHitTestView:(uint64_t)a3 nearPoint:(void *)a4 coordSpace:(void *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [v8 window];
  if (v11)
  {
    [v8 bounds];
    [v8 PK_convertRect:v11 toView:?];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v11 bounds];
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
      if (v9)
      {
        [v11 PK_convertPoint:v9 fromCoordinateSpace:{a1, a2}];
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
      v37 = [v11 hitTest:0 withEvent:{x, y}];
      if (([v37 isDescendantOfView:v8] & 1) == 0)
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
            v28 = [(PKTextInputElementsFinder *)x _anyOtherWindowAboveWindow:v10 position:v11]^ 1;
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

+ (uint64_t)isResponderEditableTextInput:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([PKTextInputUtilities isResponderSupportedTextInput:v2])
  {
    v3 = PKScribbleInteractionInTextInput(v2);
    if (([v3 supportsShouldBegin] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = [v2 isEditable];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isResponderNonEditableTextInput:(uint64_t)a1
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

+ (uint64_t)shouldDisableInputAssistantForTextInput:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if ([PKTextInputUtilities isResponderSupportedTextInput:v2]&& [PKTextInputUtilities responderTextInputSource:v2]== 3)
  {
    v3 = PKScribbleInteractionInTextInput(v2);
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 shouldDisableInputAssistant];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldConsiderTextInputSearchForView:(uint64_t)a3 referenceHitPoint:(void *)a4 referenceCoordSpace:(void *)a5
{
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_self();
  v11 = [(PKTextInputElementsFinder *)a1 _shouldConsiderTextInputSearchForView:a2 referenceHitPoint:v10 referenceCoordSpace:v9 nearPointOnly:v8, 0];

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

+ (uint64_t)_anyOtherWindowAboveWindow:(uint64_t)a3 position:(void *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_opt_self();
  v7 = [v6 windowScene];
  v8 = [v7 _visibleWindows];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
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
        if (v13 != v6)
        {
          [*(*(&v21 + 1) + 8 * i) windowLevel];
          v15 = v14;
          [v6 windowLevel];
          if (v15 > v16)
          {
            [v6 PK_convertPoint:v13 toView:{a1, a2}];
            v17 = [v13 hitTest:0 withEvent:?];
            if (v17)
            {
              v18 = v17;
              v19 = [v17 window];

              if (v19 == v13)
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

+ (uint64_t)shouldAvoidElementWithHitView:(uint64_t)a1
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

      v6 = [v4 superview];

      v4 = v6;
    }

    while (v6);
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