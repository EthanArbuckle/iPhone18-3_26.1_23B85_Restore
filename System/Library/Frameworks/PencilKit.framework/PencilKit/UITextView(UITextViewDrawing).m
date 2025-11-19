@interface UITextView(UITextViewDrawing)
- (BOOL)_canInsertDrawingInRange:()UITextViewDrawing;
- (BOOL)_growView:()UITextViewDrawing textAttachment:atCharacterIndex:step:stop:;
- (BOOL)isPaperEnabled;
- (BOOL)isStylusDrawingEnabled;
- (double)_boundsForDrawingTextAttachment:()UITextViewDrawing characterIndex:layoutManager:;
- (double)_pk_boundsForDrawingTextAttachment:()UITextViewDrawing characterIndex:;
- (double)_pk_lineFragmentRectForGlyphAtCharacterIndex:()UITextViewDrawing;
- (id)_cacheIdentifierForTextAttachment:()UITextViewDrawing;
- (id)_cachedViewProviderForTextAttachment:()UITextViewDrawing;
- (id)_drawingInfoCreateIfNecessary;
- (id)_insertDrawing:()UITextViewDrawing;
- (id)_insertEmptyDrawingAttachmentAtLocation:()UITextViewDrawing;
- (id)_pk_textRangeFromCharacterRange:()UITextViewDrawing textLayoutManager:;
- (id)_pk_viewProviderForAttachment:()UITextViewDrawing atCharacterIndex:createIfNeeded:;
- (id)_textRangeFromRange:()UITextViewDrawing;
- (id)_tool;
- (id)drawingDelegate;
- (id)ink;
- (id)linedPaper;
- (id)paperTexture;
- (uint64_t)_canAddDrawingAtIndex:()UITextViewDrawing;
- (uint64_t)_canAddStroke;
- (uint64_t)_canInsertDrawing;
- (uint64_t)_canSelectDrawing;
- (uint64_t)_cropDrawingAttachmentsWhenViewIsSmaller;
- (uint64_t)_isHandwritingToolSelected;
- (uint64_t)isFingerDrawingEnabled;
- (uint64_t)isRulerEnabled;
- (uint64_t)setPaperEnabled:()UITextViewDrawing;
- (uint64_t)setStylusDrawingEnabled:()UITextViewDrawing;
- (void)_canvasViewWillCreateSnapshot;
- (void)_cleanupStaleCachedViewProviders;
- (void)_didEndInteractiveResize;
- (void)_didEndStroke;
- (void)_pkTiledViewIfEnabled;
- (void)_pk_checkForTK2LostViewProviderInAttachment:()UITextViewDrawing atCharacterIndex:;
- (void)_pk_ensureLayoutForCharacterRange:()UITextViewDrawing;
- (void)_pk_invalidateLayoutForCharacterRange:()UITextViewDrawing invalidateDisplay:ensureLayout:;
- (void)_removeDrawingAttachment:()UITextViewDrawing withView:forDeletion:;
- (void)_setCachedViewProvider:()UITextViewDrawing textAttachment:;
- (void)_setCropDrawingAttachmentsWhenViewIsSmaller:()UITextViewDrawing;
- (void)_setSelectedInkColor:()UITextViewDrawing;
- (void)_setTool:()UITextViewDrawing;
- (void)_undoDrawingBounds:()UITextViewDrawing viewBounds:ofAttachmentUUID:;
- (void)_updateDrawingBackgroundColor;
- (void)_upgradeDrawingAtCharacterIndex:()UITextViewDrawing itemProviders:insertionLocationInDrawing:;
- (void)_willBeginInteractiveResize;
- (void)_willBeginNewStrokeForTouch:()UITextViewDrawing;
- (void)setDrawingDelegate:()UITextViewDrawing;
- (void)setInk:()UITextViewDrawing;
- (void)setLinedPaper:()UITextViewDrawing;
- (void)setPaperTexture:()UITextViewDrawing;
- (void)setRulerEnabled:()UITextViewDrawing;
- (void)setStylusDrawingEnabled:()UITextViewDrawing drawingClass:sixChannelBlending:;
@end

