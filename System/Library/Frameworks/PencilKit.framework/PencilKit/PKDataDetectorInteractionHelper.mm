@interface PKDataDetectorInteractionHelper
- (_BYTE)setShouldHideItems:(_BYTE *)result;
- (double)boundingBoxForHashtagOrMentionWithUUID:(uint64_t)d;
- (id)_accessibilityUserTestingChildren;
- (id)drawing;
- (id)initWithView:(void *)view parentView:(void *)parentView recognitionController:;
- (id)inlineViewAtPoint:(double)point;
- (id)setDelegate:(id *)result;
- (id)window;
- (uint64_t)removeDetectionViews;
- (uint64_t)setDetectionViewsHidden:(uint64_t)result;
- (uint64_t)updateHashtagsAndMentionsActivationState;
- (void)_removeViews:(void *)views animated:(char)animated;
- (void)_updateAllPossibleParticipantNameTokens:(uint64_t)tokens;
- (void)foundDataDetectorItems:(uint64_t)items;
- (void)foundProofreadingItems:(uint64_t)items;
- (void)hashtagViewDidActivateHashtag:(id)hashtag;
- (void)hashtagViewDidDeactivateHashtag:(id)hashtag;
- (void)hashtagViewWillDeactivateHashtag:(id)hashtag;
- (void)layoutInlineViewsDrawingTransform:(id *)transform;
- (void)mentionViewDidActivateMention:(id)mention withParticpant:(id)particpant;
- (void)mentionViewDidDeactivateMention:(id)mention;
- (void)mentionViewWillDeactivateMention:(id)mention;
- (void)proofreadingView:(id)view didReplaceWithString:(id)string;
- (void)proofreadingView:(id)view willDismissStringsForProofreadingItem:(id)item;
- (void)proofreadingView:(id)view willPresentStringsForProofreadingItem:(id)item;
- (void)registerUndoCommand:(uint64_t)command;
- (void)sessionManager;
- (void)setAdditionalStrokes:(uint64_t)strokes;
- (void)setAttachmentView:(id *)view;
- (void)setHashtagAndMentionsDelegate:(uint64_t)delegate;
- (void)setReflowingStrokeIds:(id *)ids;
- (void)setWantsDataDetection:(uint64_t)detection;
- (void)setWantsHashtagDetection:(uint64_t)detection;
- (void)setWantsMentionDetection:(uint64_t)detection;
- (void)setWantsProofreadingDetection:(uint64_t)detection;
- (void)updateAllPossibleParticipantNameTokens;
- (void)updateDetectionViewVisibility;
- (void)updateDetectionViews:(void *)views withItems:(void *)items previousItems:;
- (void)updateMentionResults:(uint64_t)results;
@end

@implementation PKDataDetectorInteractionHelper

- (id)initWithView:(void *)view parentView:(void *)parentView recognitionController:
{
  v7 = a2;
  viewCopy = view;
  parentViewCopy = parentView;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = PKDataDetectorInteractionHelper;
    v10 = objc_msgSendSuper2(&v13, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 4, v7);
      if (viewCopy)
      {
        v11 = viewCopy;
      }

      else
      {
        v11 = v7;
      }

      objc_storeWeak(self + 5, v11);
      objc_storeWeak(self + 6, parentViewCopy);
      [(PKDataDetectorInteractionHelper *)self setDetectionViewsHidden:?];
    }
  }

  return self;
}

- (uint64_t)setDetectionViewsHidden:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 13) != a2)
    {
      *(result + 13) = a2;
      if (a2)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke;
        v8[3] = &unk_1E82D7148;
        v8[4] = result;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_2;
        v7[3] = &unk_1E82D7148;
        v7[4] = v2;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_3;
        v6[3] = &unk_1E82D7148;
        v6[4] = v2;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_4;
        v5[3] = &unk_1E82D7148;
        v5[4] = result;
        [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.15];
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_5;
        v4[3] = &unk_1E82D7148;
        v4[4] = v2;
        [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.15];
        v3[0] = MEMORY[0x1E69E9820];
        v3[1] = 3221225472;
        v3[2] = __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_6;
        v3[3] = &unk_1E82D7148;
        v3[4] = v2;
        [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.15];
      }

      return [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v2 selector:sel_revealDetectionViews object:0];
    }
  }

  return result;
}

- (void)setHashtagAndMentionsDelegate:(uint64_t)delegate
{
  v3 = a2;
  if (delegate)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((delegate + 128));

    v3 = obj;
    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 128), obj);
      [(PKDataDetectorInteractionHelper *)delegate updateAllPossibleParticipantNameTokens];
      v3 = obj;
    }
  }
}

- (void)updateAllPossibleParticipantNameTokens
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 128));
    *(self + 12) = objc_opt_respondsToSelector() & 1;

    if (*(self + 12) == 1)
    {
      objc_initWeak(&location, self);
      v3 = objc_loadWeakRetained((self + 128));
      v4 = objc_loadWeakRetained((self + 136));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__PKDataDetectorInteractionHelper_updateAllPossibleParticipantNameTokens__block_invoke;
      v10[3] = &unk_1E82D8F58;
      objc_copyWeak(&v11, &location);
      [v3 allPossibleParticipantNameTokensForAttachmentView:v4 completion:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else
    {
      v5 = objc_loadWeakRetained((self + 128));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained((self + 128));
        v8 = objc_loadWeakRetained((self + 136));
        v9 = [v7 allPossibleParticipantNameTokensForAttachmentView:v8];

        [(PKDataDetectorInteractionHelper *)self _updateAllPossibleParticipantNameTokens:v9];
      }
    }
  }
}

- (void)setAttachmentView:(id *)view
{
  v3 = a2;
  if (view)
  {
    v9 = v3;
    objc_storeWeak(view + 17, v3);
    v3 = v9;
    if (v9)
    {
      if (!view[18])
      {
        v4 = objc_alloc(MEMORY[0x1E69DD250]);
        WeakRetained = objc_loadWeakRetained(view + 4);
        [WeakRetained bounds];
        v6 = [v4 initWithFrame:?];
        v7 = view[18];
        view[18] = v6;

        [view[18] setUserInteractionEnabled:0];
        v8 = objc_loadWeakRetained(view + 4);
        [v8 addSubview:view[18]];

        v3 = v9;
      }
    }
  }
}

