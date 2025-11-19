@interface CRLShapeEditor
+ (BOOL)anyInfoIsAutoresizing:(id)a3;
+ (BOOL)anyInfoIsConnectionLine:(id)a3;
+ (BOOL)anyInfoIsLine:(id)a3;
+ (BOOL)anyInfoIsOpenPath:(id)a3;
+ (BOOL)anyInfoIsStickyNote:(id)a3;
+ (BOOL)anyInfoIsTextBox:(id)a3;
+ (BOOL)anyInfoSupportsTextInspection:(id)a3;
+ (BOOL)anyInfoSupportsVerticalAlignment:(id)a3;
+ (BOOL)infosAreConnectionLines:(id)a3;
+ (BOOL)infosAreLines:(id)a3;
+ (BOOL)infosAreLinesAndConnectionLines:(id)a3;
+ (BOOL)infosAreMixedOpenAndClosedPaths:(id)a3;
+ (BOOL)infosAreMixedOpenPathsAndLines:(id)a3;
+ (BOOL)infosAreOpenPaths:(id)a3;
+ (BOOL)infosAreStickyNotes:(id)a3;
+ (BOOL)infosAreTextBoxes:(id)a3;
+ (BOOL)infosSupportEndpoints:(id)a3;
+ (id)leftLineEndForShape:(id)a3;
+ (id)rightLineEndForShape:(id)a3;
- (BOOL)allowsChangeShape;
- (BOOL)anyInfoIsLineOrConnectionLine;
- (BOOL)anyInfoSupportsTextInspection;
- (BOOL)anyInfoSupportsVerticalAlignment;
- (BOOL)canDivideCompoundShape;
- (BOOL)canIntersectPaths;
- (BOOL)canMakePathEditable;
- (BOOL)canMakePathSmoothOrSharp;
- (BOOL)canResetTextAndObjectHandles;
- (BOOL)infosAreConnectionLines;
- (BOOL)infosAreLines;
- (BOOL)infosAreMixedOpenAndClosedPaths;
- (BOOL)infosAreOpenPaths;
- (BOOL)infosAreTextBoxes;
- (BOOL)infosSupportEndpoints;
- (BOOL)p_allInfosAreStickyNotes;
- (BOOL)p_canSetFill;
- (BOOL)p_canSetFillWithAnyInfoIsTextBox:(BOOL)a3;
- (BOOL)p_containsOpenPaths;
- (BOOL)p_shapeLacksEnoughStyleToBeSavedAsCustom:(id)a3;
- (BOOL)p_shapesAreMixed;
- (BOOL)p_shapesContainNonLine;
- (BOOL)p_shouldShowInspectorForPointPathSourceOfTypes:(id)a3;
- (BOOL)p_shouldShowInspectorForScalarPathSourceOfType:(unint64_t)a3;
- (BOOL)shouldShowCalloutInspector;
- (BOOL)shouldShowLineInspector;
- (BOOL)suppressesPresetInspector;
- (CGPoint)p_getNewMagnetNormalizedPositionAfterChangingShapeWithConnectionLine:(id)a3 withOldLayout:(id)a4 withNewInfo:(id)a5 forLineEnd:(unint64_t)a6;
- (CRLPathEditor)nextPathEditor;
- (NSArray)allShapeItems;
- (_TtC8Freeform12CRLShapeItem)anyShapeItem;
- (id)currentGroupActionStringForStrokeSetting;
- (id)leftLineEnd;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)rightLineEnd;
- (id)selectedObjectsSupportingEndpoints;
- (id)selectedObjectsSupportingFill;
- (id)strokeColorPickerTitle;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)changeShapeToUsePathSource:(id)a3;
- (void)divideCompoundShape:(id)a3;
- (void)intersectPaths:(id)a3;
- (void)makePathEditable:(id)a3;
- (void)makePathSharp:(id)a3;
- (void)makePathSmooth:(id)a3;
- (void)p_adjustMagnetsForResetTextAndObjectHandlesForMagnet:(BOOL)a3 withClineLayout:(id)a4 withShapeItem:(id)a5;
- (void)p_applyTransformFromInfo:(id)a3 toEditablePathSource:(id)a4;
- (void)p_changeShapeOfItem:(id)a3 toUsePathSource:(id)a4;
- (void)performBooleanOperationOnPaths:(unint64_t)a3;
- (void)resetTextAndObjectHandles:(id)a3;
- (void)setFillInspectorDisclosed:(BOOL)a3;
- (void)setLineEnd:(id)a3 isLeftLineEnd:(BOOL)a4;
- (void)setShapeFill:(id)a3;
- (void)showShapeLibraryPopover:(id)a3;
@end

@implementation CRLShapeEditor

- (void)setFillInspectorDisclosed:(BOOL)a3
{
  *(&self->super.mIsChangingStrokeWidth + 1) = a3;
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CRLBoardItemEditor *)self layouts];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 repForLayout:*(*(&v11 + 1) + 8 * v9)];
        [v10 invalidateKnobs];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (_TtC8Freeform12CRLShapeItem)anyShapeItem
{
  v2 = [(CRLShapeEditor *)self allShapeItems];
  v3 = [v2 firstObject];

  return v3;
}

- (NSArray)allShapeItems
{
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];

  return v4;
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v7 = a5;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(CRLShapeEditor *)self nextPathEditor];

    if (v10)
    {
      v11 = [(CRLShapeEditor *)self nextPathEditor];
    }

    else
    {
      v12 = [CRLPathEditor alloc];
      v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v11 = [(CRLBoardItemEditor *)v12 initWithInteractiveCanvasController:v13];

      v14 = [v7 mostSpecificSelectionOfClass:objc_opt_class()];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 boardItems];
        [(CRLBoardItemEditor *)v11 setBoardItems:v16];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v19.receiver = self;
  v19.super_class = CRLShapeEditor;
  [(CRLBoardItemEditor *)&v19 addContextualMenuElementsToArray:v7 atPoint:x, y];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isChangeShapeEnabled])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Change Shape" value:0 table:0];

    v10 = [UIImage systemImageNamed:@"square.on.circle"];
    v11 = [UICommand commandWithTitle:v9 image:v10 action:"showShapeLibraryPopover:" propertyList:0];

    if ([v7 count])
    {
      v12 = 0;
      while (1)
      {
        v13 = objc_opt_class();
        v14 = [v7 objectAtIndexedSubscript:v12];
        v15 = sub_100014370(v13, v14);

        if (v15)
        {
          v16 = [v15 identifier];

          if (v16 == @"CRLStyleMenuIdentifier")
          {
            break;
          }
        }

        if (++v12 >= [v7 count])
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = -1;
    }

    v20 = v11;
    v17 = [NSArray arrayWithObjects:&v20 count:1];
    v18 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLShapeMenuIdentifier" options:1 children:v17];

    if (v12 == -1)
    {
      [v7 addObject:v18];
    }

    else
    {
      [v7 insertObject:v18 atIndex:v12];
    }
  }
}

