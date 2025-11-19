@interface CRLPathEditor
- (BOOL)canAddKnobsForRep:(id)a3;
- (BOOL)canClosePathToKnob:(id)a3;
- (BOOL)canContinuePathFromKnob:(id)a3 reversed:(BOOL *)a4;
- (BOOL)canEndPathCreationWithKnob:(id)a3;
- (BOOL)p_shouldKeepEditingInfos:(id)a3;
- (BOOL)pathHasSelectedNodes:(unint64_t)a3;
- (BOOL)pathReturnsTrueForSelector:(SEL)a3;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (CGPoint)constrainedUnscaledPointForPathCreation:(CGPoint)a3;
- (CGPoint)p_snappedPointForCanvasBackgroundAlignmentProvider:(CGPoint)a3;
- (CRLPathEditableRep)creatingRep;
- (NSArray)decoratorOverlayRenderables;
- (id)newTrackerForKnob:(id)a3 forRep:(id)a4;
- (id)p_ghostRenderable;
- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addKnobsForRep:(id)a3 toArray:(id)a4;
- (void)alignNodesByEdge:(int)a3;
- (void)close:(id)a3;
- (void)closeLastSubpath;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)deselectAll:(id)a3;
- (void)didBecomeCurrentEditorForEditorController:(id)a3;
- (void)didResignTextInputEditor;
- (void)distributeNodesByEdge:(int)a3;
- (void)editPathsOnPathEditableRepsWithActionString:(id)a3 usingBlock:(id)a4 filterWithBlock:(id)a5;
- (void)endMovingKnob;
- (void)endPathEditing;
- (void)invalidateKnobs;
- (void)join:(id)a3;
- (void)nudgeByDelta:(CGPoint)a3;
- (void)p_commandGroupSafeEndEditing;
- (void)p_commandWillBeEnqueued:(id)a3;
- (void)p_didScroll:(id)a3;
- (void)p_groupWillBeOpened:(id)a3;
- (void)p_resetAfterRebase;
- (void)p_selectNextNode:(int64_t)a3;
- (void)p_setGhostStrokeColor;
- (void)selectAll:(id)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)setCreatingRep:(id)a3;
- (void)setIsCreatingPath:(BOOL)a3;
- (void)split:(id)a3;
- (void)toggleSelectedNodeToType:(int64_t)a3;
- (void)updateGhost;
- (void)updateGhostForNodeCreationAtPoint:(CGPoint)a3;
- (void)updatePositionsOfKnobs:(id)a3 forRep:(id)a4;
- (void)willResignCurrentEditor;
@end

@implementation CRLPathEditor

- (void)dealloc
{
  [(CRLPathEditor *)self p_closeCommandGroupBookkeepingAndUnregisterForOpenGroupNotifications];
  v3.receiver = self;
  v3.super_class = CRLPathEditor;
  [(CRLPathEditor *)&v3 dealloc];
}

- (void)didBecomeCurrentEditorForEditorController:(id)a3
{
  v4 = a3;
  [(CRLPathEditor *)self invalidateKnobs];
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [v5 addDecorator:self];

  if ([(CRLPathEditor *)self isCreatingPath])
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [v6 addObserver:self selector:"p_didScroll:" name:@"CRLCanvasDidScrollNotification" object:v7];
  }

  v8.receiver = self;
  v8.super_class = CRLPathEditor;
  [(CRLBoardItemEditor *)&v8 didBecomeCurrentEditorForEditorController:v4];
}

- (void)willResignCurrentEditor
{
  v2.receiver = self;
  v2.super_class = CRLPathEditor;
  [(CRLBoardItemEditor *)&v2 willResignCurrentEditor];
}

- (void)didResignTextInputEditor
{
  if (BYTE1(self->_lastGhostPosition.y) == 1)
  {
    v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v4 = [v3 commandController];

    [(CRLPathEditor *)self p_closeCommandGroupBookkeepingAndUnregisterForOpenGroupNotifications];
    [*(&self->_willBecomeCurrentEditorAgain + 1) setCommitSelectionPath:0];
    [*(&self->_willBecomeCurrentEditorAgain + 1) setPersistableForwardSelectionPath:0];
    [v4 closeGroup];
  }

  [(CRLPathEditor *)self invalidateKnobs];
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [v5 removeDecorator:self];

  if ((BYTE1(self->_creatingInfo) & 1) == 0)
  {
    v6 = *(&self->_willBecomeCurrentEditorAgain + 1);
    *(&self->_willBecomeCurrentEditorAgain + 1) = 0;
  }

  if ([(CRLPathEditor *)self isCreatingPath])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [v8 removeObserver:self name:@"CRLCanvasDidScrollNotification" object:v7];
  }
}

- (void)invalidateKnobs
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [v3 repsForInfo:{v9, 0}];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14) invalidateKnobs];
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

