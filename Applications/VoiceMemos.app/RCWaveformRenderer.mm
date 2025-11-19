@interface RCWaveformRenderer
- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange;
- (BOOL)_needsWaveformRendering;
- (CGRect)visibleRect;
- (RCWaveformRenderer)initWithNibName:(id)a3 bundle:(id)a4;
- (RCWaveformRendererDelegate)rendererDelegate;
- (double)_duration;
- (double)_pointOffsetForTime:(double)a3;
- (double)_timeForPointOffset:(double)a3 withVisibleTimeRange:(id)a4;
- (double)maximumDecibelDisplayRange;
- (double)pointsPerSecondWithVisibleTimeRange:(id)a3;
- (double)verticalWaveformPadding;
- (double)waveformHorizontalSpacing;
- (double)waveformWaveWidth;
- (id).cxx_construct;
- (id)rasterizeTimeRange:(id)a3 imageSize:(CGSize)a4 afterScreenUpdates:(BOOL)a5;
- (void)_clearRenderingState;
- (void)_draw:(double)a3;
- (void)_performOrDispatchToMainThread:(id)a3;
- (void)_renderTimeRangeOfSegments:(id)a3 withDuration:(double)a4 needsWaveformCalculation:(BOOL)a5;
- (void)_renderVisibleTimeRangeWithDuration:(double)a3;
- (void)_setNeedsRendering;
- (void)_setNeedsVisibleTimeRangeRendering;
- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange;
- (void)_startRendering;
- (void)_startUpdating;
- (void)_stopRendering;
- (void)_updateFitToWidthUnitsPerSecond;
- (void)dealloc;
- (void)displayLinkDidUpdate:(id)a3 withTimeController:(id)a4;
- (void)drawWaveform;
- (void)loadView;
- (void)setActiveDisplayLinkRequired:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setIsLiveWaveform:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setVisibleTimeRange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)waveformDataSource:(id)a3 didLoadWaveformSegment:(id)a4;
- (void)waveformDataSourceDidFinishLoading:(id)a3;
- (void)waveformDataSourceRequiresUpdate:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation RCWaveformRenderer

- (RCWaveformRenderer)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = RCWaveformRenderer;
  v4 = [(RCWaveformRenderer *)&v11 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_spacingWidth = 0.0;
    v4->_dataPointWidth = 2.0;
    RCTimeRangeMake();
    v5->_visibleTimeRange.beginTime = v6;
    v5->_visibleTimeRange.endTime = v7;
    v5->_cachedContentWidth = 0.0;
    v5->_renderedTimeRange = RCTimeRangeZero;
    v5->_renderingQueueIsBusy = 0;
    v8 = dispatch_queue_create("com.apple.waveformRenderSegmentProcessing", 0);
    renderingQueue = v5->_renderingQueue;
    v5->_renderingQueue = v8;

    v5->_lastVisibleTimeRange = v5->_visibleTimeRange;
    v5->_visibleTimeRangeVelocity = 0.0;
    v5->_isCompactView = 1;
    v5->_selected = 1;
  }

  return v5;
}

- (void)dealloc
{
  [(RCWaveformRenderer *)self _stopRendering];
  [(RCWaveformDataSource *)self->_dataSource removeObserver:self];
  v3.receiver = self;
  v3.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [[RCView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  [(RCWaveformRenderer *)self setView:?];
  [(RCView *)v3 setRenderer:self];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v4 viewDidLoad];
  v3 = [[RCWaveformColorCalculator alloc] initWithDataProvider:self];
  [(RCWaveformRenderer *)self setWaveformColorCalculator:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v4 viewDidAppear:a3];
  if (self->_dataSource)
  {
    [(RCWaveformRenderer *)self _startUpdating];
    [(RCWaveformRenderer *)self _startRendering];
    if (![(RCWaveformRenderer *)self displayMode])
    {
      self->_fitToWidthWaveformNeedsRefresh = 1;
      [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];
      [(RCWaveformRenderer *)self _setNeedsRendering];
      [(RCWaveformRenderer *)self _duration];
      [(RCWaveformRenderer *)self _draw:?];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  if (self->_dataSource)
  {
    [(RCWaveformRenderer *)self _stopUpdating];
    [(RCWaveformRenderer *)self _stopRendering];
  }

  v4.receiver = self;
  v4.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v4 viewWillDisappear:0];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v5 willMoveToParentViewController:v4];
  if (!v4)
  {
    [(RCWaveformRenderer *)self _stopUpdating];
    [(RCWaveformRenderer *)self _stopRendering];
  }
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v2 viewDidLayoutSubviews];
}

