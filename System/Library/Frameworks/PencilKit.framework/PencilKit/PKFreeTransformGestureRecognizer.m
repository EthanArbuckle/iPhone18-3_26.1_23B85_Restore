@interface PKFreeTransformGestureRecognizer
- (BOOL)touchesMovedPastScaleThreshold:(double)a3;
- (BOOL)touchesMovedPastThreshold:(double)a3;
- (CGAffineTransform)accumulatedTransform;
- (CGAffineTransform)clampTransform:(SEL)a3 minScale:(CGAffineTransform *)a4 maxScale:(double)a5;
- (CGAffineTransform)freeTransform;
- (CGAffineTransform)unscaledFreeTransform;
- (CGPoint)locationInView:(id)a3;
- (PKFreeTransformGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)clearTouches;
- (void)reset;
- (void)resetAndAccumulateTransform;
- (void)resetStartingTouches;
- (void)setAccumulatedTransform:(CGAffineTransform *)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4 rejectExcessTouches:(BOOL)a5;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PKFreeTransformGestureRecognizer

- (PKFreeTransformGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = PKFreeTransformGestureRecognizer;
  v4 = [(PKFreeTransformGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
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

- (CGAffineTransform)clampTransform:(SEL)a3 minScale:(CGAffineTransform *)a4 maxScale:(double)a5
{
  v10 = sqrt(a4->b * a4->b + a4->a * a4->a);
  if (v10 < a5)
  {
    [(CGAffineTransform *)self scaleDamping];
    v12 = (v10 - a5) * v11 * 0.5 + a5;
LABEL_5:
    CGAffineTransformMakeScale(&t1, v12 / v10, v12 / v10);
    v14 = *&a4->c;
    *&v17.a = *&a4->a;
    *&v17.c = v14;
    *&v17.tx = *&a4->tx;
    self = CGAffineTransformConcat(&v19, &t1, &v17);
    v15 = *&v19.c;
    *&a4->a = *&v19.a;
    *&a4->c = v15;
    *&a4->tx = *&v19.tx;
    goto LABEL_6;
  }

  if (v10 > a6)
  {
    [(CGAffineTransform *)self scaleDamping];
    v12 = a6 + (v10 - a6) * v13;
    goto LABEL_5;
  }

LABEL_6:
  v16 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v16;
  *&retstr->tx = *&a4->tx;
  return self;
}

- (CGAffineTransform)freeTransform
{
  v5 = [(PKFreeTransformGestureRecognizer *)self touches];
  if ([v5 count] == 2)
  {
    v6 = [(PKFreeTransformGestureRecognizer *)self isScaling];

    if (!v6)
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
    v12 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    v13 = [(PKFreeTransformGestureRecognizer *)self touches];
    v14 = [v13 firstObject];
    v15 = [v12 objectForKey:v14];
    [v15 CGPointValue];
    v17 = v16;
    v19 = v18;

    v20 = [(PKFreeTransformGestureRecognizer *)self touches];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [(PKFreeTransformGestureRecognizer *)self view];
    v23 = [v22 superview];
    [v21 locationInView:v23];
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
    v34 = [(PKFreeTransformGestureRecognizer *)self touches];
    v35 = [v34 count];

    if (v35 == 2)
    {
      v36 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
      v37 = [(PKFreeTransformGestureRecognizer *)self touches];
      v38 = [v37 objectAtIndexedSubscript:0];
      v39 = [v36 objectForKey:v38];
      [v39 CGPointValue];
      v41 = v40;
      v43 = v42;

      v44 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
      v45 = [(PKFreeTransformGestureRecognizer *)self touches];
      v46 = [v45 objectAtIndexedSubscript:1];
      v47 = [v44 objectForKey:v46];
      [v47 CGPointValue];
      v49 = v48;
      v51 = v50;

      v52 = [(PKFreeTransformGestureRecognizer *)self touches];
      v53 = [v52 objectAtIndexedSubscript:0];
      v54 = [(PKFreeTransformGestureRecognizer *)self view];
      v55 = [v54 superview];
      [v53 locationInView:v55];
      v57 = v56;
      v59 = v58;

      v60 = [(PKFreeTransformGestureRecognizer *)self touches];
      v61 = [v60 objectAtIndexedSubscript:1];
      v62 = [(PKFreeTransformGestureRecognizer *)self view];
      v63 = [v62 superview];
      [v61 locationInView:v63];
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
  v7 = [(PKFreeTransformGestureRecognizer *)self touches];
  v8 = [v7 count];

  if (v8 == 2)
  {
    v9 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    v10 = [(PKFreeTransformGestureRecognizer *)self touches];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v9 objectForKey:v11];
    [v12 CGPointValue];
    v14 = v13;
    v53 = v15;

    v16 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
    v17 = [(PKFreeTransformGestureRecognizer *)self touches];
    v18 = [v17 objectAtIndexedSubscript:1];
    v19 = [v16 objectForKey:v18];
    [v19 CGPointValue];
    v21 = v20;
    v23 = v22;

    v24 = [(PKFreeTransformGestureRecognizer *)self touches];
    v25 = [v24 objectAtIndexedSubscript:0];
    v26 = [(PKFreeTransformGestureRecognizer *)self view];
    v27 = [v26 superview];
    [v25 locationInView:v27];
    v54 = v29;
    v55 = v28;

    v30 = [(PKFreeTransformGestureRecognizer *)self touches];
    v31 = [v30 objectAtIndexedSubscript:1];
    v32 = [(PKFreeTransformGestureRecognizer *)self view];
    v33 = [v32 superview];
    [v31 locationInView:v33];
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

- (CGPoint)locationInView:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(PKFreeTransformGestureRecognizer *)self touches];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v20 + 1) + 8 * v11) locationInView:v4];
        v6 = v6 + v12;
        v5 = v5 + v13;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v14 = [(PKFreeTransformGestureRecognizer *)self touches];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(PKFreeTransformGestureRecognizer *)self touches];
    v17 = 1.0 / [v16 count];
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
  v4 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
  [v4 removeAllObjects];

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
        v10 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        v11 = MEMORY[0x1E696B098];
        v12 = [(PKFreeTransformGestureRecognizer *)self view];
        v13 = [v12 superview];
        [v9 locationInView:v13];
        v14 = [v11 valueWithCGPoint:?];
        [v10 setObject:v14 forKey:v9];

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

- (void)touchesBegan:(id)a3 withEvent:(id)a4 rejectExcessTouches:(BOOL)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PKFreeTransformGestureRecognizer *)self touches];
  v11 = [v10 count];
  v12 = [v8 count] + v11;

  if (v12 >= 3 && !a5)
  {
    v13 = self;
    v14 = 5;
LABEL_6:
    [(PKFreeTransformGestureRecognizer *)v13 setState:v14];
    goto LABEL_7;
  }

  v15 = [v8 objectsPassingTest:&__block_literal_global_8];
  v16 = [v15 count];

  if (v16)
  {
    v13 = self;
    v14 = 3;
    goto LABEL_6;
  }

  v17 = [(PKFreeTransformGestureRecognizer *)self touches];
  v18 = [v17 count];
  v19 = [v8 count] + v18;

  if (v19 < 3)
  {
    v41 = v9;
    if ([(PKFreeTransformGestureRecognizer *)self state]== 1 || [(PKFreeTransformGestureRecognizer *)self state]== 2)
    {
      [(PKFreeTransformGestureRecognizer *)self resetAndAccumulateTransform];
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = v8;
    v25 = v8;
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
          v31 = [(PKFreeTransformGestureRecognizer *)self touches];
          [v31 addObject:v30];

          v32 = MEMORY[0x1E696B098];
          v33 = [(PKFreeTransformGestureRecognizer *)self view];
          v34 = [v33 superview];
          [v30 locationInView:v34];
          v35 = [v32 valueWithCGPoint:?];

          v36 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
          [v36 setObject:v35 forKey:v30];

          v37 = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
          [v37 setObject:v35 forKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v27);
    }

    v9 = v41;
    v8 = v42;
    if (![(PKFreeTransformGestureRecognizer *)self state])
    {
      v38 = [(PKFreeTransformGestureRecognizer *)self touches];
      if ([v38 count] == 2)
      {
      }

      else
      {
        v39 = [(PKFreeTransformGestureRecognizer *)self allowSingleTouchDrag];

        if (!v39)
        {
          goto LABEL_7;
        }
      }

      [(PKFreeTransformGestureRecognizer *)self startThreshold];
      v13 = self;
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
    v20 = v8;
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

          [(PKFreeTransformGestureRecognizer *)self ignoreTouch:*(*(&v47 + 1) + 8 * j) forEvent:v9];
        }

        v22 = [v20 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v22);
    }
  }

