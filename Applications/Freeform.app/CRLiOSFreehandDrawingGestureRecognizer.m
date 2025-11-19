@interface CRLiOSFreehandDrawingGestureRecognizer
- ($D9ACD5A945031E604089763E4FBE0988)p_canvasTouchPointFromTouch:(id)a3;
- (BOOL)p_selectTargetFreehandInfoForDrawing:(id)a3;
- (BOOL)p_tapShouldAvoidDrawing;
- (CRLiOSFreehandDrawingGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (unint64_t)inputType;
- (void)operationDidEnd;
- (void)p_addCoalescedAndPredictedTouchesToTrackerForTouch:(id)a3 fromEvent:(id)a4 fromTouchesEnded:(BOOL)a5;
- (void)p_beginDrawingModeWithoutDrawingWithTouch:(id)a3;
- (void)p_beginDynamicDrawing;
- (void)p_cancelOrFailAndCleanUpChanges;
- (void)p_canvasWillScrollOrZoom:(id)a3;
- (void)p_clearTimerIfNeeded;
- (void)p_closeCVCDelegatePresentedViewControllerIfNeeded;
- (void)p_endSuccessfullyWithEvent:(id)a3;
- (void)p_hideEditMenuIfNeeded;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesEstimatedPropertiesUpdated:(id)a3;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSFreehandDrawingGestureRecognizer

- (CRLiOSFreehandDrawingGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  v5 = [(CRLiOSFreehandDrawingGestureRecognizer *)&v14 initWithTarget:0 action:0];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101367430();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101367458();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101367508();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingGestureRecognizer initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:92 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->_icc, v4);
    v5->_startingScaledPoint = xmmword_1014629F0;
    v9 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v5->_icc);
    [v9 addObserver:v5 selector:"p_canvasWillScrollOrZoom:" name:@"CRLCanvasWillScrollNotification" object:WeakRetained];

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = objc_loadWeakRetained(&v5->_icc);
    [v11 addObserver:v5 selector:"p_canvasWillScrollOrZoom:" name:@"CRLCanvasWillZoomNotification" object:v12];
  }

  return v5;
}

- (void)setState:(int64_t)a3
{
  if ([(CRLiOSFreehandDrawingGestureRecognizer *)self state]!= a3)
  {
    if (qword_101AD5C98 != -1)
    {
      sub_101367530();
    }

    v5 = off_1019EFD50;
    if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
    {
      sub_101367544(v5, a3);
    }
  }

  v10.receiver = self;
  v10.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v10 setState:a3];
  if (a3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v7 = [WeakRetained layerHost];
    v8 = [v7 canvasView];
    v9 = [v8 enclosingScrollView];
    [v9 setScrollEnabled:0];

    self->_didDisableScrolling = 1;
  }
}

