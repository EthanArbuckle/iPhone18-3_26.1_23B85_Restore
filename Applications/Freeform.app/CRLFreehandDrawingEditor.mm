@interface CRLFreehandDrawingEditor
- (BOOL)canCopySubselection;
- (BOOL)crlaxShouldOfferSnapToShapeFromShapeItem:(id)item;
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
- (BOOL)p_shouldPreventPasteForItemSource:(id)source;
- (BOOL)p_shouldShowResizeMenuItemForSelectedItems:(id)items;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (CGRect)targetRectForEditMenu;
- (CGSize)p_sizeForExportingInfo:(id)info;
- (NSSet)boardItemsForDragAndDropTracing;
- (NSSet)freehandDrawingInfos;
- (UIMenuElement)refineHandwritingMenuElement;
- (id)createFreehandDrawingsToCopyForSubselection;
- (id)drawingRepresetativeItemsFromBoardItems:(id)items;
- (id)imageURLsOfDrawings;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)p_firstDrawingInfo;
- (id)p_infosToMerge;
- (id)p_infosToSeparate;
- (id)p_intelligenceProvider;
- (id)p_pngDataForInfo:(id)info;
- (id)p_shapeItemsSelectedInFreehandDrawings;
- (id)p_suffixForExportedFileWithIdentifier:(unint64_t)identifier index:(unint64_t)index count:(unint64_t)count;
- (id)snapToShapeActionName;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)source;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)copy:(id)copy;
- (void)copyAsText:(id)text;
- (void)copySubselectionToPasteboard:(id)pasteboard;
- (void)cut:(id)cut;
- (void)didBecomeCurrentEditorForEditorController:(id)controller;
- (void)insertContentsOfFreehandDrawingsFromItemSource:(id)source atUnscaledPoint:(CGPoint)point completionHandler:(id)handler;
- (void)mergeDrawings:(id)drawings;
- (void)p_beginFreehandDrawingMode:(id)mode;
- (void)p_canRefineHandwritingWithCompletionHandler:(id)handler;
- (void)p_fixUpCurrentSelectionPathIfNeeded:(id)needed;
- (void)p_insertFreehandDrawingsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point isCrossDocument:(BOOL)document completionHandler:(id)handler;
- (void)p_separateInfos:(id)infos preserveInitialSelection:(BOOL)selection actionString:(id)string;
- (void)pasteWithPasteboard:(id)pasteboard atIndex:(unint64_t)index forceMatchStyle:(BOOL)style bakeFormulas:(BOOL)formulas completionHandler:(id)handler;
- (void)refineHandwriting:(id)handwriting;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)separate:(id)separate;
- (void)snapToShapeWithCompletionHandler:(id)handler;
- (void)straighten:(id)straighten;
- (void)transform:(id)transform;
- (void)translateHandwrittenText:(id)text;
@end

@implementation CRLFreehandDrawingEditor

- (BOOL)p_currentlyEditingInGroup
{
  editorController = [(CRLBoardItemEditor *)self editorController];
  v4 = [editorController selectionForEditor:self];

  objc_opt_class();
  LOBYTE(editorController) = objc_opt_isKindOfClass();

  return editorController & 1;
}

- (NSSet)freehandDrawingInfos
{
  v3 = objc_opt_class();

  return [(CRLBoardItemEditor *)self boardItemsOfClass:v3];
}