- (_BYTE)setShouldHideItems:(_BYTE *)result
{
  if (result)
  {
    v2 = result;
    result[8] = a2;
    [result revealDetectionViews];
    v3 = MEMORY[0x1E69E58C0];

    return [v3 cancelPreviousPerformRequestsWithTarget:v2 selector:sel_revealDetectionViews object:0];
  }

  return result;
}

- (void)updateDetectionViewVisibility
{
  if (result)
  {
    v1 = result;
    [result revealDetectionViews];
    v2 = MEMORY[0x1E69E58C0];

    return [v2 cancelPreviousPerformRequestsWithTarget:v1 selector:sel_revealDetectionViews object:0];
  }

  return result;
}

- (uint64_t)removeDetectionViews
{
  if (result)
  {
    v1 = result;
    [*(result + 56) makeObjectsPerformSelector:sel_removeFromSuperview];
    [*(v1 + 56) removeAllObjects];
    [*(v1 + 88) removeAllObjects];
    [*(v1 + 72) makeObjectsPerformSelector:sel_removeFromSuperview];
    [*(v1 + 72) removeAllObjects];
    [*(v1 + 96) removeAllObjects];
    [*(v1 + 64) makeObjectsPerformSelector:sel_removeFromSuperview];
    [*(v1 + 64) removeAllObjects];
    v2 = *(v1 + 104);

    return [v2 removeAllObjects];
  }

  return result;
}

- (id)inlineViewAtPoint:(double)point
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = self[7];
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        WeakRetained = objc_loadWeakRetained(selfCopy + 4);
        [WeakRetained convertPoint:v11 toView:{a2, point}];
        v13 = [v11 hitTest:?];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v45 objects:v52 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v6 = selfCopy[9];
      v14 = [v6 countByEnumeratingWithState:&v41 objects:v51 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
LABEL_12:
        v17 = 0;
        while (1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * v17);
          v18 = objc_loadWeakRetained(selfCopy + 4);
          [v18 convertPoint:v11 toView:{a2, point}];
          v19 = [v11 hitTest:?];

          if (v19)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v6 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v15)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v6 = selfCopy[8];
        v20 = [v6 countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v38;
LABEL_20:
          v23 = 0;
          while (1)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v37 + 1) + 8 * v23);
            v24 = objc_loadWeakRetained(selfCopy + 4);
            [v24 convertPoint:v11 toView:{a2, point}];
            v25 = [v11 hitTest:?];

            if (v25)
            {
              break;
            }

            if (v21 == ++v23)
            {
              v21 = [v6 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v21)
              {
                goto LABEL_20;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
LABEL_26:

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v6 = selfCopy[10];
          v26 = [v6 countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (!v26)
          {
LABEL_34:
            selfCopy = 0;
LABEL_36:

            goto LABEL_37;
          }

          v27 = v26;
          v28 = *v34;
LABEL_28:
          v29 = 0;
          while (1)
          {
            if (*v34 != v28)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v33 + 1) + 8 * v29);
            v30 = objc_loadWeakRetained(selfCopy + 4);
            [v30 convertPoint:v11 toView:{a2, point, v33}];
            v31 = [v11 hitTest:?];

            if (v31)
            {
              break;
            }

            if (v27 == ++v29)
            {
              v27 = [v6 countByEnumeratingWithState:&v33 objects:v49 count:16];
              if (v27)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }
        }
      }
    }

    selfCopy = v11;
    goto LABEL_36;
  }

LABEL_37:

  return selfCopy;
}

- (void)foundDataDetectorItems:(uint64_t)items
{
  if (items)
  {
    [(PKDataDetectorInteractionHelper *)items updateDetectionViews:a2 withItems:*(items + 88) previousItems:?];
  }
}

- (void)updateMentionResults:(uint64_t)results
{
  v3 = a2;
  v4 = v3;
  if (results)
  {
    v7 = v3;
    if (*(results + 12) == 1)
    {
      v5 = [v3 mutableCopy];
      v6 = *(results + 104);
      *(results + 104) = v5;
    }

    else
    {
      [(PKDataDetectorInteractionHelper *)results updateDetectionViews:v3 withItems:*(results + 104) previousItems:?];
    }

    v4 = v7;
  }
}

- (void)foundProofreadingItems:(uint64_t)items
{
  v3 = a2;
  if (items)
  {
    if (*(items + 10))
    {
      [(PKDataDetectorInteractionHelper *)items updateDetectionViews:v3 withItems:*(items + 112) previousItems:?];
    }

    else
    {
      v4 = os_log_create("com.apple.pencilkit", "DataDetection");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Got proofreading items, but proofreading is disabled.", v5, 2u);
      }
    }
  }
}