- (BOOL)p_selectTargetFreehandInfoForDrawing:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 locked] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v8 = [WeakRetained canvasEditor];
    v9 = [v8 selectionPathWithInfo:v5];

    v10 = objc_loadWeakRetained(&self->_icc);
    v11 = [v10 editorController];
    [v11 setSelectionPath:v9];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v94.receiver = self;
  v94.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  v66 = a4;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v94 touchesBegan:v6 withEvent:?];
  if (![(CRLiOSFreehandDrawingGestureRecognizer *)self state])
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v8 = [WeakRetained currentlyScrolling];

    if (v8)
    {
      if (qword_101AD5C98 != -1)
      {
        sub_10136795C();
      }

      if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
      {
        sub_101357E58();
      }

      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
      goto LABEL_116;
    }
  }

  v9 = [v6 anyObject];
  v10 = [v9 type];

  if (v10 == 3)
  {
    v11 = [(CRLiOSFreehandDrawingGestureRecognizer *)self modifierFlags]& 0x40000;
    if (v11 | [(CRLiOSFreehandDrawingGestureRecognizer *)self buttonMask]& 2)
    {
      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
      if (qword_101AD5C98 != -1)
      {
        sub_1013675DC();
      }

      if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
      {
        sub_101367604();
      }

      goto LABEL_116;
    }
  }

  v12 = objc_loadWeakRetained(&self->_icc);
  v13 = [v12 freehandDrawingToolkit];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v65 = v6;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v90 objects:v101 count:16];
  if (!v15)
  {
    goto LABEL_102;
  }

  v17 = v15;
  v18 = *v91;
  *&v16 = 134218496;
  v64 = v16;
  v70 = v13;
  v67 = v14;
  v68 = *v91;
  while (2)
  {
    v19 = 0;
    v69 = v17;
    do
    {
      if (*v91 != v18)
      {
        objc_enumerationMutation(v14);
      }

      if (self->_trackingTouch)
      {
        if (qword_101AD5C98 != -1)
        {
          sub_101367638();
        }

        if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
        {
          sub_101367660(&v71, v72);
        }

        if (![(CRLiOSFreehandDrawingGestureRecognizer *)self state])
        {
          [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
          goto LABEL_102;
        }

        goto LABEL_97;
      }

      v20 = *(*(&v90 + 1) + 8 * v19);
      v21 = objc_loadWeakRetained(&self->_icc);
      v22 = [v21 isInDynamicOperation];

      if (v22)
      {
        if (qword_101AD5C98 != -1)
        {
          sub_101367900();
        }

        v6 = v65;
        if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
        {
          sub_101367928();
        }

        [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:5, v64];
        goto LABEL_114;
      }

      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:v20];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = sub_10042B6C0([v20 type]);
      v32 = [v13 freehandDrawingBehaviorForTouchType:objc_msgSend(v20 atUnscaledPoint:{"type"), v28, v30}];
      v33 = v32;
      if (v32 == 2)
      {
        if ([v13 isInDrawingMode])
        {
          v34 = [(CRLiOSFreehandDrawingGestureRecognizer *)self p_selectTargetFreehandInfoForDrawing:0];
          goto LABEL_29;
        }
      }

      else if (v32 == 3)
      {
        v34 = 1;
        goto LABEL_29;
      }

      v34 = 0;
LABEL_29:
      if (qword_101AD5C98 != -1)
      {
        sub_10136768C();
      }

      v35 = off_1019EFD50;
      if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
      {
        v60 = v35;
        v61 = [v20 type];
        *buf = v64;
        v96 = v61;
        v97 = 2048;
        v98 = v33;
        v99 = 1024;
        v100 = v34;
        _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "first touch began of type %zi with drawing behavior %zi. allowedToBegin? %i", buf, 0x1Cu);

        if (!v34)
        {
          goto LABEL_39;
        }
      }

      else if (!v34)
      {
        goto LABEL_39;
      }

      if (![v70 isInDrawingMode] || !objc_msgSend(v70, "currentToolAllowsDragForTouchType:atUnscaledPoint:", objc_msgSend(v20, "type"), v28, v30))
      {
        v36 = 1;
        goto LABEL_41;
      }

      if (qword_101AD5C98 != -1)
      {
        sub_1013676B4();
      }

      if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
      {
        sub_1013676DC(&v88, v89);
      }

LABEL_39:
      v36 = 0;
LABEL_41:
      if ([v20 type] == 2)
      {
        v37 = 0;
      }

      else
      {
        v38 = objc_loadWeakRetained(&self->_icc);
        v39 = [v38 layerHost];
        v40 = [v39 asiOSCVC];

        v41 = [v40 pencilMediator];
        v42 = v41;
        v37 = !v41 || ([v41 prefersPencilOnlyDrawing] & 1) != 0 || objc_msgSend(v20, "type") == 2;
      }

      v13 = v70;
      if (!v36 || v37)
      {
        if (v36)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v43 = objc_loadWeakRetained(&self->_icc);
        v44 = [v43 hitKnobAtPoint:v31 inputType:0 returningRep:{v28, v30}];

        v45 = [v44 worksWithStylus];
        if ([v70 isLassoSelectionForMixedTypeEnabledInDrawingMode])
        {
          v46 = objc_opt_class();
          v47 = sub_100014370(v46, v44);
          v45 |= v47 != 0;
        }

        if (!v44 || (v45 & 1) == 0)
        {

LABEL_60:
          v48 = +[CRLiOSKeyboardMonitor sharedKeyboardMonitor];
          [v48 onScreenHeight];
          if (v49 > 10.0 && [v48 isLocalKeyboard])
          {
            v18 = v68;
            if (qword_101AD5C98 != -1)
            {
              sub_1013678AC();
            }

            if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
            {
              sub_1013678D4(&v84, v85);
            }

            [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDrawingModeWithoutDrawingWithTouch:v20];
            [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:3];
            v17 = v69;
          }

          else
          {
            objc_storeStrong(&self->_trackingTouch, v20);
            self->_startingScaledPoint.x = v24;
            self->_startingScaledPoint.y = v26;
            if (!self->_tracker)
            {
              v50 = [CRLFreehandDrawingTracker alloc];
              v51 = objc_loadWeakRetained(&self->_icc);
              v52 = [(CRLFreehandDrawingTracker *)v50 initWithInteractiveCanvasController:v51];
              tracker = self->_tracker;
              self->_tracker = v52;
            }

            [(CRLiOSFreehandDrawingGestureRecognizer *)self p_addCoalescedAndPredictedTouchesToTrackerForTouch:self->_trackingTouch fromEvent:v66 fromTouchesEnded:0];
            v17 = v69;
            if ([(UITouch *)self->_trackingTouch type]== 2)
            {
              v18 = v68;
              if (![(CRLiOSFreehandDrawingGestureRecognizer *)self p_tapShouldAvoidDrawing])
              {
                if (qword_101AD5C98 != -1)
                {
                  sub_101367804();
                }

                if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
                {
                  sub_10136782C(&v82, v83);
                }

                [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:1];
                [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDynamicDrawing];
                goto LABEL_96;
              }

              if (qword_101AD5C98 != -1)
              {
                sub_101367858();
              }

              if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
              {
                sub_101367880(&v80, v81);
              }

              [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:1];
              v79[0] = _NSConcreteStackBlock;
              v79[1] = 3221225472;
              v79[2] = sub_1003D9114;
              v79[3] = &unk_101842CB0;
              v79[4] = self;
              v54 = 0.25;
              v55 = v79;
            }

            else
            {
              v18 = v68;
              if (!+[CRLFeatureFlagsHelper isOSFeatureEnabled:](CRLFeatureFlagsHelper, "isOSFeatureEnabled:", 11) || (v56 = objc_loadWeakRetained(&self->_icc), [v56 drawingIntelligenceProvider], v57 = objc_claimAutoreleasedReturnValue(), v56, LOBYTE(v56) = objc_msgSend(v57, "isDetectionDecoratorViewHitAtScaledPoint:", v24, v26), v57, (v56 & 1) == 0))
              {
                if (qword_101AD5C98 != -1)
                {
                  sub_1013677B0();
                }

                if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
                {
                  sub_1013677D8(&v77, v78);
                }

                [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDynamicDrawing];
              }

              v75[0] = _NSConcreteStackBlock;
              v75[1] = 3221225472;
              v75[2] = sub_1003D9240;
              v75[3] = &unk_10185E120;
              v75[4] = self;
              v76 = 1;
              v54 = 0.25;
              v55 = v75;
            }

            v58 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v55 block:v54];
            beginDelayTimer = self->_beginDelayTimer;
            self->_beginDelayTimer = v58;
          }

LABEL_96:

          v14 = v67;
          goto LABEL_97;
        }

        if (qword_101AD5C98 != -1)
        {
          sub_101367708();
        }

        if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
        {
          sub_101367730(&v86, v87);
        }
      }

      if (qword_101AD5C98 != -1)
      {
        sub_10136775C();
      }

      v14 = v67;
      v18 = v68;
      v17 = v69;
      if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
      {
        sub_101367784(&v73, v74);
      }

      [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:5];