- (void)waveformDataSourceRequiresUpdate:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100062F00;
  v3[3] = &unk_10028AE58;
  v3[4] = self;
  [(RCWaveformRenderer *)self _performOrDispatchToMainThread:v3];
}

- (void)_updateFitToWidthUnitsPerSecond
{
  if ([(RCWaveformRenderer *)self displayMode]== 1)
  {
    [(RCWaveformRenderer *)self _pointsPerSecond];
    v4 = v3;
    v5 = [(RCWaveformDataSource *)self->_dataSource waveformGenerator];
    [v5 setOverviewUnitsPerSecond:v4];
  }
}

- (void)setDataSource:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000630A0;
  v4[3] = &unk_10028A9D8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(RCWaveformRenderer *)v5 _performOrDispatchToMainThread:v4];
}

- (void)setIsLiveWaveform:(BOOL)a3
{
  if (self->_isLiveWaveform != a3)
  {
    self->_isLiveWaveform = a3;
    [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];

    [(RCWaveformRenderer *)self _setNeedsRendering];
  }
}

- (void)setVisibleTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  p_visibleTimeRange = &self->_visibleTimeRange;
  if ((RCTimeRangeEqualToTimeRange() & 1) == 0)
  {
    if (![(RCWaveformRenderer *)self displayMode]|| (RCTimeRangeDelta(), v8 = v7, RCTimeRangeDelta(), vabdd_f64(v8, v9) > 0.00000011920929))
    {
      self->_calcBlockShouldRefreshAllSlices = 1;
    }

    self->_needsVisibleRangeRendering = 1;
  }

  p_visibleTimeRange->beginTime = var0;
  p_visibleTimeRange->endTime = var1;
  if (self->_dataSource)
  {
    [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];
    [(RCWaveformRenderer *)self _setNeedsRendering];
    [(RCWaveformRenderer *)self _duration];

    [(RCWaveformRenderer *)self _draw:?];
  }
}

- (double)_duration
{
  [(RCWaveformDataSource *)self->_dataSource duration];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);
  [WeakRetained duration];
  v7 = v6;

  if (v4 >= v7)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

- (double)pointsPerSecondWithVisibleTimeRange:(id)a3
{
  v3 = 1.0;
  if (a3.var1 - a3.var0 >= 4.4408921e-16)
  {
    v5 = [(RCWaveformRenderer *)self view];
    [v5 bounds];
    v7 = v6;

    if (v7 >= 1.0)
    {
      v8 = [(RCWaveformRenderer *)self view];
      [v8 bounds];
      v10 = v9;
      v11 = [(RCWaveformRenderer *)self rendererDelegate];
      [v11 desiredTimeDeltaForVisibleTimeRange];
      v3 = v10 / v12;
    }
  }

  return v3;
}

