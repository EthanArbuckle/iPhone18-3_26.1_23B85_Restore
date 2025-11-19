@interface CRLiOSRepRotateGestureRecognizer
- (BOOL)p_touchIsInRep:(id)a3;
- (BOOL)touchesAreInRep;
- (CRLiOSRepRotateGestureRecognizer)initWithInteractiveCanvasController:(id)a3;
- (double)rotation;
- (void)cancelBecauseOfRotation;
- (void)dealloc;
- (void)operationDidEnd;
- (void)p_beginTracking;
- (void)p_recognizeAfterDelay:(double)a3;
- (void)p_updateTracker;
- (void)reset;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CRLiOSRepRotateGestureRecognizer

- (CRLiOSRepRotateGestureRecognizer)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLiOSRepRotateGestureRecognizer;
  v5 = [(CRLiOSRepRotateGestureRecognizer *)&v10 initWithTarget:0 action:0];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101387904();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138792C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013879DC();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLiOSRepRotateGestureRecognizer initWithInteractiveCanvasController:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:56 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
    }

    objc_storeWeak(&v5->mICC, v4);
    v5->mAdditionalRotateInRadians = 0.0;
  }

  return v5;
}

- (void)dealloc
{
  [(CRLiOSRepRotateGestureRecognizer *)self p_cancelDelayedRecognition];
  v3.receiver = self;
  v3.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v3 dealloc];
}

- (void)setState:(int64_t)a3
{
  [(CRLiOSRepRotateGestureRecognizer *)self state];
  v5.receiver = self;
  v5.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v5 setState:a3];
}

