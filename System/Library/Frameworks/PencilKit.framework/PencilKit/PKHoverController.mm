@interface PKHoverController
- ($FF38E1E694A259ECA75E65D4243A6BF6)currentInputPoint;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)isInEdgeOfScreen:(_BOOL8)result;
- (BOOL)isInExteriorOfScreen:(_BOOL8)result;
- (double)adjustedZLimitFromLimit:(double)limit inputPoint:;
- (double)currentMovementSpeed;
- (double)distanceFromEdgeOfScreen:(void *)screen view:;
- (double)inputPointFilter:(id)filter distanceToEdge:(id *)edge;
- (id).cxx_construct;
- (id)hoverDebugLayerColor;
- (id)hoverGestureRecognizer;
- (id)initWithDelegate:(void *)delegate view:;
- (void)_endIntentionalHoverTracking;
- (void)_handleHoverInputPoint:(id *)point;
- (void)_hoverGesture:(id)gesture;
- (void)_sendDidUpdateNow:(id *)now;
- (void)_setupHoverGestureRecognizerInView:(id)view;
- (void)_setupPredictorForNewPoint:(BOOL)point;
- (void)_trackIntentionalHover:(id *)hover;
- (void)_triggerHoldGestureIfNecessary;
- (void)_updateInputPointFilters;
- (void)alphaFactorFromMovementSpeed:(uint64_t)speed;
- (void)checkDidLiftAfterGestureEnd;
- (void)dealloc;
- (void)didReceiveNormalTouch:(uint64_t)touch;
- (void)hideLabel;
- (void)logInputPoint:(id *)point;
- (void)pauseDisplayLink;
- (void)reset;
- (void)resetHoverHold;
- (void)setShouldGenerate120HzEvents:(uint64_t)events;
- (void)showAttributedLabel:(double)label atLocation:(double)location;
- (void)showLabel:(double)label atLocation:(double)location;
- (void)startDisplayLink;
- (void)updateCurrentInputPointWithInputPoint:(id *)point;
- (void)updateShapeLayer:(double *)layer inputPoint:;
- (void)vsync;
@end

@implementation PKHoverController

- (id)hoverDebugLayerColor
{
  if (self)
  {
    if (qword_1ED6A5160 != -1)
    {
      dispatch_once(&qword_1ED6A5160, &__block_literal_global_48);
    }

    self = _MergedGlobals_143;
    v1 = vars8;
  }

  return self;
}

void __41__PKHoverController_hoverDebugLayerColor__block_invoke()
{
  v2 = [MEMORY[0x1E69DC888] redColor];
  v0 = [v2 colorWithAlphaComponent:0.4];
  v1 = _MergedGlobals_143;
  _MergedGlobals_143 = v0;
}

- ($FF38E1E694A259ECA75E65D4243A6BF6)currentInputPoint
{
  lastObject = [*&self->_intentionalHoverStartTimestamp lastObject];
  v6 = lastObject;
  if (lastObject)
  {
    [lastObject currentFilteredPoint];
  }

  else
  {
    retstr->var15 = 0;
    *&retstr->var11 = 0u;
    *&retstr->var13 = 0u;
    *&retstr->var7 = 0u;
    *&retstr->var9 = 0u;
    *&retstr->var3 = 0u;
    *&retstr->var5 = 0u;
    retstr->var0 = 0u;
    *&retstr->var1 = 0u;
  }

  return result;
}

- (void)updateCurrentInputPointWithInputPoint:(id *)point
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *&self->_intentionalHoverStartTimestamp;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = *&point->var13;
        v24 = *&point->var11;
        v25 = v10;
        var15 = point->var15;
        v11 = *&point->var5;
        v20 = *&point->var3;
        v21 = v11;
        v12 = *&point->var9;
        v22 = *&point->var7;
        v23 = v12;
        v13 = *&point->var1;
        var0 = point->var0;
        v19 = v13;
        [v9 addInputPoint:&var0];
        if (v9)
        {
          [v9 currentFilteredPoint];
        }

        else
        {
          var15 = 0;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          var0 = 0u;
          v19 = 0u;
        }

        v14 = v25;
        *&point->var11 = v24;
        *&point->var13 = v14;
        point->var15 = var15;
        v15 = v21;
        *&point->var3 = v20;
        *&point->var5 = v15;
        v16 = v23;
        *&point->var7 = v22;
        *&point->var9 = v16;
        v17 = v19;
        ++v8;
        point->var0 = var0;
        *&point->var1 = v17;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  ++self->_gestureRecognizer;
}

- (id)initWithDelegate:(void *)delegate view:
{
  v48[8] = *MEMORY[0x1E69E9840];
  v5 = a2;
  delegateCopy = delegate;
  if (self)
  {
    v47.receiver = self;
    v47.super_class = PKHoverController;
    v7 = objc_msgSendSuper2(&v47, sel_init);
    v8 = v7;
    self = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 3, delegateCopy);
      objc_storeWeak(v8 + 55, v5);
      *(self + 29) = vdupq_n_s64(0x7FF8000000000000uLL);
      self[31] = 0x7FF8000000000000;
      *(self + 432) = 0;
      self[33] = 0;
      *(self + 4) = self[1] & 0xFFFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      *(self + 4) = self[1] & 0xFFFB | v9;
      if (objc_opt_respondsToSelector())
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      *(self + 4) = self[1] & 0xFFFD | v10;
      if (objc_opt_respondsToSelector())
      {
        v11 = 8;
      }

      else
      {
        v11 = 0;
      }

      *(self + 4) = self[1] & 0xFFF7 | v11;
      if (objc_opt_respondsToSelector())
      {
        v12 = 16;
      }

      else
      {
        v12 = 0;
      }

      *(self + 4) = self[1] & 0xFFEF | v12;
      if (objc_opt_respondsToSelector())
      {
        v13 = 32;
      }

      else
      {
        v13 = 0;
      }

      *(self + 4) = self[1] & 0xFFDF | v13;
      if (objc_opt_respondsToSelector())
      {
        v14 = 64;
      }

      else
      {
        v14 = 0;
      }

      *(self + 4) = self[1] & 0xFFBF | v14;
      if (objc_opt_respondsToSelector())
      {
        v15 = 128;
      }

      else
      {
        v15 = 0;
      }

      *(self + 4) = self[1] & 0xFF7F | v15;
      if (objc_opt_respondsToSelector())
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      *(self + 4) = self[1] & 0xFEFF | v16;
      if (objc_opt_respondsToSelector())
      {
        v17 = 512;
      }

      else
      {
        v17 = 0;
      }

      *(self + 4) = self[1] & 0xFDFF | v17;
      [self _setupHoverGestureRecognizerInView:delegateCopy];
      v18 = objc_alloc_init(PKInputPointAltitudeAndAzimuthNoiseFilter);
      v19 = self[38];
      self[38] = v18;

      v20 = objc_alloc_init(PKInputPointWeightedAverageFilter);
      v21 = self[37];
      self[37] = v20;

      v22 = objc_alloc_init(PKInputPointAltitudeAndAzimuthBucketingFilter);
      v23 = self[39];
      self[39] = v22;

      v24 = objc_alloc_init(PKInputPointAltitudeAndAzimuthZLimitFilter);
      v25 = self[40];
      self[40] = v24;

      v26 = v8[40];
      if (v26)
      {
        v26[21] = 0x400F6A7A2955385ELL;
        v27 = self[40];
        if (v27)
        {
          v27[22] = 0;
        }
      }

      v28 = objc_alloc_init(PKInputPointAltitudeAndAzimuthEdgeFilter);
      v29 = self[41];
      self[41] = v28;

      v30 = v8[41];
      if (v30)
      {
        objc_storeWeak(v30 + 20, self);
        v31 = self[41];
        if (v31)
        {
          v31[22] = 0x400F6A7A2955385ELL;
          v32 = self[41];
          if (v32)
          {
            v32[23] = 0;
          }
        }
      }

      v33 = objc_alloc_init(PKInputPointExtraLatencyFilter);
      v34 = self[42];
      self[42] = v33;

      v35 = objc_alloc_init(PKInputPointReduceFramerateFilter);
      v36 = self[43];
      self[43] = v35;

      v37 = objc_alloc_init(PKInputPointPredictionFilter);
      v38 = self[44];
      self[44] = v37;

      v39 = self[37];
      v40 = self[41];
      v41 = self[42];
      v48[0] = self[38];
      v48[1] = v40;
      v42 = self[39];
      v48[2] = self[40];
      v48[3] = v39;
      v48[4] = v42;
      v48[5] = v41;
      v43 = v8[44];
      v48[6] = self[43];
      v48[7] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:8];
      v45 = self[45];
      self[45] = v44;

      [self _updateInputPointFilters];
    }
  }

  return self;
}