- (CGRect)visibleRect
{
  p_visibleTimeRange = &self->_visibleTimeRange;
  [(RCWaveformRenderer *)self horizontalOffsetAtTime:self->_visibleTimeRange.beginTime];
  v5 = v4;
  [(RCWaveformRenderer *)self horizontalOffsetAtTime:p_visibleTimeRange->endTime];
  v7 = v6;
  v8 = [(RCWaveformRenderer *)self view];
  [v8 bounds];
  v10 = v9;

  v11 = 0.0;
  v12 = rint(v5);
  v13 = rint(v7) - v12;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (id)rasterizeTimeRange:(id)a3 imageSize:(CGSize)a4 afterScreenUpdates:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformDataSource *)self->_dataSource duration];
  if (v11 >= var1)
  {
    v12 = var1;
  }

  else
  {
    v12 = v11;
  }

  v13 = [(RCWaveformRenderer *)self view];
  v14 = [v13 window];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v16 = +[UIScreen mainScreen];
    [v16 bounds];
    v18 = v17;
    v20 = v19;

    v21 = [UIWindow alloc];
    if (v18 >= v20)
    {
      v22 = v18;
    }

    else
    {
      v22 = v20;
    }

    v15 = [v21 initWithFrame:{v22 + v22, v22 + v22, width, height}];
    v23 = [(RCWaveformRenderer *)self view];
    [v15 addSubview:v23];

    [v15 setHidden:0];
  }

  v24 = [(RCWaveformRenderer *)self view];
  [v24 frame];
  v52 = v26;
  v53 = v25;
  v28 = v27;
  v30 = v29;

  [(RCWaveformRenderer *)self visibleTimeRange];
  v50 = v32;
  v51 = v31;
  y = CGPointZero.y;
  v34 = [(RCWaveformRenderer *)self view];
  [v34 setFrame:{CGPointZero.x, y, width, height}];

  [(RCWaveformRenderer *)self setVisibleTimeRange:fmax(var0, 0.0), v12];
  v35 = +[NSRunLoop mainRunLoop];
  [v35 rc_runUntilNextDisplayLinkEventWithTimeout:0.5];

  v36 = [(RCWaveformRenderer *)self view];
  [v36 bounds];
  v38 = v37;
  v40 = v39;
  v41 = +[UIScreen mainScreen];
  [v41 scale];
  v43 = v42;
  v55.width = v38;
  v55.height = v40;
  UIGraphicsBeginImageContextWithOptions(v55, 0, v43);

  v44 = [(RCWaveformRenderer *)self view];
  v45 = [(RCWaveformRenderer *)self view];
  [v45 bounds];
  [v44 drawViewHierarchyInRect:v5 afterScreenUpdates:?];

  v46 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v47 = [(RCWaveformRenderer *)self view];
  [v47 setFrame:{v53, v52, v28, v30}];

  [(RCWaveformRenderer *)self setVisibleTimeRange:v51, v50];
  if (v15)
  {
    v48 = [(RCWaveformRenderer *)self view];
    [v48 removeFromSuperview];

    [v15 setHidden:1];
  }

  return v46;
}

- (void)drawWaveform
{
  self->_needsVisibleRangeRendering = 1;
  [(RCWaveformRenderer *)self _duration];

  [(RCWaveformRenderer *)self _draw:?];
}

- (void)setPaused:(BOOL)a3
{
  self->_paused = a3;
  if (a3)
  {
    [(RCWaveformRenderer *)self _stopUpdating];

    [(RCWaveformRenderer *)self _stopRendering];
  }

  else
  {
    [(RCWaveformRenderer *)self _startUpdating];

    [(RCWaveformRenderer *)self _startRendering];
  }
}

- (void)waveformDataSource:(id)a3 didLoadWaveformSegment:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100063A5C;
  v5[3] = &unk_10028A9D8;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(RCWaveformRenderer *)v6 _performOrDispatchToMainThread:v5];
}

- (void)waveformDataSourceDidFinishLoading:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100063BB0;
  v3[3] = &unk_10028AE58;
  v3[4] = self;
  [(RCWaveformRenderer *)self _performOrDispatchToMainThread:v3];
}

- (void)_startUpdating
{
  if (![(RCWaveformRenderer *)self isPaused])
  {
    [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];
    dataSource = self->_dataSource;

    [(RCWaveformDataSource *)dataSource addObserver:self];
  }
}

- (void)_setNeedsRendering
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100063CE8;
  v2[3] = &unk_10028AE58;
  v2[4] = self;
  [(RCWaveformRenderer *)self _performOrDispatchToMainThread:v2];
}

- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange
{
  [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];
  if (![(RCWaveformRenderer *)self displayMode])
  {
    if ([(RCWaveformRenderer *)self isLiveWaveform])
    {
      self->_fitToWidthWaveformNeedsRefresh = 1;
    }
  }
}

- (void)_setNeedsVisibleTimeRangeRendering
{
  if (!self->_needsVisibleRangeRendering && [(RCWaveformRenderer *)self _needsWaveformRendering])
  {
    self->_needsVisibleRangeRendering = 1;

    [(RCWaveformRenderer *)self _startRendering];
  }
}

- (void)_startRendering
{
  if (!self->displayLinkConnected)
  {
    v3 = +[RCDisplayLinkManager sharedManager];
    [v3 addDisplayLinkObserver:self];

    self->displayLinkConnected = 1;
  }
}

- (void)_stopRendering
{
  if (self->displayLinkConnected)
  {
    v3 = +[RCDisplayLinkManager sharedManager];
    [v3 removeDisplayLinkObserver:self];

    self->displayLinkConnected = 0;
  }
}

