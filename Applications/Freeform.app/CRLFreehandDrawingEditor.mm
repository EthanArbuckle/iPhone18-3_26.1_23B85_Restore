@interface CRLFreehandDrawingEditor
- (BOOL)canCopySubselection;
- (BOOL)crlaxShouldOfferSnapToShapeFromShapeItem:(id)a3;
- (BOOL)p_areAllSelectedInfosFreehandDrawings;
- (BOOL)p_canCopyAsText;
- (BOOL)p_canRefineHandwritingUsingSynchronousChecks;
- (BOOL)p_canSnapToShape;
- (BOOL)p_canStraighten;
- (BOOL)p_canTranslateHandwrittenText;
- (BOOL)p_currentlyEditingInGroup;
- (BOOL)p_currentlyInFreehandDrawingMode;
- (BOOL)p_hasTransformableDrawingsSelected;
- (BOOL)p_mightHaveHandwritingInAnySelectedShapes;
- (BOOL)p_shouldPreventPasteForItemSource:(id)a3;
- (BOOL)p_shouldShowResizeMenuItemForSelectedItems:(id)a3;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (CGRect)targetRectForEditMenu;
- (CGSize)p_sizeForExportingInfo:(id)a3;
- (NSSet)boardItemsForDragAndDropTracing;
- (NSSet)freehandDrawingInfos;
- (UIMenuElement)refineHandwritingMenuElement;
- (id)createFreehandDrawingsToCopyForSubselection;
- (id)drawingRepresetativeItemsFromBoardItems:(id)a3;
- (id)imageURLsOfDrawings;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)p_firstDrawingInfo;
- (id)p_infosToMerge;
- (id)p_infosToSeparate;
- (id)p_intelligenceProvider;
- (id)p_pngDataForInfo:(id)a3;
- (id)p_shapeItemsSelectedInFreehandDrawings;
- (id)p_suffixForExportedFileWithIdentifier:(unint64_t)a3 index:(unint64_t)a4 count:(unint64_t)a5;
- (id)snapToShapeActionName;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)a3;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)copy:(id)a3;
- (void)copyAsText:(id)a3;
- (void)copySubselectionToPasteboard:(id)a3;
- (void)cut:(id)a3;
- (void)didBecomeCurrentEditorForEditorController:(id)a3;
- (void)insertContentsOfFreehandDrawingsFromItemSource:(id)a3 atUnscaledPoint:(CGPoint)a4 completionHandler:(id)a5;
- (void)mergeDrawings:(id)a3;
- (void)p_beginFreehandDrawingMode:(id)a3;
- (void)p_canRefineHandwritingWithCompletionHandler:(id)a3;
- (void)p_fixUpCurrentSelectionPathIfNeeded:(id)a3;
- (void)p_insertFreehandDrawingsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 isCrossDocument:(BOOL)a5 completionHandler:(id)a6;
- (void)p_separateInfos:(id)a3 preserveInitialSelection:(BOOL)a4 actionString:(id)a5;
- (void)pasteWithPasteboard:(id)a3 atIndex:(unint64_t)a4 forceMatchStyle:(BOOL)a5 bakeFormulas:(BOOL)a6 completionHandler:(id)a7;
- (void)refineHandwriting:(id)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)separate:(id)a3;
- (void)snapToShapeWithCompletionHandler:(id)a3;
- (void)straighten:(id)a3;
- (void)transform:(id)a3;
- (void)translateHandwrittenText:(id)a3;
@end

@implementation CRLFreehandDrawingEditor

- (BOOL)p_currentlyEditingInGroup
{
  v3 = [(CRLBoardItemEditor *)self editorController];
  v4 = [v3 selectionForEditor:self];

  objc_opt_class();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  return v3 & 1;
}

- (NSSet)freehandDrawingInfos
{
  v3 = objc_opt_class();

  return [(CRLBoardItemEditor *)self boardItemsOfClass:v3];
}

- (id)p_infosToSeparate
{
  v3 = [(CRLFreehandDrawingEditor *)self p_shapeItemsSelectedInFreehandDrawings];
  v4 = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  if ([v4 count] == 1 && (v5 = objc_msgSend(v3, "count"), objc_msgSend(v4, "anyObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "childInfos"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v5 == v8))
  {
    v9 = +[NSSet set];
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v10;
}

- (id)p_infosToMerge
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) childInfos];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)p_shapeItemsSelectedInFreehandDrawings
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = +[NSMutableSet set];
  v5 = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v3;
  v6 = [v3 infosForCurrentSelectionPath];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = sub_100014370(v12, v11);
        v14 = v13;
        if (v13)
        {
          v15 = [v13 containingGroup];
          v16 = [v5 containsObject:v15];

          if (v16)
          {
            [v4 addObject:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v4;
}

- (BOOL)p_areAllSelectedInfosFreehandDrawings
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 infosForCurrentSelectionPath];
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
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_12;
          }
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
LABEL_12:

  return v8;
}

- (id)p_pngDataForInfo:(id)a3
{
  v4 = a3;
  v5 = [CRLCanvasImager alloc];
  v6 = [(CRLBoardItemEditor *)self editingCoordinator];
  v7 = [v6 mainBoard];
  v8 = [(CRLCanvasImager *)v5 initWithBoard:v7];

  v16 = v4;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [(CRLCanvasImager *)v8 setInfos:v9];

  [(CRLFreehandDrawingEditor *)self p_sizeForExportingInfo:v4];
  v11 = v10;
  v13 = v12;

  [(CRLCanvasImager *)v8 setScaledImageSize:v11, v13];
  v14 = [(CRLCanvasImager *)v8 pngData];

  return v14;
}

