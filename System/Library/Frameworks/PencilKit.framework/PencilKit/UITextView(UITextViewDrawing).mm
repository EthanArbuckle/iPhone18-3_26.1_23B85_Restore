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
  _drawingInfo = [self _drawingInfo];
  v2 = _drawingInfo;
  if (_drawingInfo)
  {
    v3 = *(_drawingInfo + 24);
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
  _drawingInfo = [self _drawingInfo];
  v2 = _drawingInfo;
  if (_drawingInfo)
  {
    WeakRetained = objc_loadWeakRetained((_drawingInfo + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (BOOL)isStylusDrawingEnabled
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  v2 = _pkTiledViewIfEnabled != 0;

  return v2;
}

- (id)_drawingInfoCreateIfNecessary
{
  v2 = objc_getAssociatedObject(self, "/Library/Caches/com.apple.xbs/Sources/PencilKit/PencilKit/Text/UITextView_PencilKit.m");
  if (!v2)
  {
    v3 = [UITextViewDrawingInfo alloc];
    if (v3)
    {
      v8.receiver = v3;
      v8.super_class = UITextViewDrawingInfo;
      selfCopy = self;
      v2 = objc_msgSendSuper2(&v8, sel_init);
      objc_storeWeak((v2 + 16), selfCopy);

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v6 = *(v2 + 48);
      *(v2 + 48) = dictionary;
    }

    else
    {
      v2 = 0;
    }

    objc_setAssociatedObject(self, "/Library/Caches/com.apple.xbs/Sources/PencilKit/PencilKit/Text/UITextView_PencilKit.m", v2, 1);
  }

  return v2;
}

- (void)_updateDrawingBackgroundColor
{
  paperTexture = [self paperTexture];
  if (!paperTexture)
  {
    if ([self isPaperEnabled])
    {
      return;
    }

    backgroundColor = [self backgroundColor];
    [backgroundColor alphaComponent];
    v4 = v3;
    _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
    canvasView = [_pkTiledViewIfEnabled canvasView];
    if (v4 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = backgroundColor;
    }

    [canvasView setCanvasBackgroundColor:v7];

    paperTexture = backgroundColor;
  }
}

- (id)paperTexture
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  paperTexture = [_pkTiledViewIfEnabled paperTexture];

  return paperTexture;
}

- (BOOL)isPaperEnabled
{
  if (![self isStylusDrawingEnabled])
  {
    return 0;
  }

  _drawingInfo = [self _drawingInfo];
  v3 = _drawingInfo;
  if (_drawingInfo)
  {
    v4 = *(_drawingInfo + 40);
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
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  v2 = [_pkTiledViewIfEnabled ink];

  return v2;
}

- (void)setInk:()UITextViewDrawing
{
  v4 = a3;
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setInk:v4];
}

- (id)_tool
{
  v1 = [self ink];
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
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setInk:v5];
}

- (void)_setSelectedInkColor:()UITextViewDrawing
{
  v5 = a3;
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  if ([_pkTiledViewIfEnabled _hasSelection])
  {
    [_pkTiledViewIfEnabled setSelectedStrokesColor:v5];
  }
}

- (uint64_t)_isHandwritingToolSelected
{
  v1 = [self ink];
  v2 = v1;
  if (v1)
  {
    _isHandwritingInk = [v1 _isHandwritingInk];
  }

  else
  {
    _isHandwritingInk = 0;
  }

  return _isHandwritingInk;
}

- (void)setRulerEnabled:()UITextViewDrawing
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setRulerEnabled:a3];
}

- (uint64_t)isRulerEnabled
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  rulerEnabled = [_pkTiledViewIfEnabled rulerEnabled];

  return rulerEnabled;
}

- (id)linedPaper
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  linedPaper = [_pkTiledViewIfEnabled linedPaper];

  return linedPaper;
}

- (void)setLinedPaper:()UITextViewDrawing
{
  v4 = a3;
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setLinedPaper:v4];
}

- (uint64_t)_cropDrawingAttachmentsWhenViewIsSmaller
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  cropDrawingAttachmentsWhenViewIsSmaller = [_pkTiledViewIfEnabled cropDrawingAttachmentsWhenViewIsSmaller];

  return cropDrawingAttachmentsWhenViewIsSmaller;
}

- (void)_setCropDrawingAttachmentsWhenViewIsSmaller:()UITextViewDrawing
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setCropDrawingAttachmentsWhenViewIsSmaller:a3];
}

- (void)setPaperTexture:()UITextViewDrawing
{
  v4 = a3;
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setPaperTexture:v4];
}

