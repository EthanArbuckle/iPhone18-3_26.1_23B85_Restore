@interface PedestrianARInstructionContainerView
- (BOOL)_isLandscape;
- (MNGuidanceARInfo)_currentGuidanceInfo;
- (MNNavigationService)navigationService;
- (NSArray)_continueGuidanceInfos;
- (NSArray)_guidanceInfos;
- (NSArray)_maneuverGuidanceInfos;
- (PedestrianARInstructionContainerView)initWithMapViewDelegate:(id)a3 navigationService:(id)a4;
- (PedestrianARVKMapViewMapDelegate)mapViewDelegate;
- (double)_distanceToCurrentARFeature;
- (double)_iconSideLengthForArrival:(BOOL)a3;
- (id)_arrivalIcon;
- (id)_arrivedContinueGuidanceInfo;
- (id)_arrivedManeuverGuidanceInfo;
- (id)_customComposedStringForCurrentGuidanceInfo;
- (id)_customVariableOverridesForCurrentGuidanceInfo;
- (id)_sortedContinueGuidanceInfos;
- (id)_sortedManeuverGuidanceInfos;
- (id)_stringAttributesForGuidanceInfo:(id)a3 label:(id)a4;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateLabelsForCurrentState;
- (void)_updateUI;
- (void)dealloc;
- (void)layoutSubviews;
- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4;
- (void)mapLayer:(id)a3 guidanceInfoDidUpdate:(id)a4 forFeature:(id)a5;
- (void)mapLayer:(id)a3 updatedFeatures:(id)a4;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PedestrianARInstructionContainerView

- (MNNavigationService)navigationService
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationService);

  return WeakRetained;
}

- (PedestrianARVKMapViewMapDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = "[PedestrianARInstructionContainerView navigationService:didUpdateMatchedLocation:]";
        v17 = 2080;
        v18 = "PedestrianARInstructionContainerView.m";
        v19 = 1024;
        v20 = 559;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v15, 0x3Au);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v11 = sub_10079CBB8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Got matched location update: %@", &v15, 0x16u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)a3 updatedFeatures:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = "[PedestrianARInstructionContainerView mapLayer:updatedFeatures:]";
        v17 = 2080;
        v18 = "PedestrianARInstructionContainerView.m";
        v19 = 1024;
        v20 = 548;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v15, 0x3Au);
      }

      if (sub_100E03634())
      {
        v13 = sub_10006D178();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = +[NSThread callStackSymbols];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v11 = sub_10079CBB8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Features updated: %@", &v15, 0x16u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)a3 guidanceInfoDidUpdate:(id)a4 forFeature:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v12 = dispatch_queue_get_label(0);
  if (label != v12)
  {
    v13 = !label || v12 == 0;
    if (v13 || strcmp(label, v12))
    {
      v16 = sub_10006D178();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136316418;
        v20 = "[PedestrianARInstructionContainerView mapLayer:guidanceInfoDidUpdate:forFeature:]";
        v21 = 2080;
        v22 = "PedestrianARInstructionContainerView.m";
        v23 = 1024;
        *v24 = 539;
        *&v24[4] = 2080;
        *&v24[6] = "dispatch_get_main_queue()";
        v25 = 2080;
        v26 = dispatch_queue_get_label(&_dispatch_main_q);
        v27 = 2080;
        v28 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v19, 0x3Au);
      }

      if (sub_100E03634())
      {
        v17 = sub_10006D178();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = +[NSThread callStackSymbols];
          v19 = 138412290;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  v14 = sub_10079CBB8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v9 mapsShortDescription];
    v19 = 134349570;
    v20 = self;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    *v24 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Guidance info updated: %@ for feature: %@", &v19, 0x20u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136316418;
        v21 = "[PedestrianARInstructionContainerView mapLayer:activeARWalkingFeatureDidUpdate:]";
        v22 = 2080;
        v23 = "PedestrianARInstructionContainerView.m";
        v24 = 1024;
        *v25 = 529;
        *&v25[4] = 2080;
        *&v25[6] = "dispatch_get_main_queue()";
        v26 = 2080;
        v27 = dispatch_queue_get_label(&_dispatch_main_q);
        v28 = 2080;
        v29 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v20, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v20 = 138412290;
          v21 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }
    }
  }

  v11 = [v7 feature];
  if (v11)
  {
    v12 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    v13 = [v7 feature];
    v14 = [v12 guidanceInfoForFeature:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_10079CBB8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 mapsShortDescription];
    v20 = 134349570;
    v21 = self;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    *v25 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Walking feature updated: %@ with guidance info: %@", &v20, 0x20u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (double)_distanceToCurrentARFeature
{
  v3 = [(PedestrianARInstructionContainerView *)self navigationService];
  v4 = [v3 lastLocation];

  if (v4)
  {
    [v4 coordinate];
    v6 = v5;
    v8 = v7;
    v9 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    [v9 currentFeaturePosition];
    v11 = v10;
    v13 = v12;

    GEOCalculateDistance();
    v15 = v14;
    v16 = sub_10079CBB8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = 134350336;
      v22 = self;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = v11;
      v29 = 2048;
      v30 = v13;
      v31 = 2048;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Calculated distance between user location (%f, %f) and feature location (%f, %f): %f", &v21, 0x3Eu);
    }
  }

  else
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "[PedestrianARInstructionContainerView _distanceToCurrentARFeature]";
      v23 = 2080;
      v24 = "PedestrianARInstructionContainerView.m";
      v25 = 1024;
      LODWORD(v26) = 512;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v21, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        v21 = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }

    v16 = sub_10079CBB8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134349056;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}p] We don't know where the user currently is; cannot calculate distance to guidance info", &v21, 0xCu);
    }

    v15 = 1.79769313e308;
  }

  return v15;
}

