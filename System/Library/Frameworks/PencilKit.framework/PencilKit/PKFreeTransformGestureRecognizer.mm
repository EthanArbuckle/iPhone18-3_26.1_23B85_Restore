@interface PKFreeTransformGestureRecognizer
- (BOOL)touchesMovedPastScaleThreshold:(double)threshold;
- (BOOL)touchesMovedPastThreshold:(double)threshold;
- (CGAffineTransform)accumulatedTransform;
- (CGAffineTransform)clampTransform:(SEL)transform minScale:(CGAffineTransform *)scale maxScale:(double)maxScale;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)unscaledFreeTransform;
- (CGPoint)locationInView:(id)view;
- (PKFreeTransformGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)clearTouches;
- (void)reset;
- (void)resetAndAccumulateTransform;
- (void)resetStartingTouches;
- (void)setAccumulatedTransform:(CGAffineTransform *)transform;
- (void)touchesBegan:(id)began withEvent:(id)event rejectExcessTouches:(BOOL)touches;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation PKFreeTransformGestureRecognizer

- (PKFreeTransformGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = PKFreeTransformGestureRecognizer;
  v4 = [(PKFreeTransformGestureRecognizer *)&v9 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_startThreshold = 10.0;
    v4->_cancelThreshold = 10.0;
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v4->_accumulatedTransform.a = *MEMORY[0x1E695EFD0];
    *&v4->_accumulatedTransform.c = v7;
    *&v4->_accumulatedTransform.tx = *(v6 + 32);
    v4->_scaleDamping = 0.5;
    v4->_allowedPanEdges = 15;
    [(PKFreeTransformGestureRecognizer *)v4 setRequiresExclusiveTouchType:0];
    [(PKFreeTransformGestureRecognizer *)v5 clearTouches];
  }

  return v5;
}

- (CGAffineTransform)clampTransform:(SEL)transform minScale:(CGAffineTransform *)scale maxScale:(double)maxScale
{
  v10 = sqrt(scale->b * scale->b + scale->a * scale->a);
  if (v10 < maxScale)
  {
    [(CGAffineTransform *)self scaleDamping];
    v12 = (v10 - maxScale) * v11 * 0.5 + maxScale;
LABEL_5:
    CGAffineTransformMakeScale(&t1, v12 / v10, v12 / v10);
    v14 = *&scale->c;
    *&v17.a = *&scale->a;
    *&v17.c = v14;
    *&v17.tx = *&scale->tx;
    self = CGAffineTransformConcat(&v19, &t1, &v17);
    v15 = *&v19.c;
    *&scale->a = *&v19.a;
    *&scale->c = v15;
    *&scale->tx = *&v19.tx;
    goto LABEL_6;
  }

  if (v10 > a6)
  {
    [(CGAffineTransform *)self scaleDamping];
    v12 = a6 + (v10 - a6) * v13;
    goto LABEL_5;
  }

LABEL_6:
  v16 = *&scale->c;
  *&retstr->a = *&scale->a;
  *&retstr->c = v16;
  *&retstr->tx = *&scale->tx;
  return self;
}

