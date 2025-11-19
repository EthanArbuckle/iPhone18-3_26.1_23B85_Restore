@interface CRLiOSMultiSelectGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (CRLiOSMultiSelectGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (id)p_ICC;
- (id)p_infosToSelectWhenTogglingSelectionOfRep:(id)a3 inInfos:(id)a4;
- (id)p_selectionPathWithInfos:(id)a3;
- (void)i_updateStateForPressureDragOnRep:(id)a3;
- (void)operationDidEnd;
- (void)p_beginMultiSelect;
- (void)p_toggleSelection:(id)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)trackerManipulatorDidTakeControl:(id)a3;
@end

@implementation CRLiOSMultiSelectGestureRecognizer

- (CRLiOSMultiSelectGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133EC88();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133EC9C(v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133ED58();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSMultiSelectGestureRecognizer initWithInteractiveCanvasController:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSMultiSelectGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:57 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
  }

  v19.receiver = self;
  v19.super_class = CRLiOSMultiSelectGestureRecognizer;
  v10 = [(CRLiOSMultiSelectGestureRecognizer *)&v19 initWithTarget:0 action:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_interactiveCanvasController, v4);
    v12 = objc_alloc_init(NSMutableSet);
    touchesDown = v11->_touchesDown;
    v11->_touchesDown = v12;

    v14 = objc_alloc_init(NSMutableSet);
    alreadyToggledTouches = v11->_alreadyToggledTouches;
    v11->_alreadyToggledTouches = v14;

    v11->_canMultiSelect = 1;
    v16 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    originalScaledTouchLocation = v11->_originalScaledTouchLocation;
    v11->_originalScaledTouchLocation = v16;
  }

  return v11;
}

- (void)setState:(int64_t)a3
{
  if ([(CRLiOSMultiSelectGestureRecognizer *)self state]!= a3)
  {
    if (qword_101AD5C78 != -1)
    {
      sub_10133ED80();
    }

    v5 = off_1019EED20;
    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133ED94(v5, a3);
    }
  }

  v6.receiver = self;
  v6.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v6 setState:a3];
}

- (void)reset
{
  if (qword_101AD5C78 != -1)
  {
    sub_10133EE2C();
  }

  v3 = off_1019EED20;
  if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
  {
    sub_10133EE40(v3, self);
  }

  [(NSMutableSet *)self->_touchesDown removeAllObjects];
  [(NSMutableSet *)self->_alreadyToggledTouches removeAllObjects];
  touch = self->_touch;
  self->_touch = 0;

  [(CRLiOSMultiSelectGestureRecognizer *)self setCanMultiSelect:1];
  selectionPath = self->_selectionPath;
  self->_selectionPath = 0;

  originalSelectionPath = self->_originalSelectionPath;
  self->_originalSelectionPath = 0;

  v7 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v8 = [v7 dynamicOperationController];

  if ([v8 isInPossibleDynamicOperation])
  {
    if (qword_101AD5C78 != -1)
    {
      sub_10133EEDC();
    }

    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133EF04();
    }

    [v8 endOperation];
  }

  v9.receiver = self;
  v9.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v9 reset];
}