- (BOOL)canAddKnobsForRep:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v4 info];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)addKnobsForRep:(id)a3 toArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 editablePathSource];
  if (v7)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v39 = v7;
    obj = [v7 subpaths];
    v42 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v42)
    {
      v49 = 0;
      v41 = *v62;
      v48 = v5;
      do
      {
        v8 = 0;
        do
        {
          if (*v62 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v61 + 1) + 8 * v8);
          v10 = [v9 nodes];
          v46 = v9;
          v43 = v8;
          if ([v9 isClosed])
          {
            v11 = [v10 lastObject];
          }

          else
          {
            v11 = 0;
          }

          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v12 = v10;
          v47 = [v12 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v47)
          {
            v13 = 0;
            v45 = *v58;
            do
            {
              v14 = 0;
              v15 = v13;
              do
              {
                if (*v58 != v45)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v57 + 1) + 8 * v14);
                v17 = [[CRLPathKnob alloc] initWithNode:v16 onRep:v5];
                [(CRLPathKnob *)v17 setNodeIndex:v15];
                [(CRLPathKnob *)v17 setSubpathIndex:v49];
                v18 = v6;
                [v6 addObject:v17];
                v13 = v15 + 1;
                if (([v46 isClosed] & 1) != 0 || v13 < objc_msgSend(v12, "count"))
                {
                  v19 = [v12 objectAtIndex:{v13 % objc_msgSend(v12, "count")}];
                }

                else
                {
                  v19 = 0;
                }

                if ([v16 isSelected] && objc_msgSend(v16, "type") == 2)
                {
                  if (v11)
                  {
                    [v16 nodePoint];
                    v21 = v20;
                    v23 = v22;
                    [v16 inControlPoint];
                    if (v21 != v25 || v23 != v24)
                    {
                      v26 = [[CRLPathKnob alloc] initWithInControlForNode:v16 onRep:v5];

                      [(CRLPathKnob *)v26 setNodeIndex:v15];
                      [(CRLPathKnob *)v26 setSubpathIndex:v49];
                      [v18 addObject:v26];
                      v17 = v26;
                      v5 = v48;
                    }
                  }

                  if ([(CRLPathEditor *)self isCreatingPath]|| v19)
                  {
                    [v16 nodePoint];
                    v28 = v27;
                    v30 = v29;
                    [v16 outControlPoint];
                    if (v28 != v32 || v30 != v31)
                    {
                      v33 = [[CRLPathKnob alloc] initWithOutControlForNode:v16 onRep:v5];

                      [(CRLPathKnob *)v33 setNodeIndex:v15];
                      [(CRLPathKnob *)v33 setSubpathIndex:v49];
                      [v18 addObject:v33];
                      v17 = v33;
                      v5 = v48;
                    }
                  }
                }

                v50[0] = _NSConcreteStackBlock;
                v50[1] = 3221225472;
                v50[2] = sub_1002759A0;
                v50[3] = &unk_10184E158;
                v50[4] = v16;
                v51 = v5;
                v52 = v19;
                v34 = v11;
                v53 = v34;
                v55 = v15;
                v56 = v49;
                v54 = v18;
                v35 = v19;
                v36 = objc_retainBlock(v50);
                v37 = v36;
                if (v35)
                {
                  v38 = (v36[2])(v36, 22);
                  [v38 setTValue:0.5];
                }

                v11 = v16;

                v14 = v14 + 1;
                v15 = v13;
                v5 = v48;
                v6 = v18;
              }

              while (v47 != v14);
              v47 = [v12 countByEnumeratingWithState:&v57 objects:v65 count:16];
            }

            while (v47);
          }

          ++v49;
          v8 = v43 + 1;
        }

        while ((v43 + 1) != v42);
        v42 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v42);
    }

    [(CRLPathEditor *)self updatePositionsOfKnobs:v6 forRep:v5];
    v7 = v39;
  }
}

- (void)updatePositionsOfKnobs:(id)a3 forRep:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0uLL;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (v6)
  {
    [v6 naturalToEditablePathSpaceTransform];
    v8 = 0uLL;
  }

  v21 = v8;
  v22 = v8;
  v19 = v8;
  v20 = v8;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_opt_class();
        v16 = sub_100014370(v15, v14);
        v17 = v16;
        if (v16)
        {
          v18[0] = v23;
          v18[1] = v24;
          v18[2] = v25;
          [v16 updatePositionWithTransform:v18];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
    }

    while (v11);
  }
}

- (id)newTrackerForKnob:(id)a3 forRep:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CRLPathKnobTracker alloc] initWithRep:v5 knob:v6];

  return v7;
}

- (void)editPathsOnPathEditableRepsWithActionString:(id)a3 usingBlock:(id)a4 filterWithBlock:(id)a5
{
  v8 = a3;
  v29 = a4;
  v9 = a5;
  [(CRLPathEditor *)self setCurrentCommandsPathRelated:1];
  v10 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v11 = [v10 commandController];

  [v11 openGroup];
  v28 = v11;
  [v11 setCurrentGroupActionString:v8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CRLBoardItemEditor *)self boardItems];
  v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v18 = [v17 repForInfo:v16];
        v19 = objc_opt_class();
        v25 = sub_1003038E0(v18, v19, 1, v20, v21, v22, v23, v24, &OBJC_PROTOCOL___CRLPathEditableRep);

        if (v25 && v9[2](v9, v25))
        {
          [v25 dynamicOperationDidBeginWithRealTimeCommands:0];
          [v25 dynamicMovePathKnobDidBegin];
          v26 = [v25 editablePathSource];
          v27 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:v26];
          v29[2](v29, v25);
          [v26 morphWithMorphInfo:v27];
          [v25 dynamicMovePathKnobDidEndWithTracker:0];
          [v25 dynamicOperationDidEnd];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  [v28 closeGroup];
  [(CRLPathEditor *)self setCurrentCommandsPathRelated:0];
}

- (void)selectAll:(id)a3
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Select All" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v4 usingBlock:&stru_10184E198 filterWithBlock:&stru_10184E1D8];
}

- (void)deselectAll:(id)a3
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Deselect All" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v4 usingBlock:&stru_10184E1F8 filterWithBlock:&stru_10184E218];
}

