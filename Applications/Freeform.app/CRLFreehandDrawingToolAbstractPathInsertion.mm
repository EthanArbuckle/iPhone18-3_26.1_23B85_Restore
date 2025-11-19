@interface CRLFreehandDrawingToolAbstractPathInsertion
- (id)p_clusterableFreehandDrawingLayoutsInParentContainerAtPoint:(CGPoint)a3;
- (id)p_drawingInfoForNewShapeInfos:(id)a3 board:(id)a4;
- (id)p_preexistingFreehandDrawingLayoutForInsertingShapeWithFrameInRoot:(CGRect)a3;
- (id)p_zOrderIndexPathForLayout:(id)a3 descendingFromLayout:(id)a4 withStartingIndexPath:(id)a5;
- (id)p_zOrderIndexPathForTopmostNonInteractableDrawingLeafLayoutFromLayouts:(id)a3 intersectingRectInParentSpaceOfLayouts:(CGRect)a4 withStartingIndexPath:(id)a5;
- (void)finalizeAndResetAbstractPathInsertionToolWithSuccess:(BOOL)a3;
- (void)openCommandGroupAndInsertInitialFreehandDrawingWithUnscaledPath:(id)a3 stroke:(id)a4 fill:(id)a5;
- (void)p_updateOrCreateParentDrawingToBestMatch;
- (void)performActionWithInputPoint:(id)a3 isInitialPoint:(BOOL)a4 isFinalPoint:(BOOL)a5;
@end

@implementation CRLFreehandDrawingToolAbstractPathInsertion

- (void)performActionWithInputPoint:(id)a3 isInitialPoint:(BOOL)a4 isFinalPoint:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingToolAbstractPathInsertion;
  [(CRLFreehandDrawingTool *)&v12 performActionWithInputPoint:v8 isInitialPoint:v6 isFinalPoint:v5];
  if (v6)
  {
    p_initialUnscaledPoint = &self->_initialUnscaledPoint;
    [v8 unscaledPoint];
    p_initialUnscaledPoint->x = v10;
    p_initialUnscaledPoint->y = v11;
  }
}