+ (BOOL)anyInfoIsLine:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = v9;
        if (v9 && [v9 isLine])
        {

          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

+ (BOOL)anyInfoIsConnectionLine:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)anyInfoIsStickyNote:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);

        if (v9)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (BOOL)anyInfoIsTextBox:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = v9;
        if (v9 && [v9 isAutogrowingTextBox])
        {

          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

+ (BOOL)anyInfoIsAutoresizing:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = [v7 geometry];
        v11 = v10;
        if (v9 && (![v10 widthValid] || (objc_msgSend(v11, "heightValid") & 1) == 0))
        {

          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

+ (BOOL)anyInfoIsOpenPath:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = v9;
        if (v9 && [v9 isOpenPath])
        {

          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

+ (BOOL)infosAreLines:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (v10 && ([v10 isLine] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

+ (BOOL)infosAreLinesAndConnectionLines:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (v10 && [v10 isLine])
        {
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v13 = 0;
            goto LABEL_14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_14:

  return v13;
}

+ (BOOL)infosAreOpenPaths:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (!v10 || ([v10 isOpenPath] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:

  return v12;
}

+ (BOOL)infosAreTextBoxes:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (!v10 || ([v10 isAutogrowingTextBox] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v12 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:

  return v12;
}

+ (BOOL)anyInfoSupportsVerticalAlignment:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);
        v10 = v9;
        if (v9 && ([v9 isAutogrowingTextBox] & 1) == 0)
        {

          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (BOOL)anyInfoSupportsVerticalAlignment
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor anyInfoSupportsVerticalAlignment:v2];

  return v3;
}

+ (BOOL)anyInfoSupportsTextInspection:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = sub_100014370(v8, v7);

        if (v9)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)anyInfoSupportsTextInspection
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor anyInfoSupportsTextInspection:v2];

  return v3;
}

+ (BOOL)infosAreStickyNotes:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);

        if (!v10)
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

+ (BOOL)infosAreMixedOpenAndClosedPaths:(id)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        v12 = v11;
        if (v11)
        {
          v13 = [v11 isOpenPath];
          v5 |= v13 ^ 1;
          v6 |= v13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
    LOBYTE(v4) = v6 & v5;
  }

  return v4 & 1;
}

+ (BOOL)infosAreMixedOpenPathsAndLines:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v15;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v14 + 1) + 8 * i);
      v10 = objc_opt_class();
      v11 = sub_100014370(v10, v9);
      v12 = v11;
      if (v11)
      {
        if ([v11 isLine])
        {
          v6 = 1;
        }

        else
        {
          v5 |= [v12 isOpenPath];
          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if (v5)
        {

          LOBYTE(v4) = 1;
          goto LABEL_15;
        }
      }

LABEL_11:
    }

    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  LOBYTE(v4) = v6 & v5;
LABEL_15:

  return v4 & 1;
}

+ (BOOL)infosAreConnectionLines:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

+ (BOOL)infosSupportEndpoints:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (v10 && ([v10 pathIsOpen] & 1) == 0)
        {

          v12 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)infosAreOpenPaths
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreOpenPaths:v2];

  return v3;
}

- (BOOL)infosAreMixedOpenAndClosedPaths
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreMixedOpenAndClosedPaths:v2];

  return v3;
}

- (BOOL)infosAreLines
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreLines:v2];

  return v3;
}

- (BOOL)infosAreConnectionLines
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreConnectionLines:v2];

  return v3;
}

- (BOOL)infosAreTextBoxes
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreTextBoxes:v2];

  return v3;
}

- (BOOL)infosSupportEndpoints
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosSupportEndpoints:v2];

  return v3;
}

- (BOOL)anyInfoIsLineOrConnectionLine
{
  v3 = [(CRLBoardItemEditor *)self boardItems];
  if ([CRLShapeEditor anyInfoIsLine:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLBoardItemEditor *)self boardItems];
    v4 = [CRLShapeEditor anyInfoIsConnectionLine:v5];
  }

  return v4;
}

- (BOOL)p_allInfosAreStickyNotes
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreStickyNotes:v2];

  return v3;
}

- (BOOL)suppressesPresetInspector
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor infosAreMixedOpenAndClosedPaths:v2];

  return v3;
}

- (BOOL)p_shouldShowInspectorForScalarPathSourceOfType:(unint64_t)a3
{
  v4 = self;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v18 = v4;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        v13 = objc_opt_class();
        v14 = [v12 pathSource];
        v15 = sub_100014370(v13, v14);

        if (!v15 || [v15 type] != a3)
        {

          v16 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v4 = v18;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(CRLBoardItemEditor *)v4 boardItems];
  v16 = [v5 count] != 0;
LABEL_12:

  return v16;
}

- (BOOL)p_shouldShowInspectorForPointPathSourceOfTypes:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        v13 = objc_opt_class();
        v14 = [v12 pathSource];
        v15 = sub_100014370(v13, v14);

        if (!v15)
        {

LABEL_15:
          v18 = 0;
          goto LABEL_16;
        }

        v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 type]);
        v17 = [v4 containsObject:v16];

        if ((v17 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if ((v17 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(CRLBoardItemEditor *)self boardItems];
  v18 = [v5 count] != 0;
LABEL_16:

LABEL_17:
  return v18;
}

- (BOOL)shouldShowCalloutInspector
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(CRLBoardItemEditor *)self boardItems];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = objc_opt_class();
        v12 = [v10 pathSource];
        v13 = sub_100014370(v11, v12);

        if (!v13)
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [(CRLBoardItemEditor *)self boardItems];
  v14 = [v3 count] != 0;
LABEL_11:

  return v14;
}