- (id)p_ghostRenderable
{
  v3 = *(&self->super.mIsChangingStrokeWidth + 1);
  if (!v3)
  {
    v4 = +[CRLCanvasShapeRenderable renderable];
    v5 = *(&self->super.mIsChangingStrokeWidth + 1);
    *(&self->super.mIsChangingStrokeWidth + 1) = v4;

    [*(&self->super.mIsChangingStrokeWidth + 1) setLineWidth:2.0];
    v6 = [CRLColor colorWithWhite:0.0 alpha:0.3];
    [*(&self->super.mIsChangingStrokeWidth + 1) setStrokeColor:{objc_msgSend(v6, "CGColor")}];

    [*(&self->super.mIsChangingStrokeWidth + 1) setFillColor:0];
    [*(&self->super.mIsChangingStrokeWidth + 1) setZPosition:-1.0];
    v3 = *(&self->super.mIsChangingStrokeWidth + 1);
  }

  return v3;
}

- (void)p_setGhostStrokeColor
{
  v3 = [(CRLPathEditor *)self creatingRep];
  v4 = [v3 layout];
  v10 = [v4 stroke];

  if (v10)
  {
    v5 = [v10 color];
    [v5 alphaComponent];
    v7 = [v5 colorWithAlphaComponent:v6 * 0.3];
  }

  else
  {
    v7 = [CRLColor colorWithWhite:0.0 alpha:0.3];
  }

  v8 = [v7 CGColor];
  v9 = [(CRLPathEditor *)self p_ghostRenderable];
  [v9 setStrokeColor:v8];
}

- (NSArray)decoratorOverlayRenderables
{
  [(CRLPathEditor *)self p_setGhostStrokeColor];
  v3 = [(CRLPathEditor *)self p_ghostRenderable];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (CRLPathEditableRep)creatingRep
{
  if (*(&self->_hoveringKnob + 1))
  {
    v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v4 = [v3 repForInfo:*(&self->_hoveringKnob + 1) createIfNeeded:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCreatingRep:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 info];

  obj = sub_100014370(v5, v6);

  v7 = obj;
  if (obj != *(&self->_hoveringKnob + 1))
  {
    objc_storeStrong((&self->_hoveringKnob + 1), obj);
    v7 = obj;
  }
}

- (void)setIsCreatingPath:(BOOL)a3
{
  if (BYTE1(self->_insertSelectionBehavior) != a3)
  {
    v4 = a3;
    BYTE1(self->_insertSelectionBehavior) = a3;
    v7 = +[NSNotificationCenter defaultCenter];
    [(CRLBoardItemEditor *)self interactiveCanvasController];
    if (v4)
      v6 = {;
      [v7 addObserver:self selector:"p_didScroll:" name:@"CRLCanvasDidScrollNotification" object:v6];
    }

    else
      v6 = {;
      [v7 removeObserver:self name:@"CRLCanvasDidScrollNotification" object:v6];
    }
  }
}

- (void)p_didScroll:(id)a3
{
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if (*(&self->_hoveringKnob + 1))
    {
      v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v5 = [v4 repForInfo:*(&self->_hoveringKnob + 1) createIfNeeded:0];

      if (!v5)
      {
        if (!+[NSThread isMainThread])
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013400BC();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_1013400D0();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101340158();
          }

          v6 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v6);
          }

          v7 = [NSString stringWithUTF8String:"[CRLPathEditor p_didScroll:]"];
          v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:500 isFatal:0 description:"This operation must only be performed on the main thread."];
        }

        [(CRLPathEditor *)self endPathEditing];
      }
    }
  }
}

- (CGPoint)constrainedUnscaledPointForPathCreation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v29 = 0;
  v8 = [v7 hitKnobAtPoint:1 inputType:&v29 returningRep:{x, y}];
  v9 = sub_100014370(v6, v8);

  if (!v9)
  {
    v10 = [(CRLPathEditor *)self creatingRep];
    v11 = [v10 editablePathSource];

    v12 = [v11 nodes];
    if ([v12 count])
    {
      v13 = [(CRLPathEditor *)self creatingRep];
      [v13 convertNaturalPointFromUnscaledCanvas:{x, y}];
      v15 = v14;
      v17 = v16;
      if ([(CRLPathEditor *)self isCreatingReversed])
      {
        [v12 objectAtIndexedSubscript:0];
      }

      else
      {
        [v12 lastObject];
      }
      v18 = ;
      [v18 nodePoint];
      v20 = v19;
      v21 = sub_10011F31C(v15, v17, v19);
      v23 = sub_100120FD4(v21, v22);
      [v13 convertNaturalPointToUnscaledCanvas:{sub_10011F334(v23, v24, v20)}];
      x = v25;
      y = v26;
    }
  }

  [(CRLPathEditor *)self p_snappedPointForCanvasBackgroundAlignmentProvider:x, y];
  result.y = v28;
  result.x = v27;
  return result;
}

- (void)endMovingKnob
{
  if (BYTE1(self->_lastGhostPosition.y) == 1 && [(CRLPathEditor *)self isCreatingPath])
  {
    v3 = [(CRLPathEditor *)self creatingRep];
    v9 = [v3 editablePathSource];

    v4 = [v9 nodes];
    v5 = [v4 count];

    if (v5 >= 2)
    {
      v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v7 = [v6 commandController];

      [(CRLPathEditor *)self p_closeCommandGroupBookkeepingAndUnregisterForOpenGroupNotifications];
      [v7 closeGroup];
      v8 = *(&self->_willBecomeCurrentEditorAgain + 1);
      *(&self->_willBecomeCurrentEditorAgain + 1) = 0;
    }
  }
}