@implementation UITextView(UITextViewDrawing)

- (void)_pkTiledViewIfEnabled
{
  v1 = [a1 _drawingInfo];
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)drawingDelegate
{
  v1 = [a1 _drawingInfo];
  v2 = v1;
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)isStylusDrawingEnabled
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = v1 != 0;

  return v2;
}

- (id)_drawingInfoCreateIfNecessary
{
  v2 = objc_getAssociatedObject(a1, "/Library/Caches/com.apple.xbs/Sources/PencilKit/PencilKit/Text/UITextView_PencilKit.m");
  if (!v2)
  {
    v3 = [UITextViewDrawingInfo alloc];
    if (v3)
    {
      v8.receiver = v3;
      v8.super_class = UITextViewDrawingInfo;
      v4 = a1;
      v2 = objc_msgSendSuper2(&v8, sel_init);
      objc_storeWeak((v2 + 16), v4);

      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = *(v2 + 48);
      *(v2 + 48) = v5;
    }

    else
    {
      v2 = 0;
    }

    objc_setAssociatedObject(a1, "/Library/Caches/com.apple.xbs/Sources/PencilKit/PencilKit/Text/UITextView_PencilKit.m", v2, 1);
  }

  return v2;
}

- (void)_updateDrawingBackgroundColor
{
  v2 = [a1 paperTexture];
  if (!v2)
  {
    if ([a1 isPaperEnabled])
    {
      return;
    }

    v8 = [a1 backgroundColor];
    [v8 alphaComponent];
    v4 = v3;
    v5 = [a1 _pkTiledViewIfEnabled];
    v6 = [v5 canvasView];
    if (v4 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    [v6 setCanvasBackgroundColor:v7];

    v2 = v8;
  }
}

- (id)paperTexture
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = [v1 paperTexture];

  return v2;
}

- (BOOL)isPaperEnabled
{
  if (![a1 isStylusDrawingEnabled])
  {
    return 0;
  }

  v2 = [a1 _drawingInfo];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 == +[PKDrawing drawingClassForPaper];

  return v5;
}

- (id)ink
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = [v1 ink];

  return v2;
}

- (void)setInk:()UITextViewDrawing
{
  v4 = a3;
  v5 = [a1 _pkTiledViewIfEnabled];
  [v5 setInk:v4];
}

- (id)_tool
{
  v1 = [a1 ink];
  if (v1)
  {
    v2 = [PKTool _toolWithInk:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_setTool:()UITextViewDrawing
{
  v5 = [a3 ink];
  v4 = [a1 _pkTiledViewIfEnabled];
  [v4 setInk:v5];
}

- (void)_setSelectedInkColor:()UITextViewDrawing
{
  v5 = a3;
  v4 = [a1 _pkTiledViewIfEnabled];
  if ([v4 _hasSelection])
  {
    [v4 setSelectedStrokesColor:v5];
  }
}

- (uint64_t)_isHandwritingToolSelected
{
  v1 = [a1 ink];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _isHandwritingInk];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRulerEnabled:()UITextViewDrawing
{
  v4 = [a1 _pkTiledViewIfEnabled];
  [v4 setRulerEnabled:a3];
}

- (uint64_t)isRulerEnabled
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = [v1 rulerEnabled];

  return v2;
}

- (id)linedPaper
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = [v1 linedPaper];

  return v2;
}

- (void)setLinedPaper:()UITextViewDrawing
{
  v4 = a3;
  v5 = [a1 _pkTiledViewIfEnabled];
  [v5 setLinedPaper:v4];
}

- (uint64_t)_cropDrawingAttachmentsWhenViewIsSmaller
{
  v1 = [a1 _pkTiledViewIfEnabled];
  v2 = [v1 cropDrawingAttachmentsWhenViewIsSmaller];

  return v2;
}

- (void)_setCropDrawingAttachmentsWhenViewIsSmaller:()UITextViewDrawing
{
  v4 = [a1 _pkTiledViewIfEnabled];
  [v4 setCropDrawingAttachmentsWhenViewIsSmaller:a3];
}

- (void)setPaperTexture:()UITextViewDrawing
{
  v4 = a3;
  v5 = [a1 _pkTiledViewIfEnabled];
  [v5 setPaperTexture:v4];
}

- (void)setDrawingDelegate:()UITextViewDrawing
{
  obj = a3;
  v4 = [a1 _drawingInfo];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak((v4 + 32), obj);
  }
}