- (BOOL)shouldShowLineInspector
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    p_cache = _TtC8Freeform27CRLiOSFeatureHintController.cache;
    p_vtable = CRLErrorImageProvider.vtable;
    v22 = v2;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        v12 = [v11 pathSource];
        if ([v12 isMemberOfClass:objc_opt_class()])
        {
        }

        else
        {
          v13 = [v11 pathSource];
          [v13 bezierPath];
          v14 = v5;
          v15 = p_vtable;
          v17 = v16 = p_cache;
          v18 = [v17 isLineSegment];

          p_cache = v16;
          p_vtable = v15;
          v5 = v14;

          v2 = v22;
          if ((v18 & 1) == 0)
          {

            v19 = 0;
            goto LABEL_13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v2 = [(CRLBoardItemEditor *)self boardItems];
  v19 = [v2 count] != 0;
LABEL_13:

  return v19;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("makePathEditable:" == a3)
  {
    v8 = [(CRLShapeEditor *)self canMakePathEditable];
  }

  else if ("intersectPaths:" == a3)
  {
    v8 = [(CRLShapeEditor *)self canIntersectPaths];
  }

  else if ("makePathSmooth:" == a3 || "makePathSharp:" == a3)
  {
    v8 = [(CRLShapeEditor *)self canMakePathSmoothOrSharp];
  }

  else if ("resetTextAndObjectHandles:" == a3)
  {
    v8 = [(CRLShapeEditor *)self canResetTextAndObjectHandles];
  }

  else if ("divideCompoundShape:" == a3)
  {
    v8 = [(CRLShapeEditor *)self canDivideCompoundShape];
  }

  else if ("setShapeFill:" == a3)
  {
    v8 = [(CRLShapeEditor *)self p_canSetFill];
  }

  else if ("setLineEnd:isLeftLineEnd:" == a3)
  {
    v8 = [(CRLShapeEditor *)self anyInfoIsLineOrConnectionLine];
  }

  else
  {
    if ("showShapeLibraryPopover:" != a3)
    {
      v11.receiver = self;
      v11.super_class = CRLShapeEditor;
      v9 = [(CRLStyledEditor *)&v11 canPerformEditorAction:a3 withSender:v6];
      goto LABEL_25;
    }

    v8 = [(CRLShapeEditor *)self allowsChangeShape];
  }

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

LABEL_25:

  return v9;
}

- (BOOL)canMakePathEditable
{
  v3 = [(CRLBoardItemEditor *)self layouts];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(CRLBoardItemEditor *)self layouts];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v5 repForLayout:*(*(&v14 + 1) + 8 * i)];
          v12 = [v11 canMakePathEditable];

          if (!v12)
          {
            LOBYTE(v4) = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(v4) = 1;
LABEL_12:
  }

  return v4;
}

- (BOOL)canMakePathSmoothOrSharp
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)canIntersectPaths
{
  v3 = [(CRLBoardItemEditor *)self layouts];
  if ([v3 count] < 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v5 = [v4 hasSelectedInfosInMultipleContainers] ^ 1;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(CRLBoardItemEditor *)self layouts];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v12 + 1) + 8 * i) canBeIntersected])
        {
          LOBYTE(v5) = 0;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (BOOL)canResetTextAndObjectHandles
{
  v3 = [(CRLBoardItemEditor *)self editorController];
  v4 = [v3 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (v4 == self)
  {
    v6 = [(CRLBoardItemEditor *)self layouts];
    v5 = [v6 count] != 0;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(CRLBoardItemEditor *)self layouts];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if (![*(*(&v13 + 1) + 8 * i) canResetTextAndObjectHandles])
          {
            v5 = 0;
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canDivideCompoundShape
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 canvasEditor];
  v5 = [v4 canvasEditorHelper];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CRLBoardItemEditor *)self layouts];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 shapeInfo];
        v13 = [v5 canDivideCompoundShape:v12];

        if (!v13 || ![v11 canBeDivided])
        {
          v14 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_13:

  return v14;
}

- (BOOL)p_shapeLacksEnoughStyleToBeSavedAsCustom:(id)a3
{
  v3 = a3;
  v4 = [v3 stroke];
  v5 = +[CRLStroke emptyStroke];
  if ([v4 isEqual:v5])
  {
    v6 = [v3 fill];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)makePathSharp:(id)a3
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v7 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Make Sharp" value:0 table:@"UndoStrings"];
  [v7 editPathsOnPathEditableRepsWithActionString:v6 usingBlock:&stru_101852870 filterWithBlock:&stru_101852890];
}

- (void)makePathSmooth:(id)a3
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v7 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Make Smooth" value:0 table:@"UndoStrings"];
  [v7 editPathsOnPathEditableRepsWithActionString:v6 usingBlock:&stru_1018528B0 filterWithBlock:&stru_1018528D0];
}

- (void)makePathEditable:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self editorController];
  v5 = [v4 selectionPath];
  v30 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v32 = v4;
  if (!v30)
  {
    v6 = objc_alloc_init(CRLPathSelection);
    v7 = [v4 selectionPath];
    v8 = [v7 selectionPathWithAppendedSelection:v6];

    v5 = v8;
  }

  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v10 = [v9 commandController];
  v11 = [CRLCommandSelectionBehavior alloc];
  v29 = v9;
  v12 = [v9 canvasEditor];
  v13 = [(CRLBoardItemEditor *)self boardItems];
  v14 = [v12 selectionPathWithInfos:v13];
  v31 = v5;
  v15 = [(CRLCommandSelectionBehavior *)v11 initWithForwardSelectionPath:v5 reverseSelectionPath:v14];

  [v10 openGroupWithSelectionBehavior:v15];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Make Editable" value:0 table:@"UndoStrings"];
  v28 = v10;
  [v10 setCurrentGroupActionString:v17];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [(CRLBoardItemEditor *)self boardItems];
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        v24 = objc_opt_class();
        v25 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v26 = [v25 repForInfo:v23];
        v27 = sub_100014370(v24, v26);

        if (v27 && ([v27 isPathEditable] & 1) == 0)
        {
          [v27 dynamicOperationDidBeginWithRealTimeCommands:0];
          [v27 dynamicMovePathKnobDidBegin];
          [v27 dynamicMovePathKnobDidEndWithTracker:0];
          [v27 dynamicOperationDidEnd];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  [v28 closeGroup];
  [v32 setSelectionPath:v31];
}

- (void)intersectPaths:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    -[CRLShapeEditor performBooleanOperationOnPaths:](self, "performBooleanOperationOnPaths:", [v4 tag]);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B2B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B2C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B34C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLShapeEditor intersectPaths:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeEditor.m"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, v7, 797, 0, "Callers to -[CRLShapeEditor intersectPaths:] must have a -[tag] method to specify what kind of intersection to perform.");
  }
}