- (void)layoutInlineViewsDrawingTransform:(id *)transform
{
  v42 = *MEMORY[0x1E69E9840];
  if (transform)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([transform[7] count])
    {
      [array addObjectsFromArray:transform[7]];
    }

    if ([transform[9] count])
    {
      [array addObjectsFromArray:transform[9]];
    }

    if ([transform[8] count])
    {
      [array addObjectsFromArray:transform[8]];
    }

    if ([transform[10] count])
    {
      [array addObjectsFromArray:transform[10]];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = array;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v38;
      v34 = *(MEMORY[0x1E695F058] + 8);
      v35 = *MEMORY[0x1E695F058];
      v32 = *(MEMORY[0x1E695F058] + 24);
      v33 = *(MEMORY[0x1E695F058] + 16);
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          [v11 drawingBounds];
          v12 = a2[1];
          *&v36.a = *a2;
          *&v36.c = v12;
          *&v36.tx = a2[2];
          CGRectApplyAffineTransform(v43, &v36);
          [v11 contentScaleFactor];
          UIRectIntegralWithScale();
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          [v11 setFrame:?];
          if (v11)
          {
            [v11 drawingTransform];
          }

          else
          {
            memset(&v36, 0, sizeof(v36));
          }

          v44.origin.x = v14;
          v44.origin.y = v16;
          v44.size.width = v18;
          v44.size.height = v20;
          v45 = CGRectApplyAffineTransform(v44, &v36);
          x = v45.origin.x;
          y = v45.origin.y;
          width = v45.size.width;
          height = v45.size.height;
          *&v45.origin.y = a2[1];
          *&v36.a = *a2;
          *&v36.c = *&v45.origin.y;
          *&v36.tx = a2[2];
          v45.origin.x = v14;
          v45.origin.y = v16;
          v45.size.width = v18;
          v45.size.height = v20;
          v46 = CGRectApplyAffineTransform(v45, &v36);
          v25 = vabdd_f64(y, v46.origin.y);
          v26 = vabdd_f64(x, v46.origin.x) < 1.0 && v25 < 1.0;
          v27 = vabdd_f64(width, v46.size.width);
          v28 = vabdd_f64(height, v46.size.height);
          if (!v26 || v27 >= 1.0 || v28 >= 1.0)
          {
            v31 = a2[1];
            *&v36.a = *a2;
            *&v36.c = v31;
            *&v36.tx = a2[2];
            [v11 setDrawingTransform:&v36];
            v47.origin.x = x;
            v47.origin.y = y;
            v47.size.width = width;
            v47.size.height = height;
            v48.origin.y = v34;
            v48.origin.x = v35;
            v48.size.height = v32;
            v48.size.width = v33;
            v8 = !CGRectEqualToRect(v47, v48);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v7);

      if (v8)
      {
        [(PKDataDetectorInteractionHelper *)transform setDetectionViewsHidden:?];
        [PKAttachmentView cancelPreviousPerformRequestsWithTarget:transform selector:sel_revealDetectionViews object:0];
        [transform performSelector:sel_revealDetectionViews withObject:0 afterDelay:0.2];
      }
    }

    else
    {
    }
  }
}

- (uint64_t)updateHashtagsAndMentionsActivationState
{
  if (result)
  {
    v1 = result;
    [*(result + 72) makeObjectsPerformSelector:sel_updateActivationState];
    v2 = *(v1 + 64);

    return [v2 makeObjectsPerformSelector:sel_updateActivationState];
  }

  return result;
}

- (void)setAdditionalStrokes:(uint64_t)strokes
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (strokes && *(strokes + 10) == 1 && *(strokes + 112) && [v3 count])
  {
    [MEMORY[0x1E695DF70] arrayWithArray:*(strokes + 112)];
    v23 = v22 = v4;
    v5 = MEMORY[0x1E695DFD8];
    v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];
    v7 = [PKStrokeProvider _identifiersForStrokes:v6];
    v8 = [v5 setWithArray:v7];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    strokesCopy = strokes;
    v9 = *(strokes + 80);
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = MEMORY[0x1E695DFD8];
          proofreadingItem = [v14 proofreadingItem];
          chStrokeIdentifiers = [proofreadingItem chStrokeIdentifiers];
          v18 = [v15 setWithArray:chStrokeIdentifiers];

          if ([v18 intersectsSet:v8])
          {
            proofreadingItem2 = [v14 proofreadingItem];
            [v23 removeObject:proofreadingItem2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    v20 = [v23 count];
    if (v20 != [*(strokesCopy + 112) count])
    {
      [(PKDataDetectorInteractionHelper *)strokesCopy updateDetectionViews:v23 withItems:*(strokesCopy + 112) previousItems:?];
    }

    v4 = v22;
  }
}