- (void)reset
{
  v7.receiver = self;
  v7.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v7 reset];
  [(CRLiOSRepRotateGestureRecognizer *)self p_cancelDelayedRecognition];
  mTouch1 = self->mTouch1;
  self->mTouch1 = 0;

  mTouch2 = self->mTouch2;
  self->mTouch2 = 0;

  mRep = self->mRep;
  self->mRep = 0;

  v6 = CGPointZero;
  self->mOriginalUnscaledPoint1 = CGPointZero;
  self->mOriginalUnscaledPoint2 = v6;
  self->mMovingTouchIndex = 0;
  self->mLastAngle = 0.0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v77.receiver = self;
  v77.super_class = CRLiOSRepRotateGestureRecognizer;
  v72 = a4;
  [(CRLiOSRepRotateGestureRecognizer *)&v77 touchesBegan:v6 withEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v8 = [WeakRetained layerHost];
  v71 = [v8 asUIKitHost];

  if (-[CRLiOSRepRotateGestureRecognizer state](self, "state") || ![WeakRetained currentlyScrolling])
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v70 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (!v10)
    {
      goto LABEL_36;
    }

    v11 = v10;
    v12 = *v74;
    v13 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v73 + 1) + 8 * v14);
        if ([(CRLiOSRepRotateGestureRecognizer *)self state])
        {
          if ([(CRLiOSRepRotateGestureRecognizer *)self state]!= 2)
          {
            [(CRLiOSRepRotateGestureRecognizer *)self ignoreTouch:v15 forEvent:v72];
            goto LABEL_26;
          }

          v16 = v13[894];
          v17 = *(&self->super.super.isa + v16);
          if (v17 && ([v17 phase] == 3 || objc_msgSend(*(&self->super.super.isa + v16), "phase") == 4))
          {
            objc_storeStrong((&self->super.super.isa + v16), v15);
            v18 = 32;
LABEL_25:
            v21 = (&self->super.super.isa + v18);
            v22 = *(&self->super.super.isa + v16);
            v23 = [WeakRetained canvasView];
            [v22 locationInView:v23];
            [WeakRetained convertBoundsToUnscaledPoint:?];
            *v21 = v24;
            v21[1] = v25;
            v13 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;

            goto LABEL_26;
          }

          v16 = 24;
          mTouch2 = self->mTouch2;
          if (mTouch2 && ([(UITouch *)mTouch2 phase]== 3 || [(UITouch *)self->mTouch2 phase]== 4))
          {
            objc_storeStrong(&self->mTouch2, v15);
            v18 = 48;
            goto LABEL_25;
          }
        }

        else
        {
          if ([(CRLiOSRepRotateGestureRecognizer *)self numberOfTouches]>= 3)
          {
            goto LABEL_18;
          }

          v19 = v13[894];
          if (*(&self->super.super.isa + v19))
          {
            if (self->mTouch2)
            {
LABEL_18:
              [(CRLiOSRepRotateGestureRecognizer *)self p_cancelDelayedRecognition];
LABEL_19:
              [(CRLiOSRepRotateGestureRecognizer *)self setState:5];
              goto LABEL_26;
            }

            objc_storeStrong(&self->mTouch2, v15);
            if ([(CRLiOSRepRotateGestureRecognizer *)self p_touchIsInRep:self->mTouch2])
            {
              v33 = self->mTouch2;
              v34 = [WeakRetained canvasView];
              [(UITouch *)v33 locationInView:v34];
              v36 = v35;
              v38 = v37;

              [WeakRetained convertBoundsToUnscaledPoint:{v36, v38}];
              self->mOriginalUnscaledPoint2.x = v39;
              self->mOriginalUnscaledPoint2.y = v40;
              self->mLastProcessedTouchUnscaledPoint2 = self->mOriginalUnscaledPoint1;
              [WeakRetained convertUnscaledToBoundsPoint:{self->mOriginalUnscaledPoint1.x, self->mOriginalUnscaledPoint1.y}];
              self->mOriginalBoundsDistance = sub_100120090(v41, v42, v36, v38);
              mRep = self->mRep;
              [(CRLCanvasRep *)mRep centerForRotation];
              [(CRLCanvasRep *)mRep convertNaturalPointToUnscaledCanvas:?];
              self->mUnscaledRotationCenter.x = v44;
              self->mUnscaledRotationCenter.y = v45;
              v46 = self;
              v47 = 0.4;
            }

            else
            {
              v48 = *(&self->super.super.isa + v19);
              v49 = [WeakRetained canvasView];
              [v48 locationInView:v49];
              v51 = v50;
              v53 = v52;

              v54 = self->mRep;
              [(CRLCanvasRep *)v54 centerForRotation];
              [(CRLCanvasRep *)v54 convertNaturalPointToUnscaledCanvas:?];
              self->mUnscaledRotationCenter.x = v55;
              self->mUnscaledRotationCenter.y = v56;
              [WeakRetained convertUnscaledToBoundsPoint:?];
              if (sub_10011F068(v51, v53, v57, v58) > 2500.0)
              {
                goto LABEL_19;
              }

              self->mPinningTouchIsPresent = 1;
              v59 = self->mTouch2;
              v60 = [WeakRetained canvasView];
              [(UITouch *)v59 locationInView:v60];
              v62 = v61;
              v64 = v63;

              [WeakRetained convertBoundsToUnscaledPoint:{v62, v64}];
              self->mOriginalUnscaledPoint2.x = v65;
              self->mOriginalUnscaledPoint2.y = v66;
              self->mLastProcessedTouchUnscaledPoint2 = self->mOriginalUnscaledPoint2;
              [WeakRetained convertUnscaledToBoundsPoint:{self->mOriginalUnscaledPoint1.x, self->mOriginalUnscaledPoint1.y}];
              self->mOriginalBoundsDistance = sub_100120090(v67, v68, v62, v64);
              v46 = self;
              v47 = 0.2;
            }

            [(CRLiOSRepRotateGestureRecognizer *)v46 p_recognizeAfterDelay:v47];
          }

          else
          {
            self->mAdditionalRotateInRadians = 0.0;
            objc_storeStrong((&self->super.super.isa + v19), v15);
            v26 = [v71 hitRepWithTouch:*(&self->super.super.isa + v19)];
            v27 = [v26 repForRotating];
            v28 = self->mRep;
            self->mRep = v27;

            if (!self->mRep)
            {
              goto LABEL_19;
            }

            v29 = *(&self->super.super.isa + v19);
            v30 = [WeakRetained canvasView];
            [v29 locationInView:v30];
            [WeakRetained convertBoundsToUnscaledPoint:?];
            self->mOriginalUnscaledPoint1.x = v31;
            self->mOriginalUnscaledPoint1.y = v32;

            self->mLastProcessedTouchUnscaledPoint1 = self->mOriginalUnscaledPoint1;
          }
        }

