@interface CRLPathEditor
- (BOOL)canAddKnobsForRep:(id)rep;
- (BOOL)canClosePathToKnob:(id)knob;
- (BOOL)canContinuePathFromKnob:(id)knob reversed:(BOOL *)reversed;
- (BOOL)canEndPathCreationWithKnob:(id)knob;
- (BOOL)p_shouldKeepEditingInfos:(id)infos;
- (BOOL)pathHasSelectedNodes:(unint64_t)nodes;
- (BOOL)pathReturnsTrueForSelector:(SEL)selector;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (CGPoint)constrainedUnscaledPointForPathCreation:(CGPoint)creation;
- (CGPoint)p_snappedPointForCanvasBackgroundAlignmentProvider:(CGPoint)provider;
- (CRLPathEditableRep)creatingRep;
- (NSArray)decoratorOverlayRenderables;
- (id)newTrackerForKnob:(id)knob forRep:(id)rep;
- (id)p_ghostRenderable;
- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addKnobsForRep:(id)rep toArray:(id)array;
- (void)alignNodesByEdge:(int)edge;
- (void)close:(id)close;
- (void)closeLastSubpath;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)deselectAll:(id)all;
- (void)didBecomeCurrentEditorForEditorController:(id)controller;
- (void)didResignTextInputEditor;
- (void)distributeNodesByEdge:(int)edge;
- (void)editPathsOnPathEditableRepsWithActionString:(id)string usingBlock:(id)block filterWithBlock:(id)withBlock;
- (void)endMovingKnob;
- (void)endPathEditing;
- (void)invalidateKnobs;
- (void)join:(id)join;
- (void)nudgeByDelta:(CGPoint)delta;
- (void)p_commandGroupSafeEndEditing;
- (void)p_commandWillBeEnqueued:(id)enqueued;
- (void)p_didScroll:(id)scroll;
- (void)p_groupWillBeOpened:(id)opened;
- (void)p_resetAfterRebase;
- (void)p_selectNextNode:(int64_t)node;
- (void)p_setGhostStrokeColor;
- (void)selectAll:(id)all;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)setCreatingRep:(id)rep;
- (void)setIsCreatingPath:(BOOL)path;
- (void)split:(id)split;
- (void)toggleSelectedNodeToType:(int64_t)type;
- (void)updateGhost;
- (void)updateGhostForNodeCreationAtPoint:(CGPoint)point;
- (void)updatePositionsOfKnobs:(id)knobs forRep:(id)rep;
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

- (void)didBecomeCurrentEditorForEditorController:(id)controller
{
  controllerCopy = controller;
  [(CRLPathEditor *)self invalidateKnobs];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [interactiveCanvasController addDecorator:self];

  if ([(CRLPathEditor *)self isCreatingPath])
  {
    v6 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [v6 addObserver:self selector:"p_didScroll:" name:@"CRLCanvasDidScrollNotification" object:interactiveCanvasController2];
  }

  v8.receiver = self;
  v8.super_class = CRLPathEditor;
  [(CRLBoardItemEditor *)&v8 didBecomeCurrentEditorForEditorController:controllerCopy];
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
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    [(CRLPathEditor *)self p_closeCommandGroupBookkeepingAndUnregisterForOpenGroupNotifications];
    [*(&self->_willBecomeCurrentEditorAgain + 1) setCommitSelectionPath:0];
    [*(&self->_willBecomeCurrentEditorAgain + 1) setPersistableForwardSelectionPath:0];
    [commandController closeGroup];
  }

  [(CRLPathEditor *)self invalidateKnobs];
  interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [interactiveCanvasController2 removeDecorator:self];

  if ((BYTE1(self->_creatingInfo) & 1) == 0)
  {
    v6 = *(&self->_willBecomeCurrentEditorAgain + 1);
    *(&self->_willBecomeCurrentEditorAgain + 1) = 0;
  }

  if ([(CRLPathEditor *)self isCreatingPath])
  {
    v8 = +[NSNotificationCenter defaultCenter];
    interactiveCanvasController3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [v8 removeObserver:self name:@"CRLCanvasDidScrollNotification" object:interactiveCanvasController3];
  }
}

