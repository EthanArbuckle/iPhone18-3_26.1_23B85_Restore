@interface PKTiledGestureView
- (BOOL)_shouldForwardSelectionAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_shouldSelectionBeginAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)hitTestAttachmentChrome_point:(CGPoint)a3 isStylus:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6;
- (BOOL)hitTestClearSelectionIfItExists_point:(CGPoint)a3 isHover:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6;
- (BOOL)hitTestDataDetector_point:(CGPoint)a3 isStylus:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6;
- (BOOL)hitTestDelegateSelection_point:(CGPoint)a3 isHover:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6;
- (BOOL)hitTestDragEvent_point:(CGPoint)a3 withEvent:(id)a4 hit:(id *)a5;
- (BOOL)hitTestHandleScrolling_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5;
- (BOOL)hitTestHandwritingInk_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5;
- (BOOL)hitTestInsertNewAttachments_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7;
- (BOOL)hitTestPencilStickiness_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7;
- (BOOL)hitTestSelectionGestures_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7;
- (BOOL)hitTestSelectionView_point:(CGPoint)a3 withEvent:(id)a4 hit:(id *)a5;
- (PKTiledGestureView)init;
- (PKTiledView)tiledView;
- (id)_hitTestAttachmentMiniMenu:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)hoverController;
- (id)ink;
- (id)rulerController;
- (id)scrollView;
- (id)selectionController;
- (void)_recordDrawingStatisticsForHitPoint:(CGPoint)a3 withEvent:(id)a4;
- (void)_setupPencilShadowViewIfNecessary;
- (void)hitTestUpdateEffects_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5;
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
  v2 = [(PKTiledGestureView *)self tiledView];
  v3 = [v2 scrollView];

  return v3;
}

- (id)ink
{
  v2 = [(PKTiledGestureView *)self tiledView];
  v3 = [v2 ink];

  return v3;
}

- (id)hoverController
{
  v2 = [(PKTiledGestureView *)self tiledView];
  v3 = [v2 hoverController];

  return v3;
}

- (void)_setupPencilShadowViewIfNecessary
{
  v3 = [(PKTiledGestureView *)self tiledView];
  v4 = [v3 toolShadowShouldBeActive];

  if (v4)
  {
    v5 = [(PKTiledGestureView *)self window];
    v6 = [v5 windowScene];
    v17 = [PKPencilObserverInteraction interactionForScene:v6];

    if (![(PKPencilObserverInteraction *)v17 isActive])
    {
      goto LABEL_6;
    }

    v7 = [(PKTiledGestureView *)self window];
    v8 = [v7 windowScene];
    [PKPencilShadowView createShadowViewForSceneIfNecessary:v8];

    v9 = [(PKTiledGestureView *)self window];
    v10 = [v9 windowScene];
    v11 = [PKPencilShadowView shadowViewForScene:v10];
    v12 = [(PKTiledGestureView *)self tiledView];
    [v11 keepVisibleInTiledView:v12];

    v13 = [(PKTiledGestureView *)self window];
    v14 = [v13 windowScene];
    v15 = [PKPencilShadowView shadowViewForScene:v14];
    v16 = [(PKTiledGestureView *)self ink];
    [v15 setInk:v16];
  }

  else
  {
    v17 = [(PKTiledGestureView *)self window];
    v13 = [v17 windowScene];
    [PKPencilShadowView hideShadowViewForSceneIfNecessary:v13];
  }

LABEL_6:
}

- (id)rulerController
{
  v2 = [(PKTiledGestureView *)self tiledView];
  v3 = [v2 rulerController];

  return v3;
}

- (id)selectionController
{
  v2 = [(PKTiledGestureView *)self tiledView];
  v3 = [v2 selectionController];

  return v3;
}