LABEL_97:
      v19 = v19 + 1;
    }

    while (v17 != v19);
    v62 = [v14 countByEnumeratingWithState:&v90 objects:v101 count:16];
    v17 = v62;
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_102:

  v6 = v65;
  if (![(CRLiOSFreehandDrawingGestureRecognizer *)self state]&& self->_didBeginDynamicDrawing)
  {
    v14 = objc_loadWeakRetained(&self->_icc);
    v63 = [v14 dynamicOperationController];
    [v63 handleTrackerManipulator:self];

LABEL_114:
  }

LABEL_116:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v27 touchesMoved:v6 withEvent:v7];
  if (self->_trackingTouch && [v6 containsObject:?] && !-[CRLiOSFreehandDrawingGestureRecognizer p_isStateDone](self, "p_isStateDone"))
  {
    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:self->_trackingTouch];
    v9 = v8;
    v11 = v10;
    v12 = sub_100120090(v8, v10, self->_startingScaledPoint.x, self->_startingScaledPoint.y);
    if ([(UITouch *)self->_trackingTouch type]== 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_icc);
      v14 = [WeakRetained freehandDrawingToolkit];
      [v14 keepPencilShadowVisible];
    }

    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_addCoalescedAndPredictedTouchesToTrackerForTouch:self->_trackingTouch fromEvent:v7 fromTouchesEnded:0];
    v16 = [(UITouch *)self->_trackingTouch type]== 2 && ([(CRLiOSFreehandDrawingGestureRecognizer *)self state]== 1 || [(CRLiOSFreehandDrawingGestureRecognizer *)self state]== 2) && v12 > 20.0 && !self->_didBeginDynamicDrawing;
    if ([(UITouch *)self->_trackingTouch type]== 2)
    {
      v17 = 0;
    }

    else
    {
      v18 = [(CRLiOSFreehandDrawingGestureRecognizer *)self state];
      v17 = v12 > 163.0 && v18 == 0;
    }

    if (v16 || v17)
    {
      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_clearTimerIfNeeded];
      v20 = objc_loadWeakRetained(&self->_icc);
      v21 = [v20 tmCoordinator];
      v22 = [v21 controllingTM];

      if (!v22 || v22 == self)
      {
        if (qword_101AD5C98 != -1)
        {
          sub_101367A48();
        }

        v23 = off_1019EFD50;
        if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
        {
          v26 = sub_100120090(self->_startingScaledPoint.x, self->_startingScaledPoint.y, v9, v11);
          *buf = 134217984;
          v29 = v26;
          _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "beginning due to enough movement (%f)", buf, 0xCu);
        }

        if (![(CRLiOSFreehandDrawingGestureRecognizer *)self state])
        {
          [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:1];
        }

        if (!self->_didBeginDynamicDrawing)
        {
          [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDynamicDrawing];
        }
      }

      else
      {
        [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
      }
    }

    if (![(CRLiOSFreehandDrawingGestureRecognizer *)self state]&& self->_didBeginDynamicDrawing)
    {
      v24 = objc_loadWeakRetained(&self->_icc);
      v25 = [v24 dynamicOperationController];
      [v25 handleTrackerManipulator:self];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v8 touchesEnded:v6 withEvent:v7];
  if (self->_trackingTouch && [v6 containsObject:?] && !-[CRLiOSFreehandDrawingGestureRecognizer p_isStateDone](self, "p_isStateDone"))
  {
    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_endSuccessfullyWithEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v7 touchesCancelled:v6 withEvent:a4];
  if (self->_trackingTouch && [v6 containsObject:?] && !-[CRLiOSFreehandDrawingGestureRecognizer p_isStateDone](self, "p_isStateDone"))
  {
    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
  }
}