- (void)updateDetectionViews:(void *)views withItems:(void *)items previousItems:
{
  v171 = *MEMORY[0x1E69E9840];
  v7 = a2;
  viewsCopy = views;
  itemsCopy = items;
  v9 = itemsCopy;
  if (self)
  {
    if (v7)
    {
      v125 = itemsCopy;
      v130 = *(self + 11);
      array = [MEMORY[0x1E695DF70] array];
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v119 = v7;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v159 objects:v170 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v160;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v160 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v159 + 1) + 8 * i);
            item = [v16 item];
            v18 = [viewsCopy containsObject:item];

            if ((v18 & 1) == 0)
            {
              [array addObject:v16];
              item2 = [v16 item];
              [v125 removeObject:item2];

              item3 = [v16 item];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v22 = +[PKStatisticsManager sharedStatisticsManager];
                item4 = [v16 item];
                [(PKStatisticsManager *)v22 recordDataDetectorItemRemove:item4];
              }

              else
              {
                item5 = [v16 item];
                objc_opt_class();
                v25 = objc_opt_isKindOfClass();

                v26 = +[PKStatisticsManager sharedStatisticsManager];
                v22 = v26;
                if (v25)
                {
                  [(PKStatisticsManager *)v26 recordHashtagItemRemove];
                }

                else
                {
                  [(PKStatisticsManager *)v26 recordMentionItemRemove];
                }
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v159 objects:v170 count:16];
        }

        while (v13);
      }

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      obj = array;
      v27 = [obj countByEnumeratingWithState:&v155 objects:v169 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v156;
        do
        {
          v30 = 0;
          do
          {
            if (*v156 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v155 + 1) + 8 * v30);
            if (*(self + 13) == 1)
            {
              [*(*(&v155 + 1) + 8 * v30) removeFromSuperview];
            }

            else
            {
              v153[4] = *(*(&v155 + 1) + 8 * v30);
              v154[0] = MEMORY[0x1E69E9820];
              v154[1] = 3221225472;
              v154[2] = __80__PKDataDetectorInteractionHelper_updateDetectionViews_withItems_previousItems___block_invoke;
              v154[3] = &unk_1E82D7148;
              v154[4] = v31;
              v153[0] = MEMORY[0x1E69E9820];
              v153[1] = 3221225472;
              v153[2] = __80__PKDataDetectorInteractionHelper_updateDetectionViews_withItems_previousItems___block_invoke_2;
              v153[3] = &unk_1E82D8F30;
              [MEMORY[0x1E69DD250] animateWithDuration:v154 animations:v153 completion:0.15];
            }

            if ((v130 & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                item6 = [v31 item];
                active = [item6 active];

                if (active)
                {
                  [self hashtagViewWillDeactivateHashtag:v31];
                  [self hashtagViewDidDeactivateHashtag:v31];
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  item7 = [v31 item];
                  active2 = [item7 active];

                  if (active2)
                  {
                    [self mentionViewWillDeactivateMention:v31];
                    [self mentionViewDidDeactivateMention:v31];
                  }
                }
              }
            }

            ++v30;
          }

          while (v28 != v30);
          v36 = [obj countByEnumeratingWithState:&v155 objects:v169 count:16];
          v28 = v36;
        }

        while (v36);
      }

      [v11 removeObjectsInArray:obj];
      if (*(self + 72) == v11)
      {
        WeakRetained = objc_loadWeakRetained((self + 128));
        v38 = objc_loadWeakRetained((self + 136));
        v39 = [WeakRetained allConfirmedHashtagsForAttachmentView:v38];

        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v126 = v11;
        v40 = [v126 countByEnumeratingWithState:&v149 objects:v168 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v150;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v150 != v42)
              {
                objc_enumerationMutation(v126);
              }

              v44 = *(*(&v149 + 1) + 8 * j);
              hashtagItem = [v44 hashtagItem];
              hashtagUUID = [hashtagItem hashtagUUID];
              v47 = [v39 containsObject:hashtagUUID];

              if ((v47 & 1) == 0)
              {
                item8 = [v44 item];
                active3 = [item8 active];

                if (active3)
                {
                  [self hashtagViewWillDeactivateHashtag:v44];
                  item9 = [v44 item];
                  drawing = [(PKDataDetectorInteractionHelper *)self drawing];
                  [item9 clearActiveInDrawing:drawing];

                  [self hashtagViewDidDeactivateHashtag:v44];
                }
              }
            }

            v41 = [v126 countByEnumeratingWithState:&v149 objects:v168 count:16];
          }

          while (v41);
        }
      }

      [v11 makeObjectsPerformSelector:{sel_setNeedsDisplay, v119}];
      array2 = [MEMORY[0x1E695DF70] array];
      if ([v125 count])
      {
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v53 = viewsCopy;
        v54 = [v53 countByEnumeratingWithState:&v145 objects:v167 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v146;
          do
          {
            for (k = 0; k != v55; ++k)
            {
              if (*v146 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v145 + 1) + 8 * k);
              if (([v125 containsObject:v58] & 1) == 0)
              {
                [array2 addObject:v58];
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v145 objects:v167 count:16];
          }

          while (v55);
        }
      }

      else
      {
        [array2 addObjectsFromArray:viewsCopy];
      }

      [v125 addObjectsFromArray:array2];
      if ((v130 & 1) == 0 && [array2 count])
      {
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v59 = array2;
        v60 = [v59 countByEnumeratingWithState:&v141 objects:v166 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v142;
          do
          {
            for (m = 0; m != v61; ++m)
            {
              if (*v142 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = *(*(&v141 + 1) + 8 * m);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v65 = +[PKStatisticsManager sharedStatisticsManager];
                [(PKStatisticsManager *)v65 recordDataDetectorItemAdd:v64];
              }

              else
              {
                objc_opt_class();
                v66 = objc_opt_isKindOfClass();
                v67 = +[PKStatisticsManager sharedStatisticsManager];
                v65 = v67;
                if (v66)
                {
                  [(PKStatisticsManager *)v67 recordHashtagItemAdd];
                }

                else
                {
                  [(PKStatisticsManager *)v67 recordMentionItemAdd];
                }
              }
            }

            v61 = [v59 countByEnumeratingWithState:&v141 objects:v166 count:16];
          }

          while (v61);
        }
      }

      if (*(self + 56) == v11)
      {
        v68 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(viewsCopy, "count")}];
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v69 = viewsCopy;
        v70 = [v69 countByEnumeratingWithState:&v137 objects:v165 count:16];
        if (v70)
        {
          v71 = v70;
          v72 = *v138;
          do
          {
            for (n = 0; n != v71; ++n)
            {
              if (*v138 != v72)
              {
                objc_enumerationMutation(v69);
              }

              [v68 addObject:{objc_msgSend(*(*(&v137 + 1) + 8 * n), "coreResult")}];
            }

            v71 = [v69 countByEnumeratingWithState:&v137 objects:v165 count:16];
          }

          while (v71);
        }
      }

      else
      {
        v68 = 0;
      }

      v74 = objc_loadWeakRetained((self + 40));
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v127 = array2;
      v75 = [v127 countByEnumeratingWithState:&v133 objects:v164 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v134;
        v122 = v68;
        v123 = *v134;
        do
        {
          v78 = 0;
          v124 = v76;
          do
          {
            if (*v134 != v77)
            {
              objc_enumerationMutation(v127);
            }

            v79 = *(*(&v133 + 1) + 8 * v78);
            v80 = objc_loadWeakRetained((self + 40));

            if (*(self + 56) == v11)
            {
              v83 = [[PKDataDetectorView alloc] initWithDataDetectorItem:v79 allItems:v68];
              if (!v83)
              {
                goto LABEL_123;
              }

              goto LABEL_119;
            }

            if (*(self + 72) == v11)
            {
              hashtagUUID2 = [v79 hashtagUUID];
              drawing2 = objc_loadWeakRetained((self + 128));
              v88 = objc_loadWeakRetained((self + 136));
              v89 = [drawing2 allConfirmedHashtagsForAttachmentView:v88];
              if ([v89 containsObject:hashtagUUID2])
              {

                v76 = v124;
                goto LABEL_113;
              }

              active4 = [v79 active];

              v76 = v124;
              if (active4)
              {
                drawing2 = [(PKDataDetectorInteractionHelper *)self drawing];
                [v79 clearActiveInDrawing:drawing2];
LABEL_113:
              }

              v109 = [PKHashtagView alloc];
              drawing3 = [(PKDataDetectorInteractionHelper *)self drawing];
              v83 = [(PKHashtagView *)v109 initWithHashtagItem:v79 inDrawing:drawing3];

              [(PKDataDetectorView *)v83 setDelegate:self];
              if ((v130 & 1) == 0)
              {
                item10 = [(PKDataDetectorView *)v83 item];
                active5 = [item10 active];

                if (active5)
                {
                  [self hashtagViewDidActivateHashtag:v83];
                }
              }

              v68 = v122;
              v77 = v123;
              goto LABEL_118;
            }

            if (*(self + 64) == v11)
            {
              mentionResult = [v79 mentionResult];
              v91 = [mentionResult stringByReplacingCharactersInRange:0 withString:{1, &stru_1F476BD20}];

              v92 = objc_loadWeakRetained((self + 128));
              v93 = objc_loadWeakRetained((self + 136));
              v94 = [v92 attachmentView:v93 participantMatchesForMentionText:v91];

              if ([v94 count])
              {
                v95 = [PKMentionView alloc];
                drawing4 = [(PKDataDetectorInteractionHelper *)self drawing];
                v83 = [(PKMentionView *)v95 initWithMentionItem:v79 possibleParticipants:v94 inDrawing:drawing4];

                [(PKDataDetectorView *)v83 setDelegate:self];
                mentionItem = [(PKDataDetectorView *)v83 mentionItem];
                LODWORD(drawing4) = [mentionItem active];

                if (drawing4)
                {
                  v98 = objc_loadWeakRetained((self + 128));
                  v99 = objc_loadWeakRetained((self + 136));
                  v100 = [v98 allConfirmedMentionsForAttachmentView:v99];

                  if (!*(self + 120))
                  {
                    v101 = [v100 mutableCopy];
                    v102 = *(self + 120);
                    *(self + 120) = v101;
                  }

                  mentionItem2 = [(PKDataDetectorView *)v83 mentionItem];
                  mentionUUID = [mentionItem2 mentionUUID];

                  mentionItem3 = [v100 objectForKeyedSubscript:mentionUUID];
                  v121 = mentionUUID;
                  if (mentionItem3)
                  {
LABEL_109:
                    color = [mentionItem3 color];
                    [(PKDataDetectorView *)v83 setMentionColor:color];
                  }

                  else
                  {
                    v106 = [*(self + 120) objectForKeyedSubscript:mentionUUID];
                    if (v106)
                    {
                      mentionItem3 = v106;
                      [self mentionViewDidActivateMention:v83 withParticpant:v106];
                      goto LABEL_109;
                    }

                    mentionItem3 = [(PKDataDetectorView *)v83 mentionItem];
                    color = [(PKDataDetectorInteractionHelper *)self drawing];
                    [mentionItem3 clearActiveInDrawing:color];
                  }

                  v68 = v122;
LABEL_128:
                  v76 = v124;
                }

                else
                {
                  v76 = v124;
                }

                v77 = v123;
                if (!v83)
                {
                  goto LABEL_123;
                }

                goto LABEL_119;
              }

              v100 = os_log_create("com.apple.pencilkit", "");
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_1C7CCA000, v100, OS_LOG_TYPE_DEBUG, "No participants provided mention", buf, 2u);
              }

              v83 = 0;
              goto LABEL_128;
            }

            if (*(self + 80) != v11)
            {
              goto LABEL_123;
            }

            v81 = [PKProofreadingView alloc];
            drawing5 = [(PKDataDetectorInteractionHelper *)self drawing];
            v83 = [(PKProofreadingView *)v81 initWithProofreadingItem:v79 inDrawing:drawing5];

            [(PKDataDetectorView *)v83 setDelegate:self];
            v84 = *(self + 144);
            if (v84)
            {
              v85 = v84;

              v80 = v85;
              if (!v83)
              {
                goto LABEL_123;
              }

              goto LABEL_119;
            }

LABEL_118:
            if (!v83)
            {
              goto LABEL_123;
            }

LABEL_119:
            [v80 insertSubview:v83 atIndex:0];
            [(PKDataDetectorView *)v83 setAlpha:0.0];
            if (*(self + 13) != 1 || *(self + 80) == v11)
            {
              v113 = MEMORY[0x1E69DD250];
              v131[0] = MEMORY[0x1E69E9820];
              v131[1] = 3221225472;
              v131[2] = __80__PKDataDetectorInteractionHelper_updateDetectionViews_withItems_previousItems___block_invoke_35;
              v131[3] = &unk_1E82D7148;
              v132 = v83;
              [v113 animateWithDuration:v131 animations:0.15];
            }

            [v11 addObject:v83];

LABEL_123:
            v74 = v80;
            ++v78;
          }

          while (v76 != v78);
          v114 = [v127 countByEnumeratingWithState:&v133 objects:v164 count:16];
          v76 = v114;
        }

        while (v114);
      }

      v7 = v120;
      v9 = v125;
      if ([v127 count])
      {
        v115 = objc_loadWeakRetained((self + 24));
        v116 = objc_opt_respondsToSelector();

        if (v116)
        {
          v117 = objc_loadWeakRetained((self + 24));
          [v117 dataDetectorInteractionHelperNeedsLayout:self];
        }

        else
        {
          [v74 setNeedsLayout];
        }
      }

      v118 = objc_loadWeakRetained((self + 32));
      [v118 setNeedsLayout];
    }

    else
    {
      obj = os_log_create("com.apple.pencilkit", "DataDetection");
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, obj, OS_LOG_TYPE_ERROR, "updateDetectionViews is called with a nil array.", buf, 2u);
      }
    }
  }
}

