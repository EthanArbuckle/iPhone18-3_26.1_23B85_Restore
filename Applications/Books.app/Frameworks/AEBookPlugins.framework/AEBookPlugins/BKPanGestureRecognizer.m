@interface BKPanGestureRecognizer
- (BKPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (CGPoint)lastLocation;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)startLocationInView:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation BKPanGestureRecognizer

- (void)dealloc
{
  trackingTouch = self->_trackingTouch;
  self->_trackingTouch = 0;

  v4.receiver = self;
  v4.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v4 dealloc];
}

- (BKPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = BKPanGestureRecognizer;
  result = [(BKPanGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_rightSideMovementThreshold = 20.0;
    result->_leftSideMovementThreshold = 20.0;
  }

  return result;
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v5 reset];
  [(BKPanGestureRecognizer *)self setTrackingTouch:0];
  v3 = _AEPanGRLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reseting pan gesture", v4, 2u);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _AEPanGRLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "touches began event", buf, 2u);
  }

  if (![(BKPanGestureRecognizer *)self state])
  {
    [(BKPanGestureRecognizer *)self setTrackingTouch:0];
  }

  v9 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (v9)
  {
    v10 = _AEPanGRLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "tracking touch -- ignoring new touches", buf, 2u);
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [v16 window];
          [v16 locationInView:0];
          [v17 convertPoint:0 toWindow:?];
          v19 = v18;
          v21 = v20;

          v22 = [NSValue valueWithCGPoint:v19, v21];
          objc_setAssociatedObject(v16, &unk_193938, v22, &dword_0 + 1);
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    v24.receiver = self;
    v24.super_class = BKPanGestureRecognizer;
    [(BKPanGestureRecognizer *)&v24 touchesBegan:v11 withEvent:v7];
    v6 = v23;
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (v8)
  {
    goto LABEL_2;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (!v15)
  {

LABEL_2:
    v9 = v6;
    goto LABEL_3;
  }

  v16 = v15;
  v59 = v7;
  v60 = v6;
  v11 = 0;
  v17 = *v65;
  v18 = 0.0;
  v61 = v14;
  v62 = self;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v65 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v64 + 1) + 8 * i);
      v21 = objc_getAssociatedObject(v20, &unk_193938);
      v22 = v21;
      if (v21)
      {
        [v21 CGPointValue];
        v24 = v23;
        v26 = v25;
        v27 = [v20 window];
        [v20 locationInView:0];
        [v27 convertPoint:0 fromWindow:?];
        v29 = v28;
        v31 = v30;

        v32 = vabdd_f64(v29, v24);
        v33 = [v20 window];
        [v33 bounds];
        Width = CGRectGetWidth(v77);

        v35 = [v20 view];
        [v20 locationInView:v35];
        v37 = v36;

        v38 = &OBJC_IVAR___BKPanGestureRecognizer__rightSideMovementThreshold;
        if (v37 < Width * 0.5)
        {
          v38 = &OBJC_IVAR___BKPanGestureRecognizer__leftSideMovementThreshold;
        }

        v39 = *(&self->super.super.super.isa + *v38);
        if (v32 <= v39)
        {
          v32 = vabdd_f64(v31, v26);
          if (v32 <= v39)
          {
            goto LABEL_25;
          }

          v45 = _AEPanGRLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v69 = v32;
            v70 = 2048;
            v71 = v39;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "enough movement in a touch %f > %f", buf, 0x16u);
          }

          v41 = _AEPanGRLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v75.x = v24;
            v75.y = v26;
            v46 = NSStringFromCGPoint(v75);
            v76.x = v29;
            v76.y = v31;
            NSStringFromCGPoint(v76);
            v48 = v47 = v11;
            *buf = 138412546;
            v69 = *&v46;
            v70 = 2112;
            v71 = *&v48;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "start %@ moved %@", buf, 0x16u);

            v11 = v47;
            v14 = v61;

            self = v62;
          }
        }

        else
        {
          v40 = _AEPanGRLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v69 = v32;
            v70 = 2048;
            v71 = v39;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "enough movement in a touch %f > %f", buf, 0x16u);
          }

          v41 = _AEPanGRLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v73.x = v24;
            v73.y = v26;
            NSStringFromCGPoint(v73);
            v43 = v42 = v11;
            v74.x = v29;
            v74.y = v31;
            v44 = NSStringFromCGPoint(v74);
            *buf = 138412546;
            v69 = *&v43;
            v70 = 2112;
            v71 = *&v44;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "start %@ moved %@", buf, 0x16u);

            self = v62;
            v11 = v42;
            v14 = v61;
          }
        }

        if (v32 > v18)
        {
          v49 = v20;

          v18 = v32;
          v11 = v49;
        }
      }

LABEL_25:
    }

    v16 = [v14 countByEnumeratingWithState:&v64 objects:v72 count:16];
  }

  while (v16);

  v50 = v14;
  v6 = v60;
  if (!v11)
  {
LABEL_3:
    v10 = [(BKPanGestureRecognizer *)self trackingTouch:v59];

    v11 = 0;
    v12 = 0;
    v13 = v6;
    if (v10)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v51 = v50;
  v52 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (!v52)
  {
    v53 = _AEPanGRLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = *&v11;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "Now tracking touch %@", buf, 0xCu);
    }

    [(BKPanGestureRecognizer *)self setTrackingTouch:v11];
  }

  [(BKPanGestureRecognizer *)self setState:1, v7, v60];
  v13 = [NSSet setWithObject:v11];

  v54 = [v7 allTouches];
  v55 = [v54 mutableCopy];

  [v55 removeObject:v11];
  if ([v55 count])
  {
    v56 = _AEPanGRLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v69 = *&v55;
      v70 = 2112;
      v71 = *&v11;
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Ending touches %@. Tracking %@", buf, 0x16u);
    }

    [(BKPanGestureRecognizer *)self touchesEnded:v55 withEvent:v7];
  }

LABEL_37:
  v63.receiver = self;
  v63.super_class = BKPanGestureRecognizer;
  [(BKPanGestureRecognizer *)&v63 touchesMoved:v13 withEvent:v7];
  v12 = v11;
LABEL_38:
  v57 = [(BKPanGestureRecognizer *)self trackingTouch];
  if (v57)
  {
  }

  else if ([(BKPanGestureRecognizer *)self state]>= 1)
  {
    [(BKPanGestureRecognizer *)self setTrackingTouch:v12];
  }

  v58 = [(BKPanGestureRecognizer *)self trackingTouch];

  if (v58 && [(BKPanGestureRecognizer *)self numberOfTouches])
  {
    [(BKPanGestureRecognizer *)self locationOfTouch:0 inView:0];
    [(BKPanGestureRecognizer *)self setLastLocation:?];
  }
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  [(BKPanGestureRecognizer *)self lastLocation];
  [v4 convertPoint:0 fromView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)startLocationInView:(id)a3
{
  v4 = a3;
  v5 = [(BKPanGestureRecognizer *)self trackingTouch];
  v6 = objc_getAssociatedObject(v5, &unk_193938);

  [v6 CGPointValue];
  [v4 convertPoint:0 fromView:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)lastLocation
{
  x = self->lastLocation.x;
  y = self->lastLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end