- (id)p_selectionPathWithInfos:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v6 = [v5 canvasEditor];

  v7 = [v6 selectionPathWithInfos:v4];

  return v7;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v114.receiver = self;
  v114.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v114 touchesBegan:v6 withEvent:a4];
  v7 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v8 = [v7 layerHost];
  v9 = [v8 asUIKitHost];

  v10 = [v7 dynamicOperationController];
  v89 = v7;
  v11 = v7;
  v12 = self;
  v13 = [v11 tmCoordinator];
  if (!-[CRLiOSMultiSelectGestureRecognizer state](v12, "state") && [v89 currentlyScrolling])
  {
    if (qword_101AD5C78 != -1)
    {
      sub_10133F0E4();
    }

    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133F10C();
    }

    [(CRLiOSMultiSelectGestureRecognizer *)v12 setState:5];
    goto LABEL_107;
  }

  v79 = v9;
  v80 = v13;
  v82 = v10;
  v87 = v12;
  v83 = [(CRLiOSMultiSelectGestureRecognizer *)v12 modifierFlags];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v81 = v6;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v110 objects:v118 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v111;
    do
    {
      v18 = v14;
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v111 != v17)
        {
          objc_enumerationMutation(v18);
        }

        v20 = *(*(&v110 + 1) + 8 * i);
        originalScaledTouchLocation = v87->_originalScaledTouchLocation;
        v22 = [v89 layerHost];
        v23 = [v22 canvasView];
        [v20 locationInView:v23];
        v24 = [NSValue valueWithCGPoint:?];
        [(NSMapTable *)originalScaledTouchLocation setObject:v24 forKey:v20];
      }

      v14 = v18;
      v16 = [v18 countByEnumeratingWithState:&v110 objects:v118 count:16];
    }

    while (v16);
  }

  v25 = v87;
  if (-[CRLiOSMultiSelectGestureRecognizer state](v87, "state") || [v14 count] < 2)
  {
    v86 = 0;
    v6 = v81;
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v27)
    {
      v28 = v27;
      v86 = 0;
      v29 = *v107;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v107 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v106 + 1) + 8 * j);
          v32 = [v9 hitRepWithTouch:v31];
          v33 = [v32 repForSelecting];

          if (v33 && [v33 isSelectedIgnoringLocking])
          {
            [(NSMutableSet *)v87->_alreadyToggledTouches addObject:v31];
            v86 = 1;
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v106 objects:v117 count:16];
      }

      while (v28);
    }

    else
    {
      v86 = 0;
    }

    v25 = v87;
    v6 = v81;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v34 = v14;
  v85 = [v34 countByEnumeratingWithState:&v102 objects:v116 count:16];
  if (!v85)
  {
    goto LABEL_106;
  }

  v77 = v83 & 0x120000;
  v88 = *v103;
  p_opt_class_meths = &OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras.opt_class_meths;
LABEL_31:
  v36 = 0;
  v37 = v85;
