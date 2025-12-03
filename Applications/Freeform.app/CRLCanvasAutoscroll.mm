@interface CRLCanvasAutoscroll
+ (void)startAutoscroll:(id)autoscroll unscaledPoint:(CGPoint)point;
- (BOOL)p_startAutoscroll:(id)autoscroll unscaledPoint:(CGPoint)point unscaledDistancePastVisibleRect:(double)rect unscaledInset:(double)inset directions:(int)directions repeatInterval:(double)interval;
- (CGPoint)adjustedUnscaledAutoscrollPoint;
- (CGPoint)lastAutoscrollDelta;
- (CGPoint)unscaledAutoscrollPoint;
- (unint64_t)p_unscaledDeltaForCount:(unint64_t)count;
- (void)dealloc;
- (void)invalidate;
- (void)p_autoscrollIfPossibleWithDelta:(unint64_t)delta;
- (void)timerFired:(id)fired;
@end

@implementation CRLCanvasAutoscroll

- (void)dealloc
{
  [(CRLCanvasAutoscroll *)self invalidate];
  v3.receiver = self;
  v3.super_class = CRLCanvasAutoscroll;
  [(CRLCanvasAutoscroll *)&v3 dealloc];
}

+ (void)startAutoscroll:(id)autoscroll unscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  autoscrollCopy = autoscroll;
  v6 = [autoscrollCopy icc];
  [v6 viewScale];
  v8 = 20.0 / v7;
  if (autoscrollCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [autoscrollCopy unscaledStartAutoscrollThreshold];
    v10 = v9;
    [v6 viewScale];
    v8 = v10 / v11;
  }

  [v6 visibleUnscaledRectForAutoscroll];
  v88 = CGRectInset(v87, v8, v8);
  v12 = v88.origin.x;
  v13 = v88.origin.y;
  width = v88.size.width;
  height = v88.size.height;
  v86.x = x;
  v86.y = y;
  if (CGRectContainsPoint(v88, v86) || ![v6 allowAutoscroll])
  {
    autoscroll = [autoscrollCopy autoscroll];
    [autoscroll invalidate];
    goto LABEL_60;
  }

  v79 = v8;
  v82 = x;
  v83 = y;
  autoscroll2 = [autoscrollCopy autoscroll];

  if (!autoscroll2)
  {
    v17 = objc_alloc_init(CRLCanvasAutoscroll);
    [autoscrollCopy setAutoscroll:v17];
  }

  canvasView = [v6 canvasView];
  autoscroll = [canvasView enclosingScrollView];

  [v6 contentOffset];
  v80 = v20;
  v81 = v21;
  layerHost = [v6 layerHost];
  canvasView2 = [layerHost canvasView];
  [canvasView2 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v6 viewScale];
  v33 = sub_10011FFD8(v25, v27, v29, v31, 1.0 / v32);
  v77 = v34;
  v78 = v33;
  v75 = v36;
  v76 = v35;

  [autoscroll scrollableAreaBounds];
  v38 = v37;
  v40 = v39;
  [autoscroll scrollableAreaContentInsets];
  v43 = v38 - (v41 + v42);
  v46 = v40 - (v44 + v45);
  [v6 viewScale];
  v72 = sub_10011F340(v43, v46, 1.0 / v47);
  v74 = v48;
  if (autoscrollCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    allowedAutoscrollDirections = [autoscrollCopy allowedAutoscrollDirections];
  }

  else
  {
    allowedAutoscrollDirections = 15;
  }

  allowNegativeAutoscroll = [v6 allowNegativeAutoscroll];
  v89.origin.x = v12;
  v89.origin.y = v13;
  v89.size.width = width;
  v89.size.height = height;
  MinX = CGRectGetMinX(v89);
  v90.origin.x = v12;
  v90.origin.y = v13;
  v90.size.width = width;
  v90.size.height = height;
  MaxX = CGRectGetMaxX(v90);
  if (v80 > 0.0)
  {
    v53 = 1;
  }

  else
  {
    v53 = allowNegativeAutoscroll;
  }

  if ((allowedAutoscrollDirections & 1) == 0 || (v82 < MinX ? (v54 = v53 == 0) : (v54 = 1), v54))
  {
    v57 = 0;
    if (v80 >= 0.0)
    {
      v58 = 1;
    }

    else
    {
      v58 = allowNegativeAutoscroll;
    }

    v55 = 1;
    if ((allowedAutoscrollDirections & 2) == 0 || (v82 >= MaxX ? (v59 = v58 == 0) : (v59 = 1), v59))
    {
      v56 = 0.0;
    }

    else
    {
      v92.origin.y = v77;
      v92.origin.x = v78;
      v92.size.height = v75;
      v92.size.width = v76;
      if (v80 >= CGRectGetMaxX(v92) - v73)
      {
        v56 = 0.0;
        v57 = 0;
      }

      else
      {
        v93.origin.x = v12;
        v93.origin.y = v13;
        v93.size.width = width;
        v93.size.height = height;
        v55 = 0;
        v56 = v82 - CGRectGetMaxX(v93);
        v57 = 2;
      }
    }
  }

  else
  {
    v91.origin.x = v12;
    v91.origin.y = v13;
    v91.size.width = width;
    v91.size.height = height;
    v55 = 0;
    v56 = CGRectGetMinX(v91) - v82;
    v57 = 1;
  }

  v94.origin.x = v12;
  v94.origin.y = v13;
  v94.size.width = width;
  v94.size.height = height;
  MinY = CGRectGetMinY(v94);
  v95.origin.x = v12;
  v95.origin.y = v13;
  v95.size.width = width;
  v95.size.height = height;
  MaxY = CGRectGetMaxY(v95);
  v62 = v81;
  if (v81 > 0.0)
  {
    v63 = 1;
  }

  else
  {
    v63 = allowNegativeAutoscroll;
  }

  if ((allowedAutoscrollDirections & 4) != 0 && v83 < MinY && v63 != 0)
  {
    v57 = v57 | 4;
    v96.origin.x = v12;
    v96.origin.y = v13;
    v96.size.width = width;
    v96.size.height = height;
    v65 = CGRectGetMinY(v96) - v83;
    goto LABEL_43;
  }

  if (v81 >= 0.0)
  {
    v66 = 1;
  }

  else
  {
    v66 = allowNegativeAutoscroll;
  }

  if ((allowedAutoscrollDirections & 8) != 0 && v83 >= MaxY && v66 != 0)
  {
    v97.origin.y = v77;
    v97.origin.x = v78;
    v97.size.height = v75;
    v97.size.width = v76;
    v68 = CGRectGetMaxY(v97);
    v62 = v74;
    MaxY = v68 - v74;
    if (v81 < MaxY)
    {
      v57 = v57 | 8;
      v98.origin.x = v12;
      v98.origin.y = v13;
      v98.size.width = width;
      v98.size.height = height;
      v65 = v83 - CGRectGetMaxY(v98);
LABEL_43:
      if (v56 < v65)
      {
        v56 = v65;
      }

      goto LABEL_58;
    }
  }

  if ((v55 & 1) == 0)
  {
LABEL_58:
    editingCoordinator = [v6 editingCoordinator];
    followCoordinator = [editingCoordinator followCoordinator];
    [followCoordinator endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:1];

    autoscroll3 = [autoscrollCopy autoscroll];
    [autoscroll3 p_startAutoscroll:autoscrollCopy unscaledPoint:v57 unscaledDistancePastVisibleRect:v82 unscaledInset:v83 directions:v56 repeatInterval:{v79, 0.035}];
    goto LABEL_59;
  }

  autoscroll3 = [autoscrollCopy autoscroll];
  [autoscroll3 invalidate];
