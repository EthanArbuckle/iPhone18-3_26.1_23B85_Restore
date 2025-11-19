@interface NTKSolarFaceView
- (BOOL)_canEnterInteractiveMode;
- (BOOL)_solarPathRequiresUpdateForChangedLocation:(id)a3;
- (CGPoint)_pointOnSolarPathForPercentage:(double)a3;
- (NTKSolarFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_percentageForWaypoint:(int64_t)a3;
- (double)_solarDiskRestPercentage;
- (id)_createSolarBezierPath;
- (id)_createWaypointView;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_waypointLabelTextForPercentage:(double)a3;
- (int64_t)_waypointBetweenPreviousOffset:(double)a3 currentOffset:(double)a4;
- (int64_t)_waypointForPercentage:(double)a3 withSmallThreshold:(double)a4 largeThreshold:(double)a5;
- (void)_adjustUIForBoundsChange;
- (void)_animateSolarDiskToRestPercentageIfNeededForViewMode:(int64_t)a3;
- (void)_applyDataMode;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_asyncUpdateLocale;
- (void)_buttonPressTimerFired;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterSettingViewMode:(int64_t)a3;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_disableCrown;
- (void)_enableCrown;
- (void)_handleViewModeTapGesture:(id)a3;
- (void)_interpolateFromViewMode:(int64_t)a3 toViewMode:(int64_t)a4 progress:(double)a5;
- (void)_layoutForegroundContainerView;
- (void)_layoutHorizonForViewMode:(int64_t)a3;
- (void)_layoutLegacyDateComplication;
- (void)_layoutSolarDiskViewForViewMode:(int64_t)a3;
- (void)_layoutSolarPathAndContainerForViewMode:(int64_t)a3;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSettingViewMode:(int64_t)a3;
- (void)_setSolarBezierPath:(id)a3 animated:(BOOL)a4;
- (void)_setupViews;
- (void)_sharedLocationManagerUpdatedLocation:(id)a3 error:(id)a4;
- (void)_solarDiskPercentageChanged:(double)a3;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_timeZoneChanged:(id)a3;
- (void)_transitionToViewMode:(int64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)_unloadViews;
- (void)_updateColorCurves;
- (void)_updateComplicationColorWithPercentage:(double)a3;
- (void)_updateLocale;
- (void)_updateSolarDiskHaloViewPosition;
- (void)_updateSolarHaloWithPercentage:(double)a3;
- (void)_updateSolarHorizonGradientAlphaWithPercentage:(double)a3;
- (void)_updateSolarHorizonGradientAlphaWithSolarDiskCenter:(CGPoint)a3;
- (void)_updateSolarHorizonGradientColorWithPercentage:(double)a3;
- (void)_updateSolarPathForChangedDate:(id)a3 animated:(BOOL)a4;
- (void)_updateSolarPathForChangedLocation:(id)a3;
- (void)_updateTimeScrubbingContentForViewMode:(int64_t)a3;
- (void)_updateWaypoints;
- (void)_wheelDelayTimerFired;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NTKSolarFaceView

- (NTKSolarFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKSolarFaceView;
  v9 = [(NTKSolarFaceView *)&v13 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;
  }

  return v9;
}

- (void)dealloc
{
  [(NTKSolarFaceView *)self _unloadSnapshotContentViews];
  v3.receiver = self;
  v3.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v3 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v24.receiver = self;
  v24.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v24 _loadSnapshotContentViews];
  if ((*(self + 368) & 1) == 0)
  {
    [(NTKSolarFaceView *)self _setupViews];
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleViewModeTapGesture:"];
    viewModeTapGesture = self->_viewModeTapGesture;
    self->_viewModeTapGesture = v3;

    [(UITapGestureRecognizer *)self->_viewModeTapGesture setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setDelegate:self];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:0];
    [(UITapGestureRecognizer *)self->_viewModeTapGesture setCancelsTouchesInView:0];
    [(NTKSolarFaceView *)self addGestureRecognizer:self->_viewModeTapGesture];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_timeZoneChanged:" name:NSSystemTimeZoneDidChangeNotification object:0];
    [v5 addObserver:self selector:"_asyncUpdateLocale" name:NSCurrentLocaleDidChangeNotification object:0];
    v6 = [(NTKSolarFaceView *)self device];
    v7 = [v6 pdrDeviceVersion];

    if (HIWORD(v7) <= 4u)
    {
      v8 = [NTKDateComplication complicationWithDateStyle:8];
      v9 = [NTKDateComplicationLabel alloc];
      v10 = [(NTKSolarFaceView *)self device];
      v11 = [v9 initWithSizeStyle:1 accentType:1 forDevice:v10];
      dateComplicationLabel = self->_dateComplicationLabel;
      self->_dateComplicationLabel = v11;

      v13 = [(NTKSolarFaceView *)self device];
      sub_9538(v13, v23);
      v14 = v23[0];

      v15 = [CLKFont systemFontOfSize:v14];
      [(NTKDateComplicationLabel *)self->_dateComplicationLabel setFont:v15];

      v16 = +[NSLocale currentLocale];
      v17 = [v16 objectForKey:NSLocaleLanguageCode];

      if ([v17 isEqualToString:@"he"])
      {
        v18 = 2048;
      }

      else
      {
        v18 = 0;
      }

      [(NTKDateComplicationLabel *)self->_dateComplicationLabel setOverrideDateStyle:v18];
      [(NTKSolarFaceView *)self addSubview:self->_dateComplicationLabel];
      v19 = self->_dateComplicationLabel;
      v20 = [(NTKSolarFaceView *)self device];
      v21 = [NTKComplicationController DEPRECATEDControllerForComplication:v8 withLegacyDisplay:v19 forDevice:v20];
      dateComplicationController = self->_dateComplicationController;
      self->_dateComplicationController = v21;

      [(NTKComplicationController *)self->_dateComplicationController _activate];
    }

    *(self + 368) |= 1u;
    [(NTKSolarFaceView *)self setNeedsLayout];
  }
}

- (void)_unloadSnapshotContentViews
{
  v9.receiver = self;
  v9.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v9 _unloadSnapshotContentViews];
  if (*(self + 368))
  {
    [(NTKSolarFaceView *)self _stopClockUpdates];
    [(NTKSolarFaceView *)self removeGestureRecognizer:self->_viewModeTapGesture];
    viewModeTapGesture = self->_viewModeTapGesture;
    self->_viewModeTapGesture = 0;

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:NSSystemTimeZoneDidChangeNotification object:0];
    [v4 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
    v5 = [(NTKSolarFaceView *)self device];
    v6 = [v5 pdrDeviceVersion];

    if (HIWORD(v6) <= 4u)
    {
      [(NTKDateComplicationLabel *)self->_dateComplicationLabel removeFromSuperview];
      dateComplicationLabel = self->_dateComplicationLabel;
      self->_dateComplicationLabel = 0;

      [(NTKComplicationController *)self->_dateComplicationController DEPRECATEDInvalidate];
      dateComplicationController = self->_dateComplicationController;
      self->_dateComplicationController = 0;
    }

    [(NTKSolarFaceView *)self _unloadViews];
    *(self + 368) &= ~1u;
  }
}