- (void)performBooleanOperationOnPaths:(unint64_t)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 editingCoordinator];
  v7 = [v6 commandController];

  v73 = +[NSMutableArray array];
  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v5 topLevelZOrderedSiblingsOfInfos:v8];

  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v9 crl_arrayWithObjectsInSet:v10];

  if ([v11 count] < 2)
  {
    goto LABEL_25;
  }

  v67 = a3;
  v69 = v11;
  v70 = self;
  v72 = v9;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v80;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v80 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v79 + 1) + 8 * i);
        v18 = [v5 canvasEditor];
        v19 = [v18 selectionPathWithInfo:v17];

        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_1002CE1BC;
        v77[3] = &unk_101846288;
        v78 = v73;
        [v5 forLayoutNearestVisibleRectForInfosForSelectionPath:v19 performBlock:v77];
      }

      v14 = [v12 countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v14);
  }

  v20 = 0;
  if (v67 <= 1)
  {
    if (v67)
    {
      v21 = 0;
      v22 = v70;
      if (v67 == 1)
      {
        v21 = [CRLBezierPath intersectBezierPaths:v73];
        v23 = @"Intersect Shapes";
LABEL_19:
        v24 = +[NSBundle mainBundle];
        v20 = [v24 localizedStringForKey:v23 value:0 table:@"UndoStrings"];

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v21 = [CRLBezierPath uniteBezierPaths:v73];
    v23 = @"Unite Shapes";
LABEL_18:
    v22 = v70;
    goto LABEL_19;
  }

  if (v67 == 2)
  {
    v21 = [CRLBezierPath subtractBezierPaths:v73];
    v23 = @"Subtract Shapes";
    goto LABEL_18;
  }

  v21 = 0;
  v22 = v70;
  if (v67 == 3)
  {
    v21 = [CRLBezierPath excludeBezierPaths:v73];
    v23 = @"Exclude Shapes";
    goto LABEL_19;
  }

LABEL_20:
  if ([v21 elementCount] >= 2)
  {
    v62 = v12;
    v25 = [v12 objectAtIndexedSubscript:0];
    v26 = objc_opt_class();
    v27 = [(CRLBoardItemEditor *)v22 editingCoordinator];
    v28 = [v27 boardItemFactory];
    v65 = v25;
    [v28 makeDuplicateOfBoardItem:v25];
    v30 = v29 = v21;
    v31 = sub_100013F00(v26, v30);

    v32 = [v5 canvasEditor];
    v33 = [CRLCanvasCommandSelectionBehavior alloc];
    v34 = [NSSet setWithObject:v31];
    v35 = [(CRLCanvasCommandSelectionBehavior *)v33 initWithCanvasEditor:v32 type:3 constructedInfos:v34];

    v64 = v35;
    [v7 openGroupWithSelectionBehavior:v35];
    [v7 enableProgressiveEnqueuingInCurrentGroup];
    v66 = v20;
    [v7 setCurrentGroupActionString:v20];
    v58 = [NSMutableSet setWithArray:v62];
    v36 = [NSMutableSet setWithArray:v9];
    [v36 minusSet:v58];
    [v29 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v68 = v29;
    v45 = [CRLBezierPathSource pathSourceWithBezierPath:v29];
    v46 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v38 size:v40, v42, v44];
    v61 = v32;
    v47 = [v32 canvasEditorHelper];
    v83 = v31;
    v48 = [NSArray arrayWithObjects:&v83 count:1];
    v49 = [v62 lastObject];
    v50 = [v47 commandForInsertingBoardItemsIntoTopLevelContainer:v48 below:v49];

    v60 = v50;
    [v7 enqueueCommand:v50];
    v63 = v45;
    v59 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v31 pathSource:v45];
    [v7 enqueueCommand:?];
    v51 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v31 geometry:v46];
    [v7 enqueueCommand:v51];
    [v5 layoutIfNeeded];
    v52 = [(CRLBoardItemEditor *)v70 editingCoordinator];
    v71 = v36;
    v53 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v36 infosToRemove:v58 editingCoordinator:v52 withIcc:v5];

    if ([v53 count])
    {
      v54 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v53];
      [v7 enqueueCommand:v54];
    }

    v55 = [v61 canvasEditorHelper];
    v56 = [v55 commandForDeletingInfosPossiblyFromMultipleContainers:v58 shouldRemoveEmptyContainers:0];

    [v7 enqueueCommand:v56];
    [v7 closeGroup];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1002CE288;
    v74[3] = &unk_10183AE28;
    v75 = v5;
    v76 = v31;
    v57 = v31;
    [v75 performBlockOnMainThreadAfterLayoutIfNecessary:v74];

    v9 = v72;
    v20 = v66;
    v21 = v68;
  }

  v11 = v69;
LABEL_25:
}

- (void)resetTextAndObjectHandles:(id)a3
{
  v45 = a3;
  v4 = [(CRLBoardItemEditor *)self editingCoordinator];
  v5 = [v4 commandController];

  [v5 openGroup];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(CRLBoardItemEditor *)self boardItems];
  v50 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v50)
  {
    v49 = *v84;
    v46 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v84 != v49)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v53 = v6;
        v8 = *(*(&v83 + 1) + 8 * v6);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        v11 = v10;
        if (v10)
        {
          v77 = 0;
          v78 = &v77;
          v79 = 0x3032000000;
          v80 = sub_1002CEA90;
          v81 = sub_1002CEAA0;
          v12 = [v10 pathSource];
          v82 = [v12 bezierPath];

          v13 = [v8 geometry];
          if ([v13 heightValid])
          {
            v14 = [v8 geometry];
            v15 = [v14 widthValid];

            if (v15)
            {
              goto LABEL_12;
            }
          }

          else
          {
          }

          v76[0] = _NSConcreteStackBlock;
          v76[1] = 3221225472;
          v76[2] = sub_1002CEAA8;
          v76[3] = &unk_1018453B0;
          v76[4] = &v77;
          [v8 withTemporaryLayoutPerform:v76];
LABEL_12:
          v69 = 0;
          v70 = &v69;
          v71 = 0x5010000000;
          v72 = &unk_1016A8115;
          v16 = *&CGAffineTransformIdentity.c;
          v73 = *&CGAffineTransformIdentity.a;
          v74 = v16;
          v75 = *&CGAffineTransformIdentity.tx;
          v62 = 0;
          v63 = &v62;
          v64 = 0x5010000000;
          v65 = &unk_1016A8115;
          v66 = v73;
          v67 = v16;
          v68 = v75;
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_1002CEB24;
          v61[3] = &unk_1018453B0;
          v61[4] = &v69;
          [v8 withTemporaryLayoutPerform:v61];
          v17 = [v11 parentInfo];
          if (v17)
          {
            do
            {
              if ([v17 conformsToProtocol:&OBJC_PROTOCOL___CRLContainerInfo])
              {
                break;
              }

              v18 = objc_opt_class();
              v19 = sub_100014370(v18, v17);
              v20 = v19;
              if (v19)
              {
                v60[0] = _NSConcreteStackBlock;
                v60[1] = 3221225472;
                v60[2] = sub_1002CEBC8;
                v60[3] = &unk_101852938;
                v60[4] = &v69;
                v60[5] = &v62;
                [v19 withTemporaryLayoutPerform:v60];
              }

              v21 = [v17 parentInfo];

              v17 = v21;
            }

            while (v21);
          }

          v22 = v78[5];
          v23 = *(v70 + 3);
          *&v59.a = *(v70 + 2);
          *&v59.c = v23;
          *&v59.tx = *(v70 + 4);
          [v22 transformUsingAffineTransform:&v59];
          [v78[5] bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v32 = [CRLBezierPathSource pathSourceWithBezierPath:v78[5]];
          v33 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v25 size:v27, v29, v31];
          v34 = *(v63 + 3);
          *&v58.a = *(v63 + 2);
          *&v58.c = v34;
          *&v58.tx = *(v63 + 4);
          CGAffineTransformInvert(&v59, &v58);
          v52 = [(CRLCanvasInfoGeometry *)v33 geometryByAppendingTransform:&v59];

          v51 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v11 geometry:v52];
          v35 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v11 pathSource:v32];
          [v5 openGroup];
          v36 = +[NSBundle mainBundle];
          v37 = [v36 localizedStringForKey:@"Reset Text and Object Handles" value:0 table:@"UndoStrings"];
          [v5 setCurrentGroupActionString:v37];

          [v5 enableProgressiveEnqueuingInCurrentGroup];
          [v5 enqueueCommand:v51];
          [v5 enqueueCommand:v35];
          v38 = [(CRLBoardItemEditor *)self interactiveCanvasController];
          v39 = [v38 layoutForInfo:v11];

          if (v39)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v40 = [v39 connectedLayouts];
            v41 = [v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
            v48 = v32;
            if (v41)
            {
              v42 = *v55;
              do
              {
                for (i = 0; i != v41; i = i + 1)
                {
                  if (*v55 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v44 = *(*(&v54 + 1) + 8 * i);
                  [(CRLShapeEditor *)self p_adjustMagnetsForResetTextAndObjectHandlesForMagnet:1 withClineLayout:v44 withShapeItem:v11];
                  [(CRLShapeEditor *)self p_adjustMagnetsForResetTextAndObjectHandlesForMagnet:0 withClineLayout:v44 withShapeItem:v11];
                }

                v41 = [v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
              }

              while (v41);
            }

            v5 = v46;
            v32 = v48;
          }

          [v5 closeGroup];

          _Block_object_dispose(&v62, 8);
          _Block_object_dispose(&v69, 8);
          _Block_object_dispose(&v77, 8);
        }

        v6 = v53 + 1;
      }

      while ((v53 + 1) != v50);
      v50 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v50);
  }

  [v5 closeGroup];
}