- (void)dealloc
{
  [(PKHoverController *)self pauseDisplayLink];
  [*&self->_useUpdateCycle invalidate];
  v3 = *&self->_useUpdateCycle;
  *&self->_useUpdateCycle = 0;

  v4.receiver = self;
  v4.super_class = PKHoverController;
  [(PKHoverController *)&v4 dealloc];
}

- (void)_setupHoverGestureRecognizerInView:(id)view
{
  viewCopy = view;
  v4 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__hoverGesture_];
  eventGeneratorTimer = self->_eventGeneratorTimer;
  self->_eventGeneratorTimer = v4;

  v6 = +[PKHoverSettings sharedSettings];
  supportTouchPad = [v6 supportTouchPad];

  if ((supportTouchPad & 1) == 0)
  {
    [(NSTimer *)self->_eventGeneratorTimer setAllowedTouchTypes:&unk_1F47C1AF0];
  }

  [viewCopy addGestureRecognizer:self->_eventGeneratorTimer];
  v8 = [PKPencilObserverGestureRecognizer pencilObserverWithDelegate:?];
  [viewCopy addGestureRecognizer:v8];
  LOBYTE(self->_view) = self->_view & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(self->_view) = self->_view & 0xFD | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(self->_view) = self->_view & 0xFB | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(self->_view) = self->_view & 0xF7 | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(self->_view) = self->_view & 0xEF | v12;
}

- (id)hoverGestureRecognizer
{
  if (self)
  {
    self = self[34];
    v1 = vars8;
  }

  return self;
}

- (void)setShouldGenerate120HzEvents:(uint64_t)events
{
  if (events)
  {
    if (*(events + 437) != a2)
    {
      *(events + 437) = a2;
      if (a2)
      {
        *(events + 416) = 0;
        if (_UIUpdateCycleEnabled())
        {
          *(events + 416) = 1;
        }

        if (!*(events + 408) && (*(events + 416) & 1) == 0)
        {
          v7 = objc_alloc_init(PKHoverControllerDisplayLinkDelegate);
          [(PKHoverControllerDisplayLinkDelegate *)v7 setController:events];
          v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:v7 selector:sel_display_];
          v4 = *(events + 408);
          *(events + 408) = v3;

          v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
          [*(events + 408) setPreferredFrameRateRange:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];
          [*(events + 408) setHighFrameRateReason:1507329];
          [*(events + 408) setPaused:1];
          v5 = *(events + 408);
          currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
          [v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
        }
      }
    }
  }
}

- (void)vsync
{
  kdebug_trace();
  if (BYTE5(self->_delegate) == 1)
  {
    if (LOBYTE(self->_updateCycleItem) == 1)
    {
      if ((LOBYTE(self->_timestampForLatestGestureUpdate) & 1) == 0 && LOBYTE(self->_waitingForHoverHoldTimestamp) == 1)
      {
        [(PKHoverController *)self _setupPredictorForNewPoint:0];
        [(PKHoverController *)self currentInputPoint];
        [(PKHoverController *)self _sendDidUpdate:v6];
      }

      LOBYTE(self->_timestampForLatestGestureUpdate) = 0;
    }

    else if (LOBYTE(self->_timestampForLatestGestureUpdate))
    {
      if (LOBYTE(self->_waitingForHoverHoldTimestamp) == 1)
      {
        v3 = [MEMORY[0x1E695DF00] now];
        [v3 timeIntervalSinceReferenceDate];
        v5 = v4;

        if (v5 - *&self->_displayLink > 0.00208333333)
        {
          LOBYTE(self->_timestampForLatestGestureUpdate) = 0;
          [(PKHoverController *)self _setupPredictorForNewPoint:0];
          [(PKHoverController *)self currentInputPoint];
          [(PKHoverController *)self _sendDidUpdate:v6];
        }
      }
    }
  }
}