- (void)setActiveDisplayLinkRequired:(BOOL)a3
{
  if (self->_activeDisplayLinkRequired != a3)
  {
    self->_activeDisplayLinkRequired = a3;
    if (a3)
    {
      [(RCWaveformRenderer *)self _startRendering];
    }

    else
    {
      [(RCWaveformRenderer *)self _stopRendering];
    }
  }
}

- (void)displayLinkDidUpdate:(id)a3 withTimeController:(id)a4
{
  v5 = [(RCWaveformRenderer *)self view:a3];
  [v5 frame];
  v7 = v6;
  v9 = v8;

  v10 = [(RCWaveformRenderer *)self view];
  v11 = [v10 window];

  if (v11 && v7 != 0.0 && v9 != 0.0)
  {
    if ([(RCWaveformRenderer *)self displayMode]== 1)
    {
      self->_visibleTimeRangeVelocity = (self->_visibleTimeRange.beginTime + self->_visibleTimeRange.endTime) * 0.5 - (self->_lastVisibleTimeRange.beginTime + self->_lastVisibleTimeRange.endTime) * 0.5;
    }

    self->_lastVisibleTimeRange = self->_visibleTimeRange;
    [(RCWaveformRenderer *)self _duration];

    [(RCWaveformRenderer *)self _draw:?];
  }
}

- (void)_draw:(double)a3
{
  if (a3 > 0.0)
  {
    [(RCWaveformRenderer *)self _renderVisibleTimeRangeWithDuration:?];
  }
}

- (void)_clearRenderingState
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100064090;
  v4[3] = &unk_10028AE58;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  dispatch_sync(self->_renderingQueue, v3);
}