- (void)_setupViews
{
  [(NTKSolarFaceView *)self setClipsToBounds:1];
  v101 = [(NTKSolarFaceView *)self foregroundContainerView];
  v3 = [NTKSolarTimeModel alloc];
  v4 = [(NTKSolarFaceView *)self currentDisplayDate];
  v5 = [v3 initWithReferenceDate:v4 referenceLocation:0];
  solarTimeModel = self->_solarTimeModel;
  self->_solarTimeModel = v5;

  v108[0] = &off_2DA90;
  v7 = [[NTKSolarWaypoint alloc] initWithType:1 solarTimeModel:self->_solarTimeModel];
  v109[0] = v7;
  v108[1] = &off_2DAA8;
  v8 = [[NTKSolarWaypoint alloc] initWithType:2 solarTimeModel:self->_solarTimeModel];
  v109[1] = v8;
  v108[2] = &off_2DAC0;
  v9 = [[NTKSolarWaypoint alloc] initWithType:3 solarTimeModel:self->_solarTimeModel];
  v109[2] = v9;
  v108[3] = &off_2DAD8;
  v10 = [[NTKSolarWaypoint alloc] initWithType:4 solarTimeModel:self->_solarTimeModel];
  v109[3] = v10;
  v108[4] = &off_2DAF0;
  v11 = [[NTKSolarWaypoint alloc] initWithType:5 solarTimeModel:self->_solarTimeModel];
  v109[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:5];
  waypoints = self->_waypoints;
  self->_waypoints = v12;

  [(NTKSolarFaceView *)self _updateWaypoints];
  self->_solarDiskOverridePercentage = -1.0;
  v14 = [(NTKSolarFaceView *)self device];
  sub_9538(v14, v106);
  v15 = v106[0];

  v16 = [CLKFont systemFontOfSize:v15 weight:UIFontWeightSemibold];
  v17 = [v16 CLKFontWithMonospacedNumbers];
  v18 = [v17 CLKFontWithAlternativePunctuation];

  v99 = v18;
  [v18 lineHeight];
  self->_labelFontLineHeight = v19;
  v20 = +[UIColor blackColor];
  [(NTKSolarFaceView *)self setBackgroundColor:v20];

  v21 = [(NTKSolarFaceView *)self layer];
  [v21 setAllowsGroupBlending:0];

  v22 = +[NSMutableSet set];
  animatingReasons = self->_animatingReasons;
  self->_animatingReasons = v22;

  self->_currentSolarDiskPercentage = -1.0;
  [(NTKSolarFaceView *)self bounds];
  v28 = [[UIView alloc] initWithFrame:{v24, v25, v26, v27}];
  solarContentView = self->_solarContentView;
  self->_solarContentView = v28;

  v30 = self->_solarContentView;
  v31 = +[UIColor blackColor];
  [(UIView *)v30 setBackgroundColor:v31];

  v32 = [(NTKSolarFaceView *)self contentView];
  [v32 addSubview:self->_solarContentView];

  v33 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v37 = [v33 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  solarPathObjectContainerView = self->_solarPathObjectContainerView;
  self->_solarPathObjectContainerView = v37;

  [(UIView *)self->_solarPathObjectContainerView setOpaque:0];
  [(UIView *)self->_solarPathObjectContainerView setAlpha:0.75];
  v39 = [(UIView *)self->_solarPathObjectContainerView layer];
  [v39 setAllowsGroupOpacity:1];

  v40 = [(UIView *)self->_solarPathObjectContainerView layer];
  [v40 setCompositingFilter:kCAFilterScreenBlendMode];

  [(UIView *)self->_solarContentView addSubview:self->_solarPathObjectContainerView];
  v41 = [[NTKBezierPathView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  solarBezierPathView = self->_solarBezierPathView;
  self->_solarBezierPathView = v41;

  v43 = self->_solarBezierPathView;
  v44 = +[UIColor grayColor];
  [(NTKBezierPathView *)v43 setPathColor:v44];

  [(UIView *)self->_solarPathObjectContainerView addSubview:self->_solarBezierPathView];
  *(self + 368) |= 2u;
  v45 = [NTKSolarDiskView alloc];
  v46 = [(NTKSolarFaceView *)self device];
  sub_9538(v46, v104);
  v47 = v105;
  v48 = [(NTKSolarFaceView *)self device];
  v49 = [(NTKSolarDiskView *)v45 initWithSize:v48 forDevice:v47];
  solarDiskView = self->_solarDiskView;
  self->_solarDiskView = v49;

  [(UIView *)self->_solarContentView addSubview:self->_solarDiskView];
  v100 = [NTKSolarFaceBundle imageWithName:@"Solar-Disk-Halo-Color-Mask"];
  v51 = [[UIImageView alloc] initWithImage:v100];
  solarDiskHaloView = self->_solarDiskHaloView;
  self->_solarDiskHaloView = v51;

  v53 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  solarDiskHaloMaskView = self->_solarDiskHaloMaskView;
  self->_solarDiskHaloMaskView = v53;

  v55 = [(UIView *)self->_solarDiskHaloMaskView layer];
  [v55 setCompositingFilter:kCAFilterSourceIn];

  [(UIImageView *)self->_solarDiskHaloView addSubview:self->_solarDiskHaloMaskView];
  v56 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  solarDiskHaloParentView = self->_solarDiskHaloParentView;
  self->_solarDiskHaloParentView = v56;

  [(UIView *)self->_solarDiskHaloParentView addSubview:self->_solarDiskHaloView];
  [(UIView *)self->_solarContentView addSubview:self->_solarDiskHaloParentView];
  v58 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  waypointLabel = self->_waypointLabel;
  self->_waypointLabel = v58;

  [(UILabel *)self->_waypointLabel setTextAlignment:1];
  [(UILabel *)self->_waypointLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_waypointLabel setFont:v18];
  v60 = self->_waypointLabel;
  v61 = +[UIColor whiteColor];
  [(UILabel *)v60 setTextColor:v61];

  [v101 addSubview:self->_waypointLabel];
  [(NTKSolarFaceView *)self _updateColorCurves];
  v62 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  horizonView = self->_horizonView;
  self->_horizonView = v62;

  v64 = self->_horizonView;
  v65 = +[UIColor grayColor];
  [(UIView *)v64 setBackgroundColor:v65];

  [(UIView *)self->_solarPathObjectContainerView addSubview:self->_horizonView];
  v66 = +[CAGradientLayer layer];
  [v66 setLocations:&off_2DF80];
  v67 = +[UIColor clearColor];
  v107[0] = [v67 CGColor];
  v68 = +[UIColor clearColor];
  v107[1] = [v68 CGColor];
  v69 = +[UIColor whiteColor];
  v107[2] = [v69 CGColor];
  v70 = [NSArray arrayWithObjects:v107 count:3];
  [v66 setColors:v70];

  v71 = [(NTKSolarFaceView *)self device];
  sub_9538(v71, v102);
  [v66 setFrame:{0.0, 0.0, 0.5, v103}];

  [v66 bounds];
  v110.width = v72;
  v110.height = v73;
  UIGraphicsBeginImageContextWithOptions(v110, 0, 0.0);
  [v66 renderInContext:UIGraphicsGetCurrentContext()];
  v74 = UIGraphicsGetImageFromCurrentImageContext();
  v98 = [v74 resizableImageWithCapInsets:1 resizingMode:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  UIGraphicsEndImageContext();
  v75 = [[UIImageView alloc] initWithImage:v98];
  horizonGradientView = self->_horizonGradientView;
  self->_horizonGradientView = v75;

  [(UIImageView *)self->_horizonGradientView setContentMode:0];
  v77 = self->_horizonGradientView;
  v78 = +[UIColor blackColor];
  [(UIImageView *)v77 setBackgroundColor:v78];

  v79 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  horizonGradientContainerView = self->_horizonGradientContainerView;
  self->_horizonGradientContainerView = v79;

  v81 = [(UIView *)self->_horizonGradientContainerView layer];
  [v81 setCompositingFilter:kCAFilterColorDodgeBlendMode];

  [(UIView *)self->_horizonGradientContainerView addSubview:self->_horizonGradientView];
  [(UIView *)self->_solarContentView addSubview:self->_horizonGradientContainerView];
  v82 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  belowHorizonView = self->_belowHorizonView;
  self->_belowHorizonView = v82;

  [(UIView *)self->_belowHorizonView setOpaque:1];
  v84 = self->_belowHorizonView;
  v85 = +[UIColor blackColor];
  [(UIView *)v84 setBackgroundColor:v85];

  [(UIView *)self->_solarContentView addSubview:self->_belowHorizonView];
  v86 = objc_opt_new();
  overrideDateFormatter = self->_overrideDateFormatter;
  self->_overrideDateFormatter = v86;

  v88 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  overrideDateLabel = self->_overrideDateLabel;
  self->_overrideDateLabel = v88;

  [(UILabel *)self->_overrideDateLabel setTextAlignment:0];
  [(UILabel *)self->_overrideDateLabel setFont:v99];
  v90 = self->_overrideDateLabel;
  v91 = +[UIColor whiteColor];
  [(UILabel *)v90 setTextColor:v91];

  [v101 addSubview:self->_overrideDateLabel];
  v92 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  scrubLabel = self->_scrubLabel;
  self->_scrubLabel = v92;

  [(UILabel *)self->_scrubLabel setTextAlignment:1];
  [(UILabel *)self->_scrubLabel setFont:v99];
  v94 = self->_scrubLabel;
  v95 = +[UIColor whiteColor];
  [(UILabel *)v94 setTextColor:v95];

  [v101 addSubview:self->_scrubLabel];
  [(NTKSolarFaceView *)self _solarDiskRestPercentage];
  v97 = v96;
  [(NTKSolarFaceView *)self _updateSolarHaloWithPercentage:?];
  [(NTKSolarFaceView *)self _updateSolarHorizonGradientAlphaWithPercentage:v97];
  [(NTKSolarFaceView *)self _updateSolarHorizonGradientColorWithPercentage:v97];
  [(NTKSolarFaceView *)self _updateComplicationColorWithPercentage:v97];
  [(UIView *)self->_solarContentView bringSubviewToFront:self->_solarDiskHaloParentView];
  [(UIView *)self->_solarContentView bringSubviewToFront:self->_belowHorizonView];
  [(UIView *)self->_solarContentView bringSubviewToFront:self->_horizonGradientContainerView];
  [(UIView *)self->_solarContentView bringSubviewToFront:self->_solarPathObjectContainerView];
  [(UIView *)self->_solarContentView bringSubviewToFront:self->_solarDiskView];
  [(NTKSolarFaceView *)self _updateLocale];
}

- (void)_unloadViews
{
  solarTimeModel = self->_solarTimeModel;
  self->_solarTimeModel = 0;

  overrideDateFormatter = self->_overrideDateFormatter;
  self->_overrideDateFormatter = 0;

  waypoints = self->_waypoints;
  self->_waypoints = 0;

  self->_solarDiskOverridePercentage = -1.0;
  [(UIImageView *)self->_horizonGradientView removeFromSuperview];
  [(UIView *)self->_belowHorizonView removeFromSuperview];
  [(UIView *)self->_solarPathObjectContainerView removeFromSuperview];
  [(UIImageView *)self->_solarDiskHaloView removeFromSuperview];
  [(NTKBezierPathView *)self->_solarBezierPathView removeFromSuperview];
  [(NTKSolarDiskView *)self->_solarDiskView removeFromSuperview];
  [(UILabel *)self->_waypointLabel removeFromSuperview];
  [(UIView *)self->_horizonView removeFromSuperview];
  [(UILabel *)self->_overrideDateLabel removeFromSuperview];
  [(UILabel *)self->_scrubLabel removeFromSuperview];
  [(UIView *)self->_solarContentView removeFromSuperview];
  v6 = [(NSDictionary *)self->_waypointViews allValues];
  [v6 makeObjectsPerformSelector:"removeFromSuperview"];

  horizonGradientView = self->_horizonGradientView;
  self->_horizonGradientView = 0;

  belowHorizonView = self->_belowHorizonView;
  self->_belowHorizonView = 0;

  solarPathObjectContainerView = self->_solarPathObjectContainerView;
  self->_solarPathObjectContainerView = 0;

  solarDiskHaloView = self->_solarDiskHaloView;
  self->_solarDiskHaloView = 0;

  solarBezierPathView = self->_solarBezierPathView;
  self->_solarBezierPathView = 0;

  solarDiskView = self->_solarDiskView;
  self->_solarDiskView = 0;

  waypointLabel = self->_waypointLabel;
  self->_waypointLabel = 0;

  horizonView = self->_horizonView;
  self->_horizonView = 0;

  overrideDateLabel = self->_overrideDateLabel;
  self->_overrideDateLabel = 0;

  scrubLabel = self->_scrubLabel;
  self->_scrubLabel = 0;

  solarContentView = self->_solarContentView;
  self->_solarContentView = 0;

  waypointViews = self->_waypointViews;
  self->_waypointViews = 0;
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v3 = [(NTKSolarFaceView *)self timeView];
  [v3 setHidden:{-[NTKSolarFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v5 layoutSubviews];
  if ((*(self + 368) & 1) != 0 && ([(NTKSolarFaceView *)self zooming]& 1) == 0 && ![(NTKSolarFaceView *)self _isAnimating])
  {
    [(NTKSolarFaceView *)self bounds];
    [(UIView *)self->_solarContentView setBounds:?];
    if ((*(self + 368) & 2) != 0)
    {
      v3 = [(NTKSolarFaceView *)self _createSolarBezierPath];
      [(NTKSolarFaceView *)self _setSolarBezierPath:v3 animated:0];

      *(self + 368) &= ~2u;
    }

    v4 = [(NTKSolarFaceView *)self viewMode];
    [(NTKSolarFaceView *)self _layoutLegacyDateComplication];
    [(NTKSolarFaceView *)self _layoutHorizonForViewMode:v4];
    [(NTKSolarFaceView *)self _layoutSolarPathAndContainerForViewMode:v4];
    [(NTKSolarFaceView *)self _layoutSolarDiskViewForViewMode:v4];
    [(NTKSolarFaceView *)self _updateWaypointLabelForCrownMovement];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  digitalTimeLabelDefaultStyle = self->_digitalTimeLabelDefaultStyle;
  self->_digitalTimeLabelDefaultStyle = 0;
  v5 = a3;

  digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelSmallInUpperRightCornerStyle;
  self->_digitalTimeLabelSmallInUpperRightCornerStyle = 0;

  v7.receiver = self;
  v7.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v7 traitCollectionDidChange:v5];
}

- (void)_enableCrown
{
  v3.receiver = self;
  v3.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v3 _enableCrown];
  *(self + 368) |= 8u;
}

- (void)_disableCrown
{
  v3.receiver = self;
  v3.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v3 _disableCrown];
  *(self + 368) &= ~8u;
}

- (void)_wheelDelayTimerFired
{
  wheelDelayTimer = self->_wheelDelayTimer;
  self->_wheelDelayTimer = 0;

  if (!self->_buttonPressTimer && [(NTKSolarFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKSolarFaceView *)self _setViewMode:2 animated:1];
  }
}

- (void)_buttonPressTimerFired
{
  buttonPressTimer = self->_buttonPressTimer;
  self->_buttonPressTimer = 0;
  _objc_release_x1();
}

- (void)_updateTimeScrubbingContentForViewMode:(int64_t)a3
{
  v5 = [(NTKSolarFaceView *)self _isAnimating];
  if (a3 == 2 && (v5 & 1) == 0)
  {
    [(NTKSolarFaceView *)self _solarDiskRestPercentage];
    v7 = v6;
    v38 = +[NSCalendar currentCalendar];
    [(NTKSolarTimeModel *)self->_solarTimeModel effectiveSolarDayLength];
    v9 = v7 * v8;
    v10 = [(NTKSolarTimeModel *)self->_solarTimeModel startDateForReferenceDate];
    v11 = NTKRoundDateDownToNearestMinute();

    v12 = +[NTKDate faceDate];
    v13 = NTKRoundDateDownToNearestMinute();

    v14 = [v38 dateByAddingUnit:128 value:v9 toDate:v11 options:0];
    v15 = NTKRoundDateDownToNearestMinute();

    [v13 timeIntervalSinceDate:v15];
    if (fabs(v16) <= 60.0)
    {
      v17 = v13;

      v15 = v17;
    }

    v18 = [(NSDateFormatter *)self->_overrideDateFormatter stringFromDate:v15];
    if (qword_354C0 != -1)
    {
      sub_19CE0();
    }

    if (byte_354B8 == 1)
    {
      v19 = +[NSLocale currentLocale];
      v20 = [v18 uppercaseStringWithLocale:v19];

      v18 = v20;
    }

    v21 = [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory foregroundColor];
    v36 = v18;
    [(UILabel *)self->_overrideDateLabel setText:v18];
    [(UILabel *)self->_overrideDateLabel setTextColor:v21];
    [(UILabel *)self->_overrideDateLabel sizeToFit];
    scrubLabel = self->_scrubLabel;
    v37 = v13;
    [v15 timeIntervalSinceDate:v13];
    v23 = v22;
    v24 = objc_opt_new();
    [v24 setMaximumUnitCount:2];
    [v24 setFormattingContext:2];
    [v24 setAllowedUnits:96];
    [v24 setUnitsStyle:0];
    [v24 setZeroFormattingBehavior:0x10000];
    v25 = [v24 stringFromTimeInterval:fabs(v23)];
    v26 = +[NSLocale currentLocale];
    IsRTL = CLKLayoutIsRTL();
    v28 = @"−";
    if (v23 >= 0.0)
    {
      v28 = @"+";
    }

    v29 = v28;
    if (qword_354C0 != -1)
    {
      sub_19CE0();
    }

    if (byte_354B8 == 1)
    {
      v30 = [v25 uppercaseStringWithLocale:v26];

      v25 = v30;
    }

    v31 = &stru_2D1E0;
    if (IsRTL)
    {
      v31 = @"\u200F";
    }

    v32 = [NSString stringWithFormat:@"%@%@%@", v31, v29, v25];

    [(UILabel *)scrubLabel setText:v32];
    [(UILabel *)self->_scrubLabel setTextColor:v21];
    [(UILabel *)self->_scrubLabel sizeToFit];
    [(UILabel *)self->_waypointLabel setTextColor:v21];
    [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForDate:v15];
    v34 = fmin(fmax(v33, 0.0), 1.0);
    [(NTKSolarFaceView *)self _solarDiskPercentageChanged:v34];
    self->_solarDiskOverridePercentage = v34;
    [(NTKSolarFaceView *)self _updateWaypointLabelForCrownMovement];
  }
}

- (void)_startClockUpdates
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    v3 = +[CLKClockTimer sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4E2C;
    v6[3] = &unk_2C8F0;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&stru_2C930];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_applyDataMode
{
  if ((*(self + 368) & 1) == 0)
  {
    return;
  }

  v3 = [(NTKSolarFaceView *)self dataMode];
  if (v3 <= 2)
  {
    if (v3 == (&dword_0 + 1))
    {
LABEL_17:
      [(NTKSolarFaceView *)self _setViewMode:0 animated:0];

      [(NTKSolarFaceView *)self _startClockUpdates];
      return;
    }

    if (v3 != (&dword_0 + 2))
    {
      return;
    }
  }

  else
  {
    if (v3 != (&dword_0 + 3))
    {
      if (v3 != (&dword_4 + 1))
      {
        if (v3 == &dword_4)
        {
          [(NTKSolarFaceView *)self _solarDiskRestPercentage];

          [(NTKSolarFaceView *)self _solarDiskPercentageChanged:?];
        }

        return;
      }

      [(NTKSolarFaceView *)self _solarDiskRestPercentage];
      [(NTKSolarFaceView *)self _solarDiskPercentageChanged:?];
      goto LABEL_17;
    }

    [(NTKSolarFaceView *)self _setViewMode:1 animated:0];
  }

  [(NTKSolarFaceView *)self _stopClockUpdates];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v10 setOverrideDate:v6 duration:a4];
  if (*(self + 368))
  {
    currentSolarDiskPercentage = self->_currentSolarDiskPercentage;
    if (v6)
    {
      [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodInCurrentSolarDayForDate:v6];
    }

    else
    {
      [(NTKSolarFaceView *)self _solarDiskRestPercentage];
    }

    v9 = v8;
    if (a4 <= 0.0)
    {
      if (![(NTKSolarFaceView *)self _isAnimating])
      {
        [(NTKSolarFaceView *)self _solarDiskPercentageChanged:v9];
      }
    }

    else
    {
      [(NTKSolarFaceView *)self _animateSolarDiskFromPercentage:@"_NTKSolarDiskPercentageChangeForDataModeAnimatingReason" toPercentage:currentSolarDiskPercentage reason:v8];
    }
  }
}

- (void)setTimeOffset:(double)a3
{
  v4 = [(NTKSolarFaceView *)self timeView];
  [v4 setTimeOffset:a3];
}

- (void)_sharedLocationManagerUpdatedLocation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138478083;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Solar _sharedLocationManagerUpdatedLocation with location:%{private}@ and error:%@", &v12, 0x16u);
  }

  if (self->_usingInitialLocation)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    self->_usingInitialLocation = 0;
  }

  *(self + 368) = *(self + 368) & 0xFB | (4 * (v6 != 0));
  [(NTKSolarTimeModel *)self->_solarTimeModel setUsePlaceholderData:v6 == 0];
  if (!v6 || ([(NTKSolarTimeModel *)self->_solarTimeModel referenceLocation], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (v10 = v9, v11 = [(NTKSolarFaceView *)self _solarPathRequiresUpdateForChangedLocation:v6], v10, v11))
  {
    [(NTKSolarFaceView *)self _updateSolarPathForChangedLocation:v6];
    [(NTKSolarFaceView *)self setNeedsLayout];
  }

  if ([(NTKSolarFaceView *)self viewMode]== &dword_0 + 2)
  {
    [(NTKSolarFaceView *)self _updateTimeScrubbingContentForViewMode:[(NTKSolarFaceView *)self viewMode]];
  }

LABEL_12:
}

- (BOOL)_solarPathRequiresUpdateForChangedLocation:(id)a3
{
  solarTimeModel = self->_solarTimeModel;
  v4 = a3;
  v5 = [(NTKSolarTimeModel *)solarTimeModel referenceLocation];
  [v5 distanceFromLocation:v4];
  v7 = v6;

  return v7 >= 250000.0;
}

- (void)_timeZoneChanged:(id)a3
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(self + 368) & 1;
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Solar received timeZoneChanged notification with isContentLoaded?:%ld", &v6, 0xCu);
  }

  if (*(self + 368))
  {
    [(NTKSolarTimeModel *)self->_solarTimeModel updateForTimeZoneChange];
    [(NTKSolarFaceView *)self _updateWaypoints];
    *(self + 368) |= 2u;
    [(NTKSolarFaceView *)self setNeedsLayout];
  }
}