- (id)p_infosToSeparate
{
  p_shapeItemsSelectedInFreehandDrawings = [(CRLFreehandDrawingEditor *)self p_shapeItemsSelectedInFreehandDrawings];
  freehandDrawingInfos = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  if ([freehandDrawingInfos count] == 1 && (v5 = objc_msgSend(p_shapeItemsSelectedInFreehandDrawings, "count"), objc_msgSend(freehandDrawingInfos, "anyObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "childInfos"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v5 == v8))
  {
    v9 = +[NSSet set];
  }

  else
  {
    v9 = p_shapeItemsSelectedInFreehandDrawings;
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
  freehandDrawingInfos = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  v5 = [freehandDrawingInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(freehandDrawingInfos);
        }

        childInfos = [*(*(&v11 + 1) + 8 * i) childInfos];
        [v3 addObjectsFromArray:childInfos];
      }

      v6 = [freehandDrawingInfos countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)p_shapeItemsSelectedInFreehandDrawings
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = +[NSMutableSet set];
  freehandDrawingInfos = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = interactiveCanvasController;
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
  v7 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(infosForCurrentSelectionPath);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = sub_100014370(v12, v11);
        v14 = v13;
        if (v13)
        {
          containingGroup = [v13 containingGroup];
          v16 = [freehandDrawingInfos containsObject:containingGroup];

          if (v16)
          {
            [v4 addObject:v14];
          }
        }
      }

      v8 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v4;
}

- (BOOL)p_areAllSelectedInfosFreehandDrawings
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
  v4 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(infosForCurrentSelectionPath);
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

      v5 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)p_pngDataForInfo:(id)info
{
  infoCopy = info;
  v5 = [CRLCanvasImager alloc];
  editingCoordinator = [(CRLBoardItemEditor *)self editingCoordinator];
  mainBoard = [editingCoordinator mainBoard];
  v8 = [(CRLCanvasImager *)v5 initWithBoard:mainBoard];

  v16 = infoCopy;
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  [(CRLCanvasImager *)v8 setInfos:v9];

  [(CRLFreehandDrawingEditor *)self p_sizeForExportingInfo:infoCopy];
  v11 = v10;
  v13 = v12;

  [(CRLCanvasImager *)v8 setScaledImageSize:v11, v13];
  pngData = [(CRLCanvasImager *)v8 pngData];

  return pngData;
}

- (CGSize)p_sizeForExportingInfo:(id)info
{
  infoCopy = info;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4010000000;
  v31 = &unk_1016A8115;
  v32 = 0u;
  v33 = 0u;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [interactiveCanvasController layoutForInfoNearestVisibleRect:infoCopy];

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
    [infoCopy withTemporaryLayoutPerform:v27];
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

- (void)transform:(id)transform
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  [freehandDrawingToolkit beginDrawingTransformModeIfNeeded];
}

- (void)separate:(id)separate
{
  p_infosToSeparate = [(CRLFreehandDrawingEditor *)self p_infosToSeparate];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Separate" value:0 table:@"UndoStrings"];
  [(CRLFreehandDrawingEditor *)self p_separateInfos:p_infosToSeparate preserveInitialSelection:0 actionString:v5];
}

- (void)mergeDrawings:(id)drawings
{
  p_infosToMerge = [(CRLFreehandDrawingEditor *)self p_infosToMerge];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Merge" value:0 table:@"UndoStrings"];
  [(CRLFreehandDrawingEditor *)self p_separateInfos:p_infosToMerge preserveInitialSelection:1 actionString:v5];
}

- (id)p_intelligenceProvider
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  drawingIntelligenceProvider = [interactiveCanvasController drawingIntelligenceProvider];
  if (!drawingIntelligenceProvider)
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

  return drawingIntelligenceProvider;
}

- (void)snapToShapeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [p_intelligenceProvider snapToShapeSelectedStrokesWithCompletionHandler:handlerCopy];
}

- (BOOL)p_canSnapToShape
{
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  canSnapToShapeSelectedStrokes = [p_intelligenceProvider canSnapToShapeSelectedStrokes];

  return canSnapToShapeSelectedStrokes;
}