- (void)openCommandGroupAndInsertInitialFreehandDrawingWithUnscaledPath:(id)a3 stroke:(id)a4 fill:(id)a5
{
  v73 = a3;
  v72 = a4;
  v71 = a5;
  v8 = [(CRLFreehandDrawingTool *)self icc];
  v9 = [v8 editingCoordinator];
  v10 = [v9 commandController];

  [v10 openGroup];
  if ([(CRLFreehandDrawingTool *)self shouldCommandsEnqueueInRealTime])
  {
    [v10 enableRealTimeSyncProgressiveEnqueuingInCurrentGroup];
  }

  else
  {
    [v10 enableProgressiveEnqueuingInCurrentGroup];
  }

  v11 = [(CRLFreehandDrawingTool *)self type];
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (v11 == 8)
  {
    v14 = @"Add Fill";
  }

  else
  {
    v14 = @"Add Stroke";
  }

  v15 = [v12 localizedStringForKey:v14 value:0 table:@"UndoStrings"];
  v70 = v10;
  [v10 setCurrentGroupActionString:v15];

  v16 = [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y];
  v74 = v8;
  [v8 layoutIfNeeded];
  v17 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(v16, "count")}];
  originalBoundsForStandardKnobsInRootForDrawings = self->_originalBoundsForStandardKnobsInRootForDrawings;
  self->_originalBoundsForStandardKnobsInRootForDrawings = v17;

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v81;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v81 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v80 + 1) + 8 * i);
        [v24 boundsForStandardKnobs];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        if (v24)
        {
          [v24 transformInRoot];
        }

        else
        {
          memset(&v79, 0, sizeof(v79));
        }

        v88.origin.x = v26;
        v88.origin.y = v28;
        v88.size.width = v30;
        v88.size.height = v32;
        v89 = CGRectApplyAffineTransform(v88, &v79);
        v33 = self->_originalBoundsForStandardKnobsInRootForDrawings;
        v34 = [NSValue valueWithCGRect:v89.origin.x, v89.origin.y, v89.size.width, v89.size.height];
        [(NSMapTable *)v33 setObject:v34 forKey:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v21);
  }

  [v73 bounds];
  v36 = v35;
  v38 = v37;
  v39 = [CRLBezierPathSource pathSourceWithBezierPath:v73];
  v40 = v74;
  v41 = [v74 editingCoordinator];
  v42 = [v41 boardItemFactory];

  v43 = objc_opt_class();
  v68 = v42;
  v69 = v39;
  v44 = [v42 makeShapeItemForFreehandDrawingWithPathSource:v39 position:v72 stroke:v71 fill:0 pencilKitStrokePathCompactData:0 maskPath:{v36, v38}];
  v45 = sub_100013F00(v43, v44);
  shapeItem = self->_shapeItem;
  self->_shapeItem = v45;

  [(CRLBoardItemBase *)self->_shapeItem setAspectRatioLocked:1];
  v47 = +[CRLFreehandDrawingLocalShapeRegistry sharedInstance];
  [v47 registerLocallyDrawnShapeItem:self->_shapeItem];

  v86 = self->_shapeItem;
  v48 = [NSArray arrayWithObjects:&v86 count:1];
  v49 = [v74 editingCoordinator];
  v50 = [v49 mainBoard];
  v51 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_drawingInfoForNewShapeInfos:v48 board:v50];
  initialFreehandDrawingItem = self->_initialFreehandDrawingItem;
  self->_initialFreehandDrawingItem = v51;

  [(CRLFreehandDrawingItem *)self->_initialFreehandDrawingItem setProhibitsClustering:1];
  [(CRLBoardItemBase *)self->_initialFreehandDrawingItem setAspectRatioLocked:1];
  [v70 openGroup];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v53 = [v74 editorController];
  v54 = [v53 currentEditors];

  v55 = [v54 countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v76;
    while (2)
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v76 != v57)
        {
          objc_enumerationMutation(v54);
        }

        if ([*(*(&v75 + 1) + 8 * j) isMemberOfClass:objc_opt_class()])
        {
          v40 = v74;
          v59 = [v74 canvasEditor];
          v60 = [v59 selectionPathWithInfo:0];
          v61 = [v74 editorController];
          [v61 setSelectionPath:v60];

          goto LABEL_27;
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v75 objects:v85 count:16];
      v40 = v74;
      if (v56)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v62 = [v40 canvasEditor];
  v84 = self->_initialFreehandDrawingItem;
  v63 = [NSArray arrayWithObjects:&v84 count:1];
  v64 = +[CRLInsertionContext nonInteractiveFloatingInsertionContext];
  [v62 insertBoardItems:v63 withInsertionContext:v64 postProcessBlock:0];

  [v70 closeGroup];
  [v40 layoutIfNeeded];
  v65 = objc_opt_class();
  v66 = [v40 repForInfo:self->_shapeItem];
  v67 = sub_100014370(v65, v66);

  [v67 dynamicOperationDidBeginWithRealTimeCommands:0];
  [v67 i_setIsCurrentlyBeingFreehandDrawn:1];
}

- (id)p_drawingInfoForNewShapeInfos:(id)a3 board:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLGroupItem *)_TtC8Freeform22CRLFreehandDrawingItem groupGeometryFromChildrenInfos:v6];
  v9 = [(CRLFreehandDrawingTool *)self icc];
  v10 = [v9 editingCoordinator];
  v11 = [v10 boardItemFactory];
  v34 = v8;
  v12 = [v11 makeFreehandDrawingItemWithGeometry:v8];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v13 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    y = CGPointZero.y;
    do
    {
      v17 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * v17);
        v51 = v18;
        v19 = [NSArray arrayWithObjects:&v51 count:1];
        v36 = 0;
        [v12 beforeInsertionAddNewItems:v19 board:v7 error:&v36];
        v20 = v36;

        if (v20)
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101319E14();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v42 = v21;
            v43 = 2082;
            v44 = "[CRLFreehandDrawingToolAbstractPathInsertion p_drawingInfoForNewShapeInfos:board:]";
            v45 = 2082;
            v46 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m";
            v47 = 1024;
            v48 = 170;
            v49 = 2082;
            v50 = "insertionError";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101319E3C();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v31 = v23;
            v32 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v42 = v21;
            v43 = 2114;
            v44 = v32;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolAbstractPathInsertion p_drawingInfoForNewShapeInfos:board:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m"];
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:170 isFatal:0 description:"expected nil value for '%{public}s'", "insertionError"];
        }

        v26 = [CRLCanvasInfoGeometry alloc];
        v27 = [v18 geometry];
        [v27 size];
        v30 = [(CRLCanvasInfoGeometry *)v26 initWithPosition:CGPointZero.x size:y, v28, v29];
        [v18 setGeometry:v30];

        v17 = v17 + 1;
      }

      while (v14 != v17);
      v14 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
    }

    while (v14);
  }

  return v12;
}

