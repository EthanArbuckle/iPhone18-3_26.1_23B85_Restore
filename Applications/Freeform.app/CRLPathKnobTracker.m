@interface CRLPathKnobTracker
- (CRLPathKnobTracker)initWithRep:(id)a3 creatingKnobAtPoint:(CGPoint)a4 initialPoint:(BOOL)a5 reversed:(BOOL)a6;
- (CRLPathKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (id)editablePathSource;
- (int)reflectionStateForBendingNodeType:(int64_t)a3 originalReflectionState:(int)a4;
- (void)beginMovingKnob;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)a3;
- (void)moveSmoothControlKnob:(id)a3 to:(CGPoint)a4;
- (void)p_closeCommandGroupIfNeeded;
- (void)startWithNodeCreationBlock:(id)a3;
- (void)updateKnobs;
@end

@implementation CRLPathKnobTracker

- (CRLPathKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v41.receiver = self;
  v41.super_class = CRLPathKnobTracker;
  v32 = a3;
  v33 = a4;
  v5 = [(CRLCanvasKnobTracker *)&v41 initWithRep:v32 knob:?];
  if (v5)
  {
    if (([v32 conformsToProtocol:&OBJC_PROTOCOL___CRLPathEditableRep] & 1) == 0)
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

    if ([v33 tag] != 17 && objc_msgSend(v33, "tag") != 18 && objc_msgSend(v33, "tag") != 19 && objc_msgSend(v33, "tag") != 20 && objc_msgSend(v33, "tag") != 22 && objc_msgSend(v33, "tag") != 21 && objc_msgSend(v33, "tag") != 23 && objc_msgSend(v33, "tag") != 24)
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

    if ([v33 tag] == 22 || objc_msgSend(v33, "tag") == 24)
    {
      v31 = [(CRLPathKnobTracker *)v5 pathKnob];
      [(CRLPathKnobTracker *)v5 p_createDelegateIfNecessary];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1004989A4;
      v38[3] = &unk_10185D010;
      v12 = v5;
      v39 = v12;
      v13 = v31;
      v40 = v13;
      [(CRLPathKnobTracker *)v12 startWithNodeCreationBlock:v38];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = [(CRLCanvasKnobTracker *)v12 rep];
      v15 = [v14 knobs];

      v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v16)
      {
        v17 = *v35;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v34 + 1) + 8 * i);
            v20 = objc_opt_class();
            v21 = sub_100014370(v20, v19);
            v22 = v21;
            if (v21)
            {
              v23 = [v21 nodeIndex];
              if (v23 == [v13 nodeIndex] + 1)
              {
                v24 = [v22 subpathIndex];
                if (v24 == [v13 subpathIndex] && objc_msgSend(v22, "tag") == 17)
                {
                  [(CRLCanvasKnobTracker *)v12 setKnob:v22];

                  goto LABEL_44;
                }
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
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

  v25 = [(CRLCanvasKnobTracker *)v5 knob];
  v26 = v25 == 0;

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

- (CRLPathKnobTracker)initWithRep:(id)a3 creatingKnobAtPoint:(CGPoint)a4 initialPoint:(BOOL)a5 reversed:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v38 = a3;
  v49.receiver = self;
  v49.super_class = CRLPathKnobTracker;
  v11 = [(CRLCanvasKnobTracker *)&v49 init];
  v12 = v11;
  if (v11)
  {
    [(CRLCanvasKnobTracker *)v11 setRep:v38];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100499178;
    v43[3] = &unk_101867000;
    v13 = v12;
    v44 = v13;
    v47 = a5;
    v45 = x;
    v46 = y;
    v48 = a6;
    [(CRLPathKnobTracker *)v13 startWithNodeCreationBlock:v43];
    v37 = [(CRLPathKnobTracker *)v13 editablePathSource];
    v14 = [v37 subpaths];
    v36 = [v14 lastObject];

    v15 = [v37 subpaths];
    v16 = [v15 count];

    if (a6)
    {
      v17 = 0;
    }

    else
    {
      v18 = [v36 nodes];
      v19 = [v18 count];

      v17 = v19 - 1;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [(CRLCanvasKnobTracker *)v13 rep];
    v21 = [v20 knobs];

    v22 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
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
            objc_enumerationMutation(v21);
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

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    [(CRLPathKnobTracker *)v13 setIsCreatingNode:1];
    v30 = [(CRLCanvasKnobTracker *)v13 knob];
    v31 = v30 == 0;

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

- (void)startWithNodeCreationBlock:(id)a3
{
  v11 = a3;
  v4 = [(CRLCanvasKnobTracker *)self icc];
  v5 = [v4 commandController];

  if (![(CRLPathKnobTracker *)self didOpenGroup])
  {
    [v5 openGroup];
  }

  [v5 enableProgressiveEnqueuingInCurrentGroup];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"Add Point" value:0 table:@"UndoStrings"];
  [v5 setCurrentGroupActionString:v7];

  v8 = [(CRLPathKnobTracker *)self pathRep];
  [v8 dynamicOperationDidBeginWithRealTimeCommands:0];
  [v8 dynamicMovePathKnobDidBegin];
  v11[2]();
  [v8 dynamicMovePathKnobDidEndWithTracker:0];
  [v8 dynamicOperationDidEnd];
  [v8 invalidateKnobs];
  v9 = [v8 layout];
  [v9 invalidateFrame];

  v10 = [v8 layout];
  [v10 validate];

  [(CRLPathKnobTracker *)self setDidOpenGroup:1];
  self->mCreatedNode = 1;
}

- (id)editablePathSource
{
  v2 = [(CRLCanvasKnobTracker *)self rep];
  v3 = [v2 editablePathSource];

  return v3;
}

- (void)updateKnobs
{
  v2 = [(CRLPathKnobTracker *)self editablePathSource];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(CRLCanvasKnobTracker *)self rep];
  v4 = [v3 knobs];
  v5 = [(CRLCanvasKnobTracker *)self knob];
  v6 = [v4 arrayByAddingObject:v5];

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
          v13 = [v2 subpaths];
          v14 = [v13 objectAtIndex:{objc_msgSend(v12, "subpathIndex")}];

          v15 = [v14 nodes];
          v16 = [v15 objectAtIndex:{objc_msgSend(v12, "nodeIndex")}];
          [v12 setNode:v16];

          if (([v14 isClosed] & 1) != 0 || (v17 = objc_msgSend(v12, "nodeIndex"), v17 + 1 < objc_msgSend(v15, "count")))
          {
            v18 = [v15 objectAtIndex:{(objc_msgSend(v12, "nodeIndex") + 1) % objc_msgSend(v15, "count")}];
            [v12 setNextNode:v18];
          }

          if (([v14 isClosed] & 1) != 0 || objc_msgSend(v12, "nodeIndex"))
          {
            if ([v12 nodeIndex])
            {
              v19 = [v12 nodeIndex];
            }

            else
            {
              v19 = [v15 count];
            }

            v20 = [v15 objectAtIndex:v19 - 1];
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
    v21 = [(CRLPathKnobTracker *)self pathKnob];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = [(CRLCanvasKnobTracker *)self rep];
    v23 = [v22 knobs];

    v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = *v36;
      while (2)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v35 + 1) + 8 * j);
          v28 = objc_opt_class();
          v29 = sub_100014370(v28, v27);
          v30 = v29;
          if (v29)
          {
            v31 = [v29 subpathIndex];
            if (v31 == [v21 subpathIndex])
            {
              v32 = [v30 nodeIndex];
              if (v32 == [v21 nodeIndex])
              {
                v33 = [v30 tag];
                if (v33 == [v21 tag])
                {
                  [(CRLCanvasKnobTracker *)self setKnob:v30];

                  goto LABEL_34;
                }
              }
            }
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
  v47 = [(CRLPathKnobTracker *)self pathKnob];
  v46 = [(CRLCanvasKnobTracker *)self rep];
  [v44 addDecorator:self];
  [v46 dynamicMovePathKnobDidBegin];
  [(CRLPathKnobTracker *)self updateKnobs];
  v45 = [(CRLPathKnobTracker *)self editablePathSource];
  v3 = [[CRLEditableBezierPathSourceMorphInfo alloc] initWithEditableBezierPathSource:v45];
  mMorphInfo = self->mMorphInfo;
  self->mMorphInfo = v3;

  if (!self->mToggleNodeType)
  {
    goto LABEL_13;
  }

  v5 = [(CRLCanvasKnobTracker *)self icc];
  v6 = [v5 commandController];

  if (![(CRLPathKnobTracker *)self didOpenGroup])
  {
    [v6 openGroup];
  }

  if (-[CRLPathKnobTracker createBezierNode](self, "createBezierNode") && ([v47 node], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type") == 2, v7, !v8))
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Make Bézier Point" value:0 table:@"UndoStrings"];
    [v6 setCurrentGroupActionString:v13];
    v14 = 2;
  }

  else
  {
    v9 = [v47 node];
    if ([v9 type] == 3)
    {
    }

    else
    {
      v10 = [v47 node];
      v11 = [v10 type] == 2;

      if (!v11)
      {
        v12 = +[NSBundle mainBundle];
        v13 = [v12 localizedStringForKey:@"Make Smooth Point" value:0 table:@"UndoStrings"];
        [v6 setCurrentGroupActionString:v13];
        v14 = 3;
        goto LABEL_12;
      }
    }

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Make Sharp Point" value:0 table:@"UndoStrings"];
    [v6 setCurrentGroupActionString:v13];
    v14 = 1;
  }

LABEL_12:

  [(CRLPathKnobTracker *)self setDidOpenGroup:1];
  v15 = [v47 node];
  v16 = [v47 prevNode];
  v17 = [v47 nextNode];
  [v45 toggleNode:v15 toType:v14 prevNode:v16 nextNode:v17];

LABEL_13:
  v18 = [v47 node];
  self->mInitialReflectState = [v18 reflectedState];

  v19 = [v47 prevNode];
  self->mPrevInitialReflectState = [v19 reflectedState];

  v20 = [v47 prevNode];
  self->mPrevNodeOriginalType = [v20 type];

  v21 = [v47 node];
  self->mNodeOriginalType = [v21 type];

  v22 = [v47 nextNode];
  self->mNextNodeOriginalType = [v22 type];

  memset(&v54, 0, sizeof(v54));
  v23 = [(CRLCanvasKnobTracker *)self rep];
  v24 = [v23 layout];
  v25 = v24;
  if (v24)
  {
    [v24 transformInRoot];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v26 = [(CRLPathKnobTracker *)self pathRep];
  v27 = v26;
  if (v26)
  {
    [v26 naturalToEditablePathSpaceTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v54, &t1, &t2);

  [v47 position];
  self->mOriginalUnscaledKnobPosition = vaddq_f64(*&v54.tx, vmlaq_n_f64(vmulq_n_f64(*&v54.c, v28), *&v54.a, v29));
  v30 = [v47 node];
  [v30 setSelected:1];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = [v46 knobs];
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v32)
  {
    v33 = *v49;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v49 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v48 + 1) + 8 * i);
        v36 = objc_opt_class();
        v37 = sub_100014370(v36, v35);
        v38 = v37;
        if (v37)
        {
          v39 = [v37 node];
          v40 = [v47 node];
          if (v39 == v40)
          {
            goto LABEL_30;
          }

          v41 = [v38 node];
          if (([v41 isSelected] & 1) == 0)
          {

LABEL_30:
            goto LABEL_31;
          }

          v42 = [v38 tag] == 17;

          if (v42)
          {
            v43 = [v38 node];
            [v43 setSelected:0];

            [v38 updateImage];
          }
        }

LABEL_31:
      }

      v32 = [v31 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v32);
  }

  [v46 invalidateKnobs];
  [v47 updateImage];
}

- (int)reflectionStateForBendingNodeType:(int64_t)a3 originalReflectionState:(int)a4
{
  if (a3 == 1)
  {
    a4 = 0;
  }

  if (a3 == 3)
  {
    return 1;
  }

  else
  {
    return a4;
  }
}

- (void)moveSmoothControlKnob:(id)a3 to:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v183 = a3;
  if ([v183 tag] == 21)
  {
    v5 = [v183 node];
    [v183 nextNode];
  }

  else
  {
    v5 = [v183 prevNode];
    [v183 node];
  }
  v6 = ;
  v7 = v5;
  [v5 nodePoint];
  v9 = v8;
  v11 = v10;
  [v5 outControlPoint];
  if (sub_10011ECC8(v9, v11, v12, v13))
  {
    [v6 inControlPoint];
    v15 = v14;
    v17 = v16;
    [v6 nodePoint];
    if (sub_10011ECC8(v15, v17, v18, v19))
    {
      [v5 nodePoint];
      v21 = v20;
      v23 = v22;
      [v6 nodePoint];
      [v5 setOutControlPoint:{sub_100120ABC(v21, v23, v24, v25, 0.333333333)}];
      [v5 nodePoint];
      v27 = v26;
      v29 = v28;
      [v6 nodePoint];
      [v6 setInControlPoint:{sub_100120ABC(v27, v29, v30, v31, 0.666666667)}];
    }
  }

  [v5 nodePoint];
  v33 = v32;
  v35 = v34;
  [v5 outControlPoint];
  v37 = v36;
  v39 = v38;
  [v6 inControlPoint];
  v41 = v40;
  v43 = v42;
  [v6 nodePoint];
  v45 = v44;
  v47 = v46;
  if ([v183 tag] == 23)
  {
    [v183 tValue];
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
    [v183 bendParameter];
    v55 = v54;
    [v183 bendParameter];
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
    v84 = [v5 type];
    v85 = y + v166 + v159 + v78 + v83;
    v86 = ((*&v63 + -1.0) * ((*&v63 * 3.0) * (*&v63 + -1.0)));
    v87 = (x + v170 + v161 + v76 + v81) / v86;
    v88 = v85 / v86;
    if (v84 == 1 && [v6 type] == 1)
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

    [v183 tValue];
    if (v122 <= 0.5)
    {
      v148 = [(CRLPathKnobTracker *)self reflectionStateForBendingNodeType:self->mPrevNodeOriginalType originalReflectionState:self->mPrevInitialReflectState];
      v102 = [v183 prevNode];
      [v102 setOutControlPoint:v148 reflect:0 constrain:{v87, v88}];
    }

    else
    {
      v123 = [(CRLPathKnobTracker *)self reflectionStateForBendingNodeType:self->mNodeOriginalType originalReflectionState:self->mInitialReflectState];
      v102 = [v183 node];
      [v102 setInControlPoint:v123 reflect:0 constrain:{v87, v88}];
    }
  }

  else if ([v183 tag] == 21)
  {
    mNodeOriginalType = self->mNodeOriginalType;
    v102 = [v183 node];
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
    [v102 setOutControlPoint:mNodeOriginalType == 3 reflect:0 constrain:{(x + v178 + v111 + v116 + v119) / v121, (v118 + v120) / v121}];
  }

  else
  {
    if ([v183 tag] != 20)
    {
      goto LABEL_42;
    }

    v124 = self->mNodeOriginalType;
    v102 = [v183 node];
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
    [v102 setInControlPoint:v124 == 3 reflect:0 constrain:{(v33 - x + v181 + v140 + v145) / v147, (v142 + v146) / v147}];
  }

LABEL_42:
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLCanvasKnobTracker *)self rep];
  v7 = [v6 interactiveCanvasController];
  v8 = [v7 canvasBackground];

  v9 = [v8 alignmentProvider];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(CRLCanvasKnobTracker *)self rep];
  v11 = [v10 interactiveCanvasController];
  if (([v11 isCanvasBackgroundAlignmentSnappingEnabled] & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = [(CRLPathKnobTracker *)self pathKnob];
  v13 = [v12 node];
  if ([v13 type] != 1)
  {

LABEL_7:
    goto LABEL_8;
  }

  v14 = [(CRLPathKnobTracker *)self pathKnob];
  v15 = [v14 tag];

  if (v15 == 23)
  {
    goto LABEL_9;
  }

  v16 = [(CRLCanvasKnobTracker *)self rep];
  [v16 convertKnobPositionToUnscaledCanvas:{x, y}];
  v18 = v17;
  v20 = v19;

  [v9 alignmentPointForPoint:{v18, v20}];
  v22 = v21;
  v24 = v23;
  v10 = [(CRLCanvasKnobTracker *)self rep];
  [v10 convertKnobPositionFromUnscaledCanvas:{v22, v24}];
  x = v25;
  y = v26;
LABEL_8:

LABEL_9:
  v27 = [(CRLPathKnobTracker *)self editablePathSource];
  v28 = [(CRLPathKnobTracker *)self pathKnob];
  memset(&v85, 0, sizeof(v85));
  v29 = [(CRLPathKnobTracker *)self pathRep];
  v30 = v29;
  if (v29)
  {
    [v29 naturalToEditablePathSpaceTransform];
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
    v32 = [v31 layout];
    v33 = v32;
    if (v32)
    {
      [v32 transformInRoot];
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
      v43 = [(CRLPathKnobTracker *)self toggleMirrored];

      if ((v43 & 1) == 0)
      {
        v45 = 2;
        goto LABEL_27;
      }
    }
  }

  v44 = [(CRLPathKnobTracker *)self initialReflectState];
  if (((v44 == 0) ^ [(CRLPathKnobTracker *)self toggleMirrored]))
  {
    v45 = 0;
  }

  else
  {
    v46 = [(CRLPathKnobTracker *)self initialReflectState];
    if ((v46 != 2) != [(CRLPathKnobTracker *)self toggleMirrorMagnitude])
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
    v47 = [v28 node];
    [v47 nodePoint];
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

    v57 = [v28 node];
    v58 = [v57 type];

    if (mNodeOriginalType == v58)
    {
      v59 = 0;
    }

    else
    {
      v60 = [v28 node];
      [v60 setType:mNodeOriginalType];

      v61 = [(CRLCanvasKnobTracker *)self rep];
      [v61 invalidateKnobs];

      v59 = mNodeOriginalType != 2;
    }

    if (mNodeOriginalType == 2)
    {
      v62 = [v28 node];
      [v62 setOutControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];

      v63 = [(CRLCanvasKnobTracker *)self rep];
      [v63 invalidateKnobs];

      v59 = 1;
    }

    v64 = [(CRLCanvasKnobTracker *)self icc];
    v65 = [v64 editorController];
    v66 = [v65 mostSpecificCurrentEditorOfClass:objc_opt_class()];

    v67 = [(CRLCanvasKnobTracker *)self rep];
    [v67 convertNaturalPointToUnscaledCanvas:{v81, v80}];
    [v66 updateGhostForNodeCreationAtPoint:?];

    if (!v59)
    {
      goto LABEL_52;
    }

LABEL_51:
    [v27 morphWithMorphInfo:self->mMorphInfo];
    goto LABEL_52;
  }

  v55 = [v28 tag];
  if (v55 <= 19)
  {
    if (v55 == 17)
    {
      v68 = [v28 node];
      [v68 nodePoint];
      v70 = sub_10011F31C(v81, v80, v69);
      v72 = v71;

      [v27 offsetSelectedNodesByDelta:{v70, v72}];
    }

    else
    {
      if (v55 == 18)
      {
        v56 = [v28 node];
        [v56 setInControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];
      }

      else
      {
        if (v55 != 19)
        {
          goto LABEL_52;
        }

        v56 = [v28 node];
        [v56 setOutControlPoint:v45 reflect:-[CRLPathKnobTracker constrain](self constrain:{"constrain"), v81, v80}];
      }
    }

    goto LABEL_51;
  }

  if ((v55 - 20) < 2 || v55 == 23)
  {
    [(CRLPathKnobTracker *)self moveSmoothControlKnob:v28 to:v81, v80];
  }

LABEL_52:
  v73 = [(CRLPathKnobTracker *)self pathRep];
  [v73 dynamicallyMovedPathKnobTo:self withTracker:{v81, v80}];

  v74 = [(CRLCanvasKnobTracker *)self rep];
  v75 = [(CRLCanvasKnobTracker *)self rep];
  v76 = [v75 knobs];
  [v74 updatePositionsOfKnobs:v76];

  v77 = [(CRLCanvasKnobTracker *)self rep];
  v78 = [v77 layout];
  [v78 adjustCustomMagnetPositions];
}

- (void)endMovingKnob
{
  v22.receiver = self;
  v22.super_class = CRLPathKnobTracker;
  [(CRLCanvasKnobTracker *)&v22 endMovingKnob];
  v3 = [(CRLPathKnobTracker *)self pathRep];
  [v3 dynamicMovePathKnobDidEndWithTracker:self];

  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = [v4 layout];
  v6 = [v5 commandsForAdjustingMagnetsFromClineLayouts];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
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
        v13 = [v12 commandController];
        [v13 enqueueCommand:v11];

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
  v16 = [v15 editorController];
  v17 = [v16 mostSpecificCurrentEditorOfClass:objc_opt_class()];

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
    v4 = [v3 commandController];

    if (!v4)
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

    [v4 closeGroup];
  }
}

@end