@interface PedestrianARInstructionContainerView
- (BOOL)_isLandscape;
- (MNGuidanceARInfo)_currentGuidanceInfo;
- (MNNavigationService)navigationService;
- (NSArray)_continueGuidanceInfos;
- (NSArray)_guidanceInfos;
- (NSArray)_maneuverGuidanceInfos;
- (PedestrianARInstructionContainerView)initWithMapViewDelegate:(id)delegate navigationService:(id)service;
- (PedestrianARVKMapViewMapDelegate)mapViewDelegate;
- (double)_distanceToCurrentARFeature;
- (double)_iconSideLengthForArrival:(BOOL)arrival;
- (id)_arrivalIcon;
- (id)_arrivedContinueGuidanceInfo;
- (id)_arrivedManeuverGuidanceInfo;
- (id)_customComposedStringForCurrentGuidanceInfo;
- (id)_customVariableOverridesForCurrentGuidanceInfo;
- (id)_sortedContinueGuidanceInfos;
- (id)_sortedManeuverGuidanceInfos;
- (id)_stringAttributesForGuidanceInfo:(id)info label:(id)label;
- (void)_updateConstraints;
- (void)_updateFonts;
- (void)_updateLabelsForCurrentState;
- (void)_updateUI;
- (void)dealloc;
- (void)layoutSubviews;
- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update;
- (void)mapLayer:(id)layer guidanceInfoDidUpdate:(id)update forFeature:(id)feature;
- (void)mapLayer:(id)layer updatedFeatures:(id)features;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)traitCollectionDidChange:(id)change;
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

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  serviceCopy = service;
  locationCopy = location;
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
        selfCopy = "[PedestrianARInstructionContainerView navigationService:didUpdateMatchedLocation:]";
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
          selfCopy = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v11 = sub_10079CBB8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    selfCopy = self;
    v17 = 2112;
    v18 = locationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Got matched location update: %@", &v15, 0x16u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)layer updatedFeatures:(id)features
{
  layerCopy = layer;
  featuresCopy = features;
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
        selfCopy = "[PedestrianARInstructionContainerView mapLayer:updatedFeatures:]";
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
          selfCopy = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }
    }
  }

  v11 = sub_10079CBB8();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    selfCopy = self;
    v17 = 2112;
    v18 = featuresCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Features updated: %@", &v15, 0x16u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)layer guidanceInfoDidUpdate:(id)update forFeature:(id)feature
{
  layerCopy = layer;
  updateCopy = update;
  featureCopy = feature;
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
        selfCopy = "[PedestrianARInstructionContainerView mapLayer:guidanceInfoDidUpdate:forFeature:]";
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
          selfCopy = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
        }
      }
    }
  }

  v14 = sub_10079CBB8();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    mapsShortDescription = [updateCopy mapsShortDescription];
    v19 = 134349570;
    selfCopy = self;
    v21 = 2112;
    v22 = mapsShortDescription;
    v23 = 2112;
    *v24 = featureCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}p] Guidance info updated: %@ for feature: %@", &v19, 0x20u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update
{
  layerCopy = layer;
  updateCopy = update;
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
        selfCopy = "[PedestrianARInstructionContainerView mapLayer:activeARWalkingFeatureDidUpdate:]";
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
          selfCopy = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v20, 0xCu);
        }
      }
    }
  }

  feature = [updateCopy feature];
  if (feature)
  {
    mapViewDelegate = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    feature2 = [updateCopy feature];
    v14 = [mapViewDelegate guidanceInfoForFeature:feature2];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_10079CBB8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    mapsShortDescription = [v14 mapsShortDescription];
    v20 = 134349570;
    selfCopy = self;
    v22 = 2112;
    v23 = updateCopy;
    v24 = 2112;
    *v25 = mapsShortDescription;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Walking feature updated: %@ with guidance info: %@", &v20, 0x20u);
  }

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (double)_distanceToCurrentARFeature
{
  navigationService = [(PedestrianARInstructionContainerView *)self navigationService];
  lastLocation = [navigationService lastLocation];

  if (lastLocation)
  {
    [lastLocation coordinate];
    v6 = v5;
    v8 = v7;
    mapViewDelegate = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    [mapViewDelegate currentFeaturePosition];
    v11 = v10;
    v13 = v12;

    GEOCalculateDistance();
    v15 = v14;
    v16 = sub_10079CBB8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = 134350336;
      selfCopy2 = self;
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
      selfCopy2 = "[PedestrianARInstructionContainerView _distanceToCurrentARFeature]";
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
        selfCopy2 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }

    v16 = sub_10079CBB8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}p] We don't know where the user currently is; cannot calculate distance to guidance info", &v21, 0xCu);
    }

    v15 = 1.79769313e308;
  }

  return v15;
}