- (void)p_resetAfterRebase
{
  [(CRLPathEditor *)self setResetAfterRebase:0];
  v3 = [(CRLBoardItemEditor *)self boardItems];
  v4 = [v3 count];

  if (v4 != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340180();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340194();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134021C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPathEditor p_resetAfterRebase]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:742 isFatal:0 description:"Can only reset editing state if we have a single info selected"];
  }

  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v8 anyObject];
  v10 = *(&self->_hoveringKnob + 1);
  *(&self->_hoveringKnob + 1) = v9;

  BYTE1(self->_insertSelectionBehavior) = 1;
}

- (void)updateGhostForNodeCreationAtPoint:(CGPoint)a3
{
  [(CRLPathEditor *)self p_snappedPointForCanvasBackgroundAlignmentProvider:a3.x, a3.y];
  if (*(&self->super.mIsChangingStrokeWidth + 1))
  {
    v6 = v4;
    v7 = v5;
    if ([(CRLPathEditor *)self isCreatingPath])
    {
      if ([(CRLPathEditor *)self resetAfterRebase])
      {
        [(CRLPathEditor *)self p_resetAfterRebase];
      }

      *(&self->_ghostPathRenderable + 1) = v6;
      *(&self->_lastGhostPosition.x + 1) = v7;

      [(CRLPathEditor *)self updateGhost];
    }
  }
}

- (void)updateGhost
{
  v3 = [(CRLPathEditor *)self creatingRep];
  if (!v3 || ![(CRLPathEditor *)self isCreatingPath])
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = [v3 editablePathSource];
  v5 = [v4 bezierPath];
  v6 = [v5 elementCount];

  if (v6 < 1)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = objc_opt_class();
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = (&self->_ghostPathRenderable + 1);
  v52 = 0;
  v10 = [v8 hitKnobAtPoint:1 inputType:&v52 returningRep:{*(&self->_ghostPathRenderable + 1), *(&self->_lastGhostPosition.x + 1)}];
  v11 = sub_100014370(v7, v10);

  v12 = [v4 subpaths];
  v13 = [v12 lastObject];

  if (([v13 isClosed] & 1) == 0)
  {
    v16 = [v13 nodes];
    if ([v16 count])
    {
    }

    else
    {
      v17 = [v4 subpaths];
      v18 = [v17 count];

      if (v18 >= 2)
      {
        v19 = [v4 subpaths];
        v20 = [v4 subpaths];
        v21 = [v19 objectAtIndex:{objc_msgSend(v20, "count") - 2}];

        v14 = [v21 isClosed] ^ 1;
        v13 = v21;
        goto LABEL_15;
      }
    }

    v14 = 1;
    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:
  if (v11 && ![(CRLPathEditor *)self canClosePathToKnob:v11])
  {

    goto LABEL_8;
  }

  if (!v14)
  {
LABEL_8:
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.0];
    [*(&self->super.mIsChangingStrokeWidth + 1) setPath:0];
    +[CATransaction commit];
    v15 = v4;
    goto LABEL_9;
  }

  v15 = [v4 copy];

  v22 = [v15 subpaths];
  v23 = [v22 lastObject];

  v24 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:v15];
  if (v11 && [(CRLPathEditor *)self canClosePathToKnob:v11])
  {
    v25 = [v15 firstNode];
    if ([v25 type] == 3)
    {
      [v25 setType:1];
    }

    [v15 closePath];
  }

  else if ([(CRLPathEditor *)self isCreatingReversed])
  {
    v26 = [v23 nodes];
    v25 = [v26 mutableCopy];

    [v3 convertNaturalPointFromUnscaledCanvas:{*v9, *(&self->_lastGhostPosition.x + 1)}];
    v27 = [CRLBezierNode bezierNodeWithPoint:?];
    [v25 insertObject:v27 atIndex:0];

    [v23 setNodes:v25];
  }

  else
  {
    [v3 convertNaturalPointFromUnscaledCanvas:{*v9, *(&self->_lastGhostPosition.x + 1)}];
    v25 = [CRLBezierNode bezierNodeWithPoint:?];
    [v23 addNode:v25];
  }

  [v15 morphWithMorphInfo:v24];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v28 = +[CRLBezierPath bezierPath];
  v29 = [v23 nodes];
  v30 = [v29 count] - 1;

  v31 = [v23 nodes];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10027722C;
  v51[3] = &unk_10184E2B8;
  v51[4] = v30;
  v32 = [v31 indexOfObjectWithOptions:2 passingTest:v51];

  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  [v23 appendToBezierPath:v28 selectedNodesOnly:0 fromIndex:v33];
  v34 = [v28 elementCount];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    while (1)
    {
      v37 = [v28 elementAtIndex:v36 associatedPoints:&v53];
      if (v37 < 2)
      {
        break;
      }

      if (v37 == 2)
      {
        v40 = rand() * 4.65661288e-15;
        rand();
        v55 = sub_10011F334(v55, v56, v40);
        v56 = v41;
        goto LABEL_36;
      }

LABEL_37:
      if (v35 == ++v36)
      {
        goto LABEL_38;
      }
    }

    v38 = rand() * 4.65661288e-15;
    rand();
    v53 = sub_10011F334(v53, v54, v38);
    v54 = v39;
LABEL_36:
    [v28 setAssociatedPoints:&v53 atIndex:v36];
    goto LABEL_37;
  }