- (void)p_adjustMagnetsForResetTextAndObjectHandlesForMagnet:(BOOL)a3 withClineLayout:(id)a4 withShapeItem:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 connectionLineInfo];
  v11 = [v10 connectionLinePathSource];
  v12 = [v11 copy];

  v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v14 = [v13 board];
  if (v6)
  {
    v15 = [v10 getConnectedToWithBoardItemOwner:v14];

    if (v15 != v9)
    {
      goto LABEL_14;
    }

    v16 = [v12 headMagnet];
  }

  else
  {
    v15 = [v10 getConnectedFromWithBoardItemOwner:v14];

    if (v15 != v9)
    {
      goto LABEL_14;
    }

    v16 = [v12 tailMagnet];
  }

  v17 = v16;
  if (v16 && ([v16 magnetType] == 7 || objc_msgSend(v17, "magnetType") == 6))
  {
    if (v6)
    {
      [v8 headMagnetCanvasPosition];
    }

    else
    {
      [v8 tailMagnetCanvasPosition];
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1002CEF24;
    v25[3] = &unk_101852960;
    v28 = v18;
    v29 = v19;
    v30 = v6;
    v20 = v12;
    v26 = v20;
    v27 = v17;
    v21 = v17;
    [v9 withTemporaryLayoutPerform:v25];

    v22 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v10 connectedItem:v15 chirality:v6 pathSource:v20];
    v23 = [(CRLBoardItemEditor *)self editingCoordinator];
    v24 = [v23 commandController];
    [v24 enqueueCommand:v22];
  }

  else
  {
  }

LABEL_14:
}

- (void)divideCompoundShape:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [(CRLBoardItemEditor *)self editingCoordinator];
  v74 = [v5 boardItemFactory];
  v63 = v5;
  v6 = [v5 commandController];
  [v6 openGroup];
  [v6 enableProgressiveEnqueuingInCurrentGroup];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Break Apart" value:0 table:@"UndoStrings"];
  [v6 setCurrentGroupActionString:v8];

  v75 = +[NSMutableSet set];
  v9 = [(CRLBoardItemEditor *)self boardItems];
  v62 = [v4 topLevelZOrderedSiblingsOfInfos:v9];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (!v11)
  {

LABEL_33:
    [v6 closeGroup];
    goto LABEL_34;
  }

  v12 = v11;
  v76 = 0;
  v13 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v14 = *v83;
  v59 = *v83;
  v60 = v10;
  v61 = v4;
  v71 = v6;
  do
  {
    v15 = 0;
    v64 = v12;
    do
    {
      if (*v83 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v82 + 1) + 8 * v15);
      v17 = objc_opt_class();
      v18 = sub_100014370(v17, v16);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 pathSource];
        v21 = [v20 bezierPath];

        v22 = v21;
        v23 = [v21 visuallyDistinctSubregions];
        if ([v23 count] < 2)
        {
          [v75 addObject:v19];
        }

        else
        {
          v69 = v22;
          v77 = [v13[423] arrayWithCapacity:{objc_msgSend(v23, "count")}];
          v24 = objc_opt_class();
          v67 = sub_100014370(v24, v19);
          v25 = [v67 textStorage];
          v26 = [v25 string];
          v65 = v26;
          v66 = v25;
          v70 = v15;
          if (v25)
          {
            LODWORD(v27) = [v26 isEqualToString:&stru_1018BCA28] ^ 1;
          }

          else
          {
            LOBYTE(v27) = 0;
          }

          v72 = objc_alloc_init(v13[423]);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v68 = v23;
          obj = v23;
          v28 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v79;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v79 != v30)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v78 + 1) + 8 * i);
                v33 = [v19 geometry];
                [v32 bounds];
                v34 = [v33 geometryWithNewBounds:?];

                v35 = [CRLBezierPathSource pathSourceWithBezierPath:v32];
                v36 = objc_opt_class();
                v37 = [v74 makeDuplicateOfBoardItem:v19];
                v38 = sub_100013F00(v36, v37);

                [v38 setGeometry:v34];
                [v38 setPathSource:v35];
                v39 = objc_opt_class();
                v40 = sub_100014370(v39, v38);
                if ((v40 == 0) | v27 & 1)
                {
                  LOBYTE(v27) = (v40 == 0) & v27;
                }

                else
                {
                  v41 = [_TtC8Freeform23CRLWPReplaceTextCommand alloc];
                  v27 = [v40 textStorage];
                  v42 = [v27 range];
                  v44 = [(CRLWPReplaceTextCommand *)v41 initWithShapeItem:v40 range:v42 text:v43, &stru_1018BCA28];

                  [v72 addObject:v44];
                  LOBYTE(v27) = 0;
                }

                [v77 addObject:v38];
                [v75 addObject:v38];
              }

              v29 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
            }

            while (v29);
          }

          v45 = [NSMutableSet setWithObject:v19];
          v46 = [NSMutableSet setWithArray:v62];
          [v46 minusSet:v45];
          v4 = v61;
          v47 = [v61 canvasEditor];
          v48 = [v47 commandForInsertingBoardItems:v77 below:v19];

          [v71 enqueueCommand:v48];
          if ([v72 count])
          {
            v49 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v72];
            [v71 enqueueCommand:v49];
          }

          [v61 layoutIfNeeded];
          v50 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v46 infosToRemove:v45 editingCoordinator:v63 withIcc:v61];
          if ([v50 count])
          {
            v51 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v50];
            [v71 enqueueCommand:v51];
          }

          v52 = [v61 canvasEditor];
          v53 = [v52 canvasEditorHelper];
          v54 = [NSSet setWithObject:v19];
          v55 = [v53 commandForDeletingInfosPossiblyFromMultipleContainers:v54 shouldRemoveEmptyContainers:0];

          v6 = v71;
          [v71 enqueueCommand:v55];

          v76 = 1;
          v14 = v59;
          v10 = v60;
          v12 = v64;
          v13 = &_s10Foundation9IndexPathVSHAAMc_ptr;
          v22 = v69;
          v15 = v70;
          v23 = v68;
        }
      }

      v15 = v15 + 1;
    }

    while (v15 != v12);
    v12 = [v10 countByEnumeratingWithState:&v82 objects:v87 count:16];
  }

  while (v12);

  if ((v76 & 1) == 0)
  {
    goto LABEL_33;
  }

  v56 = [CRLCanvasCommandSelectionBehavior alloc];
  v57 = [v4 canvasEditor];
  v58 = [(CRLCanvasCommandSelectionBehavior *)v56 initWithCanvasEditor:v57 type:3 constructedInfos:v75];

  [v6 closeGroupWithSelectionBehavior:v58];