- (void)setDrawingDelegate:()UITextViewDrawing
{
  obj = a3;
  _drawingInfo = [self _drawingInfo];
  v5 = _drawingInfo;
  if (_drawingInfo)
  {
    objc_storeWeak((_drawingInfo + 32), obj);
  }
}

- (uint64_t)setStylusDrawingEnabled:()UITextViewDrawing
{
  v5 = objc_opt_class();

  return [self setStylusDrawingEnabled:a3 drawingClass:v5 sixChannelBlending:0];
}

- (void)setStylusDrawingEnabled:()UITextViewDrawing drawingClass:sixChannelBlending:
{
  if (a3)
  {
    _drawingInfo = [self _drawingInfo];
    v9 = objc_opt_class();

    if (v9 == a4)
    {
      _pkTiledViewIfEnabled = 0;
      obj = 0;
    }

    else
    {
      _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
      obj = [self drawingDelegate];
      _pkTiledViewIfEnabled2 = [self _pkTiledViewIfEnabled];
      [_pkTiledViewIfEnabled2 removeFromSuperview];

      [self _clearDrawingInfo];
    }

    if ([self isStylusDrawingEnabled])
    {
      [self isStylusDrawingEnabled];
    }

    else
    {
      window = [self window];
      screen = [window screen];
      displayIdentity = [screen displayIdentity];
      expectsSecureRendering = [displayIdentity expectsSecureRendering];

      v17 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __89__UITextView_UITextViewDrawing__setStylusDrawingEnabled_drawingClass_sixChannelBlending___block_invoke;
      block[3] = &__block_descriptor_33_e5_v8__0l;
      v36 = expectsSecureRendering;
      dispatch_async(v17, block);

      +[PKTextAttachmentDrawingViewProvider registerViewProviderClassIfNecessary];
      _drawingInfoCreateIfNecessary = [self _drawingInfoCreateIfNecessary];
      v19 = [objc_alloc(+[PKTextAttachmentDrawingViewProvider tiledViewClassForDrawingClass:](PKTextAttachmentDrawingViewProvider tiledViewClassForDrawingClass:{a4)), "initInScrollView:sixChannelBlending:defaultDrawingClass:", self, a5, a4}];
      if (_drawingInfoCreateIfNecessary)
      {
        objc_storeStrong((_drawingInfoCreateIfNecessary + 24), v19);

        v20 = a4;
        v19 = *(_drawingInfoCreateIfNecessary + 40);
        *(_drawingInfoCreateIfNecessary + 40) = v20;
      }

      if (_pkTiledViewIfEnabled)
      {
        v21 = [_pkTiledViewIfEnabled ink];
        v22 = _drawingInfoCreateIfNecessary ? *(_drawingInfoCreateIfNecessary + 24) : 0;
        [v22 setInk:v21];

        cropDrawingAttachmentsWhenViewIsSmaller = [_pkTiledViewIfEnabled cropDrawingAttachmentsWhenViewIsSmaller];
        v24 = _drawingInfoCreateIfNecessary ? *(_drawingInfoCreateIfNecessary + 24) : 0;
        [v24 setCropDrawingAttachmentsWhenViewIsSmaller:cropDrawingAttachmentsWhenViewIsSmaller];
        linedPaper = [_pkTiledViewIfEnabled linedPaper];
        v26 = _drawingInfoCreateIfNecessary ? *(_drawingInfoCreateIfNecessary + 24) : 0;
        [v26 setLinedPaper:linedPaper];

        rulerEnabled = [_pkTiledViewIfEnabled rulerEnabled];
        if (_drawingInfoCreateIfNecessary)
        {
          [*(_drawingInfoCreateIfNecessary + 24) setRulerEnabled:rulerEnabled];
          objc_storeWeak((_drawingInfoCreateIfNecessary + 32), obja);
        }

        else
        {
          [0 setRulerEnabled:rulerEnabled];
        }

        if ([_pkTiledViewIfEnabled overrideUserInterfaceStyle])
        {
          overrideUserInterfaceStyle = [_pkTiledViewIfEnabled overrideUserInterfaceStyle];
          if (_drawingInfoCreateIfNecessary)
          {
            v29 = *(_drawingInfoCreateIfNecessary + 24);
          }

          else
          {
            v29 = 0;
          }

          [v29 setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];
        }
      }

      [self _updateDrawingBackgroundColor];
      if ([self isPaperEnabled])
      {
        if (_drawingInfoCreateIfNecessary)
        {
          canvasView = [*(_drawingInfoCreateIfNecessary + 24) canvasView];
          [canvasView setOpaque:0];

          v31 = *(_drawingInfoCreateIfNecessary + 24);
        }

        else
        {
          canvasView2 = [0 canvasView];
          [canvasView2 setOpaque:0];

          v31 = 0;
        }

        [v31 setCanvasViewZOrderPolicy:1];
      }
    }
  }

  else
  {
    [self isStylusDrawingEnabled];
    if ([self isStylusDrawingEnabled])
    {
      [self _setContentScrollInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
      _pkTiledViewIfEnabled3 = [self _pkTiledViewIfEnabled];
      [_pkTiledViewIfEnabled3 removeFromSuperview];

      [self _clearDrawingInfo];
    }
  }
}

- (uint64_t)setPaperEnabled:()UITextViewDrawing
{
  v5 = PKIsSixChannelBlendEnabledInPaper();
  v6 = +[PKDrawing drawingClassForPaper];

  return [self setStylusDrawingEnabled:a3 drawingClass:v6 sixChannelBlending:v5 & a3];
}

- (uint64_t)isFingerDrawingEnabled
{
  result = [self isStylusDrawingEnabled];
  if (result)
  {
    _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
    allowsFingerDrawing = [_pkTiledViewIfEnabled allowsFingerDrawing];

    return allowsFingerDrawing;
  }

  return result;
}

- (void)_willBeginInteractiveResize
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled _willBeginInteractiveResize];
}