- (void)hitTestUpdateEffects_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5
{
  if (a4)
  {
    y = a3.y;
    x = a3.x;
    [(PKTiledGestureView *)self bounds];
    v12.x = x;
    v12.y = y;
    if (CGRectContainsPoint(v13, v12))
    {
      v9 = [(PKTiledGestureView *)self tiledView];
      [v9 _setupPencilShadowViewIfNecessary];
    }

    if (!a5)
    {
      v10 = [(PKTiledGestureView *)self hoverController];
      [(PKHoverController *)v10 didReceiveNormalTouch:?];
    }
  }
}

- (BOOL)hitTestHandwritingInk_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5
{
  v7 = [(PKTiledGestureView *)self ink:a3.x];
  if ([v7 _isHandwritingInk])
  {
    v8 = a4 & ~a5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hitTestHandleScrolling_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5
{
  v5 = a4;
  v7 = [(PKTiledGestureView *)self scrollView:a4];
  v8 = [v7 isDecelerating];

  if (v8)
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

  v13 = [(PKTiledGestureView *)self scrollView];
  v14 = [v13 _isAnimatingScroll];

  if (v14)
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

  v15 = [(PKTiledGestureView *)self scrollView];
  v16 = [v15 isDragging];

  if (v16)
  {
    if (v5)
    {
      v17 = [(PKTiledGestureView *)self scrollView];
      v18 = [v17 panGestureRecognizer];
      v19 = [v18 state];

      if (v19)
      {
        v20 = [(PKTiledGestureView *)self scrollView];
        v21 = [v20 panGestureRecognizer];
        [v21 setState:4];

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

- (BOOL)hitTestSelectionView_point:(CGPoint)a3 withEvent:(id)a4 hit:(id *)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(PKTiledGestureView *)self selectionController];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 152);
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
  v14 = [v13 hitTest:v9 withEvent:?];
  v15 = v14;
  if (!v14)
  {
    if ([v13 isDragging])
    {
      v18 = [(PKTiledGestureView *)self tiledView];
      v19 = [v18 hitAttachment:1 includeStandinAttachment:{x, y}];

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
  *a5 = v15;

  v17 = 1;
LABEL_10:

  return v17;
}

- (BOOL)hitTestDragEvent_point:(CGPoint)a3 withEvent:(id)a4 hit:(id *)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  NSClassFromString(&cfstr_Uidragevent.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = [(PKTiledGestureView *)self tiledView];
    v12 = [(PKTiledGestureView *)self tiledView];
    v13 = [v11 hitAttachment:0 includeStandinAttachment:objc_msgSend(v12 expandBottomAttachment:{"_shouldExpandBottomAttachmentForDragAndDrop"), x, y}];

    if (v13)
    {
      v14 = [v13 attachmentContainerView];
      v15 = v14;
      if (v14 == v13)
      {
        v18 = v13;
        *a5 = v13;
      }

      else
      {
        [v14 convertPoint:self fromView:{x, y}];
        v16 = [v15 hitTest:v9 withEvent:?];
        v17 = v16;
        if (!v16)
        {
          v16 = v15;
        }

        *a5 = v16;
      }
    }

    else
    {
      *a5 = 0;
    }
  }

  return isKindOfClass & 1;
}

- (id)_hitTestAttachmentMiniMenu:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(PKTiledGestureView *)self tiledView];
  v7 = [v6 visibleAttachments];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
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

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)hitTestAttachmentChrome_point:(CGPoint)a3 isStylus:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6
{
  v7 = a4;
  y = a3.y;
  x = a3.x;
  v34 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = [(PKTiledGestureView *)self _hitTestAttachmentMiniMenu:x, y];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    *a6 = v13;
    v15 = 1;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [(PKTiledGestureView *)self tiledView];
    v17 = [v16 visibleAttachments];

    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          [v22 convertPoint:self fromView:{x, y}];
          v24 = v23;
          v26 = v25;
          if ([v22 hitChrome:v7 isStylus:v11 event:?])
          {
            *a6 = 0;
            v15 = 1;
            goto LABEL_15;
          }

          v27 = [v22 hitTest:v11 withEvent:{v24, v26}];

          if (v27)
          {
            goto LABEL_13;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
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

- (BOOL)hitTestDataDetector_point:(CGPoint)a3 isStylus:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x1E69E9840];
  v11 = a5;
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(PKTiledGestureView *)self tiledView];
    v14 = [v13 visibleAttachments];

    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          [v19 convertPoint:self fromView:{x, y}];
          v20 = [v19 inlineViewAtPoint:?];
          *a6 = v20;
          if (v20)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

- (BOOL)_shouldSelectionBeginAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PKTiledGestureView *)self selectionController];
  v9 = [(PKSelectionController *)v8 selectionInteraction];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v11 = [(PKTiledGestureView *)self selectionController];
    v12 = [(PKSelectionController *)v11 selectionInteraction];
    v13 = [v12 _selectionInteractionShouldBeginAtPoint:v7 forEvent:0 orGestureRecognizer:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)_shouldForwardSelectionAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PKTiledGestureView *)self selectionController];
  v9 = [(PKSelectionController *)v8 selectionInteraction];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v11 = [(PKTiledGestureView *)self selectionController];
    v12 = [(PKSelectionController *)v11 selectionInteraction];
    v13 = [v12 _selectionInteractionShouldForwardAtPoint:v7 forEvent:{x, y}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hitTestSelectionGestures_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7
{
  v9 = a4;
  y = a3.y;
  x = a3.x;
  v13 = a6;
  if (a5 || ![(PKTiledGestureView *)self _shouldSelectionBeginAtPoint:v13 withEvent:x, y])
  {
    v21 = 0;
  }

  else
  {
    v14 = [(PKTiledGestureView *)self selectionController];
    v15 = v14;
    if (v14)
    {
      v16 = *(v14 + 160);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = [(PKTiledGestureView *)self ink];
    v19 = [v18 _isLassoInk];

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v22 = [(PKTiledGestureView *)self tiledView];
      v20 = ([v22 allowsFingerDrawing] | v9) ^ 1;
    }

    v23 = [(PKTiledGestureView *)self tiledView];
    v24 = [v23 hitAttachment:1 includeStandinAttachment:1 expandBottomAttachment:{x, y}];
    if (v24)
    {
      v25 = [(PKTiledGestureView *)self selectionController];
      if (v25)
      {
        v26 = v25[16] != 0;
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

    v27 = [(PKTiledGestureView *)self tiledView];
    v28 = [v27 hitAttachment:0 includeStandinAttachment:0 expandBottomAttachment:{x, y}];
    v29 = v28 != 0;

    v21 = 0;
    if (v17 && ((v20 | v19) & 1) != 0 && (v29 || v26))
    {
      [v17 convertPoint:self fromView:{x, y}];
      v30 = [v17 hitTest:v13 withEvent:?];
      *a7 = v30;
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

- (BOOL)hitTestDelegateSelection_point:(CGPoint)a3 isHover:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6
{
  y = a3.y;
  x = a3.x;
  v10 = a5;
  if (![(PKTiledGestureView *)self _shouldForwardSelectionAtPoint:v10 withEvent:x, y])
  {
    goto LABEL_5;
  }

  v11 = [(PKTiledGestureView *)self tiledView];
  v12 = 1;
  v13 = [v11 hitAttachment:1 includeStandinAttachment:{x, y}];

  v14 = [v13 attachmentContainerView];
  [v14 convertPoint:self fromView:{x, y}];
  v15 = [v14 hitTest:v10 withEvent:?];
  v16 = v15;
  if (!v15)
  {
    v15 = v14;
  }

  *a6 = v15;

  v17 = *a6;
  if (!v17)
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (BOOL)hitTestClearSelectionIfItExists_point:(CGPoint)a3 isHover:(BOOL)a4 withEvent:(id)a5 hit:(id *)a6
{
  v10 = [(PKTiledGestureView *)self selectionController:a3.x];
  if (([(PKSelectionController *)v10 hasStrokesOrElementsSelection]& 1) == 0)
  {

    return 0;
  }

  v11 = [(PKTiledGestureView *)self tiledView];
  v12 = [v11 selectionInteraction];
  v13 = [v12 isEnabled];

  if (!v13)
  {
    return 0;
  }

  if (a5 && !a4)
  {
    v14 = [(PKTiledGestureView *)self selectionController];
    v15 = v14;
    if (v14)
    {
      [(PKSelectionController *)v14 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }

    v16 = [(PKTiledGestureView *)self selectionController];
    [(PKSelectionController *)v16 clearExternalSelectionIfNecessary];
  }

  *a6 = 0;
  return 1;
}

- (BOOL)hitTestPencilStickiness_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7
{
  y = a3.y;
  x = a3.x;
  v14 = a6;
  v15 = [(PKTiledGestureView *)self tiledView];
  if (![v15 allowsFingerDrawing])
  {

    if (a4)
    {
      v17 = 0;
      goto LABEL_21;
    }

LABEL_7:
    v18 = [(PKTiledGestureView *)self tiledView];
    v19 = [v18 hitAttachment:1 includeStandinAttachment:{x, y}];

    v20 = [v19 attachmentContainerView];
    v21 = [v19 isAtEndOfDocument];
    if ((v21 & 1) == 0)
    {
      v7 = [(PKTiledGestureView *)self tiledView];
      v22 = [v7 standInAttachmentView];
      v8 = v22;
      if (v19 != v22)
      {

LABEL_10:
        *a7 = 0;
LABEL_20:

        v17 = 1;
        goto LABEL_21;
      }
    }

    if (([v19 isFirstResponder] & 1) != 0 || objc_msgSend(v20, "isFirstResponder"))
    {
      if ((v21 & 1) == 0)
      {
      }
    }

    else
    {
      v27 = [(PKTiledGestureView *)self window];
      v28 = [PKToolPicker isActiveToolPickerVisibleForWindow:v27];

      if (v21)
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

    if (v20 == v19)
    {
      v25 = v19;
      *a7 = v19;
    }

    else
    {
      [v20 convertPoint:self fromView:{x, y}];
      v23 = [v20 hitTest:v14 withEvent:?];
      v24 = v23;
      if (!v23)
      {
        v23 = v20;
      }

      *a7 = v23;
    }

    goto LABEL_20;
  }

  v7 = [(PKTiledGestureView *)self tiledView];
  v16 = [v7 isReadOnlyView];

  v17 = 0;
  if (v16 && !a4)
  {
    goto LABEL_7;
  }

LABEL_21:

  return v17;
}

- (BOOL)hitTestInsertNewAttachments_point:(CGPoint)a3 isStylus:(BOOL)a4 isHover:(BOOL)a5 withEvent:(id)a6 hit:(id *)a7
{
  y = a3.y;
  x = a3.x;
  v12 = a6;
  if (!a5)
  {
    v16 = [(PKTiledGestureView *)self ink];
    if ([v16 _isHandwritingInk])
    {
    }

    else
    {
      v17 = [(PKTiledGestureView *)self tiledView];
      v18 = [v17 hitAttachment:{x, y}];

      if (!v18)
      {
        v19 = [(PKTiledGestureView *)self tiledView];
        v20 = [(PKTiledGestureView *)self scrollView];
        [v20 convertPoint:self fromView:{x, y}];
        v21 = [v19 insertAttachmentIfInBlankSpace:?];

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

  v13 = [(PKTiledGestureView *)self tiledView];
  v14 = [v13 hitAttachment:1 includeStandinAttachment:{x, y}];

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  *a7 = 0;
  v15 = 1;
LABEL_9:

  return v15;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (!v7 || ![v7 _hidEvent])
  {
    v12 = 0;
    goto LABEL_13;
  }

  v9 = [v8 PK_isEventFromPencil];
  v10 = [v8 type];
  v11 = v10 == 11;
  [(PKTiledGestureView *)self hitTestUpdateEffects_point:v9 isStylus:v11 isHover:x, y];
  [(PKTiledGestureView *)self _recordDrawingStatisticsForHitPoint:v8 withEvent:x, y];
  if (![(PKTiledGestureView *)self hitTestHandwritingInk_point:v9 isStylus:v11 isHover:x, y]&& ![(PKTiledGestureView *)self hitTestHandleScrolling_point:v9 isStylus:v10 == 11 isHover:x, y])
  {
    v37 = 0;
    v14 = [(PKTiledGestureView *)self hitTestSelectionView_point:v8 withEvent:&v37 hit:x, y];
    v15 = v37;
    v16 = v15;
    if (v14)
    {
LABEL_8:
      v13 = v16;
LABEL_11:
      v12 = v16;
      goto LABEL_12;
    }

    v36 = v15;
    v17 = [(PKTiledGestureView *)self hitTestDragEvent_point:v8 withEvent:&v36 hit:x, y];
    v13 = v36;

    if (!v17)
    {
      v35 = v13;
      v19 = [(PKTiledGestureView *)self hitTestAttachmentChrome_point:v9 isStylus:v8 withEvent:&v35 hit:x, y];
      v16 = v35;

      if (v19)
      {
        goto LABEL_8;
      }

      v34 = v16;
      v20 = [(PKTiledGestureView *)self hitTestDataDetector_point:v9 isStylus:v8 withEvent:&v34 hit:x, y];
      v13 = v34;

      if (!v20)
      {
        v33 = v13;
        v21 = [(PKTiledGestureView *)self hitTestSelectionGestures_point:v9 isStylus:v10 == 11 isHover:v8 withEvent:&v33 hit:x, y];
        v16 = v33;

        if (v21)
        {
          goto LABEL_8;
        }

        v32 = v16;
        v22 = [(PKTiledGestureView *)self hitTestDelegateSelection_point:v10 == 11 isHover:v8 withEvent:&v32 hit:x, y];
        v13 = v32;

        if (!v22)
        {
          v31 = v13;
          v23 = [(PKTiledGestureView *)self hitTestClearSelectionIfItExists_point:v10 == 11 isHover:v8 withEvent:&v31 hit:x, y];
          v16 = v31;

          if (v23)
          {
            goto LABEL_8;
          }

          v30 = v16;
          v24 = [(PKTiledGestureView *)self hitTestPencilStickiness_point:v9 isStylus:v10 == 11 isHover:v8 withEvent:&v30 hit:x, y];
          v13 = v30;

          if (!v24)
          {
            v25 = [(PKTiledGestureView *)self tiledView];
            v26 = [v25 isReadOnlyView];

            if (v26)
            {
              v12 = 0;
              goto LABEL_12;
            }

            v29 = v13;
            v27 = [(PKTiledGestureView *)self hitTestInsertNewAttachments_point:v9 isStylus:v10 == 11 isHover:v8 withEvent:&v29 hit:x, y];
            v28 = v29;

            if (v27)
            {
              v16 = v28;
            }

            else
            {
              v16 = self;
            }

            v13 = v28;
            goto LABEL_11;
          }
        }
      }
    }

    v16 = v13;
    goto LABEL_11;
  }

  v12 = 0;
  v13 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (void)_recordDrawingStatisticsForHitPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14 = a4;
  if ([v14 PK_isEventFromPencil])
  {
    v7 = [(PKTiledGestureView *)self tiledView];
    v8 = [v7 hitAttachment:1 includeStandinAttachment:0 expandBottomAttachment:{x, y}];

    v9 = [(PKTiledGestureView *)self ink];
    v10 = [v9 _isHandwritingInk];

    if (v10 && v8)
    {
      v11 = [(PKTiledGestureView *)self drawingPaletteStatistics];
      [v14 timestamp];
      [v11 recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:?];
LABEL_8:

      goto LABEL_9;
    }

    v12 = [(PKTiledGestureView *)self ink];
    v13 = [v12 _isStrokeGeneratingInk];

    if (v13 && !v8)
    {
      v11 = [(PKTiledGestureView *)self drawingPaletteStatistics];
      [v14 timestamp];
      [v11 recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:?];
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