LABEL_32:
  if (*v103 != v88)
  {
    objc_enumerationMutation(v34);
  }

  v38 = *(*(&v102 + 1) + 8 * v36);
  if ([(CRLiOSMultiSelectGestureRecognizer *)v25 state])
  {
    if ([(CRLiOSMultiSelectGestureRecognizer *)v25 canMultiSelect])
    {
      v39 = [v9 hitRepWithTouch:v38];
      v40 = [v39 repForSelecting];

      if (v40 && ([v40 demandsExclusiveSelection] & 1) == 0)
      {
        [(NSMutableSet *)v25->_touchesDown addObject:v38];
      }
    }

    goto LABEL_68;
  }

  if (![(NSMutableSet *)v25->_touchesDown count])
  {
    v84 = v36;
    objc_storeStrong(&v25->_touch, v38);
    if ([(UITouch *)v25->_touch tapCount]!= 1)
    {
      if (qword_101AD5C78 != -1)
      {
        sub_10133EF94();
      }

      v37 = v85;
      if (os_log_type_enabled(p_opt_class_meths[420], OS_LOG_TYPE_DEBUG))
      {
        sub_10133EFBC(&v90, v91);
      }

      goto LABEL_67;
    }

    v43 = [v9 hitRepWithTouch:v25->_touch];
    v44 = [v43 repForSelecting];
    rep = v25->_rep;
    v25->_rep = v44;

    v46 = v25->_rep;
    if (!v46 || ([(CRLCanvasRep *)v46 info], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
    {
      if (qword_101AD5C78 != -1)
      {
        sub_10133F090();
      }

      p_opt_class_meths = &OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras.opt_class_meths;
      v37 = v85;
      if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
      {
        sub_10133F0B8(&v92, v93);
      }

      goto LABEL_67;
    }

    if ([(CRLCanvasRep *)v25->_rep demandsExclusiveSelection])
    {
      [(CRLiOSMultiSelectGestureRecognizer *)v25 setCanMultiSelect:0];
      v48 = [(CRLCanvasRep *)v25->_rep info];
      v49 = [NSSet setWithObject:v48];
LABEL_51:
      v50 = [(CRLiOSMultiSelectGestureRecognizer *)v25 p_selectionPathWithInfos:v49];
      selectionPath = v25->_selectionPath;
      v25->_selectionPath = v50;
      goto LABEL_62;
    }

    [(CRLiOSMultiSelectGestureRecognizer *)v25 setCanMultiSelect:1];
    v52 = [v89 selectionModelTranslator];
    v53 = [v89 editorController];
    v54 = [v53 selectionPath];
    v48 = [v52 boardItemsForSelectionPath:v54];

    if (v77)
    {
      v49 = [(CRLiOSMultiSelectGestureRecognizer *)v25 p_infosToSelectWhenTogglingSelectionOfRep:v25->_rep inInfos:v48];
      v55 = [(CRLiOSMultiSelectGestureRecognizer *)v25 p_selectionPathWithInfos:v49];
      selectionPath = v25->_selectionPath;
      v25->_selectionPath = v55;
    }

    else
    {
      if ((v86 & 1) != 0 || [(CRLCanvasRep *)v25->_rep isSelectedIgnoringLocking])
      {
        v49 = [NSMutableSet setWithSet:v48];
        if (![(CRLCanvasRep *)v25->_rep isSelectedIgnoringLocking])
        {
          v73 = [(CRLCanvasRep *)v25->_rep info];
          [v49 addObject:v73];
        }

        goto LABEL_51;
      }

      v49 = [(CRLCanvasRep *)v25->_rep info];
      selectionPath = [NSSet setWithObject:v49];
      v74 = [(CRLiOSMultiSelectGestureRecognizer *)v25 p_selectionPathWithInfos:selectionPath];
      v75 = v25->_selectionPath;
      v25->_selectionPath = v74;
    }

LABEL_62:

    [(NSMutableSet *)v25->_touchesDown addObject:v38];
    if ([v82 isInOperation])
    {
      v6 = v81;
      v37 = v85;
      if (qword_101AD5C78 != -1)
      {
        sub_10133F03C();
      }

      p_opt_class_meths = &OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras.opt_class_meths;
      if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
      {
        sub_10133F064(&v100, v101);
      }

LABEL_67:
      [(CRLiOSMultiSelectGestureRecognizer *)v25 setState:5];
      v36 = v84;
      goto LABEL_68;
    }

    [v80 registerTrackerManipulator:v25];
    if (qword_101AD5C78 != -1)
    {
      sub_10133EFE8();
    }

    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133F010(&v98, v99);
    }

    [v82 beginPossibleDynamicOperation];
    if ([(CRLCanvasRep *)v25->_rep demandsExclusiveSelection])
    {
      v56 = [v89 infosForSelectionPath:v25->_selectionPath];
      v57 = [v56 count];

      if (v57 >= 2)
      {
        v58 = [(CRLCanvasRep *)v25->_rep info];
        v59 = [NSSet setWithObject:v58];
        v60 = [(CRLiOSMultiSelectGestureRecognizer *)v25 p_selectionPathWithInfos:v59];
        v61 = v25->_selectionPath;
        v25->_selectionPath = v60;

        v62 = [NSSet setWithObject:v25->_rep];
        [v82 startTransformingReps:v62];

        goto LABEL_92;
      }
    }

    v78 = v34;
    v63 = objc_alloc_init(NSMutableSet);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v64 = [v89 infosForSelectionPath:v25->_selectionPath];
    v65 = [v64 countByEnumeratingWithState:&v94 objects:v115 count:16];
    if (!v65)
    {
      goto LABEL_91;
    }

    v66 = v65;
    v67 = *v95;
LABEL_79:
    v68 = 0;
    while (1)
    {
      if (*v95 != v67)
      {
        objc_enumerationMutation(v64);
      }

      v69 = [v89 repForInfo:*(*(&v94 + 1) + 8 * v68)];
      v70 = [(CRLCanvasRep *)v69 info];
      v71 = [(CRLCanvasRep *)v25->_rep info];
      if (v70 != v71)
      {
        break;
      }

      v72 = v25->_rep;

      if (v69 != v72)
      {
        v70 = v69;
        v69 = v25->_rep;
        goto LABEL_86;
      }

LABEL_87:
      if (v69)
      {
        [v63 addObject:v69];
      }

      if (v66 == ++v68)
      {
        v66 = [v64 countByEnumeratingWithState:&v94 objects:v115 count:16];
        if (!v66)
        {
LABEL_91:

          [v82 startTransformingReps:v63];
          v34 = v78;
          v9 = v79;
LABEL_92:
          v6 = v81;
          p_opt_class_meths = (&OBJC_PROTOCOL___CRLUndoManagerAccessibilityExtras + 48);
          v36 = v84;
          v37 = v85;
LABEL_68:
          if (++v36 == v37)
          {
            v76 = [v34 countByEnumeratingWithState:&v102 objects:v116 count:16];
            v85 = v76;
            if (!v76)
            {
              goto LABEL_106;
            }

            goto LABEL_31;
          }

          goto LABEL_32;
        }

        goto LABEL_79;
      }
    }

LABEL_86:
    goto LABEL_87;
  }

  if ([(CRLiOSMultiSelectGestureRecognizer *)v25 canMultiSelect])
  {
    v41 = [v9 hitRepWithTouch:v38];
    v42 = [v41 repForSelecting];

    if (v42 && ![(CRLCanvasRep *)v42 demandsExclusiveSelection])
    {
      if (v25->_rep != v42)
      {
        [(NSMutableSet *)v25->_touchesDown addObject:v38];

        v37 = v85;
        goto LABEL_68;
      }

      if (qword_101AD5C78 != -1)
      {
        sub_10133EF38();
      }

      if (os_log_type_enabled(p_opt_class_meths[420], OS_LOG_TYPE_DEBUG))
      {
        sub_10133EF60();
      }

      [(CRLiOSMultiSelectGestureRecognizer *)v25 setState:5];
    }
  }

LABEL_106:

  v13 = v80;
  v10 = v82;
LABEL_107:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v4 touchesMoved:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v103.receiver = self;
  v103.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v103 touchesEnded:v6 withEvent:a4];
  v7 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v8 = [v7 layerHost];
  v9 = [v8 asUIKitHost];
  v10 = objc_opt_class();
  v85 = sub_100303920(v9, v10, 1, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___CRLUIKitInteractionHost);

  v16 = [v7 dynamicOperationController];
  if (!-[CRLiOSMultiSelectGestureRecognizer state](self, "state") && [v7 currentlyScrolling])
  {
    if (qword_101AD5C78 != -1)
    {
      sub_10133F140();
    }

    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133F10C();
    }

    [(CRLiOSMultiSelectGestureRecognizer *)self setState:5];
    goto LABEL_64;
  }

  v83 = v16;
  v84 = [NSMutableSet setWithSet:self->_touchesDown];
  [v84 minusSet:v6];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v82 = v6;
  obj = v6;
  v17 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v100;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v100 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v99 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_touchesDown containsObject:v21])
        {
          v22 = [(NSMapTable *)self->_originalScaledTouchLocation objectForKey:v21];
          [v22 CGPointValue];
          v24 = v23;
          v26 = v25;

          v27 = [v7 layerHost];
          v28 = [v27 canvasView];
          [(UITouch *)v21 locationInView:v28];
          v30 = v29;
          v32 = v31;

          if (sub_100120090(v24, v26, v30, v32) < 14.0)
          {
            v33 = [(NSMapTable *)self->_originalScaledTouchLocation objectForKey:v21];
            [v33 CGPointValue];
            v35 = v34;
            v37 = v36;

            [v7 convertBoundsToUnscaledPoint:{v35, v37}];
            v39 = v38;
            v41 = v40;
            v42 = [v85 repDragGestureRecognizer];
            v43 = [v42 repDragTracker];
            v44 = [v43 didBeginDrag];

            v45 = [v7 hitRep:{v39, v41}];
            v46 = v45;
            if (v44)
            {
              [v45 repForDragging];
            }

            else
            {
              [v45 repForSelecting];
            }
            v47 = ;
            if (v47)
            {
              if (!-[CRLiOSMultiSelectGestureRecognizer state](self, "state") && [v84 count])
              {
                [(CRLiOSMultiSelectGestureRecognizer *)self setState:1];
                [(CRLiOSMultiSelectGestureRecognizer *)self p_beginMultiSelect];
              }

              if (v21 != self->_touch && ([(NSMutableSet *)self->_alreadyToggledTouches containsObject:v21]& 1) == 0)
              {
                [(CRLiOSMultiSelectGestureRecognizer *)self p_toggleSelection:v47];
              }
            }
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v99 objects:v107 count:16];
    }

    while (v18);
  }

  v48 = [(NSMutableSet *)self->_touchesDown copy];
  [(NSMutableSet *)self->_touchesDown minusSet:obj];
  [(NSMutableSet *)self->_alreadyToggledTouches minusSet:obj];
  if ([(NSMutableSet *)self->_touchesDown count]== 1)
  {
    v49 = [v48 count];
    if (v49 != [(NSMutableSet *)self->_touchesDown count])
    {
      v62 = [(NSMutableSet *)self->_touchesDown anyObject];
      if (v62 != self->_touch)
      {
        v63 = [(NSMutableSet *)self->_touchesDown anyObject];
        touch = self->_touch;
        self->_touch = v63;

        v65 = [(NSMapTable *)self->_originalScaledTouchLocation objectForKey:self->_touch];
        [v65 CGPointValue];
        v67 = v66;
        v69 = v68;

        [v7 convertBoundsToUnscaledPoint:{v67, v69}];
        v70 = [v7 hitRep:?];
        v71 = [v70 repForSelecting];

        if (v71)
        {
          [(CRLiOSMultiSelectGestureRecognizer *)self p_toggleSelection:v71];
          [(NSMutableSet *)self->_alreadyToggledTouches addObject:self->_touch];
        }
      }

      goto LABEL_55;
    }
  }

  v50 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  if (![(NSMutableSet *)self->_touchesDown count])
  {
    v51 = [(CRLiOSMultiSelectGestureRecognizer *)self state];
    if ((v51 - 1) < 2)
    {
      [(CRLiOSMultiSelectGestureRecognizer *)self setState:3];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v52 = [v7 infosForSelectionPath:self->_selectionPath];
      v53 = [v52 countByEnumeratingWithState:&v91 objects:v105 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v92;
        do
        {
          for (j = 0; j != v54; j = j + 1)
          {
            if (*v92 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [v7 repForInfo:*(*(&v91 + 1) + 8 * j)];
            [v57 fadeKnobsIn];
            [v57 setShowKnobsDuringManipulation:0];
          }

          v54 = [v52 countByEnumeratingWithState:&v91 objects:v105 count:16];
        }

        while (v54);
      }

      v50 = &OBJC_IVAR___CRLEditorController_mEditorStack;
      if ([v83 isInPossibleDynamicOperation])
      {
        v58 = [v7 infosForCurrentSelectionPath];
        v59 = [v58 count];

        if (v59)
        {
          v60 = [obj anyObject];
          v61 = [v60 type];

          if (v61 != 3)
          {
            [v85 performSelector:"showDefaultEditUIForCurrentSelection" withObject:0 afterDelay:0.0];
          }
        }
      }

      goto LABEL_56;
    }

    if (!v51)
    {
      [(CRLiOSMultiSelectGestureRecognizer *)self setState:5];
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v62 = [v7 infosForSelectionPath:self->_selectionPath];
      v72 = [(UITouch *)v62 countByEnumeratingWithState:&v95 objects:v106 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v96;
        do
        {
          for (k = 0; k != v73; k = k + 1)
          {
            if (*v96 != v74)
            {
              objc_enumerationMutation(v62);
            }

            v76 = [v7 repForInfo:*(*(&v95 + 1) + 8 * k)];
            [v76 fadeKnobsIn];
            [v76 setShowKnobsDuringManipulation:0];
          }

          v73 = [(UITouch *)v62 countByEnumeratingWithState:&v95 objects:v106 count:16];
        }

        while (v73);
      }

LABEL_55:

      v50 = &OBJC_IVAR___CRLEditorController_mEditorStack;
    }
  }

LABEL_56:
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v77 = obj;
  v78 = [v77 countByEnumeratingWithState:&v87 objects:v104 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v88;
    do
    {
      for (m = 0; m != v79; m = m + 1)
      {
        if (*v88 != v80)
        {
          objc_enumerationMutation(v77);
        }

        [*(&self->super.super.isa + v50[92]) removeObjectForKey:*(*(&v87 + 1) + 8 * m)];
      }

      v79 = [v77 countByEnumeratingWithState:&v87 objects:v104 count:16];
    }

    while (v79);
  }

  v6 = v82;
  v16 = v83;
LABEL_64:
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v38.receiver = self;
  v38.super_class = CRLiOSMultiSelectGestureRecognizer;
  [(CRLiOSMultiSelectGestureRecognizer *)&v38 touchesEnded:v6 withEvent:a4];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    v11 = &OBJC_IVAR___CRLEditorController_mEditorStack;
    v27 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = v11[89];
        if ([*(&self->super.super.isa + v14) containsObject:v13])
        {
          [*(&self->super.super.isa + v14) removeObject:v13];
          if (![*(&self->super.super.isa + v14) count])
          {
            v15 = [(CRLiOSMultiSelectGestureRecognizer *)self state];
            if (v15 <= 5)
            {
              [(CRLiOSMultiSelectGestureRecognizer *)self setState:qword_101463C08[v15]];
            }

            v16 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
            v17 = [v16 editorController];
            v18 = [v16 dynamicOperationController];
            originalSelectionPath = self->_originalSelectionPath;
            if (originalSelectionPath)
            {
              v20 = [v17 selectionPath];
              if ([(CRLSelectionPath *)originalSelectionPath isEqual:v20])
              {

                goto LABEL_19;
              }

              v21 = [v18 isInPossibleDynamicOperation];

              v7 = v27;
              if (v21)
              {
                if (qword_101AD5C78 != -1)
                {
                  sub_10133F168();
                }

                if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
                {
                  sub_10133F190(&v32, v33);
                }

                [v17 setSelectionPath:self->_originalSelectionPath];
LABEL_19:
                v7 = v27;
              }
            }

            v11 = &OBJC_IVAR___CRLEditorController_mEditorStack;
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(NSMapTable *)self->_originalScaledTouchLocation removeObjectForKey:*(*(&v28 + 1) + 8 * i)];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v24);
  }
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 view], v5 = objc_claimAutoreleasedReturnValue(), -[CRLiOSMultiSelectGestureRecognizer p_ICC](self, "p_ICC"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "canvasView"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "enclosingScrollView"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v5 == v8))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRLiOSMultiSelectGestureRecognizer;
    v9 = [(CRLiOSMultiSelectGestureRecognizer *)&v11 canBePreventedByGestureRecognizer:v4];
  }

  return v9;
}