- (void)invalidateKnobs
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v5 = [boardItems countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(boardItems);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [interactiveCanvasController repsForInfo:{v9, 0}];
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
      v6 = [boardItems countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

- (BOOL)canAddKnobsForRep:(id)rep
{
  repCopy = rep;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  info = [repCopy info];

  LOBYTE(repCopy) = [boardItems containsObject:info];
  return repCopy;
}

- (void)addKnobsForRep:(id)rep toArray:(id)array
{
  repCopy = rep;
  arrayCopy = array;
  editablePathSource = [repCopy editablePathSource];
  if (editablePathSource)
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v39 = editablePathSource;
    obj = [editablePathSource subpaths];
    v42 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v42)
    {
      v49 = 0;
      v41 = *v62;
      v48 = repCopy;
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
          nodes = [v9 nodes];
          v46 = v9;
          v43 = v8;
          if ([v9 isClosed])
          {
            lastObject = [nodes lastObject];
          }

          else
          {
            lastObject = 0;
          }

          v60 = 0u;
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v12 = nodes;
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
                v17 = [[CRLPathKnob alloc] initWithNode:v16 onRep:repCopy];
                [(CRLPathKnob *)v17 setNodeIndex:v15];
                [(CRLPathKnob *)v17 setSubpathIndex:v49];
                v18 = arrayCopy;
                [arrayCopy addObject:v17];
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
                  if (lastObject)
                  {
                    [v16 nodePoint];
                    v21 = v20;
                    v23 = v22;
                    [v16 inControlPoint];
                    if (v21 != v25 || v23 != v24)
                    {
                      v26 = [[CRLPathKnob alloc] initWithInControlForNode:v16 onRep:repCopy];

                      [(CRLPathKnob *)v26 setNodeIndex:v15];
                      [(CRLPathKnob *)v26 setSubpathIndex:v49];
                      [v18 addObject:v26];
                      v17 = v26;
                      repCopy = v48;
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
                      v33 = [[CRLPathKnob alloc] initWithOutControlForNode:v16 onRep:repCopy];

                      [(CRLPathKnob *)v33 setNodeIndex:v15];
                      [(CRLPathKnob *)v33 setSubpathIndex:v49];
                      [v18 addObject:v33];
                      v17 = v33;
                      repCopy = v48;
                    }
                  }
                }

                v50[0] = _NSConcreteStackBlock;
                v50[1] = 3221225472;
                v50[2] = sub_1002759A0;
                v50[3] = &unk_10184E158;
                v50[4] = v16;
                v51 = repCopy;
                v52 = v19;
                v34 = lastObject;
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

                lastObject = v16;

                v14 = v14 + 1;
                v15 = v13;
                repCopy = v48;
                arrayCopy = v18;
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

    [(CRLPathEditor *)self updatePositionsOfKnobs:arrayCopy forRep:repCopy];
    editablePathSource = v39;
  }
}