- (id)_customVariableOverridesForCurrentGuidanceInfo
{
  v3 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  if ([v3 eventType] == 2 && objc_msgSend(v3, "isArrival"))
  {
    v4 = [(PedestrianARInstructionContainerView *)self navigationService];
    v5 = [v4 lastLocation];

    if (v5)
    {
      v6 = [v3 variableOverrides];
      v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

      v8 = [v7 objectForKey:@"{distance}"];

      if (v8)
      {
        [(PedestrianARInstructionContainerView *)self _distanceToCurrentARFeature];
        v10 = v9;
        v11 = sub_10079CBB8();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v7 objectForKey:@"{distance}"];
          [v12 doubleValue];
          v27 = 134349568;
          v28 = self;
          v29 = 2048;
          v30 = v13;
          v31 = 2048;
          v32 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Replacing distance variable override (%f) with: %f", &v27, 0x20u);
        }

        v14 = [NSNumber numberWithDouble:v10];
        [v7 setObject:v14 forKey:@"{distance}"];

        v15 = v7;
      }

      else
      {
        v21 = sub_10006D178();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315650;
          v28 = "[PedestrianARInstructionContainerView _customVariableOverridesForCurrentGuidanceInfo]";
          v29 = 2080;
          v30 = "PedestrianARInstructionContainerView.m";
          v31 = 1024;
          LODWORD(v32) = 494;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v27, 0x1Cu);
        }

        if (sub_100E03634())
        {
          v22 = sub_10006D178();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = +[NSThread callStackSymbols];
            v27 = 138412290;
            v28 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
          }
        }

        v24 = sub_10079CBB8();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v3 variableOverrides];
          v27 = 134349314;
          v28 = self;
          v29 = 2112;
          v30 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}p] Arrival guidance info does not have distance variable override (%@); falling back to default variable overrides", &v27, 0x16u);
        }

        v15 = [v3 variableOverrides];
      }

      v16 = v15;
    }

    else
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315650;
        v28 = "[PedestrianARInstructionContainerView _customVariableOverridesForCurrentGuidanceInfo]";
        v29 = 2080;
        v30 = "PedestrianARInstructionContainerView.m";
        v31 = 1024;
        LODWORD(v32) = 487;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v27, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          v27 = 138412290;
          v28 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
        }
      }

      v20 = sub_10079CBB8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = 134349056;
        v28 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}p] Guidance info is arrival but we don't know where the user currently is; falling back to default variable overrides", &v27, 0xCu);
      }

      v16 = [v3 variableOverrides];
    }
  }

  else
  {
    v16 = [v3 variableOverrides];
  }

  return v16;
}

