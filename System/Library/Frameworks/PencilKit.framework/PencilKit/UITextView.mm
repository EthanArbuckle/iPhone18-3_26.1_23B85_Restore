@interface UITextView
@end

@implementation UITextView

void __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (*(a1 + 32) == v9)
  {
    if (*(a1 + 56) != 1 || ([*(a1 + 40) drawingDelegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) == 0) || (objc_msgSend(*(a1 + 40), "drawingDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "textView:shouldDeleteDrawingAtIndex:", *(a1 + 40), a3), v12, v13))
    {
      v14 = [*(a1 + 40) textStorage];
      v15 = [v14 length];

      if (a3 == v15)
      {
        v16 = [*(a1 + 40) textStorage];
        [v16 replaceCharactersInRange:a3 withString:{a4, &stru_1F476BD20}];

        v17 = [*(a1 + 40) drawingDelegate];
        LOBYTE(v16) = objc_opt_respondsToSelector();

        if (v16)
        {
          v18 = [*(a1 + 40) drawingDelegate];
          [v18 textView:*(a1 + 40) didRemoveDrawingAtIndex:a3];
        }

        [*(a1 + 40) _pk_invalidateLayoutForCharacterRange:a3 - 1 invalidateDisplay:1 ensureLayout:{1, 0}];
      }

      else
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke_2;
        aBlock[3] = &unk_1E82D9F20;
        v19 = *(a1 + 48);
        v20 = *(a1 + 40);
        v31 = v19;
        v32 = v20;
        v33 = a3;
        v34 = a4;
        v21 = _Block_copy(aBlock);
        v23 = *(a1 + 40);
        v22 = *(a1 + 48);
        v24 = *(a1 + 32);
        [v22 bounds];
        v26 = v25 * -0.0166666667 / 0.3;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke_3;
        v28[3] = &unk_1E82DC2B0;
        v27 = v21;
        v29 = v27;
        if (([v23 _growView:v22 textAttachment:v24 atCharacterIndex:a3 step:v28 stop:v26] & 1) == 0)
        {
          v27[2](v27);
        }
      }
    }

    *a5 = 1;
  }
}

void __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) resignFirstResponder];
  v2 = [*(a1 + 40) textStorage];
  [v2 replaceCharactersInRange:*(a1 + 48) withString:{*(a1 + 56), &stru_1F476BD20}];

  v3 = [*(a1 + 40) drawingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 40) drawingDelegate];
    [v5 textView:*(a1 + 40) didRemoveDrawingAtIndex:*(a1 + 48)];
  }
}

BOOL __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke_3(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a5 <= 10.0)
  {
    (*(*(a1 + 32) + 16))();
  }

  return a5 <= 10.0;
}

void __85__UITextView_UITextViewDrawing___growView_textAttachment_atCharacterIndex_step_stop___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  [*(a1 + 32) frame];
  v18 = CGRectInset(v17, 0.0, *(a1 + 64) * -0.5);
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGRectGetMinY(v18);
  [*(a1 + 40) bounds];
  CGRectGetMinY(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetMaxY(v20);
  [*(a1 + 40) bounds];
  CGRectGetMaxY(v21);
  [*(a1 + 40) contentOffset];
  [*(a1 + 40) setContentOffset:?];
  [*(a1 + 32) bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(a1 + 64) + v13;
  [*(a1 + 32) setBounds:v7];
  [*(a1 + 48) setLiveResizeAttachmentBounds:{v8, v10, v12, v14}];
  [*(a1 + 40) _pk_invalidateLayoutForCharacterRange:*(a1 + 72) invalidateDisplay:1 ensureLayout:{1, 0}];
  if ((*(*(a1 + 56) + 16))(v8, v10, v12, v14))
  {
    [v15 invalidate];
    [*(a1 + 48) endLiveResize];
  }
}

void __80__UITextView_UITextViewDrawing___undoDrawingBounds_viewBounds_ofAttachmentUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v39 = a2;
  if (PKIsInlineDrawingOrPaperAttachment(v39))
  {
    if (*(a1 + 32))
    {
      v8 = [v39 viewProviderForParentView:*(a1 + 40) characterIndex:a3 layoutManager:?];
    }

    else
    {
      v9 = *(a1 + 48);
      v10 = [v9 documentRange];
      v11 = [v10 location];
      v12 = [v9 locationFromLocation:v11 withOffset:a3];

      v8 = [*(a1 + 48) viewProviderForTextAttachment:v39 location:v12];
    }

    v13 = objc_opt_class();
    v14 = [v8 view];
    v15 = PKDynamicCast(v13, v14);

    v16 = [v15 drawing];
    v17 = [v16 uuid];
    v18 = [v17 isEqual:*(a1 + 56)];

    if (v18)
    {
      v19 = [*(a1 + 40) undoManager];
      v20 = [v19 prepareWithInvocationTarget:*(a1 + 40)];
      v21 = [v15 drawing];
      [v21 _canvasBounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      [v15 bounds];
      [v20 _undoDrawingBounds:*(a1 + 56) viewBounds:v23 ofAttachmentUUID:{v25, v27, v29, v30, v31, v32, v33}];

      v34 = *(a1 + 64);
      v35 = *(a1 + 72);
      v36 = *(a1 + 80);
      v37 = *(a1 + 88);
      v38 = [v15 drawing];
      [v38 set_canvasBounds:{v34, v35, v36, v37}];

      [v15 setBounds:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
      [v15 updateFrameForTextContainer];
      [v15 drawingDidChange];
      *a5 = 1;
    }
  }
}

void __65__UITextView_UITextViewDrawing___cleanupStaleCachedViewProviders__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _cacheIdentifierForTextAttachment:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

uint64_t __94__UITextView_UITextViewDrawing___pk_checkForTK2LostViewProviderInAttachment_atCharacterIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 3)
  {
    v4 = [v3 textAttachmentViewProviders];
    *(*(*(a1 + 32) + 8) + 24) = [v4 count] == 0;
  }

  return 0;
}

@end