- (void)_asyncUpdateLocale
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_557C;
  v2[3] = &unk_2C958;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_updateLocale
{
  v6 = +[NSLocale currentLocale];
  v3 = CLKLocaleIs24HourMode();
  overrideDateFormatter = self->_overrideDateFormatter;
  if (v3)
  {
    v5 = @"H:mm";
  }

  else
  {
    v5 = @"h:mm a";
  }

  [(NSDateFormatter *)self->_overrideDateFormatter setLocalizedDateFormatFromTemplate:v5];
}

- (void)_handleViewModeTapGesture:(id)a3
{
  if ([a3 state] == &dword_0 + 3 && !-[NTKSolarFaceView _isAnimating](self, "_isAnimating"))
  {
    v4 = [(NTKSolarFaceView *)self viewMode];
    if (v4 == &dword_0 + 2)
    {

      [(NTKSolarFaceView *)self _setViewMode:0 animated:1];
    }

    else if (!v4)
    {
      [(NTKSolarFaceView *)self _setViewMode:2 animated:1];

      [(NTKSolarFaceView *)self _updateWaypointLabelForCrownMovement];
    }
  }
}

- (void)_updateWaypoints
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSDictionary *)self->_waypoints allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if ((*(self + 368) & 4) != 0)
        {
          [v8 updateDependentValues];
        }

        else
        {
          [v8 updateDependentValuesWithPlaceholderData];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (double)_percentageForWaypoint:(int64_t)a3
{
  waypoints = self->_waypoints;
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSDictionary *)waypoints objectForKeyedSubscript:v4];
  [v5 percentageThroughPeriodForWaypointDate];
  v7 = v6;

  return v7;
}