- (CGAffineTransform)freeTransform
{
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  if ([touches count] == 2)
  {
    isScaling = [(PKFreeTransformGestureRecognizer *)self isScaling];

    if (!isScaling)
    {

      return [(PKFreeTransformGestureRecognizer *)self unscaledFreeTransform];
    }
  }

  else
  {
  }

  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v9;
  *&retstr->tx = *(v8 + 32);
  if (-[PKFreeTransformGestureRecognizer allowSingleTouchDrag](self, "allowSingleTouchDrag") && (-[PKFreeTransformGestureRecognizer touches](self, "touches"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11 == 1))
  {
    touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
    firstObject = [touches2 firstObject];
    v15 = [touchStartLocations objectForKey:firstObject];
    [v15 CGPointValue];
    v17 = v16;
    v19 = v18;

    touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
    v21 = [touches3 objectAtIndexedSubscript:0];
    view = [(PKFreeTransformGestureRecognizer *)self view];
    superview = [view superview];
    [v21 locationInView:superview];
    v25 = v24;
    v27 = v26;

    CGAffineTransformMakeTranslation(retstr, v25 - v17, v27 - v19);
    if ([(PKFreeTransformGestureRecognizer *)self axisAligned])
    {
      [(PKFreeTransformGestureRecognizer *)self accumulatedTransform];
      v28 = sqrt(v89.b * v89.b + v89.a * v89.a);
      [(PKFreeTransformGestureRecognizer *)self minScale];
      v30 = v29 / v28;
      [(PKFreeTransformGestureRecognizer *)self maxScale];
      v31 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v31;
      *&t1.tx = *&retstr->tx;
      [(PKFreeTransformGestureRecognizer *)self clampTransform:&t1 minScale:v30 maxScale:v32 / v28];
      v33 = *&v89.c;
      *&retstr->a = *&v89.a;
      *&retstr->c = v33;
      *&retstr->tx = *&v89.tx;
    }
  }

  else
  {
    touches4 = [(PKFreeTransformGestureRecognizer *)self touches];
    v35 = [touches4 count];

    if (v35 == 2)
    {
      touchStartLocations2 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
      touches5 = [(PKFreeTransformGestureRecognizer *)self touches];
      v38 = [touches5 objectAtIndexedSubscript:0];
      v39 = [touchStartLocations2 objectForKey:v38];
      [v39 CGPointValue];
      v41 = v40;
      v43 = v42;

      touchStartLocations3 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
      touches6 = [(PKFreeTransformGestureRecognizer *)self touches];
      v46 = [touches6 objectAtIndexedSubscript:1];
      v47 = [touchStartLocations3 objectForKey:v46];
      [v47 CGPointValue];
      v49 = v48;
      v51 = v50;

      touches7 = [(PKFreeTransformGestureRecognizer *)self touches];
      v53 = [touches7 objectAtIndexedSubscript:0];
      view2 = [(PKFreeTransformGestureRecognizer *)self view];
      superview2 = [view2 superview];
      [v53 locationInView:superview2];
      v57 = v56;
      v59 = v58;

      touches8 = [(PKFreeTransformGestureRecognizer *)self touches];
      v61 = [touches8 objectAtIndexedSubscript:1];
      view3 = [(PKFreeTransformGestureRecognizer *)self view];
      superview3 = [view3 superview];
      [v61 locationInView:superview3];
      v65 = v64;
      v67 = v66;

      if ([(PKFreeTransformGestureRecognizer *)self axisAligned])
      {
        [(PKFreeTransformGestureRecognizer *)self accumulatedTransform];
        v85 = v51;
        v86 = v59;
        v68 = v43;
        v69 = sqrt(v89.b * v89.b + v89.a * v89.a);
        [(PKFreeTransformGestureRecognizer *)self minScale];
        v70 = v67;
        v71 = v57;
        v72 = v49;
        v73 = v41;
        *&v75 = v74 / v69;
        [(PKFreeTransformGestureRecognizer *)self maxScale];
        *&v77 = v76 / v69;
        [(PKFreeTransformGestureRecognizer *)self scaleDamping];
        DKDTransformMakeAxisAligned(retstr, v73, v68, v72, v85, v71, v86, v65, v70, v75, v77, v78);
      }

      else
      {
        DKDTransformMakeFree(0, retstr, v41, v43, v49, v51, v57, v59, v65, v67);
      }

      v79 = sqrt(retstr->b * retstr->b + retstr->a * retstr->a);
      [(PKFreeTransformGestureRecognizer *)self previousScale];
      v81 = v79 - v80;
      [(PKFreeTransformGestureRecognizer *)self setPreviousScale:v79];
      [(PKFreeTransformGestureRecognizer *)self deltaScale];
      [(PKFreeTransformGestureRecognizer *)self setDeltaScale:v82 * 0.6 + v81 * 0.4];
    }
  }

  [(PKFreeTransformGestureRecognizer *)self accumulatedTransform];
  v83 = *&retstr->c;
  *&t2.a = *&retstr->a;
  *&t2.c = v83;
  *&t2.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v89, &t1, &t2);
  v84 = *&v89.c;
  *&retstr->a = *&v89.a;
  *&retstr->c = v84;
  *&retstr->tx = *&v89.tx;
  return result;
}

