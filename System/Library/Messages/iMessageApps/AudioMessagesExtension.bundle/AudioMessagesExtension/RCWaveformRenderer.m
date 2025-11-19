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
- (double)pointsPerSecondWithVisibleTimeRange:(id)a3;
- (id).cxx_construct;
- (id)rasterizeTimeRange:(id)a3 imageSize:(CGSize)a4;
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
- (void)_updateOverviewUnitsPerSecond;
- (void)dealloc;
- (void)displayLinkDidUpdate:(id)a3 withTimeController:(id)a4;
- (void)loadView;
- (void)setActiveDisplayLinkRequired:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setIsRecordWaveform:(BOOL)a3;
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
  v10.receiver = self;
  v10.super_class = RCWaveformRenderer;
  v4 = [(RCWaveformRenderer *)&v10 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_spacingWidth = 0.0;
    v4->_dataPointWidth = 2.0;
    v4->_visibleTimeRange.beginTime = RCTimeRangeMake(0.0, 15.0);
    v5->_visibleTimeRange.endTime = v6;
    v5->_cachedContentWidth = 0.0;
    v5->_renderedTimeRange = RCTimeRangeZero;
    v5->_renderingQueueIsBusy = 0;
    v7 = dispatch_queue_create("com.apple.waveformRenderSegmentProcessing", 0);
    renderingQueue = v5->_renderingQueue;
    v5->_renderingQueue = v7;

    v5->_lastVisibleTimeRange = v5->_visibleTimeRange;
    v5->_visibleTimeRangeVelocity = 0.0;
    v5->_isCompactView = 1;
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
  v2.receiver = self;
  v2.super_class = RCWaveformRenderer;
  [(RCWaveformRenderer *)&v2 viewDidLoad];
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
    if (self->_isOverview)
    {
      self->_overviewRecordingWaveformRefresh = 1;
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
  v3[2] = sub_8E6C;
  v3[3] = &unk_6D050;
  v3[4] = self;
  [(RCWaveformRenderer *)self _performOrDispatchToMainThread:v3];
}

- (void)_updateOverviewUnitsPerSecond
{
  if (!self->_isOverview)
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
  v4[2] = sub_900C;
  v4[3] = &unk_6D078;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(RCWaveformRenderer *)v5 _performOrDispatchToMainThread:v4];
}

- (void)setIsRecordWaveform:(BOOL)a3
{
  if (self->_isRecordWaveform != a3)
  {
    self->_isRecordWaveform = a3;
    [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];

    [(RCWaveformRenderer *)self _setNeedsRendering];
  }
}

- (void)setVisibleTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  p_visibleTimeRange = &self->_visibleTimeRange;
  if (!RCTimeRangeEqualToTimeRange(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime, a3.var0, a3.var1))
  {
    if (self->_isOverview || (v7 = RCTimeRangeDelta(p_visibleTimeRange->beginTime, p_visibleTimeRange->endTime), vabdd_f64(v7, RCTimeRangeDelta(var0, var1)) > 0.00000011920929))
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

- (id)rasterizeTimeRange:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformDataSource *)self->_dataSource duration];
  if (v9 >= var1)
  {
    v10 = var1;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(RCWaveformRenderer *)self view];
  v12 = [v11 window];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = +[UIScreen mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;

    v19 = [UIWindow alloc];
    if (v16 >= v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = v18;
    }

    v13 = [v19 initWithFrame:{v20 + v20, v20 + v20, width, height}];
    v21 = [(RCWaveformRenderer *)self view];
    [v13 addSubview:v21];

    [v13 setHidden:0];
  }

  v22 = [(RCWaveformRenderer *)self view];
  [v22 frame];
  v50 = v24;
  v51 = v23;
  v26 = v25;
  v28 = v27;

  [(RCWaveformRenderer *)self visibleTimeRange];
  v48 = v30;
  v49 = v29;
  y = CGPointZero.y;
  v32 = [(RCWaveformRenderer *)self view];
  [v32 setFrame:{CGPointZero.x, y, width, height}];

  [(RCWaveformRenderer *)self setVisibleTimeRange:fmax(var0, 0.0), v10];
  v33 = +[NSRunLoop mainRunLoop];
  [v33 rc_runUntilNextDisplayLinkEventWithTimeout:0.5];

  v34 = [(RCWaveformRenderer *)self view];
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v39 = +[UIScreen mainScreen];
  [v39 scale];
  v41 = v40;
  v53.width = v36;
  v53.height = v38;
  UIGraphicsBeginImageContextWithOptions(v53, 0, v41);

  v42 = [(RCWaveformRenderer *)self view];
  v43 = [(RCWaveformRenderer *)self view];
  [v43 bounds];
  [v42 drawViewHierarchyInRect:1 afterScreenUpdates:?];

  v44 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v45 = [(RCWaveformRenderer *)self view];
  [v45 setFrame:{v51, v50, v26, v28}];

  [(RCWaveformRenderer *)self setVisibleTimeRange:v49, v48];
  if (v13)
  {
    v46 = [(RCWaveformRenderer *)self view];
    [v46 removeFromSuperview];

    [v13 setHidden:1];
  }

  return v44;
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
  v5[2] = sub_98EC;
  v5[3] = &unk_6D078;
  v6 = self;
  v7 = a4;
  v4 = v7;
  [(RCWaveformRenderer *)v6 _performOrDispatchToMainThread:v5];
}