LABEL_38:
  [*(&self->super.mIsChangingStrokeWidth + 1) setPath:{objc_msgSend(v28, "CGPath")}];
  v42 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [v42 viewScale];
  v44 = v43;

  v45 = [v3 layout];
  v46 = v45;
  if (v45)
  {
    [v45 pureTransformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformMakeScale(&v48, v44, v44);
  CGAffineTransformConcat(&v50, &t1, &v48);
  v47 = *(&self->super.mIsChangingStrokeWidth + 1);
  t1 = v50;
  [v47 setAffineTransform:&t1];

  [*(&self->super.mIsChangingStrokeWidth + 1) setLineWidth:2.0 / v44];
  +[CATransaction commit];

LABEL_9:
}

- (void)closeLastSubpath
{
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    v3 = [(CRLPathEditor *)self creatingRep];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Close Path" value:0 table:@"UndoStrings"];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002773D8;
    v7[3] = &unk_10184E300;
    v8 = v3;
    v6 = v3;
    [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E2D8 filterWithBlock:v7];
  }
}

- (BOOL)canContinuePathFromKnob:(id)a3 reversed:(BOOL *)a4
{
  v5 = a3;
  if ([v5 tag] == 17)
  {
    v6 = [v5 pathEditableRep];
    v7 = [v6 editablePathSource];

    v8 = [v7 subpaths];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "subpathIndex")}];

    v10 = [v5 nodeIndex];
    v11 = [v9 nodes];
    v12 = v10 == [v11 count] - 1 || objc_msgSend(v5, "nodeIndex") == 0;

    if (a4)
    {
      *a4 = [v5 nodeIndex] == 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canClosePathToKnob:(id)a3
{
  v4 = a3;
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if ([v4 tag] == 17)
    {
      v5 = [v4 pathEditableRep];
      v6 = [(CRLPathEditor *)self creatingRep];

      if (v5 == v6)
      {
        v9 = [v4 pathEditableRep];
        v10 = [v9 editablePathSource];

        v11 = [v4 subpathIndex];
        v12 = [v10 subpaths];
        v13 = [v12 count] - 1;

        if (v11 != v13)
        {
          v7 = 0;
LABEL_16:

          goto LABEL_5;
        }

        v14 = [v10 subpaths];
        v15 = [v14 lastObject];

        LODWORD(v14) = [(CRLPathEditor *)self isCreatingReversed];
        v16 = [v4 nodeIndex];
        v17 = v16;
        if (v14)
        {
          v18 = [v15 nodes];
          v19 = [v18 count] - 1;

          if (v17 != v19)
          {
            goto LABEL_13;
          }
        }

        else if (v16)
        {
          goto LABEL_13;
        }

        if (([v15 isClosed] & 1) == 0)
        {
          v20 = [v15 nodes];
          v7 = [v20 count] > 1;

          goto LABEL_15;
        }

LABEL_13:
        v7 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (BOOL)canEndPathCreationWithKnob:(id)a3
{
  v4 = a3;
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if ([v4 tag] == 17)
    {
      v5 = [v4 pathEditableRep];
      v6 = [(CRLPathEditor *)self creatingRep];

      if (v5 == v6)
      {
        v9 = [v4 pathEditableRep];
        v10 = [v9 editablePathSource];

        v11 = [v4 subpathIndex];
        v12 = [v10 subpaths];
        v13 = [v12 count] - 1;

        if (v11 != v13)
        {
          LOBYTE(v7) = 0;
LABEL_14:

          goto LABEL_5;
        }

        v14 = [v10 subpaths];
        v15 = [v14 lastObject];

        LODWORD(v14) = [(CRLPathEditor *)self isCreatingReversed];
        v16 = [v4 nodeIndex];
        v17 = v16;
        if (v14)
        {
          if (v16)
          {
LABEL_9:
            LOBYTE(v7) = 0;
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v18 = [v15 nodes];
          v19 = [v18 count] - 1;

          if (v17 != v19)
          {
            goto LABEL_9;
          }
        }

        v7 = [v15 isClosed] ^ 1;
        goto LABEL_13;
      }
    }
  }

  LOBYTE(v7) = 0;
LABEL_5:

  return v7;
}

- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_class();
  v17 = sub_100014370(v16, v13);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CRLPathEditor;
    v18 = [(CRLBoardItemEditor *)&v20 selectionWillChangeFromSelection:v12 toSelection:v13 withFlags:a5 inSelectionPath:v14 withNewEditors:v15];
  }

  return v18;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, v9);
  if (!v11)
  {
    v12.receiver = self;
    v12.super_class = CRLPathEditor;
    [(CRLBoardItemEditor *)&v12 selectionDidChangeFromSelection:v8 toSelection:v9 withFlags:a5];
  }
}

- (BOOL)p_shouldKeepEditingInfos:(id)a3
{
  v4 = a3;
  v6 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v6 isEqual:v4];

  LOBYTE(v6) = 1;
  if (v4 && (v5 & 1) == 0 && [v4 count])
  {
    if ([v4 count] == 1 && (-[CRLBoardItemEditor boardItems](self, "boardItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
    {
      v9 = objc_opt_class();
      v10 = [v4 anyObject];
      v11 = sub_100013F00(v9, v10);

      v6 = [(CRLBoardItemEditor *)self boardItems];
      v12 = [v6 anyObject];

      v13 = [v11 id];
      v14 = [v12 id];
      LODWORD(v6) = [v13 isEqual:v14];

      if (v6)
      {
        v15 = [NSSet setWithObject:v11];
        [(CRLBoardItemEditor *)self setBoardItems:v15];

        if (BYTE1(self->_insertSelectionBehavior) == 1)
        {
          [(CRLPathEditor *)self setResetAfterRebase:1];
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CRLPathEditor *)self isMemberOfClass:objc_opt_class()])
  {
    v11 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v12 = [v11 infosForSelectionPath:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CRLPathEditor *)self p_shouldKeepEditingInfos:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CRLPathEditor;
    v13 = [(CRLBoardItemEditor *)&v15 shouldRemainOnEditorStackForSelection:v8 inSelectionPath:v9 withNewEditors:v10];
  }

  return v13;
}

- (void)p_commandWillBeEnqueued:(id)a3
{
  v4 = a3;
  if ((BYTE1(self->_lastGhostPosition.y) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340244();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101340258();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013402E0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPathEditor p_commandWillBeEnqueued:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1211 isFatal:0 description:"Listening to command notifications when we don't care!"];
  }

  if (![(CRLPathEditor *)self currentCommandsPathRelated])
  {
    [(CRLPathEditor *)self p_commandGroupSafeEndEditing];
  }
}

- (void)p_groupWillBeOpened:(id)a3
{
  v4 = a3;
  if ((BYTE1(self->_lastGhostPosition.y) & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101340308();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134031C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013403A4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPathEditor p_groupWillBeOpened:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1218 isFatal:0 description:"Listening to command notifications when we don't care!"];
  }

  if (![(CRLPathEditor *)self currentCommandsPathRelated]&& BYTE1(self->_lastGhostPosition.y) == 1)
  {
    [(CRLPathEditor *)self p_commandGroupSafeEndEditing];
  }
}

- (void)endPathEditing
{
  if ([(CRLPathEditor *)self isCreatingPath]&& (BYTE1(self->_lastGhostPosition.y) & 1) == 0)
  {
    [(CRLPathEditor *)self setIsCreatingPath:0];
    v3 = *(&self->_hoveringKnob + 1);
    *(&self->_hoveringKnob + 1) = 0;

    [(CRLPathEditor *)self updateGhost];
  }

  else
  {

    [(CRLPathEditor *)self p_commandGroupSafeEndEditing];
  }
}

- (void)p_commandGroupSafeEndEditing
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v7 = v3;
  if (BYTE1(self->_lastGhostPosition.y) == 1)
  {
    v4 = [v3 canvasEditor];
    v5 = [v4 selectionPathWithInfos:0];
    v6 = [v7 editorController];
    [v6 setSelectionPath:v5];
  }

  else
  {
    [v3 endEditing];
  }
}

- (void)toggleSelectedNodeToType:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v5 = @"Make Sharp Point";
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (a3 != 2)
  {
    if (a3 != 4)
    {
      if (a3 != 3)
      {
        return;
      }

      v5 = @"Make Smooth Point";
      goto LABEL_19;
    }

LABEL_9:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013403CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013403E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101340490();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLPathEditor toggleSelectedNodeToType:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1344 isFatal:0 description:"Unexpected node type %li", a3];

    goto LABEL_21;
  }

  v5 = @"Make Bézier Point";
LABEL_19:
  v9 = +[NSBundle mainBundle];
  v7 = [v9 localizedStringForKey:v5 value:0 table:@"UndoStrings"];

  if (!v7)
  {
    return;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100278478;
  v10[3] = &unk_10184E3E0;
  v10[4] = a3;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v10 filterWithBlock:&stru_10184E400];
  [(CRLPathEditor *)self invalidateKnobs];
LABEL_21:
}

- (void)split:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Divide Path" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E420 filterWithBlock:&stru_10184E440];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)join:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Join" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E460 filterWithBlock:&stru_10184E480];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)close:(id)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Close Path" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E4A0 filterWithBlock:&stru_10184E4C0];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (BOOL)pathHasSelectedNodes:(unint64_t)a3
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [v3 infosForCurrentSelectionPath];
  v33 = [v4 countByEnumeratingWithState:&v39 objects:v54 count:16];
  if (v33)
  {
    v5 = &off_1018DC000;
    v6 = *v40;
    v32 = *v40;
    do
    {
      v7 = 0;
      do
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v3 repForInfo:*(*(&v39 + 1) + 8 * v7)];
        v9 = objc_opt_class();
        v15 = sub_1003038E0(v8, v9, 1, v10, v11, v12, v13, v14, v5[393]);

        if (!v15)
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013404B8();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v45 = v16;
            v46 = 2082;
            v47 = "[CRLPathEditor pathHasSelectedNodes:]";
            v48 = 2082;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m";
            v50 = 1024;
            v51 = 1445;
            v52 = 2082;
            v53 = "rep";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013404E0();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v28 = v18;
            v29 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v45 = v16;
            v46 = 2114;
            v47 = v29;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v19 = [NSString stringWithUTF8String:"[CRLPathEditor pathHasSelectedNodes:]"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1445 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];
        }

        v21 = [v15 editablePathSource];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = [v21 nodes];
        v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          v26 = a3;
          while (2)
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v22);
              }

              if ([*(*(&v35 + 1) + 8 * i) isSelected])
              {
                if (!--v26)
                {

                  v30 = 1;
                  goto LABEL_30;
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v7 = v7 + 1;
        v6 = v32;
        v5 = &off_1018DC000;
      }

      while (v7 != v33);
      v30 = 0;
      v33 = [v4 countByEnumeratingWithState:&v39 objects:v54 count:16];
    }

    while (v33);
  }

  else
  {
    v30 = 0;
  }