- (id)p_preexistingFreehandDrawingLayoutForInsertingShapeWithFrameInRoot:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CRLFreehandDrawingTool *)self icc];
  v9 = [v8 parentForFreehandDrawingLayoutsAtPoint:{self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y}];

  memset(&v59, 0, sizeof(v59));
  v51 = v9;
  v10 = [v9 geometryInRoot];
  v11 = v10;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&v58, 0, sizeof(v58));
  }

  CGAffineTransformInvert(&v59, &v58);

  v58 = v59;
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v63 = CGRectApplyAffineTransform(v62, &v58);
  v12 = v63.origin.x;
  v13 = v63.origin.y;
  v14 = v63.size.width;
  v15 = v63.size.height;
  v16 = [v9 children];
  v53 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_zOrderIndexPathForTopmostNonInteractableDrawingLeafLayoutFromLayouts:v16 intersectingRectInParentSpaceOfLayouts:0 withStartingIndexPath:v12, v13, v14, v15];

  v17 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_clusterableFreehandDrawingLayoutsInParentContainerAtPoint:self->_initialUnscaledPoint.x, self->_initialUnscaledPoint.y];
  v18 = [(CRLFreehandDrawingTool *)self icc];
  [v18 viewScale];
  v20 = v19;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v50 = v17;
  v21 = [v17 reverseObjectEnumerator];
  v22 = [v21 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = 1.0 / v20 * 100.0;
    v26 = *v55;
    v27 = 1.79769313e308;
    while (2)
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v55 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = [(NSMapTable *)self->_originalBoundsForStandardKnobsInRootForDrawings objectForKeyedSubscript:v29];
        v31 = v30;
        if (v30)
        {
          [v30 CGRectValue];
          v36 = sub_1001202D8(v32, v33, v34, v35, x, y, width, height);
          v37 = v36;
          if (v36 < v27 && v36 <= v25)
          {
            if (v53)
            {
              v52 = v24;
              v39 = v21;
              v40 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_zOrderIndexPathForLayout:v29 descendingFromLayout:v51 withStartingIndexPath:0];
              if (!v40)
              {
                v44 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101319E64();
                }

                v45 = off_1019EDA68;
                v24 = v52;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_101319E8C(v44, v45);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101319F38();
                }

                v46 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  sub_10130EFC0(v46);
                }

                v47 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolAbstractPathInsertion p_preexistingFreehandDrawingLayoutForInsertingShapeWithFrameInRoot:]"];
                v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m"];
                [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:212 isFatal:0 description:"Should be able to get z-order index path for freehand drawing. Bailing early to avoid accidental overlaps."];

LABEL_32:
                goto LABEL_33;
              }

              v41 = v40;
              v42 = [v53 compare:v40];

              v21 = v39;
              v24 = v52;
              if (v42 == 1)
              {
                goto LABEL_32;
              }
            }

            v43 = v29;

            v27 = v37;
            v24 = v43;
          }

          if (v37 <= 0.0)
          {
            goto LABEL_32;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_33:

  return v24;
}

- (id)p_clusterableFreehandDrawingLayoutsInParentContainerAtPoint:(CGPoint)a3
{
  v3 = [(CRLFreehandDrawingTool *)self possibleFreehandDrawingLayoutsInParentContainerAtPoint:a3.x, a3.y];
  v4 = [v3 crl_arrayOfObjectsPassingTest:&stru_10183EB10];

  return v4;
}

- (id)p_zOrderIndexPathForTopmostNonInteractableDrawingLeafLayoutFromLayouts:(id)a3 intersectingRectInParentSpaceOfLayouts:(CGRect)a4 withStartingIndexPath:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v13 = [v11 count];
  if (v13 - 1 < 0)
  {
LABEL_15:
    v29 = 0;
  }

  else
  {
    v14 = v13;
    while (1)
    {
      v15 = [v11 objectAtIndexedSubscript:--v14];
      v16 = objc_opt_class();
      v17 = sub_100014370(v16, v15);
      v18 = v17;
      if (!v17 || ([v17 isInteractable] & 1) == 0)
      {
        [v15 frameForCulling];
        if (sub_10011FF38(v19, v20, v21, v22, x, y, width, height))
        {
          memset(&v34, 0, sizeof(v34));
          v23 = [v15 geometry];
          v24 = v23;
          if (v23)
          {
            [v23 transform];
          }

          else
          {
            memset(&v33, 0, sizeof(v33));
          }

          CGAffineTransformInvert(&v34, &v33);

          v33 = v34;
          v36.origin.x = x;
          v36.origin.y = y;
          v36.size.width = width;
          v36.size.height = height;
          v37 = CGRectApplyAffineTransform(v36, &v33);
          v25 = v37.origin.x;
          v26 = v37.origin.y;
          v27 = v37.size.width;
          v28 = v37.size.height;
          if (v12)
          {
            [v12 indexPathByAddingIndex:v14];
          }

          else
          {
            [NSIndexPath indexPathWithIndex:v14];
          }
          v29 = ;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_17;
          }

          v30 = [v15 children];
          v31 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_zOrderIndexPathForTopmostNonInteractableDrawingLeafLayoutFromLayouts:v30 intersectingRectInParentSpaceOfLayouts:v29 withStartingIndexPath:v25, v26, v27, v28];

          if (v31)
          {
            break;
          }
        }
      }

      if (v14 <= 0)
      {
        goto LABEL_15;
      }
    }

    v29 = v31;