- (void)_updateInputPointFilters
{
  v65 = *MEMORY[0x1E69E9840];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v3 = *&self->_intentionalHoverStartTimestamp;
  v4 = [v3 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v4)
  {
    v5 = *v61;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v61 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v60 + 1) + 8 * i);
        v8 = +[PKHoverSettings sharedSettings];
        [v8 maxZDistance];
        if (v7)
        {
          *(v7 + 8) = v9;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v4);
  }

  v10 = +[PKHoverSettings sharedSettings];
  [v10 weightedAverageLocationFactor];
  altitudeAndAzimuthNoiseFilter = self->_altitudeAndAzimuthNoiseFilter;
  if (altitudeAndAzimuthNoiseFilter)
  {
    *&altitudeAndAzimuthNoiseFilter->generator.__x_ = v11;
  }

  v13 = +[PKHoverSettings sharedSettings];
  [v13 weightedAverageLocationFactor];
  v15 = self->_altitudeAndAzimuthNoiseFilter;
  if (v15)
  {
    v15->currentAzimuthOffsetValue = v14;
  }

  v16 = +[PKHoverSettings sharedSettings];
  [v16 weightedAverageAltitudeFactor];
  v18 = self->_altitudeAndAzimuthNoiseFilter;
  if (v18)
  {
    v18->currentAltitudeOffsetValue = v17;
  }

  v19 = +[PKHoverSettings sharedSettings];
  [v19 weightedAverageAzimuthFactor];
  v21 = self->_altitudeAndAzimuthNoiseFilter;
  if (v21)
  {
    *&v21->_noiseIsHeightBased = v20;
  }

  v22 = +[PKHoverSettings sharedSettings];
  noiseIsHeightBased = [v22 noiseIsHeightBased];
  altitudeAndAzimuthBucketingFilter = self->_altitudeAndAzimuthBucketingFilter;
  if (altitudeAndAzimuthBucketingFilter)
  {
    LOBYTE(altitudeAndAzimuthBucketingFilter[1].super._maxZDistance) = noiseIsHeightBased;
  }

  v25 = +[PKHoverSettings sharedSettings];
  [v25 altitudeJitterNoise];
  v27 = self->_altitudeAndAzimuthBucketingFilter;
  if (v27)
  {
    v27[1].super._numInputPoints = v26;
  }

  v28 = +[PKHoverSettings sharedSettings];
  [v28 azimuthJitterNoise];
  v30 = self->_altitudeAndAzimuthBucketingFilter;
  if (v30)
  {
    v30[1].super._filteredPoint.var0.point.x = v29;
  }

  v31 = +[PKHoverSettings sharedSettings];
  [v31 altitudeOffsetNoise];
  v33 = self->_altitudeAndAzimuthBucketingFilter;
  if (v33 && v33[1].super._filteredPoint.var0.point.y != v32)
  {
    v33[1].super._filteredPoint.var0.point.y = v32;
    [(PKInputPointAltitudeAndAzimuthBucketingFilter *)v33 _recalculateOffsets];
  }

  v34 = +[PKHoverSettings sharedSettings];
  [v34 azimuthOffsetNoise];
  v36 = self->_altitudeAndAzimuthBucketingFilter;
  if (v36 && v36[1].super._filteredPoint.force != v35)
  {
    v36[1].super._filteredPoint.force = v35;
    [(PKInputPointAltitudeAndAzimuthBucketingFilter *)v36 _recalculateOffsets];
  }

  v37 = +[PKHoverSettings sharedSettings];
  altitudeBuckets = [v37 altitudeBuckets];
  altitudeAndAzimuthZLimitFilter = self->_altitudeAndAzimuthZLimitFilter;
  if (altitudeAndAzimuthZLimitFilter)
  {
    *&altitudeAndAzimuthZLimitFilter->_lastKnownAzimuth = altitudeBuckets;
  }

  v40 = +[PKHoverSettings sharedSettings];
  azimuthBuckets = [v40 azimuthBuckets];
  v42 = self->_altitudeAndAzimuthZLimitFilter;
  if (v42)
  {
    *&v42->_altitudeAndAzimuthZLimit = azimuthBuckets;
  }

  v43 = +[PKHoverSettings sharedSettings];
  [v43 toolPreviewAzimuthTiltMaxZDistance];
  altitudeAndAzimuthEdgeFilter = self->_altitudeAndAzimuthEdgeFilter;
  if (altitudeAndAzimuthEdgeFilter)
  {
    altitudeAndAzimuthEdgeFilter->_delegate = v44;
  }

  if ([PKHoverController pointsPerMillimeter]::onceToken != -1)
  {
    dispatch_once(&[PKHoverController pointsPerMillimeter]::onceToken, &__block_literal_global_78);
  }

  v46 = *&[PKHoverController pointsPerMillimeter]::nativePointsPerMillimeter;
  v47 = +[PKHoverSettings sharedSettings];
  [v47 screenEdgeSizeInMillimeters];
  extraLatencyFilter = self->_extraLatencyFilter;
  if (extraLatencyFilter)
  {
    *&extraLatencyFilter->_inputPoints.__end_ = v46 * v48;
  }

  v50 = +[PKHoverSettings sharedSettings];
  numFramesExtraLatency = [v50 numFramesExtraLatency];
  reduceFramerateFilter = self->_reduceFramerateFilter;
  if (reduceFramerateFilter)
  {
    *&reduceFramerateFilter[1].super._maxZDistance = numFramesExtraLatency;
  }

  v53 = +[PKHoverSettings sharedSettings];
  numFramesReduceFramerate = [v53 numFramesReduceFramerate];
  predictionFilter = self->_predictionFilter;
  if (predictionFilter)
  {
    *&predictionFilter->_fullPredictionTimeIntervalPoint.var0.point.x = numFramesReduceFramerate;
  }

  if (isPencilGesture(self->_eventGeneratorTimer))
  {
    v56 = +[PKHoverSettings sharedSettings];
    [v56 predictionTimeInterval];
    allInputPointFilters = self->_allInputPointFilters;
    if (allInputPointFilters)
    {
      allInputPointFilters[56].super.isa = v57;
    }
  }

  else
  {
    v59 = self->_allInputPointFilters;
    if (v59)
    {
      v59[56].super.isa = 0;
    }
  }
}

- (void)_hoverGesture:(id)gesture
{
  gestureCopy = gesture;
  BYTE1(self->_delegate) = 1;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_checkDidLiftAfterGestureEnd object:0];
  if ([gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2)
  {
    if ([gestureCopy state] == 1)
    {
      if ((*&self->_delegateFlags & 0x100) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
        [WeakRetained hoverControllerGestureBegan:self];
      }

      [(PKHoverController *)self _updateInputPointFilters];
      if (*&self[1].super.isa > 0.0)
      {
        objc_initWeak(&location, self);
        isa = self[1].super.isa;
        v7 = MEMORY[0x1E695DFF0];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __35__PKHoverController__hoverGesture___block_invoke;
        v55[3] = &unk_1E82D9C68;
        objc_copyWeak(v57, &location);
        v56 = gestureCopy;
        v57[1] = isa;
        v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:v55 block:*&isa];
        previousRollValue = self->_previousRollValue;
        *&self->_previousRollValue = v8;

        objc_destroyWeak(v57);
        objc_destroyWeak(&location);
      }
    }

    v10 = objc_loadWeakRetained(&self->_inputPoints.__begin_);
    [gestureCopy _preciseLocationInView:v10];
    v12 = v11;
    v14 = v13;

    if ((self->_view & 8) != 0)
    {
      [gestureCopy zOffset];
      v18 = v17;
      +[PKHoverSettings maxHoverHeight];
      v15 = v18 * v19;
      if ((self->_view & 4) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = 5.0;
      if ((self->_view & 4) == 0)
      {
LABEL_10:
        v16 = CACurrentMediaTime();
LABEL_13:
        v20 = [PKInputPointUtility timestampFromTouchTimestamp:v16];
        v21 = +[PKHoverSettings sharedSettings];
        supportTouchPad = [v21 supportTouchPad];
        if (v15 == 0.0)
        {
          v23 = supportTouchPad;
        }

        else
        {
          v23 = 0;
        }

        v24 = v15;
        if (v23 == 1)
        {
          v25 = +[PKHoverSettings sharedSettings];
          [v25 toolPreviewMaxZDistance];
          v24 = v26 * 0.5;
        }

        v27 = 0;
        if (+[PKHoverSettings isHoverActive]&& (self->_view & 2) != 0)
        {
          [gestureCopy altitudeAngle];
          if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v15 > 0.0 && v28 < 1.5 || v15 > 2.0 && fabs(v28 + -1.57079633) >= 0.00999999978)
            {
              BYTE2(self->_delegate) = 1;
            }

            v30 = 1.57079633 - v28;
            if (v30 >= 0.0)
            {
              v27 = *&v30;
              if (v30 > 1.57079633)
              {
                v27 = 0x3FF921FB54442D18;
              }
            }
          }
        }

        v31 = 0;
        v32 = 0.0;
        if (+[PKHoverSettings isHoverActive])
        {
          v32 = 3.92699082;
          if (self->_view)
          {
            view = [gestureCopy view];
            [gestureCopy azimuthAngleInView:view];
            v35 = v34;

            if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v36 = v35 + -3.14159265;
              v37 = fmod(v36, 6.28318531);
              if (v36 <= 6.28318531 && v36 >= 0.0)
              {
                v37 = v36;
              }

              if (v37 < 0.0)
              {
                v37 = v37 + 6.28318531;
              }

              if (v37 == 0.0)
              {
                v32 = 0.0;
              }

              else
              {
                v32 = v37;
              }
            }
          }
        }

        if ((self->_view & 0x10) != 0)
        {
          [gestureCopy _rollAngle];
          v31 = v39;
        }

        if (v24 < 100.0)
        {
          location = v12;
          v43 = v14;
          v44 = 0x3FF0000000000000;
          v45 = v32;
          v46 = v27;
          v47 = unk_1C801F438;
          v48 = v24;
          v49 = v20;
          v50 = unk_1C801F458;
          v51 = unk_1C801F468;
          v52 = 0;
          v53 = v31;
          v54 = unk_1C801F488;
          [(PKHoverController *)self _trackIntentionalHover:&location];
          LOBYTE(self->_timestampForLatestGestureUpdate) = 1;
          v40 = [MEMORY[0x1E695DF00] now];
          [v40 timeIntervalSinceReferenceDate];
          self->_displayLink = v41;

          [(PKHoverController *)self _setupPredictorForNewPoint:1];
          location = v12;
          v43 = v14;
          v44 = 0x3FF0000000000000;
          v45 = v32;
          v46 = v27;
          v47 = unk_1C801F438;
          v48 = v24;
          v49 = v20;
          v50 = unk_1C801F458;
          v51 = unk_1C801F468;
          v52 = 0;
          v53 = v31;
          v54 = unk_1C801F488;
          [(PKHoverController *)self _handleHoverInputPoint:&location];
        }

        goto LABEL_51;
      }
    }

    [gestureCopy _hoverTouchTimestamp];
    goto LABEL_13;
  }

  if ([gestureCopy state] == 3)
  {
    if ((*&self->_delegateFlags & 0x200) != 0)
    {
      v29 = objc_loadWeakRetained(&self->_currentLabel);
      [v29 hoverControllerGestureEnded:self];
    }

    [(PKHoverController *)self performSelector:sel_checkDidLiftAfterGestureEnd withObject:0 afterDelay:0.0666666667];
  }

  [(PKHoverController *)self reset];