LABEL_30:

  return v30;
}

- (void)alignNodesByEdge:(int)a3
{
  if (a3 > 5)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_10184E6F0 + a3);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:0 table:@"UndoStrings"];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100278E34;
  v8[3] = &unk_10184E520;
  v9 = a3;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v8 filterWithBlock:&stru_10184E540];
  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)distributeNodesByEdge:(int)a3
{
  if (a3 > 5)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_10184E720 + a3);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:0 table:@"UndoStrings"];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279334;
  v8[3] = &unk_10184E520;
  v9 = a3;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v8 filterWithBlock:&stru_10184E5A0];
  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Delete" value:0 table:@"UndoStrings"];

  if (BYTE1(self->_lastGhostPosition.y) == 1)
  {
    [(CRLPathEditor *)self p_commandGroupSafeEndEditing];
  }

  else if ([(CRLPathEditor *)self pathHasSelectedNodes:1])
  {
    v36 = v4;
    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v8 = [v7 commandController];

    v33 = v8;
    [v8 openGroup];
    v35 = v6;
    [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v6 usingBlock:&stru_10184E5C0 filterWithBlock:&stru_10184E5E0];
    v38 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v37 = +[NSMutableSet set];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = self;
    v9 = [(CRLBoardItemEditor *)self boardItems];
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [v38 repForInfo:v14];
          v16 = objc_opt_class();
          v22 = sub_1003038E0(v15, v16, 1, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLPathEditableRep);

          v23 = [v22 editablePathSource];
          v24 = [v23 deletingSelectedNodesWillDeleteShape];

          if (v24)
          {
            [v37 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);
    }

    if ([v37 count])
    {
      v25 = v34;
      v26 = [(CRLBoardItemEditor *)v34 interactiveCanvasController];
      v27 = [v26 canvasEditor];

      v28 = [v27 canvasEditorHelper];
      v29 = [v28 selectionBehaviorForDeletingBoardItems:v37];

      v30 = [v27 selectionPathWithInfos:v37];
      v31 = [(CRLBoardItemEditor *)v34 editorController];
      [v31 setSelectionPath:v30];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100279C5C;
      v40[3] = &unk_10184E608;
      v40[4] = v34;
      v4 = v36;
      v41 = v36;
      [v31 enumerateEditorsOnStackUsingBlock:v40];
    }

    else
    {
      v29 = 0;
      v4 = v36;
      v25 = v34;
    }

    [(CRLPathEditor *)v25 invalidateKnobs];
    [v33 closeGroupWithSelectionBehavior:v29];

    v6 = v35;
  }

  else if ([(CRLPathEditor *)self isCreatingPath])
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100279CF4;
    v39[3] = &unk_10184E630;
    v39[4] = self;
    [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v6 usingBlock:v39 filterWithBlock:&stru_10184E650];
    v32 = [(CRLPathEditor *)self creatingRep];
    [v32 invalidateKnobs];
  }
}