- (void)_renderTimeRangeOfSegments:(id)a3 withDuration:(double)a4 needsWaveformCalculation:(BOOL)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformRenderer *)self waveformWaveWidth];
  v8 = v7;
  [(RCWaveformRenderer *)self waveformHorizontalSpacing];
  v10 = v9;
  [(RCWaveformRenderer *)self maximumDecibelDisplayRange];
  RCNormalizedDecibelValue();
  v12 = v11;
  v13 = [(RCWaveformRenderer *)self view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;

  RCTimeRangeDeltaWithUIPrecision();
  if (v18 <= 0.0)
  {
    return;
  }

  v19 = v18;
  if (v15 == 100.0 && v17 == 100.0)
  {
    return;
  }

  if (self->_calcBlockShouldRefreshAllSlices)
  {
    v20 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
    v21 = [v20 count] == 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(RCWaveformRenderer *)self view];
  [v22 frame];
  v24 = v23;

  [(RCWaveformRenderer *)self verticalWaveformPadding];
  v26 = v25;
  v93 = v15 / v10 / v19;
  v27 = 1.0 / v93;
  [(RCWaveformRenderer *)self _duration];
  v92 = v28;
  if ([(RCWaveformRenderer *)self displayMode])
  {
    v29.f64[0] = var0;
    v29.f64[1] = var1 + v27;
    v30 = vdupq_lane_s64(v92, 0);
    v31 = vbslq_s8(vcgtq_f64(v30, v29), v29, v30);
    v90 = vbicq_s8(v31, vcltzq_f64(v31));
    [(RCWaveformDataSource *)self->_dataSource setDurationPerWaveformSlice:v27];
    v32 = v90;
  }

  else
  {
    v33.f64[0] = var0;
    v33.f64[1] = var1;
    v34 = vdupq_lane_s64(*&a4, 0);
    v35 = vbslq_s8(vcgtq_f64(v34, v33), v33, v34);
    v32 = vbicq_s8(v35, vcltzq_f64(v35));
  }

  v36 = vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v32, v93)));
  v37 = v36.i64[0];
  v38 = v36.i64[1] - v36.i64[0];
  if (v36.i64[1] != v36.i64[0])
  {
    isLiveWaveform = self->_isLiveWaveform;
    calcBlockShouldRefreshAllSlices = self->_calcBlockShouldRefreshAllSlices;
    visibleTimeRange = self->_visibleTimeRange;
    self->_calcBlockShouldRefreshAllSlices = 0;
    v40 = self->_isLiveWaveform;
    recordDidSwitch = self->_rendererState.recordDidSwitch;
    v42 = v40 != recordDidSwitch;
    v88 = v26;
    v89 = v24;
    if (v40 == recordDidSwitch)
    {
      if (!self->_isLiveWaveform)
      {
        goto LABEL_16;
      }
    }

    else
    {
      self->_rendererState.recordDidSwitch = v40;
      if (!self->_isLiveWaveform)
      {
LABEL_16:
        [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
        v44 = v43;
        v46 = v45;
        goto LABEL_22;
      }
    }

    v47 = CACurrentMediaTime();
    if (v40 == recordDidSwitch && v47 - self->_rendererState.lastRenderTime < v27 && !self->_fitToWidthWaveformNeedsRefresh)
    {
      if (![(RCWaveformRenderer *)self displayMode]&& ![(RCWaveformRenderer *)self renderReadyForDraw])
      {
        return;
      }

      v85 = [(RCWaveformRenderer *)self displayMode];
      [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
      v44 = v86;
      v46 = v87;
      v42 = 0;
      if (v85 == 1)
      {
        v50 = "v24@0:8@UINavigationItem16" + 27;
        goto LABEL_23;
      }
    }

    else
    {
      self->_rendererState.lastRenderTime = v47;
      self->_fitToWidthWaveformNeedsRefresh = 0;
      [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
      v44 = v48;
      v46 = v49;
      v42 = 1;
    }

LABEL_22:
    v50 = "6";
    if (a5)
    {
LABEL_24:
      v114[0] = _NSConcreteStackBlock;
      v114[1] = *(v50 + 2);
      v114[2] = sub_100064C64;
      v114[3] = &unk_10028B1B0;
      v114[4] = self;
      *&v114[5] = var0;
      *&v114[6] = var1;
      v114[7] = v37;
      v114[8] = v38;
      v116 = calcBlockShouldRefreshAllSlices;
      *&v114[9] = v27;
      *&v114[10] = 2.0 / v17 * 0.5;
      v117 = isLiveWaveform;
      v118 = v42;
      *&v114[11] = v44;
      *&v114[12] = v46;
      *&v114[13] = v12;
      *&v114[14] = 1.0 / v12;
      v119 = v21;
      v115 = visibleTimeRange;
      v51 = objc_retainBlock(v114);
      if (self->_syncRenderOnMainThread || (WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate), v53 = [WeakRetained isZooming], WeakRetained, v53))
      {
        [(RCWaveformRenderer *)self setNextRenderBlock:0];
        dispatch_sync(self->_renderingQueue, v51);
      }

      else if ([(RCWaveformRenderer *)self renderingQueueIsBusy])
      {
        [(RCWaveformRenderer *)self setNextRenderBlock:v51];
      }

      else
      {
        [(RCWaveformRenderer *)self setNextRenderBlock:0];
        dispatch_async(self->_renderingQueue, v51);
      }

LABEL_28:
      v54 = [(RCWaveformRenderer *)self view];
      v55 = [v54 waveformLayer];

      v56 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
      if ([(RCWaveformRenderer *)self displayMode]== 1)
      {
        v57 = 1;
        if (!v55)
        {
          goto LABEL_57;
        }
      }

      else if ([(RCWaveformRenderer *)self displayMode])
      {
        v57 = 0;
        if (!v55)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v57 = [(RCWaveformRenderer *)self renderReadyForDraw];
        if (!v55)
        {
LABEL_57:

          return;
        }
      }

      if ((([v56 count] != 0) & v57) == 1)
      {
        v58 = [(RCWaveformRenderer *)self waveformColorCalculator];
        v59 = [v58 resolvedColorWithLiveWaveform:-[RCWaveformRenderer isLiveWaveform](self selected:"isLiveWaveform") muted:-[RCWaveformRenderer isSelected](self trimMode:{"isSelected"), -[RCWaveformRenderer isMuted](self, "isMuted"), -[RCWaveformRenderer isTrimMode](self, "isTrimMode")}];
        [RCVisualWaveformAmpSlice setResolvedHighlightColor:v59];

        v60 = [(RCWaveformRenderer *)self waveformColorCalculator];
        v61 = [v60 resolvedColorWithLiveWaveform:0 selected:-[RCWaveformRenderer isSelected](self muted:"isSelected") trimMode:{-[RCWaveformRenderer isMuted](self, "isMuted"), 0}];
        [RCVisualWaveformAmpSlice setResolvedMainColor:v61];

        v62 = objc_loadWeakRetained(&self->_rendererDelegate);
        [v62 selectedTimeRange];
        v64 = v63;
        v66 = v65;

        waveformAmpSlicesForRenderingTimeRange = self->_waveformAmpSlicesForRenderingTimeRange;
        if (self->_isLiveWaveform)
        {
          v67 = objc_loadWeakRetained(&self->_rendererDelegate);
          [v67 currentTime];
          v69 = v68;
          v70 = vcvtmd_u64_f64(v44 / v27);

          if (v46 >= v69)
          {
            v71 = v46;
          }

          else
          {
            v71 = v69;
          }

          v72 = ceil(v71 / v27);
        }

        else
        {
          v72 = ceil(*&v92 / v27);
          v73 = vcvtpd_u64_f64(v64 / v27);
          v74 = floor(v66 / v27);
          if (self->_trimMode)
          {
            v70 = v73;
          }

          else
          {
            v70 = 0;
          }

          if (self->_trimMode)
          {
            v72 = v74;
          }
        }

        v109 = 0;
        v110 = &v109;
        v111 = 0x2020000000;
        waveformAmpSlicesForRenderingRecordStateChanged = self->_waveformAmpSlicesForRenderingRecordStateChanged;
        v99[0] = _NSConcreteStackBlock;
        v99[1] = *(v50 + 2);
        v99[2] = sub_1000653C8;
        v99[3] = &unk_10028B1D8;
        v100 = waveformAmpSlicesForRenderingTimeRange;
        v101 = v15;
        v102 = v10;
        v103 = v89 * 0.5;
        v104 = v89 * 0.5 - v88;
        v99[4] = self;
        v99[5] = &v109;
        v105 = v44;
        v106 = v46;
        v107 = v70;
        v108 = v72;
        v75 = objc_retainBlock(v99);
        +[CATransaction begin];
        [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
        if (![(RCWaveformRenderer *)self displayMode])
        {
          [v55 transform];
          if (!CATransform3DIsIdentity(&v98))
          {
            v76 = *&CATransform3DIdentity.m33;
            *&v98.m31 = *&CATransform3DIdentity.m31;
            *&v98.m33 = v76;
            v77 = *&CATransform3DIdentity.m43;
            *&v98.m41 = *&CATransform3DIdentity.m41;
            *&v98.m43 = v77;
            v78 = *&CATransform3DIdentity.m13;
            *&v98.m11 = *&CATransform3DIdentity.m11;
            *&v98.m13 = v78;
            v79 = *&CATransform3DIdentity.m23;
            *&v98.m21 = *&CATransform3DIdentity.m21;
            *&v98.m23 = v79;
            [v55 setTransform:&v98];
            v80 = [(RCWaveformRenderer *)self view];
            [v80 bounds];
            [v55 setFrame:?];
          }
        }

        (v75[2])(v75, v56, v55, v8);
        +[CATransaction commit];
        self->_renderedTimeRange = waveformAmpSlicesForRenderingTimeRange;
        if (*(v110 + 24) == 1)
        {
          self->_waveformAmpSlicesForRenderingRecordStateChanged = 0;
        }

        self->_calcBlockShouldRefreshAllSlices = 0;
        [(RCWaveformRenderer *)self setRenderReadyForDraw:0];
        [(RCWaveformRenderer *)self setWaitForFinalCalc:0];
        [(RCWaveformRenderer *)self _nonCachedContentWidthWithDuration:a4];
        if (self->_cachedContentWidth != v81)
        {
          self->_cachedContentWidth = v81;
          v82 = objc_loadWeakRetained(&self->_rendererDelegate);
          v83 = objc_opt_respondsToSelector();

          if (v83)
          {
            v84 = objc_loadWeakRetained(&self->_rendererDelegate);
            [v84 waveformRenderer:self contentWidthDidChange:self->_cachedContentWidth];
          }
        }

        _Block_object_dispose(&v109, 8);
      }

      goto LABEL_57;
    }

LABEL_23:
    if (![(RCWaveformRenderer *)self failedFirstRenderCalculationAttempt])
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v39 = OSLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B78D4(v39);
  }
}

- (double)waveformWaveWidth
{
  [(RCWaveformRenderer *)self doesNotRecognizeSelector:a2];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 waveformWaveWidth];
  v4 = v3;

  return v4;
}

- (double)waveformHorizontalSpacing
{
  [(RCWaveformRenderer *)self doesNotRecognizeSelector:a2];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 waveformHorizontalSpacing];
  v4 = v3;

  return v4;
}

