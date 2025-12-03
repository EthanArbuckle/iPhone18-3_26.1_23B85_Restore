@interface PKTiledGestureView
- (BOOL)_shouldForwardSelectionAtPoint:(CGPoint)point withEvent:(id)event;
- (BOOL)_shouldSelectionBeginAtPoint:(CGPoint)point withEvent:(id)event;
- (BOOL)hitTestAttachmentChrome_point:(CGPoint)chrome_point isStylus:(BOOL)stylus withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestClearSelectionIfItExists_point:(CGPoint)exists_point isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestDataDetector_point:(CGPoint)detector_point isStylus:(BOOL)stylus withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestDelegateSelection_point:(CGPoint)selection_point isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestDragEvent_point:(CGPoint)event_point withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestHandleScrolling_point:(CGPoint)scrolling_point isStylus:(BOOL)stylus isHover:(BOOL)hover;
- (BOOL)hitTestHandwritingInk_point:(CGPoint)ink_point isStylus:(BOOL)stylus isHover:(BOOL)hover;
- (BOOL)hitTestInsertNewAttachments_point:(CGPoint)attachments_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestPencilStickiness_point:(CGPoint)stickiness_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestSelectionGestures_point:(CGPoint)gestures_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit;
- (BOOL)hitTestSelectionView_point:(CGPoint)view_point withEvent:(id)event hit:(id *)hit;
- (PKTiledGestureView)init;
- (PKTiledView)tiledView;
- (id)_hitTestAttachmentMiniMenu:(CGPoint)menu;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)hoverController;
- (id)ink;
- (id)rulerController;
- (id)scrollView;
- (id)selectionController;
- (void)_recordDrawingStatisticsForHitPoint:(CGPoint)point withEvent:(id)event;
- (void)_setupPencilShadowViewIfNecessary;
- (void)hitTestUpdateEffects_point:(CGPoint)effects_point isStylus:(BOOL)stylus isHover:(BOOL)hover;
@end

@implementation PKTiledGestureView

- (PKTiledGestureView)init
{
  v7.receiver = self;
  v7.super_class = PKTiledGestureView;
  v2 = [(PKTiledGestureView *)&v7 init];
  v3 = +[PKStatisticsManager sharedStatisticsManager];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&v2->_drawingPaletteStatistics, v5);

  return v2;
}

- (id)scrollView
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  scrollView = [tiledView scrollView];

  return scrollView;
}

- (id)ink
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  v3 = [tiledView ink];

  return v3;
}

- (id)hoverController
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  hoverController = [tiledView hoverController];

  return hoverController;
}

- (void)_setupPencilShadowViewIfNecessary
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  toolShadowShouldBeActive = [tiledView toolShadowShouldBeActive];

  if (toolShadowShouldBeActive)
  {
    window = [(PKTiledGestureView *)self window];
    windowScene = [window windowScene];
    window5 = [PKPencilObserverInteraction interactionForScene:windowScene];

    if (![(PKPencilObserverInteraction *)window5 isActive])
    {
      goto LABEL_6;
    }

    window2 = [(PKTiledGestureView *)self window];
    windowScene2 = [window2 windowScene];
    [PKPencilShadowView createShadowViewForSceneIfNecessary:windowScene2];

    window3 = [(PKTiledGestureView *)self window];
    windowScene3 = [window3 windowScene];
    v11 = [PKPencilShadowView shadowViewForScene:windowScene3];
    tiledView2 = [(PKTiledGestureView *)self tiledView];
    [v11 keepVisibleInTiledView:tiledView2];

    window4 = [(PKTiledGestureView *)self window];
    windowScene4 = [window4 windowScene];
    v15 = [PKPencilShadowView shadowViewForScene:windowScene4];
    v16 = [(PKTiledGestureView *)self ink];
    [v15 setInk:v16];
  }

  else
  {
    window5 = [(PKTiledGestureView *)self window];
    window4 = [window5 windowScene];
    [PKPencilShadowView hideShadowViewForSceneIfNecessary:window4];
  }

LABEL_6:
}

- (id)rulerController
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  rulerController = [tiledView rulerController];

  return rulerController;
}