- (CGSize)p_sizeForExportingInfo:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4010000000;
  v31 = &unk_1016A8115;
  v32 = 0u;
  v33 = 0u;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 layoutForInfoNearestVisibleRect:v4];

  if (v6)
  {
    [v6 frameForCulling];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = v29;
    *(v29 + 4) = v8;
    *(v15 + 5) = v10;
    v15[6] = v11;
    v15[7] = v13;
  }

  else
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1003958AC;
    v27[3] = &unk_1018453B0;
    v27[4] = &v28;
    [v4 withTemporaryLayoutPerform:v27];
    v12 = v29[6];
    v14 = v29[7];
  }

  v16 = sub_10011F340(v12, v14, 2.0);
  v18 = v17;
  v19 = sub_100121EF4(1, v16, v17, 1000.0, 1000.0);
  v20 = v19 > v16;
  if (v21 > v18)
  {
    v20 = 1;
  }

  if (!v20)
  {
    v19 = v16;
  }

  v22 = sub_10012211C(v19);
  v24 = v23;

  _Block_object_dispose(&v28, 8);
  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)transform:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v4 freehandDrawingToolkit];
  [v3 beginDrawingTransformModeIfNeeded];
}

- (void)separate:(id)a3
{
  v6 = [(CRLFreehandDrawingEditor *)self p_infosToSeparate];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Separate" value:0 table:@"UndoStrings"];
  [(CRLFreehandDrawingEditor *)self p_separateInfos:v6 preserveInitialSelection:0 actionString:v5];
}

- (void)mergeDrawings:(id)a3
{
  v6 = [(CRLFreehandDrawingEditor *)self p_infosToMerge];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Merge" value:0 table:@"UndoStrings"];
  [(CRLFreehandDrawingEditor *)self p_separateInfos:v6 preserveInitialSelection:1 actionString:v5];
}

- (id)p_intelligenceProvider
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 drawingIntelligenceProvider];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360744();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360758();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013607F4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor p_intelligenceProvider]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:192 isFatal:0 description:"invalid nil value for '%{public}s'", "intelligenceProvider"];
  }

  return v3;
}

- (void)snapToShapeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [v5 snapToShapeSelectedStrokesWithCompletionHandler:v4];
}

- (BOOL)p_canSnapToShape
{
  v2 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  v3 = [v2 canSnapToShapeSelectedStrokes];

  return v3;
}

- (id)snapToShapeActionName
{
  v2 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  v3 = [v2 snapToShapeSelectedStrokesCount];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3 == 2)
  {
    v6 = @"Snap to Shapes";
  }

  else
  {
    v6 = @"Snap to Shape";
  }

  v7 = [v4 localizedStringForKey:v6 value:0 table:0];

  return v7;
}

- (BOOL)crlaxShouldOfferSnapToShapeFromShapeItem:(id)a3
{
  v4 = a3;
  v5 = [(CRLFreehandDrawingEditor *)self p_shapeItemsSelectedInFreehandDrawings];
  v6 = [v5 containsObject:v4];

  if (v6 && [(CRLFreehandDrawingEditor *)self canPerformEditorAction:"snapToShape:" withSender:0])
  {
    v7 = [v4 canSnapToShape];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)p_mightHaveHandwritingInAnySelectedShapes
{
  [(CRLFreehandDrawingEditor *)self p_shapeItemsSelectedInFreehandDrawings];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isTreatedAsFillForFreehandDrawing] & 1) == 0 && !objc_msgSend(v6, "hasSnappedToShape"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)straighten:(id)a3
{
  v3 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [v3 straightenHandwritingInSelectedStrokesWithCompletionHandler:&stru_10185AFE0];
}

- (BOOL)p_canStraighten
{
  v3 = [CRLFeatureFlagsHelper isOSFeatureEnabled:14];
  if (v3)
  {

    LOBYTE(v3) = [(CRLFreehandDrawingEditor *)self p_mightHaveHandwritingInAnySelectedShapes];
  }

  return v3;
}

- (void)copyAsText:(id)a3
{
  v3 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [v3 copyAsTextSelectedStrokesWithCompletionHandler:&stru_10185B000];
}

- (BOOL)p_canCopyAsText
{
  v3 = [CRLFeatureFlagsHelper isOSFeatureEnabled:2];
  if (v3)
  {

    LOBYTE(v3) = [(CRLFreehandDrawingEditor *)self p_mightHaveHandwritingInAnySelectedShapes];
  }

  return v3;
}

- (void)translateHandwrittenText:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self editorController];
  v6 = [v5 selectionPath];
  v7 = [v6 copy];

  objc_initWeak(&location, self);
  v8 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003961B4;
  v9[3] = &unk_10185B028;
  objc_copyWeak(&v10, &location);
  v9[4] = v7;
  [v8 recognizedTextInSelectedStrokesWithCompletionHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (BOOL)p_canTranslateHandwrittenText
{
  if (!+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 15) || !+[LTUITranslationViewController isAvailable])
  {
    return 0;
  }

  return [(CRLFreehandDrawingEditor *)self p_mightHaveHandwritingInAnySelectedShapes];
}

- (UIMenuElement)refineHandwritingMenuElement
{
  cachedRefineHandwritingMenuElement = self->_cachedRefineHandwritingMenuElement;
  if (cachedRefineHandwritingMenuElement)
  {
    v3 = cachedRefineHandwritingMenuElement;
  }

  else
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100396500;
    v8[3] = &unk_10185B050;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    v5 = [UIDeferredMenuElement elementWithUncachedProvider:v8];
    v6 = self->_cachedRefineHandwritingMenuElement;
    self->_cachedRefineHandwritingMenuElement = v5;

    v3 = self->_cachedRefineHandwritingMenuElement;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)refineHandwriting:(id)a3
{
  v3 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [v3 refineHandwritingInSelectedStrokesWithCompletionHandler:&stru_10185B070];
}

- (BOOL)p_canRefineHandwritingUsingSynchronousChecks
{
  if (!+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 6) || !+[_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider isRefineAvailable])
  {
    return 0;
  }

  return [(CRLFreehandDrawingEditor *)self p_mightHaveHandwritingInAnySelectedShapes];
}

- (void)p_canRefineHandwritingWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(CRLFreehandDrawingEditor *)self p_canRefineHandwritingUsingSynchronousChecks])
  {
    v5 = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003968D0;
    v6[3] = &unk_10183D168;
    v7 = v4;
    [v5 canRefineHandwritingInSelectedStrokesWithCompletionHandler:v6];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)p_firstDrawingInfo
{
  v3 = objc_opt_class();
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];
  v6 = sub_100014370(v3, v5);

  return v6;
}

- (BOOL)p_hasTransformableDrawingsSelected
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 infosForCurrentSelectionPath];
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