- (id)_customVariableOverridesForCurrentGuidanceInfo
{
  _currentGuidanceInfo = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  if ([_currentGuidanceInfo eventType] == 2 && objc_msgSend(_currentGuidanceInfo, "isArrival"))
  {
    navigationService = [(PedestrianARInstructionContainerView *)self navigationService];
    lastLocation = [navigationService lastLocation];

    if (lastLocation)
    {
      variableOverrides = [_currentGuidanceInfo variableOverrides];
      v7 = [NSMutableDictionary dictionaryWithDictionary:variableOverrides];

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
          selfCopy3 = self;
          v29 = 2048;
          v30 = v13;
          v31 = 2048;
          v32 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Replacing distance variable override (%f) with: %f", &v27, 0x20u);
        }

        v14 = [NSNumber numberWithDouble:v10];
        [v7 setObject:v14 forKey:@"{distance}"];

        variableOverrides3 = v7;
      }

      else
      {
        v21 = sub_10006D178();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315650;
          selfCopy3 = "[PedestrianARInstructionContainerView _customVariableOverridesForCurrentGuidanceInfo]";
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
            selfCopy3 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
          }
        }

        v24 = sub_10079CBB8();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          variableOverrides2 = [_currentGuidanceInfo variableOverrides];
          v27 = 134349314;
          selfCopy3 = self;
          v29 = 2112;
          v30 = variableOverrides2;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%{public}p] Arrival guidance info does not have distance variable override (%@); falling back to default variable overrides", &v27, 0x16u);
        }

        variableOverrides3 = [_currentGuidanceInfo variableOverrides];
      }

      variableOverrides4 = variableOverrides3;
    }

    else
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v27 = 136315650;
        selfCopy3 = "[PedestrianARInstructionContainerView _customVariableOverridesForCurrentGuidanceInfo]";
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
          selfCopy3 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", &v27, 0xCu);
        }
      }

      v20 = sub_10079CBB8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = 134349056;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}p] Guidance info is arrival but we don't know where the user currently is; falling back to default variable overrides", &v27, 0xCu);
      }

      variableOverrides4 = [_currentGuidanceInfo variableOverrides];
    }
  }

  else
  {
    variableOverrides4 = [_currentGuidanceInfo variableOverrides];
  }

  return variableOverrides4;
}

