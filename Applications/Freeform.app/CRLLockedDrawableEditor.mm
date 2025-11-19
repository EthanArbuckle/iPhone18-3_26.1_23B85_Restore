@interface CRLLockedDrawableEditor
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)p_unlock:(id)a3;
@end

@implementation CRLLockedDrawableEditor

- (void)p_unlock:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];

  [v6 unlock:v4];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
        v15 = [v14 title];
        if ([v15 length])
        {
          v16 = [v14 state];

          if (v16 != 1)
          {
            continue;
          }

          v15 = [v14 title];
          [v7 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v30.receiver = self;
  v30.super_class = CRLLockedDrawableEditor;
  [(CRLBoardItemEditor *)&v30 addContextualMenuElementsToArray:v7 atPoint:x, y];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Unlock" value:0 table:0];
  v10 = [UIImage systemImageNamed:@"lock.open"];
  v11 = [UICommand commandWithTitle:v9 image:v10 action:"unlock:" propertyList:0];

  if ([v7 count])
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_opt_class();
      v14 = [v7 objectAtIndexedSubscript:v12];
      v15 = sub_100014370(v13, v14);

      v16 = [v15 identifier];

      if (v16 == @"CRLCutCopyPasteMenuIdentifier")
      {
        break;
      }

      if (++v12 >= [v7 count])
      {
        goto LABEL_5;
      }
    }

    if (v15)
    {
      v17 = [v15 children];
      v18 = [v17 count];

      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = objc_opt_class();
          v21 = [v15 children];
          v22 = [v21 objectAtIndexedSubscript:v19];
          v23 = sub_100014370(v20, v22);

          if ([v23 action] == "lock:" && objc_msgSend(v23, "attributes") != 4)
          {
            break;
          }

          ++v19;
          v24 = [v15 children];
          v25 = [v24 count];

          if (v19 >= v25)
          {
            goto LABEL_6;
          }
        }

        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = objc_opt_new();
          v27 = [v15 children];
          [v26 addObjectsFromArray:v27];

          [v26 insertObject:v11 atIndex:v19 + 1];
          v28 = [v26 copy];
          v29 = [v15 menuByReplacingChildren:v28];

          [v7 replaceObjectAtIndex:v12 withObject:v29];
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
  [v7 addObject:v11];
LABEL_7:
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v24.receiver = self;
  v24.super_class = CRLLockedDrawableEditor;
  [(CRLBoardItemEditor *)&v24 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  v8 = [CRLImage crl_quickInspectorImageNamed:@"eye"];
  v9 = [(CRLBoardItemEditor *)self boardItems];
  v10 = [_TtC8Freeform12CRLURLEditor canOpenItemURLFor:v9];

  if (v10)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Open Link" value:0 table:0];
    v13 = [CRLQuickInspectorElement elementWithName:v12 image:v8 type:2 action:"openItemURL:"];

    [v13 setTag:23];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
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
    v20 = [(CRLBoardItemEditor *)self boardItems];
    if ([v20 count] == 1)
    {
      v21 = [(CRLBoardItemEditor *)self boardItems];
      v22 = [v21 anyObject];
      v15 = [v22 previewTooltip];

      if (v15)
      {
        [v13 setToolTip:v15];
LABEL_10:

        [v7 addObject:v13];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = +[NSBundle mainBundle];
    v15 = v14;
    v16 = @"Preview";
LABEL_9:
    v23 = [v14 localizedStringForKey:v16 value:0 table:0];
    [v13 setToolTip:v23];

    goto LABEL_10;
  }

LABEL_11:
}

@end