LABEL_51:
}

void __35__PKHoverController__hoverGesture___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 1))
  {
    v3 = [MEMORY[0x1E695DF00] now];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;

    if (v5 - *(WeakRetained + 9) > *(a1 + 48))
    {
      if ([*(a1 + 32) state] == 1)
      {
        [*(a1 + 32) setState:2];
      }

      v6 = WeakRetained[4];
      if (WeakRetained[5] == v6)
      {
        v13 = *(WeakRetained + 13);
        v23 = *(WeakRetained + 12);
        v24 = v13;
        v25 = WeakRetained[28];
        v14 = *(WeakRetained + 9);
        v19 = *(WeakRetained + 8);
        v20 = v14;
        v15 = *(WeakRetained + 11);
        v21 = *(WeakRetained + 10);
        v22 = v15;
        v16 = *(WeakRetained + 7);
        v17 = *(WeakRetained + 6);
        v18 = v16;
      }

      else
      {
        v17 = *v6;
        v7 = v6[1];
        v8 = v6[2];
        v9 = v6[4];
        v20 = v6[3];
        v21 = v9;
        v18 = v7;
        v19 = v8;
        v10 = v6[5];
        v11 = v6[6];
        v12 = v6[7];
        v25 = *(v6 + 16);
        v23 = v11;
        v24 = v12;
        v22 = v10;
      }

      [WeakRetained _handleHoverInputPoint:&v17];
    }
  }
}

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(PKHoverController *)self resetHoverHold];
    if (*(self + 56) == 1 && (*(self + 8) & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 440));
      [WeakRetained hoverControllerDidEnd:self];
    }

    *(self + 392) = 0;
    *(self + 400) = 0;
    [self pauseDisplayLink];
    *(self + 264) = 0;
    *(self + 56) = 0;
    *(self + 88) = 0;
    std::vector<PKInputPoint>::resize((self + 32), 0);
    [*(self + 280) invalidate];
    v3 = *(self + 280);
    *(self + 280) = 0;

    [self _endIntentionalHoverTracking];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(self + 360);
    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) resetFilter];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)checkDidLiftAfterGestureEnd
{
  if ((*&self->_delegateFlags & 8) != 0 && (LOBYTE(self->_waitingForHoverHoldTimestamp) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
    [WeakRetained hoverControllerDidLift:self];
  }
}

- (void)didReceiveNormalTouch:(uint64_t)touch
{
  v16 = a2;
  if (touch)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:touch selector:sel_checkDidLiftAfterGestureEnd object:0];
    if (v16)
    {
      if ([v16 type] != 2)
      {
        goto LABEL_28;
      }

      if ([v16 type] == 2)
      {
        WeakRetained = objc_loadWeakRetained((touch + 24));
        [v16 azimuthAngleInView:WeakRetained];
        v5 = v4;

        if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v7 = v5 + -3.14159265;
          v6 = fmod(v7, 6.28318531);
          if (v7 <= 6.28318531 && v7 >= 0.0)
          {
            v6 = v7;
          }

          if (v6 < 0.0)
          {
            v6 = v6 + 6.28318531;
          }

          if (v6 == 0.0)
          {
            v6 = 0.0;
          }

          v9 = *(touch + 320);
          if (v9)
          {
            *(v9 + 168) = v6;
          }

          v10 = *(touch + 328);
          if (v10)
          {
            *(v10 + 176) = v6;
          }
        }

        [v16 altitudeAngle];
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v12 = 1.57079633 - v11;
          v13 = 0;
          if (v12 >= 0.0)
          {
            v13 = *&v12;
            if (v12 > 1.57079633)
            {
              v13 = 0x3FF921FB54442D18;
            }
          }

          v14 = *(touch + 320);
          if (v14)
          {
            *(v14 + 176) = v13;
          }

          v15 = *(touch + 328);
          if (v15)
          {
            *(v15 + 184) = v13;
          }
        }
      }
    }

    [(PKHoverController *)touch reset];
  }

LABEL_28:
}

- (void)resetHoverHold
{
  if (self)
  {
    *(self + 58) = 0;
    if (*(self + 57) == 1)
    {
      if (*(self + 8) & 0x20) == 0 || (WeakRetained = objc_loadWeakRetained((self + 440)), [WeakRetained hoverControllerHoldGestureEnded:self], WeakRetained, (*(self + 57)))
      {
        v3 = [MEMORY[0x1E695DF00] now];
        [v3 timeIntervalSinceReferenceDate];
        *(self + 80) = v4;

        *(self + 57) = 0;
      }
    }
  }
}