- (id)_customComposedStringForCurrentGuidanceInfo
{
  _currentGuidanceInfo = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  instructionString = [_currentGuidanceInfo instructionString];
  if ([_currentGuidanceInfo eventType] != 2 || !objc_msgSend(_currentGuidanceInfo, "isArrival"))
  {
    goto LABEL_26;
  }

  navigationService = [(PedestrianARInstructionContainerView *)self navigationService];
  lastLocation = [navigationService lastLocation];

  if (!lastLocation)
  {
    v32 = sub_10006D178();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy3 = "[PedestrianARInstructionContainerView _customComposedStringForCurrentGuidanceInfo]";
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
        selfCopy3 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v35 = sub_10079CBB8();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[%{public}p] Guidance info is arrival but we don't know where the user currently is; falling back to default variable overrides", buf, 0xCu);
    }

    goto LABEL_26;
  }

  defaultOptions = [instructionString defaultOptions];
  v7 = +[NSMutableArray array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  arguments = [defaultOptions arguments];
  v9 = [arguments countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v42 = defaultOptions;
    v43 = lastLocation;
    v44 = instructionString;
    v45 = _currentGuidanceInfo;
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
          objc_enumerationMutation(arguments);
        }

        v15 = *(*(&v49 + 1) + 8 * v14);
        if ([v15 type] == 1)
        {
          [(PedestrianARInstructionContainerView *)self _distanceToCurrentARFeature];
          v17 = v16;
          v18 = sub_10079CBB8();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            distanceFormat = [v15 distanceFormat];
            overrideValue = [distanceFormat overrideValue];
            [v13[474] meters];
            v21 = v7;
            v23 = v22 = arguments;
            [overrideValue measurementByConvertingToUnit:v23];
            v25 = v24 = v13;
            [v25 doubleValue];
            *buf = 134349568;
            selfCopy3 = self;
            v55 = 2048;
            v56 = v26;
            v57 = 2048;
            v58 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Replacing distance variable override (%f) with: %f", buf, 0x20u);

            v13 = v24;
            arguments = v22;
            v7 = v21;
            v12 = v46;
            v10 = v47;
          }

          v27 = [NSMeasurement alloc];
          meters = [v13[474] meters];
          v29 = [v27 initWithDoubleValue:meters unit:v17];
          distanceFormat2 = [v15 distanceFormat];
          [distanceFormat2 setOverrideValue:v29];

          v11 = 1;
        }

        [v7 addObject:v15];
        v14 = v14 + 1;
      }

      while (v10 != v14);
      v10 = [arguments countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v10);

    instructionString = v44;
    _currentGuidanceInfo = v45;
    defaultOptions = v42;
    lastLocation = v43;
    if (v11)
    {
      [v42 setArguments:v7];
      v31 = [v44 composedStringWithOptions:v42];

      instructionString = v31;
LABEL_26:
      v36 = instructionString;
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
    selfCopy3 = "[PedestrianARInstructionContainerView _customComposedStringForCurrentGuidanceInfo]";
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
      selfCopy3 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v41 = sub_10079CBB8();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349314;
    selfCopy3 = self;
    v55 = 2112;
    v56 = instructionString;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%{public}p] Arrival guidance info does not have distance variable override (%@); falling back to default string", buf, 0x16u);
  }

  v36 = instructionString;
LABEL_27:

  return v36;
}