- (id)_customComposedStringForCurrentGuidanceInfo
{
  v2 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  v3 = [v2 instructionString];
  if ([v2 eventType] != 2 || !objc_msgSend(v2, "isArrival"))
  {
    goto LABEL_26;
  }

  v4 = [(PedestrianARInstructionContainerView *)self navigationService];
  v5 = [v4 lastLocation];

  if (!v5)
  {
    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v54 = "[PedestrianARInstructionContainerView _customComposedStringForCurrentGuidanceInfo]";
      v55 = 2080;
      v56 = "PedestrianARInstructionContainerView.m";
      v57 = 1024;
      LODWORD(v58) = 446;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v33 = sub_10006D178();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v54 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v35 = sub_10079CBB8();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v54 = self;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%{public}p] Guidance info is arrival but we don't know where the user currently is; falling back to default variable overrides", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v6 = [v3 defaultOptions];
  v7 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v8 = [v6 arguments];
  v9 = [v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v42 = v6;
    v43 = v5;
    v44 = v3;
    v45 = v2;
    v11 = 0;
    v12 = *v50;
    v13 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v46 = *v50;
    do
    {
      v14 = 0;
      v47 = v10;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        if ([v15 type] == 1)
        {
          [(PedestrianARInstructionContainerView *)self _distanceToCurrentARFeature];
          v17 = v16;
          v18 = sub_10079CBB8();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v15 distanceFormat];
            v20 = [v19 overrideValue];
            [v13[474] meters];
            v21 = v7;
            v23 = v22 = v8;
            [v20 measurementByConvertingToUnit:v23];
            v25 = v24 = v13;
            [v25 doubleValue];
            *buf = 134349568;
            v54 = self;
            v55 = 2048;
            v56 = v26;
            v57 = 2048;
            v58 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Replacing distance variable override (%f) with: %f", buf, 0x20u);

            v13 = v24;
            v8 = v22;
            v7 = v21;
            v12 = v46;
            v10 = v47;
          }

          v27 = [NSMeasurement alloc];
          v28 = [v13[474] meters];
          v29 = [v27 initWithDoubleValue:v28 unit:v17];
          v30 = [v15 distanceFormat];
          [v30 setOverrideValue:v29];

          v11 = 1;
        }

        [v7 addObject:v15];
        v14 = v14 + 1;
      }

      while (v10 != v14);
      v10 = [v8 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v10);

    v3 = v44;
    v2 = v45;
    v6 = v42;
    v5 = v43;
    if (v11)
    {
      [v42 setArguments:v7];
      v31 = [v44 composedStringWithOptions:v42];

      v3 = v31;
LABEL_26:
      v36 = v3;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v38 = sub_10006D178();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v54 = "[PedestrianARInstructionContainerView _customComposedStringForCurrentGuidanceInfo]";
    v55 = 2080;
    v56 = "PedestrianARInstructionContainerView.m";
    v57 = 1024;
    LODWORD(v58) = 470;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v39 = sub_10006D178();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v54 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v41 = sub_10079CBB8();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    v54 = self;
    v55 = 2112;
    v56 = v3;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%{public}p] Arrival guidance info does not have distance variable override (%@); falling back to default string", buf, 0x16u);
  }

  v36 = v3;
LABEL_27:

  return v36;
}

