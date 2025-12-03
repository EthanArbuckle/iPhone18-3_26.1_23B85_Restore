@interface CRLLockedDrawableEditor
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point;
- (void)p_unlock:(id)p_unlock;
@end

@implementation CRLLockedDrawableEditor

- (void)p_unlock:(id)p_unlock
{
  p_unlockCopy = p_unlock;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];

  [canvasEditor unlock:p_unlockCopy];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v8 = +[NSMutableArray array];
  [(CRLLockedDrawableEditor *)self addContextualMenuElementsToArray:v8 atPoint:x, y];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        title = [v14 title];
        if ([title length])
        {
          state = [v14 state];

          if (state != 1)
          {
            continue;
          }

          title = [v14 title];
          [arrayCopy addObject:title];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v30.receiver = self;
  v30.super_class = CRLLockedDrawableEditor;
  [(CRLBoardItemEditor *)&v30 addContextualMenuElementsToArray:arrayCopy atPoint:x, y];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Unlock" value:0 table:0];
  v10 = [UIImage systemImageNamed:@"lock.open"];
  v11 = [UICommand commandWithTitle:v9 image:v10 action:"unlock:" propertyList:0];

  if ([arrayCopy count])
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_opt_class();
      v14 = [arrayCopy objectAtIndexedSubscript:v12];
      v15 = sub_100014370(v13, v14);

      identifier = [v15 identifier];

      if (identifier == @"CRLCutCopyPasteMenuIdentifier")
      {
        break;
      }

      if (++v12 >= [arrayCopy count])
      {
        goto LABEL_5;
      }
    }

    if (v15)
    {
      children = [v15 children];
      v18 = [children count];

      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = objc_opt_class();
          children2 = [v15 children];
          v22 = [children2 objectAtIndexedSubscript:v19];
          v23 = sub_100014370(v20, v22);

          if ([v23 action] == "lock:" && objc_msgSend(v23, "attributes") != 4)
          {
            break;
          }

          ++v19;
          children3 = [v15 children];
          v25 = [children3 count];

          if (v19 >= v25)
          {
            goto LABEL_6;
          }
        }

        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = objc_opt_new();
          children4 = [v15 children];
          [v26 addObjectsFromArray:children4];

          [v26 insertObject:v11 atIndex:v19 + 1];
          v28 = [v26 copy];
          v29 = [v15 menuByReplacingChildren:v28];

          [arrayCopy replaceObjectAtIndex:v12 withObject:v29];
          goto LABEL_7;
        }
      }
    }
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

LABEL_6:
  [arrayCopy addObject:v11];
LABEL_7:
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v24.receiver = self;
  v24.super_class = CRLLockedDrawableEditor;
  [(CRLBoardItemEditor *)&v24 addMiniFormatterElementsToArray:arrayCopy atPoint:x, y];
  v8 = [CRLImage crl_quickInspectorImageNamed:@"eye"];
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v10 = [_TtC8Freeform12CRLURLEditor canOpenItemURLFor:boardItems];

  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Open Link" value:0 table:0];
    v13 = [CRLQuickInspectorElement elementWithName:v12 image:v8 type:2 action:"openItemURL:"];

    [v13 setTag:23];
    v14 = +[NSBundle mainBundle];
    previewTooltip = v14;
    v16 = @"Open this link";
    goto LABEL_9;
  }

  if ([(CRLBoardItemEditor *)self canShowPreview])
  {
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Preview" value:0 table:0];
    v19 = [CRLImage crl_quickInspectorImageNamed:@"eye"];
    v13 = [CRLQuickInspectorElement elementWithName:v18 image:v19 type:2 action:"showPreview:"];

    [v13 setTag:23];
    boardItems2 = [(CRLBoardItemEditor *)self boardItems];
    if ([boardItems2 count] == 1)
    {
      boardItems3 = [(CRLBoardItemEditor *)self boardItems];
      anyObject = [boardItems3 anyObject];
      previewTooltip = [anyObject previewTooltip];

      if (previewTooltip)
      {
        [v13 setToolTip:previewTooltip];
LABEL_10:

        [arrayCopy addObject:v13];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = +[NSBundle mainBundle];
    previewTooltip = v14;
    v16 = @"Preview";
LABEL_9:
    v23 = [v14 localizedStringForKey:v16 value:0 table:0];
    [v13 setToolTip:v23];

    goto LABEL_10;
  }

LABEL_11:
}

@end