- (void)trackerManipulatorDidTakeControl:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  if (![(CRLiOSMultiSelectGestureRecognizer *)self state])
  {
    v7 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
    v8 = [v7 layerHost];
    v9 = [v8 asUIKitHost];
    v10 = [v9 repDragGestureRecognizer];

    if (v6 == v10)
    {
      if ([v6 state])
      {
        [(CRLiOSMultiSelectGestureRecognizer *)self setState:1];
        if (qword_101AD5C78 != -1)
        {
          sub_10133F1BC();
        }

        v11 = off_1019EED20;
        if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
        {
          sub_10133F1D0(v11, v4, self);
        }
      }

      [(CRLiOSMultiSelectGestureRecognizer *)self p_beginMultiSelect];
    }
  }
}

- (void)operationDidEnd
{
  if (qword_101AD5C78 != -1)
  {
    sub_10133F2AC();
  }

  v3 = off_1019EED20;
  if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
  {
    sub_10133F2C0(v3, self);
  }

  if (![(CRLiOSMultiSelectGestureRecognizer *)self state]|| [(CRLiOSMultiSelectGestureRecognizer *)self state]== 1 || [(CRLiOSMultiSelectGestureRecognizer *)self state]== 2)
  {
    [(CRLiOSMultiSelectGestureRecognizer *)self setState:5];
  }
}

