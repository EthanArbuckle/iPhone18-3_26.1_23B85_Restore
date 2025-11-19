@interface CRLMediaEditor
- (BOOL)anySelectedObjectsHaveLooping;
- (BOOL)anySelectedObjectsHaveRoundCorners;
- (BOOL)anySelectedObjectsHaveShadow;
- (BOOL)p_allSelectedObjectsAllowTogglingOfLoop;
- (BOOL)p_allSelectedObjectsAllowTogglingOfRoundedCornersAndShadow;
- (BOOL)p_boardItemsAreImageAndMovieOnly;
- (BOOL)p_repCanResetMediaSize;
- (CRLPlatformControlState)roundCornersToggledControlState;
- (CRLPlatformControlState)shadowToggledControlState;
- (id)loopToggledControlState;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7;
- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5;
- (void)resetSelectionToNaturalDataSize:(id)a3;
- (void)showMediaReplaceUI:(id)a3;
- (void)toggleLoop:(id)a3;
- (void)toggleRoundCorners:(id)a3;
- (void)toggleShadow:(id)a3;
- (void)updateStateForCommand:(id)a3;
@end

@implementation CRLMediaEditor

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ("replaceCanvasElementInfo:withFilesAtURLs:allowedTypes:actionString:completion:" != a3)
  {
    if ("resetSelectionToNaturalDataSize:" == a3)
    {
      v20 = [(CRLMediaEditor *)self p_repCanResetMediaSize];
    }

    else
    {
      if (sel_isEqual(a3, "showMediaReplaceUI:"))
      {
        v8 = [(CRLBoardItemEditor *)self boardItems];
        if ([v8 count] == 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        goto LABEL_29;
      }

      if ("toggleShadow:" == a3 || "toggleRoundCorners:" == a3)
      {
        v20 = [(CRLMediaEditor *)self p_allSelectedObjectsAllowTogglingOfRoundedCornersAndShadow];
      }

      else
      {
        if ("toggleLoop:" != a3)
        {
          v23.receiver = self;
          v23.super_class = CRLMediaEditor;
          v9 = [(CRLStyledEditor *)&v23 canPerformEditorAction:a3 withSender:v7];
          goto LABEL_29;
        }

        v20 = [(CRLMediaEditor *)self p_allSelectedObjectsAllowTogglingOfLoop];
      }
    }

    if (v20)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    goto LABEL_29;
  }

  v22 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(CRLMediaEditor *)self mediaItems];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    v9 = -1;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      if (![v15 canBeReplaced])
      {
        break;
      }

      v16 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v17 = [v16 canvasEditor];
      v18 = [v17 canvasEditorHelper];
      v19 = [v18 canReplaceBoardItem:v15];

      if (v19)
      {
        v9 = 1;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        v7 = v22;
        goto LABEL_29;
      }
    }
  }

  v9 = -1;
  v7 = v22;
LABEL_29:

  return v9;
}

- (BOOL)p_repCanResetMediaSize
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLMediaEditor *)self mediaItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) canResetMediaSize])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)resetSelectionToNaturalDataSize:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(CRLMediaEditor *)self mediaItems];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if ([v11 canResetMediaSize])
        {
          v12 = [v4 canvasEditor];
          v13 = [v12 selectionPathWithInfo:v11];

          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1001CB270;
          v24[3] = &unk_101846288;
          v25 = v5;
          v14 = objc_retainBlock(v24);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001CB2C8;
          v22[3] = &unk_1018462B0;
          v23 = v14;
          v15 = v14;
          [v4 forLayoutNearestVisibleRectForInfosForSelectionPath:v13 performBlock:v22];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Original Size" value:0 table:@"UndoStrings"];
  [(CRLCommandGroup *)v5 setActionString:v17];

  if (![(CRLCommandGroup *)v5 isEmpty])
  {
    v18 = [v4 commandController];
    v19 = [CRLCanvasCommandSelectionBehavior alloc];
    v20 = [v4 canvasEditor];
    v21 = [(CRLCanvasCommandSelectionBehavior *)v19 initWithCanvasEditor:v20 type:2 constructedInfos:0];

    [v18 openGroupWithSelectionBehavior:v21];
    [v18 enqueueCommand:v5];
    [v18 closeGroup];
  }
}