- (double)_iconSideLengthForArrival:(BOOL)a3
{
  v3 = a3;
  v4 = [(PedestrianARInstructionContainerView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = sub_10008FB5C(v5, UIContentSizeCategoryExtraExtraExtraLarge);

  result = 32.0;
  if (v3)
  {
    result = 34.0;
  }

  v8 = 42.0;
  if (v3)
  {
    v8 = 44.0;
  }

  if (v6 == 1)
  {
    return v8;
  }

  return result;
}

- (BOOL)_isLandscape
{
  [(PedestrianARInstructionContainerView *)self frame];
  Width = CGRectGetWidth(v5);
  [(PedestrianARInstructionContainerView *)self frame];
  return Width > CGRectGetHeight(v6);
}

- (id)_arrivedManeuverGuidanceInfo
{
  v3 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  v4 = v3;
  if (v3 && [v3 isArrival])
  {
    v23 = [MNGuidanceARInfo alloc];
    v5 = [v4 eventType];
    v6 = [v4 maneuverType];
    v7 = [(PedestrianARInstructionContainerView *)self route];
    v8 = [v7 destination];
    v9 = [v8 navDisplayName];
    v10 = [v9 _geo_formattedString];
    v11 = [v4 variableOverrides];
    v12 = [v4 arrowLabel];
    [v4 locationCoordinate];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v4 maneuverRoadName];
    [v4 heading];
    v21 = [v23 initWithEventID:0 type:v5 maneuverType:v6 instruction:v10 variableOverrides:v11 arrowLabel:v12 locationCoordinate:v14 maneuverRoadName:v16 heading:v18 stepIndex:{v20, v19, objc_msgSend(v4, "stepIndex")}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_arrivedContinueGuidanceInfo
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Pedestrian_AR_arrived" value:@"localized string not found" table:0];

  v4 = [MNGuidanceARInfo alloc];
  v5 = [v3 _geo_formattedString];
  v6 = [v4 initWithEventID:0 type:1 maneuverType:18 instruction:v5 variableOverrides:0 arrowLabel:0 locationCoordinate:-180.0 maneuverRoadName:-180.0 heading:1.79769313e308 stepIndex:{0.0, 0, 0}];

  return v6;
}

- (id)_arrivalIcon
{
  v3 = [(PedestrianARInstructionContainerView *)self route];
  v4 = [v3 destination];
  v5 = [v4 geoMapItem];

  if (v5)
  {
    v6 = [[MKMapItem alloc] initWithGeoMapItem:v5 isPlaceHolderPlace:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v8 = [MKMapItem _maps_markerImageForMapItem:v6 scale:3 size:1 useMarkerFallback:?];

  if (v8)
  {
    [(PedestrianARInstructionContainerView *)self _iconSideLengthForArrival:1];
    v10 = v9;
    v14.width = v9 + 4.0;
    v14.height = v10;
    UIGraphicsBeginImageContextWithOptions(v14, 0, 0.0);
    [v8 drawInRect:{2.0, 0.0, v10, v10}];
    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_stringAttributesForGuidanceInfo:(id)a3 label:(id)a4
{
  v6 = a3;
  v29[0] = MKServerFormattedStringArtworkArrowFillColorAttributeKey;
  v7 = a4;
  v8 = +[UIColor whiteColor];
  v30[0] = v8;
  v29[1] = MKServerFormattedStringArtworkJunctionFillColorAttributeKey;
  v9 = +[UIColor systemWhiteColor];
  v10 = [v9 colorWithAlphaComponent:0.3];
  v30[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = [v11 mutableCopy];
  v13 = [v7 font];

  [v12 setObject:v13 forKey:NSFontAttributeName];
  v14 = objc_alloc_init(NSMutableParagraphStyle);
  [v14 setLineBreakStrategy:1];
  [v12 setObject:v14 forKey:NSParagraphStyleAttributeName];
  if ([v6 eventType] == 2 && objc_msgSend(v6, "isArrival"))
  {
    v15 = [(PedestrianARInstructionContainerView *)self _arrivalIcon];
    if (v15)
    {
      v16 = v15;
      v17 = sub_10079CBB8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = 134349314;
        v24 = self;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}p] Generated arrival icon for guidance info: %@", &v23, 0x16u);
      }

      [v12 setObject:v16 forKey:MKServerFormattedStringArtworkArrivalIconImageKey];
      [(PedestrianARInstructionContainerView *)self _iconSideLengthForArrival:1];
      v18 = [NSNumber numberWithDouble:?];
      [v12 setObject:v18 forKey:MKServerFormattedStringArtworkSideLengthAttributeKey];
    }

    else
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315650;
        v24 = "[PedestrianARInstructionContainerView _stringAttributesForGuidanceInfo:label:]";
        v25 = 2080;
        v26 = "PedestrianARInstructionContainerView.m";
        v27 = 1024;
        v28 = 365;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v23, 0x1Cu);
      }

      if (sub_100E03634())
      {
        v21 = sub_10006D178();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = +[NSThread callStackSymbols];
          v23 = 138412290;
          v24 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
        }
      }

      v16 = sub_10079CBB8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = 134349314;
        v24 = self;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}p] Could not generate arrival icon for guidance info: %@", &v23, 0x16u);
      }
    }
  }

  else
  {
    [(PedestrianARInstructionContainerView *)self _iconSideLengthForArrival:0];
    v16 = [NSNumber numberWithDouble:?];
    [v12 setObject:v16 forKey:MKServerFormattedStringArtworkSideLengthAttributeKey];
  }

  return v12;
}