- (double)_iconSideLengthForArrival:(BOOL)arrival
{
  arrivalCopy = arrival;
  traitCollection = [(PedestrianARInstructionContainerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = sub_10008FB5C(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge);

  result = 32.0;
  if (arrivalCopy)
  {
    result = 34.0;
  }

  v8 = 42.0;
  if (arrivalCopy)
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
  _currentGuidanceInfo = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  v4 = _currentGuidanceInfo;
  if (_currentGuidanceInfo && [_currentGuidanceInfo isArrival])
  {
    v23 = [MNGuidanceARInfo alloc];
    eventType = [v4 eventType];
    maneuverType = [v4 maneuverType];
    route = [(PedestrianARInstructionContainerView *)self route];
    destination = [route destination];
    navDisplayName = [destination navDisplayName];
    _geo_formattedString = [navDisplayName _geo_formattedString];
    variableOverrides = [v4 variableOverrides];
    arrowLabel = [v4 arrowLabel];
    [v4 locationCoordinate];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    maneuverRoadName = [v4 maneuverRoadName];
    [v4 heading];
    v21 = [v23 initWithEventID:0 type:eventType maneuverType:maneuverType instruction:_geo_formattedString variableOverrides:variableOverrides arrowLabel:arrowLabel locationCoordinate:v14 maneuverRoadName:v16 heading:v18 stepIndex:{v20, maneuverRoadName, objc_msgSend(v4, "stepIndex")}];
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
  _geo_formattedString = [v3 _geo_formattedString];
  v6 = [v4 initWithEventID:0 type:1 maneuverType:18 instruction:_geo_formattedString variableOverrides:0 arrowLabel:0 locationCoordinate:-180.0 maneuverRoadName:-180.0 heading:1.79769313e308 stepIndex:{0.0, 0, 0}];

  return v6;
}

- (id)_arrivalIcon
{
  route = [(PedestrianARInstructionContainerView *)self route];
  destination = [route destination];
  geoMapItem = [destination geoMapItem];

  if (geoMapItem)
  {
    v6 = [[MKMapItem alloc] initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
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

- (id)_stringAttributesForGuidanceInfo:(id)info label:(id)label
{
  infoCopy = info;
  v29[0] = MKServerFormattedStringArtworkArrowFillColorAttributeKey;
  labelCopy = label;
  v8 = +[UIColor whiteColor];
  v30[0] = v8;
  v29[1] = MKServerFormattedStringArtworkJunctionFillColorAttributeKey;
  v9 = +[UIColor systemWhiteColor];
  v10 = [v9 colorWithAlphaComponent:0.3];
  v30[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = [v11 mutableCopy];
  font = [labelCopy font];

  [v12 setObject:font forKey:NSFontAttributeName];
  v14 = objc_alloc_init(NSMutableParagraphStyle);
  [v14 setLineBreakStrategy:1];
  [v12 setObject:v14 forKey:NSParagraphStyleAttributeName];
  if ([infoCopy eventType] == 2 && objc_msgSend(infoCopy, "isArrival"))
  {
    _arrivalIcon = [(PedestrianARInstructionContainerView *)self _arrivalIcon];
    if (_arrivalIcon)
    {
      v16 = _arrivalIcon;
      v17 = sub_10079CBB8();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v23 = 134349314;
        selfCopy2 = self;
        v25 = 2112;
        v26 = infoCopy;
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
        selfCopy2 = "[PedestrianARInstructionContainerView _stringAttributesForGuidanceInfo:label:]";
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
          selfCopy2 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
        }
      }

      v16 = sub_10079CBB8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = 134349314;
        selfCopy2 = self;
        v25 = 2112;
        v26 = infoCopy;
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
  _currentGuidanceInfo = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
  if (_currentGuidanceInfo)
  {
    firstObject2 = _currentGuidanceInfo;
    goto LABEL_6;
  }

  _sortedManeuverGuidanceInfos = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
  firstObject = [_sortedManeuverGuidanceInfos firstObject];
  if (firstObject)
  {
    firstObject2 = firstObject;

    goto LABEL_6;
  }

  _sortedContinueGuidanceInfos = [(PedestrianARInstructionContainerView *)self _sortedContinueGuidanceInfos];
  firstObject2 = [_sortedContinueGuidanceInfos firstObject];

  if (firstObject2)
  {
LABEL_6:
    if ([firstObject2 eventType] == 1)
    {
      _sortedManeuverGuidanceInfos2 = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
      firstObject3 = [_sortedManeuverGuidanceInfos2 firstObject];
LABEL_8:

LABEL_29:
      v26 = sub_10079CBB8();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        mapsShortDescription = [firstObject2 mapsShortDescription];
        mapsShortDescription2 = [firstObject3 mapsShortDescription];
        *buf = 134349570;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = mapsShortDescription;
        *&buf[22] = 2112;
        v92 = *&mapsShortDescription2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Will display instruction text for current guidance info: %@, next guidance info: %@", buf, 0x20u);
      }

      IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
      if ([firstObject2 eventType] != 1 || (objc_msgSend(firstObject2, "maneuverType") == 17 || objc_msgSend(firstObject2, "maneuverType") == 85) && !firstObject3)
      {
        topLabel = [(PedestrianARInstructionContainerView *)self topLabel];
        [topLabel setAttributedText:0];

        instructionString = [firstObject2 instructionString];

        if (instructionString)
        {
          _customComposedStringForCurrentGuidanceInfo = [(PedestrianARInstructionContainerView *)self _customComposedStringForCurrentGuidanceInfo];
          v40 = [[MKServerFormattedString alloc] initWithComposedString:_customComposedStringForCurrentGuidanceInfo];
          v41 = sub_10079CBB8();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            if ([firstObject2 maneuverType] == 17)
            {
              v42 = @"StartOn";
            }

            else if ([firstObject2 maneuverType] == 85)
            {
              v42 = @"Resume";
            }

            else
            {
              v42 = @"Maneuver";
            }

            mapsLongDescription = [firstObject2 mapsLongDescription];
            instructionString2 = [firstObject2 instructionString];
            *buf = 134350082;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2112;
            v92 = *&mapsLongDescription;
            v93 = 2112;
            v94 = instructionString2;
            v95 = 2112;
            v96 = _customComposedStringForCurrentGuidanceInfo;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "[%{public}p] Configured for %@ guidance type with maneuver guidance info: %@, original string: %@, custom override string: %@", buf, 0x34u);
          }
        }

        else
        {
          _currentGuidanceInfo2 = [(PedestrianARInstructionContainerView *)self _currentGuidanceInfo];
          if (firstObject2 == _currentGuidanceInfo2)
          {
            [(PedestrianARInstructionContainerView *)self _customVariableOverridesForCurrentGuidanceInfo];
          }

          else
          {
            [firstObject2 variableOverrides];
          }
          _customComposedStringForCurrentGuidanceInfo = ;

          v60 = [MKServerFormattedStringParameters alloc];
          buf[0] = 1;
          memset(&buf[1], 0, 17);
          buf[18] = IsRightToLeft;
          *&buf[19] = 0;
          buf[23] = 0;
          v92 = 0.0;
          v41 = [v60 initWithOptions:buf variableOverrides:_customComposedStringForCurrentGuidanceInfo];
          v61 = [MKServerFormattedString alloc];
          instruction = [firstObject2 instruction];
          v40 = [v61 initWithGeoServerString:instruction parameters:v41];

          v63 = sub_10079CBB8();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            if ([firstObject2 maneuverType] == 17)
            {
              v64 = @"StartOn";
            }

            else if ([firstObject2 maneuverType] == 85)
            {
              v64 = @"Resume";
            }

            else
            {
              v64 = @"Maneuver";
            }

            mapsLongDescription2 = [firstObject2 mapsLongDescription];
            variableOverrides = [firstObject2 variableOverrides];
            *buf = 134350082;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v64;
            *&buf[22] = 2112;
            v92 = *&mapsLongDescription2;
            v93 = 2112;
            v94 = variableOverrides;
            v95 = 2112;
            v96 = _customComposedStringForCurrentGuidanceInfo;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "[%{public}p] Configured for %@ guidance type with maneuver guidance info: %@, maneuver variable overrides: %@, custom variable overrides: %@", buf, 0x34u);
          }
        }

        bottomLabel = [(PedestrianARInstructionContainerView *)self bottomLabel];
        v46 = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:firstObject2 label:bottomLabel];

        v68 = [v40 multiPartAttributedStringWithAttributes:v46];
        attributedString = [v68 attributedString];

        bottomLabel2 = [(PedestrianARInstructionContainerView *)self bottomLabel];
        [bottomLabel2 setAttributedText:attributedString];
      }

      else
      {
        v30 = [MKServerFormattedStringParameters alloc];
        variableOverrides2 = [firstObject2 variableOverrides];
        buf[0] = 1;
        memset(&buf[1], 0, 17);
        buf[18] = IsRightToLeft;
        *&buf[19] = 0;
        buf[23] = 0;
        v92 = 0.0;
        v32 = [v30 initWithOptions:buf variableOverrides:variableOverrides2];

        instructionString3 = [firstObject2 instructionString];

        v34 = [MKServerFormattedString alloc];
        v87 = v32;
        if (instructionString3)
        {
          instructionString4 = [firstObject2 instructionString];
          v36 = [v34 initWithComposedString:instructionString4];
        }

        else
        {
          instructionString4 = [firstObject2 instruction];
          v36 = [v34 initWithGeoServerString:instructionString4 parameters:v32];
        }

        v46 = v36;

        topLabel2 = [(PedestrianARInstructionContainerView *)self topLabel];
        attributedString = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:firstObject2 label:topLabel2];

        v49 = [v46 multiPartAttributedStringWithAttributes:attributedString];
        bottomLabel2 = [v49 attributedString];

        topLabel3 = [(PedestrianARInstructionContainerView *)self topLabel];
        [topLabel3 setAttributedText:bottomLabel2];

        v88 = firstObject3;
        if (firstObject3)
        {
          v52 = [MKServerFormattedStringParameters alloc];
          [firstObject3 variableOverrides];
          v54 = v53 = firstObject3;
          buf[0] = 1;
          memset(&buf[1], 0, 17);
          buf[18] = IsRightToLeft;
          *&buf[19] = 0;
          buf[23] = 0;
          v92 = 0.0;
          bottomLabel5 = [v52 initWithOptions:buf variableOverrides:v54];

          instructionString5 = [v53 instructionString];

          v57 = [MKServerFormattedString alloc];
          if (instructionString5)
          {
            instructionString6 = [v53 instructionString];
            v59 = [v57 initWithComposedString:instructionString6];
          }

          else
          {
            instructionString6 = [v53 instruction];
            v59 = [v57 initWithGeoServerString:instructionString6 parameters:bottomLabel5];
          }

          v69 = v59;

          bottomLabel3 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          v71 = [(PedestrianARInstructionContainerView *)self _stringAttributesForGuidanceInfo:v53 label:bottomLabel3];

          v72 = [v69 multiPartAttributedStringWithAttributes:v71];
          attributedString2 = [v72 attributedString];

          bottomLabel4 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          [bottomLabel4 setAttributedText:attributedString2];
        }

        else
        {
          bottomLabel5 = [(PedestrianARInstructionContainerView *)self bottomLabel];
          [bottomLabel5 setAttributedText:0];
        }

        v75 = sub_10079CBB8();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          mapsLongDescription3 = [firstObject2 mapsLongDescription];
          mapsLongDescription4 = [v88 mapsLongDescription];
          variableOverrides3 = [firstObject2 variableOverrides];
          variableOverrides4 = [v88 variableOverrides];
          *buf = 134350082;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = mapsLongDescription3;
          *&buf[22] = 2112;
          v92 = *&mapsLongDescription4;
          v93 = 2112;
          v94 = variableOverrides3;
          v95 = 2112;
          v96 = variableOverrides4;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%{public}p] Configured for Continue guidance type with continue guidance info: %@, maneuver guidance info: %@, continue variable overrides: %@, maneuver variable overrides: %@", buf, 0x34u);
        }

        v40 = v87;
        firstObject3 = v88;
      }

      goto LABEL_68;
    }

    isArrival = [firstObject2 isArrival];
    [(PedestrianARInstructionContainerView *)self _distanceToCurrentARFeature];
    v12 = v11;
    if (isArrival)
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

        _arrivedContinueGuidanceInfo = [(PedestrianARInstructionContainerView *)self _arrivedContinueGuidanceInfo];

        firstObject3 = [(PedestrianARInstructionContainerView *)self _arrivedManeuverGuidanceInfo];
        firstObject2 = _arrivedContinueGuidanceInfo;
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

        _sortedManeuverGuidanceInfos2 = [(PedestrianARInstructionContainerView *)self _sortedManeuverGuidanceInfos];
        v20 = [_sortedManeuverGuidanceInfos2 indexOfObject:firstObject2];
        if (v20 == 0x7FFFFFFFFFFFFFFFLL || (v21 = v20, v20 == [_sortedManeuverGuidanceInfos2 count] - 1))
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
            *&buf[14] = _sortedManeuverGuidanceInfos2;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}p] Cannot skip ahead to next maneuver because there aren't enough maneuvers: %@", buf, 0x16u);
          }

          firstObject3 = 0;
        }

        else
        {
          v82 = [_sortedManeuverGuidanceInfos2 objectAtIndex:v21 + 1];
          _continueGuidanceInfos = [(PedestrianARInstructionContainerView *)self _continueGuidanceInfos];
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v89[2] = sub_10079F750;
          v89[3] = &unk_10163AE20;
          firstObject3 = v82;
          v90 = firstObject3;
          v84 = sub_100030774(_continueGuidanceInfos, v89);

          v85 = sub_10079CBB8();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
          {
            mapsShortDescription3 = [firstObject3 mapsShortDescription];
            *buf = 134349314;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = mapsShortDescription3;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "[%{public}p] Skipping ahead to maneuver: %@", buf, 0x16u);
          }

          v25 = v90;
          firstObject2 = v84;
        }

        goto LABEL_8;
      }
    }

    firstObject3 = 0;
    goto LABEL_29;
  }

  v80 = sub_10079CBB8();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "[%{public}p] There is no current guidance info nor continue guidance info; cannot update labels", buf, 0xCu);
  }

  topLabel4 = [(PedestrianARInstructionContainerView *)self topLabel];
  [topLabel4 setText:0];

  firstObject2 = [(PedestrianARInstructionContainerView *)self bottomLabel];
  [firstObject2 setText:0];
