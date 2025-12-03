@interface CRLPathKnobTracker
- (CRLPathKnobTracker)initWithRep:(id)rep creatingKnobAtPoint:(CGPoint)point initialPoint:(BOOL)initialPoint reversed:(BOOL)reversed;
- (CRLPathKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (id)editablePathSource;
- (int)reflectionStateForBendingNodeType:(int64_t)type originalReflectionState:(int)state;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
- (void)moveSmoothControlKnob:(id)knob to:(CGPoint)to;
- (void)p_closeCommandGroupIfNeeded;
- (void)startWithNodeCreationBlock:(id)block;
- (void)updateKnobs;
@end

@implementation CRLPathKnobTracker

- (CRLPathKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  v41.receiver = self;
  v41.super_class = CRLPathKnobTracker;
  repCopy = rep;
  knobCopy = knob;
  v5 = [(CRLCanvasKnobTracker *)&v41 initWithRep:repCopy knob:?];
  if (v5)
  {
    if (([repCopy conformsToProtocol:&OBJC_PROTOCOL___CRLPathEditableRep] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137EEE8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137EF10();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137EF98();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = [NSString stringWithUTF8String:"[CRLPathKnobTracker initWithRep:knob:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathKnobTracker.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:48 isFatal:0 description:"reps conforming to CRLPathEditableRep protocol only valid for path node knob tracker"];
    }

    if ([knobCopy tag] != 17 && objc_msgSend(knobCopy, "tag") != 18 && objc_msgSend(knobCopy, "tag") != 19 && objc_msgSend(knobCopy, "tag") != 20 && objc_msgSend(knobCopy, "tag") != 22 && objc_msgSend(knobCopy, "tag") != 21 && objc_msgSend(knobCopy, "tag") != 23 && objc_msgSend(knobCopy, "tag") != 24)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137EFC0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137EFE8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137F070();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v10 = [NSString stringWithUTF8String:"[CRLPathKnobTracker initWithRep:knob:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathKnobTracker.mm"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:49 isFatal:0 description:"wrong knob for path node knob tracker"];
    }

    if ([knobCopy tag] == 22 || objc_msgSend(knobCopy, "tag") == 24)
    {
      pathKnob = [(CRLPathKnobTracker *)v5 pathKnob];
      [(CRLPathKnobTracker *)v5 p_createDelegateIfNecessary];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1004989A4;
      v38[3] = &unk_10185D010;
      v12 = v5;
      v39 = v12;
      v13 = pathKnob;
      v40 = v13;
      [(CRLPathKnobTracker *)v12 startWithNodeCreationBlock:v38];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [(CRLCanvasKnobTracker *)v12 rep];
      knobs = [v14 knobs];

      v16 = [knobs countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v16)
      {
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(knobs);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = objc_opt_class();
            v21 = sub_100014370(v20, v19);
            v22 = v21;
            if (v21)
            {
              nodeIndex = [v21 nodeIndex];
              if (nodeIndex == [v13 nodeIndex] + 1)
              {
                subpathIndex = [v22 subpathIndex];
                if (subpathIndex == [v13 subpathIndex] && objc_msgSend(v22, "tag") == 17)
                {
                  [(CRLCanvasKnobTracker *)v12 setKnob:v22];

                  goto LABEL_44;
                }
              }
            }
          }

          v16 = [knobs countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_44:
    }
  }

  knob = [(CRLCanvasKnobTracker *)v5 knob];
  v26 = knob == 0;

  if (v26)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F098();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F0C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F148();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v28 = [NSString stringWithUTF8String:"[CRLPathKnobTracker initWithRep:knob:]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathKnobTracker.mm"];
    [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:96 isFatal:0 description:"knob tracker should never have a null knob"];
  }

  return v5;
}

- (CRLPathKnobTracker)initWithRep:(id)rep creatingKnobAtPoint:(CGPoint)point initialPoint:(BOOL)initialPoint reversed:(BOOL)reversed
{
  y = point.y;
  x = point.x;
  repCopy = rep;
  v49.receiver = self;
  v49.super_class = CRLPathKnobTracker;
  v11 = [(CRLCanvasKnobTracker *)&v49 init];
  v12 = v11;
  if (v11)
  {
    [(CRLCanvasKnobTracker *)v11 setRep:repCopy];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100499178;
    v43[3] = &unk_101867000;
    v13 = v12;
    v44 = v13;
    initialPointCopy = initialPoint;
    v45 = x;
    v46 = y;
    reversedCopy = reversed;
    [(CRLPathKnobTracker *)v13 startWithNodeCreationBlock:v43];
    editablePathSource = [(CRLPathKnobTracker *)v13 editablePathSource];
    subpaths = [editablePathSource subpaths];
    lastObject = [subpaths lastObject];

    subpaths2 = [editablePathSource subpaths];
    v16 = [subpaths2 count];

    if (reversed)
    {
      v17 = 0;
    }

    else
    {
      nodes = [lastObject nodes];
      v19 = [nodes count];

      v17 = v19 - 1;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [(CRLCanvasKnobTracker *)v13 rep];
    knobs = [v20 knobs];

    v22 = [knobs countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v22)
    {
      v23 = v16 - 1;
      v24 = *v40;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(knobs);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = objc_opt_class();
          v28 = sub_100014370(v27, v26);
          v29 = v28;
          if (v28 && [v28 subpathIndex] == v23 && objc_msgSend(v29, "nodeIndex") == v17)
          {
            [(CRLCanvasKnobTracker *)v13 setKnob:v29];

            goto LABEL_17;
          }
        }

        v22 = [knobs countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    [(CRLPathKnobTracker *)v13 setIsCreatingNode:1];
    knob = [(CRLCanvasKnobTracker *)v13 knob];
    v31 = knob == 0;

    if (v31)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137F170();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137F198();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137F220();
      }

      v32 = off_1019EDA68;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v33 = [NSString stringWithUTF8String:"[CRLPathKnobTracker initWithRep:creatingKnobAtPoint:initialPoint:reversed:]"];
      v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathKnobTracker.mm"];
      [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:149 isFatal:0 description:"should have created a knob, but got nil"];
    }
  }

  return v12;
}

- (void)startWithNodeCreationBlock:(id)block
{
  blockCopy = block;
  v4 = [(CRLCanvasKnobTracker *)self icc];
  commandController = [v4 commandController];

  if (![(CRLPathKnobTracker *)self didOpenGroup])
  {
    [commandController openGroup];
  }

  [commandController enableProgressiveEnqueuingInCurrentGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Add Point" value:0 table:@"UndoStrings"];
  [commandController setCurrentGroupActionString:v7];

  pathRep = [(CRLPathKnobTracker *)self pathRep];
  [pathRep dynamicOperationDidBeginWithRealTimeCommands:0];
  [pathRep dynamicMovePathKnobDidBegin];
  blockCopy[2]();
  [pathRep dynamicMovePathKnobDidEndWithTracker:0];
  [pathRep dynamicOperationDidEnd];
  [pathRep invalidateKnobs];
  layout = [pathRep layout];
  [layout invalidateFrame];

  layout2 = [pathRep layout];
  [layout2 validate];

  [(CRLPathKnobTracker *)self setDidOpenGroup:1];
  self->mCreatedNode = 1;
}

- (id)editablePathSource
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  editablePathSource = [v2 editablePathSource];

  return editablePathSource;
}

- (void)updateKnobs
{
  editablePathSource = [(CRLPathKnobTracker *)self editablePathSource];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(CRLCanvasKnobTracker *)self rep];
  knobs = [v3 knobs];
  knob = [(CRLCanvasKnobTracker *)self knob];
  v6 = [knobs arrayByAddingObject:knob];

  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        if (v12)
        {
          subpaths = [editablePathSource subpaths];
          v14 = [subpaths objectAtIndex:{objc_msgSend(v12, "subpathIndex")}];

          nodes = [v14 nodes];
          v16 = [nodes objectAtIndex:{objc_msgSend(v12, "nodeIndex")}];
          [v12 setNode:v16];

          if (([v14 isClosed] & 1) != 0 || (v17 = objc_msgSend(v12, "nodeIndex"), v17 + 1 < objc_msgSend(nodes, "count")))
          {
            v18 = [nodes objectAtIndex:{(objc_msgSend(v12, "nodeIndex") + 1) % objc_msgSend(nodes, "count")}];
            [v12 setNextNode:v18];
          }

          if (([v14 isClosed] & 1) != 0 || objc_msgSend(v12, "nodeIndex"))
          {
            if ([v12 nodeIndex])
            {
              nodeIndex = [v12 nodeIndex];
            }

            else
            {
              nodeIndex = [nodes count];
            }

            v20 = [nodes objectAtIndex:nodeIndex - 1];
            [v12 setPrevNode:v20];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);
  }

  if ([(CRLPathKnobTracker *)self didOpenGroup]|| [(CRLPathKnobTracker *)self isCreatingNode])
  {
    pathKnob = [(CRLPathKnobTracker *)self pathKnob];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = [(CRLCanvasKnobTracker *)self rep];
    knobs2 = [v22 knobs];

    v24 = [knobs2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = *v36;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(knobs2);
          }

          v27 = *(*(&v35 + 1) + 8 * j);
          v28 = objc_opt_class();
          v29 = sub_100014370(v28, v27);
          v30 = v29;
          if (v29)
          {
            subpathIndex = [v29 subpathIndex];
            if (subpathIndex == [pathKnob subpathIndex])
            {
              nodeIndex2 = [v30 nodeIndex];
              if (nodeIndex2 == [pathKnob nodeIndex])
              {
                v33 = [v30 tag];
                if (v33 == [pathKnob tag])
                {
                  [(CRLCanvasKnobTracker *)self setKnob:v30];

                  goto LABEL_34;
                }
              }
            }
          }
        }

        v24 = [knobs2 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

LABEL_34:
  }
}

- (void)beginMovingKnob
{
  v55.receiver = self;
  v55.super_class = CRLPathKnobTracker;
  [(CRLCanvasKnobTracker *)&v55 beginMovingKnob];
  [(CRLPathKnobTracker *)self p_createDelegateIfNecessary];
  v44 = [(CRLCanvasKnobTracker *)self icc];
  pathKnob = [(CRLPathKnobTracker *)self pathKnob];
  v46 = [(CRLCanvasKnobTracker *)self rep];
  [v44 addDecorator:self];
  [v46 dynamicMovePathKnobDidBegin];
  [(CRLPathKnobTracker *)self updateKnobs];
  editablePathSource = [(CRLPathKnobTracker *)self editablePathSource];
  v3 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:editablePathSource];
  mMorphInfo = self->mMorphInfo;
  self->mMorphInfo = v3;

  if (!self->mToggleNodeType)
  {
    goto LABEL_13;
  }

  v5 = [(CRLCanvasKnobTracker *)self icc];
  commandController = [v5 commandController];

  if (![(CRLPathKnobTracker *)self didOpenGroup])
  {
    [commandController openGroup];
  }

  if (-[CRLPathKnobTracker createBezierNode](self, "createBezierNode") && ([pathKnob node], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type") == 2, v7, !v8))
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Make Bézier Point" value:0 table:@"UndoStrings"];
    [commandController setCurrentGroupActionString:v13];
    v14 = 2;
  }

  else
  {
    node = [pathKnob node];
    if ([node type] == 3)
    {
    }

    else
    {
      node2 = [pathKnob node];
      v11 = [node2 type] == 2;

      if (!v11)
      {
        v12 = +[NSBundle mainBundle];
        v13 = [v12 localizedStringForKey:@"Make Smooth Point" value:0 table:@"UndoStrings"];
        [commandController setCurrentGroupActionString:v13];
        v14 = 3;
        goto LABEL_12;
      }
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Make Sharp Point" value:0 table:@"UndoStrings"];
    [commandController setCurrentGroupActionString:v13];
    v14 = 1;
  }

LABEL_12:

  [(CRLPathKnobTracker *)self setDidOpenGroup:1];
  node3 = [pathKnob node];
  prevNode = [pathKnob prevNode];
  nextNode = [pathKnob nextNode];
  [editablePathSource toggleNode:node3 toType:v14 prevNode:prevNode nextNode:nextNode];

LABEL_13:
  node4 = [pathKnob node];
  self->mInitialReflectState = [node4 reflectedState];

  prevNode2 = [pathKnob prevNode];
  self->mPrevInitialReflectState = [prevNode2 reflectedState];

  prevNode3 = [pathKnob prevNode];
  self->mPrevNodeOriginalType = [prevNode3 type];

  node5 = [pathKnob node];
  self->mNodeOriginalType = [node5 type];

  nextNode2 = [pathKnob nextNode];
  self->mNextNodeOriginalType = [nextNode2 type];

  memset(&v54, 0, sizeof(v54));
  v23 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v23 layout];
  v25 = layout;
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  pathRep = [(CRLPathKnobTracker *)self pathRep];
  v27 = pathRep;
  if (pathRep)
  {
    [pathRep naturalToEditablePathSpaceTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v54, &t1, &t2);

  [pathKnob position];
  self->mOriginalUnscaledKnobPosition = vaddq_f64(*&v54.tx, vmlaq_n_f64(vmulq_n_f64(*&v54.c, v28), *&v54.a, v29));
  node6 = [pathKnob node];
  [node6 setSelected:1];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  knobs = [v46 knobs];
  v32 = [knobs countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v32)
  {
    v33 = *v49;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(knobs);
        }

        v35 = *(*(&v48 + 1) + 8 * i);
        v36 = objc_opt_class();
        v37 = sub_100014370(v36, v35);
        v38 = v37;
        if (v37)
        {
          node7 = [v37 node];
          node8 = [pathKnob node];
          if (node7 == node8)
          {
            goto LABEL_30;
          }

          node9 = [v38 node];
          if (([node9 isSelected] & 1) == 0)
          {

LABEL_30:
            goto LABEL_31;
          }

          v42 = [v38 tag] == 17;

          if (v42)
          {
            node10 = [v38 node];
            [node10 setSelected:0];

            [v38 updateImage];
          }
        }

LABEL_31:
      }

      v32 = [knobs countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v32);
  }

  [v46 invalidateKnobs];
  [pathKnob updateImage];
}

