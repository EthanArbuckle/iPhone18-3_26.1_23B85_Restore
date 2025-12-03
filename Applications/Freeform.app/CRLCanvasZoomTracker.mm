@interface CRLCanvasZoomTracker
- (CGRect)visibleUnscaledBoundsAtEndOfZoom;
- (CRLCanvasZoomTracker)initWithCanvasLayer:(id)layer;
- (CRLCanvasZoomTrackerDelegate)delegate;
- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset;
- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int64_t)phase;
@end

@implementation CRLCanvasZoomTracker

- (CRLCanvasZoomTracker)initWithCanvasLayer:(id)layer
{
  layerCopy = layer;
  v8.receiver = self;
  v8.super_class = CRLCanvasZoomTracker;
  v5 = [(CRLCanvasZoomTracker *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_canvasLayer, layerCopy);
    *&v6->_fastPinchSnapsViewScale = 257;
    v6->_animateTransform = 1;
  }

  return v6;
}

- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int64_t)phase
{
  ty = view.x;
  tx = view.y;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [NSObject cancelPreviousPerformRequestsWithTarget:"cancelPreviousPerformRequestsWithTarget:selector:object:" selector:WeakRetained object:?];

  v11 = &unk_101AD5000;
  if (phase == 2)
  {
    if (qword_101AD5C48 != -1)
    {
      sub_10132E4C0();
    }

    v12 = off_1019EE1B8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E4D4(v12);
    }
  }

  self->_gestureIsFastPinch = 0;
  v13 = objc_loadWeakRetained(&self->_canvasLayer);
  controller = [v13 controller];

  v15 = objc_loadWeakRetained(&self->_canvasLayer);
  canvasView = [v15 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];

  shouldCanvasScrollingSizeGrowToFitBoardContent = [controller shouldCanvasScrollingSizeGrowToFitBoardContent];
  switch(phase)
  {
    case 0:
LABEL_18:
      v25 = objc_loadWeakRetained(&self->_canvasLayer);
      v26 = v25;
      if (v25)
      {
        [v25 affineTransform];
      }

      else
      {
        memset(&transform, 0, 48);
      }

      v27 = *&transform.m13;
      *&self->_savedTransform.a = *&transform.m11;
      *&self->_savedTransform.c = v27;
      *&self->_savedTransform.tx = *&transform.m21;

      [enclosingScrollView contentOffset];
      self->_savedContentOffset.x = v28;
      self->_savedContentOffset.y = v29;
      self->_hasGestureOrigin = 0;
      self->_gestureOffset = CGPointZero;
      [controller i_viewWillBeginZooming];
      self->_isZooming = 1;
      self->_zoomVelocitySampleCount = 0;
      self->_zoomVelocity = 0.0;
      +[NSDate timeIntervalSinceReferenceDate];
      self->_zoomStartTime = v30;
      if (qword_101AD5C48 != -1)
      {
        sub_10132E518();
      }

      v31 = off_1019EE1B8;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v370 = objc_loadWeakRetained(&self->_canvasLayer);
        [v370 viewScale];
        v372 = v371;
        v373 = *&self->_savedTransform.c;
        *&transform.m11 = *&self->_savedTransform.a;
        *&transform.m13 = v373;
        *&transform.m21 = *&self->_savedTransform.tx;
        v374 = NSStringFromCGAffineTransform(&transform);
        LODWORD(transform.m11) = 134218242;
        *(&transform.m11 + 4) = v372;
        WORD2(transform.m12) = 2112;
        *(&transform.m12 + 6) = v374;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Begin zoom. Initial view scale %f initial transform %@", &transform, 0x16u);

        v11 = &unk_101AD5000;
      }

      break;
    case 1:
      if (self->_isZooming)
      {
        break;
      }

      goto LABEL_18;
    case 3:
      if (qword_101AD5C48 != -1)
      {
        sub_10132E540();
      }

      v19 = off_1019EE1B8;
      if (os_log_type_enabled(off_1019EE1B8, OS_LOG_TYPE_DEBUG))
      {
        sub_10132E568(v19);
      }

      if (self->_isShowingZoomHUD)
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        [v20 canvasZoomTrackerDidEndViewScaleFeedback:self];
      }

      v21 = objc_loadWeakRetained(&self->_canvasLayer);
      *tyb = *&CGAffineTransformIdentity.c;
      *&transform.m11 = *&CGAffineTransformIdentity.a;
      *txc = *&transform.m11;
      *&transform.m13 = *tyb;
      *&transform.m21 = *&CGAffineTransformIdentity.tx;
      v435 = *&transform.m21;
      [v21 setAffineTransform:&transform];

      v22 = objc_loadWeakRetained(&self->_canvasLayer);
      associatedBackgroundLayer = [v22 associatedBackgroundLayer];
      *&transform.m11 = *txc;
      *&transform.m13 = *tyb;
      *&transform.m21 = v435;
      [associatedBackgroundLayer setDynamicTransform:&transform];

      [controller viewDidEndZooming];
      v24 = objc_loadWeakRetained(&self->_delegate);
      [v24 canvasZoomTrackerDidFinish:self];

      goto LABEL_272;
  }

  zoomVelocitySampleCount = self->_zoomVelocitySampleCount;
  v33 = velocity + zoomVelocitySampleCount++ * self->_zoomVelocity;
  self->_zoomVelocity = v33 / zoomVelocitySampleCount;
  self->_zoomVelocitySampleCount = zoomVelocitySampleCount;
  v34 = objc_loadWeakRetained(&self->_canvasLayer);
  [v34 viewScale];
  v36 = v35;

  v37 = objc_loadWeakRetained(&self->_canvasLayer);
  [v37 minimumPinchViewScale];
  v39 = v38;

  v40 = objc_loadWeakRetained(&self->_canvasLayer);
  [v40 maximumPinchViewScale];
  v42 = v41;

  +[NSDate timeIntervalSinceReferenceDate];
  v44 = v43 - self->_zoomStartTime;
  if (phase != 2 || v44 >= 0.2 || fabs(self->_zoomVelocity) <= 0.5)
  {
    v47 = v36 * scale;
    if (v44 <= 0.2 || self->_isShowingZoomHUD)
    {
      goto LABEL_38;
    }

    v51 = objc_loadWeakRetained(&self->_canvasLayer);
    showsScaleFeedback = [v51 showsScaleFeedback];

    if (!showsScaleFeedback)
    {
      goto LABEL_37;
    }

    v50 = 0;
    goto LABEL_36;
  }

  self->_gestureIsFastPinch = 1;
  v45 = objc_loadWeakRetained(&self->_canvasLayer);
  [v45 viewScale];
  [controller i_nextCanvasViewScaleDetentForProposedViewScale:self->_zoomVelocity > 0.0 greater:self->_gestureIsFastPinch isFastPinch:?];
  v47 = v46;

  if (self->_isShowingZoomHUD)
  {
    goto LABEL_38;
  }

  v48 = objc_loadWeakRetained(&self->_canvasLayer);
  showsScaleFeedback2 = [v48 showsScaleFeedback];

  if (showsScaleFeedback2)
  {
    v50 = 1;
LABEL_36:
    v53 = objc_loadWeakRetained(&self->_delegate);
    [v53 canvasZoomTracker:self willBeginViewScaleFeedbackWithZoomMethod:v50];

    self->_isShowingZoomHUD = 1;
  }