- (void)nudgeByDelta:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Move" value:0 table:@"UndoStrings"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279E70;
  v8[3] = &unk_10184E670;
  *&v8[4] = x;
  *&v8[5] = y;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v8 filterWithBlock:&stru_10184E690];
}

- (BOOL)pathReturnsTrueForSelector:(SEL)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(CRLBoardItemEditor *)self boardItems];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [v5 repForInfo:*(*(&v23 + 1) + 8 * v10)];
      v12 = objc_opt_class();
      v13 = 1;
      v19 = sub_1003038E0(v11, v12, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLPathEditableRep);

      v20 = [v19 editablePathSource];
      v21 = [v20 performSelector:a3];

      if (v21)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v21.receiver = self;
  v21.super_class = CRLPathEditor;
  v6 = [(CRLStyledEditor *)&v21 canPerformEditorAction:a3 withSender:a4];
  if ("alignDrawablesByLeftEdge:" == a3 || "alignDrawablesByRightEdge:" == a3 || "alignDrawablesByTopEdge:" == a3 || "alignDrawablesByBottomEdge:" == a3 || "alignDrawablesByHorizontalCenter:" == a3 || "alignDrawablesByVerticalCenter:" == a3)
  {
    v12 = self;
    v13 = 2;
LABEL_55:
    v16 = [(CRLPathEditor *)v12 pathHasSelectedNodes:v13];
    goto LABEL_56;
  }

  if ("distributeDrawablesHorizontally:" == a3 || "distributeDrawablesVertically:" == a3)
  {
    v12 = self;
    v13 = 3;
    goto LABEL_55;
  }

  if ("makeSmooth:" == a3 || "makeSharp:" == a3 || "makeBezier:" == a3)
  {
    goto LABEL_60;
  }

  if ("split:" == a3)
  {
    v18 = "canCutAtSelectedNodes";
LABEL_66:
    v16 = [(CRLPathEditor *)self pathReturnsTrueForSelector:v18];
LABEL_56:
    if (v16)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if ("join:" == a3)
  {
    v18 = "canConnectSelectedNodes";
    goto LABEL_66;
  }

  if ("close:" == a3)
  {
    v18 = "canCloseSelectedNodes";
    goto LABEL_66;
  }

  v14 = 1;
  if ("moveUp:" == a3)
  {
    return v14;
  }

  if ("moveDown:" == a3)
  {
    return v14;
  }

  if ("moveLeft:" == a3)
  {
    return v14;
  }

  if ("moveRight:" == a3)
  {
    return v14;
  }

  v14 = 1;
  if ("moveUpAndModifySelection:" == a3 || "moveDownAndModifySelection:" == a3 || "moveLeftAndModifySelection:" == a3 || "moveRightAndModifySelection:" == a3)
  {
    return v14;
  }

  if ("deleteBackward:" == a3 || "deleteForward:" == a3 || "deleteToBeginningOfLine:" == a3 || "deleteToEndOfLine:" == a3 || "deleteToBeginningOfParagraph:" == a3 || "deleteToEndOfParagraph:" == a3 || "deleteWordBackward:" == a3 || "deleteWordForward:" == a3 || "delete:" == a3)
  {
LABEL_60:
    if ([(CRLPathEditor *)self pathHasSelectedNodes:1])
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v14 = 1;
  if ("insertTab:" != a3 && "insertBacktab:" != a3)
  {
    v15 = v6;
    if ("selectParent:" == a3)
    {
      v19 = [(CRLBoardItemEditor *)self editorController];
      v20 = [v19 mostSpecificCurrentEditorOfClass:objc_opt_class()];

      if (v20)
      {
        v14 = 1;
      }

      else
      {
        v14 = v15;
      }
    }

    else
    {
      v14 = 1;
      if ("cancelOperation:" != a3 && "insertNewline:" != a3)
      {
        if ("pasteStyle:" == a3)
        {
          return -BYTE1(self->_lastGhostPosition.y);
        }

        else if ("duplicate:" == a3)
        {
          return -1;
        }

        else if (BYTE1(self->_lastGhostPosition.y))
        {
          return -1;
        }

        else
        {
          return v6;
        }
      }
    }
  }

  return v14;
}

- (void)p_selectNextNode:(int64_t)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [NSMutableArray alloc];
  v6 = [(CRLBoardItemEditor *)self boardItems];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v50 = self;
  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v78 count:16];
  v52 = v7;
  v53 = v4;
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    do
    {
      v12 = 0;
      do
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v4 repForInfo:*(*(&v62 + 1) + 8 * v12)];
        v14 = objc_opt_class();
        v20 = sub_1003038E0(v13, v14, 1, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLPathEditableRep);

        if (v20)
        {
          v21 = [v20 editablePathSource];
          [v7 addObject:v21];
        }

        else
        {
          v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101340508();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v69 = v22;
            v70 = 2082;
            v71 = "[CRLPathEditor p_selectNextNode:]";
            v72 = 2082;
            v73 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m";
            v74 = 1024;
            v75 = 1868;
            v76 = 2082;
            v77 = "rep";
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101340530();
          }

          v24 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v26 = v24;
            v27 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v69 = v22;
            v70 = 2114;
            v71 = v27;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v21 = [NSString stringWithUTF8String:"[CRLPathEditor p_selectNextNode:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v21 file:v25 lineNumber:1868 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

          v7 = v52;
          v4 = v53;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v10);
  }

  v28 = [v7 objectEnumerator];
  if (a3 == 1)
  {
    v29 = [v7 reverseObjectEnumerator];

    v28 = v29;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v31)
  {

LABEL_48:
    if (a3)
    {
      v47 = [v7 lastObject];
      v48 = [v47 nodes];
      [v48 lastObject];
    }

    else
    {
      v47 = [v7 firstObject];
      v48 = [v47 nodes];
      [v48 firstObject];
    }
    v49 = ;

    [v49 setSelected:1];
LABEL_52:

    goto LABEL_53;
  }

  v32 = v31;
  LOBYTE(v33) = 0;
  v34 = 0;
  v35 = *v59;
  while (2)
  {
    for (i = 0; i != v32; i = i + 1)
    {
      if (*v59 != v35)
      {
        objc_enumerationMutation(v30);
      }

      if (v33)
      {
        v47 = v30;
        goto LABEL_52;
      }

      v37 = *(*(&v58 + 1) + 8 * i);
      v38 = [v37 nodes];
      v39 = [v38 objectEnumerator];

      if (a3 == 1)
      {
        v40 = [v37 nodes];
        v41 = [v40 reverseObjectEnumerator];

        v39 = v41;
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v39;
      v33 = [v42 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v33)
      {
        v43 = *v55;
        while (2)
        {
          for (j = 0; j != v33; j = j + 1)
          {
            if (*v55 != v43)
            {
              objc_enumerationMutation(v42);
            }

            v45 = *(*(&v54 + 1) + 8 * j);
            if (v34)
            {
              LOBYTE(v33) = 1;
              [*(*(&v54 + 1) + 8 * j) setSelected:1];
              v34 = 1;
              goto LABEL_41;
            }

            v46 = [*(*(&v54 + 1) + 8 * j) isSelected];
            v34 = v46;
            if (v46)
            {
              [v45 setSelected:0];
            }
          }

          v33 = [v42 countByEnumeratingWithState:&v54 objects:v66 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

LABEL_41:
        v7 = v52;
        v4 = v53;
      }
    }

    v32 = [v30 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v32)
    {
      continue;
    }

    break;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  [(CRLPathEditor *)v50 invalidateKnobs];
}

- (CGPoint)p_snappedPointForCanvasBackgroundAlignmentProvider:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v7 = [v6 canvasBackground];

  v8 = [v7 alignmentProvider];
  if (v8)
  {
    v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v10 = [v9 isCanvasBackgroundAlignmentSnappingEnabled];

    if (v10)
    {
      [v8 alignmentPointForPoint:{x, y}];
      x = v11;
      y = v12;
    }
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

@end