- (void)i_updateStateForPressureDragOnRep:(id)a3
{
  v8 = a3;
  v5 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v6 = [v5 editorController];
  v7 = [v6 selectionPath];
  [(CRLiOSMultiSelectGestureRecognizer *)self setCurrentSelection:v7];

  [(CRLiOSMultiSelectGestureRecognizer *)self setCanMultiSelect:[(CRLCanvasRep *)v8 demandsExclusiveSelection]];
  if (self->_rep != v8)
  {
    objc_storeStrong(&self->_rep, a3);
  }

  if (![(CRLiOSMultiSelectGestureRecognizer *)self state])
  {
    [(CRLiOSMultiSelectGestureRecognizer *)self setState:1];
  }
}

- (id)p_ICC
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

- (id)p_infosToSelectWhenTogglingSelectionOfRep:(id)a3 inInfos:(id)a4
{
  v5 = a3;
  v6 = [NSMutableSet setWithSet:a4];
  v7 = [v5 isSelectedIgnoringLocking];
  v8 = [v5 info];

  if (v7)
  {
    [v6 removeObject:v8];
  }

  else
  {
    [v6 addObject:v8];
  }

  return v6;
}

- (void)p_toggleSelection:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v6 = [v5 dynamicOperationController];
  [(CRLiOSMultiSelectGestureRecognizer *)self setState:2];
  v7 = [v5 selectionModelTranslator];
  v8 = [v7 boardItemsForSelectionPath:self->_selectionPath];

  v9 = [(CRLiOSMultiSelectGestureRecognizer *)self p_infosToSelectWhenTogglingSelectionOfRep:v4 inInfos:v8];
  v10 = [v8 crl_setBySubtractingSet:v9];
  v11 = [(CRLiOSMultiSelectGestureRecognizer *)self p_selectionPathWithInfos:v9];
  selectionPath = self->_selectionPath;
  self->_selectionPath = v11;

  v13 = self->_selectionPath;
  v14 = [v5 editorController];
  [v14 setSelectionPath:v13];

  v15 = [v4 info];
  LODWORD(v14) = [v10 containsObject:v15];

  v16 = [NSSet setWithObject:v4];
  if (v14)
  {
    [v6 stopTransformingReps:v16];
  }

  else
  {
    [v6 startTransformingReps:v16];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [v5 repForInfo:*(*(&v33 + 1) + 8 * i)];
        [v22 setShowKnobsDuringManipulation:1];
        [v22 turnKnobsOn];
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v19);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = v10;
  v24 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v5 repForInfo:{*(*(&v29 + 1) + 8 * j), v29}];
        [v28 setShowKnobsDuringManipulation:0];
      }

      v25 = [v23 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v25);
  }

  [v6 invalidateGuides];
}