- (void)touchesEstimatedPropertiesUpdated:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLiOSFreehandDrawingGestureRecognizer;
  [(CRLiOSFreehandDrawingGestureRecognizer *)&v8 touchesEstimatedPropertiesUpdated:v4];
  if (self->_trackingTouch && [v4 containsObject:?] && !-[CRLiOSFreehandDrawingGestureRecognizer p_isStateDone](self, "p_isStateDone"))
  {
    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:self->_trackingTouch];
    v7 = [[CRLFreehandDrawingToolInputPoint alloc] initWithUnscaledPoint:self->_trackingTouch touch:self->_lastActiveInputProperties activeInputProperties:0 isPredicted:0 wasAddedByTouchesEnded:v5, v6];
    [(CRLFreehandDrawingTracker *)self->_tracker estimatedPropertiesUpdatedOnInputPoint:v7];
  }
}

- (void)reset
{
  if (qword_101AD5C98 != -1)
  {
    sub_101367A70();
  }

  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367A84();
  }

  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_clearTimerIfNeeded];
  if (self->_didDisableScrolling)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v4 = [WeakRetained layerHost];
    v5 = [v4 canvasView];
    v6 = [v5 enclosingScrollView];
    [v6 setScrollEnabled:1];

    self->_didDisableScrolling = 0;
  }

  tracker = self->_tracker;
  self->_tracker = 0;

  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  self->_lastActiveInputProperties = 0;
  self->_startingScaledPoint = xmmword_1014629F0;
  self->_didBeginDynamicDrawing = 0;
}