- (void)startDisplayLink
{
  if (LOBYTE(self->_updateCycleItem) != 1 || !*&self->_shouldShowHoverDebugLayer && (_UIUpdateRequestActivate(), objc_initWeak(&location, self), v3 = MEMORY[0x1E69E9820], v4 = 3221225472, v5 = __37__PKHoverController_startDisplayLink__block_invoke, v6 = &unk_1E82D9C90, objc_copyWeak(&v7, &location), *&self->_shouldShowHoverDebugLayer = _UIUpdateSequenceInsertItem(), objc_destroyWeak(&v7), objc_destroyWeak(&location), (self->_updateCycleItem & 1) == 0))
  {
    [*&self->_useUpdateCycle setPaused:{0, v3, v4, v5, v6}];
  }
}

void __37__PKHoverController_startDisplayLink__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained vsync];
}

- (void)pauseDisplayLink
{
  if (*&self->_shouldShowHoverDebugLayer)
  {
    _UIUpdateRequestDeactivate();
    _UIUpdateSequenceRemoveItem();
    *&self->_shouldShowHoverDebugLayer = 0;
  }

  if ((self->_updateCycleItem & 1) == 0)
  {
    v3 = *&self->_useUpdateCycle;

    [v3 setPaused:1];
  }
}

- (void)updateShapeLayer:(double *)layer inputPoint:
{
  v12 = a2;
  if (!self)
  {
    goto LABEL_9;
  }

  v5 = +[PKHoverSettings sharedSettings];
  debugCursorType = [v5 debugCursorType];

  switch(debugCursorType)
  {
    case 0:
      v9 = 8.0;
      goto LABEL_8;
    case 1:
      v9 = layer[7] + layer[7];
LABEL_8:
      v10 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{*layer - v9 * 0.5, layer[1] - v9 * 0.5, v9, v9}];
      [v12 setPath:{objc_msgSend(v10, "CGPath")}];

      hoverDebugLayerColor = [(PKHoverController *)self hoverDebugLayerColor];
      [v12 setStrokeColor:{objc_msgSend(hoverDebugLayerColor, "CGColor")}];

      [v12 setLineWidth:1.0];
      break;
    case 2:
      v7 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*layer + -0.5, layer[1] + -8.0, 1.0, 16.0}];
      [v12 setPath:{objc_msgSend(v7, "CGPath")}];

      hoverDebugLayerColor2 = [(PKHoverController *)self hoverDebugLayerColor];
      [v12 setStrokeColor:{objc_msgSend(hoverDebugLayerColor2, "CGColor")}];

      [v12 setLineWidth:1.0];
      break;
  }

LABEL_9:
}

- (void)_triggerHoldGestureIfNecessary
{
  end = self->_inputPoints.__end_;
  cap = self->_inputPoints.__cap_;
  v4 = cap - end;
  if (cap == end || (*&self->_delegateFlags & 0x10) == 0)
  {
    return;
  }

  if (BYTE1(self->_waitingForHoverHoldTimestamp) != 1)
  {
    goto LABEL_11;
  }

  v6 = sqrt((self->_latestHoldZPosition - *(end + 1)) * (self->_latestHoldZPosition - *(end + 1)) + (self->_latestHoldLocation.y - *end) * (self->_latestHoldLocation.y - *end));
  v7 = *&self->_hoverLabelView - *(end + 7);
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v8 = v6 < 8.0 && v7 < 2.0;
  if (!v8)
  {
    [(PKHoverController *)self resetHoverHold];
LABEL_11:
    v9 = [MEMORY[0x1E695DF00] now];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;

    if (self->_latestInputPointSentTimestamp + 1.0 <= v11)
    {
      v12 = 0xF0F0F0F0F0F0F0F1 * (v4 >> 3);
      v13 = *MEMORY[0x1E695EFF8];
      v15 = self->_inputPoints.__end_;
      v14 = self->_inputPoints.__cap_;
      if (v15 == v14)
      {
        v21 = vdivq_f64(v13, vdupq_lane_s64(COERCE__INT64(v12), 0));
        v19 = 0;
        v22 = vdupq_lane_s64(COERCE__INT64(0.0 / v12), 0);
        v23 = 0.0;
      }

      else
      {
        v16 = 0uLL;
        v17 = self->_inputPoints.__end_;
        v18 = *MEMORY[0x1E695EFF8];
        do
        {
          v18 = vaddq_f64(v18, *v17);
          v16 = vaddq_f64(v16, *(v17 + 56));
          v17 = (v17 + 136);
        }

        while (v17 != v14);
        v19 = *(v17 - 13);
        v20 = vdupq_lane_s64(COERCE__INT64(v12), 0);
        v21 = vdivq_f64(v18, v20);
        v22 = vdivq_f64(v16, v20);
        v23 = 0.0;
        do
        {
          v24 = *(v15 + 7);
          v25 = *v15;
          v15 = (v15 + 136);
          v26 = vsubq_f64(v25, v21);
          v13 = vmlaq_f64(v13, v26, v26);
          v23 = v23 + (v24 - v22.f64[0]) * (v24 - v22.f64[0]);
        }

        while (v15 != v14);
      }

      v27 = sqrt(v23);
      v8 = sqrt(vaddvq_f64(v13)) < 4.0;
      v28 = 1.0;
      if (v8 && v27 < 1.0)
      {
        *(&v44 + 1) = *&v22.f64[1];
        if ((BYTE1(self->_waitingForHoverHoldTimestamp) & 1) == 0 && (BYTE2(self->_waitingForHoverHoldTimestamp) & 1) == 0)
        {
          v28 = *(v14 - 9);
          self->_latestInputPointTimestamp = v28;
          BYTE2(self->_waitingForHoverHoldTimestamp) = 1;
        }

        v30 = BYTE3(self->_delegate);
        v31 = [PKHoverSettings sharedSettings:v28];
        v32 = v31;
        if (v30 == 1)
        {
          [v31 hoverAndHoldActionTimeInterval];
        }

        else
        {
          [v31 hoverAndHoldTriggerTimeInterval];
        }

        v34 = v33;

        if ((BYTE1(self->_waitingForHoverHoldTimestamp) & 1) == 0 && BYTE2(self->_waitingForHoverHoldTimestamp) == 1 && v11 - self->_latestInputPointTimestamp > v34)
        {
          *(&self->_waitingForHoverHoldTimestamp + 1) = 1;
          self->_latestInputPointSentTimestamp = v11;
          *&self->_latestHoldLocation.y = v43;
          self->_hoverLabelView = v44;
          WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
          v47 = v43;
          v48 = 0;
          v49 = v19;
          v50 = v19;
          v51 = unk_1C801F438;
          v52 = v44;
          v53 = unk_1C801F458;
          v54 = unk_1C801F468;
          v55 = *&qword_1C801F478;
          v56 = unk_1C801F488;
          v36 = self->_inputPoints.__end_;
          v45[0] = *v36;
          v37 = *(v36 + 4);
          v39 = *(v36 + 1);
          v38 = *(v36 + 2);
          v45[3] = *(v36 + 3);
          v45[4] = v37;
          v45[1] = v39;
          v45[2] = v38;
          v41 = *(v36 + 6);
          v40 = *(v36 + 7);
          v42 = *(v36 + 5);
          v46 = *(v36 + 16);
          v45[6] = v41;
          v45[7] = v40;
          v45[5] = v42;
          [WeakRetained hoverController:self holdGestureMeanInputPoint:&v47 latestInputPoint:v45];
        }
      }

      else
      {
        BYTE2(self->_waitingForHoverHoldTimestamp) = 0;
      }
    }
  }
}