- (BOOL)p_boardItemsAreImageAndMovieOnly
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v8 = objc_opt_class();
          v9 = sub_100014370(v8, v7);
          v10 = [v9 isAudioOnly];

          if ((v10 & 1) == 0)
          {
            continue;
          }
        }

        v11 = 0;
        goto LABEL_14;
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (BOOL)p_allSelectedObjectsAllowTogglingOfRoundedCornersAndShadow
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLMediaEditor *)self mediaItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) supportsTogglingShadowAndRoundedCorners])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)p_allSelectedObjectsAllowTogglingOfLoop
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLMediaEditor *)self mediaItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v9 + 1) + 8 * i) supportsTogglingLooping])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

- (BOOL)anySelectedObjectsHaveShadow
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = objc_opt_class();
        v8 = sub_100014370(v7, v6);
        if (v8)
        {
          v9 = v8;
          v10 = [v8 shadow];

          if (v10)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)anySelectedObjectsHaveRoundCorners
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = objc_opt_class();
        v8 = sub_100014370(v7, v6);
        v9 = v8;
        if (v8 && [v8 hasRoundedCorners])
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)anySelectedObjectsHaveLooping
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = objc_opt_class();
        v8 = sub_100014370(v7, v6);
        v9 = v8;
        if (v8 && [v8 isLooping])
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)toggleShadow:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 commandController];
  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [v4 canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v7 type:2 constructedInfos:0];

  v9 = 0;
  if (![(CRLMediaEditor *)self anySelectedObjectsHaveShadow])
  {
    v9 = +[CRLShadow defaultShadow];
  }

  [v5 openGroupWithSelectionBehavior:v8];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v21 = v8;
  v22 = v4;
  v13 = 0;
  v14 = *v24;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v23 + 1) + 8 * i);
      v17 = objc_opt_class();
      v18 = sub_100014370(v17, v16);
      if (v18)
      {
        v19 = [[_TtC8Freeform19CRLCommandSetShadow alloc] initWithBoardItem:v18 shadow:v9];
        [v5 enqueueCommand:v19];

        v13 = 1;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);

  v4 = v22;
  if (v13)
  {
    v10 = +[NSBundle mainBundle];
    v20 = [v10 localizedStringForKey:@"Shadow Setting" value:0 table:0];
    [v5 setCurrentGroupActionString:v20];

LABEL_14:
  }

  [v5 closeGroup];
}

- (void)toggleRoundCorners:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 commandController];
  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [v4 canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v7 type:2 constructedInfos:0];

  v9 = [(CRLMediaEditor *)self anySelectedObjectsHaveRoundCorners];
  [v5 openGroupWithSelectionBehavior:v8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v22 = v8;
  v23 = v4;
  v13 = 0;
  v14 = *v25;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v24 + 1) + 8 * i);
      v17 = objc_opt_class();
      v18 = sub_100014370(v17, v16);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 commandToSetRoundedCornersEnabled:v9 ^ 1];
        if (v20)
        {
          [v5 enqueueCommand:v20];
          v13 = 1;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);

  v4 = v23;
  if (v13)
  {
    v21 = +[NSBundle mainBundle];
    v10 = [v21 localizedStringForKey:@"Round Corners Setting" value:0 table:0];

    [v5 setCurrentGroupActionString:v10];
LABEL_14:
  }

  [v5 closeGroup];
}

- (void)toggleLoop:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 commandController];
  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [v4 canvasEditor];
  v8 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v7 type:2 constructedInfos:0];

  v9 = [(CRLMediaEditor *)self anySelectedObjectsHaveLooping];
  [v5 openGroupWithSelectionBehavior:v8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v22 = v8;
  v23 = v4;
  v13 = 0;
  v14 = *v25;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v25 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v24 + 1) + 8 * i);
      v17 = objc_opt_class();
      v18 = sub_100014370(v17, v16);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 commandToSetLoopingEnabled:v9 ^ 1];
        if (v20)
        {
          [v5 enqueueCommand:v20];
          v13 = 1;
        }
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v12);

  v4 = v23;
  if (v13)
  {
    v21 = +[NSBundle mainBundle];
    v10 = [v21 localizedStringForKey:@"Loop Setting" value:0 table:0];

    [v5 setCurrentGroupActionString:v10];
LABEL_14:
  }

  [v5 closeGroup];
}