LABEL_26:
        v14 = v14 + 1;
      }

      while (v11 != v14);
      v69 = [v9 countByEnumeratingWithState:&v73 objects:v78 count:16];
      v11 = v69;
      if (!v69)
      {
LABEL_36:

        v6 = v70;
        goto LABEL_37;
      }
    }
  }

  [(CRLiOSRepRotateGestureRecognizer *)self setState:5];
LABEL_37:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v147.receiver = self;
  v147.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v147 touchesMoved:v6 withEvent:a4];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  p_mTouch1 = &self->mTouch1;
  mTouch1 = self->mTouch1;
  v8 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
  if (mTouch1)
  {
    p_mTouch2 = &self->mTouch2;
    if (self->mTouch2)
    {
      mMovingTouchIndex = self->mMovingTouchIndex;
      if (mMovingTouchIndex == 1)
      {
        v29 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint1;
        v30 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint2;
      }

      else
      {
        if (!mMovingTouchIndex)
        {
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          obj = v6;
          v11 = [(UITouch *)obj countByEnumeratingWithState:&v143 objects:v148 count:16];
          if (!v11)
          {
            goto LABEL_36;
          }

          v12 = v11;
          v136 = v6;
          v13 = *v144;
          while (1)
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v144 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v143 + 1) + 8 * i);
              if (v15 == *p_mTouch1)
              {
                v16 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
                v17 = 1;
              }

              else
              {
                if (v15 != *p_mTouch2)
                {
                  continue;
                }

                v16 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
                v17 = 2;
              }

              v18 = [WeakRetained canvasView];
              [v15 locationInView:v18];
              v20 = v19;
              v22 = v21;

              [WeakRetained convertUnscaledToBoundsPoint:{*(&self->super.super.isa + *v16), *(&self->mICC + *v16)}];
              v24 = v23;
              v26 = v25;
              v27 = [(CRLiOSRepRotateGestureRecognizer *)self state];
              v28 = sub_100120090(v20, v22, v24, v26);
              if (v27 || v28 < 14.0)
              {
                if (v28 >= 3.0)
                {
                  self->mMovingTouchIndex = v17;
                }
              }

              else
              {
                [(CRLiOSRepRotateGestureRecognizer *)self p_cancelDelayedRecognition];
                [(CRLiOSRepRotateGestureRecognizer *)self setState:5];
              }
            }

            v12 = [(UITouch *)obj countByEnumeratingWithState:&v143 objects:v148 count:16];
            if (!v12)
            {
              v6 = v136;
              v8 = &OBJC_IVAR___CRLMediaRep_mGlyphRenderable;
              goto LABEL_36;
            }
          }
        }

        v29 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint2;
        mTouch1 = self->mTouch2;
        p_mTouch2 = &self->mTouch1;
        v30 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint1;
      }

      obj = mTouch1;
      v31 = *p_mTouch2;
      v32 = (self + *v29);
      v33 = *v32;
      v34 = v32[1];
      v35 = (self + *v30);
      v137 = *v35;
      v133 = v33;
      v134 = v35[1];
      if ([v31 phase] != 3)
      {
        v36 = [WeakRetained canvasView];
        [(UITouch *)obj locationInView:v36];
        v38 = v37;
        v40 = v39;

        v41 = [WeakRetained canvasView];
        [v31 locationInView:v41];
        v43 = v42;
        v45 = v44;

        [WeakRetained convertUnscaledToBoundsPoint:{self->mUnscaledRotationCenter.x, self->mUnscaledRotationCenter.y}];
        v47 = v46;
        v49 = v48;
        if (sub_10011F068(v43, v45, v46, v48) >= 2500.0)
        {
          v129 = v40;
          v131 = v38;
          if (sub_10011F068(v38, v40, v47, v49) >= 2500.0)
          {
            self->mPinningTouchIsPresent = 0;
          }

          [WeakRetained convertUnscaledToBoundsPoint:{v133, v34}];
          v51 = v50;
          v53 = v52;
          [WeakRetained convertUnscaledToBoundsPoint:{v137, v134}];
          v55 = v54;
          v57 = v56;
          v58 = sub_10011F068(v131, v129, v51, v53);
          if (sub_10011F068(v43, v45, v55, v57) - v58 > 3.0)
          {
            v59 = 1;
            if (self->mMovingTouchIndex == 1)
            {
              v59 = 2;
            }

            self->mMovingTouchIndex = v59;
            [WeakRetained convertBoundsToUnscaledPoint:{v43, v45}];
            [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:?];
            v61 = v60;
            if (self->mMovingTouchIndex == 1)
            {
              v62 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
            }

            else
            {
              v62 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
            }

            [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:*(&self->super.super.isa + *v62), *(&self->mICC + *v62)];
            sub_1001210C4(v63 - v61);
            self->mAdditionalRotateInRadians = self->mLastAngle - v64;
          }
        }
      }