- (void)_updateLabelsForCurrentState
{
  v3 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  if (v3)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
  v6 = [v5 firstObject];
  if (v6)
  {
    v4 = v6;

    goto LABEL_6;
  }

  v7 = [(PedestrianARInstructionContainerView *)self _sortedContinueGuidanceInfos];
  v4 = [v7 firstObject];

  if (v4)
  {
LABEL_6:
    if ([v4 eventType] == 1)
    {
      v8 = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
      v9 = [v8 firstObject];
LABEL_8:

LABEL_29:
      v26 = sub_10079CBB8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v4 mapsShortDescription];
        v28 = [v9 mapsShortDescription];
        *buf = 134349570;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        *&buf[22] = 2112;
        v92 = *&v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Will display instruction text for current guidance info: %@, next guidance info: %@", buf, 0x20u);
      }

      IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
      if ([v4 eventType] != 1 || (objc_msgSend(v4, "maneuverType") == 17 || objc_msgSend(v4, "maneuverType") == 85) && !v9)
      {
        v37 = [(PedestrianARInstructionContainerView *)self topLabel];
        [v37 setAttributedText:0];

        v38 = [v4 instructionString];

        if (v38)
        {
          v39 = [(PedestrianARInstructionContainerView *)self _customComposedStringForCurrentGuidanceInfo];
          v40 = [[MKServerFormattedString alloc] initWithComposedString:v39];
          v41 = sub_10079CBB8();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            if ([v4 maneuverType] == 17)
            {
              v42 = @"StartOn";
            }

            else if ([v4 maneuverType] == 85)
            {
              v42 = @"Resume";
            }

            else
            {
              v42 = @"Maneuver";
            }

            v44 = [v4 mapsLongDescription];
            v45 = [v4 instructionString];
            *buf = 134350082;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2112;
            v92 = *&v44;
            v93 = 2112;
            v94 = v45;
            v95 = 2112;
            v96 = v39;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "[%{public}p] Configured for %@ guidance type with maneuver guidance info: %@, original string: %@, custom override string: %@", buf, 0x34u);
          }
        }

        else
        {
          v43 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
          if (v4 == v43)
          {
            [(PedestrianARInstructionContainerView *)self _customVariableOverridesForCurrentGuidanceInfo];
          }

          else
          {
            [v4 variableOverrides];
          }
          v39 = ;

          v60 = [MKServerFormattedStringParameters alloc];
          buf[0] = 1;
          memset(&buf[1], 0, 17);
          buf[18] = IsRightToLeft;
          *&buf[19] = 0;
          buf[23] = 0;
          v92 = 0.0;
          v41 = [v60 initWithOptions:buf variableOverrides:v39];
          v61 = [MKServerFormattedString alloc];
          v62 = [v4 instruction];
          v40 = [v61 initWithGeoServerString:v62 parameters:v41];

          v63 = sub_10079CBB8();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            if ([v4 maneuverType] == 17)
            {
              v64 = @"StartOn";
            }

            else if ([v4 maneuverType] == 85)
            {
              v64 = @"Resume";
            }

            else
            {
              v64 = @"Maneuver";
            }

            v65 = [v4 mapsLongDescription];
            v66 = [v4 variableOverrides];
            *buf = 134350082;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v64;
            *&buf[22] = 2112;
            v92 = *&v65;
            v93 = 2112;
            v94 = v66;
            v95 = 2112;
            v96 = v39;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "[%{public}p] Configured for %@ guidance type with maneuver guidance info: %@, maneuver variable overrides: %@, custom variable overrides: %@", buf, 0x34u);
          }
        }

        v67 = [(PedestrianARInstructionContainerView *)self bottomLabel];
        v46 = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:v4 label:v67];

        v68 = [v40 multiPartAttributedStringWithAttributes:v46];
        v48 = [v68 attributedString];

        v50 = [(PedestrianARInstructionContainerView *)self bottomLabel];
        [v50 setAttributedText:v48];
      }

      else
      {
        v30 = [MKServerFormattedStringParameters alloc];
        v31 = [v4 variableOverrides];
        buf[0] = 1;
        memset(&buf[1], 0, 17);
        buf[18] = IsRightToLeft;
        *&buf[19] = 0;
        buf[23] = 0;
        v92 = 0.0;
        v32 = [v30 initWithOptions:buf variableOverrides:v31];

        v33 = [v4 instructionString];

        v34 = [MKServerFormattedString alloc];
        v87 = v32;
        if (v33)
        {
          v35 = [v4 instructionString];
          v36 = [v34 initWithComposedString:v35];
        }

        else
        {
          v35 = [v4 instruction];
          v36 = [v34 initWithGeoServerString:v35 parameters:v32];
        }

        v46 = v36;

        v47 = [(PedestrianARInstructionContainerView *)self topLabel];
        v48 = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:v4 label:v47];

        v49 = [v46 multiPartAttributedStringWithAttributes:v48];
        v50 = [v49 attributedString];

        v51 = [(PedestrianARInstructionContainerView *)self topLabel];
        [v51 setAttributedText:v50];

        v88 = v9;
        if (v9)
        {
          v52 = [MKServerFormattedStringParameters alloc];
          [v9 variableOverrides];
          v54 = v53 = v9;
          buf[0] = 1;
          memset(&buf[1], 0, 17);
          buf[18] = IsRightToLeft;
          *&buf[19] = 0;
          buf[23] = 0;
          v92 = 0.0;
          v55 = [v52 initWithOptions:buf variableOverrides:v54];

          v56 = [v53 instructionString];

          v57 = [MKServerFormattedString alloc];
          if (v56)
          {
            v58 = [v53 instructionString];
            v59 = [v57 initWithComposedString:v58];
          }

          else
          {
            v58 = [v53 instruction];
            v59 = [v57 initWithGeoServerString:v58 parameters:v55];
          }

          v69 = v59;

          v70 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          v71 = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:v53 label:v70];

          v72 = [v69 multiPartAttributedStringWithAttributes:v71];
          v73 = [v72 attributedString];

          v74 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          [v74 setAttributedText:v73];
        }

        else
        {
          v55 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          [v55 setAttributedText:0];
        }

        v75 = sub_10079CBB8();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = [v4 mapsLongDescription];
          v77 = [v88 mapsLongDescription];
          v78 = [v4 variableOverrides];
          v79 = [v88 variableOverrides];
          *buf = 134350082;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v76;
          *&buf[22] = 2112;
          v92 = *&v77;
          v93 = 2112;
          v94 = v78;
          v95 = 2112;
          v96 = v79;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%{public}p] Configured for Continue guidance type with continue guidance info: %@, maneuver guidance info: %@, continue variable overrides: %@, maneuver variable overrides: %@", buf, 0x34u);
        }

        v40 = v87;
        v9 = v88;
      }

      goto LABEL_68;
    }

    v10 = [v4 isArrival];
    [(PedestrianARInstructionContainerView *)self _distanceToCurrentARFeature];
    v12 = v11;
    if (v10)
    {
      GEOConfigGetDouble();
      if (v12 < v13)
      {
        v14 = v13;
        v15 = sub_10079CBB8();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134349568;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2048;
          v92 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Current maneuver guidance info is sufficiently close to arrival (%f < %f); showing arrival UI", buf, 0x20u);
        }

        v16 = [(PedestrianARInstructionContainerView *)self _arrivedContinueGuidanceInfo];

        v9 = [(PedestrianARInstructionContainerView *)self _arrivedManeuverGuidanceInfo];
        v4 = v16;
        goto LABEL_29;
      }
    }

    else
    {
      GEOConfigGetDouble();
      if (v12 < v17)
      {
        v18 = v17;
        v19 = sub_10079CBB8();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 134349568;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2048;
          v92 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}p] Current maneuver guidance info is too close (%f < %f); skipping to next one", buf, 0x20u);
        }

        v8 = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
        v20 = [v8 indexOfObject:v4];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v20, v20 == [v8 count] - 1))
        {
          v22 = sub_10006D178();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "[PedestrianARInstructionContainerView _updateLabelsForCurrentState]";
            *&buf[12] = 2080;
            *&buf[14] = "PedestrianARInstructionContainerView.m";
            *&buf[22] = 1024;
            LODWORD(v92) = 273;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
          }

          if (sub_100E03634())
          {
            v23 = sub_10006D178();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = +[NSThread callStackSymbols];
              *buf = 138412290;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }
          }

          v25 = sub_10079CBB8();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349314;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v8;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}p] Cannot skip ahead to next maneuver because there aren't enough maneuvers: %@", buf, 0x16u);
          }

          v9 = 0;
        }

        else
        {
          v82 = [v8 objectAtIndex:v21 + 1];
          v83 = [(PedestrianARInstructionContainerView *)self _continueGuidanceInfos];
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v89[2] = sub_10079F750;
          v89[3] = &unk_10163AE20;
          v9 = v82;
          v90 = v9;
          v84 = sub_100030774(v83, v89);

          v85 = sub_10079CBB8();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            v86 = [v9 mapsShortDescription];
            *buf = 134349314;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v86;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "[%{public}p] Skipping ahead to maneuver: %@", buf, 0x16u);
          }

          v25 = v90;
          v4 = v84;
        }

        goto LABEL_8;
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  v80 = sub_10079CBB8();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[%{public}p] There is no current guidance info nor continue guidance info; cannot update labels", buf, 0xCu);
  }

  v81 = [(PedestrianARInstructionContainerView *)self topLabel];
  [v81 setText:0];

  v4 = [(PedestrianARInstructionContainerView *)self bottomLabel];
  [v4 setText:0];