- (CRLPlatformControlState)shadowToggledControlState
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v3)
  {

LABEL_15:
    v16 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v20;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v19 + 1) + 8 * i);
      v10 = objc_opt_class();
      v11 = sub_100014370(v10, v9);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 shadow];
        v14 = v13 != 0;
        v15 = v13 == 0;

        v5 |= v15;
        v6 |= v14;
      }

      else
      {
        v5 = 1;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v4);

  if (v6 & v5)
  {
    v16 = 2;
    goto LABEL_17;
  }

  if (v5 & 1 | ((v6 & 1) == 0))
  {
    goto LABEL_15;
  }

  v16 = 1;
LABEL_17:
  v17 = [CRLPlatformControlState stateWithValue:v16];

  return v17;
}

- (CRLPlatformControlState)roundCornersToggledControlState
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {

LABEL_15:
    v14 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = objc_opt_class();
      v11 = sub_100014370(v10, v9);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 hasRoundedCorners];
        v5 |= v13 ^ 1;
        v6 |= v13;
      }

      else
      {
        v5 = 1;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v4);

  if (v6 & v5)
  {
    v14 = 2;
    goto LABEL_17;
  }

  if (v5 & 1 | ((v6 & 1) == 0))
  {
    goto LABEL_15;
  }

  v14 = 1;
LABEL_17:
  v15 = [CRLPlatformControlState stateWithValue:v14];

  return v15;
}

- (id)loopToggledControlState
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v3)
  {

LABEL_15:
    v14 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = objc_opt_class();
      v11 = sub_100014370(v10, v9);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 isLooping];
        v5 |= v13 ^ 1;
        v6 |= v13;
      }

      else
      {
        v5 = 1;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v4);

  if (v6 & v5)
  {
    v14 = 2;
    goto LABEL_17;
  }

  if (v5 & 1 | ((v6 & 1) == 0))
  {
    goto LABEL_15;
  }

  v14 = 1;
LABEL_17:
  v15 = [CRLPlatformControlState stateWithValue:v14];

  return v15;
}

- (void)showMediaReplaceUI:(id)a3
{
  v4 = a3;
  v5 = [[CRLMediaReplacingHelper alloc] initWithEditor:self];
  [(CRLMediaReplacingHelper *)v5 showMediaReplaceUI:v4];
}

- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CRLMediaReplacingHelper alloc] initWithEditor:self];
  [(CRLMediaReplacingHelper *)v11 replaceSelectedMediaWithData:v10 actionString:v9 completion:v8];
}

- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[CRLMediaReplacingHelper alloc] initWithEditor:self];
  [(CRLMediaReplacingHelper *)v17 replaceCanvasElementInfo:v16 withFilesAtURLs:v15 allowedTypes:v14 actionString:v13 completion:v12];
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = [(CRLMediaEditor *)self mediaItems];
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v55 + 1) + 8 * i) supportsTogglingShadowAndRoundedCorners])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = [(CRLMediaEditor *)self mediaItems];
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    while (2)
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![*(*(&v51 + 1) + 8 * j) supportsTogglingLooping])
        {
          v17 = 0;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_21:

  if (v11)
  {
    v50 = v17;
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"Shadow" value:0 table:0];
    v20 = [UIImage systemImageNamed:@"shadow"];
    v21 = [UICommand commandWithTitle:v19 image:v20 action:"toggleShadow:" propertyList:0];

    v48 = [(CRLMediaEditor *)self shadowToggledControlState];
    [v21 setState:{objc_msgSend(v48, "stateValue")}];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Round Corners" value:0 table:0];
    v24 = [UIImage systemImageNamed:@"rectangle.roundedtop"];
    v25 = [UICommand commandWithTitle:v23 image:v24 action:"toggleRoundCorners:" propertyList:0];

    v26 = [(CRLMediaEditor *)self roundCornersToggledControlState];
    [v25 setState:{objc_msgSend(v26, "stateValue")}];
    v49 = v21;
    v60[0] = v21;
    v60[1] = v25;
    v27 = [NSArray arrayWithObjects:v60 count:2];
    v28 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLShadowAndRoundCornersMenuIdentifier" options:1 children:v27];

    if ([v5 count])
    {
      v29 = 1;
      while (1)
      {
        v30 = objc_opt_class();
        v31 = [v5 objectAtIndexedSubscript:v29 - 1];
        v32 = sub_100014370(v30, v31);

        if (v32)
        {
          v33 = [v32 identifier];

          if (v33 == @"CRLCutCopyPasteMenuIdentifier")
          {
            break;
          }
        }

        v34 = v29++ >= [v5 count];
        if (v34)
        {
          goto LABEL_28;
        }
      }

      v35 = v48;
      if (v29 - 1 < [v5 count])
      {
        [v5 insertObject:v28 atIndex:v29];
      }
    }

    else
    {
LABEL_28:
      [v5 addObject:v28];
      v35 = v48;
    }

    v17 = v50;
  }

  if (v17)
  {
    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"Loop" value:0 table:0];
    v38 = [UIImage systemImageNamed:@"repeat"];
    v39 = [UICommand commandWithTitle:v37 image:v38 action:"toggleLoop:" propertyList:0];

    v40 = [(CRLMediaEditor *)self loopToggledControlState];
    [v39 setState:{objc_msgSend(v40, "stateValue")}];
    v59 = v39;
    v41 = [NSArray arrayWithObjects:&v59 count:1];
    v42 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLLoopMenuIdentifier" options:1 children:v41];

    if ([v5 count])
    {
      v43 = 1;
      while (1)
      {
        v44 = objc_opt_class();
        v45 = [v5 objectAtIndexedSubscript:v43 - 1];
        v46 = sub_100014370(v44, v45);

        if (v46)
        {
          v47 = [v46 identifier];

          if (v47 == @"CRLCutCopyPasteMenuIdentifier")
          {
            break;
          }
        }

        v34 = v43++ >= [v5 count];
        if (v34)
        {
          goto LABEL_37;
        }
      }

      if (v43 - 1 < [v5 count])
      {
        [v5 insertObject:v42 atIndex:v43];
      }
    }

    else
    {
LABEL_37:
      [v5 addObject:v42];
    }
  }
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = +[NSMutableArray array];
  [(CRLMediaEditor *)self addContextualMenuElementsToArray:v8 atPoint:x, y];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v24 = *v32;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [v13 crlaxValueForKey:@"children"];
        if ([v14 count])
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = v16;
          v18 = *v28;
          while (1)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              v21 = [v20 title];
              if ([v21 length])
              {
                v22 = [v20 state];

                if (v22 != 1)
                {
                  continue;
                }

                v21 = [v20 title];
                [v7 addObject:v21];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (!v17)
            {
              v11 = v24;
              v10 = v25;
              goto LABEL_22;
            }
          }
        }

        v15 = [v13 title];
        if ([v15 length])
        {
          v23 = [v13 state];

          if (v23 != 1)
          {
            goto LABEL_23;
          }

          v15 = [v13 title];
          [v7 addObject:v15];
        }

LABEL_22:

LABEL_23:
        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }
}

- (void)updateStateForCommand:(id)a3
{
  v4 = a3;
  if ([objc_msgSend(objc_opt_class() "superclass")])
  {
    v6.receiver = self;
    v6.super_class = CRLMediaEditor;
    [(CRLBoardItemEditor *)&v6 updateStateForCommand:v4];
  }

  if ([v4 action] == "toggleRoundCorners:")
  {
    [v4 setState:{-[CRLMediaEditor anySelectedObjectsHaveRoundCorners](self, "anySelectedObjectsHaveRoundCorners")}];
  }

  else if ([v4 action] == "toggleShadow:")
  {
    v5 = [(CRLMediaEditor *)self shadowToggledControlState];
    [v4 setState:{objc_msgSend(v5, "stateValue")}];
  }
}

@end