LABEL_68:
}

- (id)_sortedManeuverGuidanceInfos
{
  _maneuverGuidanceInfos = [(PedestrianARInstructionContainerView *)self _maneuverGuidanceInfos];
  v4 = sub_10079CBB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy2 = self;
    v10 = 2112;
    v11 = _maneuverGuidanceInfos;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Will sort maneuver guidance infos: %@", &v8, 0x16u);
  }

  v5 = [_maneuverGuidanceInfos sortedArrayUsingComparator:&stru_101629C60];
  v6 = sub_10079CBB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy2 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Did sort maneuver guidance infos: %@", &v8, 0x16u);
  }

  return v5;
}

- (NSArray)_maneuverGuidanceInfos
{
  _guidanceInfos = [(PedestrianARInstructionContainerView *)self _guidanceInfos];
  v3 = sub_1000282CC(_guidanceInfos, &stru_101629C40);

  return v3;
}

- (id)_sortedContinueGuidanceInfos
{
  _continueGuidanceInfos = [(PedestrianARInstructionContainerView *)self _continueGuidanceInfos];
  v4 = sub_10079CBB8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy2 = self;
    v10 = 2112;
    v11 = _continueGuidanceInfos;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Will sort continue guidance infos: %@", &v8, 0x16u);
  }

  v5 = [_continueGuidanceInfos sortedArrayUsingComparator:&stru_101629C20];
  v6 = sub_10079CBB8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349314;
    selfCopy2 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Did sort continue guidance infos: %@", &v8, 0x16u);
  }

  return v5;
}