LABEL_36:
    }

    v65 = *p_mTouch1;
    if (*p_mTouch1)
    {
      v66 = [WeakRetained canvasView];
      [(UITouch *)v65 locationInView:v66];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      self->mLastProcessedTouchUnscaledPoint1.x = v67;
      self->mLastProcessedTouchUnscaledPoint1.y = v68;
    }
  }

  v69 = &self->mTouch2;
  mTouch2 = self->mTouch2;
  if (mTouch2)
  {
    v71 = [WeakRetained canvasView];
    [(UITouch *)mTouch2 locationInView:v71];
    [WeakRetained convertBoundsToUnscaledPoint:?];
    self->mLastProcessedTouchUnscaledPoint2.x = v72;
    self->mLastProcessedTouchUnscaledPoint2.y = v73;
  }

  v74 = v8[899];
  v75 = *(&self->super.super.isa + v74);
  if (v75)
  {
    v76 = &self->mTouch1;
    if (v75 != 1)
    {
      v76 = &self->mTouch2;
    }

    v77 = *v76;
    v78 = &self->mTouch1;
    if (*(&self->super.super.isa + v74) != 2)
    {
      v78 = &self->mTouch2;
    }

    v79 = *v78;
    if (v77)
    {
      v80 = [WeakRetained canvasView];
      [(UITouch *)v77 locationInView:v80];
      v82 = v81;
      v84 = v83;

      [WeakRetained convertUnscaledToBoundsPoint:{self->mUnscaledRotationCenter.x, self->mUnscaledRotationCenter.y}];
      if (!v79 && sub_10011F068(v82, v84, v85, v86) > 2500.0)
      {
        self->mPinningTouchIsPresent = 0;
      }
    }
  }

  if (*p_mTouch1 && *v69)
  {
    if (!*(&self->super.super.isa + v74))
    {
      goto LABEL_78;
    }

    if (![(CRLiOSRepRotateGestureRecognizer *)self state])
    {
      v87 = *(&self->super.super.isa + v74);
      v88 = v87 == 1;
      v89 = v87 == 1 ? &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint1 : &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint2;
      v135 = *(&self->super.super.isa + *v89);
      v90 = v88 ? &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint2 : &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mLastProcessedTouchUnscaledPoint1;
      v91 = (self + *v90);
      v128 = *v91;
      v130 = v91[1];
      v92 = v88 ? &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1 : &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
      v127 = *(&self->super.super.isa + *v92);
      v93 = v88 ? &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2 : &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
      [WeakRetained convertUnscaledToBoundsPoint:{self->mLastProcessedTouchUnscaledPoint1.x, self->mLastProcessedTouchUnscaledPoint1.y, *(&self->super.super.isa + *v93), *(&self->mICC + *v93)}];
      v95 = v94;
      v97 = v96;
      [WeakRetained convertUnscaledToBoundsPoint:{self->mLastProcessedTouchUnscaledPoint2.x, self->mLastProcessedTouchUnscaledPoint2.y}];
      v138 = v99;
      obja = v98;
      [WeakRetained convertUnscaledToBoundsPoint:{sub_10011F31C(self->mLastProcessedTouchUnscaledPoint1.x, self->mLastProcessedTouchUnscaledPoint1.y, self->mOriginalUnscaledPoint1.x)}];
      v101 = v100;
      v103 = v102;
      [WeakRetained convertUnscaledToBoundsPoint:{sub_10011F31C(self->mLastProcessedTouchUnscaledPoint2.x, self->mLastProcessedTouchUnscaledPoint2.y, self->mOriginalUnscaledPoint2.x)}];
      v105 = v104;
      v107 = v106;
      [WeakRetained convertUnscaledToBoundsPoint:{self->mUnscaledRotationCenter.x, self->mUnscaledRotationCenter.y}];
      v109 = v108;
      v111 = v110;
      v132 = v97;
      v112 = sub_10011F068(v95, v97, v108, v110);
      if (sub_100120084(v101, v103) > 1.0 || v112 < 2500.0)
      {
        v113 = sub_100120084(v105, v107);
        v114 = sub_10011F068(*&obja, v138, v109, v111);
        if (v113 > 1.0 || v114 < 2500.0)
        {
          v115 = sub_10011F31C(v125, v126, v127);
          v117 = sub_1001208D0(v115, v116);
          v118 = sub_10011F31C(v128, v130, v135);
          v120 = sub_1001208D0(v118, v119);
          v121 = fabs(fmod(v120 - v117, 6.28318531)) * 57.2957795;
          v122 = vabdd_f64(sub_100120090(v95, v132, *&obja, v138), self->mOriginalBoundsDistance);
          if (v121 > 2.5 && v122 < 14.0)
          {
            [(CRLiOSRepRotateGestureRecognizer *)self p_beginTracking];
            goto LABEL_78;
          }

          if (v121 <= 2.5 && v122 >= 14.0)
          {
            [(CRLiOSRepRotateGestureRecognizer *)self setState:5, v122];
          }
        }
      }
    }
  }

  if (*(&self->super.super.isa + v74) && (*p_mTouch1 && ([v6 containsObject:?] & 1) != 0 || *v69 && objc_msgSend(v6, "containsObject:")) && -[CRLiOSRepRotateGestureRecognizer state](self, "state") - 1 <= 1)
  {
    [(CRLiOSRepRotateGestureRecognizer *)self setState:2];
    [(CRLiOSRepRotateGestureRecognizer *)self p_updateTracker];
  }