- (void)didBecomeCurrentEditorForEditorController:(id)a3
{
  v4 = a3;
  v5 = [v4 selectionPath];
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:v5];

  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v6 didBecomeCurrentEditorForEditorController:v4];
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CRLBoardItemEditor *)self editorController];
  v11 = [v10 selectionPath];
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:v11];

  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingEditor;
  [(CRLGroupEditor *)&v12 selectionDidChangeFromSelection:v9 toSelection:v8 withFlags:a5];
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:v8];
  v13.receiver = self;
  v13.super_class = CRLFreehandDrawingEditor;
  v11 = [(CRLGroupEditor *)&v13 nextEditorForSelection:v10 withNewEditorStack:v9 selectionPath:v8];

  return v11;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingEditor;
  v8 = a3;
  LOBYTE(a5) = [(CRLBoardItemEditor *)&v15 shouldRemainOnEditorStackForSelection:v8 inSelectionPath:a4 withNewEditors:a5];
  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController:v15.receiver];
  v10 = [v9 freehandDrawingToolkit];
  v11 = [v10 isInDrawingMode];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, v8);

  LODWORD(v10) = [v13 hasSelectedItemsInNonGroupContainer] & v11 ^ 1;
  return a5 & v10;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup];
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = [(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode];
  if ("transform:" == a3)
  {
    v16 = [(CRLFreehandDrawingEditor *)self p_hasTransformableDrawingsSelected];
    v17 = [v8 freehandDrawingToolkit];
    v18 = [v17 wantsToSuppressKnobsOnTransformReps];

    v19 = (v16 & v18) == 0;
    goto LABEL_47;
  }

  if ("separate:" == a3 || "mergeDrawings:" == a3)
  {
    v11 = [(CRLFreehandDrawingEditor *)self p_infosToSeparate];
    v12 = [(CRLFreehandDrawingEditor *)self p_infosToMerge];
    v13 = [v11 count];
    v14 = [v12 count];
    if ("separate:" == a3)
    {
      if (v13 == v14)
      {
        v15 = -1;
      }

      else if ((([v11 count] != 0) & v7) != 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }
    }

    else if (v7)
    {
      v15 = -1;
      if (v13 == v14 && [v12 count])
      {
        v15 = 1;
      }
    }

    else
    {
      v24 = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
      if ([v24 count] > 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }
    }
  }

  else
  {
    v20 = v9;
    if ("p_beginFreehandDrawingMode:" != a3)
    {
      if ("connectWithConnectionLine:" == a3)
      {
        if ([(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup])
        {
          goto LABEL_36;
        }
      }

      else
      {
        if ("snapToShape:" == a3)
        {
          v22 = [(CRLFreehandDrawingEditor *)self p_canSnapToShape];
          goto LABEL_46;
        }

        if ("straighten:" == a3)
        {
          v22 = [(CRLFreehandDrawingEditor *)self p_canStraighten];
          goto LABEL_46;
        }

        if ("copyAsText:" == a3)
        {
          v22 = [(CRLFreehandDrawingEditor *)self p_canCopyAsText];
          goto LABEL_46;
        }

        if ("translateHandwrittenText:" == a3)
        {
          v22 = [(CRLFreehandDrawingEditor *)self p_canTranslateHandwrittenText];
          goto LABEL_46;
        }

        if ("refineHandwriting:" == a3)
        {
          v22 = [(CRLFreehandDrawingEditor *)self p_canRefineHandwritingUsingSynchronousChecks];
          goto LABEL_46;
        }

        v21 = v7 | v9;
        if ("group:" == a3 && ((v7 | v9) & 1) != 0)
        {
LABEL_36:
          v15 = -1;
          goto LABEL_50;
        }

        if ((("copy:" == a3) & v21) == 1)
        {
          v22 = [(CRLFreehandDrawingEditor *)self canCopySubselection];
LABEL_46:
          v19 = v22 == 0;
          goto LABEL_47;
        }

        if ((("cut:" == a3) & v21) == 1)
        {
          v26 = [v8 canvasEditor];
          v27 = [v26 canvasEditorHelper];
          v28 = [v27 shouldAllowPotentiallyKeyboardBasedActionForSender:v6];

          if (v28)
          {
            v19 = ![(CRLFreehandDrawingEditor *)self canCopySubselection];
LABEL_47:
            if (v19)
            {
              v15 = -1;
            }

            else
            {
              v15 = 1;
            }

            goto LABEL_50;
          }

          goto LABEL_36;
        }

        if ((("delete:" == a3) & v9) == 1)
        {
          v29 = [(CRLBoardItemEditor *)self editorController];
          v30 = [v29 currentEditors];
          v31 = [v30 lastObject];

          if (v31 == self)
          {
            goto LABEL_36;
          }
        }
      }

      v32.receiver = self;
      v32.super_class = CRLFreehandDrawingEditor;
      v15 = [(CRLGroupEditor *)&v32 canPerformEditorAction:a3 withSender:v6];
      goto LABEL_50;
    }

    v23 = [v8 freehandDrawingToolkit];
    if (([v23 canBeginFreehandDrawingMode] & (v20 ^ 1)) != 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }
  }

LABEL_50:

  return v15;
}

- (BOOL)p_currentlyInFreehandDrawingMode
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  v4 = [v3 isInDrawingMode];

  return v4;
}

- (BOOL)p_shouldPreventPasteForItemSource:(id)a3
{
  v4 = a3;
  if ([(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    v5 = [v4 hasOnlyNativeFreehandDrawingBoardItems] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)a3
{
  v4 = a3;
  if ([(CRLFreehandDrawingEditor *)self p_shouldPreventPasteForItemSource:v4])
  {
    v5 = -1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingEditor;
    v5 = [(CRLGroupEditor *)&v7 editorResponseForCanPasteContentsOfItemSource:v4];
  }

  return v5;
}

- (void)pasteWithPasteboard:(id)a3 atIndex:(unint64_t)a4 forceMatchStyle:(BOOL)a5 bakeFormulas:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v15 = [v14 canvasEditor];
  v16 = [v15 pasteboardController];

  v17 = [v16 ingestibleItemSourceForPasteboard:v12];
  v24 = sub_1003035DC(v17, 1, v18, v19, v20, v21, v22, v23, &OBJC_PROTOCOL___CRLIngestibleItemSource);

  if ([(CRLFreehandDrawingEditor *)self p_shouldPreventPasteForItemSource:v24])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136081C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360830();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013608C0();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v26 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor pasteWithPasteboard:atIndex:forceMatchStyle:bakeFormulas:completionHandler:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:566 isFatal:0 description:"Asked to paste when we said we did not want to!"];
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CRLFreehandDrawingEditor;
    [(CRLGroupEditor *)&v28 pasteWithPasteboard:v12 atIndex:a4 forceMatchStyle:v9 bakeFormulas:v8 completionHandler:v13];
  }
}