- (id)snapToShapeActionName
{
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  snapToShapeSelectedStrokesCount = [p_intelligenceProvider snapToShapeSelectedStrokesCount];

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (snapToShapeSelectedStrokesCount == 2)
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

- (BOOL)crlaxShouldOfferSnapToShapeFromShapeItem:(id)item
{
  itemCopy = item;
  p_shapeItemsSelectedInFreehandDrawings = [(CRLFreehandDrawingEditor *)self p_shapeItemsSelectedInFreehandDrawings];
  v6 = [p_shapeItemsSelectedInFreehandDrawings containsObject:itemCopy];

  if (v6 && [(CRLFreehandDrawingEditor *)self canPerformEditorAction:"snapToShape:" withSender:0])
  {
    canSnapToShape = [itemCopy canSnapToShape];
  }

  else
  {
    canSnapToShape = 0;
  }

  return canSnapToShape;
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

- (void)straighten:(id)straighten
{
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [p_intelligenceProvider straightenHandwritingInSelectedStrokesWithCompletionHandler:&stru_10185AFE0];
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

- (void)copyAsText:(id)text
{
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [p_intelligenceProvider copyAsTextSelectedStrokesWithCompletionHandler:&stru_10185B000];
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

- (void)translateHandwrittenText:(id)text
{
  textCopy = text;
  editorController = [(CRLBoardItemEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v7 = [selectionPath copy];

  objc_initWeak(&location, self);
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003961B4;
  v9[3] = &unk_10185B028;
  objc_copyWeak(&v10, &location);
  v9[4] = v7;
  [p_intelligenceProvider recognizedTextInSelectedStrokesWithCompletionHandler:v9];

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

- (void)refineHandwriting:(id)handwriting
{
  p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
  [p_intelligenceProvider refineHandwritingInSelectedStrokesWithCompletionHandler:&stru_10185B070];
}

- (BOOL)p_canRefineHandwritingUsingSynchronousChecks
{
  if (!+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 6) || !+[_TtC8Freeform38CRLFreehandDrawingIntelligenceProvider isRefineAvailable])
  {
    return 0;
  }

  return [(CRLFreehandDrawingEditor *)self p_mightHaveHandwritingInAnySelectedShapes];
}

- (void)p_canRefineHandwritingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(CRLFreehandDrawingEditor *)self p_canRefineHandwritingUsingSynchronousChecks])
  {
    p_intelligenceProvider = [(CRLFreehandDrawingEditor *)self p_intelligenceProvider];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003968D0;
    v6[3] = &unk_10183D168;
    v7 = handlerCopy;
    [p_intelligenceProvider canRefineHandwritingInSelectedStrokesWithCompletionHandler:v6];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)p_firstDrawingInfo
{
  v3 = objc_opt_class();
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  anyObject = [boardItems anyObject];
  v6 = sub_100014370(v3, anyObject);

  return v6;
}

- (BOOL)p_hasTransformableDrawingsSelected
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
  v4 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(infosForCurrentSelectionPath);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)didBecomeCurrentEditorForEditorController:(id)controller
{
  controllerCopy = controller;
  selectionPath = [controllerCopy selectionPath];
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:selectionPath];

  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v6 didBecomeCurrentEditorForEditorController:controllerCopy];
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  toSelectionCopy = toSelection;
  selectionCopy = selection;
  editorController = [(CRLBoardItemEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:selectionPath];

  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingEditor;
  [(CRLGroupEditor *)&v12 selectionDidChangeFromSelection:selectionCopy toSelection:toSelectionCopy withFlags:flags];
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  pathCopy = path;
  stackCopy = stack;
  selectionCopy = selection;
  [(CRLFreehandDrawingEditor *)self p_fixUpCurrentSelectionPathIfNeeded:pathCopy];
  v13.receiver = self;
  v13.super_class = CRLFreehandDrawingEditor;
  v11 = [(CRLGroupEditor *)&v13 nextEditorForSelection:selectionCopy withNewEditorStack:stackCopy selectionPath:pathCopy];

  return v11;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  v15.receiver = self;
  v15.super_class = CRLFreehandDrawingEditor;
  selectionCopy = selection;
  LOBYTE(editors) = [(CRLBoardItemEditor *)&v15 shouldRemainOnEditorStackForSelection:selectionCopy inSelectionPath:path withNewEditors:editors];
  v9 = [(CRLBoardItemEditor *)self interactiveCanvasController:v15.receiver];
  freehandDrawingToolkit = [v9 freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  v12 = objc_opt_class();
  v13 = sub_100014370(v12, selectionCopy);

  LODWORD(freehandDrawingToolkit) = [v13 hasSelectedItemsInNonGroupContainer] & isInDrawingMode ^ 1;
  return editors & freehandDrawingToolkit;
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  p_currentlyEditingInGroup = [(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  p_currentlyInFreehandDrawingMode = [(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode];
  if ("transform:" == action)
  {
    p_hasTransformableDrawingsSelected = [(CRLFreehandDrawingEditor *)self p_hasTransformableDrawingsSelected];
    freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
    wantsToSuppressKnobsOnTransformReps = [freehandDrawingToolkit wantsToSuppressKnobsOnTransformReps];

    v19 = (p_hasTransformableDrawingsSelected & wantsToSuppressKnobsOnTransformReps) == 0;
    goto LABEL_47;
  }

  if ("separate:" == action || "mergeDrawings:" == action)
  {
    p_infosToSeparate = [(CRLFreehandDrawingEditor *)self p_infosToSeparate];
    p_infosToMerge = [(CRLFreehandDrawingEditor *)self p_infosToMerge];
    v13 = [p_infosToSeparate count];
    v14 = [p_infosToMerge count];
    if ("separate:" == action)
    {
      if (v13 == v14)
      {
        v15 = -1;
      }

      else if ((([p_infosToSeparate count] != 0) & p_currentlyEditingInGroup) != 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = -1;
      }
    }

    else if (p_currentlyEditingInGroup)
    {
      v15 = -1;
      if (v13 == v14 && [p_infosToMerge count])
      {
        v15 = 1;
      }
    }

    else
    {
      freehandDrawingInfos = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
      if ([freehandDrawingInfos count] > 1)
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
    v20 = p_currentlyInFreehandDrawingMode;
    if ("p_beginFreehandDrawingMode:" != action)
    {
      if ("connectWithConnectionLine:" == action)
      {
        if ([(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup])
        {
          goto LABEL_36;
        }
      }

      else
      {
        if ("snapToShape:" == action)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self p_canSnapToShape];
          goto LABEL_46;
        }

        if ("straighten:" == action)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self p_canStraighten];
          goto LABEL_46;
        }

        if ("copyAsText:" == action)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self p_canCopyAsText];
          goto LABEL_46;
        }

        if ("translateHandwrittenText:" == action)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self p_canTranslateHandwrittenText];
          goto LABEL_46;
        }

        if ("refineHandwriting:" == action)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self p_canRefineHandwritingUsingSynchronousChecks];
          goto LABEL_46;
        }

        v21 = p_currentlyEditingInGroup | p_currentlyInFreehandDrawingMode;
        if ("group:" == action && ((p_currentlyEditingInGroup | p_currentlyInFreehandDrawingMode) & 1) != 0)
        {
LABEL_36:
          v15 = -1;
          goto LABEL_50;
        }

        if ((("copy:" == action) & v21) == 1)
        {
          p_canSnapToShape = [(CRLFreehandDrawingEditor *)self canCopySubselection];
LABEL_46:
          v19 = p_canSnapToShape == 0;
          goto LABEL_47;
        }

        if ((("cut:" == action) & v21) == 1)
        {
          canvasEditor = [interactiveCanvasController canvasEditor];
          canvasEditorHelper = [canvasEditor canvasEditorHelper];
          v28 = [canvasEditorHelper shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy];

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

        if ((("delete:" == action) & p_currentlyInFreehandDrawingMode) == 1)
        {
          editorController = [(CRLBoardItemEditor *)self editorController];
          currentEditors = [editorController currentEditors];
          lastObject = [currentEditors lastObject];

          if (lastObject == self)
          {
            goto LABEL_36;
          }
        }
      }

      v32.receiver = self;
      v32.super_class = CRLFreehandDrawingEditor;
      v15 = [(CRLGroupEditor *)&v32 canPerformEditorAction:action withSender:senderCopy];
      goto LABEL_50;
    }

    freehandDrawingToolkit2 = [interactiveCanvasController freehandDrawingToolkit];
    if (([freehandDrawingToolkit2 canBeginFreehandDrawingMode] & (v20 ^ 1)) != 0)
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
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  return isInDrawingMode;
}