- (void)p_beginMultiSelect
{
  if (qword_101AD5C78 != -1)
  {
    sub_10133F35C();
  }

  if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
  {
    sub_10133F370();
  }

  v3 = [(CRLiOSMultiSelectGestureRecognizer *)self modifierFlags];
  if (![(CRLiOSMultiSelectGestureRecognizer *)self state]&& (*&v3 & 0x120000) != 0)
  {
    if (qword_101AD5C78 != -1)
    {
      sub_10133F3A4();
    }

    if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
    {
      sub_10133F3CC();
    }

    [(CRLiOSMultiSelectGestureRecognizer *)self setState:1];
  }

  v4 = [(CRLiOSMultiSelectGestureRecognizer *)self p_ICC];
  v5 = [v4 dynamicOperationController];
  if (([v5 isInOperation] & 1) == 0 && (objc_msgSend(v5, "isInPossibleDynamicOperation") & 1) == 0)
  {
    [v5 beginPossibleDynamicOperation];
  }

  v53 = v5;
  v56 = objc_alloc_init(NSMutableSet);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [v4 infosForSelectionPath:self->_selectionPath];
  v6 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
  v7 = &OBJC_IVAR___CRLEditorController_mEditorStack;
  if (v6)
  {
    v8 = v6;
    v9 = *v58;
    do
    {
      v10 = 0;
      do
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v4 repForInfo:*(*(&v57 + 1) + 8 * v10)];
        v12 = [v11 info];
        v13 = v7[96];
        v14 = [*(&self->super.super.isa + v13) info];
        if (v12 != v14)
        {

          goto LABEL_24;
        }

        v15 = v4;
        v16 = v7;
        v17 = *(&self->super.super.isa + v13);

        if (v11 != v17)
        {
          v12 = v11;
          v11 = *(&self->super.super.isa + v13);
          v7 = v16;
          v4 = v15;
LABEL_24:

          if (!v11)
          {
            goto LABEL_26;
          }

LABEL_25:
          [v56 addObject:v11];
          [v11 turnKnobsOn];
          [v11 setShowKnobsDuringManipulation:1];
          goto LABEL_26;
        }

        v7 = v16;
        v4 = v15;
        if (v11)
        {
          goto LABEL_25;
        }

LABEL_26:

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v18 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
      v8 = v18;
    }

    while (v18);
  }

  v19 = [v4 editorController];
  v20 = [v19 selectionPath];
  originalSelectionPath = self->_originalSelectionPath;
  self->_originalSelectionPath = v20;

  [v4 endEditing];
  if ([(CRLiOSMultiSelectGestureRecognizer *)self state])
  {
    goto LABEL_42;
  }

  v22 = [(NSMapTable *)self->_originalScaledTouchLocation objectForKeyedSubscript:self->_touch];
  [v22 CGPointValue];
  [v4 convertBoundsToUnscaledPoint:?];
  v24 = v23;
  v26 = v25;

  v27 = [v4 hitRep:{v24, v26}];
  v28 = [v27 repForSelecting];
  v29 = *(&self->super.super.isa + v7[96]);

  if (v28 != v29)
  {
    v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F400();
    }

    v31 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      log = v31;
      v45 = objc_opt_class();
      obja = NSStringFromClass(v45);
      v46 = objc_opt_class();
      v49 = NSStringFromClass(v46);
      v50 = [v27 repForSelecting];
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 67110658;
      v62 = v30;
      v63 = 2082;
      v64 = "[CRLiOSMultiSelectGestureRecognizer p_beginMultiSelect]";
      v65 = 2082;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSMultiSelectGestureRecognizer.m";
      v67 = 1024;
      v68 = 588;
      v69 = 2114;
      v70 = obja;
      v71 = 2114;
      v72 = v49;
      v73 = 2114;
      v74 = v48;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d The hit rep %{public}@ is providing a different repForSelecting %{public}@ before we update the selection vs after %{public}@.", buf, 0x40u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133F428();
    }

    v32 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v32);
    }

    loga = [NSString stringWithUTF8String:"[CRLiOSMultiSelectGestureRecognizer p_beginMultiSelect]"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSMultiSelectGestureRecognizer.m"];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v27 repForSelecting];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    [CRLAssertionHandler handleFailureInFunction:loga file:v33 lineNumber:588 isFatal:0 description:"The hit rep %{public}@ is providing a different repForSelecting %{public}@ before we update the selection vs after %{public}@.", v35, v37, v40];

LABEL_42:
    v27 = 0;
  }

  selectionPath = self->_selectionPath;
  v42 = [v4 editorController];
  [v42 setSelectionPath:selectionPath];

  if (v27)
  {
    v43 = [v27 repForSelecting];
    v44 = *(&self->super.super.isa + v7[96]);

    if (v43 != v44)
    {
      if (qword_101AD5C78 != -1)
      {
        sub_10133F450();
      }

      if (os_log_type_enabled(off_1019EED20, OS_LOG_TYPE_DEBUG))
      {
        sub_10133F478();
      }

      [(CRLiOSMultiSelectGestureRecognizer *)self setState:1];
    }
  }

  [v53 startTransformingReps:v56];
}

@end