- (void)_didEndInteractiveResize
{
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled _didEndInteractiveResize];
}

- (double)_boundsForDrawingTextAttachment:()UITextViewDrawing characterIndex:layoutManager:
{
  v3 = [a3 viewProviderForParentView:self characterIndex:? layoutManager:?];
  view = [v3 view];
  if (objc_opt_respondsToSelector())
  {
    [view drawingTextAttachmentBounds];
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
    textLayoutManager = [self textLayoutManager];

    if (!textLayoutManager)
    {
      v11 = *MEMORY[0x1E695F050];
      goto LABEL_10;
    }
  }

  v8 = [self _pk_viewProviderForAttachment:v6 atCharacterIndex:a4 createIfNeeded:1];
  view = [v8 view];
  if (objc_opt_respondsToSelector())
  {
    [view drawingTextAttachmentBoundsForContainerView:self];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = *MEMORY[0x1E695F050];
      goto LABEL_9;
    }

    [view drawingTextAttachmentBounds];
  }

  v11 = v10;
LABEL_9:

LABEL_10:
  return v11;
}

- (id)_textRangeFromRange:()UITextViewDrawing
{
  beginningOfDocument = [self beginningOfDocument];
  v8 = [self positionFromPosition:beginningOfDocument offset:a3];

  v9 = [self positionFromPosition:v8 offset:a4];
  v10 = [self textRangeFromPosition:v8 toPosition:v9];

  return v10;
}