- (BOOL)canCopySubselection
{
  if ([(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup])
  {
    v3 = [(CRLBoardItemEditor *)self editorController];
    v4 = [v3 selectionPath];
    v5 = [v4 orderedSelections];
    v6 = [v5 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = isKindOfClass ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)copy:(id)a3
{
  v6 = +[CRLPasteboard generalPasteboard];
  [(CRLFreehandDrawingEditor *)self copySubselectionToPasteboard:v6];
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 canvasEditor];
  [v5 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (id)createFreehandDrawingsToCopyForSubselection
{
  if (![(CRLFreehandDrawingEditor *)self canCopySubselection])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013608E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013608FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136098C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor createFreehandDrawingsToCopyForSubselection]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:599 isFatal:0 description:"Should not ask for subselection freehand drawings if we cannot copy subselection!"];
  }

  v6 = [CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:self];

  return v6;
}

- (void)copySubselectionToPasteboard:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];
  v8 = [v6 pasteboardController];

  v7 = [(CRLFreehandDrawingEditor *)self createFreehandDrawingsToCopyForSubselection];
  [v8 copyUninsertedFreehandDrawingItems:v7 toPasteboard:v4];
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];

  [v6 openGroup];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Cut" value:0 table:@"UndoStrings"];
  [v6 setCurrentGroupActionString:v8];

  [(CRLFreehandDrawingEditor *)self copy:v4];
  v9 = [(CRLBoardItemEditor *)self editorController];
  v10 = [v9 editorForEditAction:"delete:" withSender:v4];

  if (!v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013609B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013609C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360A64();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor cut:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:621 isFatal:0 description:"invalid nil value for '%{public}s'", "deleteEditor"];
  }

  [v10 performSelector:"delete:" withObject:v4];
  [v6 closeGroup];
}

- (void)insertContentsOfFreehandDrawingsFromItemSource:(id)a3 atUnscaledPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  if (([v9 hasOnlyNativeFreehandDrawingBoardItems] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360A8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360AA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360B30();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor insertContentsOfFreehandDrawingsFromItemSource:atUnscaledPoint:completionHandler:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:628 isFatal:0 description:"Should only call this if we have freehand drawings to insert!"];
  }

  if ([v9 hasOnlyNativeFreehandDrawingBoardItems])
  {
    v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v15 = [v14 editingCoordinator];
    [v15 suspendCollaborationWithReason:@"CRLFreehandEditorInsertingAsyncDrawables"];

    v16 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v17 = [v16 editingCoordinator];
    v18 = [v17 boardItemFactory];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100397DD0;
    v20[3] = &unk_10185B1E0;
    v20[4] = self;
    v22 = x;
    v23 = y;
    v21 = v10;
    v19 = [v9 loadProvidersForNativeBoardItemsWithBoardItemFactory:v18 loadHandler:v20];
  }
}

- (void)p_insertFreehandDrawingsFromProviders:(id)a3 atUnscaledPoint:(CGPoint)a4 isCrossDocument:(BOOL)a5 completionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v62 = a6;
  v70 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v64 = self;
  v11 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v12 = [v11 editingCoordinator];
  v72 = [v12 boardItemFactory];

  v89 = 0;
  v90 = &v89;
  v91 = 0x4010000000;
  v92 = &unk_1016A8115;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v94 = size;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
  if (v14)
  {
    v15 = *v86;
    do
    {
      v16 = 0;
      do
      {
        if (*v86 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v85 + 1) + 8 * v16);
        v18 = objc_opt_class();
        v19 = [v17 newBoardItemWithFactory:v72 bakedSize:0];
        v20 = sub_100014370(v18, v19);

        if (v20)
        {
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_100398A1C;
          v84[3] = &unk_1018453B0;
          v84[4] = &v89;
          [v20 withTemporaryLayoutPerform:v84];
          [v70 addObject:v20];
        }

        else
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101360B6C();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.a) = 67110146;
            HIDWORD(buf.a) = v21;
            LOWORD(buf.b) = 2082;
            *(&buf.b + 2) = "[CRLFreehandDrawingEditor p_insertFreehandDrawingsFromProviders:atUnscaledPoint:isCrossDocument:completionHandler:]";
            WORD1(buf.c) = 2082;
            *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m";
            WORD2(buf.d) = 1024;
            *(&buf.d + 6) = 661;
            WORD1(buf.tx) = 2082;
            *(&buf.tx + 4) = "drawable";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101360B94();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v26 = +[CRLAssertionHandler packedBacktraceString];
            LODWORD(buf.a) = 67109378;
            HIDWORD(buf.a) = v21;
            LOWORD(buf.b) = 2114;
            *(&buf.b + 2) = v26;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor p_insertFreehandDrawingsFromProviders:atUnscaledPoint:isCrossDocument:completionHandler:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:661 isFatal:0 description:"invalid nil value for '%{public}s'", "drawable"];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
    }

    while (v14);
  }

  v65 = [(CRLFreehandDrawingEditor *)v64 p_firstDrawingInfo];
  v27 = [(CRLBoardItemEditor *)v64 interactiveCanvasController];
  v63 = [v27 layoutForInfo:v65];

  v28 = sub_100120414(v90[4], v90[5], v90[6], v90[7]);
  v29 = sub_10011F31C(x, y, v28);
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeTranslation(&buf, v29, v30);
  v31 = [v63 parent];
  v32 = v31;
  if (v31)
  {
    [v31 transformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformInvert(&t2, &t1);
  t1 = buf;
  CGAffineTransformConcat(&v83, &t1, &t2);
  buf = v83;

  v33 = +[NSMutableArray array];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v66 = v70;
  v68 = [v66 countByEnumeratingWithState:&v77 objects:v96 count:16];
  if (v68)
  {
    v67 = *v78;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v78 != v67)
        {
          objc_enumerationMutation(v66);
        }

        v34 = *(*(&v77 + 1) + 8 * i);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v35 = [v34 childInfos];
        v36 = [v35 countByEnumeratingWithState:&v73 objects:v95 count:16];
        if (v36)
        {
          v37 = *v74;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v74 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v73 + 1) + 8 * j);
              v40 = objc_opt_class();
              v41 = sub_100014370(v40, v39);
              if (v41)
              {
                v42 = [v34 ungroupedGeometryForChildItem:v41];
                [v41 setGeometry:v42];

                v43 = [v41 geometry];
                v83 = buf;
                v44 = [v43 geometryByAppendingTransform:&v83];
                [v41 setGeometry:v44];

                [v41 setParentInfo:0];
                [v33 addObject:v41];
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v73 objects:v95 count:16];
          }

          while (v36);
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v77 objects:v96 count:16];
    }

    while (v68);
  }

  v45 = [(CRLBoardItemEditor *)v64 interactiveCanvasController];
  v46 = [v45 canvasEditor];
  v47 = [v46 canvasEditorHelper];
  [v47 prepareGeometryForInsertingNativelySourcedShapes:v33 intoFreehandDrawing:v65];

  v48 = [_TtC8Freeform26CRLCommandInsertBoardItems alloc];
  v49 = [v65 childInfos];
  v50 = -[CRLCommandInsertBoardItems initWithParentContainer:boardItems:index:](v48, "initWithParentContainer:boardItems:index:", v65, v33, [v49 count]);

  v51 = [(CRLBoardItemEditor *)v64 interactiveCanvasController];
  v52 = [v51 selectionModelTranslator];
  v53 = [v52 selectionPathForNothingSelectedInsideGroup:v65];

  v54 = [(CRLBoardItemEditor *)v64 interactiveCanvasController];
  v55 = [v54 canvasEditor];
  v56 = [v55 canvasEditorHelper];
  v57 = [NSSet setWithArray:v33];
  v58 = [v56 selectionPathByReplacingInfosInSelectionPath:v53 withInfos:v57];

  v59 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v58 reverseSelectionPath:v53];
  v60 = [(CRLBoardItemEditor *)v64 interactiveCanvasController];
  v61 = [v60 commandController];
  [v61 enqueueCommand:v50 withSelectionBehavior:v59];

  if (v62)
  {
    v62[2](v62, v33);
  }

  _Block_object_dispose(&v89, 8);
}