- (void)updatePositionsOfKnobs:(id)knobs forRep:(id)rep
{
  knobsCopy = knobs;
  repCopy = rep;
  v7 = repCopy;
  v8 = 0uLL;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (repCopy)
  {
    [repCopy naturalToEditablePathSpaceTransform];
    v8 = 0uLL;
  }

  v21 = v8;
  v22 = v8;
  v19 = v8;
  v20 = v8;
  v9 = knobsCopy;
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

- (id)newTrackerForKnob:(id)knob forRep:(id)rep
{
  repCopy = rep;
  knobCopy = knob;
  v7 = [[CRLPathKnobTracker alloc] initWithRep:repCopy knob:knobCopy];

  return v7;
}

- (void)editPathsOnPathEditableRepsWithActionString:(id)string usingBlock:(id)block filterWithBlock:(id)withBlock
{
  stringCopy = string;
  blockCopy = block;
  withBlockCopy = withBlock;
  [(CRLPathEditor *)self setCurrentCommandsPathRelated:1];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  [commandController openGroup];
  v28 = commandController;
  [commandController setCurrentGroupActionString:stringCopy];
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
        interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v18 = [interactiveCanvasController2 repForInfo:v16];
        v19 = objc_opt_class();
        v25 = sub_1003038E0(v18, v19, 1, v20, v21, v22, v23, v24, &OBJC_PROTOCOL___CRLPathEditableRep);

        if (v25 && withBlockCopy[2](withBlockCopy, v25))
        {
          [v25 dynamicOperationDidBeginWithRealTimeCommands:0];
          [v25 dynamicMovePathKnobDidBegin];
          editablePathSource = [v25 editablePathSource];
          v27 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:editablePathSource];
          blockCopy[2](blockCopy, v25);
          [editablePathSource morphWithMorphInfo:v27];
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

- (void)selectAll:(id)all
{
  v5 = +[NSBundle mainBundle];
  v4 = [v5 localizedStringForKey:@"Select All" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v4 usingBlock:&stru_10184E198 filterWithBlock:&stru_10184E1D8];
}

- (void)deselectAll:(id)all
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
  creatingRep = [(CRLPathEditor *)self creatingRep];
  layout = [creatingRep layout];
  stroke = [layout stroke];

  if (stroke)
  {
    color = [stroke color];
    [color alphaComponent];
    v7 = [color colorWithAlphaComponent:v6 * 0.3];
  }

  else
  {
    v7 = [CRLColor colorWithWhite:0.0 alpha:0.3];
  }

  cGColor = [v7 CGColor];
  p_ghostRenderable = [(CRLPathEditor *)self p_ghostRenderable];
  [p_ghostRenderable setStrokeColor:cGColor];
}

- (NSArray)decoratorOverlayRenderables
{
  [(CRLPathEditor *)self p_setGhostStrokeColor];
  p_ghostRenderable = [(CRLPathEditor *)self p_ghostRenderable];
  v6 = p_ghostRenderable;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (CRLPathEditableRep)creatingRep
{
  if (*(&self->_hoveringKnob + 1))
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v4 = [interactiveCanvasController repForInfo:*(&self->_hoveringKnob + 1) createIfNeeded:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCreatingRep:(id)rep
{
  repCopy = rep;
  v5 = objc_opt_class();
  info = [repCopy info];

  obj = sub_100014370(v5, info);

  v7 = obj;
  if (obj != *(&self->_hoveringKnob + 1))
  {
    objc_storeStrong((&self->_hoveringKnob + 1), obj);
    v7 = obj;
  }
}

- (void)setIsCreatingPath:(BOOL)path
{
  if (BYTE1(self->_insertSelectionBehavior) != path)
  {
    pathCopy = path;
    BYTE1(self->_insertSelectionBehavior) = path;
    v7 = +[NSNotificationCenter defaultCenter];
    [(CRLBoardItemEditor *)self interactiveCanvasController];
    if (pathCopy)
      v6 = {;
      [v7 addObserver:self selector:"p_didScroll:" name:@"CRLCanvasDidScrollNotification" object:v6];
    }

    else
      v6 = {;
      [v7 removeObserver:self name:@"CRLCanvasDidScrollNotification" object:v6];
    }
  }
}

- (void)p_didScroll:(id)scroll
{
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if (*(&self->_hoveringKnob + 1))
    {
      interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v5 = [interactiveCanvasController repForInfo:*(&self->_hoveringKnob + 1) createIfNeeded:0];

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

- (CGPoint)constrainedUnscaledPointForPathCreation:(CGPoint)creation
{
  y = creation.y;
  x = creation.x;
  v6 = objc_opt_class();
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v29 = 0;
  v8 = [interactiveCanvasController hitKnobAtPoint:1 inputType:&v29 returningRep:{x, y}];
  v9 = sub_100014370(v6, v8);

  if (!v9)
  {
    creatingRep = [(CRLPathEditor *)self creatingRep];
    editablePathSource = [creatingRep editablePathSource];

    nodes = [editablePathSource nodes];
    if ([nodes count])
    {
      creatingRep2 = [(CRLPathEditor *)self creatingRep];
      [creatingRep2 convertNaturalPointFromUnscaledCanvas:{x, y}];
      v15 = v14;
      v17 = v16;
      if ([(CRLPathEditor *)self isCreatingReversed])
      {
        [nodes objectAtIndexedSubscript:0];
      }

      else
      {
        [nodes lastObject];
      }
      v18 = ;
      [v18 nodePoint];
      v20 = v19;
      v21 = sub_10011F31C(v15, v17, v19);
      v23 = sub_100120FD4(v21, v22);
      [creatingRep2 convertNaturalPointToUnscaledCanvas:{sub_10011F334(v23, v24, v20)}];
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
    creatingRep = [(CRLPathEditor *)self creatingRep];
    editablePathSource = [creatingRep editablePathSource];

    nodes = [editablePathSource nodes];
    v5 = [nodes count];

    if (v5 >= 2)
    {
      interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
      commandController = [interactiveCanvasController commandController];

      [(CRLPathEditor *)self p_closeCommandGroupBookkeepingAndUnregisterForOpenGroupNotifications];
      [commandController closeGroup];
      v8 = *(&self->_willBecomeCurrentEditorAgain + 1);
      *(&self->_willBecomeCurrentEditorAgain + 1) = 0;
    }
  }
}

- (void)p_resetAfterRebase
{
  [(CRLPathEditor *)self setResetAfterRebase:0];
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v4 = [boardItems count];

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

  boardItems2 = [(CRLBoardItemEditor *)self boardItems];
  anyObject = [boardItems2 anyObject];
  v10 = *(&self->_hoveringKnob + 1);
  *(&self->_hoveringKnob + 1) = anyObject;

  BYTE1(self->_insertSelectionBehavior) = 1;
}

- (void)updateGhostForNodeCreationAtPoint:(CGPoint)point
{
  [(CRLPathEditor *)self p_snappedPointForCanvasBackgroundAlignmentProvider:point.x, point.y];
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
  creatingRep = [(CRLPathEditor *)self creatingRep];
  if (!creatingRep || ![(CRLPathEditor *)self isCreatingPath])
  {
    editablePathSource = 0;
    goto LABEL_7;
  }

  editablePathSource = [creatingRep editablePathSource];
  bezierPath = [editablePathSource bezierPath];
  elementCount = [bezierPath elementCount];

  if (elementCount < 1)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v7 = objc_opt_class();
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = (&self->_ghostPathRenderable + 1);
  v52 = 0;
  v10 = [interactiveCanvasController hitKnobAtPoint:1 inputType:&v52 returningRep:{*(&self->_ghostPathRenderable + 1), *(&self->_lastGhostPosition.x + 1)}];
  v11 = sub_100014370(v7, v10);

  subpaths = [editablePathSource subpaths];
  lastObject = [subpaths lastObject];

  if (([lastObject isClosed] & 1) == 0)
  {
    nodes = [lastObject nodes];
    if ([nodes count])
    {
    }

    else
    {
      subpaths2 = [editablePathSource subpaths];
      v18 = [subpaths2 count];

      if (v18 >= 2)
      {
        subpaths3 = [editablePathSource subpaths];
        subpaths4 = [editablePathSource subpaths];
        v21 = [subpaths3 objectAtIndex:{objc_msgSend(subpaths4, "count") - 2}];

        v14 = [v21 isClosed] ^ 1;
        lastObject = v21;
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
    v15 = editablePathSource;
    goto LABEL_9;
  }

  v15 = [editablePathSource copy];

  subpaths5 = [v15 subpaths];
  lastObject2 = [subpaths5 lastObject];

  v24 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:v15];
  if (v11 && [(CRLPathEditor *)self canClosePathToKnob:v11])
  {
    firstNode = [v15 firstNode];
    if ([firstNode type] == 3)
    {
      [firstNode setType:1];
    }

    [v15 closePath];
  }

  else if ([(CRLPathEditor *)self isCreatingReversed])
  {
    nodes2 = [lastObject2 nodes];
    firstNode = [nodes2 mutableCopy];

    [creatingRep convertNaturalPointFromUnscaledCanvas:{*v9, *(&self->_lastGhostPosition.x + 1)}];
    v27 = [CRLBezierNode bezierNodeWithPoint:?];
    [firstNode insertObject:v27 atIndex:0];

    [lastObject2 setNodes:firstNode];
  }

  else
  {
    [creatingRep convertNaturalPointFromUnscaledCanvas:{*v9, *(&self->_lastGhostPosition.x + 1)}];
    firstNode = [CRLBezierNode bezierNodeWithPoint:?];
    [lastObject2 addNode:firstNode];
  }

  [v15 morphWithMorphInfo:v24];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v28 = +[CRLBezierPath bezierPath];
  nodes3 = [lastObject2 nodes];
  v30 = [nodes3 count] - 1;

  nodes4 = [lastObject2 nodes];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10027722C;
  v51[3] = &unk_10184E2B8;
  v51[4] = v30;
  v32 = [nodes4 indexOfObjectWithOptions:2 passingTest:v51];

  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  [lastObject2 appendToBezierPath:v28 selectedNodesOnly:0 fromIndex:v33];
  elementCount2 = [v28 elementCount];
  if (elementCount2)
  {
    v35 = elementCount2;
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
  interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  [interactiveCanvasController2 viewScale];
  v44 = v43;

  layout = [creatingRep layout];
  v46 = layout;
  if (layout)
  {
    [layout pureTransformInRoot];
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
    creatingRep = [(CRLPathEditor *)self creatingRep];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Close Path" value:0 table:@"UndoStrings"];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1002773D8;
    v7[3] = &unk_10184E300;
    v8 = creatingRep;
    v6 = creatingRep;
    [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E2D8 filterWithBlock:v7];
  }
}

- (BOOL)canContinuePathFromKnob:(id)knob reversed:(BOOL *)reversed
{
  knobCopy = knob;
  if ([knobCopy tag] == 17)
  {
    pathEditableRep = [knobCopy pathEditableRep];
    editablePathSource = [pathEditableRep editablePathSource];

    subpaths = [editablePathSource subpaths];
    v9 = [subpaths objectAtIndexedSubscript:{objc_msgSend(knobCopy, "subpathIndex")}];

    nodeIndex = [knobCopy nodeIndex];
    nodes = [v9 nodes];
    v12 = nodeIndex == [nodes count] - 1 || objc_msgSend(knobCopy, "nodeIndex") == 0;

    if (reversed)
    {
      *reversed = [knobCopy nodeIndex] == 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canClosePathToKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if ([knobCopy tag] == 17)
    {
      pathEditableRep = [knobCopy pathEditableRep];
      creatingRep = [(CRLPathEditor *)self creatingRep];

      if (pathEditableRep == creatingRep)
      {
        pathEditableRep2 = [knobCopy pathEditableRep];
        editablePathSource = [pathEditableRep2 editablePathSource];

        subpathIndex = [knobCopy subpathIndex];
        subpaths = [editablePathSource subpaths];
        v13 = [subpaths count] - 1;

        if (subpathIndex != v13)
        {
          v7 = 0;
LABEL_16:

          goto LABEL_5;
        }

        subpaths2 = [editablePathSource subpaths];
        lastObject = [subpaths2 lastObject];

        LODWORD(subpaths2) = [(CRLPathEditor *)self isCreatingReversed];
        nodeIndex = [knobCopy nodeIndex];
        v17 = nodeIndex;
        if (subpaths2)
        {
          nodes = [lastObject nodes];
          v19 = [nodes count] - 1;

          if (v17 != v19)
          {
            goto LABEL_13;
          }
        }

        else if (nodeIndex)
        {
          goto LABEL_13;
        }

        if (([lastObject isClosed] & 1) == 0)
        {
          nodes2 = [lastObject nodes];
          v7 = [nodes2 count] > 1;

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

- (BOOL)canEndPathCreationWithKnob:(id)knob
{
  knobCopy = knob;
  if ([(CRLPathEditor *)self isCreatingPath])
  {
    if ([knobCopy tag] == 17)
    {
      pathEditableRep = [knobCopy pathEditableRep];
      creatingRep = [(CRLPathEditor *)self creatingRep];

      if (pathEditableRep == creatingRep)
      {
        pathEditableRep2 = [knobCopy pathEditableRep];
        editablePathSource = [pathEditableRep2 editablePathSource];

        subpathIndex = [knobCopy subpathIndex];
        subpaths = [editablePathSource subpaths];
        v13 = [subpaths count] - 1;

        if (subpathIndex != v13)
        {
          LOBYTE(v7) = 0;
LABEL_14:

          goto LABEL_5;
        }

        subpaths2 = [editablePathSource subpaths];
        lastObject = [subpaths2 lastObject];

        LODWORD(subpaths2) = [(CRLPathEditor *)self isCreatingReversed];
        nodeIndex = [knobCopy nodeIndex];
        v17 = nodeIndex;
        if (subpaths2)
        {
          if (nodeIndex)
          {
LABEL_9:
            LOBYTE(v7) = 0;
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          nodes = [lastObject nodes];
          v19 = [nodes count] - 1;

          if (v17 != v19)
          {
            goto LABEL_9;
          }
        }

        v7 = [lastObject isClosed] ^ 1;
        goto LABEL_13;
      }
    }
  }

  LOBYTE(v7) = 0;
LABEL_5:

  return v7;
}

- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  pathCopy = path;
  editorsCopy = editors;
  v16 = objc_opt_class();
  v17 = sub_100014370(v16, toSelectionCopy);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CRLPathEditor;
    v18 = [(CRLBoardItemEditor *)&v20 selectionWillChangeFromSelection:selectionCopy toSelection:toSelectionCopy withFlags:flags inSelectionPath:pathCopy withNewEditors:editorsCopy];
  }

  return v18;
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, toSelectionCopy);
  if (!v11)
  {
    v12.receiver = self;
    v12.super_class = CRLPathEditor;
    [(CRLBoardItemEditor *)&v12 selectionDidChangeFromSelection:selectionCopy toSelection:toSelectionCopy withFlags:flags];
  }
}

- (BOOL)p_shouldKeepEditingInfos:(id)infos
{
  infosCopy = infos;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v5 = [boardItems isEqual:infosCopy];

  LOBYTE(boardItems) = 1;
  if (infosCopy && (v5 & 1) == 0 && [infosCopy count])
  {
    if ([infosCopy count] == 1 && (-[CRLBoardItemEditor boardItems](self, "boardItems"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
    {
      v9 = objc_opt_class();
      anyObject = [infosCopy anyObject];
      v11 = sub_100013F00(v9, anyObject);

      boardItems = [(CRLBoardItemEditor *)self boardItems];
      anyObject2 = [boardItems anyObject];

      v13 = [v11 id];
      v14 = [anyObject2 id];
      LODWORD(boardItems) = [v13 isEqual:v14];

      if (boardItems)
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
      LOBYTE(boardItems) = 0;
    }
  }

  return boardItems;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  pathCopy = path;
  editorsCopy = editors;
  if ([(CRLPathEditor *)self isMemberOfClass:objc_opt_class()])
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v12 = [interactiveCanvasController infosForSelectionPath:pathCopy];

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
    v13 = [(CRLBoardItemEditor *)&v15 shouldRemainOnEditorStackForSelection:selectionCopy inSelectionPath:pathCopy withNewEditors:editorsCopy];
  }

  return v13;
}

- (void)p_commandWillBeEnqueued:(id)enqueued
{
  enqueuedCopy = enqueued;
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

- (void)p_groupWillBeOpened:(id)opened
{
  openedCopy = opened;
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
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v7 = interactiveCanvasController;
  if (BYTE1(self->_lastGhostPosition.y) == 1)
  {
    canvasEditor = [interactiveCanvasController canvasEditor];
    v5 = [canvasEditor selectionPathWithInfos:0];
    editorController = [v7 editorController];
    [editorController setSelectionPath:v5];
  }

  else
  {
    [interactiveCanvasController endEditing];
  }
}

- (void)toggleSelectedNodeToType:(int64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      v5 = @"Make Sharp Point";
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (type != 2)
  {
    if (type != 4)
    {
      if (type != 3)
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
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1344 isFatal:0 description:"Unexpected node type %li", type];

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
  v10[4] = type;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v10 filterWithBlock:&stru_10184E400];
  [(CRLPathEditor *)self invalidateKnobs];
LABEL_21:
}

- (void)split:(id)split
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Divide Path" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E420 filterWithBlock:&stru_10184E440];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)join:(id)join
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Join" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E460 filterWithBlock:&stru_10184E480];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)close:(id)close
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Close Path" value:0 table:@"UndoStrings"];
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v5 usingBlock:&stru_10184E4A0 filterWithBlock:&stru_10184E4C0];

  [(CRLPathEditor *)self invalidateKnobs];
}

- (BOOL)pathHasSelectedNodes:(unint64_t)nodes
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
  v33 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v39 objects:v54 count:16];
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
          objc_enumerationMutation(infosForCurrentSelectionPath);
        }

        v8 = [interactiveCanvasController repForInfo:*(*(&v39 + 1) + 8 * v7)];
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

        editablePathSource = [v15 editablePathSource];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        nodes = [editablePathSource nodes];
        v23 = [nodes countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          nodesCopy = nodes;
          while (2)
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(nodes);
              }

              if ([*(*(&v35 + 1) + 8 * i) isSelected])
              {
                if (!--nodesCopy)
                {

                  v30 = 1;
                  goto LABEL_30;
                }
              }
            }

            v24 = [nodes countByEnumeratingWithState:&v35 objects:v43 count:16];
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
      v33 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v39 objects:v54 count:16];
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

- (void)alignNodesByEdge:(int)edge
{
  if (edge > 5)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_10184E6F0 + edge);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:0 table:@"UndoStrings"];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100278E34;
  v8[3] = &unk_10184E520;
  edgeCopy = edge;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v8 filterWithBlock:&stru_10184E540];
  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)distributeNodesByEdge:(int)edge
{
  if (edge > 5)
  {
    v7 = 0;
  }

  else
  {
    v5 = *(&off_10184E720 + edge);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:v5 value:0 table:@"UndoStrings"];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100279334;
  v8[3] = &unk_10184E520;
  edgeCopy = edge;
  [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v7 usingBlock:v8 filterWithBlock:&stru_10184E5A0];
  [(CRLPathEditor *)self invalidateKnobs];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Delete" value:0 table:@"UndoStrings"];

  if (BYTE1(self->_lastGhostPosition.y) == 1)
  {
    [(CRLPathEditor *)self p_commandGroupSafeEndEditing];
  }

  else if ([(CRLPathEditor *)self pathHasSelectedNodes:1])
  {
    v36 = deleteCopy;
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    v33 = commandController;
    [commandController openGroup];
    v35 = v6;
    [(CRLPathEditor *)self editPathsOnPathEditableRepsWithActionString:v6 usingBlock:&stru_10184E5C0 filterWithBlock:&stru_10184E5E0];
    interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v37 = +[NSMutableSet set];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    selfCopy = self;
    boardItems = [(CRLBoardItemEditor *)self boardItems];
    v10 = [boardItems countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(boardItems);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [interactiveCanvasController2 repForInfo:v14];
          v16 = objc_opt_class();
          v22 = sub_1003038E0(v15, v16, 1, v17, v18, v19, v20, v21, &OBJC_PROTOCOL___CRLPathEditableRep);

          editablePathSource = [v22 editablePathSource];
          deletingSelectedNodesWillDeleteShape = [editablePathSource deletingSelectedNodesWillDeleteShape];

          if (deletingSelectedNodesWillDeleteShape)
          {
            [v37 addObject:v14];
          }
        }

        v11 = [boardItems countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);
    }

    if ([v37 count])
    {
      v25 = selfCopy;
      interactiveCanvasController3 = [(CRLBoardItemEditor *)selfCopy interactiveCanvasController];
      canvasEditor = [interactiveCanvasController3 canvasEditor];

      canvasEditorHelper = [canvasEditor canvasEditorHelper];
      v29 = [canvasEditorHelper selectionBehaviorForDeletingBoardItems:v37];

      v30 = [canvasEditor selectionPathWithInfos:v37];
      editorController = [(CRLBoardItemEditor *)selfCopy editorController];
      [editorController setSelectionPath:v30];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100279C5C;
      v40[3] = &unk_10184E608;
      v40[4] = selfCopy;
      deleteCopy = v36;
      v41 = v36;
      [editorController enumerateEditorsOnStackUsingBlock:v40];
    }

    else
    {
      v29 = 0;
      deleteCopy = v36;
      v25 = selfCopy;
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
    creatingRep = [(CRLPathEditor *)self creatingRep];
    [creatingRep invalidateKnobs];
  }
}

- (void)nudgeByDelta:(CGPoint)delta
{
  y = delta.y;
  x = delta.x;
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

- (BOOL)pathReturnsTrueForSelector:(SEL)selector
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v7 = [boardItems countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(boardItems);
      }

      v11 = [interactiveCanvasController repForInfo:*(*(&v23 + 1) + 8 * v10)];
      v12 = objc_opt_class();
      v13 = 1;
      v19 = sub_1003038E0(v11, v12, 1, v14, v15, v16, v17, v18, &OBJC_PROTOCOL___CRLPathEditableRep);

      editablePathSource = [v19 editablePathSource];
      v21 = [editablePathSource performSelector:selector];

      if (v21)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [boardItems countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  v21.receiver = self;
  v21.super_class = CRLPathEditor;
  v6 = [(CRLStyledEditor *)&v21 canPerformEditorAction:action withSender:sender];
  if ("alignDrawablesByLeftEdge:" == action || "alignDrawablesByRightEdge:" == action || "alignDrawablesByTopEdge:" == action || "alignDrawablesByBottomEdge:" == action || "alignDrawablesByHorizontalCenter:" == action || "alignDrawablesByVerticalCenter:" == action)
  {
    selfCopy2 = self;
    v13 = 2;
LABEL_55:
    v16 = [(CRLPathEditor *)selfCopy2 pathHasSelectedNodes:v13];
    goto LABEL_56;
  }

  if ("distributeDrawablesHorizontally:" == action || "distributeDrawablesVertically:" == action)
  {
    selfCopy2 = self;
    v13 = 3;
    goto LABEL_55;
  }

  if ("makeSmooth:" == action || "makeSharp:" == action || "makeBezier:" == action)
  {
    goto LABEL_60;
  }

  if ("split:" == action)
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

  if ("join:" == action)
  {
    v18 = "canConnectSelectedNodes";
    goto LABEL_66;
  }

  if ("close:" == action)
  {
    v18 = "canCloseSelectedNodes";
    goto LABEL_66;
  }

  v14 = 1;
  if ("moveUp:" == action)
  {
    return v14;
  }

  if ("moveDown:" == action)
  {
    return v14;
  }

  if ("moveLeft:" == action)
  {
    return v14;
  }

  if ("moveRight:" == action)
  {
    return v14;
  }

  v14 = 1;
  if ("moveUpAndModifySelection:" == action || "moveDownAndModifySelection:" == action || "moveLeftAndModifySelection:" == action || "moveRightAndModifySelection:" == action)
  {
    return v14;
  }

  if ("deleteBackward:" == action || "deleteForward:" == action || "deleteToBeginningOfLine:" == action || "deleteToEndOfLine:" == action || "deleteToBeginningOfParagraph:" == action || "deleteToEndOfParagraph:" == action || "deleteWordBackward:" == action || "deleteWordForward:" == action || "delete:" == action)
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
  if ("insertTab:" != action && "insertBacktab:" != action)
  {
    v15 = v6;
    if ("selectParent:" == action)
    {
      editorController = [(CRLBoardItemEditor *)self editorController];
      v20 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

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
      if ("cancelOperation:" != action && "insertNewline:" != action)
      {
        if ("pasteStyle:" == action)
        {
          return -BYTE1(self->_lastGhostPosition.y);
        }

        else if ("duplicate:" == action)
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

- (void)p_selectNextNode:(int64_t)node
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [NSMutableArray alloc];
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v7 = [v5 initWithCapacity:{objc_msgSend(boardItems, "count")}];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  selfCopy = self;
  boardItems2 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [boardItems2 countByEnumeratingWithState:&v62 objects:v78 count:16];
  v52 = v7;
  v53 = interactiveCanvasController;
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
          objc_enumerationMutation(boardItems2);
        }

        v13 = [interactiveCanvasController repForInfo:*(*(&v62 + 1) + 8 * v12)];
        v14 = objc_opt_class();
        v20 = sub_1003038E0(v13, v14, 1, v15, v16, v17, v18, v19, &OBJC_PROTOCOL___CRLPathEditableRep);

        if (v20)
        {
          editablePathSource = [v20 editablePathSource];
          [v7 addObject:editablePathSource];
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

          editablePathSource = [NSString stringWithUTF8String:"[CRLPathEditor p_selectNextNode:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:editablePathSource file:v25 lineNumber:1868 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

          v7 = v52;
          interactiveCanvasController = v53;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [boardItems2 countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v10);
  }

  objectEnumerator = [v7 objectEnumerator];
  if (node == 1)
  {
    reverseObjectEnumerator = [v7 reverseObjectEnumerator];

    objectEnumerator = reverseObjectEnumerator;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v30 = objectEnumerator;
  v31 = [v30 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (!v31)
  {

LABEL_48:
    if (node)
    {
      lastObject = [v7 lastObject];
      nodes = [lastObject nodes];
      [nodes lastObject];
    }

    else
    {
      lastObject = [v7 firstObject];
      nodes = [lastObject nodes];
      [nodes firstObject];
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
        lastObject = v30;
        goto LABEL_52;
      }

      v37 = *(*(&v58 + 1) + 8 * i);
      nodes2 = [v37 nodes];
      objectEnumerator2 = [nodes2 objectEnumerator];

      if (node == 1)
      {
        nodes3 = [v37 nodes];
        reverseObjectEnumerator2 = [nodes3 reverseObjectEnumerator];

        objectEnumerator2 = reverseObjectEnumerator2;
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = objectEnumerator2;
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

            isSelected = [*(*(&v54 + 1) + 8 * j) isSelected];
            v34 = isSelected;
            if (isSelected)
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
        interactiveCanvasController = v53;
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
  [(CRLPathEditor *)selfCopy invalidateKnobs];
}

- (CGPoint)p_snappedPointForCanvasBackgroundAlignmentProvider:(CGPoint)provider
{
  y = provider.y;
  x = provider.x;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasBackground = [interactiveCanvasController canvasBackground];

  alignmentProvider = [canvasBackground alignmentProvider];
  if (alignmentProvider)
  {
    interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    isCanvasBackgroundAlignmentSnappingEnabled = [interactiveCanvasController2 isCanvasBackgroundAlignmentSnappingEnabled];

    if (isCanvasBackgroundAlignmentSnappingEnabled)
    {
      [alignmentProvider alignmentPointForPoint:{x, y}];
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