LABEL_34:
}

- (void)p_applyTransformFromInfo:(id)a3 toEditablePathSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = [v8 canvasEditor];
  v10 = [v9 selectionPathWithInfo:v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002CF858;
  v12[3] = &unk_101846288;
  v13 = v6;
  v11 = v6;
  [v8 forLayoutNearestVisibleRectForInfosForSelectionPath:v10 performBlock:v12];
}

- (void)setLineEnd:(id)a3 isLeftLineEnd:(BOOL)a4
{
  v4 = a4;
  v24 = a3;
  v6 = [(CRLBoardItemEditor *)self editingCoordinator];
  v7 = [v6 commandController];

  v8 = [CRLCanvasCommandSelectionBehavior alloc];
  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v10 = [v9 canvasEditor];
  v11 = [(CRLCanvasCommandSelectionBehavior *)v8 initWithCanvasEditor:v10];

  v22 = v11;
  [v7 openGroupWithSelectionBehavior:v11];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Stroke Line End Style" value:0 table:@"UndoStrings"];
  [v7 setCurrentGroupActionString:v13];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(CRLBoardItemEditor *)self boardItems];
  v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = objc_opt_class();
        v20 = sub_100014370(v19, v18);
        v21 = -[CRLCommandSetLineEnd initWithShapeItem:lineEnd:chirality:]([_TtC8Freeform20CRLCommandSetLineEnd alloc], "initWithShapeItem:lineEnd:chirality:", v20, v24, [objc_opt_class() p_leftLineEndIsHeadForInfo:v20] ^ v4);
        [v7 enqueueCommand:v21];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  [v7 closeGroup];
}

- (id)selectedObjectsSupportingFill
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 objectsPassingTest:&stru_1018529A0];

  return v3;
}

- (id)selectedObjectsSupportingEndpoints
{
  v2 = [(CRLBoardItemEditor *)self layouts];
  v3 = [v2 objectsPassingTest:&stru_1018529C0];

  return v3;
}

- (BOOL)p_containsOpenPaths
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [CRLShapeEditor anyInfoIsOpenPath:v2];

  return v3;
}

- (id)leftLineEnd
{
  v3 = objc_opt_class();
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];
  v6 = sub_100013F00(v3, v5);

  v7 = [objc_opt_class() leftLineEndForShape:v6];

  return v7;
}

+ (id)leftLineEndForShape:(id)a3
{
  v4 = a3;
  if ([a1 p_leftLineEndIsHeadForInfo:v4])
  {
    [v4 headLineEnd];
  }

  else
  {
    [v4 tailLineEnd];
  }
  v5 = ;

  return v5;
}

- (id)rightLineEnd
{
  v3 = objc_opt_class();
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];
  v6 = sub_100013F00(v3, v5);

  v7 = [objc_opt_class() rightLineEndForShape:v6];

  return v7;
}

+ (id)rightLineEndForShape:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() p_leftLineEndIsHeadForInfo:v3])
  {
    [v3 tailLineEnd];
  }

  else
  {
    [v3 headLineEnd];
  }
  v4 = ;

  return v4;
}

- (id)strokeColorPickerTitle
{
  v2 = self;
  v9.receiver = self;
  v9.super_class = CRLShapeEditor;
  v3 = [(CRLStyledEditor *)&v9 strokeColorPickerTitle];
  LODWORD(v2) = [(CRLShapeEditor *)v2 infosAreOpenPaths];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v2)
  {
    v6 = @"Stroke Color";
  }

  else
  {
    v6 = @"Border Color";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:0];

  return v7;
}

- (id)currentGroupActionStringForStrokeSetting
{
  v2 = self;
  v9.receiver = self;
  v9.super_class = CRLShapeEditor;
  v3 = [(CRLStyledEditor *)&v9 currentGroupActionStringForStrokeSetting];
  LODWORD(v2) = [(CRLShapeEditor *)v2 infosAreOpenPaths];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v2)
  {
    v6 = @"Stroke Setting";
  }

  else
  {
    v6 = @"Border Setting";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:@"UndoStrings"];

  return v7;
}