- (void)sessionManager
{
  WeakRetained = objc_loadWeakRetained((self + 48));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)drawing
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 17);

    if (WeakRetained)
    {
      v3 = selfCopy + 17;
    }

    else
    {
      v3 = selfCopy + 6;
    }

    v4 = objc_loadWeakRetained(v3);
    selfCopy = [v4 drawing];
  }

  return selfCopy;
}

- (id)window
{
  WeakRetained = objc_loadWeakRetained((self + 32));
  window = [WeakRetained window];

  return window;
}

- (void)setReflowingStrokeIds:(id *)ids
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (ids)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = ids[10];
    v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v18 = *v26;
      idsCopy = ids;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v25 + 1) + 8 * i);
          drawing = [(PKDataDetectorInteractionHelper *)ids drawing];
          proofreadingItem = [v5 proofreadingItem];
          chStrokeIdentifiers = [proofreadingItem chStrokeIdentifiers];
          v9 = [drawing strokesForCHStrokeIdentifiers:chStrokeIdentifiers];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                _strokeUUID = [*(*(&v21 + 1) + 8 * j) _strokeUUID];
                v16 = [v3 containsObject:_strokeUUID];

                if (v16)
                {
                  [v5 pushAutoHideSuppressionToken:@"Reflow" forceShow:1];
                }

                else
                {
                  [v5 popAutoHideSuppressionToken:@"Reflow"];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v12);
          }

          ids = idsCopy;
        }

        v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[7];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{0.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[9];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{0.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[8];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{0.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[7];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{1.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_5(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[9];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{1.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __59__PKDataDetectorInteractionHelper_setDetectionViewsHidden___block_invoke_6(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[8];
  }

  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) setAlpha:{1.0, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_removeViews:(void *)views animated:(char)animated
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [views copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        superview = [v8 superview];

        if (superview)
        {
          if (animated)
          {
            v10[4] = v8;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __57__PKDataDetectorInteractionHelper__removeViews_animated___block_invoke;
            v11[3] = &unk_1E82D7148;
            v11[4] = v8;
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __57__PKDataDetectorInteractionHelper__removeViews_animated___block_invoke_2;
            v10[3] = &unk_1E82D8F30;
            [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v10 completion:0.15];
          }

          else
          {
            [v8 removeFromSuperview];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)setWantsDataDetection:(uint64_t)detection
{
  if (detection && *(detection + 9) != a2)
  {
    *(detection + 9) = a2;
    window = [(PKDataDetectorInteractionHelper *)detection window];
    if (window)
    {
      v4 = *(detection + 9);
    }

    else
    {
      v4 = 0;
    }

    sessionManager = [(PKDataDetectorInteractionHelper *)detection sessionManager];
    [(PKRecognitionSessionManager *)sessionManager setWantsDataDetection:v4];

    v6 = *(detection + 56);
    if (*(detection + 9) == 1)
    {
      if (v6)
      {
        return;
      }

      array = [MEMORY[0x1E695DF70] array];
      v11 = *(detection + 56);
      *(detection + 56) = array;

      array2 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      window2 = [(PKDataDetectorInteractionHelper *)detection window];
      [PKDataDetectorInteractionHelper _removeViews:v6 animated:window2 != 0];

      v8 = *(detection + 56);
      *(detection + 56) = 0;

      array2 = 0;
    }

    v12 = *(detection + 88);
    *(detection + 88) = array2;
  }
}

- (void)setWantsHashtagDetection:(uint64_t)detection
{
  if (detection && *(detection + 14) != a2)
  {
    *(detection + 14) = a2;
    window = [(PKDataDetectorInteractionHelper *)detection window];
    if (window)
    {
      v4 = *(detection + 14);
    }

    else
    {
      v4 = 0;
    }

    sessionManager = [(PKDataDetectorInteractionHelper *)detection sessionManager];
    [(PKRecognitionSessionManager *)sessionManager setWantsHashtagDetection:v4];

    v6 = *(detection + 72);
    if (*(detection + 14) == 1)
    {
      if (v6)
      {
        return;
      }

      array = [MEMORY[0x1E695DF70] array];
      v11 = *(detection + 72);
      *(detection + 72) = array;

      array2 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      window2 = [(PKDataDetectorInteractionHelper *)detection window];
      [PKDataDetectorInteractionHelper _removeViews:v6 animated:window2 != 0];

      v8 = *(detection + 72);
      *(detection + 72) = 0;

      array2 = 0;
    }

    v12 = *(detection + 96);
    *(detection + 96) = array2;
  }
}

- (void)setWantsMentionDetection:(uint64_t)detection
{
  if (detection && *(detection + 15) != a2)
  {
    *(detection + 15) = a2;
    window = [(PKDataDetectorInteractionHelper *)detection window];
    if (window)
    {
      v4 = *(detection + 15);
    }

    else
    {
      v4 = 0;
    }

    sessionManager = [(PKDataDetectorInteractionHelper *)detection sessionManager];
    [(PKRecognitionSessionManager *)sessionManager setWantsMentionDetection:v4];

    v6 = *(detection + 64);
    if (*(detection + 15) == 1)
    {
      if (v6)
      {
        return;
      }

      array = [MEMORY[0x1E695DF70] array];
      v11 = *(detection + 64);
      *(detection + 64) = array;

      array2 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      window2 = [(PKDataDetectorInteractionHelper *)detection window];
      [PKDataDetectorInteractionHelper _removeViews:v6 animated:window2 != 0];

      v8 = *(detection + 64);
      *(detection + 64) = 0;

      array2 = 0;
    }

    v12 = *(detection + 104);
    *(detection + 104) = array2;
  }
}

- (void)setWantsProofreadingDetection:(uint64_t)detection
{
  if (detection && *(detection + 10) != a2)
  {
    *(detection + 10) = a2;
    window = [(PKDataDetectorInteractionHelper *)detection window];
    if (window)
    {
      v4 = *(detection + 10);
    }

    else
    {
      v4 = 0;
    }

    sessionManager = [(PKDataDetectorInteractionHelper *)detection sessionManager];
    [(PKRecognitionSessionManager *)sessionManager setWantsProofreadingDetection:v4];

    v6 = *(detection + 80);
    if (*(detection + 10) == 1)
    {
      if (v6)
      {
        return;
      }

      array = [MEMORY[0x1E695DF70] array];
      v11 = *(detection + 80);
      *(detection + 80) = array;

      array2 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      window2 = [(PKDataDetectorInteractionHelper *)detection window];
      [PKDataDetectorInteractionHelper _removeViews:v6 animated:window2 != 0];

      v8 = *(detection + 80);
      *(detection + 80) = 0;

      array2 = 0;
    }

    v12 = *(detection + 112);
    *(detection + 112) = array2;
  }
}

void __73__PKDataDetectorInteractionHelper_updateAllPossibleParticipantNameTokens__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKDataDetectorInteractionHelper *)WeakRetained _updateAllPossibleParticipantNameTokens:v3];
}

- (void)_updateAllPossibleParticipantNameTokens:(uint64_t)tokens
{
  v8 = a2;
  if (tokens)
  {
    sessionManager = [(PKDataDetectorInteractionHelper *)tokens sessionManager];
    [(PKRecognitionSessionManager *)sessionManager setMentionSuffixes:v8];

    if (*(tokens + 12) == 1)
    {
      *(tokens + 12) = 0;
      if ([*(tokens + 104) count])
      {
        v4 = MEMORY[0x1E695DF70];
        v5 = *(tokens + 104);
        array = [v4 array];
        v7 = *(tokens + 104);
        *(tokens + 104) = array;

        [(PKDataDetectorInteractionHelper *)tokens updateMentionResults:v5];
      }
    }
  }
}

- (double)boundingBoxForHashtagOrMentionWithUUID:(uint64_t)d
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (d)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = *(d + 72);
    v5 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v31;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          hashtagItem = [v9 hashtagItem];
          hashtagUUID = [hashtagItem hashtagUUID];
          v12 = [hashtagUUID isEqual:v3];

          if (v12)
          {
            [v9 frame];
            v22 = v23;

            goto LABEL_21;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = *(d + 64);
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * j);
          mentionItem = [v18 mentionItem];
          mentionUUID = [mentionItem mentionUUID];
          v21 = [mentionUUID isEqual:v3];

          if (v21)
          {
            [v18 frame];
            v22 = v24;

            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v22 = *MEMORY[0x1E695F058];
  }

  else
  {
    v22 = 0.0;
  }

LABEL_21:

  return v22;
}

- (void)registerUndoCommand:(uint64_t)command
{
  v6 = a2;
  if (command)
  {
    WeakRetained = objc_loadWeakRetained((command + 24));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((command + 24));
      [v5 dataDetectorInteractionHelper:command registerUndoCommand:v6];
    }
  }
}

- (void)hashtagViewDidActivateHashtag:(id)hashtag
{
  hashtagCopy = hashtag;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
    v5 = objc_loadWeakRetained(&self->_attachmentView);
  }

  else
  {
    WeakRetained = 0;
    v5 = 0;
  }

  hashtagItem = [hashtagCopy hashtagItem];
  hashtagUUID = [hashtagItem hashtagUUID];
  hashtagItem2 = [hashtagCopy hashtagItem];
  hashtagResult = [hashtagItem2 hashtagResult];
  [WeakRetained attachmentView:v5 userConfirmedHashtagWithUUID:hashtagUUID displayText:hashtagResult];

  if (self)
  {
    self = objc_loadWeakRetained(&self->_attachmentView);
  }

  [(PKDataDetectorInteractionHelper *)self drawingDidChangeVisibleStrokes:0];

  v10 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v10 recordHashtagItemActivate];
}

- (void)hashtagViewWillDeactivateHashtag:(id)hashtag
{
  hashtagCopy = hashtag;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
    v5 = objc_loadWeakRetained(&self->_attachmentView);
    hashtagItem = [hashtagCopy hashtagItem];
    hashtagUUID = [hashtagItem hashtagUUID];
    [WeakRetained attachmentView:v5 userDeletedHashtagWithUUID:hashtagUUID];

    v8 = objc_loadWeakRetained(&self->_attachmentView);
  }

  else
  {
    hashtagItem2 = [hashtagCopy hashtagItem];
    hashtagUUID2 = [hashtagItem2 hashtagUUID];
    [0 attachmentView:0 userDeletedHashtagWithUUID:hashtagUUID2];

    v8 = 0;
  }

  [v8 drawingDidChangeVisibleStrokes:0];

  v9 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v9 recordHashtagItemDeactivate];
}