- (double)maximumDecibelDisplayRange
{
  [(RCWaveformRenderer *)self doesNotRecognizeSelector:a2];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 maximumDecibelDisplayRange];
  v4 = v3;

  return v4;
}

- (double)verticalWaveformPadding
{
  [(RCWaveformRenderer *)self doesNotRecognizeSelector:a2];
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 waveformWaveVerticalPadding];
  v4 = v3;

  return v4;
}

- (BOOL)_needsWaveformRendering
{
  if (self->_calcBlockShouldRefreshAllSlices)
  {
    return 1;
  }

  waveformAmpSlicesForRenderingRecordStateChanged = self->_waveformAmpSlicesForRenderingRecordStateChanged;
  v4 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
  v5 = [v4 count];
  v6 = v5 == 0;
  if (v5 && !waveformAmpSlicesForRenderingRecordStateChanged)
  {
    v6 = RCTimeRangeEqualToTimeRange();
  }

  v2 = v6 ^ 1;

  return v2;
}

- (void)_renderVisibleTimeRangeWithDuration:(double)a3
{
  if ([(RCWaveformRenderer *)self _needsWaveformRendering]|| self->_needsVisibleRangeRendering)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v5 = ![(RCWaveformRenderer *)self renderReadyForDraw];
  }

  if (self->_dataSource && ((self->_paused | v5) & 1) == 0)
  {
    v7 = [(RCWaveformRenderer *)self view];
    [v7 bounds];
    v9 = v8;

    if (v9 <= 1.0)
    {
      dataSource = self->_dataSource;

      [(RCWaveformDataSource *)dataSource markWaveformPotentiallyCorrupted];
    }

    else
    {
      [(RCWaveformRenderer *)self visibleTimeRange];
      v11 = v10;
      v13 = v12;
      if ([(RCWaveformRenderer *)self displayMode]== 1)
      {
        [(RCWaveformRenderer *)self _updateFitToWidthUnitsPerSecond];
        visibleTimeRangeVelocity = self->_visibleTimeRangeVelocity;
        v15 = fabs(visibleTimeRangeVelocity);
        if (v15 > 10.0)
        {
          v15 = 10.0;
        }

        if (visibleTimeRangeVelocity <= 0.0)
        {
          if (visibleTimeRangeVelocity < 0.0)
          {
            v11 = v11 - v15;
          }
        }

        else
        {
          v13 = v13 + v15;
        }
      }

      [(RCWaveformRenderer *)self _renderTimeRangeOfSegments:v6 withDuration:v11 needsWaveformCalculation:v13, a3];
      self->_needsVisibleRangeRendering = 0;
    }
  }
}