LABEL_68:
}

- (id)_sortedManeuverGuidanceInfos
{
  v3 = [(PedestrianARInstructionContainerView *)self _maneuverGuidanceInfos];
  v4 = sub_10079CBB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Will sort maneuver guidance infos: %@", &v8, 0x16u);
  }

  v5 = [v3 sortedArrayUsingComparator:&stru_101629C60];
  v6 = sub_10079CBB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Did sort maneuver guidance infos: %@", &v8, 0x16u);
  }

  return v5;
}

- (NSArray)_maneuverGuidanceInfos
{
  v2 = [(PedestrianARInstructionContainerView *)self _guidanceInfos];
  v3 = sub_1000282CC(v2, &stru_101629C40);

  return v3;
}

- (id)_sortedContinueGuidanceInfos
{
  v3 = [(PedestrianARInstructionContainerView *)self _continueGuidanceInfos];
  v4 = sub_10079CBB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Will sort continue guidance infos: %@", &v8, 0x16u);
  }

  v5 = [v3 sortedArrayUsingComparator:&stru_101629C20];
  v6 = sub_10079CBB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Did sort continue guidance infos: %@", &v8, 0x16u);
  }

  return v5;
}

- (NSArray)_continueGuidanceInfos
{
  v2 = [(PedestrianARInstructionContainerView *)self _guidanceInfos];
  v3 = sub_1000282CC(v2, &stru_101629C00);

  return v3;
}