- (void)hashtagViewDidDeactivateHashtag:(id)hashtag
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_attachmentView);
  }

  selfCopy = self;
  [(PKDataDetectorInteractionHelper *)self drawingDidChangeVisibleStrokes:0];
}

- (void)mentionViewDidActivateMention:(id)mention withParticpant:(id)particpant
{
  mentionCopy = mention;
  particpantCopy = particpant;
  if (!particpantCopy)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
      v8 = objc_loadWeakRetained(&self->_attachmentView);
    }

    else
    {
      WeakRetained = 0;
      v8 = 0;
    }

    v9 = [WeakRetained allConfirmedMentionsForAttachmentView:v8];
    mentionItem = [mentionCopy mentionItem];
    mentionUUID = [mentionItem mentionUUID];
    particpantCopy = [v9 objectForKeyedSubscript:mentionUUID];
  }

  if (self)
  {
    v12 = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
    v13 = objc_loadWeakRetained(&self->_attachmentView);
    mentionItem2 = [mentionCopy mentionItem];
    mentionUUID2 = [mentionItem2 mentionUUID];
    identifier = [particpantCopy identifier];
    [v12 attachmentView:v13 userConfirmedMentionWithUUID:mentionUUID2 participantIdentifier:identifier];

    v17 = objc_loadWeakRetained(&self->_attachmentView);
  }

  else
  {
    mentionItem3 = [mentionCopy mentionItem];
    mentionUUID3 = [mentionItem3 mentionUUID];
    identifier2 = [particpantCopy identifier];
    [0 attachmentView:0 userConfirmedMentionWithUUID:mentionUUID3 participantIdentifier:identifier2];

    v17 = 0;
  }

  [v17 drawingDidChangeVisibleStrokes:0];

  v18 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v18 recordMentionItemActivate];

  mentionUUIDtoParticipant = self->_mentionUUIDtoParticipant;
  if (!mentionUUIDtoParticipant)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v21 = self->_mentionUUIDtoParticipant;
    self->_mentionUUIDtoParticipant = dictionary;

    mentionUUIDtoParticipant = self->_mentionUUIDtoParticipant;
  }

  mentionItem4 = [mentionCopy mentionItem];
  mentionUUID4 = [mentionItem4 mentionUUID];
  [(NSMutableDictionary *)mentionUUIDtoParticipant setObject:particpantCopy forKeyedSubscript:mentionUUID4];
}