- (uint64_t)setStylusDrawingEnabled:()UITextViewDrawing
{
  v5 = objc_opt_class();

  return [a1 setStylusDrawingEnabled:a3 drawingClass:v5 sixChannelBlending:0];
}

- (void)setStylusDrawingEnabled:()UITextViewDrawing drawingClass:sixChannelBlending:
{
  if (a3)
  {
    v8 = [a1 _drawingInfo];
    v9 = objc_opt_class();

    if (v9 == a4)
    {
      v10 = 0;
      obj = 0;
    }

    else
    {
      v10 = [a1 _pkTiledViewIfEnabled];
      obj = [a1 drawingDelegate];
      v11 = [a1 _pkTiledViewIfEnabled];
      [v11 removeFromSuperview];

      [a1 _clearDrawingInfo];
    }

    if ([a1 isStylusDrawingEnabled])
    {
      [a1 isStylusDrawingEnabled];
    }

    else
    {
      v13 = [a1 window];
      v14 = [v13 screen];
      v15 = [v14 displayIdentity];
      v16 = [v15 expectsSecureRendering];

      v17 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__UITextView_UITextViewDrawing__setStylusDrawingEnabled_drawingClass_sixChannelBlending___block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v36 = v16;
      dispatch_async(v17, block);

      +[PKTextAttachmentDrawingViewProvider registerViewProviderClassIfNecessary];
      v18 = [a1 _drawingInfoCreateIfNecessary];
      v19 = [objc_alloc(+[PKTextAttachmentDrawingViewProvider tiledViewClassForDrawingClass:](PKTextAttachmentDrawingViewProvider tiledViewClassForDrawingClass:{a4)), "initInScrollView:sixChannelBlending:defaultDrawingClass:", a1, a5, a4}];
      if (v18)
      {
        objc_storeStrong((v18 + 24), v19);

        v20 = a4;
        v19 = *(v18 + 40);
        *(v18 + 40) = v20;
      }

      if (v10)
      {
        v21 = [v10 ink];
        v22 = v18 ? *(v18 + 24) : 0;
        [v22 setInk:v21];

        v23 = [v10 cropDrawingAttachmentsWhenViewIsSmaller];
        v24 = v18 ? *(v18 + 24) : 0;
        [v24 setCropDrawingAttachmentsWhenViewIsSmaller:v23];
        v25 = [v10 linedPaper];
        v26 = v18 ? *(v18 + 24) : 0;
        [v26 setLinedPaper:v25];

        v27 = [v10 rulerEnabled];
        if (v18)
        {
          [*(v18 + 24) setRulerEnabled:v27];
          objc_storeWeak((v18 + 32), obja);
        }

        else
        {
          [0 setRulerEnabled:v27];
        }

        if ([v10 overrideUserInterfaceStyle])
        {
          v28 = [v10 overrideUserInterfaceStyle];
          if (v18)
          {
            v29 = *(v18 + 24);
          }

          else
          {
            v29 = 0;
          }

          [v29 setOverrideUserInterfaceStyle:v28];
        }
      }

      [a1 _updateDrawingBackgroundColor];
      if ([a1 isPaperEnabled])
      {
        if (v18)
        {
          v30 = [*(v18 + 24) canvasView];
          [v30 setOpaque:0];

          v31 = *(v18 + 24);
        }

        else
        {
          v32 = [0 canvasView];
          [v32 setOpaque:0];

          v31 = 0;
        }

        [v31 setCanvasViewZOrderPolicy:1];
      }
    }
  }

  else
  {
    [a1 isStylusDrawingEnabled];
    if ([a1 isStylusDrawingEnabled])
    {
      [a1 _setContentScrollInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      v12 = [a1 _pkTiledViewIfEnabled];
      [v12 removeFromSuperview];

      [a1 _clearDrawingInfo];
    }
  }
}

- (uint64_t)setPaperEnabled:()UITextViewDrawing
{
  v5 = PKIsSixChannelBlendEnabledInPaper();
  v6 = +[PKDrawing drawingClassForPaper];

  return [a1 setStylusDrawingEnabled:a3 drawingClass:v6 sixChannelBlending:v5 & a3];
}

- (uint64_t)isFingerDrawingEnabled
{
  result = [a1 isStylusDrawingEnabled];
  if (result)
  {
    v3 = [a1 _pkTiledViewIfEnabled];
    v4 = [v3 allowsFingerDrawing];

    return v4;
  }

  return result;
}

- (void)_willBeginInteractiveResize
{
  v1 = [a1 _pkTiledViewIfEnabled];
  [v1 _willBeginInteractiveResize];
}

- (void)_didEndInteractiveResize
{
  v1 = [a1 _pkTiledViewIfEnabled];
  [v1 _didEndInteractiveResize];
}

- (double)_boundsForDrawingTextAttachment:()UITextViewDrawing characterIndex:layoutManager:
{
  v3 = [a3 viewProviderForParentView:a1 characterIndex:? layoutManager:?];
  v4 = [v3 view];
  if (objc_opt_respondsToSelector())
  {
    [v4 drawingTextAttachmentBounds];
    v6 = v5;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
  }

  return v6;
}

- (double)_pk_boundsForDrawingTextAttachment:()UITextViewDrawing characterIndex:
{
  v6 = a3;
  if ([v6 pkInserting])
  {
    v7 = [a1 textLayoutManager];

    if (!v7)
    {
      v11 = *MEMORY[0x1E695F050];
      goto LABEL_10;
    }
  }

  v8 = [a1 _pk_viewProviderForAttachment:v6 atCharacterIndex:a4 createIfNeeded:1];
  v9 = [v8 view];
  if (objc_opt_respondsToSelector())
  {
    [v9 drawingTextAttachmentBoundsForContainerView:a1];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = *MEMORY[0x1E695F050];
      goto LABEL_9;
    }

    [v9 drawingTextAttachmentBounds];
  }

  v11 = v10;
LABEL_9:

LABEL_10:
  return v11;
}