LABEL_17:
  }

  return v29;
}

- (id)p_zOrderIndexPathForLayout:(id)a3 descendingFromLayout:(id)a4 withStartingIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 == v9)
  {
    v16 = v10;
  }

  else
  {
    v12 = [v8 parent];
    v13 = objc_opt_class();
    v14 = sub_100014370(v13, v8);
    v15 = v14;
    v16 = 0;
    if (v12 && v14)
    {
      v17 = [v12 children];
      v18 = [v17 indexOfObject:v15];

      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101319F60();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110402;
          v27 = v19;
          v28 = 2082;
          v29 = "[CRLFreehandDrawingToolAbstractPathInsertion p_zOrderIndexPathForLayout:descendingFromLayout:withStartingIndexPath:]";
          v30 = 2082;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m";
          v32 = 1024;
          v33 = 312;
          v34 = 2112;
          v35 = v8;
          v36 = 2112;
          v37 = v12;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unable to find index of descendant layout (%@) in parent layout's (%@) children.", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101319F74();
        }

        v21 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v21);
        }

        v22 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolAbstractPathInsertion p_zOrderIndexPathForLayout:descendingFromLayout:withStartingIndexPath:]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m"];
        [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:312 isFatal:0 description:"Unable to find index of descendant layout (%@) in parent layout's (%@) children.", v8, v12];

        v16 = 0;
      }

      else
      {
        if (v11)
        {
          [v11 crl_indexPathByPrependingIndex:v18];
        }

        else
        {
          [NSIndexPath indexPathWithIndex:v18];
        }
        v24 = ;
        v16 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_zOrderIndexPathForLayout:v12 descendingFromLayout:v9 withStartingIndexPath:v24];
      }
    }
  }

  return v16;
}

- (void)finalizeAndResetAbstractPathInsertionToolWithSuccess:(BOOL)a3
{
  v3 = a3;
  v25 = [(CRLFreehandDrawingTool *)self icc];
  v5 = [v25 commandController];
  v6 = objc_opt_class();
  v7 = [v25 repForInfo:self->_shapeItem];
  v8 = sub_100014370(v6, v7);

  [v8 i_setIsCurrentlyBeingFreehandDrawn:0];
  [v8 dynamicOperationDidEnd];
  if (v3)
  {
    [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_updateOrCreateParentDrawingToBestMatch];
  }

  v9 = [v25 editingCoordinator];
  v10 = [v9 mainBoard];

  v11 = [(CRLBoardItemBase *)self->_initialFreehandDrawingItem id];
  v12 = [v10 containsObject:v11];

  if ((v12 & 1) == 0)
  {
    if (v3)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v18 = [v25 canvasEditor];
    v19 = [v18 selectionPathWithInfo:0];

    v17 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v19 reverseSelectionPath:v19];
    goto LABEL_9;
  }

  v13 = [v25 canvasEditor];
  v14 = [v13 selectionPathWithInfo:self->_initialFreehandDrawingItem];

  v15 = [v25 canvasEditor];
  v16 = [v15 selectionPathWithInfo:0];

  v17 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v14 reverseSelectionPath:v16];
  if (!v3)
  {
LABEL_9:
    [v5 destroyOutermostCommandGroupOnClose];
  }

LABEL_10:
  v20 = [(CRLFreehandDrawingTool *)self icc];
  v21 = [v20 pkDrawingProvider];
  [v21 activeDrawingWillEndAfterInsertingFinalizedDrawingItem];

  [v5 closeGroupWithSelectionBehavior:v17];
  initialFreehandDrawingItem = self->_initialFreehandDrawingItem;
  self->_initialFreehandDrawingItem = 0;

  shapeItem = self->_shapeItem;
  self->_shapeItem = 0;

  originalBoundsForStandardKnobsInRootForDrawings = self->_originalBoundsForStandardKnobsInRootForDrawings;
  self->_originalBoundsForStandardKnobsInRootForDrawings = 0;

  self->_initialUnscaledPoint = xmmword_1014629F0;
}