- (unint64_t)inputType
{
  result = self->_trackingTouch;
  if (result)
  {
    if ([result type] == 2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)operationDidEnd
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v3 = [WeakRetained dynamicOperationController];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self removeTarget:v3 action:"handleGestureRecognizer:"];
}

- (void)p_endSuccessfullyWithEvent:(id)a3
{
  v4 = a3;
  if (qword_101AD5C98 != -1)
  {
    sub_101367AB8();
  }

  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367ACC();
  }

  if ([(UITouch *)self->_trackingTouch type]!= 2 && ![(CRLiOSFreehandDrawingGestureRecognizer *)self state]&& ![(CRLiOSFreehandDrawingGestureRecognizer *)self p_tapShouldAvoidDrawing])
  {
    if (qword_101AD5C98 != -1)
    {
      sub_101367B00();
    }

    if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
    {
      sub_101367B28();
    }

    [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:1];
    if (!self->_didBeginDynamicDrawing)
    {
      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDynamicDrawing];
    }
  }

  if ([(UITouch *)self->_trackingTouch type]== 2 && ([(CRLiOSFreehandDrawingGestureRecognizer *)self state]== 1 || [(CRLiOSFreehandDrawingGestureRecognizer *)self state]== 2) && !self->_didBeginDynamicDrawing)
  {
    if (qword_101AD5C98 != -1)
    {
      sub_101367B5C();
    }

    if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
    {
      sub_101367B84();
    }

    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v6 = [WeakRetained freehandDrawingToolkit];
    v7 = [v6 isInDrawingMode];

    if ((v7 & 1) == 0)
    {
      [(CRLiOSFreehandDrawingGestureRecognizer *)self p_beginDrawingModeWithoutDrawingWithTouch:self->_trackingTouch];
    }
  }

  if (v4)
  {
    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_addCoalescedAndPredictedTouchesToTrackerForTouch:self->_trackingTouch fromEvent:v4 fromTouchesEnded:1];
  }

  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_clearTimerIfNeeded];
  [(CRLFreehandDrawingTracker *)self->_tracker finishWithSuccess:1];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_hideEditMenuIfNeeded];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_closeCVCDelegatePresentedViewControllerIfNeeded];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self setState:3];
}