- (int64_t)_waypointForPercentage:(double)a3 withSmallThreshold:(double)a4 largeThreshold:(double)a5
{
  v6 = 1.0 - a3;
  if (a3 < a4 || v6 < a4)
  {
    return 6;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(NSDictionary *)self->_waypoints allKeys];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v8 = [*(*(&v27 + 1) + 8 * v16) integerValue];
        [(NTKSolarFaceView *)self _percentageForWaypoint:v8];
        if (v8 == 5)
        {
          v18 = a5;
        }

        else
        {
          v18 = a4;
        }

        if (v8 == 4)
        {
          v19 = a5;
        }

        else
        {
          v19 = a4;
        }

        if (v8 == 4)
        {
          v18 = a4;
        }

        if (v8 == 3)
        {
          v19 = a5;
          v20 = a5;
        }

        else
        {
          v20 = v18;
        }

        if (v8 == 2)
        {
          v21 = a5;
        }

        else
        {
          v21 = a4;
        }

        if (v8 == 1)
        {
          v22 = a5;
        }

        else
        {
          v22 = a4;
        }

        if (v8 == 1)
        {
          v23 = a4;
        }

        else
        {
          v23 = v21;
        }

        if (v8 <= 2)
        {
          v24 = v22;
        }

        else
        {
          v24 = v19;
        }

        if (v8 <= 2)
        {
          v25 = v23;
        }

        else
        {
          v25 = v20;
        }

        if (v17 <= a3)
        {
          if (a3 - v17 <= v25)
          {
            goto LABEL_45;
          }
        }

        else if (v17 - a3 <= v24)
        {
          goto LABEL_45;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v8 = -1;
LABEL_45:

  return v8;
}

- (int64_t)_waypointBetweenPreviousOffset:(double)a3 currentOffset:(double)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSDictionary *)self->_waypoints allKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v17 + 1) + 8 * v11) integerValue];
      [(NTKSolarFaceView *)self _percentageForWaypoint:v12];
      v14 = v13 <= a3;
      if (v13 >= a4)
      {
        v14 = 1;
      }

      v15 = v13 <= a4;
      if (v13 >= a3)
      {
        v15 = 1;
      }

      if ((!v14 || !v15) && v12 != -1)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v12 = -1;
  }

  return v12;
}