- (int)reflectionStateForBendingNodeType:(int64_t)type originalReflectionState:(int)state
{
  if (type == 1)
  {
    state = 0;
  }

  if (type == 3)
  {
    return 1;
  }

  else
  {
    return state;
  }
}

- (void)moveSmoothControlKnob:(id)knob to:(CGPoint)to
{
  y = to.y;
  x = to.x;
  knobCopy = knob;
  if ([knobCopy tag] == 21)
  {
    node = [knobCopy node];
    [knobCopy nextNode];
  }

  else
  {
    node = [knobCopy prevNode];
    [knobCopy node];
  }
  v6 = ;
  v7 = node;
  [node nodePoint];
  v9 = v8;
  v11 = v10;
  [node outControlPoint];
  if (sub_10011ECC8(v9, v11, v12, v13))
  {
    [v6 inControlPoint];
    v15 = v14;
    v17 = v16;
    [v6 nodePoint];
    if (sub_10011ECC8(v15, v17, v18, v19))
    {
      [node nodePoint];
      v21 = v20;
      v23 = v22;
      [v6 nodePoint];
      [node setOutControlPoint:{sub_100120ABC(v21, v23, v24, v25, 0.333333333)}];
      [node nodePoint];
      v27 = v26;
      v29 = v28;
      [v6 nodePoint];
      [v6 setInControlPoint:{sub_100120ABC(v27, v29, v30, v31, 0.666666667)}];
    }
  }

  [node nodePoint];
  v33 = v32;
  v35 = v34;
  [node outControlPoint];
  v37 = v36;
  v39 = v38;
  [v6 inControlPoint];
  v41 = v40;
  v43 = v42;
  [v6 nodePoint];
  v45 = v44;
  v47 = v46;
  if ([knobCopy tag] == 23)
  {
    [knobCopy tValue];
    if (v48 > 0.5)
    {
      v49 = v35;
    }

    else
    {
      v49 = v47;
    }

    if (v48 > 0.5)
    {
      v50 = v33;
    }

    else
    {
      v50 = v45;
    }

    v174 = v50;
    v177 = v49;
    if (v48 <= 0.5)
    {
      v51 = v41;
    }

    else
    {
      v43 = v39;
      v51 = v37;
    }

    if (v48 <= 0.5)
    {
      v52 = v33;
    }

    else
    {
      v35 = v47;
      v52 = v45;
    }

    if (v48 > 0.5)
    {
      v48 = 1.0 - v48;
    }

    v169 = v48;
    v53 = sub_100120074(x - v52, y - v35);
    [knobCopy bendParameter];
    v55 = v54;
    [knobCopy bendParameter];
    v165 = v56;
    v57 = v53;
    v58 = v52 - v51;
    v59 = v51 - v174;
    v60 = v51;
    v61 = v52;
    v62 = v55 * v57;
    v63 = sub_100120074(v58, v35 - v43);
    v64 = v63 + sub_100120074(v59, v43 - v177);
    v65 = sqrt(v62 / v64) / v165;
    v66 = v169;
    *&v63 = fminf(v65, fmaxf(v66, 0.33333));
    v67 = sub_10011F340(v61, v35, -1.0);
    v166 = v68;
    v170 = v67;
    v156 = v60;
    v157 = v43;
    v69 = sub_10011F340(v60, v43, 3.0);
    v71 = v70;
    v72 = sub_10011F340(v61 + v69 - v174, v35 + v70 - v177, (*&v63 * (*&v63 * *&v63)));
    v159 = v73;
    v161 = v72;
    v74 = sub_10011F340(v61, v35, -3.0);
    v76 = sub_10011F340(v74 - v69, v75 - v71, (*&v63 * *&v63));
    v78 = v77;
    v158 = v61;
    v79 = v61;
    v80 = v35;
    v81 = sub_10011F340(v79, v35, (*&v63 * 3.0));
    v83 = v82;
    type = [node type];
    v85 = y + v166 + v159 + v78 + v83;
    v86 = ((*&v63 + -1.0) * ((*&v63 * 3.0) * (*&v63 + -1.0)));
    v87 = (x + v170 + v161 + v76 + v81) / v86;
    v88 = v85 / v86;
    if (type == 1 && [v6 type] == 1)
    {
      v89 = v158;
      v90 = v80;
      v91 = v177 - v80;
      v92 = sub_100120074(v174 - v158, v177 - v80);
      v93 = (v174 - v158) / v92;
      v94 = v91 / v92;
      v95 = sub_10011F328(v87 - v158, v88 - v90, v93, v94);
      v96 = v95;
      v97 = sub_10011F340(v93, v94, v95);
      if (v96 < 0.0 || v96 > v92)
      {
        v100 = v177;
      }

      else
      {
        v149 = v158 + v97;
        v150 = v90 + v98;
        v151 = sub_100120074(v158 + v97 - v87, v90 + v98 - v88);
        v152 = [(CRLCanvasKnobTracker *)self icc];
        [v152 viewScale];
        v154 = v151 * v153;

        v155 = v154 < 10.0;
        v100 = v177;
        if (v155)
        {
          v88 = v150;
          v87 = v149;
        }
      }
    }

    else
    {
      v100 = v177;
      v89 = v158;
      v90 = v80;
    }

    if (sub_10011F010(v89, v90, v87, v88, v174, v100) && sub_10011F010(v89, v90, v156, v157, v174, v100))
    {
      [v7 nodePoint];
      [v7 setOutControlPoint:?];
      [v6 nodePoint];
      [v6 setInControlPoint:?];
      goto LABEL_42;
    }

    [knobCopy tValue];
    if (v122 <= 0.5)
    {
      v148 = [(CRLPathKnobTracker *)self reflectionStateForBendingNodeType:self->mPrevNodeOriginalType originalReflectionState:self->mPrevInitialReflectState];
      prevNode = [knobCopy prevNode];
      [prevNode setOutControlPoint:v148 reflect:0 constrain:{v87, v88}];
    }

    else
    {
      v123 = [(CRLPathKnobTracker *)self reflectionStateForBendingNodeType:self->mNodeOriginalType originalReflectionState:self->mInitialReflectState];
      prevNode = [knobCopy node];
      [prevNode setInControlPoint:v123 reflect:0 constrain:{v87, v88}];
    }
  }

  else if ([knobCopy tag] == 21)
  {
    mNodeOriginalType = self->mNodeOriginalType;
    prevNode = [knobCopy node];
    v178 = sub_10011F340(v33, v35, -1.0);
    v175 = y + v103;
    v104 = sub_10011F340(v41, v43, 3.0);
    v167 = v105;
    v171 = v104;
    v160 = v35 + v105 - v47;
    v162 = v33 + v104 - v45;
    v106 = sub_100120074(x - v33, y - v35);
    v107 = v106 * 3.0;
    v108 = sub_100120074(v33 - v41, v35 - v43);
    v109 = v108 + sub_100120074(v41 - v45, v43 - v47);
    v110 = fminf(sqrtf(v107 / v109) / 3.0, 0.5);
    v111 = sub_10011F340(v162, v160, (v110 * (v110 * v110)));
    v113 = v175 + v112;
    v114 = sub_10011F340(v33, v35, -3.0);
    v116 = sub_10011F340(v114 - v171, v115 - v167, (v110 * v110));
    v118 = v113 + v117;
    v119 = sub_10011F340(v33, v35, (v110 * 3.0));
    v121 = ((v110 + -1.0) * ((v110 * 3.0) * (v110 + -1.0)));
    [prevNode setOutControlPoint:mNodeOriginalType == 3 reflect:0 constrain:{(x + v178 + v111 + v116 + v119) / v121, (v118 + v120) / v121}];
  }

  else
  {
    if ([knobCopy tag] != 20)
    {
      goto LABEL_42;
    }

    v124 = self->mNodeOriginalType;
    prevNode = [knobCopy node];
    v172 = v35 - y;
    v125 = sub_10011F340(v33, v35, -1.0);
    v163 = v126;
    v127 = sub_10011F340(v37, v39, 3.0);
    v176 = v128;
    v179 = v127;
    v164 = v47 + v163 + v128;
    v168 = v45 + v125 + v127;
    v129 = sub_100120074(x - v45, y - v47);
    v130 = v129 * 3.0;
    v131 = sub_100120074(v33 - v37, v35 - v39);
    v132 = v131 + sub_100120074(v37 - v45, v39 - v47);
    v133 = 1.0 - fminf(sqrtf(v130 / v132) / 3.0, 0.33333);
    v181 = sub_10011F340(v168, v164, (v133 * (v133 * v133)));
    v173 = v172 + v134;
    v135 = sub_10011F340(v33, v35, 3.0);
    v137 = v136;
    v138 = sub_10011F340(v37, v39, 6.0);
    v140 = sub_10011F340(v135 - v138, v137 - v139, (v133 * v133));
    v142 = v173 + v141;
    v143 = sub_10011F340(v33, v35, -3.0);
    v145 = sub_10011F340(v179 + v143, v176 + v144, v133);
    v147 = ((v133 + -1.0) * (v133 * (v133 * 3.0)));
    [prevNode setInControlPoint:v124 == 3 reflect:0 constrain:{(v33 - x + v181 + v140 + v145) / v147, (v142 + v146) / v147}];
  }

LABEL_42:
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController = [v6 interactiveCanvasController];
  canvasBackground = [interactiveCanvasController canvasBackground];

  alignmentProvider = [canvasBackground alignmentProvider];
  if (!alignmentProvider)
  {
    goto LABEL_9;
  }

  v10 = [(CRLCanvasKnobTracker *)self rep];
  interactiveCanvasController2 = [v10 interactiveCanvasController];
  if (([interactiveCanvasController2 isCanvasBackgroundAlignmentSnappingEnabled] & 1) == 0)
  {
    goto LABEL_7;
  }

  pathKnob = [(CRLPathKnobTracker *)self pathKnob];
  node = [pathKnob node];
  if ([node type] != 1)
  {

LABEL_7:
    goto LABEL_8;
  }

  pathKnob2 = [(CRLPathKnobTracker *)self pathKnob];
  v15 = [pathKnob2 tag];

  if (v15 == 23)
  {
    goto LABEL_9;
  }

  v16 = [(CRLCanvasKnobTracker *)self rep];
  [v16 convertKnobPositionToUnscaledCanvas:{x, y}];
  v18 = v17;
  v20 = v19;

  [alignmentProvider alignmentPointForPoint:{v18, v20}];
  v22 = v21;
  v24 = v23;
  v10 = [(CRLCanvasKnobTracker *)self rep];
  [v10 convertKnobPositionFromUnscaledCanvas:{v22, v24}];
  x = v25;
  y = v26;
LABEL_8:

LABEL_9:
  editablePathSource = [(CRLPathKnobTracker *)self editablePathSource];
  pathKnob3 = [(CRLPathKnobTracker *)self pathKnob];
  memset(&v85, 0, sizeof(v85));
  pathRep = [(CRLPathKnobTracker *)self pathRep];
  v30 = pathRep;
  if (pathRep)
  {
    [pathRep naturalToEditablePathSpaceTransform];
  }

  else
  {
    memset(&v85, 0, sizeof(v85));
  }

  t1 = v85;
  CGAffineTransformInvert(&v84, &t1);
  v81 = v84.tx + y * v84.c + v84.a * x;
  v79 = v84.ty + y * v84.d + v84.b * x;
  if ([(CRLPathKnobTracker *)self constrain])
  {
    memset(&v84, 0, sizeof(v84));
    v31 = [(CRLCanvasKnobTracker *)self rep];
    layout = [v31 layout];
    v33 = layout;
    if (layout)
    {
      [layout transformInRoot];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    t2 = v85;
    CGAffineTransformConcat(&v84, &t1, &t2);

    t2 = v84;
    memset(&t1, 0, sizeof(t1));
    CGAffineTransformInvert(&t1, &t2);
    v34 = vaddq_f64(*&v84.tx, vmlaq_n_f64(vmulq_n_f64(*&v84.c, v79), *&v84.a, v81));
    v35 = self->mOriginalUnscaledKnobPosition.x;
    v36 = sub_10011F31C(v34.f64[0], v34.f64[1], v35);
    v38 = sub_100120FD4(v36, v37);
    v40 = sub_10011F334(v38, v39, v35);
    v79 = t1.ty + v41 * t1.d + t1.b * v40;
    v81 = t1.tx + v41 * t1.c + t1.a * v40;
  }

  if ([(CRLPathKnobTracker *)self isCreatingNode]&& [(CRLPathKnobTracker *)self createBezierNode])
  {
    v42 = +[NSUserDefaults standardUserDefaults];
    if ([v42 BOOLForKey:@"TSDCreateBezierNodesByDefault"])
    {
    }

    else
    {
      toggleMirrored = [(CRLPathKnobTracker *)self toggleMirrored];

      if ((toggleMirrored & 1) == 0)
      {
        v45 = 2;
        goto LABEL_27;
      }
    }
  }

  initialReflectState = [(CRLPathKnobTracker *)self initialReflectState];
  if (((initialReflectState == 0) ^ [(CRLPathKnobTracker *)self toggleMirrored]))
  {
    v45 = 0;
  }

  else
  {
    initialReflectState2 = [(CRLPathKnobTracker *)self initialReflectState];
    if ((initialReflectState2 != 2) != [(CRLPathKnobTracker *)self toggleMirrorMagnitude])
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }
  }

LABEL_27:
  if ([(CRLPathKnobTracker *)self isCreatingNode])
  {
    node2 = [pathKnob3 node];
    [node2 nodePoint];
    v50 = sub_100120090(v81, v80, v48, v49);

    v51 = [(CRLCanvasKnobTracker *)self icc];
    [v51 viewScale];
    v53 = v50 * v52;

    if (v53 <= 10.0)
    {
      mNodeOriginalType = self->mNodeOriginalType;
    }

    else if ([(CRLPathKnobTracker *)self createBezierNode])
    {
      mNodeOriginalType = 2;
    }

    else
    {
      mNodeOriginalType = 3;
    }

    node3 = [pathKnob3 node];
    type = [node3 type];

    if (mNodeOriginalType == type)
    {
      v59 = 0;
    }

    else
    {
      node4 = [pathKnob3 node];
      [node4 setType:mNodeOriginalType];

      v61 = [(CRLCanvasKnobTracker *)self rep];
      [v61 invalidateKnobs];

      v59 = mNodeOriginalType != 2;
    }

    if (mNodeOriginalType == 2)
    {
      node5 = [pathKnob3 node];
      [node5 setOutControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];

      v63 = [(CRLCanvasKnobTracker *)self rep];
      [v63 invalidateKnobs];

      v59 = 1;
    }

    v64 = [(CRLCanvasKnobTracker *)self icc];
    editorController = [v64 editorController];
    v66 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

    v67 = [(CRLCanvasKnobTracker *)self rep];
    [v67 convertNaturalPointToUnscaledCanvas:{v81, v80}];
    [v66 updateGhostForNodeCreationAtPoint:?];

    if (!v59)
    {
      goto LABEL_52;
    }

LABEL_51:
    [editablePathSource morphWithMorphInfo:self->mMorphInfo];
    goto LABEL_52;
  }

  v55 = [pathKnob3 tag];
  if (v55 <= 19)
  {
    if (v55 == 17)
    {
      node6 = [pathKnob3 node];
      [node6 nodePoint];
      v70 = sub_10011F31C(v81, v80, v69);
      v72 = v71;

      [editablePathSource offsetSelectedNodesByDelta:{v70, v72}];
    }

    else
    {
      if (v55 == 18)
      {
        node7 = [pathKnob3 node];
        [node7 setInControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];
      }

      else
      {
        if (v55 != 19)
        {
          goto LABEL_52;
        }

        node7 = [pathKnob3 node];
        [node7 setOutControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];
      }
    }

    goto LABEL_51;
  }

  if ((v55 - 20) < 2 || v55 == 23)
  {
    [(CRLPathKnobTracker *)self moveSmoothControlKnob:pathKnob3 to:v81, v80];
  }

LABEL_52:
  pathRep2 = [(CRLPathKnobTracker *)self pathRep];
  [pathRep2 dynamicallyMovedPathKnobTo:self withTracker:{v81, v80}];

  v74 = [(CRLCanvasKnobTracker *)self rep];
  v75 = [(CRLCanvasKnobTracker *)self rep];
  knobs = [v75 knobs];
  [v74 updatePositionsOfKnobs:knobs];

  v77 = [(CRLCanvasKnobTracker *)self rep];
  layout2 = [v77 layout];
  [layout2 adjustCustomMagnetPositions];
}