- (void)mentionViewWillDeactivateMention:(id)mention
{
  mentionCopy = mention;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hashtagAndMentionsDelegate);
    v5 = objc_loadWeakRetained(&self->_attachmentView);
    mentionItem = [mentionCopy mentionItem];
    mentionUUID = [mentionItem mentionUUID];
    [WeakRetained attachmentView:v5 userDeletedMentionWithUUID:mentionUUID];

    v8 = objc_loadWeakRetained(&self->_attachmentView);
  }

  else
  {
    mentionItem2 = [mentionCopy mentionItem];
    mentionUUID2 = [mentionItem2 mentionUUID];
    [0 attachmentView:0 userDeletedMentionWithUUID:mentionUUID2];

    v8 = 0;
  }

  [v8 drawingDidChangeVisibleStrokes:0];

  v9 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v9 recordMentionItemDeactivate];
}

- (void)mentionViewDidDeactivateMention:(id)mention
{
  if (self)
  {
    self = objc_loadWeakRetained(&self->_attachmentView);
  }

  selfCopy = self;
  [(PKDataDetectorInteractionHelper *)self drawingDidChangeVisibleStrokes:0];
}

- (void)proofreadingView:(id)view didReplaceWithString:(id)string
{
  viewCopy = view;
  stringCopy = string;
  v47 = 1;
  drawing = [(PKDataDetectorInteractionHelper *)&self->super.isa drawing];
  proofreadingItem = [viewCopy proofreadingItem];
  chStrokeIdentifiers = [proofreadingItem chStrokeIdentifiers];
  v11 = [drawing strokesForCHStrokeIdentifiers:chStrokeIdentifiers didFindAllStrokes:&v47];

  if (v47 == 1)
  {
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    v13 = objc_opt_respondsToSelector();

    v14 = 1.0;
    if (v13)
    {
      if (self)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        v15 = 0;
      }

      [v15 dataDetectorInteractionHelperInputScale:self];
      v14 = v16;
    }

    [PKDrawing _boundingBoxForStrokeArray:v11];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if (self)
    {
      v25 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      if (self)
      {
        v27 = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        v27 = 0;
      }

      v28 = [v27 dataDetectorInteractionHelperSelectionInteraction:self];
    }

    else
    {
      v28 = 0;
    }

    if (self)
    {
      v29 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v29 = 0;
    }

    objc_initWeak(&location, self);
    delegate = [v28 delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      if (v47 == 1)
      {
        delegate2 = [v28 delegate];
        proofreadingItem2 = [viewCopy proofreadingItem];
        if (self)
        {
          v34 = objc_loadWeakRetained(&self->_attachmentView);
        }

        else
        {
          v34 = 0;
        }

        [delegate2 selectionInteraction:v28 replaceStrokes:v11 withString:stringCopy proofreadingItem:proofreadingItem2 inBounds:v34 inAttachment:{v18, v20, v22, v24}];

        if (self)
        {
          previousProofreadingItems = self->_previousProofreadingItems;
        }

        else
        {
          previousProofreadingItems = 0;
        }

        v36 = previousProofreadingItems;
        v37 = [(NSMutableArray *)v36 mutableCopy];

        proofreadingItem3 = [viewCopy proofreadingItem];
        [v37 removeObjectIdenticalTo:proofreadingItem3];

        if (self)
        {
          [(PKDataDetectorInteractionHelper *)self updateDetectionViews:v37 withItems:self->_previousProofreadingItems previousItems:?];
        }

        goto LABEL_34;
      }

      v39 = os_log_create("com.apple.pencilkit", "");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_33:

LABEL_34:
        objc_destroyWeak(&location);

        goto LABEL_35;
      }

      *buf = 0;
      v40 = "PKProofreadingView failed to find all the strokes for its group.";
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        if (self)
        {
          self = objc_loadWeakRetained(&self->_recogntionController);
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __73__PKDataDetectorInteractionHelper_proofreadingView_didReplaceWithString___block_invoke;
        v41[3] = &unk_1E82D8F80;
        objc_copyWeak(&v44, &location);
        v42 = v11;
        v43 = v29;
        [(PKDataDetectorInteractionHelper *)self replaceStrokes:v42 withString:stringCopy inBounds:v41 inputScale:v18 completion:v20, v22, v24, v14];

        objc_destroyWeak(&v44);
        goto LABEL_34;
      }

      v39 = os_log_create("com.apple.pencilkit", "");
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v40 = "No way to update drawing after refining.";
    }

    _os_log_error_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_33;
  }