- (BOOL)p_shouldPreventPasteForItemSource:(id)source
{
  sourceCopy = source;
  if ([(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    v5 = [sourceCopy hasOnlyNativeFreehandDrawingBoardItems] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)source
{
  sourceCopy = source;
  if ([(CRLFreehandDrawingEditor *)self p_shouldPreventPasteForItemSource:sourceCopy])
  {
    v5 = -1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CRLFreehandDrawingEditor;
    v5 = [(CRLGroupEditor *)&v7 editorResponseForCanPasteContentsOfItemSource:sourceCopy];
  }

  return v5;
}

- (void)pasteWithPasteboard:(id)pasteboard atIndex:(unint64_t)index forceMatchStyle:(BOOL)style bakeFormulas:(BOOL)formulas completionHandler:(id)handler
{
  formulasCopy = formulas;
  styleCopy = style;
  pasteboardCopy = pasteboard;
  handlerCopy = handler;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];

  v17 = [pasteboardController ingestibleItemSourceForPasteboard:pasteboardCopy];
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
    [(CRLGroupEditor *)&v28 pasteWithPasteboard:pasteboardCopy atIndex:index forceMatchStyle:styleCopy bakeFormulas:formulasCopy completionHandler:handlerCopy];
  }
}

- (BOOL)canCopySubselection
{
  if ([(CRLFreehandDrawingEditor *)self p_currentlyEditingInGroup])
  {
    editorController = [(CRLBoardItemEditor *)self editorController];
    selectionPath = [editorController selectionPath];
    orderedSelections = [selectionPath orderedSelections];
    lastObject = [orderedSelections lastObject];
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

- (void)copy:(id)copy
{
  v6 = +[CRLPasteboard generalPasteboard];
  [(CRLFreehandDrawingEditor *)self copySubselectionToPasteboard:v6];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  [canvasEditor hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
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

- (void)copySubselectionToPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];

  createFreehandDrawingsToCopyForSubselection = [(CRLFreehandDrawingEditor *)self createFreehandDrawingsToCopyForSubselection];
  [pasteboardController copyUninsertedFreehandDrawingItems:createFreehandDrawingsToCopyForSubselection toPasteboard:pasteboardCopy];
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  [commandController openGroup];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Cut" value:0 table:@"UndoStrings"];
  [commandController setCurrentGroupActionString:v8];

  [(CRLFreehandDrawingEditor *)self copy:cutCopy];
  editorController = [(CRLBoardItemEditor *)self editorController];
  v10 = [editorController editorForEditAction:"delete:" withSender:cutCopy];

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

  [v10 performSelector:"delete:" withObject:cutCopy];
  [commandController closeGroup];
}

- (void)insertContentsOfFreehandDrawingsFromItemSource:(id)source atUnscaledPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  sourceCopy = source;
  handlerCopy = handler;
  if (([sourceCopy hasOnlyNativeFreehandDrawingBoardItems] & 1) == 0)
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

  if ([sourceCopy hasOnlyNativeFreehandDrawingBoardItems])
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    [editingCoordinator suspendCollaborationWithReason:@"CRLFreehandEditorInsertingAsyncDrawables"];

    interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    editingCoordinator2 = [interactiveCanvasController2 editingCoordinator];
    boardItemFactory = [editingCoordinator2 boardItemFactory];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100397DD0;
    v20[3] = &unk_10185B1E0;
    v20[4] = self;
    v22 = x;
    v23 = y;
    v21 = handlerCopy;
    v19 = [sourceCopy loadProvidersForNativeBoardItemsWithBoardItemFactory:boardItemFactory loadHandler:v20];
  }
}

- (void)p_insertFreehandDrawingsFromProviders:(id)providers atUnscaledPoint:(CGPoint)point isCrossDocument:(BOOL)document completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  providersCopy = providers;
  handlerCopy = handler;
  v70 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(providersCopy, "count")}];
  selfCopy = self;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

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
  obj = providersCopy;
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
        v19 = [v17 newBoardItemWithFactory:boardItemFactory bakedSize:0];
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

  p_firstDrawingInfo = [(CRLFreehandDrawingEditor *)selfCopy p_firstDrawingInfo];
  interactiveCanvasController2 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
  v63 = [interactiveCanvasController2 layoutForInfo:p_firstDrawingInfo];

  v28 = sub_100120414(v90[4], v90[5], v90[6], v90[7]);
  v29 = sub_10011F31C(x, y, v28);
  memset(&buf, 0, sizeof(buf));
  CGAffineTransformMakeTranslation(&buf, v29, v30);
  parent = [v63 parent];
  v32 = parent;
  if (parent)
  {
    [parent transformInRoot];
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
        childInfos = [v34 childInfos];
        v36 = [childInfos countByEnumeratingWithState:&v73 objects:v95 count:16];
        if (v36)
        {
          v37 = *v74;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v74 != v37)
              {
                objc_enumerationMutation(childInfos);
              }

              v39 = *(*(&v73 + 1) + 8 * j);
              v40 = objc_opt_class();
              v41 = sub_100014370(v40, v39);
              if (v41)
              {
                v42 = [v34 ungroupedGeometryForChildItem:v41];
                [v41 setGeometry:v42];

                geometry = [v41 geometry];
                v83 = buf;
                v44 = [geometry geometryByAppendingTransform:&v83];
                [v41 setGeometry:v44];

                [v41 setParentInfo:0];
                [v33 addObject:v41];
              }
            }

            v36 = [childInfos countByEnumeratingWithState:&v73 objects:v95 count:16];
          }

          while (v36);
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v77 objects:v96 count:16];
    }

    while (v68);
  }

  interactiveCanvasController3 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
  canvasEditor = [interactiveCanvasController3 canvasEditor];
  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  [canvasEditorHelper prepareGeometryForInsertingNativelySourcedShapes:v33 intoFreehandDrawing:p_firstDrawingInfo];

  v48 = [_TtC8Freeform26CRLCommandInsertBoardItems alloc];
  childInfos2 = [p_firstDrawingInfo childInfos];
  v50 = -[CRLCommandInsertBoardItems initWithParentContainer:boardItems:index:](v48, "initWithParentContainer:boardItems:index:", p_firstDrawingInfo, v33, [childInfos2 count]);

  interactiveCanvasController4 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController4 selectionModelTranslator];
  v53 = [selectionModelTranslator selectionPathForNothingSelectedInsideGroup:p_firstDrawingInfo];

  interactiveCanvasController5 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
  canvasEditor2 = [interactiveCanvasController5 canvasEditor];
  canvasEditorHelper2 = [canvasEditor2 canvasEditorHelper];
  v57 = [NSSet setWithArray:v33];
  v58 = [canvasEditorHelper2 selectionPathByReplacingInfosInSelectionPath:v53 withInfos:v57];

  v59 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v58 reverseSelectionPath:v53];
  interactiveCanvasController6 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
  commandController = [interactiveCanvasController6 commandController];
  [commandController enqueueCommand:v50 withSelectionBehavior:v59];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v33);
  }

  _Block_object_dispose(&v89, 8);
}