LABEL_59:

LABEL_60:
}

- (BOOL)p_startAutoscroll:(id)autoscroll unscaledPoint:(CGPoint)point unscaledDistancePastVisibleRect:(double)rect unscaledInset:(double)inset directions:(int)directions repeatInterval:(double)interval
{
  v9 = *&directions;
  y = point.y;
  x = point.x;
  autoscrollCopy = autoscroll;
  if (self->_timer)
  {
    target = [(CRLCanvasAutoscroll *)self target];
    if (target == autoscrollCopy && ([(CRLCanvasAutoscroll *)self unscaledAutoscrollPoint], v23 == x) && v22 == y && [(CRLCanvasAutoscroll *)self directions]== v9)
    {
      [(CRLCanvasAutoscroll *)self repeatInterval];
      v25 = v24;

      if (v25 == interval)
      {
LABEL_31:
        v21 = 1;
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  v17 = objc_opt_respondsToSelector();
  v18 = interval == 0.0 || v9 == 0;
  if (!v18 && (v17 & 1) != 0)
  {
    v19 = [[NSDate alloc] initWithTimeIntervalSinceNow:0.0];
    timer = self->_timer;
    if (timer)
    {
      [(NSTimer *)timer setFireDate:v19];
    }

    else
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_lastFired = v26;
      if (!+[NSThread isMainThread])
      {
        v27 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10133E770();
        }

        v28 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10133E784(v27, v28);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10133E830();
        }

        v29 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EE10(v29, v27);
        }

        v30 = [NSString stringWithUTF8String:"[CRLCanvasAutoscroll p_startAutoscroll:unscaledPoint:unscaledDistancePastVisibleRect:unscaledInset:directions:repeatInterval:]"];
        v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAutoscroll.m"];
        [CRLAssertionHandler handleFailureInFunction:v30 file:v31 lineNumber:170 isFatal:0 description:"This operation must only be performed on the main thread."];
      }

      v32 = [[NSTimer alloc] initWithFireDate:v19 interval:self target:"timerFired:" selector:0 userInfo:1 repeats:interval];
      v33 = self->_timer;
      self->_timer = v32;

      v34 = +[NSRunLoop currentRunLoop];
      [v34 addTimer:self->_timer forMode:NSDefaultRunLoopMode];
    }

    if ([(CRLCanvasAutoscroll *)self directions]!= v9)
    {
      [(CRLCanvasAutoscroll *)self setCount:0];
    }

    [(CRLCanvasAutoscroll *)self setTarget:autoscrollCopy];
    [(CRLCanvasAutoscroll *)self setUnscaledAutoscrollPoint:x, y];
    [(CRLCanvasAutoscroll *)self setAdjustedUnscaledAutoscrollPoint:x, y];
    [(CRLCanvasAutoscroll *)self setDirections:v9];
    [(CRLCanvasAutoscroll *)self setRepeatInterval:interval];
    [(CRLCanvasAutoscroll *)self setUnscaledDistancePastVisibleRect:rect];
    [(CRLCanvasAutoscroll *)self setUnscaledInset:inset];

    goto LABEL_31;
  }

  [(CRLCanvasAutoscroll *)self invalidate];
  v21 = 0;