- (CGAffineTransform)unscaledFreeTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v8 = [touches count];

  if (v8 == 2)
  {
    touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
    v11 = [touches2 objectAtIndexedSubscript:0];
    v12 = [touchStartLocations objectForKey:v11];
    [v12 CGPointValue];
    v14 = v13;
    v53 = v15;

    touchStartLocations2 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
    v18 = [touches3 objectAtIndexedSubscript:1];
    v19 = [touchStartLocations2 objectForKey:v18];
    [v19 CGPointValue];
    v21 = v20;
    v23 = v22;

    touches4 = [(PKFreeTransformGestureRecognizer *)self touches];
    v25 = [touches4 objectAtIndexedSubscript:0];
    view = [(PKFreeTransformGestureRecognizer *)self view];
    superview = [view superview];
    [v25 locationInView:superview];
    v54 = v29;
    v55 = v28;

    touches5 = [(PKFreeTransformGestureRecognizer *)self touches];
    v31 = [touches5 objectAtIndexedSubscript:1];
    view2 = [(PKFreeTransformGestureRecognizer *)self view];
    superview2 = [view2 superview];
    [v31 locationInView:superview2];
    v35 = v34;
    v37 = v36;

    v38 = v14;
    v39 = (v14 + v21) * 0.5;
    v40 = v23;
    v41 = (v53 + v23) * 0.5;
    v51 = (v54 + v37) * 0.5;
    v52 = (v55 + v35) * 0.5;
    if ([(PKFreeTransformGestureRecognizer *)self axisAligned])
    {

      return CGAffineTransformMakeTranslation(retstr, v52 - v39, v51 - v41);
    }

    else
    {
      v43 = atan2(v53 - v40, v38 - v21);
      v44 = atan2(v54 - v37, v55 - v35);
      CGAffineTransformMakeTranslation(retstr, -v39, -v41);
      CGAffineTransformMakeRotation(&t2, v44 - v43);
      v45 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v45;
      *&t1.tx = *&retstr->tx;
      CGAffineTransformConcat(&v58, &t1, &t2);
      v46 = *&v58.c;
      *&retstr->a = *&v58.a;
      *&retstr->c = v46;
      *&retstr->tx = *&v58.tx;
      CGAffineTransformMakeTranslation(&t2, v52, v51);
      v47 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v47;
      *&t1.tx = *&retstr->tx;
      CGAffineTransformConcat(&v58, &t1, &t2);
      v48 = *&v58.c;
      *&retstr->a = *&v58.a;
      *&retstr->c = v48;
      *&retstr->tx = *&v58.tx;
      [(PKFreeTransformGestureRecognizer *)self accumulatedTransform];
      v49 = *&retstr->c;
      *&t1.a = *&retstr->a;
      *&t1.c = v49;
      *&t1.tx = *&retstr->tx;
      result = CGAffineTransformConcat(&v58, &t2, &t1);
      v50 = *&v58.c;
      *&retstr->a = *&v58.a;
      *&retstr->c = v50;
      *&retstr->tx = *&v58.tx;
    }
  }

  else
  {

    return [(PKFreeTransformGestureRecognizer *)self freeTransform];
  }

  return result;
}