- (double)_pointOffsetForTime:(double)a3
{
  v5 = [(RCWaveformRenderer *)self view];
  [v5 bounds];
  v7 = v6;

  v8 = [(RCWaveformRenderer *)self rendererDelegate];
  [v8 desiredTimeDeltaForVisibleTimeRange];
  v10 = v9;

  result = 0.0;
  if (v10 > 0.0)
  {
    return v7 / v10 * a3;
  }

  return result;
}

- (double)_timeForPointOffset:(double)a3 withVisibleTimeRange:(id)a4
{
  [(RCWaveformRenderer *)self pointsPerSecondWithVisibleTimeRange:a4.var0, a4.var1];
  v6 = a3 / v5;
  v7 = v5 == 0.0;
  result = 0.0;
  if (!v7)
  {
    return v6;
  }

  return result;
}

- (void)_performOrDispatchToMainThread:(id)a3
{
  block = a3;
  if (+[NSThread isMainThread])
  {
    block[2](block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (RCWaveformRendererDelegate)rendererDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)visibleTimeRange
{
  beginTime = self->_visibleTimeRange.beginTime;
  endTime = self->_visibleTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)highlightTimeRange
{
  beginTime = self->_highlightTimeRange.beginTime;
  endTime = self->_highlightTimeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

- (id).cxx_construct
{
  *(self + 120) = 0;
  *(self + 16) = 0;
  return self;
}

@end