LABEL_78:
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v34.receiver = self;
  v34.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v34 touchesEnded:v6 withEvent:a4];
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = v9;
  v11 = *v31;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      mTouch1 = self->mTouch1;
      if (v13 == mTouch1 && self->mMovingTouchIndex == 1)
      {
        mTouch1 = self->mTouch2;
      }

      else
      {
        mMovingTouchIndex = self->mMovingTouchIndex;
        if (v13 != self->mTouch2 || mMovingTouchIndex != 2)
        {
          if (!mMovingTouchIndex)
          {
            goto LABEL_26;
          }

          continue;
        }
      }

      v17 = mTouch1;
      if ([(UITouch *)v17 phase]== 3 || [(UITouch *)v17 phase]== 4)
      {

LABEL_26:
        if ([(CRLiOSRepRotateGestureRecognizer *)self state]- 1 >= 2)
        {
          v29 = 5;
        }

        else
        {
          v29 = 3;
        }

        [(CRLiOSRepRotateGestureRecognizer *)self setState:v29];
        goto LABEL_30;
      }

      v18 = 1;
      if (self->mMovingTouchIndex == 1)
      {
        v18 = 2;
      }

      self->mMovingTouchIndex = v18;
      v19 = [WeakRetained canvasView];
      [(UITouch *)v17 locationInView:v19];
      [WeakRetained convertBoundsToUnscaledPoint:?];
      v21 = v20;
      v23 = v22;

      [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:v21, v23];
      v25 = v24;
      v26 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
      if (self->mMovingTouchIndex == 1)
      {
        v26 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
      }

      [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:*(&self->super.super.isa + *v26), *(&self->mICC + *v26)];
      sub_1001210C4(v27 - v25);
      self->mAdditionalRotateInRadians = self->mLastAngle - v28;
    }

    v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_30:
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CRLiOSRepRotateGestureRecognizer;
  [(CRLiOSRepRotateGestureRecognizer *)&v18 touchesCancelled:v6 withEvent:a4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (v12 == self->mTouch1 || v12 == self->mTouch2)
        {
          if ([(CRLiOSRepRotateGestureRecognizer *)self state]- 1 < 2)
          {
            v13 = 4;
          }

          else
          {
            v13 = 5;
          }

          [(CRLiOSRepRotateGestureRecognizer *)self setState:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)cancelBecauseOfRotation
{
  if (self->mTracker)
  {
    [(CRLiOSRepRotateGestureRecognizer *)self setState:4];
  }
}

- (double)rotation
{
  mMovingTouchIndex = self->mMovingTouchIndex;
  if (!mMovingTouchIndex)
  {
    return 0.0;
  }

  if (mMovingTouchIndex == 1)
  {
    v4 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch1;
  }

  else
  {
    v4 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch2;
  }

  v6 = *(&self->super.super.isa + *v4);
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v8 = [WeakRetained canvasView];
  [v6 locationInView:v8];
  v10 = v9;
  v12 = v11;

  [WeakRetained convertBoundsToUnscaledPoint:{v10, v12}];
  v14 = v13;
  v16 = v15;
  [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:?];
  v18 = v17;
  if (self->mPinningTouchIsPresent && ([WeakRetained convertUnscaledToBoundsPoint:{self->mUnscaledRotationCenter.x, self->mUnscaledRotationCenter.y}], sub_10011F068(v10, v12, v19, v20) < 2500.0))
  {
    if (self->mMovingTouchIndex == 1)
    {
      v21 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
    }

    else
    {
      v21 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
    }

    v22 = (&self->super.super.isa + *v21);
    *v22 = v14;
    v22[1] = v16;
    mLastAngle = self->mLastAngle;
  }

  else
  {
    if (self->mMovingTouchIndex == 1)
    {
      v23 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint1;
    }

    else
    {
      v23 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mOriginalUnscaledPoint2;
    }

    [(CRLiOSRepRotateGestureRecognizer *)self p_angleForUnscaledTouchPoint:*(&self->super.super.isa + *v23), *(&self->mICC + *v23)];
    sub_1001210C4(v24 - v18 + self->mAdditionalRotateInRadians);
    mLastAngle = v25;
    self->mLastAngle = v25;
  }

  return mLastAngle;
}

- (BOOL)touchesAreInRep
{
  mMovingTouchIndex = self->mMovingTouchIndex;
  if (!mMovingTouchIndex)
  {
    return 0;
  }

  if (mMovingTouchIndex == 1)
  {
    v3 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch1;
  }

  else
  {
    v3 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch2;
  }

  return [(CRLiOSRepRotateGestureRecognizer *)self p_touchIsInRep:*(&self->super.super.isa + *v3)];
}

- (void)operationDidEnd
{
  if (self->mTracker)
  {
    WeakRetained = objc_loadWeakRetained(&self->mICC);
    v4 = [WeakRetained dynamicOperationController];
    [(CRLiOSRepRotateGestureRecognizer *)self removeTarget:v4 action:"handleGestureRecognizer:"];

    mTracker = self->mTracker;
    self->mTracker = 0;
  }
}

- (BOOL)p_touchIsInRep:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v6 = [WeakRetained canvasView];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  [WeakRetained convertBoundsToUnscaledPoint:{v8, v10}];
  v12 = v11;
  v14 = v13;

  [(CRLCanvasRep *)self->mRep convertNaturalPointFromUnscaledCanvas:v12, v14];
  LOBYTE(self) = [(CRLCanvasRep *)self->mRep containsPoint:0 withPrecision:?];

  return self;
}

- (void)p_beginTracking
{
  WeakRetained = objc_loadWeakRetained(&self->mICC);
  v4 = [WeakRetained dynamicOperationController];
  v5 = [WeakRetained tmCoordinator];
  if (!self->mTracker)
  {
    if ([v4 isInPossibleDynamicOperation])
    {
      [v4 endOperation];
    }

    v6 = [WeakRetained customRotateTrackerForCurrentSelection];
    mTracker = self->mTracker;
    self->mTracker = v6;

    v8 = self->mTracker;
    if (v8)
    {
      [(CRLCanvasRepRotateTracking *)v8 unscaledCenterForRotation];
      self->mUnscaledRotationCenter.x = v9;
      self->mUnscaledRotationCenter.y = v10;
    }

    else
    {
      v11 = [[CRLCanvasRepRotateTracker alloc] initWithRep:self->mRep];
      v12 = self->mTracker;
      self->mTracker = v11;
    }

    v13 = [(CRLCanvasRepRotateTracking *)self->mTracker repsBeingRotated];
    [(CRLiOSRepRotateGestureRecognizer *)self addTarget:v4 action:"handleGestureRecognizer:"];
    [v5 registerTrackerManipulator:self];
    if (([v5 takeControlWithTrackerManipulator:self] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101387A04();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101387A18();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101387AB8();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v14);
      }

      v15 = [NSString stringWithUTF8String:"[CRLiOSRepRotateGestureRecognizer p_beginTracking]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLiOSRepRotateGestureRecognizer.m"];
      [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:542 isFatal:0 description:"rotate GR did not successfully take control"];
    }

    if (([v4 isInOperation] & 1) == 0)
    {
      [v4 beginOperation];
    }

    [v4 startTransformingReps:v13];
    self->mLastAngle = 0.0;
    if ([v13 count] == 1)
    {
      v17 = [WeakRetained canvasEditor];
      v18 = [v13 anyObject];
      v19 = [v18 info];
      v20 = [v17 selectionPathWithInfo:v19];

      v21 = [WeakRetained editorController];
      [v21 setSelectionPath:v20];
    }
  }

  [(CRLiOSRepRotateGestureRecognizer *)self setState:1];
  self->mRecognitionIsBeingDelayed = 0;
}