- (id)selectionController
{
  tiledView = [(PKTiledGestureView *)self tiledView];
  selectionController = [tiledView selectionController];

  return selectionController;
}

- (void)hitTestUpdateEffects_point:(CGPoint)effects_point isStylus:(BOOL)stylus isHover:(BOOL)hover
{
  if (stylus)
  {
    y = effects_point.y;
    x = effects_point.x;
    [(PKTiledGestureView *)self bounds];
    v12.x = x;
    v12.y = y;
    if (CGRectContainsPoint(v13, v12))
    {
      tiledView = [(PKTiledGestureView *)self tiledView];
      [tiledView _setupPencilShadowViewIfNecessary];
    }

    if (!hover)
    {
      hoverController = [(PKTiledGestureView *)self hoverController];
      [(PKHoverController *)hoverController didReceiveNormalTouch:?];
    }
  }
}

- (BOOL)hitTestHandwritingInk_point:(CGPoint)ink_point isStylus:(BOOL)stylus isHover:(BOOL)hover
{
  v7 = [(PKTiledGestureView *)self ink:ink_point.x];
  if ([v7 _isHandwritingInk])
  {
    v8 = stylus & ~hover;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hitTestHandleScrolling_point:(CGPoint)scrolling_point isStylus:(BOOL)stylus isHover:(BOOL)hover
{
  stylusCopy = stylus;
  v7 = [(PKTiledGestureView *)self scrollView:stylus];
  isDecelerating = [v7 isDecelerating];

  if (isDecelerating)
  {
    v9 = os_log_create("com.apple.pencilkit", "");
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v26 = 0;
      v11 = "Avoided tiled view hit while decelerating";
      v12 = &v26;
LABEL_16:
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, v11, v12, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  scrollView = [(PKTiledGestureView *)self scrollView];
  _isAnimatingScroll = [scrollView _isAnimatingScroll];

  if (_isAnimatingScroll)
  {
    v9 = os_log_create("com.apple.pencilkit", "");
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = 0;
      v11 = "Avoided tiled view hit while animating scroll";
      v12 = &v25;
      goto LABEL_16;
    }

LABEL_17:

    return v10;
  }

  scrollView2 = [(PKTiledGestureView *)self scrollView];
  isDragging = [scrollView2 isDragging];

  if (isDragging)
  {
    if (stylusCopy)
    {
      scrollView3 = [(PKTiledGestureView *)self scrollView];
      panGestureRecognizer = [scrollView3 panGestureRecognizer];
      state = [panGestureRecognizer state];

      if (state)
      {
        scrollView4 = [(PKTiledGestureView *)self scrollView];
        panGestureRecognizer2 = [scrollView4 panGestureRecognizer];
        [panGestureRecognizer2 setState:4];

        v9 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, "Cancelling the pan gesture to start drawing instead.", buf, 2u);
        }

        v10 = 0;
        goto LABEL_17;
      }
    }

    v9 = os_log_create("com.apple.pencilkit", "");
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v23 = 0;
      v11 = "Avoided tiled view hit while dragging";
      v12 = &v23;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  return 0;
}

- (BOOL)hitTestSelectionView_point:(CGPoint)view_point withEvent:(id)event hit:(id *)hit
{
  y = view_point.y;
  x = view_point.x;
  eventCopy = event;
  selectionController = [(PKTiledGestureView *)self selectionController];
  v11 = selectionController;
  if (selectionController)
  {
    v12 = *(selectionController + 152);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    goto LABEL_9;
  }

  [v13 convertPoint:self fromView:{x, y}];
  v14 = [v13 hitTest:eventCopy withEvent:?];
  v15 = v14;
  if (!v14)
  {
    if ([v13 isDragging])
    {
      tiledView = [(PKTiledGestureView *)self tiledView];
      v19 = [tiledView hitAttachment:1 includeStandinAttachment:{x, y}];

      if (v19)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v16 = v14;
LABEL_6:
  *hit = v15;

  v17 = 1;
LABEL_10:

  return v17;
}

- (BOOL)hitTestDragEvent_point:(CGPoint)event_point withEvent:(id)event hit:(id *)hit
{
  y = event_point.y;
  x = event_point.x;
  eventCopy = event;
  NSClassFromString(&cfstr_Uidragevent.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    tiledView = [(PKTiledGestureView *)self tiledView];
    tiledView2 = [(PKTiledGestureView *)self tiledView];
    v13 = [tiledView hitAttachment:0 includeStandinAttachment:objc_msgSend(tiledView2 expandBottomAttachment:{"_shouldExpandBottomAttachmentForDragAndDrop"), x, y}];

    if (v13)
    {
      attachmentContainerView = [v13 attachmentContainerView];
      v15 = attachmentContainerView;
      if (attachmentContainerView == v13)
      {
        v18 = v13;
        *hit = v13;
      }

      else
      {
        [attachmentContainerView convertPoint:self fromView:{x, y}];
        v16 = [v15 hitTest:eventCopy withEvent:?];
        v17 = v16;
        if (!v16)
        {
          v16 = v15;
        }

        *hit = v16;
      }
    }

    else
    {
      *hit = 0;
    }
  }

  return isKindOfClass & 1;
}

- (id)_hitTestAttachmentMiniMenu:(CGPoint)menu
{
  y = menu.y;
  x = menu.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tiledView = [(PKTiledGestureView *)self tiledView];
  visibleAttachments = [tiledView visibleAttachments];

  v8 = [visibleAttachments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(visibleAttachments);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 convertPoint:self fromView:{x, y}];
        v13 = [v12 hitMiniMenu:?];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v9 = [visibleAttachments countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)hitTestAttachmentChrome_point:(CGPoint)chrome_point isStylus:(BOOL)stylus withEvent:(id)event hit:(id *)hit
{
  stylusCopy = stylus;
  y = chrome_point.y;
  x = chrome_point.x;
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v12 = [(PKTiledGestureView *)self _hitTestAttachmentMiniMenu:x, y];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    *hit = v13;
    v15 = 1;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    tiledView = [(PKTiledGestureView *)self tiledView];
    visibleAttachments = [tiledView visibleAttachments];

    v18 = [visibleAttachments countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(visibleAttachments);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          [v22 convertPoint:self fromView:{x, y}];
          v24 = v23;
          v26 = v25;
          if ([v22 hitChrome:stylusCopy isStylus:eventCopy event:?])
          {
            *hit = 0;
            v15 = 1;
            goto LABEL_15;
          }

          v27 = [v22 hitTest:eventCopy withEvent:{v24, v26}];

          if (v27)
          {
            goto LABEL_13;
          }
        }

        v19 = [visibleAttachments countByEnumeratingWithState:&v29 objects:v33 count:16];
        v15 = 0;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_13:
      v15 = 0;
    }

LABEL_15:
  }

  return v15;
}

- (BOOL)hitTestDataDetector_point:(CGPoint)detector_point isStylus:(BOOL)stylus withEvent:(id)event hit:(id *)hit
{
  y = detector_point.y;
  x = detector_point.x;
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (stylus)
  {
    v12 = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    tiledView = [(PKTiledGestureView *)self tiledView];
    visibleAttachments = [tiledView visibleAttachments];

    v15 = [visibleAttachments countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(visibleAttachments);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          [v19 convertPoint:self fromView:{x, y}];
          v20 = [v19 inlineViewAtPoint:?];
          *hit = v20;
          if (v20)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        v16 = [visibleAttachments countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  return v12;
}

- (BOOL)_shouldSelectionBeginAtPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  selectionController = [(PKTiledGestureView *)self selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
  isEnabled = [selectionInteraction isEnabled];

  if (isEnabled)
  {
    selectionController2 = [(PKTiledGestureView *)self selectionController];
    selectionInteraction2 = [(PKSelectionController *)selectionController2 selectionInteraction];
    v13 = [selectionInteraction2 _selectionInteractionShouldBeginAtPoint:eventCopy forEvent:0 orGestureRecognizer:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)_shouldForwardSelectionAtPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  selectionController = [(PKTiledGestureView *)self selectionController];
  selectionInteraction = [(PKSelectionController *)selectionController selectionInteraction];
  isEnabled = [selectionInteraction isEnabled];

  if (isEnabled)
  {
    selectionController2 = [(PKTiledGestureView *)self selectionController];
    selectionInteraction2 = [(PKSelectionController *)selectionController2 selectionInteraction];
    v13 = [selectionInteraction2 _selectionInteractionShouldForwardAtPoint:eventCopy forEvent:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hitTestSelectionGestures_point:(CGPoint)gestures_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit
{
  stylusCopy = stylus;
  y = gestures_point.y;
  x = gestures_point.x;
  eventCopy = event;
  if (hover || ![(PKTiledGestureView *)self _shouldSelectionBeginAtPoint:eventCopy withEvent:x, y])
  {
    v21 = 0;
  }

  else
  {
    selectionController = [(PKTiledGestureView *)self selectionController];
    v15 = selectionController;
    if (selectionController)
    {
      v16 = *(selectionController + 160);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [(PKTiledGestureView *)self ink];
    _isLassoInk = [v18 _isLassoInk];

    if (_isLassoInk)
    {
      v20 = 0;
    }

    else
    {
      tiledView = [(PKTiledGestureView *)self tiledView];
      v20 = ([tiledView allowsFingerDrawing] | stylusCopy) ^ 1;
    }

    tiledView2 = [(PKTiledGestureView *)self tiledView];
    v24 = [tiledView2 hitAttachment:1 includeStandinAttachment:1 expandBottomAttachment:{x, y}];
    if (v24)
    {
      selectionController2 = [(PKTiledGestureView *)self selectionController];
      if (selectionController2)
      {
        v26 = selectionController2[16] != 0;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    tiledView3 = [(PKTiledGestureView *)self tiledView];
    v28 = [tiledView3 hitAttachment:0 includeStandinAttachment:0 expandBottomAttachment:{x, y}];
    v29 = v28 != 0;

    v21 = 0;
    if (v17 && ((v20 | _isLassoInk) & 1) != 0 && (v29 || v26))
    {
      [v17 convertPoint:self fromView:{x, y}];
      v30 = [v17 hitTest:eventCopy withEvent:?];
      *hit = v30;
      if (v30)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  return v21 & 1;
}

- (BOOL)hitTestDelegateSelection_point:(CGPoint)selection_point isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit
{
  y = selection_point.y;
  x = selection_point.x;
  eventCopy = event;
  if (![(PKTiledGestureView *)self _shouldForwardSelectionAtPoint:eventCopy withEvent:x, y])
  {
    goto LABEL_5;
  }

  tiledView = [(PKTiledGestureView *)self tiledView];
  v12 = 1;
  v13 = [tiledView hitAttachment:1 includeStandinAttachment:{x, y}];

  attachmentContainerView = [v13 attachmentContainerView];
  [attachmentContainerView convertPoint:self fromView:{x, y}];
  v15 = [attachmentContainerView hitTest:eventCopy withEvent:?];
  v16 = v15;
  if (!v15)
  {
    v15 = attachmentContainerView;
  }

  *hit = v15;

  v17 = *hit;
  if (!v17)
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (BOOL)hitTestClearSelectionIfItExists_point:(CGPoint)exists_point isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit
{
  v10 = [(PKTiledGestureView *)self selectionController:exists_point.x];
  if (([(PKSelectionController *)v10 hasStrokesOrElementsSelection]& 1) == 0)
  {

    return 0;
  }

  tiledView = [(PKTiledGestureView *)self tiledView];
  selectionInteraction = [tiledView selectionInteraction];
  isEnabled = [selectionInteraction isEnabled];

  if (!isEnabled)
  {
    return 0;
  }

  if (event && !hover)
  {
    selectionController = [(PKTiledGestureView *)self selectionController];
    v15 = selectionController;
    if (selectionController)
    {
      [(PKSelectionController *)selectionController clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }

    selectionController2 = [(PKTiledGestureView *)self selectionController];
    [(PKSelectionController *)selectionController2 clearExternalSelectionIfNecessary];
  }

  *hit = 0;
  return 1;
}

- (BOOL)hitTestPencilStickiness_point:(CGPoint)stickiness_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit
{
  y = stickiness_point.y;
  x = stickiness_point.x;
  eventCopy = event;
  tiledView = [(PKTiledGestureView *)self tiledView];
  if (![tiledView allowsFingerDrawing])
  {

    if (stylus)
    {
      v17 = 0;
      goto LABEL_21;
    }

LABEL_7:
    tiledView2 = [(PKTiledGestureView *)self tiledView];
    v19 = [tiledView2 hitAttachment:1 includeStandinAttachment:{x, y}];

    attachmentContainerView = [v19 attachmentContainerView];
    isAtEndOfDocument = [v19 isAtEndOfDocument];
    if ((isAtEndOfDocument & 1) == 0)
    {
      tiledView3 = [(PKTiledGestureView *)self tiledView];
      standInAttachmentView = [tiledView3 standInAttachmentView];
      v8 = standInAttachmentView;
      if (v19 != standInAttachmentView)
      {

LABEL_10:
        *hit = 0;
LABEL_20:

        v17 = 1;
        goto LABEL_21;
      }
    }

    if (([v19 isFirstResponder] & 1) != 0 || objc_msgSend(attachmentContainerView, "isFirstResponder"))
    {
      if ((isAtEndOfDocument & 1) == 0)
      {
      }
    }

    else
    {
      window = [(PKTiledGestureView *)self window];
      v28 = [PKToolPicker isActiveToolPickerVisibleForWindow:window];

      if (isAtEndOfDocument)
      {
        if (!v28)
        {
          goto LABEL_10;
        }
      }

      else
      {

        if (!v28)
        {
          goto LABEL_10;
        }
      }
    }

    if (attachmentContainerView == v19)
    {
      v25 = v19;
      *hit = v19;
    }

    else
    {
      [attachmentContainerView convertPoint:self fromView:{x, y}];
      v23 = [attachmentContainerView hitTest:eventCopy withEvent:?];
      v24 = v23;
      if (!v23)
      {
        v23 = attachmentContainerView;
      }

      *hit = v23;
    }

    goto LABEL_20;
  }

  tiledView3 = [(PKTiledGestureView *)self tiledView];
  isReadOnlyView = [tiledView3 isReadOnlyView];

  v17 = 0;
  if (isReadOnlyView && !stylus)
  {
    goto LABEL_7;
  }

LABEL_21:

  return v17;
}

- (BOOL)hitTestInsertNewAttachments_point:(CGPoint)attachments_point isStylus:(BOOL)stylus isHover:(BOOL)hover withEvent:(id)event hit:(id *)hit
{
  y = attachments_point.y;
  x = attachments_point.x;
  eventCopy = event;
  if (!hover)
  {
    v16 = [(PKTiledGestureView *)self ink];
    if ([v16 _isHandwritingInk])
    {
    }

    else
    {
      tiledView = [(PKTiledGestureView *)self tiledView];
      v18 = [tiledView hitAttachment:{x, y}];

      if (!v18)
      {
        tiledView2 = [(PKTiledGestureView *)self tiledView];
        scrollView = [(PKTiledGestureView *)self scrollView];
        [scrollView convertPoint:self fromView:{x, y}];
        v21 = [tiledView2 insertAttachmentIfInBlankSpace:?];

        if ((v21 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  tiledView3 = [(PKTiledGestureView *)self tiledView];
  v14 = [tiledView3 hitAttachment:1 includeStandinAttachment:{x, y}];

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  *hit = 0;
  v15 = 1;
LABEL_9:

  return v15;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = eventCopy;
  if (!eventCopy || ![eventCopy _hidEvent])
  {
    v12 = 0;
    goto LABEL_13;
  }

  pK_isEventFromPencil = [v8 PK_isEventFromPencil];
  type = [v8 type];
  v11 = type == 11;
  [(PKTiledGestureView *)self hitTestUpdateEffects_point:pK_isEventFromPencil isStylus:v11 isHover:x, y];
  [(PKTiledGestureView *)self _recordDrawingStatisticsForHitPoint:v8 withEvent:x, y];
  if (![(PKTiledGestureView *)self hitTestHandwritingInk_point:pK_isEventFromPencil isStylus:v11 isHover:x, y]&& ![(PKTiledGestureView *)self hitTestHandleScrolling_point:pK_isEventFromPencil isStylus:type == 11 isHover:x, y])
  {
    v37 = 0;
    v14 = [(PKTiledGestureView *)self hitTestSelectionView_point:v8 withEvent:&v37 hit:x, y];
    v15 = v37;
    selfCopy = v15;
    if (v14)
    {
LABEL_8:
      v13 = selfCopy;
LABEL_11:
      v12 = selfCopy;
      goto LABEL_12;
    }

    v36 = v15;
    v17 = [(PKTiledGestureView *)self hitTestDragEvent_point:v8 withEvent:&v36 hit:x, y];
    v13 = v36;

    if (!v17)
    {
      v35 = v13;
      v19 = [(PKTiledGestureView *)self hitTestAttachmentChrome_point:pK_isEventFromPencil isStylus:v8 withEvent:&v35 hit:x, y];
      selfCopy = v35;

      if (v19)
      {
        goto LABEL_8;
      }

      v34 = selfCopy;
      v20 = [(PKTiledGestureView *)self hitTestDataDetector_point:pK_isEventFromPencil isStylus:v8 withEvent:&v34 hit:x, y];
      v13 = v34;

      if (!v20)
      {
        v33 = v13;
        v21 = [(PKTiledGestureView *)self hitTestSelectionGestures_point:pK_isEventFromPencil isStylus:type == 11 isHover:v8 withEvent:&v33 hit:x, y];
        selfCopy = v33;

        if (v21)
        {
          goto LABEL_8;
        }

        v32 = selfCopy;
        v22 = [(PKTiledGestureView *)self hitTestDelegateSelection_point:type == 11 isHover:v8 withEvent:&v32 hit:x, y];
        v13 = v32;

        if (!v22)
        {
          v31 = v13;
          v23 = [(PKTiledGestureView *)self hitTestClearSelectionIfItExists_point:type == 11 isHover:v8 withEvent:&v31 hit:x, y];
          selfCopy = v31;

          if (v23)
          {
            goto LABEL_8;
          }

          v30 = selfCopy;
          v24 = [(PKTiledGestureView *)self hitTestPencilStickiness_point:pK_isEventFromPencil isStylus:type == 11 isHover:v8 withEvent:&v30 hit:x, y];
          v13 = v30;

          if (!v24)
          {
            tiledView = [(PKTiledGestureView *)self tiledView];
            isReadOnlyView = [tiledView isReadOnlyView];

            if (isReadOnlyView)
            {
              v12 = 0;
              goto LABEL_12;
            }

            v29 = v13;
            v27 = [(PKTiledGestureView *)self hitTestInsertNewAttachments_point:pK_isEventFromPencil isStylus:type == 11 isHover:v8 withEvent:&v29 hit:x, y];
            v28 = v29;

            if (v27)
            {
              selfCopy = v28;
            }

            else
            {
              selfCopy = self;
            }

            v13 = v28;
            goto LABEL_11;
          }
        }
      }
    }

    selfCopy = v13;
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (void)_recordDrawingStatisticsForHitPoint:(CGPoint)point withEvent:(id)event
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  if ([eventCopy PK_isEventFromPencil])
  {
    tiledView = [(PKTiledGestureView *)self tiledView];
    v8 = [tiledView hitAttachment:1 includeStandinAttachment:0 expandBottomAttachment:{x, y}];

    v9 = [(PKTiledGestureView *)self ink];
    _isHandwritingInk = [v9 _isHandwritingInk];

    if (_isHandwritingInk && v8)
    {
      drawingPaletteStatistics = [(PKTiledGestureView *)self drawingPaletteStatistics];
      [eventCopy timestamp];
      [drawingPaletteStatistics recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:?];
LABEL_8:

      goto LABEL_9;
    }

    v12 = [(PKTiledGestureView *)self ink];
    _isStrokeGeneratingInk = [v12 _isStrokeGeneratingInk];

    if (_isStrokeGeneratingInk && !v8)
    {
      drawingPaletteStatistics = [(PKTiledGestureView *)self drawingPaletteStatistics];
      [eventCopy timestamp];
      [drawingPaletteStatistics recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:?];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (PKTiledView)tiledView
{
  WeakRetained = objc_loadWeakRetained(&self->_tiledView);

  return WeakRetained;
}

@end