- (void)waveformDataSourceDidFinishLoading:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_9A38;
  v3[3] = &unk_6D050;
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
  v2[2] = sub_9B64;
  v2[3] = &unk_6D050;
  v2[4] = self;
  [(RCWaveformRenderer *)self _performOrDispatchToMainThread:v2];
}

- (void)_setNeedsVisibleTimeRangeRenderingFromFrameChange
{
  [(RCWaveformRenderer *)self _setNeedsVisibleTimeRangeRendering];
  if (self->_isOverview && self->_isRecordWaveform)
  {
    self->_overviewRecordingWaveformRefresh = 1;
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
    if (!self->_isOverview)
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
  v4[2] = sub_9F20;
  v4[3] = &unk_6D050;
  v4[4] = self;
  v3 = objc_retainBlock(v4);
  dispatch_sync(self->_renderingQueue, v3);
}

- (void)_renderTimeRangeOfSegments:(id)a3 withDuration:(double)a4 needsWaveformCalculation:(BOOL)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ((atomic_load_explicit(&qword_82318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_82318))
  {
    v95 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v95 waveformWaveWidth];
    v97 = v96;

    qword_82310 = v97;
    __cxa_guard_release(&qword_82318);
  }

  if ((atomic_load_explicit(&qword_82328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_82328))
  {
    v98 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v98 waveformHorizontalSpacing];
    v100 = v99;

    qword_82320 = v100;
    __cxa_guard_release(&qword_82328);
  }

  if ((atomic_load_explicit(&qword_82338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_82338))
  {
    v101 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v101 overviewWaveformWaveWidth];
    v103 = v102;

    qword_82330 = v103;
    __cxa_guard_release(&qword_82338);
  }

  if ((atomic_load_explicit(&qword_82348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_82348))
  {
    v104 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v104 overviewWaveformHorizontalSpacing];
    v106 = v105;

    qword_82340 = v106;
    __cxa_guard_release(&qword_82348);
  }

  if ((atomic_load_explicit(&qword_82350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_82350))
  {
    v107 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v107 maximumDecibelDisplayRange];
    *&v108 = v108;
    v109 = RCNormalizedDecibelValue(*&v108);

    qword_82358 = *&v109;
    __cxa_guard_release(&qword_82350);
  }

  if ((atomic_load_explicit(&qword_82368, memory_order_acquire) & 1) == 0)
  {
    sub_41EA8();
  }

  if (self->_isOverview)
  {
    v7 = &qword_82340;
  }

  else
  {
    v7 = &qword_82320;
  }

  v8 = *v7;
  v9 = [(RCWaveformRenderer *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = RCTimeRangeDeltaWithUIPrecision(self->_visibleTimeRange.beginTime, self->_visibleTimeRange.endTime);
  if (v14 > 0.0)
  {
    v15 = v14;
    if (v11 != 100.0 || v13 != 100.0)
    {
      if (self->_calcBlockShouldRefreshAllSlices)
      {
        v16 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
        v17 = [v16 count] == 0;
      }

      else
      {
        v17 = 0;
      }

      v18 = [(RCWaveformRenderer *)self view];
      [v18 frame];
      v20 = v19;

      v21 = +[RCRecorderStyleProvider sharedStyleProvider];
      [v21 waveformWaveVerticalPadding];
      v23 = v22;

      if (self->_isOverview)
      {
        v24 = +[RCRecorderStyleProvider sharedStyleProvider];
        [v24 overviewWaveformWaveVerticalPadding];
      }

      else
      {
        if (!self->_isCompactView)
        {
          goto LABEL_22;
        }

        v24 = +[RCRecorderStyleProvider sharedStyleProvider];
        [v24 compactWaveformWaveVerticalPadding];
      }

      v23 = v25;

LABEL_22:
      v114 = v11 / v8 / v15;
      v26 = 1.0 / v114;
      [(RCWaveformRenderer *)self _duration];
      if (self->_isOverview)
      {
        v28.f64[0] = var0;
        v28.f64[1] = var1;
        v29 = vdupq_lane_s64(*&a4, 0);
        v30 = vbslq_s8(vcgtq_f64(v29, v28), v28, v29);
        v31 = vbicq_s8(v30, vcltzq_f64(v30));
      }

      else
      {
        v32.f64[0] = var0;
        v32.f64[1] = var1 + v26;
        v33 = vdupq_lane_s64(v27, 0);
        v34 = vbslq_s8(vcgtq_f64(v33, v32), v32, v33);
        v112 = vbicq_s8(v34, vcltzq_f64(v34));
        [(RCWaveformDataSource *)self->_dataSource setDurationPerWaveformSlice:v26];
        v31 = v112;
      }

      v35 = vcvtq_s64_f64(vrndxq_f64(vmulq_n_f64(v31, v114)));
      v36 = v35.i64[0];
      v37 = v35.i64[1] - v35.i64[0];
      if (v35.i64[1] == v35.i64[0])
      {
        v38 = OSLogForCategory(@"Default");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_41F00(v38);
        }

        return;
      }

      isRecordWaveform = self->_isRecordWaveform;
      calcBlockShouldRefreshAllSlices = self->_calcBlockShouldRefreshAllSlices;
      visibleTimeRange = self->_visibleTimeRange;
      self->_calcBlockShouldRefreshAllSlices = 0;
      v41 = self->_isRecordWaveform;
      recordDidSwitch = self->_rendererState.recordDidSwitch;
      v43 = v41 != recordDidSwitch;
      v111 = calcBlockShouldRefreshAllSlices;
      v113 = isRecordWaveform;
      if (v41 == recordDidSwitch)
      {
        if (!self->_isRecordWaveform)
        {
          goto LABEL_31;
        }
      }

      else
      {
        self->_rendererState.recordDidSwitch = v41;
        if (!self->_isRecordWaveform)
        {
LABEL_31:
          [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
          v45 = v44;
          v47 = v46;
          goto LABEL_39;
        }
      }

      v48 = CACurrentMediaTime();
      v49 = v26 * 0.5;
      if (!self->_isOverview)
      {
        v49 = 1.0 / v114;
      }

      if (v41 == recordDidSwitch && v48 - self->_rendererState.lastRenderTime < v49 && !self->_overviewRecordingWaveformRefresh)
      {
        if (self->_isOverview)
        {
          if (![(RCWaveformRenderer *)self renderReadyForDraw])
          {
            return;
          }

          isOverview = self->_isOverview;
        }

        else
        {
          isOverview = 0;
        }

        [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
        v45 = v93;
        v47 = v94;
        v43 = 0;
        if (!isOverview)
        {
          goto LABEL_40;
        }
      }

      else
      {
        self->_rendererState.lastRenderTime = v48;
        self->_overviewRecordingWaveformRefresh = 0;
        [(RCWaveformDataSource *)self->_dataSource timeRangeToHighlight];
        v45 = v50;
        v47 = v51;
        v43 = 1;
      }

LABEL_39:
      if (a5)
      {
LABEL_41:
        v135[1] = 3221225472;
        v135[0] = _NSConcreteStackBlock;
        v135[2] = sub_AE08;
        v135[3] = &unk_6D0A0;
        v135[4] = self;
        *&v135[5] = var0;
        *&v135[6] = var1;
        v135[7] = v36;
        v135[8] = v37;
        v137 = v111;
        *&v135[9] = 1.0 / v114;
        *&v135[10] = 2.0 / v13 * 0.5;
        v138 = v113;
        v139 = v43;
        *&v135[11] = v45;
        *&v135[12] = v47;
        v140 = v17;
        v136 = visibleTimeRange;
        v52 = objc_retainBlock(v135);
        if (self->_syncRenderOnMainThread || (WeakRetained = objc_loadWeakRetained(&self->_rendererDelegate), v54 = [WeakRetained isZooming], WeakRetained, v54))
        {
          [(RCWaveformRenderer *)self setNextRenderBlock:0];
          dispatch_sync(self->_renderingQueue, v52);
        }

        else if ([(RCWaveformRenderer *)self renderingQueueIsBusy])
        {
          [(RCWaveformRenderer *)self setNextRenderBlock:v52];
        }

        else
        {
          [(RCWaveformRenderer *)self setNextRenderBlock:0];
          dispatch_async(self->_renderingQueue, v52);
        }

LABEL_45:
        v55 = [(RCWaveformRenderer *)self view];
        v56 = [v55 waveformLayer];

        v57 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
        if (self->_isOverview)
        {
          v58 = [(RCWaveformRenderer *)self renderReadyForDraw];
          if (!v56)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v58 = 1;
          if (!v56)
          {
LABEL_83:

            return;
          }
        }

        if ((([v57 count] != 0) & v58) == 1)
        {
          v59 = [(RCWaveformRenderer *)self traitCollection];
          v60 = [v59 isUserInterfaceStyleDark];

          v61 = +[RCRecorderStyleProvider sharedStyleProvider];
          v118 = v61;
          if (self->_isRecordWaveform)
          {
            v62 = [v61 waveformRecordingColor];
            v63 = [v118 waveformStandardColor:v60];
            v64 = v62;
          }

          else
          {
            v63 = [v61 waveformStandardColor:v60];
            v64 = v63;
          }

          v65 = v63;
          if (self->_isOverview)
          {
            if (v60)
            {
              +[UIColor blackColor];
            }

            else
            {
              +[UIColor whiteColor];
            }
            v67 = ;
            if (v64)
            {
              v68 = [v64 colorWithAlphaComponent:0.8];

              v70 = sub_B58C(v69, v67, v68);

              v64 = v70;
            }

            if (v65)
            {
              v71 = [v65 colorWithAlphaComponent:0.8];

              v73 = sub_B58C(v72, v67, v71);

              v65 = v73;
            }
          }

          [RCVisualWaveformAmpSlice setPrimaryColor:v64];
          [RCVisualWaveformAmpSlice setSecondaryColor:v65];
          waveformAmpSlicesForRenderingTimeRange = self->_waveformAmpSlicesForRenderingTimeRange;
          v74 = objc_loadWeakRetained(&self->_rendererDelegate);
          [v74 currentTime];
          v76 = v75;
          v77 = v20 * 0.5;
          v78 = v77 - v23;
          v79 = vcvtmd_u64_f64(v45 / v26);

          if (v47 >= v76)
          {
            v80 = v47;
          }

          else
          {
            v80 = v76;
          }

          v130 = 0;
          v131 = &v130;
          v132 = 0x2020000000;
          waveformAmpSlicesForRenderingRecordStateChanged = self->_waveformAmpSlicesForRenderingRecordStateChanged;
          v120[0] = _NSConcreteStackBlock;
          v120[1] = 3221225472;
          v120[2] = sub_B6A0;
          v120[3] = &unk_6D0C8;
          v121 = waveformAmpSlicesForRenderingTimeRange;
          v122 = v11;
          v123 = v8;
          v124 = v77;
          v125 = v78;
          v120[4] = self;
          v120[5] = &v130;
          v126 = v45;
          v127 = v47;
          v128 = v79;
          v129 = vcvtpd_u64_f64(v80 / v26);
          v81 = objc_retainBlock(v120);
          if (self->_isOverview)
          {
            v82 = &qword_82330;
          }

          else
          {
            v82 = &qword_82310;
          }

          v83 = *v82;
          +[CATransaction begin];
          [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
          if (self->_isOverview)
          {
            [v56 transform];
            if (!CATransform3DIsIdentity(&v119))
            {
              v84 = *&CATransform3DIdentity.m33;
              *&v119.m31 = *&CATransform3DIdentity.m31;
              *&v119.m33 = v84;
              v85 = *&CATransform3DIdentity.m43;
              *&v119.m41 = *&CATransform3DIdentity.m41;
              *&v119.m43 = v85;
              v86 = *&CATransform3DIdentity.m13;
              *&v119.m11 = *&CATransform3DIdentity.m11;
              *&v119.m13 = v86;
              v87 = *&CATransform3DIdentity.m23;
              *&v119.m21 = *&CATransform3DIdentity.m21;
              *&v119.m23 = v87;
              [v56 setTransform:&v119];
              v88 = [(RCWaveformRenderer *)self view];
              [v88 bounds];
              [v56 setFrame:?];
            }
          }

          (v81[2])(v81, v57, v56, v83);
          +[CATransaction commit];
          self->_renderedTimeRange = waveformAmpSlicesForRenderingTimeRange;
          if (*(v131 + 24) == 1)
          {
            self->_waveformAmpSlicesForRenderingRecordStateChanged = 0;
          }

          *(&self->super.super.super.isa + v110) = 0;
          [(RCWaveformRenderer *)self setRenderReadyForDraw:0];
          [(RCWaveformRenderer *)self setWaitForFinalCalc:0];
          [(RCWaveformRenderer *)self _nonCachedContentWidthWithDuration:a4];
          if (self->_cachedContentWidth != v89)
          {
            self->_cachedContentWidth = v89;
            v90 = objc_loadWeakRetained(&self->_rendererDelegate);
            v91 = objc_opt_respondsToSelector();

            if (v91)
            {
              v92 = objc_loadWeakRetained(&self->_rendererDelegate);
              [v92 waveformRenderer:self contentWidthDidChange:self->_cachedContentWidth];
            }
          }

          _Block_object_dispose(&v130, 8);
        }

        goto LABEL_83;
      }

LABEL_40:
      if (![(RCWaveformRenderer *)self failedFirstRenderCalculationAttempt])
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }
}

- (BOOL)_needsWaveformRendering
{
  if (self->_calcBlockShouldRefreshAllSlices)
  {
    return 1;
  }

  beginTime = self->_waveformAmpSlicesForRenderingTimeRange.beginTime;
  endTime = self->_waveformAmpSlicesForRenderingTimeRange.endTime;
  waveformAmpSlicesForRenderingRecordStateChanged = self->_waveformAmpSlicesForRenderingRecordStateChanged;
  v7 = [(RCWaveformRenderer *)self waveformAmpSlicesForRendering];
  v8 = [v7 count];
  v9 = v8 == 0;
  if (v8 && !waveformAmpSlicesForRenderingRecordStateChanged)
  {
    v9 = RCTimeRangeEqualToTimeRange(self->_renderedTimeRange.beginTime, self->_renderedTimeRange.endTime, beginTime, endTime);
  }

  v2 = !v9;

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
    [(RCWaveformRenderer *)self visibleTimeRange];
    v8 = v7;
    v10 = v9;
    if (!self->_isOverview)
    {
      [(RCWaveformRenderer *)self _updateOverviewUnitsPerSecond];
      visibleTimeRangeVelocity = self->_visibleTimeRangeVelocity;
      v12 = fabs(visibleTimeRangeVelocity);
      if (v12 > 10.0)
      {
        v12 = 10.0;
      }

      if (visibleTimeRangeVelocity <= 0.0)
      {
        if (visibleTimeRangeVelocity < 0.0)
        {
          v8 = v8 - v12;
        }
      }

      else
      {
        v10 = v10 + v12;
      }
    }

    [(RCWaveformRenderer *)self _renderTimeRangeOfSegments:v6 withDuration:v8 needsWaveformCalculation:v10, a3];
    self->_needsVisibleRangeRendering = 0;
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