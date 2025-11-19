@interface CRLiOSCanvasContextMenuInteractionDelegate
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CRLiOSCanvasContextMenuInteractionDelegate)initWithInteractiveCanvasController:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)p_primaryMenuConfigurationAtPoint:(CGPoint)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation CRLiOSCanvasContextMenuInteractionDelegate

- (CRLiOSCanvasContextMenuInteractionDelegate)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLiOSCanvasContextMenuInteractionDelegate;
  v5 = [(CRLiOSCanvasContextMenuInteractionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
  }

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v9 = [WeakRetained currentlyScrolling];

  if (v9)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v11 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v12 = [v11 layerHost];
  v13 = [v12 asiOSCVC];

  if ([v13 i_allowCanvasInteraction:v7 atPoint:{x, y}])
  {
    v14 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    [v14 convertBoundsToUnscaledPoint:{x, y}];
    v16 = v15;
    v18 = v17;

    v54 = [v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      v53 = [v54 currentDocumentMode];
      v19 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v20 = [v53 contextMenuConfigurationForContextMenuInteraction:v7 atPoint:v19 onInteractiveCanvasController:{v16, v18}];

      if (v20)
      {
        v21 = v20;
LABEL_22:
        v27 = v21;
        v10 = v21;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v53 = 0;
    }

    v22 = [v7 menuAppearance];
    if (v22 != 2)
    {
      if (!v22)
      {
        v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10134CF44();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134CF58();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10134CFEC();
        }

        v24 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134D014(v24, v23);
        }

        v25 = [NSString stringWithUTF8String:"[CRLiOSCanvasContextMenuInteractionDelegate contextMenuInteraction:configurationForMenuAtLocation:]"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasContextMenuInteractionDelegate.m"];
        [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:80 isFatal:0 description:"Unexpected menuAppearance!"];
      }

      v27 = [(CRLiOSCanvasContextMenuInteractionDelegate *)self p_primaryMenuConfigurationAtPoint:v16, v18];
      goto LABEL_21;
    }

    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    if (v53 && (v29 = [v53 wantsAlternateContextMenuBehaviorAtPoint:{v16, v18}], *(v63 + 24) = v29, (v29 & 1) != 0) || (v30 = objc_loadWeakRetained(&self->_interactiveCanvasController), objc_msgSend(v30, "editorController"), v31 = objc_claimAutoreleasedReturnValue(), v61[0] = _NSConcreteStackBlock, v61[1] = 3221225472, v61[2] = sub_1002E357C, v61[3] = &unk_1018535E8, *&v61[5] = v16, *&v61[6] = v18, v61[4] = &v62, objc_msgSend(v31, "enumerateEditorsOnStackUsingBlock:", v61), v31, v30, (v63[3] & 1) != 0))
    {
      _Block_object_dispose(&v62, 8);
      v27 = 0;
      goto LABEL_57;
    }

    v32 = [CRLCanvasContextMenuPlatformObject platformObjectWithInteraction:v7];
    v33 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v60 = 0;
    v34 = [v33 hitKnobAtPoint:0 inputType:&v60 returningRep:{v16, v18}];
    v52 = v60;

    if (v34 && v52)
    {
      [v52 convertNaturalPointFromUnscaledCanvas:{v16, v18}];
      v36 = v35;
      v38 = v37;
      if (([v52 wantsContextMenuAtPoint:v32 withPlatformObject:v34 onKnob:?] & 1) == 0)
      {
        v27 = 0;
        v49 = 0;
        goto LABEL_56;
      }

      [v52 handleContextMenuClickAtPoint:v32 withPlatformObject:v34 onKnob:{v36, v38}];
    }

    else
    {
      v39 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v40 = [v39 hitRep:{v16, v18}];

      if (v40)
      {
        [v40 convertNaturalPointFromUnscaledCanvas:{v16, v18}];
        if (([v40 wantsContextMenuAtPoint:v32 withPlatformObject:0 onKnob:?] & 1) == 0)
        {
          v27 = 0;
          v49 = 0;
LABEL_55:

LABEL_56:
          _Block_object_dispose(&v62, 8);
          if (v49)
          {
LABEL_21:
            v21 = v27;
            goto LABEL_22;
          }

LABEL_57:
          v10 = 0;
          goto LABEL_23;
        }

        [v40 convertNaturalPointFromUnscaledCanvas:{v16, v18}];
        [v40 handleContextMenuClickAtPoint:v32 withPlatformObject:0 onKnob:?];
      }
    }

    v40 = +[NSMutableArray array];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v42 = [v41 editorController];
    v43 = [v42 currentEditors];

    v44 = [v43 countByEnumeratingWithState:&v56 objects:v66 count:16];
    v50 = v34;
    v51 = v32;
    if (v44)
    {
      v45 = *v57;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v57 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v56 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v47 addContextualMenuElementsToArray:v40 atPoint:{v16, v18}];
          }
        }

        v44 = [v43 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v44);
    }

    v34 = v50;
    v32 = v51;
    if ([v40 count])
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_1002E35F8;
      v55[3] = &unk_10184B4C8;
      v55[4] = v40;
      v48 = objc_retainBlock(v55);
      v27 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v48];
    }

    else
    {
      v27 = 0;
    }

    v49 = 1;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_24:

LABEL_25:

  return v10;
}

- (id)p_primaryMenuConfigurationAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained hitRep:{x, y}];

  if (v6)
  {
    [v6 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v7 = [v6 contextMenuConfigurationAtPoint:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained layerHost];
  v7 = [v6 asiOSCVC];

  v8 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v9 = [v8 editorController];
  v10 = [v9 selectionPath];

  [v7 targetRectForEditMenu:v10];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 menuAppearance] == 2)
  {
    v8 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v10 = [WeakRetained layerHost];

    v11 = [v10 asiOSCVC];
    v12 = [v11 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v12 currentDocumentMode], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "contextMenuInteraction:previewForHighlightingMenuWithConfiguration:", v6, v7), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
    {
      v15 = [v10 canvasView];
      [v6 locationInView:v15];
      v17 = v16;
      v19 = v18;
      v20 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      [v20 convertBoundsToUnscaledPoint:{v17, v19}];
      v22 = v21;
      v24 = v23;

      v25 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      v26 = [v25 hitRep:{v22, v24}];

      if (v26)
      {
        [v26 convertNaturalPointFromUnscaledCanvas:{v22, v24}];
        v14 = [v26 contextMenuPreviewForHighlightingMenuAtPoint:v7 withConfiguration:?];
      }

      else
      {
        v14 = 0;
      }
    }

    v8 = v14;
  }

  return v8;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_didDisplayMenu)
  {
    goto LABEL_11;
  }

  v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134D0DC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10134D0F0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134D184();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130EE10(v12, v11);
  }

  v13 = [NSString stringWithUTF8String:"[CRLiOSCanvasContextMenuInteractionDelegate contextMenuInteraction:willDisplayMenuForConfiguration:animator:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSCanvasContextMenuInteractionDelegate.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:216 isFatal:0 description:"Should not be told will display when already displayed"];

  if (!self->_didDisplayMenu)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v16 = [WeakRetained editingCoordinator];
    [v16 suspendCollaborationWithReason:@"iOSCanvasContextMenu"];

    v17 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v18 = [v17 layerHost];
    v19 = [v18 asiOSCVC];

    v20 = [v19 delegate];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v19 canvasView];
      [v8 locationInView:v21];
      v23 = v22;
      v25 = v24;
      v26 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      [v26 convertBoundsToUnscaledPoint:{v23, v25}];
      v28 = v27;
      v30 = v29;

      v31 = [v20 currentDocumentMode];
      [v31 willShowContextMenuInteraction:v8 atPoint:{v28, v30}];
    }

    self->_didDisplayMenu = 1;
  }
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_didDisplayMenu)
  {
    self->_didDisplayMenu = 0;
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v12 = [WeakRetained editingCoordinator];
    [v12 resumeCollaborationWithReason:@"iOSCanvasContextMenu"];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v14 = [v13 editorController];
    v15 = [v14 currentEditors];

    v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v21 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            [v20 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:v10];
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [v6 sourcePoint];
  [WeakRetained convertBoundsToUnscaledPoint:?];
  v9 = v8;
  v11 = v10;

  v12 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v14 = [v13 editorController];
  v15 = [v14 currentEditors];

  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 addContextualMenuElementsToArray:v12 atPoint:{v9, v11}];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = [UIMenu menuWithTitle:&stru_1018BCA28 children:v12];

  return v21;
}

@end