- (CGPoint)locationInView:(id)view
{
  v25 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v6 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v8 = [touches countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(touches);
        }

        [*(*(&v20 + 1) + 8 * v11) locationInView:viewCopy];
        v6 = v6 + v12;
        v5 = v5 + v13;
        ++v11;
      }

      while (v9 != v11);
      v9 = [touches countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
  v15 = [touches2 count];

  if (v15)
  {
    touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
    v17 = 1.0 / [touches3 count];
    v6 = v6 * v17;
    v5 = v5 * v17;
  }

  v18 = v6;
  v19 = v5;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)resetStartingTouches
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v20[0] = *MEMORY[0x1E695EFD0];
  v20[1] = v3;
  v20[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKFreeTransformGestureRecognizer *)self setAccumulatedTransform:v20];
  touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
  [touchStartLocations removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(PKFreeTransformGestureRecognizer *)self touches];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        touchStartLocations2 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        v11 = MEMORY[0x1E696B098];
        view = [(PKFreeTransformGestureRecognizer *)self view];
        superview = [view superview];
        [v9 locationInView:superview];
        v14 = [v11 valueWithCGPoint:?];
        [touchStartLocations2 setObject:v14 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v6);
  }
}

- (void)reset
{
  v6.receiver = self;
  v6.super_class = PKFreeTransformGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v6 reset];
  [(PKFreeTransformGestureRecognizer *)self clearTouches];
  [(PKFreeTransformGestureRecognizer *)self setCanBegin:0];
  [(PKFreeTransformGestureRecognizer *)self scaleThreshold];
  [(PKFreeTransformGestureRecognizer *)self setIsScaling:v3 <= 0.0];
  [(PKFreeTransformGestureRecognizer *)self setIsPanning:0];
  [(PKFreeTransformGestureRecognizer *)self setDeltaScale:0.0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKFreeTransformGestureRecognizer *)self setAccumulatedTransform:v5];
}

- (void)resetAndAccumulateTransform
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  [(PKFreeTransformGestureRecognizer *)self freeTransform];
  [(PKFreeTransformGestureRecognizer *)self resetStartingTouches];
  v3[0] = v4;
  v3[1] = v5;
  v3[2] = v6;
  [(PKFreeTransformGestureRecognizer *)self setAccumulatedTransform:v3];
}

- (void)touchesBegan:(id)began withEvent:(id)event rejectExcessTouches:(BOOL)touches
{
  v53 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v11 = [touches count];
  v12 = [beganCopy count] + v11;

  if (v12 >= 3 && !touches)
  {
    selfCopy3 = self;
    v14 = 5;
LABEL_6:
    [(PKFreeTransformGestureRecognizer *)selfCopy3 setState:v14];
    goto LABEL_7;
  }

  v15 = [beganCopy objectsPassingTest:&__block_literal_global_8];
  v16 = [v15 count];

  if (v16)
  {
    selfCopy3 = self;
    v14 = 3;
    goto LABEL_6;
  }

  touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
  v18 = [touches2 count];
  v19 = [beganCopy count] + v18;

  if (v19 < 3)
  {
    v41 = eventCopy;
    if ([(PKFreeTransformGestureRecognizer *)self state]== 1 || [(PKFreeTransformGestureRecognizer *)self state]== 2)
    {
      [(PKFreeTransformGestureRecognizer *)self resetAndAccumulateTransform];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = beganCopy;
    v25 = beganCopy;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
          [touches3 addObject:v30];

          v32 = MEMORY[0x1E696B098];
          view = [(PKFreeTransformGestureRecognizer *)self view];
          superview = [view superview];
          [v30 locationInView:superview];
          v35 = [v32 valueWithCGPoint:?];

          touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
          [touchStartLocations setObject:v35 forKey:v30];

          actualTouchStartLocations = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
          [actualTouchStartLocations setObject:v35 forKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v27);
    }

    eventCopy = v41;
    beganCopy = v42;
    if (![(PKFreeTransformGestureRecognizer *)self state])
    {
      touches4 = [(PKFreeTransformGestureRecognizer *)self touches];
      if ([touches4 count] == 2)
      {
      }

      else
      {
        allowSingleTouchDrag = [(PKFreeTransformGestureRecognizer *)self allowSingleTouchDrag];

        if (!allowSingleTouchDrag)
        {
          goto LABEL_7;
        }
      }

      [(PKFreeTransformGestureRecognizer *)self startThreshold];
      selfCopy3 = self;
      if (v40 > 0.0)
      {
        [(PKFreeTransformGestureRecognizer *)self setCanBegin:1];
        goto LABEL_7;
      }

      v14 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = beganCopy;
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v48;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [(PKFreeTransformGestureRecognizer *)self ignoreTouch:*(*(&v47 + 1) + 8 * j) forEvent:eventCopy];
        }

        v22 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v22);
    }
  }