- (void)_endIntentionalHoverTracking
{
  self->_intentionalHoverMinZValue = 0.0;
  self->_intentionalHoverMaxZValue = 0.0;
  *&self->_didReceiveNewPointToPredict = 0;
}

- (void)_trackIntentionalHover:(id *)hover
{
  if ((*&self->_delegateFlags & 0x40) != 0)
  {
    if (self->_intentionalHoverMinZValue == 0.0)
    {
      self->_intentionalHoverMinZValue = hover->var7;
      var6 = hover->var6;
      self->_intentionalHoverMaxZValue = var6;
      *&self->_didReceiveNewPointToPredict = var6;
    }

    else
    {
      v5 = hover->var6;
      intentionalHoverMaxZValue = self->_intentionalHoverMaxZValue;
      if (intentionalHoverMaxZValue >= v5)
      {
        intentionalHoverMaxZValue = hover->var6;
      }

      if (*&self->_didReceiveNewPointToPredict >= v5)
      {
        v5 = *&self->_didReceiveNewPointToPredict;
      }

      if (v5 - intentionalHoverMaxZValue <= 0.5)
      {
        self->_intentionalHoverMaxZValue = intentionalHoverMaxZValue;
        *&self->_didReceiveNewPointToPredict = v5;
      }

      else
      {
        v7 = [MEMORY[0x1E695DF00] now];
        [v7 timeIntervalSinceReferenceDate];
        v9 = v8;

        v10 = v9 - self->_intentionalHoverMinZValue;
        if (v10 > 0.5)
        {
          WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
          [WeakRetained hoverController:self intentionalHoverWithDuration:v10];
        }

        [(PKHoverController *)self _endIntentionalHoverTracking];
      }
    }
  }
}

- (void)_setupPredictorForNewPoint:(BOOL)point
{
  allInputPointFilters = self->_allInputPointFilters;
  if (allInputPointFilters)
  {
    LOBYTE(allInputPointFilters[55].super.isa) = BYTE5(self->_delegate) & point;
    if (allInputPointFilters[2].super.isa)
    {
      if (LOBYTE(allInputPointFilters[55].super.isa))
      {
        v4 = &OBJC_IVAR___PKInputPointPredictionFilter__halfPredictionTimeIntervalPoint;
      }

      else
      {
        v4 = &OBJC_IVAR___PKInputPointPredictionFilter__fullPredictionTimeIntervalPoint;
      }

      memmove(&allInputPointFilters[3], allInputPointFilters + *v4, 0x88uLL);
    }
  }
}