- (id)p_suffixForExportedFileWithIdentifier:(unint64_t)identifier index:(unint64_t)index count:(unint64_t)count
{
  if (count < 2)
  {
    [NSString stringWithFormat:@"%zd", identifier, v7];
  }

  else
  {
    [NSString stringWithFormat:@"%zd-%zd", identifier, index];
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
    path = [(CRLTemporaryDirectory *)v3 path];
    p_randomExportIdentifier = [(CRLFreehandDrawingEditor *)self p_randomExportIdentifier];
    freehandDrawingInfos = [(CRLFreehandDrawingEditor *)self freehandDrawingInfos];
    v35 = [freehandDrawingInfos count];

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
      selfCopy = self;
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
          v16 = [(CRLFreehandDrawingEditor *)self p_suffixForExportedFileWithIdentifier:p_randomExportIdentifier index:v12 count:v35];
          v17 = [NSString stringWithFormat:@"drawing%@.png", v16];
          v18 = [path stringByAppendingPathComponent:v17];
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

            v22 = path;
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

            path = v22;
            self = selfCopy;
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

    v8 = path;
    v3 = v30;
    [(CRLTemporaryDirectory *)v30 leakTemporaryDirectory];
  }

  v28 = [v32 copy];

  return v28;
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v110.receiver = self;
  v110.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v110 addContextualMenuElementsToArray:arrayCopy atPoint:x, y];
  v95 = arrayCopy;
  p_currentlyInFreehandDrawingMode = [(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode];
  selfCopy = self;
  if (p_currentlyInFreehandDrawingMode)
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v8 = [arrayCopy copy];
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
            identifier = [v17 identifier];
            if ([identifier isEqualToString:v12])
            {
              goto LABEL_9;
            }

            v20 = v12;
            v21 = v13;
            v22 = v8;
            identifier2 = [v18 identifier];
            v24 = [identifier2 isEqualToString:@"CRLDistributeMenuIdentifier"];

            if (v24)
            {
              v8 = v22;
              v13 = v21;
              v12 = v20;
              arrayCopy = v95;
              v10 = v96;
              goto LABEL_12;
            }

            identifier3 = [v18 identifier];
            v26 = [identifier3 isEqualToString:@"CRLDeleteMenuIdentifier"];

            v8 = v22;
            if (v26)
            {
              identifier = v93;
              v93 = v15;
              v13 = v21;
              v12 = v20;
              arrayCopy = v95;
              v10 = v96;
LABEL_9:

LABEL_12:
              [arrayCopy removeObjectIdenticalTo:v15];
              goto LABEL_13;
            }

            v13 = v21;
            v12 = v20;
            arrayCopy = v95;
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

          v28 = [arrayCopy count];
          goto LABEL_31;
        }
      }
    }

    v28 = [arrayCopy count];
    v93 = 0;
  }

  else
  {
    v28 = [arrayCopy count];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v29 = arrayCopy;
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
    arrayCopy = v95;
LABEL_31:
    self = selfCopy;
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
    snapToShapeActionName = [(CRLFreehandDrawingEditor *)self snapToShapeActionName];
    v53 = +[CRLFreehandDrawingEditor snapToShapeActionSymbolName];
    v54 = [UIImage systemImageNamed:v53];
    v97 = [UICommand commandWithTitle:snapToShapeActionName image:v54 action:"snapToShape:" propertyList:0];

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
    refineHandwritingMenuElement = [(CRLFreehandDrawingEditor *)selfCopy refineHandwritingMenuElement];
    v113[2] = refineHandwritingMenuElement;
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

    arrayCopy = v95;
  }

  if (v93)
  {
    v74 = p_currentlyInFreehandDrawingMode;
  }

  else
  {
    v74 = 0;
  }

  if (v74 == 1)
  {
    [arrayCopy insertObject:v93 atIndex:v28];
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v75 = [arrayCopy copy];
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
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  if ([(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    editorController = [interactiveCanvasController editorController];
    v11 = [editorController mostSpecificCurrentEditorOfClass:0];

    if (v11 == self)
    {
      [asiOSCVC lastTapPoint];
      [interactiveCanvasController convertUnscaledToBoundsPoint:?];
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

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingEditor;
  [(CRLBoardItemEditor *)&v12 addMiniFormatterElementsToArray:arrayCopy atPoint:x, y];
  if (![(CRLFreehandDrawingEditor *)self p_currentlyInFreehandDrawingMode])
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Edit Drawing" value:0 table:0];
    v10 = [CRLImage crl_quickInspectorImageNamed:@"scribble"];
    v11 = [CRLQuickInspectorElement elementWithName:v9 image:v10 type:2 options:0x1000000 action:"p_beginFreehandDrawingMode:" parent:0 children:0];

    [arrayCopy insertObject:v11 atIndex:{objc_msgSend(arrayCopy, "count")}];
  }
}

- (void)p_beginFreehandDrawingMode:(id)mode
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  [freehandDrawingToolkit beginDrawingModeIfNeededForTouchType:1];
}

- (void)p_separateInfos:(id)infos preserveInitialSelection:(BOOL)selection actionString:(id)string
{
  selectionCopy = selection;
  infosCopy = infos;
  stringCopy = string;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  commandController = [interactiveCanvasController commandController];
  editingCoordinator = [(CRLBoardItemEditor *)self editingCoordinator];
  mainBoard = [editingCoordinator mainBoard];

  selfCopy = self;
  editingCoordinator2 = [(CRLBoardItemEditor *)self editingCoordinator];
  boardItemFactory = [editingCoordinator2 boardItemFactory];

  if ([infosCopy count])
  {
    v121 = mainBoard;
    v125 = canvasEditor;
    [commandController openGroup];
    [commandController enableProgressiveEnqueuingInCurrentGroup];
    v122 = commandController;
    v120 = stringCopy;
    [commandController setCurrentGroupActionString:stringCopy];
    v16 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:infosCopy];
    v123 = infosCopy;
    v17 = [v16 crl_arrayWithObjectsInSet:infosCopy];

    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_10039AD20;
    v141[3] = &unk_10185B2C8;
    v119 = boardItemFactory;
    v141[4] = boardItemFactory;
    v18 = [v17 crl_arrayByTransformingWithBlock:v141];
    v19 = +[NSMutableArray array];
    v129 = v19;
    v130 = interactiveCanvasController;
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
        containingGroup = [v22 containingGroup];
        v26 = sub_100013F00(v24, containingGroup);

        v27 = [interactiveCanvasController layoutForInfo:v26];
        if (([v19 containsObject:v26] & 1) == 0)
        {
          [v19 addObject:v26];
        }

        geometry = [v22 geometry];
        geometry2 = [v27 geometry];
        v30 = [v27 computeInfoGeometryFromPureLayoutGeometry:geometry2];
        v31 = [geometry geometryWithParentGeometry:v30];

        [v23 setGeometry:v31];
        v19 = v129;

        ++v20;
        v17 = v21;
        interactiveCanvasController = v130;
        v18 = v127;
      }

      while (v20 < [v21 count]);
    }

    v118 = v17;
    if ([v19 count] == 1)
    {
      firstObject = [v19 firstObject];
      v33 = objc_opt_class();
      v34 = [interactiveCanvasController layoutForInfo:firstObject];
      v35 = sub_100014370(v33, v34);

      v36 = [CRLCanvasInfoGeometry alloc];
      pureGeometry = [v35 pureGeometry];
      v38 = pureGeometry;
      if (pureGeometry)
      {
        [pureGeometry fullTransform];
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

    editingCoordinator3 = [interactiveCanvasController editingCoordinator];
    boardItemFactory2 = [editingCoordinator3 boardItemFactory];
    v117 = v39;
    v42 = [boardItemFactory2 makeFreehandDrawingItemWithGeometry:v39];

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
          geometry3 = [v52 geometry];
          geometry4 = [v42 geometry];
          v55 = [geometry3 geometryRelativeToGeometry:geometry4];

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
    if (selectionCopy)
    {
      editorController = [(CRLBoardItemEditor *)selfCopy editorController];
      selectionPath = [editorController selectionPath];

      canvasEditor2 = [v130 canvasEditor];
      freehandDrawingInfos = [(CRLFreehandDrawingEditor *)selfCopy freehandDrawingInfos];
      v67 = [canvasEditor2 selectionPathWithInfos:freehandDrawingInfos];
      editorController2 = [(CRLBoardItemEditor *)selfCopy editorController];
      [editorController2 setSelectionPath:v67];

      v69 = [CRLCanvasCommandSelectionBehavior alloc];
      canvasEditor3 = [v130 canvasEditor];
      v71 = v62;
      v72 = [(CRLCanvasCommandSelectionBehavior *)v69 initWithCanvasEditor:canvasEditor3 type:3 constructedInfos:v62];

      v73 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:selectionPath];
      [(CRLCommandSelectionBehavior *)v72 setPersistableReverseSelectionPath:v73];
    }

    else
    {
      v71 = v61;
      v72 = 0;
    }

    v74 = [v125 selectionPathWithInfos:0];
    editorController3 = [v130 editorController];
    v128 = v74;
    [editorController3 setSelectionPath:v74];

    freehandDrawingInfos2 = [(CRLFreehandDrawingEditor *)selfCopy freehandDrawingInfos];
    anyObject = [freehandDrawingInfos2 anyObject];

    parentInfo = [anyObject parentInfo];
    v79 = objc_opt_class();
    v85 = sub_100303920(parentInfo, v79, 1, v80, v81, v82, v83, v84, &OBJC_PROTOCOL___CRLContainerInfo);

    canvasEditorHelper = [v125 canvasEditorHelper];
    v142 = v42;
    v87 = [NSArray arrayWithObjects:&v142 count:1];
    v114 = v85;
    v115 = anyObject;
    v88 = [canvasEditorHelper commandToInsertBoardItems:v87 intoContainer:v85 belowBoardItem:anyObject withOffset:0];

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
    editorController4 = [v57 editorController];
    [editorController4 setSelectionPath:v95];

    canvasEditorHelper2 = [v125 canvasEditorHelper];
    [canvasEditorHelper2 delete:selfCopy];

    [v90 closeGroup];
    editorController5 = [v57 editorController];
    [editorController5 setSelectionPath:v128];

    if (!selectionCopy)
    {
      v99 = [CRLCanvasCommandSelectionBehavior alloc];
      canvasEditor4 = [v57 canvasEditor];
      v101 = [(CRLCanvasCommandSelectionBehavior *)v99 initWithCanvasEditor:canvasEditor4 type:3 constructedInfos:v71];

      v72 = v101;
    }

    canvasEditor = v125;
    v102 = [v125 selectionPathWithInfos:v71];
    editorController6 = [v57 editorController];
    [editorController6 setSelectionPath:v102];

    arrangeInspectorDelegate = [v125 arrangeInspectorDelegate];
    [arrangeInspectorDelegate moveToFrontForArrangeInspector];

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

      canvasEditor = v125;
    }

    commandController = v122;
    [v122 closeGroupWithSelectionBehavior:v72];
    interactiveCanvasController2 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
    freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
    [freehandDrawingToolkit endDrawingModeIfNeeded];

    v110 = [canvasEditor selectionPathWithInfos:v71];
    interactiveCanvasController3 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
    editorController7 = [interactiveCanvasController3 editorController];
    [editorController7 setSelectionPath:v110];

    infosCopy = v123;
    stringCopy = v120;
    mainBoard = v121;
    interactiveCanvasController = v130;
    boardItemFactory = v119;
  }
}