- (id)_insertEmptyDrawingAttachmentAtLocation:()UITextViewDrawing
{
  if ([self _canAddDrawingAtIndex:?] && (objc_msgSend(self, "textStorage"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    _drawingInfo = [self _drawingInfo];
    v7 = _drawingInfo;
    if (_drawingInfo)
    {
      _drawingInfo = _drawingInfo[5];
    }

    fileType = [_drawingInfo fileType];

    drawingDelegate = [self drawingDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      drawingDelegate2 = [self drawingDelegate];
      [drawingDelegate2 textView:self willAddDrawingAtIndex:a3];
    }

    drawingDelegate3 = [self drawingDelegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0 || ([self drawingDelegate], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "textView:newAttachmentForFileType:", self, fileType), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
    {
      v16 = [MEMORY[0x1E69DB7F0] textAttachmentClassForFileType:fileType];
      if (!v16)
      {
        v16 = objc_opt_class();
      }

      v17 = [v16 alloc];
      data = [MEMORY[0x1E695DEF0] data];
      v15 = [v17 initWithData:data ofType:fileType];
    }

    [self contentOffset];
    [self setContentOffset:?];
    [self resignFirstResponder];
    [self bounds];
    [v15 setBounds:{0.0, 0.0}];
    [v15 setPkInserting:1];
    v19 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v15];
    selectedRange = [self selectedRange];
    v22 = v21;
    [self setSelectedRange:{a3, 0}];
    [self _pasteAttributedString:v19 pasteAsRichText:1];
    [self setSelectedRange:{selectedRange, v22}];
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
  textStorage = [self textStorage];
  v11 = *MEMORY[0x1E69DB5F8];
  textStorage2 = [self textStorage];
  v13 = [textStorage2 length];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__UITextView_UITextViewDrawing___removeDrawingAttachment_withView_forDeletion___block_invoke;
  v16[3] = &unk_1E82DC2D8;
  v20 = a5;
  v17 = v8;
  selfCopy = self;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  [textStorage enumerateAttribute:v11 inRange:0 options:v13 usingBlock:{0, v16}];
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
    selfCopy = self;
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
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager)
  {
    layoutManager = 0;
  }

  else
  {
    layoutManager = [self layoutManager];
  }

  textStorage = [self textStorage];
  v25 = *MEMORY[0x1E69DB5F8];
  textStorage2 = [self textStorage];
  v27 = [textStorage2 length];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__UITextView_UITextViewDrawing___undoDrawingBounds_viewBounds_ofAttachmentUUID___block_invoke;
  v31[3] = &unk_1E82DC328;
  v32 = layoutManager;
  selfCopy = self;
  v34 = textLayoutManager;
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
  v29 = textLayoutManager;
  v30 = layoutManager;
  [textStorage enumerateAttribute:v25 inRange:0 options:v27 usingBlock:{0, v31}];
}

- (void)_upgradeDrawingAtCharacterIndex:()UITextViewDrawing itemProviders:insertionLocationInDrawing:
{
  v13 = a6;
  drawingDelegate = [self drawingDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    drawingDelegate2 = [self drawingDelegate];
    [drawingDelegate2 textView:self upgradeDrawingAtIndex:a5 itemProviders:v13 insertionLocationInDrawing:{a2, a3}];
  }
}

- (void)_canvasViewWillCreateSnapshot
{
  superview = [self superview];
  _pkTiledViewIfEnabled = [self _pkTiledViewIfEnabled];
  [_pkTiledViewIfEnabled setContentSnapshottingView:superview];
}

- (void)_willBeginNewStrokeForTouch:()UITextViewDrawing
{
  v10 = a3;
  [self _updateDrawingBackgroundColor];
  drawingDelegate = [self drawingDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    drawingDelegate2 = [self drawingDelegate];
    [drawingDelegate2 textViewWillBeginStroke:self];
  }

  drawingDelegate3 = [self drawingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    drawingDelegate4 = [self drawingDelegate];
    [drawingDelegate4 textViewWillBeginStroke:self forTouch:v10];
  }
}

- (void)_didEndStroke
{
  drawingDelegate = [self drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    drawingDelegate2 = [self drawingDelegate];
    [drawingDelegate2 textViewDidEndStroke:self];
  }
}

- (uint64_t)_canAddStroke
{
  drawingDelegate = [self drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  drawingDelegate2 = [self drawingDelegate];
  v5 = [drawingDelegate2 textViewCanAddStroke:self];

  return v5;
}

- (uint64_t)_canAddDrawingAtIndex:()UITextViewDrawing
{
  drawingDelegate = [self drawingDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  drawingDelegate2 = [self drawingDelegate];
  v8 = [drawingDelegate2 textView:self canAddDrawingAtIndex:a3];

  return v8;
}

- (uint64_t)_canInsertDrawing
{
  selectedRange = [self selectedRange];

  return [self _canInsertDrawingInRange:{selectedRange, v2}];
}

- (BOOL)_canInsertDrawingInRange:()UITextViewDrawing
{
  v7 = 0;
  if ([self isStylusDrawingEnabled] && !a4)
  {
    textStorage = [self textStorage];
    if ([textStorage length])
    {
      textStorage2 = [self textStorage];
      v7 = a3 < [textStorage2 length] - 1;
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
  result = [self selectedRange];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return [self _insertEmptyDrawingAttachmentAtLocation:result];
  }

  return result;
}

- (uint64_t)_canSelectDrawing
{
  drawingDelegate = [self drawingDelegate];
  v3 = objc_opt_respondsToSelector();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  drawingDelegate2 = [self drawingDelegate];
  v5 = [drawingDelegate2 textViewCanSelectDrawing:self];

  return v5;
}

- (id)_pk_textRangeFromCharacterRange:()UITextViewDrawing textLayoutManager:
{
  v7 = a5;
  documentRange = [v7 documentRange];
  location = [documentRange location];
  v10 = [v7 locationFromLocation:location withOffset:a3];

  v11 = [v7 locationFromLocation:v10 withOffset:a4];

  v12 = [objc_alloc(MEMORY[0x1E69DB848]) initWithLocation:v10 endLocation:v11];

  return v12;
}

- (void)_pk_invalidateLayoutForCharacterRange:()UITextViewDrawing invalidateDisplay:ensureLayout:
{
  v23 = *MEMORY[0x1E69E9840];
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager || ([self layoutManager], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
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

    v15 = [self _pk_textRangeFromCharacterRange:a3 textLayoutManager:{a4, textLayoutManager}];
    [textLayoutManager invalidateLayoutForRange:v15];
    if (a6)
    {
      textViewportLayoutController = [textLayoutManager textViewportLayoutController];
      [textViewportLayoutController layoutViewport];
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
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager || ([self layoutManager], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
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

    v11 = [self _pk_textRangeFromCharacterRange:a3 textLayoutManager:{a4, textLayoutManager}];
    [textLayoutManager invalidateLayoutForRange:v11];
    textViewportLayoutController = [textLayoutManager textViewportLayoutController];
    [textViewportLayoutController layoutViewport];
  }

  else
  {
    v11 = v13;
    [v13 ensureLayoutForCharacterRange:{a3, a4}];
  }
}

- (double)_pk_lineFragmentRectForGlyphAtCharacterIndex:()UITextViewDrawing
{
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager || ([self layoutManager], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    documentRange = [textLayoutManager documentRange];
    location = [documentRange location];
    v9 = [textLayoutManager locationFromLocation:location withOffset:a3];

    v10 = [textLayoutManager textLayoutFragmentForLocation:v9];
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
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (!textLayoutManager)
  {
    layoutManager = [self layoutManager];
    if (layoutManager)
    {
      v13 = layoutManager;
      v14 = [v8 viewProviderForParentView:self characterIndex:a4 layoutManager:layoutManager];
      goto LABEL_11;
    }
  }

  documentRange = [textLayoutManager documentRange];
  location = [documentRange location];
  v13 = [textLayoutManager locationFromLocation:location withOffset:a4];

  v14 = [textLayoutManager viewProviderForTextAttachment:v8 location:v13];
  if (v14 || !a5)
  {
LABEL_11:

    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v15 = [self _cachedViewProviderForTextAttachment:v8];
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
    v14 = [v8 viewProviderForParentView:self location:v13 textContainer:textContainer];

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

  [textLayoutManager setViewProvider:v14 forTextAttachment:v8 location:v13];
LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [self _setCachedViewProvider:v14 textAttachment:v8];
  }

LABEL_22:

  return v14;
}

- (id)_cacheIdentifierForTextAttachment:()UITextViewDrawing
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    _paperIdentifier = [v3 _paperIdentifier];
LABEL_3:
    v5 = _paperIdentifier;
    goto LABEL_9;
  }

  fileType = [v3 fileType];
  if ([fileType isEqualToString:@"com.apple.drawing"])
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      _paperIdentifier = [v3 viewIdentifier];
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
  v6 = [self _cacheIdentifierForTextAttachment:a4];
  if (v6)
  {
    _drawingInfo = [self _drawingInfo];
    v8 = _drawingInfo;
    if (_drawingInfo)
    {
      [*(_drawingInfo + 48) setObject:v9 forKeyedSubscript:v6];
    }
  }
}

- (id)_cachedViewProviderForTextAttachment:()UITextViewDrawing
{
  v2 = [self _cacheIdentifierForTextAttachment:?];
  if (v2 && ([self _drawingInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
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
  _drawingInfo = [self _drawingInfo];
  if (_drawingInfo)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    textStorage = [self textStorage];
    v5 = *MEMORY[0x1E69DB5F8];
    v6 = [textStorage length];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__UITextView_UITextViewDrawing___cleanupStaleCachedViewProviders__block_invoke;
    v18[3] = &unk_1E82DC350;
    v18[4] = self;
    v7 = v3;
    v19 = v7;
    [textStorage enumerateAttribute:v5 inRange:0 options:v6 usingBlock:{0, v18}];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [_drawingInfo[6] allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if (([v7 containsObject:v13] & 1) == 0)
          {
            [_drawingInfo[6] removeObjectForKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (void)_pk_checkForTK2LostViewProviderInAttachment:()UITextViewDrawing atCharacterIndex:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  textContainer = [self textContainer];
  textLayoutManager = [textContainer textLayoutManager];
  if (textLayoutManager)
  {
    v9 = [self _pk_textRangeFromCharacterRange:a4 textLayoutManager:{1, textLayoutManager}];
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    location = [v9 location];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__UITextView_UITextViewDrawing___pk_checkForTK2LostViewProviderInAttachment_atCharacterIndex___block_invoke;
    v14[3] = &unk_1E82DC378;
    v14[4] = &v15;
    v11 = [textLayoutManager enumerateTextLayoutFragmentsFromLocation:location options:0 usingBlock:v14];

    if (*(v16 + 24) == 1)
    {
      v12 = [self _cachedViewProviderForTextAttachment:v6];
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