- (id)_waypointLabelTextForPercentage:(double)a3
{
  v5 = [(NTKSolarFaceView *)self _waypointForPercentage:a3 withSmallThreshold:0.0005 largeThreshold:0.0005];
  if (v5 == -1)
  {
    if (a3 <= 0.5)
    {
      [(NTKSolarFaceView *)self _percentageForWaypoint:1];
      v17 = v16;
      [(NTKSolarFaceView *)self _percentageForWaypoint:2];
      if (v17 != NTKSolarWaypointInvalidPercentage && v18 != NTKSolarWaypointInvalidPercentage)
      {
        if (v17 <= a3)
        {
          if (v17 < a3 && v18 > a3)
          {
            v6 = @"SOLAR_TWILIGHT_MORNING";
            v7 = @"The time between dawn and sunrise";
            goto LABEL_21;
          }

          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      [(NTKSolarFaceView *)self _percentageForWaypoint:4];
      v9 = v8;
      [(NTKSolarFaceView *)self _percentageForWaypoint:5];
      if (v9 != NTKSolarWaypointInvalidPercentage && v10 != NTKSolarWaypointInvalidPercentage)
      {
        if (v9 > a3)
        {
          goto LABEL_18;
        }

        if (v9 < a3 && v10 > a3)
        {
          v6 = @"SOLAR_TWILIGHT_EVENING";
          v7 = @"The time between sunset and dusk";
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:a3];
    if (v20 >= 0.0)
    {
LABEL_18:
      v6 = @"SOLAR_DAYTIME";
      v7 = @"The time between sunrise and sunset";
      goto LABEL_21;
    }

LABEL_20:
    v6 = @"SOLAR_NIGHTTIME";
    v7 = @"The time before dawn and after dusk";
    goto LABEL_21;
  }

  if (v5 != 6)
  {
    waypoints = self->_waypoints;
    v13 = [NSNumber numberWithInteger:v5];
    v14 = [(NSDictionary *)waypoints objectForKeyedSubscript:v13];
    v15 = [v14 localizedName];

    goto LABEL_22;
  }

  v6 = @"SOLAR_SOLAR_MIDNIGHT";
  v7 = @"Solar Midnight";
LABEL_21:
  v15 = [NTKSolarFaceBundle localizedStringForKey:v6 comment:v7];
LABEL_22:

  return v15;
}

- (void)_updateColorCurves
{
  v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v153 = [UIColor colorWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v148 = [UIColor colorWithRed:0.384313725 green:0.48627451 blue:0.643137255 alpha:1.0];
  v154 = [UIColor colorWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v3 = [UIColor colorWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v158 = [UIColor colorWithRed:0.470588235 green:0.768627451 blue:1.0 alpha:1.0];
  v155 = [UIColor colorWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v157 = [UIColor colorWithRed:0.470588235 green:0.509803922 blue:0.788235294 alpha:1.0];
  v4 = [NTKColorCurve alloc];
  v5 = [NTKColorCurveElement alloc];
  LODWORD(v6) = -30.0;
  v147 = v2;
  v7 = [v5 initWithColor:v2 fraction:v6];
  v172[0] = v7;
  v8 = [NTKColorCurveElement alloc];
  LODWORD(v9) = -18.0;
  v10 = [v8 initWithColor:v153 fraction:v9];
  v172[1] = v10;
  v11 = [NTKColorCurveElement alloc];
  LODWORD(v12) = -1084982559;
  v13 = [v11 initWithColor:v148 fraction:v12];
  v172[2] = v13;
  v14 = [NTKColorCurveElement alloc];
  LODWORD(v15) = 18.0;
  v16 = [v14 initWithColor:v154 fraction:v15];
  v172[3] = v16;
  v17 = [NTKColorCurveElement alloc];
  LODWORD(v18) = 30.0;
  v146 = v3;
  v19 = [v17 initWithColor:v3 fraction:v18];
  v172[4] = v19;
  v20 = [NSArray arrayWithObjects:v172 count:5];
  v21 = [v4 initWithColorCurveElements:v20];
  preNoonSolarDiskColorCurve = self->_preNoonSolarDiskColorCurve;
  self->_preNoonSolarDiskColorCurve = v21;

  v23 = [NTKColorCurve alloc];
  v24 = [NTKColorCurveElement alloc];
  LODWORD(v25) = -30.0;
  v26 = [v24 initWithColor:v2 fraction:v25];
  v171[0] = v26;
  v27 = [NTKColorCurveElement alloc];
  LODWORD(v28) = -18.0;
  v29 = [v27 initWithColor:v157 fraction:v28];
  v171[1] = v29;
  v30 = [NTKColorCurveElement alloc];
  LODWORD(v31) = -1084982559;
  v32 = [v30 initWithColor:v155 fraction:v31];
  v171[2] = v32;
  v33 = [NTKColorCurveElement alloc];
  LODWORD(v34) = 18.0;
  v35 = [v33 initWithColor:v158 fraction:v34];
  v171[3] = v35;
  v36 = [NTKColorCurveElement alloc];
  LODWORD(v37) = 30.0;
  v38 = [v36 initWithColor:v3 fraction:v37];
  v171[4] = v38;
  v39 = [NSArray arrayWithObjects:v171 count:5];
  v40 = [v23 initWithColorCurveElements:v39];
  postNoonSolarDiskColorCurve = self->_postNoonSolarDiskColorCurve;
  self->_postNoonSolarDiskColorCurve = v40;

  v42 = [UIColor colorWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v145 = [UIColor colorWithRed:0.803921569 green:0.549019608 blue:0.815686275 alpha:1.0];
  v151 = [UIColor colorWithRed:0.803921569 green:0.674509804 blue:0.4 alpha:1.0];
  v150 = [UIColor colorWithRed:0.552941176 green:0.658823529 blue:0.22745098 alpha:1.0];
  v43 = [UIColor colorWithRed:0.588235294 green:0.529411765 blue:0.352941176 alpha:1.0];
  v156 = [UIColor colorWithRed:0.619607843 green:0.4 blue:0.478431373 alpha:1.0];
  v149 = [UIColor colorWithRed:0.898039216 green:0.588235294 blue:0.149019608 alpha:1.0];
  v152 = [UIColor colorWithRed:0.803921569 green:0.360784314 blue:0.184313725 alpha:1.0];
  v141 = [NTKColorCurve alloc];
  v44 = [NTKColorCurveElement alloc];
  LODWORD(v45) = -30.0;
  v144 = v42;
  v46 = [v44 initWithColor:v42 fraction:v45];
  v170[0] = v46;
  v47 = [NTKColorCurveElement alloc];
  LODWORD(v48) = -18.0;
  v49 = [v47 initWithColor:v145 fraction:v48];
  v170[1] = v49;
  v50 = [NTKColorCurveElement alloc];
  LODWORD(v51) = -1084982559;
  v52 = [v50 initWithColor:v151 fraction:v51];
  v170[2] = v52;
  v53 = [NTKColorCurveElement alloc];
  LODWORD(v54) = 18.0;
  v55 = [v53 initWithColor:v150 fraction:v54];
  v170[3] = v55;
  v56 = [NTKColorCurveElement alloc];
  LODWORD(v57) = 30.0;
  v58 = v43;
  v143 = v43;
  v59 = [v56 initWithColor:v43 fraction:v57];
  v170[4] = v59;
  v60 = [NSArray arrayWithObjects:v170 count:5];
  v61 = [v141 initWithColorCurveElements:v60];
  preNoonHorizonGradientColorCurve = self->_preNoonHorizonGradientColorCurve;
  self->_preNoonHorizonGradientColorCurve = v61;

  v63 = [NTKColorCurve alloc];
  v64 = [NTKColorCurveElement alloc];
  LODWORD(v65) = -30.0;
  v66 = [v64 initWithColor:v42 fraction:v65];
  v169[0] = v66;
  v67 = [NTKColorCurveElement alloc];
  LODWORD(v68) = -18.0;
  v69 = [v67 initWithColor:v152 fraction:v68];
  v169[1] = v69;
  v70 = [NTKColorCurveElement alloc];
  LODWORD(v71) = -1084982559;
  v72 = [v70 initWithColor:v149 fraction:v71];
  v169[2] = v72;
  v73 = [NTKColorCurveElement alloc];
  LODWORD(v74) = 18.0;
  v75 = [v73 initWithColor:v156 fraction:v74];
  v169[3] = v75;
  v76 = [NTKColorCurveElement alloc];
  LODWORD(v77) = 30.0;
  v78 = [v76 initWithColor:v58 fraction:v77];
  v169[4] = v78;
  v79 = [NSArray arrayWithObjects:v169 count:5];
  v80 = [v63 initWithColorCurveElements:v79];
  postNoonHorizonGradientColorCurve = self->_postNoonHorizonGradientColorCurve;
  self->_postNoonHorizonGradientColorCurve = v80;

  v164 = 0;
  v162 = 0u;
  v163 = 0u;
  v161 = 0u;
  memset(v160, 0, sizeof(v160));
  v82 = [(NTKSolarFaceView *)self device];
  sub_9538(v82, v160);

  v83 = v161;
  v84 = v162;
  v85 = v163;
  v86 = [NTKFloatCurve alloc];
  v87 = [[NTKFloatCurveElement alloc] initWithFloatValue:*&v83 fraction:-30.0];
  v168[0] = v87;
  v88 = [[NTKFloatCurveElement alloc] initWithFloatValue:*(&v83 + 1) fraction:-18.0];
  v168[1] = v88;
  v89 = [[NTKFloatCurveElement alloc] initWithFloatValue:*&v84 fraction:-0.83];
  v168[2] = v89;
  v90 = [[NTKFloatCurveElement alloc] initWithFloatValue:*(&v84 + 1) fraction:30.0];
  v168[3] = v90;
  v91 = [NSArray arrayWithObjects:v168 count:4];
  v92 = [v86 initWithFloatCurveElements:v91];
  preNoonHorizonHeightCurve = self->_preNoonHorizonHeightCurve;
  self->_preNoonHorizonHeightCurve = v92;

  v94 = [NTKFloatCurve alloc];
  v95 = [[NTKFloatCurveElement alloc] initWithFloatValue:*&v83 fraction:-30.0];
  v167[0] = v95;
  v96 = [[NTKFloatCurveElement alloc] initWithFloatValue:*(&v85 + 1) fraction:-18.0];
  v167[1] = v96;
  v97 = [[NTKFloatCurveElement alloc] initWithFloatValue:*&v85 fraction:-0.83];
  v167[2] = v97;
  v98 = [[NTKFloatCurveElement alloc] initWithFloatValue:*(&v84 + 1) fraction:30.0];
  v167[3] = v98;
  v99 = [NSArray arrayWithObjects:v167 count:4];
  v100 = [v94 initWithFloatCurveElements:v99];
  postNoonHorizonHeightCurve = self->_postNoonHorizonHeightCurve;
  self->_postNoonHorizonHeightCurve = v100;

  v142 = NTKInterpolateBetweenColors();
  v140 = NTKInterpolateBetweenColors();
  v102 = [NTKColorCurve alloc];
  v103 = [NTKColorCurveElement alloc];
  LODWORD(v104) = -30.0;
  v105 = [v103 initWithColor:v153 fraction:v104];
  v166[0] = v105;
  v106 = [NTKColorCurveElement alloc];
  LODWORD(v107) = -18.0;
  v108 = [v106 initWithColor:v153 fraction:v107];
  v166[1] = v108;
  v109 = [NTKColorCurveElement alloc];
  LODWORD(v110) = -1084982559;
  v111 = [v109 initWithColor:v151 fraction:v110];
  v166[2] = v111;
  v112 = [NTKColorCurveElement alloc];
  LODWORD(v113) = 18.0;
  v114 = [v112 initWithColor:v142 fraction:v113];
  v166[3] = v114;
  v115 = [NTKColorCurveElement alloc];
  LODWORD(v116) = 30.0;
  v117 = [v115 initWithColor:v146 fraction:v116];
  v166[4] = v117;
  v118 = [NSArray arrayWithObjects:v166 count:5];
  v119 = [v102 initWithColorCurveElements:v118];
  preNoonComplicationColorCurve = self->_preNoonComplicationColorCurve;
  self->_preNoonComplicationColorCurve = v119;

  v139 = [NTKColorCurve alloc];
  v121 = [NTKColorCurveElement alloc];
  LODWORD(v122) = -30.0;
  v123 = [v121 initWithColor:v157 fraction:v122];
  v165[0] = v123;
  v124 = [NTKColorCurveElement alloc];
  LODWORD(v125) = -18.0;
  v126 = [v124 initWithColor:v157 fraction:v125];
  v165[1] = v126;
  v127 = [NTKColorCurveElement alloc];
  LODWORD(v128) = -1084982559;
  v129 = [v127 initWithColor:v149 fraction:v128];
  v165[2] = v129;
  v130 = [NTKColorCurveElement alloc];
  LODWORD(v131) = 18.0;
  v132 = [v130 initWithColor:v140 fraction:v131];
  v165[3] = v132;
  v133 = [NTKColorCurveElement alloc];
  LODWORD(v134) = 30.0;
  v135 = [v133 initWithColor:v146 fraction:v134];
  v165[4] = v135;
  v136 = [NSArray arrayWithObjects:v165 count:5];
  v137 = [v139 initWithColorCurveElements:v136];
  postNoonComplicationColorCurve = self->_postNoonComplicationColorCurve;
  self->_postNoonComplicationColorCurve = v137;
}

- (void)_updateSolarHaloWithPercentage:(double)a3
{
  [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:?];
  v6 = sub_6B24(self->_preNoonSolarDiskColorCurve, self->_postNoonSolarDiskColorCurve, a3, v5);
  [(UIView *)self->_solarDiskHaloMaskView setBackgroundColor:v6];
  [(UIView *)self->_horizonView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:a3];
  v16 = v15;
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  MinY = CGRectGetMinY(v29);
  v18 = MinY - v16;
  [(UIView *)self->_belowHorizonView frame];
  v19 = vabdd_f64(MinY, v16) / (CGRectGetHeight(v30) * 0.9);
  v20 = [(NTKSolarFaceView *)self device];
  sub_9538(v20, v27);
  v21 = v28;

  v22 = 1.0 - v19;
  if (1.0 - v19 < 0.0)
  {
    v22 = 0.0;
  }

  if (v18 >= 0.0)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = v22;
  }

  v24 = (v19 + 1.0) * (v21 * 0.78);
  if (v24 > v21 * 1.05)
  {
    v24 = v21 * 1.05;
  }

  solarDiskHaloView = self->_solarDiskHaloView;
  CGAffineTransformMakeScale(&v26, v24, v24);
  [(UIImageView *)solarDiskHaloView setTransform:&v26];
  [(UIImageView *)self->_solarDiskHaloView setAlpha:v23];
}

- (void)_updateSolarHorizonGradientAlphaWithPercentage:(double)a3
{
  [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:a3];

  [(NTKSolarFaceView *)self _updateSolarHorizonGradientAlphaWithSolarDiskCenter:?];
}

- (void)_updateSolarHorizonGradientAlphaWithSolarDiskCenter:(CGPoint)a3
{
  y = a3.y;
  [(UIView *)self->_horizonView frame];
  MinY = CGRectGetMinY(v10);
  v6 = 20.0;
  if (MinY - y < 0.0)
  {
    v6 = 14.0;
  }

  v7 = fmin(fmax(1.0 - vabdd_f64(MinY, y) / v6, 0.0), 1.0);
  horizonGradientContainerView = self->_horizonGradientContainerView;

  [(UIView *)horizonGradientContainerView setAlpha:v7];
}

- (void)_updateSolarHorizonGradientColorWithPercentage:(double)a3
{
  [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:?];
  v6 = v5;
  v15 = sub_6B24(self->_preNoonHorizonGradientColorCurve, self->_postNoonHorizonGradientColorCurve, a3, v5);
  postNoonHorizonHeightCurve = self->_postNoonHorizonHeightCurve;
  v8 = self->_preNoonHorizonHeightCurve;
  v9 = postNoonHorizonHeightCurve;
  v10 = v9;
  if (a3 <= 0.25)
  {
    v9 = v8;
  }

  else if (a3 < 0.75)
  {
    [(NTKFloatCurve *)v8 floatValueForFraction:v6];
    [(NTKFloatCurve *)v10 floatValueForFraction:v6];
    CLKInterpolateBetweenFloatsClipped();
    goto LABEL_6;
  }

  [(NTKFloatCurve *)v9 floatValueForFraction:v6];
LABEL_6:

  v11 = [(NTKSolarFaceView *)self device];
  CLKFloorForDevice();

  [(UIImageView *)self->_horizonGradientView frame];
  [(UIImageView *)self->_horizonGradientView setFrame:?];
  v12 = [(UIImageView *)self->_horizonGradientView layer];
  [v12 displayIfNeeded];

  v13 = [(UIImageView *)self->_horizonGradientView layer];
  v14 = v15;
  [v13 setContentsMultiplyColor:{objc_msgSend(v15, "CGColor")}];
}

- (void)_updateComplicationColorWithPercentage:(double)a3
{
  [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:?];
  v6 = sub_6B24(self->_preNoonComplicationColorCurve, self->_postNoonComplicationColorCurve, a3, v5);
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setForegroundColor:v6 faceView:self];
}

- (double)_solarDiskRestPercentage
{
  solarTimeModel = self->_solarTimeModel;
  v3 = [(NTKSolarFaceView *)self currentDisplayDate];
  [(NTKSolarTimeModel *)solarTimeModel percentageThroughPeriodInCurrentSolarDayForDate:v3];
  v5 = v4;

  return v5;
}

- (void)_solarDiskPercentageChanged:(double)a3
{
  [(NTKSolarFaceView *)self _updateSolarHaloWithPercentage:?];
  [(NTKSolarFaceView *)self _updateSolarHorizonGradientColorWithPercentage:a3];
  [(NTKSolarFaceView *)self _updateComplicationColorWithPercentage:a3];
  [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:a3];
  v6 = v5;
  v8 = v7;
  [(NTKSolarFaceView *)self _updateSolarHorizonGradientAlphaWithSolarDiskCenter:?];
  [(NTKSolarDiskView *)self->_solarDiskView setCenter:v6, v8];
  self->_currentSolarDiskPercentage = a3;

  [(NTKSolarFaceView *)self _updateSolarDiskHaloViewPosition];
}

- (void)_updateSolarDiskHaloViewPosition
{
  [(NTKSolarDiskView *)self->_solarDiskView center];
  v4 = v3;
  v6 = v5;
  v16 = [(NSDictionary *)self->_waypointViews objectForKeyedSubscript:&off_2DA90];
  v7 = [(NSDictionary *)self->_waypointViews objectForKeyedSubscript:&off_2DAF0];
  [(UIView *)self->_horizonView frame];
  v9 = v8;
  if (v16)
  {
    [v16 frame];
    v10 = fmax(CGRectGetMidX(v18), 0.0);
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = 0.0;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  [v7 frame];
  MidX = CGRectGetMidX(v19);
  [(UIView *)self->_horizonView frame];
  if (MidX > CGRectGetMidX(v20))
  {
    v9 = MidX;
  }

LABEL_5:
  if (v10 >= v4)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  if (v9 <= v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  [(UIView *)self->_horizonView frame];
  MinY = CGRectGetMinY(v21);
  if (v6 <= MinY)
  {
    v15 = v6;
  }

  else
  {
    v15 = MinY;
  }

  [(UIImageView *)self->_solarDiskHaloView setCenter:v13, v15];
}

- (void)_animateSolarDiskToRestPercentageIfNeededForViewMode:(int64_t)a3
{
  if (a3 != 2)
  {
    solarDiskOverridePercentage = self->_solarDiskOverridePercentage;
    if (solarDiskOverridePercentage != -1.0)
    {
      [(NTKSolarFaceView *)self _solarDiskRestPercentage];

      [(NTKSolarFaceView *)self _animateSolarDiskFromPercentage:@"_NTKSolarDiskReturnToRestAnimatingReason" toPercentage:solarDiskOverridePercentage reason:v5];
    }
  }
}

- (id)_createWaypointView
{
  v2 = [(NTKSolarFaceView *)self device];
  sub_9538(v2, v8);
  v3 = v9;

  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, v3, v3}];
  v5 = [v4 layer];
  [v5 setCornerRadius:v3 * 0.5];

  v6 = +[UIColor grayColor];
  [v4 setBackgroundColor:v6];

  [v4 setAlpha:0.0];

  return v4;
}

- (CGPoint)_pointOnSolarPathForPercentage:(double)a3
{
  v4 = [(NTKBezierPathView *)self->_solarBezierPathView pointModel];
  [v4 pointOnPathForHorizontalPercentage:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_updateSolarPathForChangedLocation:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Solar _updateSolarPathForChangedLocation with location:%@", &v8, 0xCu);
  }

  v6 = [(NTKSolarTimeModel *)self->_solarTimeModel referenceLocation];
  [(NTKSolarTimeModel *)self->_solarTimeModel setReferenceLocation:v4];
  [(NTKSolarFaceView *)self _updateWaypoints];
  v7 = [(NTKSolarFaceView *)self _createSolarBezierPath];
  [(NTKSolarFaceView *)self _setSolarBezierPath:v7 animated:v6 != 0];
}

- (void)_updateSolarPathForChangedDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Solar _updateSolarPathForChangedDate with date:%@", &buf, 0xCu);
  }

  v8 = [(NTKSolarTimeModel *)self->_solarTimeModel includesDate:v6];
  v9 = [(NTKSolarFaceView *)self viewMode];
  v10 = [(NTKSolarTimeModel *)self->_solarTimeModel endDateForReferenceDate];
  [v10 timeIntervalSinceDate:v6];
  v12 = v11;

  [(NTKSolarTimeModel *)self->_solarTimeModel updateModelWithDate:v6];
  if (v8)
  {
    if (v9 != &dword_0 + 2)
    {
      [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForDate:v6];
      [(NTKSolarFaceView *)self _solarDiskPercentageChanged:?];
    }
  }

  else
  {
    [(NTKSolarFaceView *)self _updateWaypoints];
    if (v9 == &dword_0 + 2)
    {
      *(self + 368) &= ~8u;
    }

    [(NTKSolarFaceView *)self setUserInteractionEnabled:0];
    [(NTKSolarFaceView *)self bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(NTKBezierPathView *)self->_solarBezierPathView path];
    v22 = [[NTKBezierPathView alloc] initWithFrame:{v14, v16, v18, v20}];
    [v22 setPath:v21];
    v23 = +[UIColor whiteColor];
    v24 = [v23 colorWithAlphaComponent:0.5];
    [v22 setPathColor:v24];

    [(NTKBezierPathView *)self->_solarBezierPathView addSubview:v22];
    v25 = [(NTKSolarFaceView *)self _createSolarBezierPath];
    [(NTKSolarFaceView *)self _setSolarBezierPath:v25 animated:0];

    [(UIView *)self->_horizonView bounds];
    CGRectGetWidth(v42);
    horizonView = self->_horizonView;
    [(UIView *)horizonView frame];
    CLKAlterRect();
    [(UIView *)horizonView setFrame:?];
    [(NTKSolarFaceView *)self setUserInteractionEnabled:0];
    [(NTKSolarFaceView *)self _beginAnimatingForReason:@"_NTKSolarPathDateChangeAnimatingReason"];
    v43.origin.x = v14;
    v43.origin.y = v16;
    v43.size.width = v18;
    v43.size.height = v20;
    Width = CGRectGetWidth(v43);
    if (v12 >= 0.0)
    {
      v28 = -Width;
    }

    else
    {
      v28 = Width;
    }

    solarBezierPathView = self->_solarBezierPathView;
    CGAffineTransformMakeTranslation(&buf, v28, 0.0);
    [(NTKBezierPathView *)solarBezierPathView setTransform:&buf];
    CGAffineTransformMakeTranslation(&buf, -v28, 0.0);
    [v22 setTransform:&buf];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_78B0;
    v38[3] = &unk_2C980;
    v38[4] = self;
    v40 = v28;
    v30 = v22;
    v39 = v30;
    v31 = objc_retainBlock(v38);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_7980;
    v34[3] = &unk_2C9A8;
    v34[4] = self;
    v37 = v28;
    v32 = v30;
    v35 = v32;
    v36 = v6;
    v33 = objc_retainBlock(v34);
    if (v4)
    {
      [UIView animateWithDuration:0 delay:v31 options:v33 animations:0.5 completion:0.0];
    }

    else
    {
      (v31[2])(v31);
      (v33[2])(v33, 1);
    }
  }
}

- (id)_createSolarBezierPath
{
  [(NTKSolarFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *&CGAffineTransformIdentity.c;
  *&v26.a = *&CGAffineTransformIdentity.a;
  *&v26.c = v11;
  *&v26.tx = *&CGAffineTransformIdentity.tx;
  v12 = [(NTKSolarFaceView *)self device];
  NTKDigitalTimeLabelDefaultFrameBottom();
  v14 = v13;

  v15 = v14 + 10.0;
  v16 = self->_labelFontLineHeight + 4.0;
  v17 = [(NTKSolarFaceView *)self device];
  sub_9538(v17, v24);
  v18 = v25;

  CGAffineTransformMakeTranslation(&v26, 0.0, v15);
  [(NTKSolarTimeModel *)self->_solarTimeModel setUsePlaceholderData:(*(self + 368) & 4) == 0];
  v19 = [[NTKSolarPath alloc] initWithBounds:self->_solarTimeModel solarTimeModel:0 verticallyFitsPathToBounds:(*(self + 368) & 4) == 0 usePlaceholderData:{v4, v6 + v15, v8, v10 - (v15 + v16 + v18)}];
  solarPath = self->_solarPath;
  self->_solarPath = v19;

  v21 = [(NTKSolarPath *)self->_solarPath bezierPath];
  v23 = v26;
  [v21 applyTransform:&v23];

  return v21;
}

- (void)_setSolarBezierPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSDictionary *)self->_waypointViews allValues];
  [v7 makeObjectsPerformSelector:"removeFromSuperview"];

  waypointViews = self->_waypointViews;
  self->_waypointViews = 0;

  solarBezierPathView = self->_solarBezierPathView;
  v27 = 144;
  v28 = v6;
  if (v4)
  {
    [(NTKBezierPathView *)solarBezierPathView animateToPath:v6 duration:0 curve:0.5];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_7EE8;
    v33[3] = &unk_2C9D0;
    v33[4] = self;
    [UIView animateWithDuration:v33 animations:0.5];
  }

  else
  {
    [(NTKBezierPathView *)solarBezierPathView setPath:v6];
  }

  v10 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(NSDictionary *)self->_waypoints allValues];
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    v15 = NTKSolarWaypointInvalidPercentage;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        [v17 percentageThroughPeriodForWaypointDate];
        if (v18 != v15)
        {
          solarTimeModel = self->_solarTimeModel;
          v20 = [v17 waypointDate];
          [(NTKSolarTimeModel *)solarTimeModel percentageThroughPeriodForDate:v20];
          v22 = v21;

          v23 = [(NTKSolarFaceView *)self _createWaypointView];
          [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:v22];
          [v23 setCenter:?];
          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 type]);
          [v10 setObject:v23 forKeyedSubscript:v24];

          [(UIView *)self->_solarPathObjectContainerView insertSubview:v23 aboveSubview:self->_solarBezierPathView];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v25 = [v10 copy];
  v26 = *&self->NTKDigitalFaceView_opaque[v27];
  *&self->NTKDigitalFaceView_opaque[v27] = v25;
}

- (void)_transitionToViewMode:(int64_t)a3
{
  [(NTKSolarFaceView *)self _layoutHorizonForViewMode:?];
  [(NTKSolarFaceView *)self _layoutSolarPathAndContainerForViewMode:a3];

  [(NTKSolarFaceView *)self _layoutSolarDiskViewForViewMode:a3];
}

- (BOOL)_canEnterInteractiveMode
{
  if ([(NTKSolarFaceView *)self _isAnimating]|| [(NTKSolarFaceView *)self viewMode]&& [(NTKSolarFaceView *)self viewMode]!= &dword_0 + 1)
  {
    return 0;
  }

  return [(NTKSolarFaceView *)self _shouldHandleHardwareEvents];
}

- (void)_interpolateFromViewMode:(int64_t)a3 toViewMode:(int64_t)a4 progress:(double)a5
{
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  [(UILabel *)self->_overrideDateLabel setAlpha:?];
  [(UILabel *)self->_scrubLabel setAlpha:v7];
  [(UILabel *)self->_waypointLabel setAlpha:v7];
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, v7, v7);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSDictionary *)self->_waypointViews allValues];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = v19;
        [v13 setTransform:&v14];
        [v13 setAlpha:v7];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  CLKInterpolateBetweenFloatsClipped();
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setAlpha:self faceView:?];
}