- (BOOL)p_shapesContainNonLine
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3, 0];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100014370(v9, v8);
        if (v10)
        {
          v11 = [NSSet setWithObject:v10];
          if (![CRLShapeEditor infosAreLines:v11]&& ![CRLShapeEditor infosAreConnectionLines:v11])
          {

            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (BOOL)p_shapesAreMixed
{
  v3 = [(CRLBoardItemEditor *)self boardItems];
  if ([CRLShapeEditor infosAreStickyNotes:v3]|| [CRLShapeEditor infosAreLines:v3]|| [CRLShapeEditor infosAreConnectionLines:v3])
  {
    v4 = 0;
  }

  else if ([CRLShapeEditor anyInfoIsStickyNote:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CRLShapeEditor *)self anyInfoIsLineOrConnectionLine];
  }

  return v4;
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v38.receiver = self;
  v38.super_class = CRLShapeEditor;
  [(CRLBoardItemEditor *)&v38 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [CRLShapeEditor infosAreLinesAndConnectionLines:v8];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Set Fill" value:0 table:0];
  v12 = [CRLImage crl_quickInspectorImageNamed:@"circle.fill"];
  v13 = [CRLQuickInspectorElement elementWithName:v11 image:v12 type:2 options:4];

  [v13 setTag:1];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Choose a fill color" value:0 table:0];
  [v13 setToolTip:v15];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Set Stroke" value:0 table:0];
  v18 = [CRLImage crl_quickInspectorImageNamed:@"line.diagonal"];
  v19 = [CRLQuickInspectorElement elementWithName:v17 image:v18 type:2 options:8];

  [v19 setTag:2];
  v20 = +[NSBundle mainBundle];
  v21 = v20;
  v37 = v9;
  v22 = v9 == 0;
  v23 = v7;
  if (v22)
  {
    v24 = @"Choose a border style";
  }

  else
  {
    v24 = @"Choose a line style or set line width";
  }

  v25 = [v20 localizedStringForKey:v24 value:0 table:0];
  [v19 setToolTip:v25];

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"Set Line Ends" value:0 table:0];
  v28 = [CRLImage crl_quickInspectorImageNamed:@"line.diagonal.arrow"];
  v29 = [CRLQuickInspectorElement elementWithName:v27 image:v28 type:2 options:32];

  [v29 setTag:6];
  v30 = +[NSBundle mainBundle];
  v31 = [v30 localizedStringForKey:@"Choose a line end type" value:0 table:0];
  [v29 setToolTip:v31];

  v32 = [(CRLBoardItemEditor *)self boardItems];
  LOBYTE(v30) = [CRLShapeEditor anyInfoIsStickyNote:v32];

  if ((v30 & 1) == 0)
  {
    if ([(CRLShapeEditor *)self p_shapesAreMixed])
    {
      if ((v37 & 1) != 0 || ([(CRLBoardItemEditor *)self boardItems], v33 = objc_claimAutoreleasedReturnValue(), v34 = [CRLShapeEditor infosAreOpenPaths:v33], v33, v34))
      {
        [v23 addObject:v19];
LABEL_14:
        [v23 addObject:v29];
      }
    }

    else
    {
      v35 = [(CRLBoardItemEditor *)self boardItems];
      v36 = [CRLShapeEditor anyInfoIsTextBox:v35];

      if ([(CRLShapeEditor *)self p_canSetFillWithAnyInfoIsTextBox:v36])
      {
        [v23 addObject:v13];
      }

      if ([(CRLShapeEditor *)self p_canSetStrokeWithAnyInfoIsTextBox:v36])
      {
        [v23 addObject:v19];
      }

      if ([(CRLShapeEditor *)self infosSupportEndpoints])
      {
        goto LABEL_14;
      }
    }
  }
}

- (BOOL)p_canSetFill
{
  v3 = [(CRLBoardItemEditor *)self boardItems];
  v4 = [CRLShapeEditor anyInfoIsTextBox:v3];

  return [(CRLShapeEditor *)self p_canSetFillWithAnyInfoIsTextBox:v4];
}

- (BOOL)p_canSetFillWithAnyInfoIsTextBox:(BOOL)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return ![(CRLShapeEditor *)self anyInfoIsLineOrConnectionLine:v3];
  }
}

- (void)setShapeFill:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCommandSelectionBehavior alloc];
  v8 = [v5 editorController];
  v9 = [v8 selectionPath];
  v23 = v5;
  v10 = [v5 editorController];
  v11 = [v10 selectionPath];
  v12 = [(CRLCommandSelectionBehavior *)v7 initWithForwardSelectionPath:v9 reverseSelectionPath:v11];

  v22 = v12;
  [v6 openGroupWithSelectionBehavior:v12];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [(CRLBoardItemEditor *)self boardItems];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = objc_opt_class();
        v20 = sub_100013F00(v19, v18);
        if (v20)
        {
          v21 = [[_TtC8Freeform17CRLCommandSetFill alloc] initWithShapeItem:v20 fill:v4];
          [v6 enqueueCommand:v21];
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [v6 closeGroup];
}

- (void)showShapeLibraryPopover:(id)a3
{
  if (+[CRLFeatureFlagGroup isEasierConnectionLinesEnabled](_TtC8Freeform19CRLFeatureFlagGroup, "isEasierConnectionLinesEnabled", a3) || +[_TtC8Freeform19CRLFeatureFlagGroup isChangeShapeEnabled])
  {

    [_TtC8Freeform28CRLShapeLibraryPopoverHelper showShapeLibraryForEditor:self];
  }
}

- (BOOL)allowsChangeShape
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
        if (v8 && [v8 allowsChangeShape])
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

- (void)changeShapeToUsePathSource:(id)a3
{
  v4 = a3;
  if (-[CRLShapeEditor allowsChangeShape](self, "allowsChangeShape") && [v4 canUseToChangeShape])
  {
    v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v6 = [v5 commandController];

    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v8 = [v7 canvasEditor];
    v9 = [v8 canvasEditorHelper];

    v10 = [(CRLBoardItemEditor *)self boardItems];
    v24 = [v9 selectionPathWithInfos:v10];

    v11 = objc_alloc_init(NSMutableSet);
    [v6 openGroup];
    [v6 enableProgressiveEnqueuingInCurrentGroup];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Change Shape" value:0 table:@"UndoStrings"];
    [v6 setCurrentGroupActionString:v13];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [(CRLBoardItemEditor *)self boardItems];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = objc_opt_class();
          v21 = sub_100013F00(v20, v19);
          if ([v21 allowsChangeShape])
          {
            [v11 addObject:v21];
            [(CRLShapeEditor *)self p_changeShapeOfItem:v21 toUsePathSource:v4];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v22 = [v9 selectionPathWithInfos:v11];
    v23 = [[CRLCommandSelectionBehavior alloc] initWithCommitSelectionPath:v24 forwardSelectionPath:v22 reverseSelectionPath:v24];
    [v6 closeGroupWithSelectionBehavior:v23];
  }
}

- (void)p_changeShapeOfItem:(id)a3 toUsePathSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v103 = self;
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v105 = [v8 commandController];

  v9 = [v6 geometry];
  [v9 size];
  if (v10 == 0.0)
  {
  }

  else
  {
    v11 = [v6 geometry];
    [v11 size];
    v13 = v12;

    if (v13 != 0.0)
    {
      goto LABEL_14;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10134B374();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10134B388();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10134B410();
  }

  v14 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v14);
  }

  v15 = [NSString stringWithUTF8String:"[CRLShapeEditor p_changeShapeOfItem:toUsePathSource:]"];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeEditor.m"];
  [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1513 isFatal:0 description:"Cannot change shape from a shape whose width or height is zero"];