LABEL_35:
}

void __73__PKDataDetectorInteractionHelper_proofreadingView_didReplaceWithString___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) strokes];
          [v7 addObjectsFromArray:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v16 = a1 + 32;
    v14 = *(a1 + 32);
    v15 = *(v16 + 8);
    v17 = [v7 copy];
    [v15 dataDetectorInteractionHelper:WeakRetained replaceStrokes:v14 withStrokes:v17];
  }
}

- (void)proofreadingView:(id)view willPresentStringsForProofreadingItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  itemCopy = item;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_attachmentView);
    [WeakRetained proofreadingView:viewCopy willPresentStringsForProofreadingItem:itemCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    proofreadingViews = self->_proofreadingViews;
  }

  else
  {
    [0 proofreadingView:viewCopy willPresentStringsForProofreadingItem:itemCopy];
    proofreadingViews = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  v10 = proofreadingViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (v15 != viewCopy)
        {
          [v15 pushAutoHideSuppressionToken:@"SiblingMenu" forceShow:{0, v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)proofreadingView:(id)view willDismissStringsForProofreadingItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  itemCopy = item;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_attachmentView);
    [WeakRetained proofreadingView:viewCopy willDismissStringsForProofreadingItem:itemCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    proofreadingViews = self->_proofreadingViews;
  }

  else
  {
    [0 proofreadingView:viewCopy willDismissStringsForProofreadingItem:itemCopy];
    proofreadingViews = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  v10 = proofreadingViews;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (v15 != viewCopy)
        {
          [v15 popAutoHideSuppressionToken:{@"SiblingMenu", v16}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (id)_accessibilityUserTestingChildren
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);

    if (WeakRetained)
    {
      v4 = MEMORY[0x1E695DF70];
      v5 = objc_loadWeakRetained(&self->_view);
      _accessibilityUserTestingChildren = [v5 _accessibilityUserTestingChildren];
      WeakRetained = [v4 arrayWithArray:_accessibilityUserTestingChildren];

      [WeakRetained addObjectsFromArray:self->_dataDetectorViews];
      [WeakRetained addObjectsFromArray:self->_hashtagViews];
      [WeakRetained addObjectsFromArray:self->_mentionViews];
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

@end