- (id)_textRangeFromRange:()UITextViewDrawing
{
  v7 = [a1 beginningOfDocument];
  v8 = [a1 positionFromPosition:v7 offset:a3];

  v9 = [a1 positionFromPosition:v8 offset:a4];
  v10 = [a1 textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (id)_insertEmptyDrawingAttachmentAtLocation:()UITextViewDrawing
{
  if ([a1 _canAddDrawingAtIndex:?] && (objc_msgSend(a1, "textStorage"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [a1 _drawingInfo];
    v7 = v6;
    if (v6)
    {
      v6 = v6[5];
    }

    v8 = [v6 fileType];

    v9 = [a1 drawingDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [a1 drawingDelegate];
      [v11 textView:a1 willAddDrawingAtIndex:a3];
    }

    v12 = [a1 drawingDelegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0 || ([a1 drawingDelegate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "textView:newAttachmentForFileType:", a1, v8), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
    {
      v16 = [MEMORY[0x1E69DB7F0] textAttachmentClassForFileType:v8];
      if (!v16)
      {
        v16 = objc_opt_class();
      }

      v17 = [v16 alloc];
      v18 = [MEMORY[0x1E695DEF0] data];
      v15 = [v17 initWithData:v18 ofType:v8];
    }

    [a1 contentOffset];
    [a1 setContentOffset:?];
    [a1 resignFirstResponder];
    [a1 bounds];
    [v15 setBounds:{0.0, 0.0}];
    [v15 setPkInserting:1];
    v19 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
    v20 = [a1 selectedRange];
    v22 = v21;
    [a1 setSelectedRange:{a3, 0}];
    [a1 _pasteAttributedString:v19 pasteAsRichText:1];
    [a1 setSelectedRange:{v20, v22}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_removeDrawingAttachment:()UITextViewDrawing withView:forDeletion:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 textStorage];
  v11 = *MEMORY[0x1E69DB5F8];
  v12 = [a1 textStorage];
  v13 = [v12 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke;
  v16[3] = &unk_1E82DC2D8;
  v20 = a5;
  v17 = v8;
  v18 = a1;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  [v10 enumerateAttribute:v11 inRange:0 options:v13 usingBlock:{0, v16}];
}

- (BOOL)_growView:()UITextViewDrawing textAttachment:atCharacterIndex:step:stop:
{
  v11 = a4;
  v12 = a7;
  v13 = objc_opt_class();
  v14 = PKDynamicCast(v13, v11);
  v15 = v14;
  if (v14)
  {
    [v14 beginLiveResize];
    v16 = MEMORY[0x1E695DFF0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __85__UITextView_UITextViewDrawing___growView_textAttachment_atCharacterIndex_step_stop___block_invoke;
    v19[3] = &unk_1E82DC300;
    v24 = a2;
    v20 = v11;
    v21 = a1;
    v22 = v15;
    v25 = a6;
    v23 = v12;
    v17 = [v16 scheduledTimerWithTimeInterval:1 repeats:v19 block:0.0166666667];
  }

  return v15 != 0;
}

- (void)_undoDrawingBounds:()UITextViewDrawing viewBounds:ofAttachmentUUID:
{
  v20 = a11;
  v21 = [a1 textContainer];
  v22 = [v21 textLayoutManager];
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = [a1 layoutManager];
  }

  v24 = [a1 textStorage];
  v25 = *MEMORY[0x1E69DB5F8];
  v26 = [a1 textStorage];
  v27 = [v26 length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__UITextView_UITextViewDrawing___undoDrawingBounds_viewBounds_ofAttachmentUUID___block_invoke;
  v31[3] = &unk_1E82DC328;
  v32 = v23;
  v33 = a1;
  v34 = v22;
  v35 = v20;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v28 = v20;
  v29 = v22;
  v30 = v23;
  [v24 enumerateAttribute:v25 inRange:0 options:v27 usingBlock:{0, v31}];
}

- (void)_upgradeDrawingAtCharacterIndex:()UITextViewDrawing itemProviders:insertionLocationInDrawing:
{
  v13 = a6;
  v10 = [a1 drawingDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [a1 drawingDelegate];
    [v12 textView:a1 upgradeDrawingAtIndex:a5 itemProviders:v13 insertionLocationInDrawing:{a2, a3}];
  }
}

- (void)_canvasViewWillCreateSnapshot
{
  v3 = [a1 superview];
  v2 = [a1 _pkTiledViewIfEnabled];
  [v2 setContentSnapshottingView:v3];
}

- (void)_willBeginNewStrokeForTouch:()UITextViewDrawing
{
  v10 = a3;
  [a1 _updateDrawingBackgroundColor];
  v4 = [a1 drawingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [a1 drawingDelegate];
    [v6 textViewWillBeginStroke:a1];
  }

  v7 = [a1 drawingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [a1 drawingDelegate];
    [v9 textViewWillBeginStroke:a1 forTouch:v10];
  }
}

- (void)_didEndStroke
{
  v2 = [a1 drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [a1 drawingDelegate];
    [v4 textViewDidEndStroke:a1];
  }
}

- (uint64_t)_canAddStroke
{
  v2 = [a1 drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = [a1 drawingDelegate];
  v5 = [v4 textViewCanAddStroke:a1];

  return v5;
}

- (uint64_t)_canAddDrawingAtIndex:()UITextViewDrawing
{
  v5 = [a1 drawingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = [a1 drawingDelegate];
  v8 = [v7 textView:a1 canAddDrawingAtIndex:a3];

  return v8;
}

- (uint64_t)_canInsertDrawing
{
  v3 = [a1 selectedRange];

  return [a1 _canInsertDrawingInRange:{v3, v2}];
}

- (BOOL)_canInsertDrawingInRange:()UITextViewDrawing
{
  v7 = 0;
  if ([a1 isStylusDrawingEnabled] && !a4)
  {
    v8 = [a1 textStorage];
    if ([v8 length])
    {
      v9 = [a1 textStorage];
      v7 = a3 < [v9 length] - 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_insertDrawing:()UITextViewDrawing
{
  result = [a1 selectedRange];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return [a1 _insertEmptyDrawingAttachmentAtLocation:result];
  }

  return result;
}

- (uint64_t)_canSelectDrawing
{
  v2 = [a1 drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v4 = [a1 drawingDelegate];
  v5 = [v4 textViewCanSelectDrawing:a1];

  return v5;
}

- (id)_pk_textRangeFromCharacterRange:()UITextViewDrawing textLayoutManager:
{
  v7 = a5;
  v8 = [v7 documentRange];
  v9 = [v8 location];
  v10 = [v7 locationFromLocation:v9 withOffset:a3];

  v11 = [v7 locationFromLocation:v10 withOffset:a4];

  v12 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v10 endLocation:v11];

  return v12;
}

- (void)_pk_invalidateLayoutForCharacterRange:()UITextViewDrawing invalidateDisplay:ensureLayout:
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = [a1 textContainer];
  v12 = [v11 textLayoutManager];
  if (v12 || ([a1 layoutManager], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24.location = a3;
      v24.length = a4;
      v14 = NSStringFromRange(v24);
      v19 = 138412546;
      v20 = v14;
      v21 = 1024;
      v22 = a6;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "invalidateLayoutFor: %@, ensureLayout: %{BOOL}d", &v19, 0x12u);
    }

    v15 = [a1 _pk_textRangeFromCharacterRange:a3 textLayoutManager:{a4, v12}];
    [v12 invalidateLayoutForRange:v15];
    if (a6)
    {
      v16 = [v12 textViewportLayoutController];
      [v16 layoutViewport];
    }

    v17 = 0;
  }

  else
  {
    v17 = v18;
    [v18 invalidateLayoutForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    if (a5)
    {
      [v17 invalidateDisplayForCharacterRange:{a3, a4}];
    }

    if (a6)
    {
      [v17 ensureLayoutForCharacterRange:{a3, a4}];
    }
  }
}

- (void)_pk_ensureLayoutForCharacterRange:()UITextViewDrawing
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [a1 textContainer];
  v8 = [v7 textLayoutManager];
  if (v8 || ([a1 layoutManager], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17.location = a3;
      v17.length = a4;
      v10 = NSStringFromRange(v17);
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEFAULT, "ensureLayoutFor: %@", &v14, 0xCu);
    }

    v11 = [a1 _pk_textRangeFromCharacterRange:a3 textLayoutManager:{a4, v8}];
    [v8 invalidateLayoutForRange:v11];
    v12 = [v8 textViewportLayoutController];
    [v12 layoutViewport];
  }

  else
  {
    v11 = v13;
    [v13 ensureLayoutForCharacterRange:{a3, a4}];
  }
}

- (double)_pk_lineFragmentRectForGlyphAtCharacterIndex:()UITextViewDrawing
{
  v5 = [a1 textContainer];
  v6 = [v5 textLayoutManager];
  if (v6 || ([a1 layoutManager], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [v6 documentRange];
    v8 = [v7 location];
    v9 = [v6 locationFromLocation:v8 withOffset:a3];

    v10 = [v6 textLayoutFragmentForLocation:v9];
    [v10 layoutFragmentFrame];
    v12 = v11;
  }

  else
  {
    v9 = v13;
    [v13 lineFragmentRectForGlyphAtIndex:objc_msgSend(v13 effectiveRange:{"glyphIndexForCharacterAtIndex:", a3), 0}];
    v12 = v14;
  }

  return v12;
}

- (id)_pk_viewProviderForAttachment:()UITextViewDrawing atCharacterIndex:createIfNeeded:
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 textContainer];
  v10 = [v9 textLayoutManager];
  if (!v10)
  {
    v17 = [a1 layoutManager];
    if (v17)
    {
      v13 = v17;
      v14 = [v8 viewProviderForParentView:a1 characterIndex:a4 layoutManager:v17];
      goto LABEL_11;
    }
  }

  v11 = [v10 documentRange];
  v12 = [v11 location];
  v13 = [v10 locationFromLocation:v12 withOffset:a4];

  v14 = [v10 viewProviderForTextAttachment:v8 location:v13];
  if (v14 || !a5)
  {
LABEL_11:

    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v15 = [a1 _cachedViewProviderForTextAttachment:v8];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218240;
      v22 = v15;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Update location for cached view provider (%p) at %lu", &v21, 0x16u);
    }

    [v15 setUpdatedLocationForRecycledViewProvider:v13];
    v14 = v15;
  }

  else
  {
    v14 = [v8 viewProviderForParentView:a1 location:v13 textContainer:v9];

    v18 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218240;
      v22 = v14;
      v23 = 2048;
      v24 = a4;
      _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Created view provider (%p) at: %lu", &v21, 0x16u);
    }

    if (!v14)
    {

      goto LABEL_22;
    }
  }

  v19 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218240;
    v22 = v14;
    v23 = 2048;
    v24 = a4;
    _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Set viewProvider (%p) at %lu", &v21, 0x16u);
  }

  [v10 setViewProvider:v14 forTextAttachment:v8 location:v13];
LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 _setCachedViewProvider:v14 textAttachment:v8];
  }

LABEL_22:

  return v14;
}

- (id)_cacheIdentifierForTextAttachment:()UITextViewDrawing
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _paperIdentifier];
LABEL_3:
    v5 = v4;
    goto LABEL_9;
  }

  v6 = [v3 fileType];
  if ([v6 isEqualToString:@"com.apple.drawing"])
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v4 = [v3 viewIdentifier];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_setCachedViewProvider:()UITextViewDrawing textAttachment:
{
  v9 = a3;
  v6 = [a1 _cacheIdentifierForTextAttachment:a4];
  if (v6)
  {
    v7 = [a1 _drawingInfo];
    v8 = v7;
    if (v7)
    {
      [*(v7 + 48) setObject:v9 forKeyedSubscript:v6];
    }
  }
}

- (id)_cachedViewProviderForTextAttachment:()UITextViewDrawing
{
  v2 = [a1 _cacheIdentifierForTextAttachment:?];
  if (v2 && ([a1 _drawingInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [*(v3 + 48) objectForKeyedSubscript:v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_cleanupStaleCachedViewProviders
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [a1 _drawingInfo];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = [a1 textStorage];
    v5 = *MEMORY[0x1E69DB5F8];
    v6 = [v4 length];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__UITextView_UITextViewDrawing___cleanupStaleCachedViewProviders__block_invoke;
    v18[3] = &unk_1E82DC350;
    v18[4] = a1;
    v7 = v3;
    v19 = v7;
    [v4 enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v18}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v2[6] allKeys];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v7 containsObject:v13] & 1) == 0)
          {
            [v2[6] removeObjectForKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (void)_pk_checkForTK2LostViewProviderInAttachment:()UITextViewDrawing atCharacterIndex:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 textContainer];
  v8 = [v7 textLayoutManager];
  if (v8)
  {
    v9 = [a1 _pk_textRangeFromCharacterRange:a4 textLayoutManager:{1, v8}];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v10 = [v9 location];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__UITextView_UITextViewDrawing___pk_checkForTK2LostViewProviderInAttachment_atCharacterIndex___block_invoke;
    v14[3] = &unk_1E82DC378;
    v14[4] = &v15;
    v11 = [v8 enumerateTextLayoutFragmentsFromLocation:v10 options:0 usingBlock:v14];

    if (*(v16 + 24) == 1)
    {
      v12 = [a1 _cachedViewProviderForTextAttachment:v6];
      v13 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v20 = a4;
        v21 = 2048;
        v22 = v12;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Lost view provider at: %lu, cached: %p", buf, 0x16u);
      }
    }

    else
    {
      v12 = os_log_create("com.apple.pencilkit", "NSTextAttachmentViewProvider");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_DEFAULT, "Did not detect a lost view provider", buf, 2u);
      }
    }

    _Block_object_dispose(&v15, 8);
  }
}

@end