- (void)p_fixUpCurrentSelectionPathIfNeeded:(id)needed
{
  neededCopy = needed;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  if (([interactiveCanvasController isInDynamicOperation] & 1) == 0 && !-[CRLFreehandDrawingEditor p_currentlyInFreehandDrawingMode](self, "p_currentlyInFreehandDrawingMode"))
  {
    v6 = [neededCopy mostSpecificSelectionOfClass:objc_opt_class()];
    if ([v6 containsKindOfClass:objc_opt_class()])
    {
      [interactiveCanvasController editorController];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10039AFFC;
      v9 = v8[3] = &unk_10183AE00;
      v10 = interactiveCanvasController;
      v11 = v6;
      v7 = v9;
      [v7 performBlockAfterSettingSelection:v8];
    }
  }
}

- (BOOL)p_shouldShowResizeMenuItemForSelectedItems:(id)items
{
  v3 = [items crl_arrayByTransformingWithBlock:&stru_10185B3C8];
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
          allNestedChildrenItemsExcludingGroups = [v12 allNestedChildrenItemsExcludingGroups];
          [v4 addObjectsFromArray:allNestedChildrenItemsExcludingGroups];
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

- (id)drawingRepresetativeItemsFromBoardItems:(id)items
{
  itemsCopy = items;
  v4 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
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
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  selectionPath = [editorController selectionPath];
  v6 = [selectionModelTranslator infosForSelectionPath:selectionPath];

  v7 = [v6 copy];

  return v7;
}

@end