LABEL_14:
  [v7 naturalSize];
  if (v17 == 0.0 || ([v7 naturalSize], v18 == 0.0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134B438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B460();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B4E8();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = [NSString stringWithUTF8String:"[CRLShapeEditor p_changeShapeOfItem:toUsePathSource:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:1514 isFatal:0 description:"Cannot change shape to a shape whose width and height are both nonzero."];
  }

  v22 = [v6 geometry];
  [v22 size];
  v24 = v23;
  v25 = [v6 geometry];
  [v25 size];
  v27 = v24 / v26;

  [v7 naturalSize];
  v29 = v28;
  [v7 naturalSize];
  v31 = v29 / v30;
  v32 = [v7 copy];
  v33 = vabdd_f64(v27, v31) >= 0.00999999978 && v27 != v31;
  v34 = [v6 geometry];
  [v34 size];
  v36 = v35;
  if (v33)
  {
    v37 = [v6 geometry];
    [v37 size];
    v39 = v36 * v38;

    [v7 naturalSize];
    v41 = v40;
    [v7 naturalSize];
    v43 = sqrt(v39 / (v41 * v42));
    [v7 naturalSize];
    [v32 scaleToNaturalSize:{sub_10011F340(v44, v45, v43)}];
  }

  else
  {
    [v32 scaleToNaturalSize:v35];
  }

  v46 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v6 pathSource:v32];
  if (([v105 isGroupOpen] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v47 = v46;
    if (qword_101AD5A10 != -1)
    {
      sub_10134B510();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134B538();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134B5C0();
    }

    v48 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v48);
    }

    v49 = [NSString stringWithUTF8String:"[CRLShapeEditor p_changeShapeOfItem:toUsePathSource:]"];
    v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v49 file:v50 lineNumber:1546 isFatal:0 description:"Changing shapes is only supported from within an open command group."];

    v46 = v47;
  }

  v100 = v7;
  v101 = v32;
  v99 = v46;
  [v105 enqueueCommand:v46];
  if (v33)
  {
    [v32 naturalSize];
    v52 = v51;
    v54 = v53;
    v55 = [v6 geometry];
    [v55 center];
    v57 = v56;
    v59 = v58;

    v60 = [CRLCanvasInfoGeometry alloc];
    v61 = [v6 geometry];
    [v61 angle];
    v63 = [(CRLCanvasInfoGeometry *)v60 initWithPosition:v57 - v52 * 0.5 size:v59 - v54 * 0.5 angle:v52, v54, v62];

    v64 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v6 geometry:v63];
    [v105 enqueueCommand:v64];
  }

  v65 = [(CRLBoardItemEditor *)v103 interactiveCanvasController];
  v104 = v6;
  v66 = [v65 layoutForInfo:v6];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [v66 connectedLayouts];
  v67 = [obj countByEnumeratingWithState:&v106 objects:v110 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v107;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v107 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v71 = *(*(&v106 + 1) + 8 * i);
        v72 = [v71 connectionLineInfo];
        v73 = [v72 connectionLinePathSource];
        v74 = [v73 copy];

        v75 = [v71 connectedTo];

        if (v75 == v66)
        {
          [(CRLShapeEditor *)v103 p_getNewMagnetNormalizedPositionAfterChangingShapeWithConnectionLine:v71 withOldLayout:v66 withNewInfo:v104 forLineEnd:11];
          v92 = v91;
          v94 = v93;
          v95 = [v74 headMagnet];
          [v95 setMagnetNormalizedPosition:{v92, v94}];

          v96 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
          v97 = objc_opt_class();
          v84 = [v71 connectedTo];
          v85 = [v84 info];
          v86 = sub_100014370(v97, v85);
          v87 = v96;
          v88 = v72;
          v89 = v86;
          v90 = 1;
        }

        else
        {
          v76 = [v71 connectedFrom];

          if (v76 != v66)
          {
            goto LABEL_53;
          }

          [(CRLShapeEditor *)v103 p_getNewMagnetNormalizedPositionAfterChangingShapeWithConnectionLine:v71 withOldLayout:v66 withNewInfo:v104 forLineEnd:10];
          v78 = v77;
          v80 = v79;
          v81 = [v74 tailMagnet];
          [v81 setMagnetNormalizedPosition:{v78, v80}];

          v82 = [_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc];
          v83 = objc_opt_class();
          v84 = [v71 connectedFrom];
          v85 = [v84 info];
          v86 = sub_100014370(v83, v85);
          v87 = v82;
          v88 = v72;
          v89 = v86;
          v90 = 0;
        }

        v98 = [(CRLCommandSetConnectionLineConnection *)v87 initWithConnectionLine:v88 connectedItem:v89 chirality:v90 pathSource:v74];

        [v105 enqueueCommand:v98];
LABEL_53:
      }

      v68 = [obj countByEnumeratingWithState:&v106 objects:v110 count:16];
    }

    while (v68);
  }
}

- (CGPoint)p_getNewMagnetNormalizedPositionAfterChangingShapeWithConnectionLine:(id)a3 withOldLayout:(id)a4 withNewInfo:(id)a5 forLineEnd:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6 == 11)
  {
    v12 = [v9 headMagnetType];
  }

  else
  {
    v12 = [v9 tailMagnetType];
  }

  v13 = v12;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3010000000;
  v36 = 0;
  v37 = 0;
  v35[3] = &unk_1016A8115;
  if (a6 == 11)
  {
    [v9 headMagnetCanvasPosition];
  }

  else
  {
    [v9 tailMagnetCanvasPosition];
  }

  v36 = v14;
  v37 = v15;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3010000000;
  v33 = 0;
  v34 = 0;
  v32 = &unk_1016A8115;
  if (a6 == 11)
  {
    [v9 headMagnetNormalizedPosition];
  }

  else
  {
    [v9 tailMagnetNormalizedPosition];
  }

  v33 = v16;
  v34 = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1002D19CC;
  v23[3] = &unk_101852AA8;
  v27 = v13;
  v25 = v35;
  v18 = v9;
  v28 = a6;
  v24 = v18;
  v26 = &v29;
  [v11 withTemporaryLayoutPerform:v23];
  v19 = v30[4];
  v20 = v30[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  v21 = v19;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CRLPathEditor)nextPathEditor
{
  WeakRetained = objc_loadWeakRetained((&self->mFillInspectorDisclosed + 1));

  return WeakRetained;
}

@end