- (id)p_suffixForExportedFileWithIdentifier:(unint64_t)a3 index:(unint64_t)a4 count:(unint64_t)a5
{
  if (a5 < 2)
  {
    [NSString stringWithFormat:@"%zd", a3, v7];
  }

  else
  {
    [NSString stringWithFormat:@"%zd-%zd", a3, a4];
  }
  v5 = ;

  return v5;
}

- (id)imageURLsOfDrawings
{
  v32 = +[NSMutableArray array];
  v43 = 0;
  v3 = [[CRLTemporaryDirectory alloc] initWithError:&v43];
  v4 = v43;
  if (v4)
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360BBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101360BE4(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101360C9C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor imageURLsOfDrawings]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:727 isFatal:0 description:"Failed to create a temporary directory for sharing drawings as images: %@", v5];
  }

  else
  {
    v30 = v3;
    v10 = [(CRLTemporaryDirectory *)v3 path];
    v36 = [(CRLFreehandDrawingEditor *)self p_randomExportIdentifier];
    v11 = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
    v35 = [v11 count];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
    v37 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v37)
    {
      v12 = 0;
      v5 = 0;
      v34 = *v40;
      v31 = self;
      do
      {
        v13 = 0;
        do
        {
          v14 = v5;
          if (*v40 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [(CRLFreehandDrawingEditor *)self p_pngDataForInfo:*(*(&v39 + 1) + 8 * v13)];
          v16 = [(CRLFreehandDrawingEditor *)self p_suffixForExportedFileWithIdentifier:v36 index:v12 count:v35];
          v17 = [NSString stringWithFormat:@"drawing%@.png", v16];
          v18 = [v10 stringByAppendingPathComponent:v17];
          v19 = [NSURL fileURLWithPath:v18];

          v38 = v14;
          LODWORD(v17) = [v15 writeToURL:v19 options:1 error:&v38];
          v5 = v38;

          if (v17)
          {
            [v32 addObject:v19];
          }

          else if (v5)
          {
            v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101360CC4();
            }

            v21 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v45 = v20;
              v46 = 2082;
              v47 = "[CRLFreehandDrawingEditor imageURLsOfDrawings]";
              v48 = 2082;
              v49 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m";
              v50 = 1024;
              v51 = 743;
              v52 = 2112;
              v53 = v5;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to write drawing image data to temporary directory while sharing: %@", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101360CEC();
            }

            v22 = v10;
            v23 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v26 = v23;
              v27 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v45 = v20;
              v46 = 2114;
              v47 = v27;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v24 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor imageURLsOfDrawings]"];
            v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
            [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:743 isFatal:0 description:"Failed to write drawing image data to temporary directory while sharing: %@", v5];

            v10 = v22;
            self = v31;
          }

          ++v12;

          v13 = v13 + 1;
        }

        while (v37 != v13);
        v37 = [obj countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v37);
    }

    else
    {
      v5 = 0;
    }

    v8 = v10;
    v3 = v30;
    [(CRLTemporaryDirectory *)v30 leakTemporaryDirectory];
  }

  v28 = [v32 copy];

  return v28;
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v110.receiver = self;
  v110.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v110 addContextualMenuElementsToArray:v7 atPoint:x, y];
  v95 = v7;
  v90 = [(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode];
  v91 = self;
  if (v90)
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v8 = [v7 copy];
    v9 = [v8 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v9)
    {
      v10 = v9;
      v93 = 0;
      v11 = *v107;
      v12 = @"CRLAlignMenuIdentifier";
      v13 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
      while (1)
      {
        v14 = 0;
        v96 = v10;
        do
        {
          if (*v107 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v106 + 1) + 8 * v14);
          v16 = objc_opt_class();
          v17 = sub_100014370(v16, v15);
          v18 = v17;
          if (v17)
          {
            v19 = [v17 identifier];
            if ([v19 isEqualToString:v12])
            {
              goto LABEL_9;
            }

            v20 = v12;
            v21 = v13;
            v22 = v8;
            v23 = [v18 identifier];
            v24 = [v23 isEqualToString:@"CRLDistributeMenuIdentifier"];

            if (v24)
            {
              v8 = v22;
              v13 = v21;
              v12 = v20;
              v7 = v95;
              v10 = v96;
              goto LABEL_12;
            }

            v25 = [v18 identifier];
            v26 = [v25 isEqualToString:@"CRLDeleteMenuIdentifier"];

            v8 = v22;
            if (v26)
            {
              v19 = v93;
              v93 = v15;
              v13 = v21;
              v12 = v20;
              v7 = v95;
              v10 = v96;
LABEL_9:

LABEL_12:
              [v7 removeObjectIdenticalTo:v15];
              goto LABEL_13;
            }

            v13 = v21;
            v12 = v20;
            v7 = v95;
            v10 = v96;
          }

LABEL_13:

          v14 = v14 + 1;
        }

        while (v10 != v14);
        v27 = [v8 countByEnumeratingWithState:&v106 objects:v117 count:16];
        v10 = v27;
        if (!v27)
        {

          v28 = [v7 count];
          goto LABEL_31;
        }
      }
    }

    v28 = [v7 count];
    v93 = 0;
  }

  else
  {
    v28 = [v7 count];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v29 = v7;
    v30 = [v29 countByEnumeratingWithState:&v102 objects:v116 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v103;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v103 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v102 + 1) + 8 * i);
          v35 = objc_opt_class();
          v36 = sub_100014370(v35, v34);
          v37 = v36;
          if (v36 && sel_isEqual([v36 action], "delete:"))
          {
            v28 = [v29 indexOfObjectIdenticalTo:v34] + 1;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v102 objects:v116 count:16];
      }

      while (v31);
    }

    v93 = 0;
    v7 = v95;