- (MNGuidanceARInfo)_currentGuidanceInfo
{
  v3 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
  v4 = [v3 currentFeature];

  if (v4)
  {
    v5 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    v6 = [v5 guidanceInfoForFeature:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)_guidanceInfos
{
  v2 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
  v3 = [v2 currentFeatureMapping];
  v4 = sub_100021DB0(v3, &stru_101629BE0);

  return v4;
}

- (void)_updateConstraints
{
  v3 = [(PedestrianARInstructionContainerView *)self _isLandscape];
  v4 = sub_10079CBB8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating constraints for landscape", &v16, 0xCu);
    }

    v6 = [(PedestrianARInstructionContainerView *)self leadingConstraint];
    [v6 setConstant:0.0];

    v7 = [(PedestrianARInstructionContainerView *)self trailingConstraint];
    [v7 setConstant:0.0];

    v8 = [(PedestrianARInstructionContainerView *)self traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_10008FB5C(v9, UIContentSizeCategoryExtraExtraExtraLarge);

    v11 = [(PedestrianARInstructionContainerView *)self bottomConstraint];
    v12 = v11;
    if (v10 == 1)
    {
      v13 = -16.0;
    }

    else
    {
      v13 = -18.0;
    }
  }

  else
  {
    if (v5)
    {
      v16 = 134349056;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating constraints for portrait", &v16, 0xCu);
    }

    v14 = [(PedestrianARInstructionContainerView *)self leadingConstraint];
    [v14 setConstant:26.0];

    v15 = [(PedestrianARInstructionContainerView *)self trailingConstraint];
    [v15 setConstant:-26.0];

    v11 = [(PedestrianARInstructionContainerView *)self bottomConstraint];
    v12 = v11;
    v13 = -24.0;
  }

  [v11 setConstant:v13];
}

- (void)_updateFonts
{
  v3 = [(PedestrianARInstructionContainerView *)self _isLandscape];
  v4 = &UIContentSizeCategoryAccessibilityMedium;
  if (!v3)
  {
    v4 = &UIContentSizeCategoryAccessibilityLarge;
  }

  v5 = *v4;
  v6 = [(PedestrianARInstructionContainerView *)self traitCollection];
  v11 = [v6 _maps_traitCollectionWithMaximumContentSizeCategory:v5];

  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  v8 = [(PedestrianARInstructionContainerView *)self topLabel];
  [v8 setFont:v7];

  v9 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  v10 = [(PedestrianARInstructionContainerView *)self bottomLabel];
  [v10 setFont:v9];
}

- (void)_updateUI
{
  [(PedestrianARInstructionContainerView *)self _updateFonts];
  [(PedestrianARInstructionContainerView *)self _updateConstraints];

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PedestrianARInstructionContainerView;
  [(PedestrianARInstructionContainerView *)&v9 traitCollectionDidChange:v4];
  if (!v4 || (-[PedestrianARInstructionContainerView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARInstructionContainerView *)self _updateUI];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PedestrianARInstructionContainerView;
  [(PedestrianARInstructionContainerView *)&v3 layoutSubviews];
  [(PedestrianARInstructionContainerView *)self _updateUI];
}

- (void)dealloc
{
  v3 = sub_10079CBB8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);
  [WeakRetained unregisterObserver:self];

  v5 = objc_loadWeakRetained(&self->_navigationService);
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = PedestrianARInstructionContainerView;
  [(PedestrianARInstructionContainerView *)&v6 dealloc];
}

- (PedestrianARInstructionContainerView)initWithMapViewDelegate:(id)a3 navigationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v48 = sub_10006D178();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v63 = "[PedestrianARInstructionContainerView initWithMapViewDelegate:navigationService:]";
      v64 = 2080;
      v65 = "PedestrianARInstructionContainerView.m";
      v66 = 1024;
      v67 = 70;
      v68 = 2080;
      v69 = "mapViewDelegate != nil";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v49 = sub_10006D178();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v63 = v50;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v51 = sub_10006D178();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v63 = "[PedestrianARInstructionContainerView initWithMapViewDelegate:navigationService:]";
      v64 = 2080;
      v65 = "PedestrianARInstructionContainerView.m";
      v66 = 1024;
      v67 = 71;
      v68 = 2080;
      v69 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v52 = sub_10006D178();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v63 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v59.receiver = self;
  v59.super_class = PedestrianARInstructionContainerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [(PedestrianARInstructionContainerView *)&v59 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v11)
  {
    v12 = sub_10079CBB8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v63 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v11->_mapViewDelegate, v6);
    objc_storeWeak(&v11->_navigationService, v7);
    v58 = v6;
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v13 setContentCompressionResistancePriority:1 forAxis:v14];
    [(UILabel *)v13 setNumberOfLines:0];
    v15 = +[UIColor secondaryLabelColor];
    [(UILabel *)v13 setTextColor:v15];

    [(UILabel *)v13 setLineBreakMode:0];
    [(UILabel *)v13 setLineBreakStrategy:1];
    v57 = v7;
    topLabel = v11->_topLabel;
    v11->_topLabel = v13;

    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v17 setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v17 setNumberOfLines:0];
    v19 = +[UIColor labelColor];
    [(UILabel *)v17 setTextColor:v19];

    [(UILabel *)v17 setLineBreakMode:0];
    [(UILabel *)v17 setLineBreakStrategy:1];
    bottomLabel = v11->_bottomLabel;
    v11->_bottomLabel = v17;

    v56 = +[NSMutableArray array];
    [(PedestrianARInstructionContainerView *)v11 addSubview:v11->_topLabel];
    v21 = [(UILabel *)v11->_topLabel leadingAnchor];
    v22 = [(PedestrianARInstructionContainerView *)v11 safeAreaLayoutGuide];
    v23 = [v22 leadingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23 constant:26.0];
    leadingConstraint = v11->_leadingConstraint;
    v11->_leadingConstraint = v24;

    v26 = [(UILabel *)v11->_topLabel trailingAnchor];
    v27 = [(PedestrianARInstructionContainerView *)v11 safeAreaLayoutGuide];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:-26.0];
    trailingConstraint = v11->_trailingConstraint;
    v11->_trailingConstraint = v29;

    v61[0] = v11->_leadingConstraint;
    v61[1] = v11->_trailingConstraint;
    v31 = [NSArray arrayWithObjects:v61 count:2];
    [v56 addObjectsFromArray:v31];

    [(PedestrianARInstructionContainerView *)v11 addSubview:v11->_bottomLabel];
    v32 = [(UILabel *)v11->_bottomLabel bottomAnchor];
    v33 = [(PedestrianARInstructionContainerView *)v11 safeAreaLayoutGuide];
    v34 = [v33 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:v34 constant:-24.0];
    bottomConstraint = v11->_bottomConstraint;
    v11->_bottomConstraint = v35;

    v55 = [(UILabel *)v11->_bottomLabel leadingAnchor];
    v54 = [(UILabel *)v11->_topLabel leadingAnchor];
    v37 = [v55 constraintEqualToAnchor:v54];
    v60[0] = v37;
    v38 = [(UILabel *)v11->_bottomLabel trailingAnchor];
    v39 = [(UILabel *)v11->_topLabel trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v60[1] = v40;
    v41 = [(UILabel *)v11->_bottomLabel topAnchor];
    v42 = [(UILabel *)v11->_topLabel bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:9.0];
    v60[2] = v43;
    v60[3] = v11->_bottomConstraint;
    v44 = [NSArray arrayWithObjects:v60 count:4];
    [v56 addObjectsFromArray:v44];

    v7 = v57;
    [NSLayoutConstraint activateConstraints:v56];
    WeakRetained = objc_loadWeakRetained(&v11->_mapViewDelegate);
    [WeakRetained registerObserver:v11];

    v46 = objc_loadWeakRetained(&v11->_navigationService);
    [v46 registerObserver:v11];

    v6 = v58;
    [(PedestrianARInstructionContainerView *)v11 _updateUI];
  }

  return v11;
}

@end