- (void)_prepareForSettingViewMode:(int64_t)a3
{
  if (a3 == 2)
  {
    [(NTKSolarFaceView *)self _updateWaypointLabelForCrownMovement];
  }
}

- (void)_cleanupAfterSettingViewMode:(int64_t)a3
{
  [(UITapGestureRecognizer *)self->_viewModeTapGesture setEnabled:a3 != 1];
  if (NTKStarbearEnabled())
  {
    if (a3 != 2)
    {
LABEL_3:
      [(NTKSolarFaceView *)self _disableCrown];
      goto LABEL_6;
    }
  }

  else if ((a3 | 2) != 2)
  {
    goto LABEL_3;
  }

  [(NTKSolarFaceView *)self _enableCrown];
LABEL_6:
  if (a3 != 2)
  {
    self->_solarDiskOverridePercentage = -1.0;
  }

  [(NTKSolarFaceView *)self _endAnimatingForReason:@"_NTKSolarLayoutAnimatingReason"];
}

- (void)_layoutLegacyDateComplication
{
  v3 = [(NTKSolarFaceView *)self device];
  v4 = [v3 pdrDeviceVersion];

  if (HIWORD(v4) <= 4u)
  {
    if (!self->_dateComplicationLayoutRule)
    {
      [(NTKSolarFaceView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(NTKSolarFaceView *)self device];
      v14 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v13 forDevice:v6, v8, v10, v12];

      v15 = [v14 layoutRule];
      [v15 setHorizontalLayout:0];

      v16 = [v14 layoutRule];
      dateComplicationLayoutRule = self->_dateComplicationLayoutRule;
      self->_dateComplicationLayoutRule = v16;
    }

    [(NTKDateComplicationLabel *)self->_dateComplicationLabel sizeToFit];
    [(NTKSolarFaceView *)self bounds];
    CLKAlterRect();
    [(NTKLayoutRule *)self->_dateComplicationLayoutRule setReferenceFrame:?];
    v18 = self->_dateComplicationLayoutRule;
    [(NTKDateComplicationLabel *)self->_dateComplicationLabel bounds];
    [(NTKLayoutRule *)v18 calculateLayoutFrameForBoundsSize:v19, v20];
    dateComplicationLabel = self->_dateComplicationLabel;

    [(NTKDateComplicationLabel *)dateComplicationLabel setFrame:?];
  }
}