LABEL_31:
    self = v91;
  }

  if ([(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup])
  {
    v38 = +[NSBundle mainBundle];
    v39 = [v38 localizedStringForKey:@"Resize" value:0 table:0];
    v40 = [UIImage crl_internalSystemImageNamed:@"square.resize"];
    v94 = [UICommand commandWithTitle:v39 image:v40 action:"transform:" propertyList:0];

    v41 = +[NSBundle mainBundle];
    v42 = [v41 localizedStringForKey:@"Duplicate" value:0 table:0];
    v43 = [UIImage systemImageNamed:@"plus.rectangle.on.rectangle"];
    v92 = [UICommand commandWithTitle:v42 image:v43 action:"duplicate:" propertyList:0];

    v115[0] = v94;
    v115[1] = v92;
    v44 = [NSArray arrayWithObjects:v115 count:2];
    v89 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v44];

    [v95 insertObject:v89 atIndex:v28];
    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"Separate" value:0 table:0];
    v47 = [UIImage systemImageNamed:@"square.split.1x2"];
    v88 = [UICommand commandWithTitle:v46 image:v47 action:"separate:" propertyList:0];

    v48 = +[NSBundle mainBundle];
    v49 = [v48 localizedStringForKey:@"Merge" value:0 table:0];
    v50 = [UIImage systemImageNamed:@"square.on.square"];
    v87 = [UICommand commandWithTitle:v49 image:v50 action:"mergeDrawings:" propertyList:0];

    v114[0] = v88;
    v114[1] = v87;
    v51 = [NSArray arrayWithObjects:v114 count:2];
    v86 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v51];

    [v95 insertObject:v86 atIndex:v28 + 1];
    v52 = [(CRLFreehandDrawingEditor *)self snapToShapeActionName];
    v53 = +[CRLFreehandDrawingEditor snapToShapeActionSymbolName];
    v54 = [UIImage systemImageNamed:v53];
    v97 = [UICommand commandWithTitle:v52 image:v54 action:"snapToShape:" propertyList:0];

    v55 = +[NSBundle mainBundle];
    v56 = [v55 localizedStringForKey:@"Copy as Text" value:0 table:0];
    v57 = [UIImage systemImageNamed:@"textformat"];
    v85 = [UICommand commandWithTitle:v56 image:v57 action:"copyAsText:" propertyList:0];

    v58 = +[NSBundle mainBundle];
    v59 = [v58 localizedStringForKey:@"Straighten" value:0 table:0];
    v60 = [UIImage systemImageNamed:@"line.3.horizontal"];
    v84 = [UICommand commandWithTitle:v59 image:v60 action:"straighten:" propertyList:0];

    v61 = +[NSBundle mainBundle];
    v62 = [v61 localizedStringForKey:@"Translate" value:0 table:0];
    v63 = [UIImage systemImageNamed:@"translate"];
    v64 = [UICommand commandWithTitle:v62 image:v63 action:"translateHandwrittenText:" propertyList:0];

    v113[0] = v97;
    v113[1] = v85;
    v65 = [(CRLFreehandDrawingEditor *)v91 refineHandwritingMenuElement];
    v113[2] = v65;
    v113[3] = v84;
    v113[4] = v64;
    v66 = [NSArray arrayWithObjects:v113 count:5];
    v67 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v66];

    [v95 insertObject:v67 atIndex:v28 + 2];
    v68 = +[NSBundle mainBundle];
    v69 = [v68 localizedStringForKey:@"Add to Playground" value:0 table:0];
    v70 = [UIImage systemImageNamed:@"apple.image.playground"];
    v71 = [UICommand commandWithTitle:v69 image:v70 action:"presentGenerativePlaygroundForCurrentSelection:" propertyList:0];

    v112 = v71;
    v72 = [NSArray arrayWithObjects:&v112 count:1];
    v73 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v72];

    [v95 insertObject:v73 atIndex:v28 + 3];
    v28 += 4;

    v7 = v95;
  }

  if (v93)
  {
    v74 = v90;
  }

  else
  {
    v74 = 0;
  }

  if (v74 == 1)
  {
    [v7 insertObject:v93 atIndex:v28];
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v75 = [v7 copy];
  v76 = [v75 countByEnumeratingWithState:&v98 objects:v111 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v99;
    while (2)
    {
      for (j = 0; j != v77; j = j + 1)
      {
        if (*v99 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v98 + 1) + 8 * j);
        v81 = objc_opt_class();
        v82 = sub_100014370(v81, v80);
        v83 = v82;
        if (v82 && [v82 action] == "group:")
        {
          [v95 removeObjectIdenticalTo:v80];

          goto LABEL_50;
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v77)
      {
        continue;
      }

      break;
    }
  }

LABEL_50:
}