- (void)_handleHoverInputPoint:(id *)point
{
  if (self && BYTE4(self->_delegate) == 1)
  {
    v5 = *&point->var13;
    v80 = *&point->var11;
    v81 = v5;
    var15 = point->var15;
    v6 = *&point->var5;
    v76 = *&point->var3;
    v77 = v6;
    v7 = *&point->var9;
    v78 = *&point->var7;
    v79 = v7;
    v8 = *&point->var1;
    var0 = point->var0;
    v75 = v8;
    [(PKHoverController *)self logInputPoint:&var0];
  }

  if ((*&self->_delegateFlags & 0x80) != 0)
  {
    x = point->var0.var0.x;
    y = point->var0.var0.y;
    WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
    v12 = [WeakRetained hoverController:self shouldBeActiveAt:{x, y}];

    if ((v12 & 1) == 0)
    {
      if (LOBYTE(self->_waitingForHoverHoldTimestamp) != 1)
      {
        return;
      }

      std::vector<PKInputPoint>::resize(&self->_inputPoints.__end_, 0);
      LOBYTE(self->_waitingForHoverHoldTimestamp) = 0;
      if ((*&self->_delegateFlags & 4) != 0)
      {
        v48 = objc_loadWeakRetained(&self->_currentLabel);
        [v48 hoverControllerDidEnd:self];
      }
    }
  }

  *&self->_cachedLatestInputPoint.var0.location.y = point->var0;
  v13 = *&point->var1;
  v14 = *&point->var3;
  v15 = *&point->var7;
  *&self->_cachedLatestInputPoint.zPosition = *&point->var5;
  *&self->_cachedLatestInputPoint.predicted = v15;
  *&self->_cachedLatestInputPoint.azimuth = v13;
  *&self->_cachedLatestInputPoint.velocity = v14;
  v16 = *&point->var9;
  v17 = *&point->var11;
  v18 = *&point->var13;
  *&self->_latestHoldLocation.x = point->var15;
  *&self->_cachedLatestInputPoint.hasEstimatedAltitudeAndAzimuth = v17;
  *&self->_cachedLatestInputPoint.estimatedActiveInputProperties = v18;
  *&self->_cachedLatestInputPoint.length = v16;
  var6 = point->var6;
  v20 = +[PKHoverSettings sharedSettings];
  [v20 maxZDistance];
  v22 = v21;
  v23 = +[PKHoverSettings sharedSettings];
  [v23 deactivateExtraDistance];
  v25 = *&point->var13;
  v80 = *&point->var11;
  v81 = v25;
  var15 = point->var15;
  v26 = *&point->var5;
  v76 = *&point->var3;
  v77 = v26;
  v27 = *&point->var9;
  v78 = *&point->var7;
  v79 = v27;
  v28 = *&point->var1;
  var0 = point->var0;
  v75 = v28;
  v29 = [(PKHoverController *)self adjustedZLimitFromLimit:v22 + v24 inputPoint:?];

  if (var6 > v29)
  {
    v30 = self->_inputPoints.__cap_ != self->_inputPoints.__end_;
    var6 = 0.0;
LABEL_9:
    if (LOBYTE(self->_waitingForHoverHoldTimestamp) != 1)
    {
      return;
    }

    v31 = 1;
    goto LABEL_11;
  }

  v30 = 0;
  v31 = 0;
  if (var6 == 0.0)
  {
    goto LABEL_9;
  }

LABEL_11:
  point->var6 = var6;
  v32 = [MEMORY[0x1E695DF00] now];
  [v32 timeIntervalSinceReferenceDate];
  self->_latestHoldTimestamp = v33;

  end = self->_inputPoints.__end_;
  cap = self->_inputPoints.__cap_;
  v36 = *&self->_activeInputPoint;
  if (cap >= v36)
  {
    v45 = 0xF0F0F0F0F0F0F0F1 * ((cap - end) >> 3) + 1;
    if (v45 <= 0x1E1E1E1E1E1E1E1)
    {
      v46 = 0xF0F0F0F0F0F0F0F1 * ((v36 - end) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0xF0F0F0F0F0F0F0)
      {
        v47 = 0x1E1E1E1E1E1E1E1;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(&self->_inputPoints.__end_, v47);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>(&self->_inputPoints.__end_, 1uLL);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if (end == cap)
  {
    *cap = point->var0;
    v49 = *&point->var1;
    v50 = *&point->var3;
    v51 = *&point->var7;
    *(cap + 3) = *&point->var5;
    *(cap + 4) = v51;
    *(cap + 1) = v49;
    *(cap + 2) = v50;
    v52 = *&point->var9;
    v53 = *&point->var11;
    v54 = *&point->var13;
    *(cap + 16) = point->var15;
    *(cap + 6) = v53;
    *(cap + 7) = v54;
    *(cap + 5) = v52;
    self->_inputPoints.__cap_ = (cap + 136);
  }

  else
  {
    v37 = (end + 136);
    if (cap < 0x88)
    {
      v38 = self->_inputPoints.__cap_;
    }

    else
    {
      v38 = (cap + 136);
      *cap = *(cap - 136);
      v39 = *(cap - 120);
      v40 = *(cap - 104);
      v41 = *(cap - 72);
      *(cap + 3) = *(cap - 88);
      *(cap + 4) = v41;
      *(cap + 1) = v39;
      *(cap + 2) = v40;
      v42 = *(cap - 56);
      v43 = *(cap - 40);
      v44 = *(cap - 24);
      *(cap + 16) = *(cap - 1);
      *(cap + 6) = v43;
      *(cap + 7) = v44;
      *(cap + 5) = v42;
    }

    self->_inputPoints.__cap_ = v38;
    if (cap != v37)
    {
      memmove(end + 136, end, cap - v37);
      v38 = self->_inputPoints.__cap_;
    }

    v55 = v38 <= point || end > point;
    v56 = 1;
    if (v55)
    {
      v56 = 0;
    }

    v57 = &point[v56];
    *end = v57->var0;
    v58 = *&v57->var1;
    v59 = *&v57->var3;
    v60 = *&v57->var7;
    *(end + 3) = *&v57->var5;
    *(end + 4) = v60;
    *(end + 1) = v58;
    *(end + 2) = v59;
    v61 = *&v57->var9;
    v62 = *&v57->var11;
    v63 = *&v57->var13;
    *(end + 16) = v57->var15;
    *(end + 6) = v62;
    *(end + 7) = v63;
    *(end + 5) = v61;
  }

  v64 = self->_inputPoints.__cap_;
  if (0xF0F0F0F0F0F0F0F1 * ((v64 - self->_inputPoints.__end_) >> 3) >= 0xB)
  {
    self->_inputPoints.__cap_ = (v64 - 136);
    [(PKHoverController *)self _triggerHoldGestureIfNecessary];
  }

  v65 = *&point->var13;
  v80 = *&point->var11;
  v81 = v65;
  var15 = point->var15;
  v66 = *&point->var5;
  v76 = *&point->var3;
  v77 = v66;
  v67 = *&point->var9;
  v78 = *&point->var7;
  v79 = v67;
  v68 = *&point->var1;
  var0 = point->var0;
  v75 = v68;
  [(PKHoverController *)self updateCurrentInputPointWithInputPoint:&var0];
  if (LOBYTE(self->_waitingForHoverHoldTimestamp))
  {
    if (v31)
    {
      if (v30 && (*&self->_delegateFlags & 8) != 0)
      {
        v69 = objc_loadWeakRetained(&self->_currentLabel);
        [v69 hoverControllerDidLift:self];
LABEL_51:
      }
    }

    else
    {
      [(PKHoverController *)self currentInputPoint];
      [(PKHoverController *)self _sendDidUpdate:&var0];
    }
  }

  else if (0xF0F0F0F0F0F0F0F1 * ((self->_inputPoints.__cap_ - self->_inputPoints.__end_) >> 3) >= 4)
  {
    if (BYTE5(self->_delegate) == 1 && isPencilGesture(self->_eventGeneratorTimer))
    {
      [(PKHoverController *)self startDisplayLink];
    }

    LOBYTE(self->_waitingForHoverHoldTimestamp) = 1;
    self->_cachedLatestInputPoint.var0.point.x = 0.0;
    if (*&self->_delegateFlags)
    {
      v69 = objc_loadWeakRetained(&self->_currentLabel);
      v70 = *&point->var13;
      v80 = *&point->var11;
      v81 = v70;
      var15 = point->var15;
      v71 = *&point->var5;
      v76 = *&point->var3;
      v77 = v71;
      v72 = *&point->var9;
      v78 = *&point->var7;
      v79 = v72;
      v73 = *&point->var1;
      var0 = point->var0;
      v75 = v73;
      [v69 hoverController:self didBegin:&var0];
      goto LABEL_51;
    }
  }
}

- (double)adjustedZLimitFromLimit:(double)limit inputPoint:
{
  if (!self)
  {
    return 0.0;
  }

  v6 = +[PKHoverSettings sharedSettings];
  [v6 screenEdgeSizeInMillimeters];
  v8 = v7;
  if ([PKHoverController pointsPerMillimeter]::onceToken != -1)
  {
    dispatch_once(&[PKHoverController pointsPerMillimeter]::onceToken, &__block_literal_global_78);
  }

  v9 = v8 * *&[PKHoverController pointsPerMillimeter]::nativePointsPerMillimeter * 0.5;

  if (v9 != 0.0)
  {
    v10 = *(a2 + 112);
    v18[6] = *(a2 + 96);
    v18[7] = v10;
    v19 = *(a2 + 128);
    v11 = *(a2 + 48);
    v18[2] = *(a2 + 32);
    v18[3] = v11;
    v12 = *(a2 + 80);
    v18[4] = *(a2 + 64);
    v18[5] = v12;
    v13 = *(a2 + 16);
    v18[0] = *a2;
    v18[1] = v13;
    WeakRetained = objc_loadWeakRetained((self + 24));
    v15 = [(PKHoverController *)self distanceFromEdgeOfScreen:v18 view:WeakRetained];

    v16 = v15 / v9;
    if (v15 / v9 > 1.0)
    {
      v16 = 1.0;
    }

    return v16 * limit;
  }

  return limit;
}

- (void)_sendDidUpdateNow:(id *)now
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentLabel);
    v6 = *&now->var13;
    v10[6] = *&now->var11;
    v10[7] = v6;
    var15 = now->var15;
    v7 = *&now->var5;
    v10[2] = *&now->var3;
    v10[3] = v7;
    v8 = *&now->var9;
    v10[4] = *&now->var7;
    v10[5] = v8;
    v9 = *&now->var1;
    v10[0] = now->var0;
    v10[1] = v9;
    [WeakRetained hoverController:self didUpdate:v10];
  }

  self->_cachedLatestInputPoint.var0.point.x = now->var7;
}

- (void)showLabel:(double)label atLocation:(double)location
{
  v7 = a2;
  if (self)
  {
    v9 = v7;
    v8 = [MEMORY[0x1E69DD250] pk_hoverAttributedStringFromString:v7];
    if (v8)
    {
      [(PKHoverController *)self showAttributedLabel:v8 atLocation:label, location];
    }

    else
    {
      [self hideLabel];
    }

    v7 = v9;
  }
}