LABEL_7:
}

- (BOOL)touchesMovedPastThreshold:(double)threshold
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [touches countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(touches);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        view = [(PKFreeTransformGestureRecognizer *)self view];
        superview = [view superview];
        [v11 locationInView:superview];
        v15 = v14;
        v17 = v16;

        touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        v19 = [touchStartLocations objectForKey:v11];
        [v19 CGPointValue];
        LOBYTE(superview) = sqrt((v17 - v21) * (v17 - v21) + (v15 - v20) * (v15 - v20)) > threshold;

        v8 |= superview;
      }

      v7 = [touches countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)touchesMovedPastScaleThreshold:(double)threshold
{
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [touches count];

  if (v6 < 2)
  {
    return 0;
  }

  thresholdCopy = threshold;
  actualTouchStartLocations = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
  touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
  v9 = [touches2 objectAtIndexedSubscript:0];
  v10 = [actualTouchStartLocations objectForKey:v9];
  [v10 CGPointValue];
  v12 = v11;
  v14 = v13;

  actualTouchStartLocations2 = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
  touches3 = [(PKFreeTransformGestureRecognizer *)self touches];
  v17 = [touches3 objectAtIndexedSubscript:1];
  v18 = [actualTouchStartLocations2 objectForKey:v17];
  [v18 CGPointValue];
  v20 = v19;
  v22 = v21;

  touches4 = [(PKFreeTransformGestureRecognizer *)self touches];
  v24 = [touches4 objectAtIndexedSubscript:0];
  view = [(PKFreeTransformGestureRecognizer *)self view];
  superview = [view superview];
  [v24 locationInView:superview];
  v28 = v27;
  v30 = v29;

  touches5 = [(PKFreeTransformGestureRecognizer *)self touches];
  v32 = [touches5 objectAtIndexedSubscript:1];
  view2 = [(PKFreeTransformGestureRecognizer *)self view];
  superview2 = [view2 superview];
  [v32 locationInView:superview2];
  v36 = v35;
  v38 = v37;

  v39 = vabdd_f64(sqrt((v14 - v22) * (v14 - v22) + (v12 - v20) * (v12 - v20)), sqrt((v30 - v38) * (v30 - v38) + (v28 - v36) * (v28 - v36)));
  v40 = (v12 + v20) * 0.5 - (v28 + v36) * 0.5;
  v41 = (v14 + v22) * 0.5 - (v30 + v38) * 0.5;
  v42 = sqrt(v41 * v41 + v40 * v40);
  v43 = 1.0;
  v44 = v42 / (v39 * 2.0 + 1.0);
  if (v44 >= 1.0)
  {
    v43 = v44;
    if (v44 > 2.0)
    {
      v43 = 2.0;
    }
  }

  return v39 > v43 * thresholdCopy;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PKFreeTransformGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesMoved:moved withEvent:event];
  [(PKFreeTransformGestureRecognizer *)self freeTransform:0];
  if (![(PKFreeTransformGestureRecognizer *)self state])
  {
    if ([(PKFreeTransformGestureRecognizer *)self canBegin]&& ([(PKFreeTransformGestureRecognizer *)self startThreshold], [(PKFreeTransformGestureRecognizer *)self touchesMovedPastThreshold:?]))
    {
      [(PKFreeTransformGestureRecognizer *)self setState:1];
      [(PKFreeTransformGestureRecognizer *)self resetStartingTouches];
    }

    else
    {
      [(PKFreeTransformGestureRecognizer *)self cancelThreshold];
      if ([(PKFreeTransformGestureRecognizer *)self touchesMovedPastThreshold:?])
      {
        [(PKFreeTransformGestureRecognizer *)self setState:5];
      }
    }
  }

  if (![(PKFreeTransformGestureRecognizer *)self isScaling])
  {
    [(PKFreeTransformGestureRecognizer *)self scaleThreshold];
    if ([(PKFreeTransformGestureRecognizer *)self touchesMovedPastScaleThreshold:?])
    {
      [(PKFreeTransformGestureRecognizer *)self resetAndAccumulateTransform];
      [(PKFreeTransformGestureRecognizer *)self setIsScaling:1];
    }
  }

  if (![(PKFreeTransformGestureRecognizer *)self isPanning]&& ![(PKFreeTransformGestureRecognizer *)self isScaling]&& ([(PKFreeTransformGestureRecognizer *)self state]== 1 || [(PKFreeTransformGestureRecognizer *)self state]== 2))
  {
    if (([(PKFreeTransformGestureRecognizer *)self allowedPanEdges]& 1) != 0)
    {
      [(PKFreeTransformGestureRecognizer *)self setIsPanning:1];
    }

    else
    {
      [(PKFreeTransformGestureRecognizer *)self setState:4];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  touches = [(PKFreeTransformGestureRecognizer *)self touches];
  v7 = [touches count];
  if (v7 - [endedCopy count] == 1 && -[PKFreeTransformGestureRecognizer allowSingleTouchDrag](self, "allowSingleTouchDrag"))
  {
    axisAligned = [(PKFreeTransformGestureRecognizer *)self axisAligned];

    if (!axisAligned)
    {
      [(PKFreeTransformGestureRecognizer *)self resetAndAccumulateTransform];
      v9 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = 1;
LABEL_7:
  if ([(PKFreeTransformGestureRecognizer *)self axisAligned])
  {
    [(PKFreeTransformGestureRecognizer *)self setScaleDamping:0.0];
    [(PKFreeTransformGestureRecognizer *)self resetAndAccumulateTransform];
    [(PKFreeTransformGestureRecognizer *)self setScaleDamping:0.5];
  }

  touches2 = [(PKFreeTransformGestureRecognizer *)self touches];
  [touches2 minusSet:endedCopy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = endedCopy;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        touchStartLocations = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        [touchStartLocations removeObjectForKey:v16];

        actualTouchStartLocations = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
        [actualTouchStartLocations removeObjectForKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (v9)
  {
    if ([(PKFreeTransformGestureRecognizer *)self state]== 1)
    {
      v19 = 3;
    }

    else if ([(PKFreeTransformGestureRecognizer *)self state]== 2)
    {
      v19 = 3;
    }

    else
    {
      v19 = 5;
    }

    [(PKFreeTransformGestureRecognizer *)self setState:v19, v20];
  }
}

- (void)clearTouches
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  touches = self->_touches;
  self->_touches = v3;

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  touchStartLocations = self->_touchStartLocations;
  self->_touchStartLocations = strongToStrongObjectsMapTable;

  strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  actualTouchStartLocations = self->_actualTouchStartLocations;
  self->_actualTouchStartLocations = strongToStrongObjectsMapTable2;
}

- (CGAffineTransform)accumulatedTransform
{
  v3 = *&self[8].c;
  *&retstr->a = *&self[8].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].tx;
  return self;
}

- (void)setAccumulatedTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_accumulatedTransform.a = *&transform->a;
  *&self->_accumulatedTransform.c = v4;
  *&self->_accumulatedTransform.tx = v3;
}

@end