- (CGRect)targetRectForEditMenu
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v8 = [v7 layerHost];
  v9 = [v8 asiOSCVC];

  if ([(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    v10 = [v7 editorController];
    v11 = [v10 mostSpecificCurrentEditorOfClass:0];

    if (v11 == self)
    {
      [v9 lastTapPoint];
      [v7 convertUnscaledToBoundsPoint:?];
      sub_10011F334(v12, v13, 0.0);
      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v14, v15);
      x = v16;
      y = v17;
      width = v18;
      height = v19;
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v12 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  if (![(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Edit Drawing" value:0 table:0];
    v10 = [CRLImage crl_quickInspectorImageNamed:@"scribble"];
    v11 = [CRLQuickInspectorElement elementWithName:v9 image:v10 type:2 options:0x1000000 action:"p_beginFreehandDrawingMode:" parent:0 children:0];

    [v7 insertObject:v11 atIndex:{objc_msgSend(v7, "count")}];
  }
}

- (void)p_beginFreehandDrawingMode:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v4 freehandDrawingToolkit];
  [v3 beginDrawingModeIfNeededForTouchType:1];
}

- (void)p_separateInfos:(id)a3 preserveInitialSelection:(BOOL)a4 actionString:(id)a5
{
  v124 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v10 = [v9 canvasEditor];
  v11 = [v9 commandController];
  v12 = [(CRLBoardItemEditor *)self editingCoordinator];
  v13 = [v12 mainBoard];

  v126 = self;
  v14 = [(CRLBoardItemEditor *)self editingCoordinator];
  v15 = [v14 boardItemFactory];

  if ([v7 count])
  {
    v121 = v13;
    v125 = v10;
    [v11 openGroup];
    [v11 enableProgressiveEnqueuingInCurrentGroup];
    v122 = v11;
    v120 = v8;
    [v11 setCurrentGroupActionString:v8];
    v16 = [v9 topLevelZOrderedSiblingsOfInfos:v7];
    v123 = v7;
    v17 = [v16 crl_arrayWithObjectsInSet:v7];

    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_10039AD20;
    v141[3] = &unk_10185B2C8;
    v119 = v15;
    v141[4] = v15;
    v18 = [v17 crl_arrayByTransformingWithBlock:v141];
    v19 = +[NSMutableArray array];
    v129 = v19;
    v130 = v9;
    if ([v17 count])
    {
      v20 = 0;
      v127 = v18;
      do
      {
        v21 = v17;
        v22 = [v17 objectAtIndexedSubscript:v20];
        v23 = [v18 objectAtIndexedSubscript:v20];
        v24 = objc_opt_class();
        v25 = [v22 containingGroup];
        v26 = sub_100013F00(v24, v25);

        v27 = [v9 layoutForInfo:v26];
        if (([v19 containsObject:v26] & 1) == 0)
        {
          [v19 addObject:v26];
        }

        v28 = [v22 geometry];
        v29 = [v27 geometry];
        v30 = [v27 computeInfoGeometryFromPureLayoutGeometry:v29];
        v31 = [v28 geometryWithParentGeometry:v30];

        [v23 setGeometry:v31];
        v19 = v129;

        ++v20;
        v17 = v21;
        v9 = v130;
        v18 = v127;
      }

      while (v20 < [v21 count]);
    }

    v118 = v17;
    if ([v19 count] == 1)
    {
      v32 = [v19 firstObject];
      v33 = objc_opt_class();
      v34 = [v9 layoutForInfo:v32];
      v35 = sub_100014370(v33, v34);

      v36 = [CRLCanvasInfoGeometry alloc];
      v37 = [v35 pureGeometry];
      v38 = v37;
      if (v37)
      {
        [v37 fullTransform];
      }

      else
      {
        memset(v140, 0, 48);
      }

      v39 = [(CRLCanvasInfoGeometry *)v36 initWithFullTransform:v140 widthValid:1 heightValid:1];
    }

    else
    {
      v39 = [_TtC8Freeform12CRLGroupItem groupGeometryFromChildrenInfos:v18];
    }

    v40 = [v9 editingCoordinator];
    v41 = [v40 boardItemFactory];
    v117 = v39;
    v42 = [v41 makeFreehandDrawingItemWithGeometry:v39];

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v43 = v18;
    v44 = [v43 countByEnumeratingWithState:&v136 objects:v144 count:16];
    if (v44)
    {
      v45 = *v137;
      while (2)
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v137 != v45)
          {
            objc_enumerationMutation(v43);
          }

          if ([*(*(&v136 + 1) + 8 * i) aspectRatioLocked])
          {
            v44 = 1;
            goto LABEL_23;
          }
        }

        v44 = [v43 countByEnumeratingWithState:&v136 objects:v144 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    [v42 setAspectRatioLocked:v44];
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v47 = v43;
    v48 = [v47 countByEnumeratingWithState:&v132 objects:v143 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v133;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v133 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v132 + 1) + 8 * j);
          v53 = [v52 geometry];
          v54 = [v42 geometry];
          v55 = [v53 geometryRelativeToGeometry:v54];

          [v52 setGeometry:v55];
        }

        v49 = [v47 countByEnumeratingWithState:&v132 objects:v143 count:16];
      }

      while (v49);
    }

    v131 = 0;
    [v42 beforeInsertionAddNewItems:v47 board:v121 error:&v131];
    v56 = v131;
    v57 = v130;
    if (v56)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101360D14();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101360D3C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101360DD8();
      }

      v58 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v58);
      }

      v59 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor p_separateInfos:preserveInitialSelection:actionString:]"];
      v60 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v59 file:v60 lineNumber:1030 isFatal:0 description:"expected nil value for '%{public}s'", "insertionError"];
    }

    v61 = [NSSet setWithObject:v42];
    v62 = v61;
    v116 = v56;
    if (v124)
    {
      v63 = [(CRLBoardItemEditor *)v126 editorController];
      v64 = [v63 selectionPath];

      v65 = [v130 canvasEditor];
      v66 = [(CRLFreehandDrawingEditor *)v126 freehandDrawingInfos];
      v67 = [v65 selectionPathWithInfos:v66];
      v68 = [(CRLBoardItemEditor *)v126 editorController];
      [v68 setSelectionPath:v67];

      v69 = [CRLCanvasCommandSelectionBehavior alloc];
      v70 = [v130 canvasEditor];
      v71 = v62;
      v72 = [(CRLCanvasCommandSelectionBehavior *)v69 initWithCanvasEditor:v70 type:3 constructedInfos:v62];

      v73 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v64];
      [(CRLCommandSelectionBehavior *)v72 setPersistableReverseSelectionPath:v73];
    }

    else
    {
      v71 = v61;
      v72 = 0;
    }

    v74 = [v125 selectionPathWithInfos:0];
    v75 = [v130 editorController];
    v128 = v74;
    [v75 setSelectionPath:v74];

    v76 = [(CRLFreehandDrawingEditor *)v126 freehandDrawingInfos];
    v77 = [v76 anyObject];

    v78 = [v77 parentInfo];
    v79 = objc_opt_class();
    v85 = sub_100303920(v78, v79, 1, v80, v81, v82, v83, v84, &OBJC_PROTOCOL___CRLContainerInfo);

    v86 = [v125 canvasEditorHelper];
    v142 = v42;
    v87 = [NSArray arrayWithObjects:&v142 count:1];
    v114 = v85;
    v115 = v77;
    v88 = [v86 commandToInsertBoardItems:v87 intoContainer:v85 belowBoardItem:v77 withOffset:0];

    v113 = v88;
    if (v88)
    {
      v89 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      v90 = v122;
      [v122 enqueueCommand:v88];
      v91 = v123;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101360E00();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101360E28();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101360EC4();
      }

      v92 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v92);
      }

      v93 = [NSString stringWithUTF8String:"[CRLFreehandDrawingEditor p_separateInfos:preserveInitialSelection:actionString:]"];
      v89 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      v94 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v93 file:v94 lineNumber:1071 isFatal:0 description:"invalid nil value for '%{public}s'", "insertCommand"];

      v90 = v122;
      v91 = v123;
      v57 = v130;
    }

    [v90 openGroup];
    v95 = [v125 selectionPathWithInfos:v91];
    v96 = [v57 editorController];
    [v96 setSelectionPath:v95];

    v97 = [v125 canvasEditorHelper];
    [v97 delete:v126];

    [v90 closeGroup];
    v98 = [v57 editorController];
    [v98 setSelectionPath:v128];

    if (!v124)
    {
      v99 = [CRLCanvasCommandSelectionBehavior alloc];
      v100 = [v57 canvasEditor];
      v101 = [(CRLCanvasCommandSelectionBehavior *)v99 initWithCanvasEditor:v100 type:3 constructedInfos:v71];

      v72 = v101;
    }

    v10 = v125;
    v102 = [v125 selectionPathWithInfos:v71];
    v103 = [v57 editorController];
    [v103 setSelectionPath:v102];

    v104 = [v125 arrangeInspectorDelegate];
    [v104 moveToFrontForArrangeInspector];

    if (!v72)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101360EEC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101360F14();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101360FB0();
      }

      v105 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v105);
      }

      v106 = [v89[101] stringWithUTF8String:"-[CRLFreehandDrawingEditor p_separateInfos:preserveInitialSelection:actionString:]"];
      v107 = [v89[101] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v106 file:v107 lineNumber:1094 isFatal:0 description:"invalid nil value for '%{public}s'", "selectionBehavior"];

      v10 = v125;
    }

    v11 = v122;
    [v122 closeGroupWithSelectionBehavior:v72];
    v108 = [(CRLBoardItemEditor *)v126 interactiveCanvasController];
    v109 = [v108 freehandDrawingToolkit];
    [v109 endDrawingModeIfNeeded];

    v110 = [v10 selectionPathWithInfos:v71];
    v111 = [(CRLBoardItemEditor *)v126 interactiveCanvasController];
    v112 = [v111 editorController];
    [v112 setSelectionPath:v110];

    v7 = v123;
    v8 = v120;
    v13 = v121;
    v9 = v130;
    v15 = v119;
  }
}

- (void)p_fixUpCurrentSelectionPathIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  if (([v5 isInDynamicOperation] & 1) == 0 && !-[CRLFreehandDrawingEditor p_currentlyInFreehandDrawingMode](self, "p_currentlyInFreehandDrawingMode"))
  {
    v6 = [v4 mostSpecificSelectionOfClass:objc_opt_class()];
    if ([v6 containsKindOfClass:objc_opt_class()])
    {
      [v5 editorController];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10039AFFC;
      v9 = v8[3] = &unk_10183AE00;
      v10 = v5;
      v11 = v6;
      v7 = v9;
      [v7 performBlockAfterSettingSelection:v8];
    }
  }
}

- (BOOL)p_shouldShowResizeMenuItemForSelectedItems:(id)a3
{
  v3 = [a3 crl_arrayByTransformingWithBlock:&stru_10185B3C8];
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isMemberOfClass:{objc_opt_class(), v18}])
        {
          v11 = objc_opt_class();
          v12 = sub_100014370(v11, v10);
          v13 = [v12 allNestedChildrenItemsExcludingGroups];
          [v4 addObjectsFromArray:v13];
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [v4 crl_arrayByTransformingWithBlock:&stru_10185B408];
  if ([v14 count])
  {
    v15 = [v14 count];
    v16 = v15 == [v4 count];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)drawingRepresetativeItemsFromBoardItems:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        [v4 addObject:{v10, v13}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (NSSet)boardItemsForDragAndDropTracing
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 editorController];
  v4 = [v2 selectionModelTranslator];
  v5 = [v3 selectionPath];
  v6 = [v4 infosForSelectionPath:v5];

  v7 = [v6 copy];

  return v7;
}

@end