LABEL_7:
}

- (BOOL)touchesMovedPastThreshold:(double)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [(PKFreeTransformGestureRecognizer *)self view];
        v13 = [v12 superview];
        [v11 locationInView:v13];
        v15 = v14;
        v17 = v16;

        v18 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        v19 = [v18 objectForKey:v11];
        [v19 CGPointValue];
        LOBYTE(v13) = sqrt((v17 - v21) * (v17 - v21) + (v15 - v20) * (v15 - v20)) > a3;

        v8 |= v13;
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)touchesMovedPastScaleThreshold:(double)a3
{
  v5 = [(PKFreeTransformGestureRecognizer *)self touches];
  v6 = [v5 count];

  if (v6 < 2)
  {
    return 0;
  }

  v46 = a3;
  v7 = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
  v8 = [(PKFreeTransformGestureRecognizer *)self touches];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v7 objectForKey:v9];
  [v10 CGPointValue];
  v12 = v11;
  v14 = v13;

  v15 = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
  v16 = [(PKFreeTransformGestureRecognizer *)self touches];
  v17 = [v16 objectAtIndexedSubscript:1];
  v18 = [v15 objectForKey:v17];
  [v18 CGPointValue];
  v20 = v19;
  v22 = v21;

  v23 = [(PKFreeTransformGestureRecognizer *)self touches];
  v24 = [v23 objectAtIndexedSubscript:0];
  v25 = [(PKFreeTransformGestureRecognizer *)self view];
  v26 = [v25 superview];
  [v24 locationInView:v26];
  v28 = v27;
  v30 = v29;

  v31 = [(PKFreeTransformGestureRecognizer *)self touches];
  v32 = [v31 objectAtIndexedSubscript:1];
  v33 = [(PKFreeTransformGestureRecognizer *)self view];
  v34 = [v33 superview];
  [v32 locationInView:v34];
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

  return v39 > v43 * v46;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = PKFreeTransformGestureRecognizer;
  [(PKFreeTransformGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PKFreeTransformGestureRecognizer *)self touches];
  v7 = [v6 count];
  if (v7 - [v5 count] == 1 && -[PKFreeTransformGestureRecognizer allowSingleTouchDrag](self, "allowSingleTouchDrag"))
  {
    v8 = [(PKFreeTransformGestureRecognizer *)self axisAligned];

    if (!v8)
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

  v10 = [(PKFreeTransformGestureRecognizer *)self touches];
  [v10 minusSet:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v5;
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
        v17 = [(PKFreeTransformGestureRecognizer *)self touchStartLocations];
        [v17 removeObjectForKey:v16];

        v18 = [(PKFreeTransformGestureRecognizer *)self actualTouchStartLocations];
        [v18 removeObjectForKey:v16];
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

  v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  touchStartLocations = self->_touchStartLocations;
  self->_touchStartLocations = v5;

  v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  actualTouchStartLocations = self->_actualTouchStartLocations;
  self->_actualTouchStartLocations = v7;
}

- (CGAffineTransform)accumulatedTransform
{
  v3 = *&self[8].c;
  *&retstr->a = *&self[8].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].tx;
  return self;
}

- (void)setAccumulatedTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_accumulatedTransform.a = *&a3->a;
  *&self->_accumulatedTransform.c = v4;
  *&self->_accumulatedTransform.tx = v3;
}

@end