- (void)endMovingKnob
{
  v22.receiver = self;
  v22.super_class = CRLPathKnobTracker;
  [(CRLCanvasKnobTracker *)&v22 endMovingKnob];
  pathRep = [(CRLPathKnobTracker *)self pathRep];
  [pathRep dynamicMovePathKnobDidEndWithTracker:self];

  v4 = [(CRLCanvasKnobTracker *)self rep];
  layout = [v4 layout];
  commandsForAdjustingMagnetsFromClineLayouts = [layout commandsForAdjustingMagnetsFromClineLayouts];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = commandsForAdjustingMagnetsFromClineLayouts;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [(CRLCanvasKnobTracker *)self icc];
        commandController = [v12 commandController];
        [commandController enqueueCommand:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  mMorphInfo = self->mMorphInfo;
  self->mMorphInfo = 0;

  [(CRLPathKnobTracker *)self p_closeCommandGroupIfNeeded];
  v15 = [(CRLCanvasKnobTracker *)self icc];
  editorController = [v15 editorController];
  v17 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (v17)
  {
    [v17 endMovingKnob];
  }
}

- (void)p_closeCommandGroupIfNeeded
{
  if ([(CRLPathKnobTracker *)self didOpenGroup])
  {
    v3 = [(CRLCanvasKnobTracker *)self icc];
    commandController = [v3 commandController];

    if (!commandController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10137F248();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10137F25C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137F2E4();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v6 = [NSString stringWithUTF8String:"[CRLPathKnobTracker p_closeCommandGroupIfNeeded]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPathKnobTracker.mm"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:647 isFatal:0 description:"Can't close command group. This is bad news."];
    }

    [commandController closeGroup];
  }
}

@end