LABEL_37:
  v11 = &unk_101AD5000;
LABEL_38:
  v54 = sub_1004C3240(v47, v39, v42);
  if ([(CRLCanvasZoomTracker *)self fastPinchSnapsViewScale]&& self->_gestureIsFastPinch || [(CRLCanvasZoomTracker *)self slowPinchSnapsViewScale])
  {
    v55 = objc_loadWeakRetained(&self->_canvasLayer);
    [v55 viewScale];
    [controller i_viewScaleForProposedViewScale:self->_gestureIsFastPinch originalViewScale:v54 isFastPinch:v56];
    v58 = v57;

    v59 = v58 != v54 || self->_gestureIsFastPinch;
    self->_currentlySnappingViewScale = v59;
    v54 = v58;
  }

  else
  {
    self->_currentlySnappingViewScale = 0;
  }

  if (phase == 2)
  {
    v60 = objc_loadWeakRetained(&self->_canvasLayer);
    [v60 viewScale];
    [controller i_canvasCenterOffsetForProposedViewScale:v54 originalViewScale:v61];
    width = v62;
    height = v63;

    if (v11[393] != -1)
    {
      sub_10132E5AC();
    }

    v64 = off_1019EE1B8;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E5D4(width, height);
    }

    v47 = v54;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  if (v47 >= v39)
  {
    if (v47 > v42)
    {
      v47 = v42 + (1.0 - 3.0 / (v47 - v42 + 3.0)) * 0.8;
    }
  }

  else
  {
    v47 = v39 + (1.0 - 3.0 / (v39 - v47 + 3.0)) * -0.8;
  }

  v65 = objc_loadWeakRetained(&self->_canvasLayer);
  [v65 unscaledSize];
  v66 = sub_10011ECB4();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v73 = objc_loadWeakRetained(&self->_canvasLayer);
  [v73 viewScale];
  v75 = sub_10011FFD8(v66, v68, v70, v72, v74);
  v77 = v76;
  v79 = v78;
  v81 = v80;

  v82 = objc_loadWeakRetained(&self->_canvasLayer);
  controller2 = [v82 controller];
  canvas = [controller2 canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  v86 = v75 - v79;
  if (!isAnchoredAtRight)
  {
    v86 = v75;
  }

  v412 = v79;
  v87 = sub_100120414(v86, v77, v79, v81);
  v405 = v88;
  v408 = v87;
  v89 = objc_loadWeakRetained(&self->_canvasLayer);
  canvasView2 = [v89 canvasView];
  v91 = objc_loadWeakRetained(&self->_canvasLayer);
  canvasView3 = [v91 canvasView];
  superview = [canvasView3 superview];
  [canvasView2 convertPoint:superview toView:{ty, tx}];
  v95 = v94;
  v97 = v96;

  v98 = &unk_101AD5000;
  if (!self->_hasGestureOrigin)
  {
    memset(&transform, 0, 48);
    v99 = objc_loadWeakRetained(&self->_canvasLayer);
    v100 = v99;
    if (v99)
    {
      [v99 affineTransform];
    }

    else
    {
      memset(&t1, 0, 48);
    }

    CGAffineTransformInvert(&transform, &t1);

    self->_scaledZoomOrigin = vaddq_f64(*&transform.m21, vmlaq_n_f64(vmulq_n_f64(*&transform.m13, tx), *&transform.m11, ty));
    if (qword_101AD5C48 != -1)
    {
      sub_10132E668();
    }

    v101 = off_1019EE1B8;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
    {
      v375 = NSStringFromCGPoint(self->_scaledZoomOrigin);
      v475.x = ty;
      v475.y = tx;
      v376 = NSStringFromCGPoint(v475);
      *&t1.m11 = *&transform.m11;
      *&t1.m13 = *&transform.m13;
      *&t1.m21 = *&transform.m21;
      v377 = NSStringFromCGAffineTransform(&t1);
      LODWORD(t1.m11) = 138412802;
      *(&t1.m11 + 4) = v375;
      WORD2(t1.m12) = 2112;
      *(&t1.m12 + 6) = v376;
      HIWORD(t1.m13) = 2112;
      *&t1.m14 = v377;
      _os_log_debug_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEBUG, "mScaledZoomOrigin %@ transforms locationInView %@ by inverse canvas layer transform %@", &t1, 0x20u);

      v98 = &unk_101AD5000;
    }

    self->_gestureOrigin.x = v95;
    self->_gestureOrigin.y = v97;
    self->_hasGestureOrigin = 1;
  }

  y = self->_scaledZoomOrigin.y;
  x = self->_scaledZoomOrigin.x;
  if (phase != 2)
  {
    self->_gestureOffset.x = sub_10011F31C(v95, v97, self->_gestureOrigin.x);
    self->_gestureOffset.y = v102;
  }

  [enclosingScrollView bounds];
  v103 = sub_10011ECB4();
  v416 = v105;
  v417 = v103;
  v107 = v106;
  v414 = v104;
  if ((shouldCanvasScrollingSizeGrowToFitBoardContent & 1) == 0)
  {
    v108 = v104;
    v109 = objc_loadWeakRetained(&self->_canvasLayer);
    [v109 unscaledSize];
    v112 = sub_10011F340(v110, v111, v47);
    v114 = v113;

    v115 = fmax((v112 - v108) * 0.5, 0.0);
    v116 = fmax((v114 - v107) * 0.5, 0.0);
    if (phase == 2)
    {
      self->_gestureOffset.x = sub_1004C3240(self->_gestureOffset.x, -v115, v115);
      self->_gestureOffset.y = sub_1004C3240(self->_gestureOffset.y, -v116, v116);
    }

    else
    {
      v117 = objc_loadWeakRetained(&self->_canvasLayer);
      isInfinite = [v117 isInfinite];

      if ((isInfinite & 1) == 0)
      {
        v119 = v54;
        if ([(CRLCanvasZoomTracker *)self alwaysUsesTranslationSprings])
        {
          v120 = 0.8;
        }

        else
        {
          v121 = objc_loadWeakRetained(&self->_canvasLayer);
          [v121 viewScale];
          v123 = v122;

          if (v47 >= 1.0 || v123 < 1.0)
          {
            v120 = 0.8;
          }

          else
          {
            v120 = 1.0;
          }
        }

        v125 = self->_gestureOffset.x;
        v126 = 0.0;
        v127 = 0.0;
        if (v125 != 0.0)
        {
          v128 = fabs(v125);
          v127 = v128 * fmax((v128 - v115) / v128, 0.0);
        }

        v129 = sub_1004C3240(v125, -v115, v115);
        *v130.i64 = powf(v127, v120);
        v131.f64[0] = NAN;
        v131.f64[1] = NAN;
        v132 = vnegq_f64(v131);
        v134.i64[0] = *&self->_gestureOffset.x;
        v133 = self->_gestureOffset.y;
        *txa = v132;
        self->_gestureOffset.x = v129 + *vbslq_s8(v132, v130, v134).i64;
        if (v133 != 0.0)
        {
          v135 = fabs(v133);
          v126 = v135 * fmax((v135 - v116) / v135, 0.0);
        }

        v136 = sub_1004C3240(v133, -v116, v116);
        *v137.i64 = powf(v126, v120);
        v138.i64[0] = *&self->_gestureOffset.y;
        self->_gestureOffset.y = v136 + *vbslq_s8(*txa, v137, v138).i64;
        v54 = v119;
      }
    }
  }

  v419 = v107;
  v424 = v47;
  if (self->_isShowingZoomHUD)
  {
    v139 = objc_loadWeakRetained(&self->_delegate);
    [v139 canvasZoomTracker:self willUpdateViewScaleFeedbackWithScale:v54];
  }

  v422 = v54;
  v140 = objc_loadWeakRetained(&self->_canvasLayer);
  [v140 bounds];
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v148 = v147;

  v149 = sub_10011ECB4();
  v153 = sub_100120414(v149, v150, v151, v152);
  v432 = v154;
  v155 = objc_loadWeakRetained(&self->_canvasLayer);
  [v155 anchorPoint];
  v157 = v156;
  v159 = v158;

  v480.origin.x = v142;
  v480.origin.y = v144;
  v480.size.width = v146;
  v480.size.height = v148;
  v160 = v157 * CGRectGetWidth(v480);
  v429 = v142;
  v481.origin.x = v142;
  v481.origin.y = v144;
  v481.size.width = v146;
  v481.size.height = v148;
  v161 = v159 * CGRectGetHeight(v481);
  v433 = v153;
  txb = sub_10011F31C(v153, v432, v160);
  tya = v162;
  if (phase == 2)
  {
    if (v98[393] != -1)
    {
      sub_10132E690();
    }

    v163 = off_1019EE1B8;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E6B8(v142, v144, v146, v148);
    }

    if (v98[393] != -1)
    {
      sub_10132E74C();
    }

    v164 = off_1019EE1B8;
    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E774(v153, v432);
    }

    if (v98[393] != -1)
    {
      sub_10132E808();
    }

    v165 = off_1019EE1B8;
    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E830(v160, v161);
    }

    if (v98[393] != -1)
    {
      sub_10132E8C4();
    }

    v166 = off_1019EE1B8;
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
    {
      sub_10132E8EC(txb, tya);
    }
  }

  if (v98[393] != -1)
  {
    sub_10132E980();
  }

  v167 = off_1019EE1B8;
  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
  {
    v471.y = y;
    v471.x = x;
    v305 = NSStringFromCGPoint(v471);
    v491.origin.x = v142;
    v491.origin.y = v144;
    v491.size.width = v146;
    v491.size.height = v148;
    v306 = NSStringFromCGRect(v491);
    LODWORD(transform.m11) = 138412546;
    *(&transform.m11 + 4) = v305;
    WORD2(transform.m12) = 2112;
    *(&transform.m12 + 6) = v306;
    _os_log_debug_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEBUG, "zoomOriginInBounds %@ canvasLayerBounds %@", &transform, 0x16u);

    v98 = &unk_101AD5000;
  }

  v168 = sub_10011F31C(x, y, v142);
  v170 = v169;
  v171 = sub_10011F31C(v168, v169, v153);
  v173 = v172;
  if (v98[393] != -1)
  {
    sub_10132E9A8();
  }

  v174 = off_1019EE1B8;
  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
  {
    v472.x = v168;
    v472.y = v170;
    v307 = NSStringFromCGPoint(v472);
    v473.x = v171;
    v473.y = v173;
    v308 = NSStringFromCGPoint(v473);
    LODWORD(transform.m11) = 138412546;
    *(&transform.m11 + 4) = v307;
    WORD2(transform.m12) = 2112;
    *(&transform.m12 + 6) = v308;
    _os_log_debug_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEBUG, "zoomOriginRelativeToFrameOrigin %@ zoomOriginRelativeToViewAnchor %@", &transform, 0x16u);

    v98 = &unk_101AD5000;
  }

  v175 = objc_loadWeakRetained(&self->_canvasLayer);
  [v175 viewScale];
  v177 = v176;

  [enclosingScrollView contentOffset];
  v179 = v178;
  point = v180;
  if (v98[393] != -1)
  {
    sub_10132E9D0();
  }

  v181 = off_1019EE1B8;
  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
  {
    v309 = NSStringFromCGPoint(self->_gestureOffset);
    v474.x = v179;
    v474.y = point;
    v310 = NSStringFromCGPoint(v474);
    LODWORD(transform.m11) = 138412546;
    *(&transform.m11 + 4) = v309;
    WORD2(transform.m12) = 2112;
    *(&transform.m12 + 6) = v310;
    _os_log_debug_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEBUG, "mGestureOffset %@, scaledContentOffset %@", &transform, 0x16u);

    v98 = &unk_101AD5000;
  }

  v182 = *&self->_savedTransform.c;
  *&v467.a = *&self->_savedTransform.a;
  *&v467.c = v182;
  v184 = *&self->_savedTransform.a;
  v183 = *&self->_savedTransform.c;
  *&v467.tx = *&self->_savedTransform.tx;
  *&transform.m11 = v184;
  *&transform.m13 = v183;
  *&transform.m21 = *&self->_savedTransform.tx;
  CGAffineTransformTranslate(&v467, &transform, txb, tya);
  if (v98[393] != -1)
  {
    sub_10132E9F8();
  }

  v185 = off_1019EE1B8;
  if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EA20(&v467);
  }

  v186 = self->_gestureOffset.x;
  v187 = self->_gestureOffset.y;
  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  CGAffineTransformTranslate(&transform, &t1, v186, v187);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132EAB4();
  }

  v188 = off_1019EE1B8;
  if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EADC(&v467);
  }

  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  CGAffineTransformTranslate(&transform, &t1, v171, v173);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132EB70();
  }

  v189 = off_1019EE1B8;
  if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EB98(&v467);
  }

  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  CGAffineTransformScale(&transform, &t1, v424 / v177, v424 / v177);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132EC2C();
  }

  v190 = off_1019EE1B8;
  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EC54(&v467);
  }

  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  CGAffineTransformTranslate(&transform, &t1, -v171, -v173);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132ECE8();
  }

  v191 = off_1019EE1B8;
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
  {
    sub_10132ED10(&v467);
  }

  v192 = CGPointZero.y;
  memset(&v466, 0, sizeof(v466));
  CGAffineTransformMakeTranslation(&v466, width - CGPointZero.x, height - v192);
  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  *&t2.m11 = *&v466.a;
  *&t2.m13 = *&v466.c;
  *&t2.m21 = *&v466.tx;
  CGAffineTransformConcat(&transform, &t1, &t2);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132EDA4();
  }

  v193 = off_1019EE1B8;
  if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EDCC(&v467);
  }

  *&t1.m11 = *&v467.a;
  *&t1.m13 = *&v467.c;
  *&t1.m21 = *&v467.tx;
  CGAffineTransformTranslate(&transform, &t1, -txb, -tya);
  *&v467.a = *&transform.m11;
  *&v467.c = *&transform.m13;
  *&v467.tx = *&transform.m21;
  if (v98[393] != -1)
  {
    sub_10132EE60();
  }

  v194 = off_1019EE1B8;
  if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
  {
    sub_10132EE88(&v467);
  }

  if (phase != 2)
  {
    memset(&transform, 0, sizeof(transform));
    *&t1.m11 = *&v467.a;
    *&t1.m13 = *&v467.c;
    *&t1.m21 = *&v467.tx;
    CATransform3DMakeAffineTransform(&transform, &t1);
    transform.m33 = transform.m11;
    v465 = transform;
    v286 = objc_loadWeakRetained(&self->_canvasLayer);
    t1 = v465;
    [v286 setTransform:&t1];

    v464 = v467;
    v287 = objc_loadWeakRetained(&self->_canvasLayer);
    associatedBackgroundLayer2 = [v287 associatedBackgroundLayer];
    *&t1.m11 = *&v464.a;
    *&t1.m13 = *&v464.c;
    *&t1.m21 = *&v464.tx;
    [associatedBackgroundLayer2 setDynamicTransform:&t1];

    [controller i_viewIsZoomingAtPoint:{x, y}];
    [controller i_viewDidZoomToViewScale:1 notify:v422];
    goto LABEL_272;
  }

  v195 = sub_10011F31C(v408, v405, v429);
  v197 = v196;
  if (v98[393] != -1)
  {
    sub_10132EF1C();
  }

  v198 = off_1019EE1B8;
  v421 = v179;
  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
  {
    v476.x = v195;
    v476.y = v197;
    v378 = NSStringFromCGPoint(v476);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v378;
    _os_log_debug_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEBUG, "boundsCenterRelativeToFrameOrigin %@", &transform, 0xCu);
  }

  v199 = sub_10011F31C(v195, v197, v153);
  v201 = v200;
  if (v98[393] != -1)
  {
    sub_10132EF44();
  }

  v202 = off_1019EE1B8;
  v398 = v195;
  if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
  {
    v477.x = v199;
    v477.y = v201;
    v379 = NSStringFromCGPoint(v477);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v379;
    _os_log_debug_impl(&_mh_execute_header, v202, OS_LOG_TYPE_DEBUG, "boundsCenterRelativeToViewCenter %@", &transform, 0xCu);
  }

  memset(&v463, 0, sizeof(v463));
  *&transform.m11 = *&v467.a;
  *&transform.m13 = *&v467.c;
  *&transform.m21 = *&v467.tx;
  sub_100139EB4(&transform, &v463, txb, tya);
  v203 = sub_10011EC70(v199, v201, v412);
  v205 = v204;
  v207 = v206;
  v209 = v208;
  if (v98[393] != -1)
  {
    sub_10132EF6C();
  }

  v210 = off_1019EE1B8;
  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
  {
    v496.origin.x = v203;
    v496.origin.y = v205;
    v496.size.width = v207;
    v496.size.height = v209;
    v380 = NSStringFromCGRect(v496);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v380;
    _os_log_debug_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEBUG, "transformedRect1 %@", &transform, 0xCu);
  }

  *&transform.m11 = *&v463.a;
  *&transform.m13 = *&v463.c;
  *&transform.m21 = *&v463.tx;
  v482.origin.x = v203;
  v482.origin.y = v205;
  v411 = v209;
  v413 = v207;
  v482.size.width = v207;
  v482.size.height = v209;
  v483 = CGRectApplyAffineTransform(v482, &transform);
  v211 = v483.origin.x;
  v212 = v483.origin.y;
  v213 = v483.size.width;
  v214 = v483.size.height;
  if (v98[393] != -1)
  {
    sub_10132EF94();
  }

  v215 = off_1019EE1B8;
  if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
  {
    v497.origin.x = v211;
    v497.origin.y = v212;
    v497.size.width = v213;
    v497.size.height = v214;
    v381 = NSStringFromCGRect(v497);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v381;
    _os_log_debug_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEBUG, "transformedRect2 %@", &transform, 0xCu);
  }

  v216 = sub_10011F334(v211, v212, v433);
  v218 = v217;
  if (v98[393] != -1)
  {
    sub_10132EFBC();
  }

  v219 = off_1019EE1B8;
  if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
  {
    v498.origin.x = v216;
    v498.origin.y = v218;
    v498.size.width = v213;
    v498.size.height = v214;
    v382 = NSStringFromCGRect(v498);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v382;
    _os_log_debug_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEBUG, "transformedRect3 %@", &transform, 0xCu);
  }

  v220 = sub_10011F31C(v216, v218, v421);
  v222 = v221;
  if (v98[393] != -1)
  {
    sub_10132EFE4();
  }

  v223 = off_1019EE1B8;
  if (os_log_type_enabled(v223, OS_LOG_TYPE_DEBUG))
  {
    v499.origin.x = v220;
    v499.origin.y = v222;
    v499.size.width = v213;
    v499.size.height = v214;
    v383 = NSStringFromCGRect(v499);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v383;
    _os_log_debug_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEBUG, "transformedRect4 %@", &transform, 0xCu);
  }

  v484.origin.x = v220;
  v484.origin.y = v222;
  v484.size.width = v213;
  v484.size.height = v214;
  v430 = -height;
  v431 = -width;
  v485 = CGRectOffset(v484, -width, -height);
  v224 = v485.origin.x;
  v225 = v485.origin.y;
  v226 = v485.size.width;
  v227 = v485.size.height;
  if (v98[393] != -1)
  {
    sub_10132F00C();
  }

  v228 = off_1019EE1B8;
  v399 = v197;
  v426 = v205;
  v428 = v203;
  if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
  {
    v500.origin.x = v224;
    v500.origin.y = v225;
    v500.size.width = v226;
    v500.size.height = v227;
    v384 = NSStringFromCGRect(v500);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v384;
    _os_log_debug_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEBUG, "transformedRect5 %@", &transform, 0xCu);
  }

  v229 = objc_loadWeakRetained(&self->_canvasLayer);
  [v229 contentInset];
  v406 = v225;
  v409 = v224;
  v231 = v224 + v230;
  v233 = v225 + v232;
  v403 = v227;
  v404 = v226;
  v235 = v226 - (v230 + v234);
  v237 = v227 - (v232 + v236);

  [enclosingScrollView adjustedContentInset];
  v239 = v238;
  v241 = v240;
  v244 = -v243 - v240;
  v245 = -v242 - v238;
  if (v98[393] != -1)
  {
    sub_10132F034();
  }

  rect.x = v231 - v241;
  v246 = v233 - v239;
  rect_24 = v235 - v244;
  v247 = v237 - v245;
  v248 = off_1019EE1B8;
  if (os_log_type_enabled(v248, OS_LOG_TYPE_DEBUG))
  {
    v501.origin.x = v231 - v241;
    v501.origin.y = v246;
    v501.size.width = v235 - v244;
    v501.size.height = v247;
    v385 = NSStringFromCGRect(v501);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v385;
    _os_log_debug_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEBUG, "transformedAndInsetRect %@", &transform, 0xCu);
  }

  rect_16 = v247;

  rect.y = v246;
  if (v98[393] != -1)
  {
    sub_10132F05C();
  }

  v249 = v417 + width * 2.0;
  v250 = v416 + height * 2.0;
  v251 = v414 + v431 * 2.0;
  v252 = v419 + v430 * 2.0;
  v253 = off_1019EE1B8;
  if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
  {
    sub_10132F084(rect_24 >= v251, v247 >= v252);
  }

  v461 = *&v463.a;
  v462 = *&v463.c;
  v418 = v463.ty;
  v420 = v463.tx;
  v486.origin.x = v409;
  v486.origin.y = v406;
  v486.size.width = v404;
  v486.size.height = v403;
  v415.x = CGRectGetMaxX(v486);
  v487.origin.x = v409;
  v487.origin.y = v406;
  v487.size.width = v404;
  v487.size.height = v403;
  v415.y = CGRectGetMaxY(v487);
  v488.origin.x = v249;
  v488.origin.y = v250;
  v488.size.width = v251;
  v488.size.height = v252;
  MaxX = CGRectGetMaxX(v488);
  [enclosingScrollView adjustedContentInset];
  v256 = v255;
  v489.origin.x = v249;
  v489.origin.y = v250;
  v489.size.width = v251;
  v489.size.height = v252;
  MaxY = CGRectGetMaxY(v489);
  [enclosingScrollView adjustedContentInset];
  v259 = v258;
  if (v98[393] != -1)
  {
    sub_10132F16C();
  }

  v410 = MaxX - v256;
  v260 = off_1019EE1B8;
  if (os_log_type_enabled(v260, OS_LOG_TYPE_DEBUG))
  {
    v386 = NSStringFromCGPoint(rect);
    v387 = NSStringFromCGPoint(v415);
    v478.x = MaxX - v256;
    v478.y = MaxY - v259;
    v388 = NSStringFromCGPoint(v478);
    LODWORD(transform.m11) = 138412802;
    *(&transform.m11 + 4) = v386;
    WORD2(transform.m12) = 2112;
    *(&transform.m12 + 6) = v387;
    HIWORD(transform.m13) = 2112;
    *&transform.m14 = v388;
    _os_log_debug_impl(&_mh_execute_header, v260, OS_LOG_TYPE_DEBUG, "currentContentOffset %@ bottomRightPoint %@ svBottomRight %@", &transform, 0x20u);

    v98 = &unk_101AD5000;
  }

  v407 = MaxY - v259;

  [enclosingScrollView contentOffset];
  sizeOfScrollViewEnclosingCanvas = [controller sizeOfScrollViewEnclosingCanvas];
  v470 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(sizeOfScrollViewEnclosingCanvas, v262);
  v264 = v263;
  v266 = v265;
  v268 = v267;
  v270 = v269;
  [enclosingScrollView adjustedContentInset];
  v275 = sub_100120414(v264 + v274, v266 + v271, v268 - (v274 + v272), v270 - (v271 + v273));
  v277 = sub_10011F334(v275, v276, width);
  v279 = v278;
  if (v98[393] != -1)
  {
    sub_10132F194();
  }

  v280 = off_1019EE1B8;
  if (os_log_type_enabled(v280, OS_LOG_TYPE_DEBUG))
  {
    sub_10132F1BC(v277, v279);
  }

  if (v98[393] != -1)
  {
    sub_10132F250();
  }

  v281 = off_1019EE1B8;
  if (os_log_type_enabled(v281, OS_LOG_TYPE_DEBUG))
  {
    *&transform.m11 = v461;
    *&transform.m13 = v462;
    transform.m21 = v420;
    transform.m22 = v418;
    v389 = NSStringFromCGAffineTransform(&transform);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v389;
    _os_log_debug_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEBUG, "adjustedTransform before horizontal and vertical clamping %@", &transform, 0xCu);
  }

  if ((shouldCanvasScrollingSizeGrowToFitBoardContent & 1) == 0)
  {
    v289 = objc_loadWeakRetained(&self->_canvasLayer);
    v290 = v289;
    if (rect_24 < v251)
    {
      horizontallyCenteredInScrollView = [v289 horizontallyCenteredInScrollView];

      if (horizontallyCenteredInScrollView)
      {
        v285 = v277 - v398;
        v282 = v413;
      }

      else
      {
        v301 = objc_loadWeakRetained(&self->_canvasLayer);
        controller3 = [v301 controller];
        canvas2 = [controller3 canvas];
        isAnchoredAtRight2 = [canvas2 isAnchoredAtRight];

        v282 = v413;
        if (isAnchoredAtRight2)
        {
          v490.origin = rect;
          v295 = rect_16;
          v490.size.width = rect_24;
          v490.size.height = rect_16;
          v285 = v420 + v251 - CGRectGetMaxX(v490);
          goto LABEL_215;
        }

        v285 = v420 - rect.x;
      }

      v295 = rect_16;
LABEL_215:
      if (v295 < v252)
      {
        v312 = objc_loadWeakRetained(&self->_canvasLayer);
        verticallyCenteredInScrollView = [v312 verticallyCenteredInScrollView];

        if (verticallyCenteredInScrollView)
        {
          v284 = v279 - v399;
        }

        else
        {
          v284 = v418 - rect.y;
        }

        v283 = v411;
      }

      else
      {
        if (rect.y >= v250)
        {
          v311 = v250 - rect.y + v418;
          v283 = v411;
        }

        else
        {
          v283 = v411;
          if (v415.y >= v407)
          {
            v311 = v418;
          }

          else
          {
            v311 = v418 + v407 - v415.y;
          }
        }

        v284 = v311 - height;
      }

      goto LABEL_226;
    }

    controller4 = [v289 controller];
    canvas3 = [controller4 canvas];
    isAnchoredAtRight3 = [canvas3 isAnchoredAtRight];

    if (isAnchoredAtRight3)
    {
      v282 = v413;
      v294 = v420;
      v295 = rect_16;
    }

    else
    {
      v294 = v420;
      v295 = rect_16;
      if (rect.x >= v249)
      {
        v294 = v249 - rect.x + v420;
      }

      else if (v415.x < v410)
      {
        v297 = objc_loadWeakRetained(&self->_canvasLayer);
        controller5 = [v297 controller];
        canvas4 = [controller5 canvas];
        isAnchoredAtRight4 = [canvas4 isAnchoredAtRight];

        v282 = v413;
        if ((isAnchoredAtRight4 & 1) == 0)
        {
          v294 = v420 + v410 - v415.x;
        }

        goto LABEL_212;
      }

      v282 = v413;
    }

LABEL_212:
    v285 = v294 - width;
    goto LABEL_215;
  }

  v283 = v411;
  v282 = v413;
  v284 = v418;
  v285 = v420;