- (void)p_updateOrCreateParentDrawingToBestMatch
{
  v3 = [(CRLFreehandDrawingTool *)self icc];
  [v3 layoutIfNeeded];
  v4 = self->_initialFreehandDrawingItem;
  v5 = [v3 editingCoordinator];
  v6 = [v5 mainBoard];
  v7 = [(CRLBoardItemBase *)v4 id];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = [v3 layoutForInfo:v4];
    v11 = sub_100013F00(v9, v10);

    v12 = [v11 pureGeometryInRoot];
    [v12 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [(CRLFreehandDrawingToolAbstractPathInsertion *)self p_preexistingFreehandDrawingLayoutForInsertingShapeWithFrameInRoot:v14, v16, v18, v20];
    v22 = v21;
    if (v21)
    {
      if (v21 != v11)
      {
        v60 = self;
        v56 = v11;
        v61 = +[NSMutableArray array];
        v23 = objc_opt_class();
        v58 = v22;
        v24 = [v22 info];
        v25 = sub_100013F00(v23, v24);

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v57 = v4;
        obj = [(CRLContainerItem *)v4 childItems];
        v26 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v26)
        {
          v27 = v26;
          v62 = *v65;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v65 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v64 + 1) + 8 * i);
              v30 = objc_opt_class();
              v31 = sub_100013F00(v30, v29);
              if (v31)
              {
                v32 = [CRLCanvasInfoGeometry alloc];
                [v31 fullTransformInRoot];
                v33 = [(CRLCanvasInfoGeometry *)v32 initWithFullTransform:v63 widthValid:1 heightValid:1];
                v34 = [CRLCanvasInfoGeometry alloc];
                if (v25)
                {
                  [v25 fullTransformInRoot];
                }

                else
                {
                  memset(v63, 0, sizeof(v63));
                }

                v35 = [(CRLCanvasInfoGeometry *)v34 initWithFullTransform:v63 widthValid:1 heightValid:1];
                v36 = [(CRLCanvasInfoGeometry *)v33 geometryRelativeToGeometry:v35];
                v37 = [v25 childInfos];
                v38 = [v37 count];

                if ([(CRLFreehandDrawingTool *)v60 type]== 8)
                {
                  v38 = [v58 maxFilledShapeIndex];
                }

                v39 = [[_TtC8Freeform28CRLCommandReparentBoardItems alloc] initWithDestinationContainer:v25 boardItem:v31 index:v38];
                [(CRLCommandFreehandDrawingProhibitClustering *)v61 addObject:v39];
                v40 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v31 geometry:v36];
                [(CRLCommandFreehandDrawingProhibitClustering *)v61 addObject:v40];
              }
            }

            v27 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
          }

          while (v27);
        }

        v41 = [v3 canvasEditor];
        v42 = [v41 canvasEditorHelper];
        v4 = v57;
        v43 = [NSSet setWithObject:v57];
        v44 = [v42 commandForDeletingInfosPossiblyFromMultipleContainers:v43 shouldRemoveEmptyContainers:1 canDeleteNewlyCreatedInfos:1];

        v45 = v61;
        [(CRLCommandFreehandDrawingProhibitClustering *)v61 addObject:v44];
        v46 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v61];
        [(CRLCommand *)v46 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
        v47 = [v3 canvasEditor];
        v48 = [v47 selectionPathWithInfo:v25];

        v49 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v48 reverseSelectionPath:v48];
        v50 = [v3 commandController];
        [v50 enqueueCommand:v46 withSelectionBehavior:v49];

        v11 = v56;
        v22 = v58;
        goto LABEL_29;
      }

      v51 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101319F9C();
      }

      v52 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101319FB0(v51, v52);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131A07C();
      }

      v53 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v53);
      }

      v54 = [NSString stringWithUTF8String:"[CRLFreehandDrawingToolAbstractPathInsertion p_updateOrCreateParentDrawingToBestMatch]"];
      v55 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingToolAbstractPathInsertion.m"];
      [CRLAssertionHandler handleFailureInFunction:v54 file:v55 lineNumber:424 isFatal:0 description:"expected inequality between %{public}s and %{public}s", "closestDrawingLayout", "initialDrawingLayout"];
    }

    v45 = [[_TtC8Freeform43CRLCommandFreehandDrawingProhibitClustering alloc] initWithFreehandDrawingItem:v4 prohibitsClustering:0];
    [(CRLCommand *)v45 setShouldSendChangeNotificationsWhenEnqueuedInProgressiveGroup:0];
    v25 = [v3 commandController];
    [v25 enqueueCommand:v45];
LABEL_29:
  }
}

@end