- (void)_layoutHorizonForViewMode:(int64_t)a3
{
  [(NTKSolarFaceView *)self bounds];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v11 = CGRectGetWidth(v45);
  if (a3 > 2)
  {
    v18 = MidY + -0.5;
    goto LABEL_9;
  }

  v12 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&off_2DAA8];
  v13 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&off_2DAD8];
  [v12 percentageThroughPeriodForWaypointDate];
  v14 = NTKSolarWaypointInvalidPercentage;
  if (v15 == NTKSolarWaypointInvalidPercentage)
  {
    [v13 percentageThroughPeriodForWaypointDate];
    if (v19 == v14)
    {
      [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:0.5];
      v38 = v37;
      [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:0.5];
      v18 = v38 + v39;
      goto LABEL_8;
    }

    solarTimeModel = self->_solarTimeModel;
    v17 = v13;
  }

  else
  {
    solarTimeModel = self->_solarTimeModel;
    v17 = v12;
  }

  v20 = [v17 waypointDate];
  [(NTKSolarTimeModel *)solarTimeModel percentageThroughPeriodForDate:v20];
  v22 = v21;

  [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:v22];
  v24 = v23 + 0.5;
  v18 = floorf(v24);
LABEL_8:

LABEL_9:
  v41 = v18;
  [(UIView *)self->_horizonView setFrame:MinX, v18, v11, 0.5];
  [(UIView *)self->_horizonGradientContainerView frame];
  v25 = v11;
  v27 = v26;
  v46.size.height = 0.5;
  v46.origin.x = MinX;
  v46.origin.y = v18;
  v46.size.width = v25;
  MinY = CGRectGetMinY(v46);
  [(UIImageView *)self->_horizonGradientView bounds];
  v30 = MinY - v29;
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v40 = MinX;
  v31 = CGRectGetWidth(v47);
  [(UIImageView *)self->_horizonGradientView bounds];
  [(UIView *)self->_horizonGradientContainerView setFrame:v27, v30, v31];
  horizonGradientView = self->_horizonGradientView;
  [(UIView *)self->_horizonGradientContainerView bounds];
  [(UIImageView *)horizonGradientView setFrame:?];
  [(UIView *)self->_belowHorizonView frame];
  v48.size.height = 0.5;
  v48.origin.x = v40;
  v48.origin.y = v41;
  v48.size.width = v25;
  MaxY = CGRectGetMaxY(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v34 = CGRectGetHeight(v49) - MaxY;
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v35 = CGRectGetWidth(v50);
  belowHorizonView = self->_belowHorizonView;

  [(UIView *)belowHorizonView setFrame:0.0, MaxY, v35, v34];
}