LABEL_226:
  if (v98[393] != -1)
  {
    sub_10132F278();
  }

  v314 = off_1019EE1B8;
  if (os_log_type_enabled(v314, OS_LOG_TYPE_DEBUG))
  {
    *&transform.m11 = v461;
    *&transform.m13 = v462;
    transform.m21 = v285;
    transform.m22 = v284;
    v390 = NSStringFromCGAffineTransform(&transform);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v390;
    _os_log_debug_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEBUG, "adjustedTransform after horizontal and vertical clamping %@", &transform, 0xCu);
  }

  if (v98[393] != -1)
  {
    sub_10132F2A0();
  }

  v315 = off_1019EE1B8;
  if (os_log_type_enabled(v315, OS_LOG_TYPE_DEBUG))
  {
    sub_10132F2C8(v428, v426, v282, v283);
  }

  *&transform.m11 = v461;
  *&transform.m13 = v462;
  transform.m21 = v285;
  transform.m22 = v284;
  v492.origin.x = v428;
  v492.origin.y = v426;
  v492.size.width = v282;
  v492.size.height = v283;
  v493 = CGRectApplyAffineTransform(v492, &transform);
  v316 = v493.origin.x;
  v317 = v493.origin.y;
  v318 = v493.size.width;
  v319 = v493.size.height;
  if (v98[393] != -1)
  {
    sub_10132F35C();
  }

  v320 = off_1019EE1B8;
  if (os_log_type_enabled(v320, OS_LOG_TYPE_DEBUG))
  {
    v502.origin.x = v316;
    v502.origin.y = v317;
    v502.size.width = v318;
    v502.size.height = v319;
    v391 = NSStringFromCGRect(v502);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v391;
    _os_log_debug_impl(&_mh_execute_header, v320, OS_LOG_TYPE_DEBUG, "finalBounds adjusted by transform %@", &transform, 0xCu);
  }

  v321 = sub_10011F334(v316, v317, v433);
  v323 = v322;
  if (v98[393] != -1)
  {
    sub_10132F384();
  }

  v324 = off_1019EE1B8;
  if (os_log_type_enabled(v324, OS_LOG_TYPE_DEBUG))
  {
    v503.origin.x = v321;
    v503.origin.y = v323;
    v503.size.width = v318;
    v503.size.height = v319;
    v392 = NSStringFromCGRect(v503);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v392;
    _os_log_debug_impl(&_mh_execute_header, v324, OS_LOG_TYPE_DEBUG, "finalBounds taking into account viewCenterInSuperlayer %@", &transform, 0xCu);
  }

  v325 = sub_10011F31C(v321, v323, v421);
  v327 = v326;
  if (v98[393] != -1)
  {
    sub_10132F3AC();
  }

  v328 = off_1019EE1B8;
  if (os_log_type_enabled(v328, OS_LOG_TYPE_DEBUG))
  {
    v504.origin.x = v325;
    v504.origin.y = v327;
    v504.size.width = v318;
    v504.size.height = v319;
    v393 = NSStringFromCGRect(v504);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v393;
    _os_log_debug_impl(&_mh_execute_header, v328, OS_LOG_TYPE_DEBUG, "finalBounds taking into account scaledContentOffset %@", &transform, 0xCu);
  }

  v494.origin.x = v325;
  v494.origin.y = v327;
  v494.size.width = v318;
  v494.size.height = v319;
  v495 = CGRectOffset(v494, v431, v430);
  v329 = v495.origin.x;
  v330 = v495.origin.y;
  v331 = v495.size.width;
  v332 = v495.size.height;
  if (v98[393] != -1)
  {
    sub_10132F3D4();
  }

  v333 = off_1019EE1B8;
  v334 = v284;
  if (os_log_type_enabled(v333, OS_LOG_TYPE_DEBUG))
  {
    v505.origin.x = v329;
    v505.origin.y = v330;
    v505.size.width = v331;
    v505.size.height = v332;
    v394 = NSStringFromCGRect(v505);
    LODWORD(transform.m11) = 138412290;
    *(&transform.m11 + 4) = v394;
    _os_log_debug_impl(&_mh_execute_header, v333, OS_LOG_TYPE_DEBUG, "finalBounds taking into account canvasCenterOffset %@", &transform, 0xCu);
  }

  canvas5 = [controller canvas];
  [canvas5 contentsScale];
  v337 = sub_1001221E8(v329, v330, v331, v332, v336);
  v339 = v338;
  v341 = v340;
  v343 = v342;

  if (v98[393] != -1)
  {
    sub_10132F3FC();
  }

  v344 = -v337;
  v345 = off_1019EE1B8;
  if (os_log_type_enabled(v345, OS_LOG_TYPE_DEBUG))
  {
    v479.x = -v337;
    v479.y = -v339;
    v395 = NSStringFromCGPoint(v479);
    v506.origin.x = v337;
    v506.origin.y = v339;
    v506.size.width = v341;
    v506.size.height = v343;
    v396 = NSStringFromCGRect(v506);
    *&transform.m11 = v461;
    *&transform.m13 = v462;
    transform.m21 = v285;
    transform.m22 = v334;
    v397 = NSStringFromCGAffineTransform(&transform);
    LODWORD(transform.m11) = 138413058;
    *(&transform.m11 + 4) = v395;
    WORD2(transform.m12) = 2112;
    *(&transform.m12 + 6) = v396;
    HIWORD(transform.m13) = 2048;
    transform.m14 = v422;
    LOWORD(transform.m21) = 2112;
    *(&transform.m21 + 2) = v397;
    _os_log_debug_impl(&_mh_execute_header, v345, OS_LOG_TYPE_DEBUG, "final content offset %@ finalBounds %@ view scale %f transform %@", &transform, 0x2Au);
  }

  memset(&v460, 0, sizeof(v460));
  v346 = sub_10011F340(txb, tya, -1.0);
  *&transform.m11 = v461;
  *&transform.m13 = v462;
  transform.m21 = v285;
  transform.m22 = v334;
  sub_100139EB4(&transform, &v460, v346, v347);
  memset(&transform, 0, sizeof(transform));
  *&t1.m11 = *&v460.a;
  *&t1.m13 = *&v460.c;
  *&t1.m21 = *&v460.tx;
  CATransform3DMakeAffineTransform(&transform, &t1);
  transform.m33 = transform.m11;
  if ([(CRLCanvasZoomTracker *)self animateTransform])
  {
    v348 = objc_loadWeakRetained(&self->_canvasLayer);
    v349 = v348;
    v350 = v424;
    if (v348)
    {
      [v348 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    t2 = transform;
    v352 = CATransform3DEqualToTransform(&t2, &t1);

    if (v352)
    {
      v351 = 0;
    }

    else
    {
      v353 = CACurrentMediaTime();
      memset(&t2, 0, 48);
      v354 = objc_loadWeakRetained(&self->_canvasLayer);
      v355 = v354;
      if (v354)
      {
        [v354 transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      CATransform3DGetAffineTransform(&t2, &t1);

      v356 = [CRLDisplayLink alloc];
      v454[0] = _NSConcreteStackBlock;
      v454[1] = 3221225472;
      v454[2] = sub_1001DAF5C;
      v454[3] = &unk_101846D88;
      *&v454[5] = v353;
      v455 = *&t2.m11;
      v456 = *&t2.m13;
      v457 = *&t2.m21;
      v458 = v460;
      v454[4] = self;
      v357 = [(CRLDisplayLink *)v356 initWithHandler:v454];
      [(CRLDisplayLink *)v357 setPaused:0];
      v358 = objc_loadWeakRetained(&self->_delegate);
      [v358 canvasZoomTrackerWillBeginFinalZoomAnimation:self];

      v450[0] = _NSConcreteStackBlock;
      v450[1] = 3221225472;
      v452 = transform;
      v450[2] = sub_1001DB058;
      v450[3] = &unk_101846DB0;
      v450[4] = self;
      v359 = controller;
      v451 = v359;
      v453 = v422;
      v360 = objc_retainBlock(v450);
      v444[0] = _NSConcreteStackBlock;
      v444[1] = 3221225472;
      v444[2] = sub_1001DB0CC;
      v444[3] = &unk_101846DD8;
      v361 = v357;
      v445 = v361;
      selfCopy = self;
      v447 = v424;
      v448 = v344;
      v449 = -v339;
      v362 = objc_retainBlock(v444);
      [v359 beginAnimations:&stru_1018BCA28];
      v363 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
      i_currentAnimation = [v359 i_currentAnimation];
      [i_currentAnimation setTimingFunction:v363];

      i_currentAnimation2 = [v359 i_currentAnimation];
      [i_currentAnimation2 setDuration:0.2];

      i_currentAnimation3 = [v359 i_currentAnimation];
      [i_currentAnimation3 setCompletionBlock:v362];

      (v360[2])(v360);
      [v359 commitAnimations];

      v351 = 1;
    }
  }

  else
  {
    v351 = 0;
    v350 = v424;
  }

  if (self->_isShowingZoomHUD)
  {
    gestureIsFastPinch = self->_gestureIsFastPinch;
    v368 = objc_loadWeakRetained(&self->_delegate);
    v369 = v368;
    if (gestureIsFastPinch)
    {
      [v368 performSelector:"canvasZoomTrackerDidEndViewScaleFeedback:" withObject:self afterDelay:0.5];
    }

    else
    {
      [v368 canvasZoomTrackerDidEndViewScaleFeedback:self];
    }

    self->_isShowingZoomHUD = 0;
  }

  if ((v351 & 1) == 0)
  {
    [(CRLCanvasZoomTracker *)self p_finishZoomWithFinalScaleFactor:v350 contentOffset:v344, -v339];
  }

LABEL_272:
}

- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  WeakRetained = objc_loadWeakRetained(&self->_canvasLayer);
  associatedBackgroundLayer = [WeakRetained associatedBackgroundLayer];
  v10 = *&CGAffineTransformIdentity.c;
  v85 = *&CGAffineTransformIdentity.a;
  *&v87.m11 = *&CGAffineTransformIdentity.a;
  v81 = *&CGAffineTransformIdentity.tx;
  v83 = v10;
  *&v87.m13 = v10;
  *&v87.m21 = v81;
  [associatedBackgroundLayer setDynamicTransform:&v87];

  v11 = objc_loadWeakRetained(&self->_canvasLayer);
  canvasView = [v11 canvasView];

  v13 = objc_loadWeakRetained(&self->_canvasLayer);
  controller = [v13 controller];

  [controller visibleUnscaledRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = objc_loadWeakRetained(&self->_canvasLayer);
  v24 = v23;
  if (v23)
  {
    [v23 transform];
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  CATransform3DGetAffineTransform(&v88, &v87);
  CGAffineTransformInvert(&v87, &v88);
  v89.origin.x = v16;
  v89.origin.y = v18;
  v89.size.width = v20;
  v89.size.height = v22;
  v90 = CGRectApplyAffineTransform(v89, &v87);
  v25 = v90.origin.x;
  v26 = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;

  v29 = objc_loadWeakRetained(&self->_canvasLayer);
  *&v87.m11 = v85;
  *&v87.m13 = v83;
  *&v87.m21 = v81;
  [v29 setAffineTransform:&v87];

  v30 = objc_loadWeakRetained(&self->_canvasLayer);
  [v30 setViewScale:factor];

  v31 = objc_loadWeakRetained(&self->_canvasLayer);
  controller2 = [v31 controller];
  canvas = [controller2 canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  v35 = objc_loadWeakRetained(&self->_canvasLayer);
  v36 = v35;
  if (isAnchoredAtRight)
  {
    [v35 contentInset];
    v38 = y - v37;

    v36 = objc_loadWeakRetained(&self->_canvasLayer);
    [v36 contentInset];
    v40 = x - v39;
  }

  else
  {
    [v35 bounds];
    v40 = sub_10011F31C(x, y, v41);
    v38 = v42;
  }

  enclosingScrollView = [canvasView enclosingScrollView];
  v86 = v38;
  v84 = v40;
  if ([controller shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [enclosingScrollView convertPoint:canvasView toView:{v40, v38}];
    v45 = v44;
    v47 = v46;
    [enclosingScrollView adjustedContentInset];
    [controller convertBoundsToUnscaledPoint:{sub_10011F334(v45, v47, v48)}];
    v80 = v50;
    v82 = v49;
    self->_visibleUnscaledBoundsAtEndOfZoom.origin.x = v49;
    self->_visibleUnscaledBoundsAtEndOfZoom.origin.y = v50;
    self->_visibleUnscaledBoundsAtEndOfZoom.size.width = width;
    self->_visibleUnscaledBoundsAtEndOfZoom.size.height = height;
  }

  else
  {
    v80 = v26;
    v82 = v25;
  }

  [enclosingScrollView adjustedContentInset];
  v52 = v51;
  v54 = v53;
  v56 = -v55;
  v58 = -v57;
  [enclosingScrollView contentSize];
  v60 = v59;
  v62 = v61;
  v63 = sub_10011ECB4() - v54;
  v65 = v64 - v52;
  v67 = v66 - (v58 - v54);
  v69 = v68 - (v56 - v52);
  [enclosingScrollView scrollableAreaBounds];
  if (v70 <= v60)
  {
    v72 = v70;
  }

  else
  {
    v72 = v60;
  }

  if (v71 <= v62)
  {
    v73 = v71;
  }

  else
  {
    v73 = v62;
  }

  v91.origin.x = v63;
  v91.origin.y = v65;
  v91.size.width = v67;
  v91.size.height = v69;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v63;
  v92.origin.y = v65;
  v92.size.width = v67;
  v92.size.height = v69;
  MaxX = CGRectGetMaxX(v92);
  v76 = sub_1004C3240(v84, MinX, MaxX - v72);
  v93.origin.x = v63;
  v93.origin.y = v65;
  v93.size.width = v67;
  v93.size.height = v69;
  MinY = CGRectGetMinY(v93);
  v94.origin.x = v63;
  v94.origin.y = v65;
  v94.size.width = v67;
  v94.size.height = v69;
  MaxY = CGRectGetMaxY(v94);
  [enclosingScrollView setContentOffset:{v76, sub_1004C3240(v86, MinY, MaxY - v73)}];
  [controller viewDidEndZooming];
  if ([controller shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [controller setContentOffset:0 scrollOptions:{v82, v80}];
  }

  [controller i_recordUserViewScale];
  self->_isZooming = 0;
  v79 = objc_loadWeakRetained(&self->_delegate);
  [v79 canvasZoomTrackerDidFinish:self];
}

- (CRLCanvasZoomTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)visibleUnscaledBoundsAtEndOfZoom
{
  x = self->_visibleUnscaledBoundsAtEndOfZoom.origin.x;
  y = self->_visibleUnscaledBoundsAtEndOfZoom.origin.y;
  width = self->_visibleUnscaledBoundsAtEndOfZoom.size.width;
  height = self->_visibleUnscaledBoundsAtEndOfZoom.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end