- (NSArray)_continueGuidanceInfos
{
  _guidanceInfos = [(PedestrianARInstructionContainerView *)self _guidanceInfos];
  v3 = sub_1000282CC(_guidanceInfos, &stru_101629C00);

  return v3;
}

- (MNGuidanceARInfo)_currentGuidanceInfo
{
  mapViewDelegate = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
  currentFeature = [mapViewDelegate currentFeature];

  if (currentFeature)
  {
    mapViewDelegate2 = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
    v6 = [mapViewDelegate2 guidanceInfoForFeature:currentFeature];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)_guidanceInfos
{
  mapViewDelegate = [(PedestrianARInstructionContainerView *)self mapViewDelegate];
  currentFeatureMapping = [mapViewDelegate currentFeatureMapping];
  v4 = sub_100021DB0(currentFeatureMapping, &stru_101629BE0);

  return v4;
}

- (void)_updateConstraints
{
  _isLandscape = [(PedestrianARInstructionContainerView *)self _isLandscape];
  v4 = sub_10079CBB8();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (_isLandscape)
  {
    if (v5)
    {
      v16 = 134349056;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating constraints for landscape", &v16, 0xCu);
    }

    leadingConstraint = [(PedestrianARInstructionContainerView *)self leadingConstraint];
    [leadingConstraint setConstant:0.0];

    trailingConstraint = [(PedestrianARInstructionContainerView *)self trailingConstraint];
    [trailingConstraint setConstant:0.0];

    traitCollection = [(PedestrianARInstructionContainerView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v10 = sub_10008FB5C(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge);

    bottomConstraint = [(PedestrianARInstructionContainerView *)self bottomConstraint];
    v12 = bottomConstraint;
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating constraints for portrait", &v16, 0xCu);
    }

    leadingConstraint2 = [(PedestrianARInstructionContainerView *)self leadingConstraint];
    [leadingConstraint2 setConstant:26.0];

    trailingConstraint2 = [(PedestrianARInstructionContainerView *)self trailingConstraint];
    [trailingConstraint2 setConstant:-26.0];

    bottomConstraint = [(PedestrianARInstructionContainerView *)self bottomConstraint];
    v12 = bottomConstraint;
    v13 = -24.0;
  }

  [bottomConstraint setConstant:v13];
}

- (void)_updateFonts
{
  _isLandscape = [(PedestrianARInstructionContainerView *)self _isLandscape];
  v4 = &UIContentSizeCategoryAccessibilityMedium;
  if (!_isLandscape)
  {
    v4 = &UIContentSizeCategoryAccessibilityLarge;
  }

  v5 = *v4;
  traitCollection = [(PedestrianARInstructionContainerView *)self traitCollection];
  v11 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:v5];

  v7 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  topLabel = [(PedestrianARInstructionContainerView *)self topLabel];
  [topLabel setFont:v7];

  v9 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  bottomLabel = [(PedestrianARInstructionContainerView *)self bottomLabel];
  [bottomLabel setFont:v9];
}

- (void)_updateUI
{
  [(PedestrianARInstructionContainerView *)self _updateFonts];
  [(PedestrianARInstructionContainerView *)self _updateConstraints];

  [(PedestrianARInstructionContainerView *)self _updateLabelsForCurrentState];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PedestrianARInstructionContainerView;
  [(PedestrianARInstructionContainerView *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[PedestrianARInstructionContainerView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
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
    selfCopy = self;
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

- (PedestrianARInstructionContainerView)initWithMapViewDelegate:(id)delegate navigationService:(id)service
{
  delegateCopy = delegate;
  serviceCopy = service;
  if (!delegateCopy)
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

  if (!serviceCopy)
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
  height = [(PedestrianARInstructionContainerView *)&v59 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v12 = sub_10079CBB8();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v63 = height;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&height->_mapViewDelegate, delegateCopy);
    objc_storeWeak(&height->_navigationService, serviceCopy);
    v58 = delegateCopy;
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [(UILabel *)v13 setContentCompressionResistancePriority:1 forAxis:v14];
    [(UILabel *)v13 setNumberOfLines:0];
    v15 = +[UIColor secondaryLabelColor];
    [(UILabel *)v13 setTextColor:v15];

    [(UILabel *)v13 setLineBreakMode:0];
    [(UILabel *)v13 setLineBreakStrategy:1];
    v57 = serviceCopy;
    topLabel = height->_topLabel;
    height->_topLabel = v13;

    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(UILabel *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v17 setContentCompressionResistancePriority:1 forAxis:v18];
    [(UILabel *)v17 setNumberOfLines:0];
    v19 = +[UIColor labelColor];
    [(UILabel *)v17 setTextColor:v19];

    [(UILabel *)v17 setLineBreakMode:0];
    [(UILabel *)v17 setLineBreakStrategy:1];
    bottomLabel = height->_bottomLabel;
    height->_bottomLabel = v17;

    v56 = +[NSMutableArray array];
    [(PedestrianARInstructionContainerView *)height addSubview:height->_topLabel];
    leadingAnchor = [(UILabel *)height->_topLabel leadingAnchor];
    safeAreaLayoutGuide = [(PedestrianARInstructionContainerView *)height safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:26.0];
    leadingConstraint = height->_leadingConstraint;
    height->_leadingConstraint = v24;

    trailingAnchor = [(UILabel *)height->_topLabel trailingAnchor];
    safeAreaLayoutGuide2 = [(PedestrianARInstructionContainerView *)height safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-26.0];
    trailingConstraint = height->_trailingConstraint;
    height->_trailingConstraint = v29;

    v61[0] = height->_leadingConstraint;
    v61[1] = height->_trailingConstraint;
    v31 = [NSArray arrayWithObjects:v61 count:2];
    [v56 addObjectsFromArray:v31];

    [(PedestrianARInstructionContainerView *)height addSubview:height->_bottomLabel];
    bottomAnchor = [(UILabel *)height->_bottomLabel bottomAnchor];
    safeAreaLayoutGuide3 = [(PedestrianARInstructionContainerView *)height safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-24.0];
    bottomConstraint = height->_bottomConstraint;
    height->_bottomConstraint = v35;

    leadingAnchor3 = [(UILabel *)height->_bottomLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)height->_topLabel leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v60[0] = v37;
    trailingAnchor3 = [(UILabel *)height->_bottomLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)height->_topLabel trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v60[1] = v40;
    topAnchor = [(UILabel *)height->_bottomLabel topAnchor];
    bottomAnchor3 = [(UILabel *)height->_topLabel bottomAnchor];
    v43 = [topAnchor constraintEqualToAnchor:bottomAnchor3 constant:9.0];
    v60[2] = v43;
    v60[3] = height->_bottomConstraint;
    v44 = [NSArray arrayWithObjects:v60 count:4];
    [v56 addObjectsFromArray:v44];

    serviceCopy = v57;
    [NSLayoutConstraint activateConstraints:v56];
    WeakRetained = objc_loadWeakRetained(&height->_mapViewDelegate);
    [WeakRetained registerObserver:height];

    v46 = objc_loadWeakRetained(&height->_navigationService);
    [v46 registerObserver:height];

    delegateCopy = v58;
    [(PedestrianARInstructionContainerView *)height _updateUI];
  }

  return height;
}

@end