- (void)_layoutSolarPathAndContainerForViewMode:(int64_t)a3
{
  solarPathObjectContainerView = self->_solarPathObjectContainerView;
  [(NTKSolarFaceView *)self bounds];
  [(UIView *)solarPathObjectContainerView setFrame:?];
  solarBezierPathView = self->_solarBezierPathView;
  [(NTKSolarFaceView *)self bounds];
  [(NTKBezierPathView *)solarBezierPathView setFrame:?];
  if (a3 <= 2)
  {
    v7 = self->_solarBezierPathView;
    v8 = *&CGAffineTransformIdentity.c;
    v9[0] = *&CGAffineTransformIdentity.a;
    v9[1] = v8;
    v9[2] = *&CGAffineTransformIdentity.tx;
    [(NTKBezierPathView *)v7 setTransform:v9];
  }
}

- (void)_layoutSolarDiskViewForViewMode:(int64_t)a3
{
  solarDiskView = self->_solarDiskView;
  [(UIView *)self->_horizonView frame];
  [(NTKSolarDiskView *)solarDiskView setHorizonLine:CGRectGetMinY(v9)];
  if (a3 == 1)
  {
    if ([(NTKSolarFaceView *)self _isAnimating])
    {
      goto LABEL_9;
    }

    [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForIdealizedTimeInCurrentSolarDay];
    v6 = self->_solarDiskView;
    goto LABEL_8;
  }

  if (!a3 && (![(NTKSolarFaceView *)self _isAnimating]|| self->_previousViewMode == 3))
  {
    v6 = self->_solarDiskView;
    [(NTKSolarFaceView *)self _solarDiskRestPercentage];
LABEL_8:
    [(NTKSolarFaceView *)self _pointOnSolarPathForPercentage:?];
    [(NTKSolarDiskView *)v6 setCenter:?];
  }

LABEL_9:
  solarDiskHaloMaskView = self->_solarDiskHaloMaskView;
  [(UIImageView *)self->_solarDiskHaloView bounds];
  [(UIView *)solarDiskHaloMaskView setFrame:?];

  [(NTKSolarFaceView *)self _updateSolarDiskHaloViewPosition];
}

- (void)_layoutForegroundContainerView
{
  [(NTKSolarFaceView *)self bounds];
  recta.origin.x = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  *&recta.origin.y = [(UILabel *)self->_overrideDateLabel text];
  overrideDateLabel = self->_overrideDateLabel;
  v11 = sub_83B0();
  [(UILabel *)overrideDateLabel setText:v11];

  [(UILabel *)self->_overrideDateLabel sizeToFit];
  [(UILabel *)self->_overrideDateLabel frame];
  v13 = v12;
  [(UILabel *)self->_overrideDateLabel setText:*&recta.origin.y];
  v14 = [(NTKSolarFaceView *)self device];
  sub_9538(v14, v33);
  v15 = v34;

  v16 = [(NTKSolarFaceView *)self device];
  sub_9538(v16, &recta.size);
  v17 = v32;

  v18 = self->_overrideDateLabel;
  v19 = [(NTKSolarFaceView *)self timeView];
  [v19 frame];
  [(UILabel *)v18 setFrame:v17, v15, CGRectGetMinX(v36) - v17 + -8.0, v13];

  [(UILabel *)self->_scrubLabel setFrame:v17, v9 - v13 - v15, v7 - v17 * 2.0, v13];
  y = CGRectZero.origin.y;
  v37.origin.x = recta.origin.x;
  v37.origin.y = v5;
  v37.size.width = v7;
  v37.size.height = v9;
  CGRectGetWidth(v37);
  v21 = [(NTKBezierPathView *)self->_solarBezierPathView path];
  [v21 bounds];
  CGRectGetMinY(v38);
  [(NTKSolarDiskView *)self->_solarDiskView bounds];
  CGRectGetHeight(v39);

  v22 = [(NTKSolarFaceView *)self device];
  CLKRectCenteredYInRectForDevice();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [(UILabel *)self->_waypointLabel setFrame:v24, v15 + v26, v28, v30];
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v3 _prepareForEditing];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory prepareForEditingForFaceView:self];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKSolarFaceView;
  [(NTKSolarFaceView *)&v3 _cleanupAfterEditing];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory cleanupAfterEditingForFaceView:self];
}

- (void)_adjustUIForBoundsChange
{
  if (*(self + 368))
  {
    v3 = [(NTKSolarFaceView *)self _createSolarBezierPath];
    [(NTKSolarFaceView *)self _setSolarBezierPath:v3 animated:0];

    [(NTKSolarFaceView *)self _layoutHorizonForViewMode:[(NTKSolarFaceView *)self viewMode]];
    [(NTKSolarFaceView *)self _layoutSolarPathAndContainerForViewMode:[(NTKSolarFaceView *)self viewMode]];
    [(NTKSolarFaceView *)self _layoutSolarDiskViewForViewMode:[(NTKSolarFaceView *)self viewMode]];
    [(NTKSolarFaceView *)self _solarDiskIdealizedDatePercentage];

    [(NTKSolarFaceView *)self _solarDiskPercentageChanged:?];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  solarContentView = self->_solarContentView;
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)solarContentView setAlpha:?];
  v7 = [(NTKSolarFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [v7 setAlpha:?];
}

- (void)_configureForEditMode:(int64_t)a3
{
  solarContentView = self->_solarContentView;
  v6 = NTKEditModeBackgroundContentAlpha;
  if (a3 != 1)
  {
    v6 = 1.0;
  }

  [(UIView *)solarContentView setAlpha:v6];
  v7 = [(NTKSolarFaceView *)self timeView];
  v9 = v7;
  v8 = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    v8 = 1.0;
  }

  [v7 setAlpha:v8];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3 > 1)
  {
    p_digitalTimeLabelSmallInUpperRightCornerStyle = &self->_digitalTimeLabelSmallInUpperRightCornerStyle;
    digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelSmallInUpperRightCornerStyle;
    if (digitalTimeLabelSmallInUpperRightCornerStyle)
    {
      goto LABEL_9;
    }

    v17 = [(NTKSolarFaceView *)self device];
    sub_9538(v17, v21);
    v18 = v22;

    if (v18 > 0.0)
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v25 = CGRectInset(v24, v18 * 0.5, 0.0);
      x = v25.origin.x;
      y = v25.origin.y;
      width = v25.size.width;
      height = v25.size.height;
    }

    v11 = [(NTKSolarFaceView *)self device];
    v19 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v11 weight:x forDevice:y, width, height, UIFontWeightSemibold];
    v14 = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
    *p_digitalTimeLabelSmallInUpperRightCornerStyle = v19;
  }

  else
  {
    p_digitalTimeLabelSmallInUpperRightCornerStyle = &self->_digitalTimeLabelDefaultStyle;
    digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelDefaultStyle;
    if (digitalTimeLabelSmallInUpperRightCornerStyle)
    {
      goto LABEL_9;
    }

    v11 = [(NTKSolarFaceView *)self device];
    NTKDigitalTimeLabelStyleWideRightSideMargin();
    v13 = v12;
    v14 = [(NTKSolarFaceView *)self device];
    v15 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v14 applyAdvanceFudge:x forDevice:y, width, height, v13];
    v16 = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
    *p_digitalTimeLabelSmallInUpperRightCornerStyle = v15;
  }

  digitalTimeLabelSmallInUpperRightCornerStyle = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
LABEL_9:

  return digitalTimeLabelSmallInUpperRightCornerStyle;
}

@end