- (void)p_cancelOrFailAndCleanUpChanges
{
  if (qword_101AD5C98 != -1)
  {
    sub_101367BB8();
  }

  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367BCC();
  }

  v3 = [(CRLiOSFreehandDrawingGestureRecognizer *)self state];
  if ((v3 - 3) < 3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101367C00();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367C28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367CBC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingGestureRecognizer p_cancelOrFailAndCleanUpChanges]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:625 isFatal:0 description:"Cannot cancel/fail a GR that has already ended."];
  }

  else
  {
    if ((v3 - 1) >= 2)
    {
      if (v3)
      {
        goto LABEL_20;
      }

      v4 = self;
      v5 = 5;
    }

    else
    {
      v4 = self;
      v5 = 4;
    }

    [(CRLiOSFreehandDrawingGestureRecognizer *)v4 setState:v5];
  }

LABEL_20:
  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_clearTimerIfNeeded];
  tracker = self->_tracker;
  if (tracker)
  {
    [(CRLFreehandDrawingTracker *)tracker finishWithSuccess:0];
  }

  if (self->_didBeginDynamicDrawing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v11 = [WeakRetained dynamicOperationController];
    [v11 handleTrackerManipulator:self];
  }
}

- (BOOL)p_tapShouldAvoidDrawing
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained layerHost];
  v5 = [v4 asUIKitHost];

  if ([v5 contextMenuMightBeDisplayed] & 1) != 0 || (objc_msgSend(v5, "documentChromeHasPresentedViewController"))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_icc);
    v8 = [v7 freehandDrawingToolkit];
    v6 = [v8 isInDrawingMode] ^ 1;
  }

  return v6;
}

- (void)p_beginDynamicDrawing
{
  if (qword_101AD5C98 != -1)
  {
    sub_101367CE4();
  }

  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367CF8();
  }

  self->_didBeginDynamicDrawing = 1;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained dynamicOperationController];
  v5 = [v4 isInPossibleDynamicOperation];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_icc);
    v7 = [v6 dynamicOperationController];
    [v7 endOperation];
  }

  v8 = objc_loadWeakRetained(&self->_icc);
  v9 = [v8 dynamicOperationController];
  v10 = [v9 isInOperation];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_icc);
    v12 = [v11 dynamicOperationController];
    [v12 cancelOperation];
  }

  v13 = objc_loadWeakRetained(&self->_icc);
  [v13 endEditing];

  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_hideEditMenuIfNeeded];
  v14 = objc_loadWeakRetained(&self->_icc);
  v15 = [v14 dynamicOperationController];
  [(CRLiOSFreehandDrawingGestureRecognizer *)self addTarget:v15 action:"handleGestureRecognizer:"];

  v16 = objc_loadWeakRetained(&self->_icc);
  v17 = [v16 tmCoordinator];
  [v17 registerTrackerManipulator:self];

  v18 = objc_loadWeakRetained(&self->_icc);
  v19 = [v18 tmCoordinator];
  v20 = [v19 takeControlWithTrackerManipulator:self];

  if ((v20 & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101367D2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367D54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367DE8();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v21);
    }

    v22 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingGestureRecognizer p_beginDynamicDrawing]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingGestureRecognizer.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:684 isFatal:0 description:"Freehand drawing GR did not successfully take control"];
  }

  v24 = objc_loadWeakRetained(&self->_icc);
  v25 = [v24 dynamicOperationController];
  [v25 beginOperation];
}