- (void)showAttributedLabel:(double)label atLocation:(double)location
{
  v14 = a2;
  if (self)
  {
    [self hideLabel];
    pk_hoverLabelFont = [MEMORY[0x1E69DD250] pk_hoverLabelFont];
    WeakRetained = objc_loadWeakRetained((self + 24));
    traitCollection = [WeakRetained traitCollection];
    v11 = [(PKFloatingLabelView *)label floatingLabelViewWithAttributedString:location font:PKFloatingLabelView location:v14 traitCollection:pk_hoverLabelFont, traitCollection];
    v12 = *(self + 256);
    *(self + 256) = v11;

    v13 = objc_loadWeakRetained((self + 24));
    [v13 addSubview:*(self + 256)];

    objc_storeStrong((self + 448), a2);
  }
}

- (void)hideLabel
{
  maximumTimeIntervalBetweenEvents = self->_maximumTimeIntervalBetweenEvents;
  self->_maximumTimeIntervalBetweenEvents = 0.0;

  [self->_currentInputPointCounter removeFromSuperview];
  currentInputPointCounter = self->_currentInputPointCounter;
  self->_currentInputPointCounter = 0;
}

- (double)distanceFromEdgeOfScreen:(void *)screen view:
{
  screenCopy = screen;
  v6 = screenCopy;
  if (self)
  {
    v7 = *a2;
    v8 = a2[1];
    window = [screenCopy window];
    [v6 convertPoint:window toView:{v7, v8}];
    v11 = v10;
    v13 = v12;

    window2 = [v6 window];
    v33 = v13;
    [window2 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v34.origin.x = v16;
    v34.origin.y = v18;
    v34.size.width = v20;
    v34.size.height = v22;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = v16;
    v35.origin.y = v18;
    v35.size.width = v20;
    v35.size.height = v22;
    MaxX = CGRectGetMaxX(v35);
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = v16;
    v37.origin.y = v18;
    v37.size.width = v20;
    v37.size.height = v22;
    MaxY = CGRectGetMaxY(v37);
    v27 = fmax(v11 - MinX, 0.0);
    v28 = fmax(MaxX - v11, 0.0);
    v29 = fmax(v33 - MinY, 0.0);
    v30 = fmax(MaxY - v33, 0.0);
    if (v27 >= v28)
    {
      v27 = v28;
    }

    if (v27 >= v29)
    {
      v27 = v29;
    }

    if (v27 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v27;
    }
  }

  else
  {
    v31 = 0.0;
  }

  return v31;
}

void __40__PKHoverController_pointsPerMillimeter__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v5 = v0;
    [v0 floatValue];
    v2 = v1;
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 nativeScale];
    *&[PKHoverController pointsPerMillimeter]::nativePointsPerMillimeter = v2 / 25.4 / v4;

    v0 = v5;
  }
}

- (double)currentMovementSpeed
{
  end = self->_inputPoints.__end_;
  v3 = self->_inputPoints.__cap_ - end;
  v4 = 0xF0F0F0F0F0F0F0F1 * (v3 >> 3);
  result = 0.0;
  if (v4 >= 0xA)
  {
    v6 = v4 - 1;
    if (v3 >= 137)
    {
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v8 = *(end + 8);
      v9 = (end + 136);
      do
      {
        v10 = v8;
        v8 = v9[8];
        v11 = v10 - v8;
        if (v11 > 0.0)
        {
          result = result + sqrt((*(v9 - 16) - v9[1]) * (*(v9 - 16) - v9[1]) + (*(v9 - 17) - *v9) * (*(v9 - 17) - *v9)) / v11;
        }

        v9 += 17;
        --v7;
      }

      while (v7);
    }

    return result / v6;
  }

  return result;
}

- (BOOL)isInEdgeOfScreen:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    if ([PKHoverController pointsPerMillimeter]::onceToken != -1)
    {
      dispatch_once(&[PKHoverController pointsPerMillimeter]::onceToken, &__block_literal_global_78);
    }

    v4 = *&[PKHoverController pointsPerMillimeter]::nativePointsPerMillimeter;
    v5 = *(a2 + 112);
    v11[6] = *(a2 + 96);
    v11[7] = v5;
    v12 = *(a2 + 128);
    v6 = *(a2 + 48);
    v11[2] = *(a2 + 32);
    v11[3] = v6;
    v7 = *(a2 + 80);
    v11[4] = *(a2 + 64);
    v11[5] = v7;
    v8 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v8;
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    v10 = [(PKHoverController *)v3 distanceFromEdgeOfScreen:v11 view:WeakRetained];

    return v10 < v4 * 5.0;
  }

  return result;
}

- (BOOL)isInExteriorOfScreen:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    if ([PKHoverController pointsPerMillimeter]::onceToken != -1)
    {
      dispatch_once(&[PKHoverController pointsPerMillimeter]::onceToken, &__block_literal_global_78);
    }

    v4 = *&[PKHoverController pointsPerMillimeter]::nativePointsPerMillimeter;
    v5 = *(a2 + 112);
    v11[6] = *(a2 + 96);
    v11[7] = v5;
    v12 = *(a2 + 128);
    v6 = *(a2 + 48);
    v11[2] = *(a2 + 32);
    v11[3] = v6;
    v7 = *(a2 + 80);
    v11[4] = *(a2 + 64);
    v11[5] = v7;
    v8 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v8;
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    v10 = [(PKHoverController *)v3 distanceFromEdgeOfScreen:v11 view:WeakRetained];

    return v10 < v4 * 20.0;
  }

  return result;
}

- (void)alphaFactorFromMovementSpeed:(uint64_t)speed
{
  if (speed)
  {
    v1 = +[PKHoverSettings sharedSettings];
    [v1 toolShadowMovementSpeedHideThreshold];
  }
}

- (void)logInputPoint:(id *)point
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_inputPoints.__begin_);
  x = point->var0.var0.x;
  y = point->var0.var0.y;
  v7 = WeakRetained;
  window = [v7 window];
  [v7 convertPoint:window toView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = os_log_create("com.apple.pencilkit", "Pencil Hover");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = point->var3 * 57.2957795;
    v15 = point->var2 * 57.2957795;
    v16 = point->var13 * 57.2957795;
    var6 = point->var6;
    var7 = point->var7;
    v19 = 134219520;
    v20 = v10;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = var6;
    v25 = 2048;
    v26 = v14;
    v27 = 2048;
    v28 = v15;
    v29 = 2048;
    v30 = v16;
    v31 = 2048;
    v32 = var7;
    _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Hover location in window: %.1f, %.1f, elevation: %.1f, altitude: %.1f, azimuth: %.1f, roll: %.1f, timestamp: %.4f", &v19, 0x48u);
  }
}

- (double)inputPointFilter:(id)filter distanceToEdge:(id *)edge
{
  v5 = *&edge->var13;
  v12[6] = *&edge->var11;
  v12[7] = v5;
  var15 = edge->var15;
  v6 = *&edge->var5;
  v12[2] = *&edge->var3;
  v12[3] = v6;
  v7 = *&edge->var9;
  v12[4] = *&edge->var7;
  v12[5] = v7;
  v8 = *&edge->var1;
  v12[0] = edge->var0;
  v12[1] = v8;
  WeakRetained = objc_loadWeakRetained(&self->_inputPoints.__begin_);
  v10 = [(PKHoverController *)self distanceFromEdgeOfScreen:v12 view:WeakRetained];

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy type] == 2)
  {
    [(PKHoverController *)self didReceiveNormalTouch:touchCopy];
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end