LABEL_32:

  return v21;
}

- (void)invalidate
{
  timer = self->_timer;
  if (timer)
  {
    v4 = timer;
    v5 = self->_timer;
    self->_timer = 0;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100268714;
    block[3] = &unk_10183AB38;
    v10 = v4;
    v6 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  target = [(CRLCanvasAutoscroll *)self target];
  [target autoscrollWillNotStart];

  [(CRLCanvasAutoscroll *)self setTarget:0];
  y = CGPointZero.y;
  [(CRLCanvasAutoscroll *)self setUnscaledAutoscrollPoint:CGPointZero.x, y];
  [(CRLCanvasAutoscroll *)self setAdjustedUnscaledAutoscrollPoint:CGPointZero.x, y];
  [(CRLCanvasAutoscroll *)self setDirections:0];
  [(CRLCanvasAutoscroll *)self setRepeatInterval:0.0];
  [(CRLCanvasAutoscroll *)self setCount:0];
  [(CRLCanvasAutoscroll *)self setUnscaledDistancePastVisibleRect:0.0];
  [(CRLCanvasAutoscroll *)self setUnscaledInset:1.0];
}

- (unint64_t)p_unscaledDeltaForCount:(unint64_t)count
{
  target = [(CRLCanvasAutoscroll *)self target];
  if (target && (v6 = target, [(CRLCanvasAutoscroll *)self target], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    target2 = [(CRLCanvasAutoscroll *)self target];
    v10 = [target2 maximumAutoscrollDeltaForCount:count];

    v11 = v10;
  }

  else
  {
    v11 = 48.0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12 - self->_lastFired;
  [(CRLCanvasAutoscroll *)self repeatInterval];
  result = (v11 * (v13 / v14));
  if (count <= 0x18)
  {
    return ((1.0 / (26 - count)) * result);
  }

  return result;
}

- (void)timerFired:(id)fired
{
  [(CRLCanvasAutoscroll *)self setCount:[(CRLCanvasAutoscroll *)self count]+ 1];
  target = [(CRLCanvasAutoscroll *)self target];
  if (target)
  {
    v5 = target;
    target2 = [(CRLCanvasAutoscroll *)self target];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      target3 = [(CRLCanvasAutoscroll *)self target];
      allowedAutoscrollDirections = [target3 allowedAutoscrollDirections];

      directions = [(CRLCanvasAutoscroll *)self directions];
      if ((directions & ~allowedAutoscrollDirections) != 0)
      {
        v11 = directions;
        [(CRLCanvasAutoscroll *)self setCount:0];
        [(CRLCanvasAutoscroll *)self setDirections:v11 & allowedAutoscrollDirections];
      }
    }
  }

  v12 = [(CRLCanvasAutoscroll *)self p_unscaledDeltaForCount:[(CRLCanvasAutoscroll *)self count]];

  [(CRLCanvasAutoscroll *)self p_autoscrollIfPossibleWithDelta:v12];
}

- (void)p_autoscrollIfPossibleWithDelta:(unint64_t)delta
{
  directions = [(CRLCanvasAutoscroll *)self directions];
  target = [(CRLCanvasAutoscroll *)self target];
  v85 = [target icc];

  canvasView = [v85 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  [v85 contentOffset];
  v83 = v10;
  v84 = v9;
  layerHost = [v85 layerHost];
  canvasLayer = [layerHost canvasLayer];
  [canvasLayer contentInset];
  v14 = v13;
  v16 = v15;

  [v85 viewScale];
  v18 = v17;
  layerHost2 = [v85 layerHost];
  canvasView2 = [layerHost2 canvasView];
  [canvasView2 bounds];
  v21 = 1.0 / v18;
  v81 = sub_10011FFD8(v22, v23, v24, v25, 1.0 / v18);
  v82 = v26;
  v28 = v27;
  v30 = v29;

  [enclosingScrollView scrollableAreaBounds];
  v32 = v31;
  v34 = v33;
  [enclosingScrollView scrollableAreaContentInsets];
  v37 = v32 - (v35 + v36);
  v40 = v34 - (v38 + v39);
  [v85 viewScale];
  v42 = sub_10011F340(v37, v40, 1.0 / v41);
  v79 = v43;
  v44 = sub_10011F340(v16, v14, v21);
  v80 = v45;
  target2 = [(CRLCanvasAutoscroll *)self target];
  if (target2 && (v47 = target2, [(CRLCanvasAutoscroll *)self target], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_opt_respondsToSelector(), v48, v47, (v49 & 1) != 0))
  {
    target3 = [(CRLCanvasAutoscroll *)self target];
    allowScrollingOutsideOfBounds = [target3 allowScrollingOutsideOfBounds];
  }

  else
  {
    allowScrollingOutsideOfBounds = [v85 shouldCanvasScrollingSizeGrowToFitBoardContent];
  }

  if (directions)
  {
    v87.origin.x = v81;
    v87.origin.y = v82;
    v87.size.width = v28;
    v87.size.height = v30;
    MinX = CGRectGetMinX(v87);
    v52 = v84 - delta;
    if (allowScrollingOutsideOfBounds)
    {
      goto LABEL_12;
    }

    v54 = v85;
    if (v84 > MinX)
    {
      v55 = v52;
      v56 = MinX;
      v57 = fmaxf(v55, v56);
      goto LABEL_20;
    }

    directions &= ~1u;
LABEL_37:
    v52 = v84;
    if ((directions & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_13:
    if ((directions & 8) == 0)
    {
      goto LABEL_30;
    }

    v89.origin.x = v81;
    v89.origin.y = v82;
    v89.size.width = v28;
    v89.size.height = v30;
    MaxY = CGRectGetMaxY(v89);
    v60 = v83 + delta;
    if ((allowScrollingOutsideOfBounds & 1) == 0)
    {
      v61 = MaxY - v79;
      v54 = v85;
      if (v83 < v61)
      {
        v62 = v60;
        v63 = v61;
        v64 = fminf(v62, v63);
LABEL_27:
        v60 = v64;
        goto LABEL_31;
      }

      directions &= 0xFFFFFFF3;
      goto LABEL_30;
    }

LABEL_24:
    v54 = v85;
LABEL_31:
    [v54 setContentOffset:@"CRLCanvasAutoscrollInteractionSource" source:0 scrollOptions:{v52, v60}];
    [(CRLCanvasAutoscroll *)self setLastAutoscrollDelta:sub_10011F31C(v52, v60, v84)];
    [(CRLCanvasAutoscroll *)self adjustedUnscaledAutoscrollPoint];
    v73 = v72;
    v75 = v74;
    [(CRLCanvasAutoscroll *)self lastAutoscrollDelta];
    [(CRLCanvasAutoscroll *)self setAdjustedUnscaledAutoscrollPoint:sub_10011F334(v73, v75, v76)];
    target4 = [(CRLCanvasAutoscroll *)self target];
    [target4 updateAfterAutoscroll:self];

    +[NSDate timeIntervalSinceReferenceDate];
    self->_lastFired = v78;
    goto LABEL_32;
  }

  if ((directions & 2) == 0)
  {
    v52 = v84;
    goto LABEL_12;
  }

  v88.origin.x = v81;
  v88.origin.y = v82;
  v88.size.width = v28;
  v88.size.height = v30;
  MaxX = CGRectGetMaxX(v88);
  v52 = v84 + delta;
  if ((allowScrollingOutsideOfBounds & 1) == 0)
  {
    v65 = MaxX - v42;
    v54 = v85;
    if (v84 < v65)
    {
      v66 = v52;
      v67 = v65;
      v57 = fminf(v66, v67);
LABEL_20:
      v52 = v57;
      if ((directions & 4) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    directions &= 0xFFFFFFFC;
    goto LABEL_37;
  }

LABEL_12:
  v54 = v85;
  if ((directions & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  shouldCanvasScrollingSizeGrowToFitBoardContent = [v54 shouldCanvasScrollingSizeGrowToFitBoardContent];
  MinY = v80;
  if (shouldCanvasScrollingSizeGrowToFitBoardContent)
  {
    v90.origin.x = v81;
    v90.origin.y = v82;
    v90.size.width = v28;
    v90.size.height = v30;
    MinY = CGRectGetMinY(v90);
  }

  v60 = v83 - delta;
  if (allowScrollingOutsideOfBounds)
  {
    goto LABEL_24;
  }

  v54 = v85;
  if (v83 > MinY)
  {
    v70 = v60;
    v71 = MinY;
    v64 = fmaxf(v70, v71);
    goto LABEL_27;
  }

  directions &= ~4u;
LABEL_30:
  v60 = v83;
  if (directions)
  {
    goto LABEL_31;
  }

  [(CRLCanvasAutoscroll *)self invalidate];
LABEL_32:
}

- (CGPoint)unscaledAutoscrollPoint
{
  x = self->_unscaledAutoscrollPoint.x;
  y = self->_unscaledAutoscrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)adjustedUnscaledAutoscrollPoint
{
  x = self->_adjustedUnscaledAutoscrollPoint.x;
  y = self->_adjustedUnscaledAutoscrollPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastAutoscrollDelta
{
  x = self->_lastAutoscrollDelta.x;
  y = self->_lastAutoscrollDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

@end