- (void)p_beginDrawingModeWithoutDrawingWithTouch:(id)a3
{
  v4 = a3;
  if (qword_101AD5C98 != -1)
  {
    sub_101367E10();
  }

  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367E24();
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained freehandDrawingToolkit];

  [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:v4];
  v8 = v7;
  v10 = v9;
  v11 = [v6 freehandDrawingBehaviorForTouchType:objc_msgSend(v4 atUnscaledPoint:{"type"), v7, v9}];
  [v6 beginDrawingModeIfNeededForTouchType:{objc_msgSend(v4, "type")}];
  if (v11 == 2)
  {
    v12 = objc_loadWeakRetained(&self->_icc);
    v13 = [v12 hitRep:{v8, v10}];

    v14 = [v13 info];
    if (v14)
    {
      v15 = v14;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v16 = [v15 parentInfo];

        v15 = v16;
        if (!v16)
        {
          goto LABEL_12;
        }
      }

      v17 = objc_loadWeakRetained(&self->_icc);
      v18 = [v17 canvasEditor];
      v19 = objc_opt_class();
      v25 = sub_100303920(v15, v19, 1, v20, v21, v22, v23, v24, &OBJC_PROTOCOL___CRLCanvasElementInfo);
      v26 = [v18 selectionPathWithInfo:v25];

      v27 = objc_loadWeakRetained(&self->_icc);
      [v27 setSelectionPath:v26 withSelectionFlags:0];
    }

LABEL_12:
  }
}

- (void)p_clearTimerIfNeeded
{
  beginDelayTimer = self->_beginDelayTimer;
  if (beginDelayTimer)
  {
    [(NSTimer *)beginDelayTimer invalidate];
    v4 = self->_beginDelayTimer;
    self->_beginDelayTimer = 0;
  }
}

- (void)p_hideEditMenuIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v3 = [WeakRetained layerHost];
  v4 = [v3 asUIKitHost];

  if ([v4 contextMenuMightBeDisplayed])
  {
    [v4 hideEditMenu];
    [v4 setContextMenuMightBeDisplayed:1];
  }
}

- (void)p_closeCVCDelegatePresentedViewControllerIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v3 = [WeakRetained layerHost];
  v4 = [v3 asUIKitHost];

  if ([v4 documentChromeHasPresentedViewController])
  {
    [v4 dismissDocumentChromePresentedViewController];
  }
}

- (void)p_addCoalescedAndPredictedTouchesToTrackerForTouch:(id)a3 fromEvent:(id)a4 fromTouchesEnded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v8;
  obj = [v9 coalescedTouchesForTouch:v8];
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:v14];
        v17 = [[CRLFreehandDrawingToolInputPoint alloc] initWithUnscaledPoint:v14 touch:v9 event:0 isPredicted:v5 wasAddedByTouchesEnded:v15, v16];
        [(CRLFreehandDrawingTracker *)self->_tracker addPoint:v17];
        self->_lastActiveInputProperties = [(CRLFreehandDrawingToolInputPoint *)v17 activeInputProperties];
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [v9 predictedTouchesForTouch:v8];
  v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v29 + 1) + 8 * j);
        [(CRLiOSFreehandDrawingGestureRecognizer *)self p_canvasTouchPointFromTouch:v23];
        v26 = [[CRLFreehandDrawingToolInputPoint alloc] initWithUnscaledPoint:v23 touch:v9 event:1 isPredicted:v5 wasAddedByTouchesEnded:v24, v25];
        [(CRLFreehandDrawingTracker *)self->_tracker addPoint:v26];
      }

      v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }
}

- ($D9ACD5A945031E604089763E4FBE0988)p_canvasTouchPointFromTouch:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained canvasView];
  [v4 preciseLocationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained(&self->_icc);
  [v11 convertBoundsToUnscaledPoint:{v8, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v8;
  v17 = v10;
  v18 = v13;
  v19 = v15;
  result.var1.y = v19;
  result.var1.x = v18;
  result.var0.y = v17;
  result.var0.x = v16;
  return result;
}

- (void)p_canvasWillScrollOrZoom:(id)a3
{
  v4 = a3;
  if (self->_trackingTouch && ![(CRLiOSFreehandDrawingGestureRecognizer *)self p_isStateDone])
  {
    if (qword_101AD5C98 != -1)
    {
      sub_101367E58();
    }

    if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
    {
      sub_101367E6C();
    }

    [(CRLiOSFreehandDrawingGestureRecognizer *)self p_cancelOrFailAndCleanUpChanges];
  }
}

@end