- (void)p_recognizeAfterDelay:(double)a3
{
  if (!self->mRecognitionIsBeingDelayed)
  {
    self->mRecognitionIsBeingDelayed = 1;
    [(CRLiOSRepRotateGestureRecognizer *)self performSelector:"p_beginTracking" withObject:0 afterDelay:a3];
  }
}

- (void)p_updateTracker
{
  mLastAngle = self->mLastAngle;
  [(CRLiOSRepRotateGestureRecognizer *)self rotation];
  [(CRLCanvasRepRotateTracking *)self->mTracker addRotateDelta:v4 - mLastAngle];
  if (self->mMovingTouchIndex == 1)
  {
    v5 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch1;
  }

  else
  {
    v5 = &OBJC_IVAR___CRLiOSRepRotateGestureRecognizer_mTouch2;
  }

  v17 = *(&self->super.super.isa + *v5);
  v6 = objc_loadWeakRetained(&self->mICC);
  v7 = [v6 canvasView];
  [v17 locationInView:v7];
  [v6 convertBoundsToUnscaledPoint:?];
  v9 = v8;
  v11 = v10;

  v12 = sub_100120090(v9, v11, self->mUnscaledRotationCenter.x, self->mUnscaledRotationCenter.y);
  v13 = [(CRLCanvasRep *)self->mRep interactiveCanvasController];
  [v13 viewScale];
  v15 = v12 * v14;

  v16 = 2.0;
  if (v15 < 200.0)
  {
    v16 = 4.0;
  }

  [(CRLCanvasRepRotateTracking *)self->mTracker setSnapThreshold:v16];
}

@end