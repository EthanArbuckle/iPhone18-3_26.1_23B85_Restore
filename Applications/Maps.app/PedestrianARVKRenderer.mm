@interface PedestrianARVKRenderer
- (BOOL)shouldShowFeatures;
- (MNGuidanceARInfo)arrivalGuidanceInfo;
- (NSArray)continueEntries;
- (NSArray)continueGuidanceInfos;
- (NSArray)maneuverEntries;
- (NSArray)maneuverGuidanceInfos;
- (PedestrianARVKFeatureMapEntry)arrivalEntry;
- (PedestrianARVKMapViewMapDelegate)mapViewDelegate;
- (PedestrianARVKRenderer)initWithMapView:(id)view navigationService:(id)service mapViewDelegate:(id)delegate guidanceObserver:(id)observer;
- (void)clearAnchors;
- (void)dealloc;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)rebuildAnchors;
- (void)setGuidanceInfos:(id)infos;
- (void)setRoute:(id)route;
- (void)setShouldGenerateFeatures:(BOOL)features;
- (void)setShouldShowFeatures:(BOOL)features;
- (void)updateARSigns:(id)signs;
@end

@implementation PedestrianARVKRenderer

- (PedestrianARVKMapViewMapDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (void)updateARSigns:(id)signs
{
  signsCopy = signs;
  v5 = sub_100B603DC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    selfCopy = self;
    v8 = 2112;
    v9 = signsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got updated AR guidance infos: %@", &v6, 0x16u);
  }

  [(PedestrianARVKRenderer *)self setGuidanceInfos:signsCopy];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != objectCopy)
  {

LABEL_9:
    v21.receiver = self;
    v21.super_class = PedestrianARVKRenderer;
    [(PedestrianARVKRenderer *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_10;
  }

  v15 = [pathCopy isEqualToString:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = sub_100B603DC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v18 = @"YES";
    if (!v17)
    {
      v18 = @"NO";
    }

    v19 = v18;
    *buf = 134349314;
    selfCopy = self;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Debug force show arrival key was toggled: %@", buf, 0x16u);
  }

  arrivalEntry = self->_arrivalEntry;
  self->_arrivalEntry = 0;

  [(PedestrianARVKRenderer *)self rebuildAnchors];
LABEL_10:
}

- (void)navigationService:(id)service didUpdateStepIndex:(unint64_t)index segmentIndex:(unint64_t)segmentIndex
{
  serviceCopy = service;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v9 = dispatch_queue_get_label(0);
  if (label != v9)
  {
    v10 = !label || v9 == 0;
    if (v10 || strcmp(label, v9))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 136316418;
        selfCopy = "[PedestrianARVKRenderer navigationService:didUpdateStepIndex:segmentIndex:]";
        v20 = 2080;
        v21 = "PedestrianARVKRenderer.m";
        v22 = 1024;
        *v23 = 486;
        *&v23[4] = 2080;
        *&v23[6] = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v18, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v18 = 138412290;
          selfCopy = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  if ([(PedestrianARVKRenderer *)self lastManeuverStepIndex]!= index)
  {
    v11 = sub_100B603DC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      lastManeuverStepIndex = [(PedestrianARVKRenderer *)self lastManeuverStepIndex];
      v18 = 134349568;
      selfCopy = self;
      v20 = 2048;
      v21 = lastManeuverStepIndex;
      v22 = 2048;
      *v23 = index;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver step index changed; previous: %lu, current: %lu", &v18, 0x20u);
    }

    [(PedestrianARVKRenderer *)self setLastManeuverStepIndex:index];
    maneuverEntries = self->_maneuverEntries;
    self->_maneuverEntries = 0;

    continueEntries = self->_continueEntries;
    self->_continueEntries = 0;

    [(PedestrianARVKRenderer *)self rebuildAnchors];
  }
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
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = 136316418;
        selfCopy2 = "[PedestrianARVKRenderer navigationService:didUpdateMatchedLocation:]";
        v28 = 2080;
        v29 = "PedestrianARVKRenderer.m";
        v30 = 1024;
        *v31 = 471;
        *&v31[4] = 2080;
        *&v31[6] = "dispatch_get_main_queue()";
        *&v31[14] = 2080;
        *&v31[16] = dispatch_queue_get_label(&_dispatch_main_q);
        v32 = 2080;
        v33 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v26, 0x3Au);
      }

      if (sub_100E03634())
      {
        v24 = sub_10006D178();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = +[NSThread callStackSymbols];
          v26 = 138412290;
          selfCopy2 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
        }
      }
    }
  }

  routeMatch = [locationCopy routeMatch];

  mapView2 = sub_100B603DC();
  v13 = os_log_type_enabled(mapView2, OS_LOG_TYPE_INFO);
  if (routeMatch)
  {
    if (v13)
    {
      [locationCopy coordinate];
      v15 = v14;
      [locationCopy coordinate];
      v17 = v16;
      [locationCopy altitude];
      v26 = 134349825;
      selfCopy2 = self;
      v28 = 2049;
      v29 = v15;
      v30 = 2049;
      *v31 = v17;
      *&v31[8] = 2049;
      *&v31[10] = v18;
      _os_log_impl(&_mh_execute_header, mapView2, OS_LOG_TYPE_INFO, "[%{public}p] Got location update: %{private}0.6f, %{private}0.6f, %{private}0.6f", &v26, 0x2Au);
    }

    mapView = [(PedestrianARVKRenderer *)self mapView];
    routeMatch2 = [locationCopy routeMatch];
    [mapView setRouteUserOffset:{objc_msgSend(routeMatch2, "routeCoordinate")}];

    mapView2 = [(PedestrianARVKRenderer *)self mapView];
    userLocationAnimator = [mapView2 userLocationAnimator];
    routeMatch3 = [locationCopy routeMatch];
    [userLocationAnimator updateLocation:locationCopy routeMatch:routeMatch3];
  }

  else if (v13)
  {
    v26 = 134349056;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, mapView2, OS_LOG_TYPE_INFO, "[%{public}p] Location update had no route match; ignoring", &v26, 0xCu);
  }
}

- (void)setGuidanceInfos:(id)infos
{
  infosCopy = infos;
  v6 = sub_100B603DC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    guidanceInfos = self->_guidanceInfos;
    *buf = 134349570;
    selfCopy9 = self;
    v108 = 2112;
    v109 = guidanceInfos;
    v110 = 2112;
    v111 = infosCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating guidance info; old: %@, new: %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_guidanceInfos, infos);
  continueGuidanceInfos = [(PedestrianARVKRenderer *)self continueGuidanceInfos];
  v9 = [continueGuidanceInfos sortedArrayUsingComparator:&stru_10163AC18];

  v10 = sub_100021DB0(self->_continueEntries, &stru_10163AC58);
  v11 = [v10 sortedArrayUsingComparator:&stru_10163AC78];

  v12 = v9;
  v13 = v11;
  if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, (v14 & 1) == 0))
  {
    v15 = sub_100B603DC();
    v18 = 1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v29 = sub_100021DB0(v13, &stru_10163ACB8);
      v30 = sub_100021DB0(v12, &stru_10163ACD8);
      *buf = 134349570;
      selfCopy9 = self;
      v108 = 2112;
      v109 = v29;
      v110 = 2112;
      v111 = v30;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Continue entries are different: existing: %@, new: %@", buf, 0x20u);
    }
  }

  else
  {
    v15 = sub_100B603DC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = sub_100021DB0(v13, &stru_10163ACF8);
      v17 = sub_100021DB0(v12, &stru_10163AD18);
      *buf = 134349570;
      selfCopy9 = self;
      v108 = 2112;
      v109 = v16;
      v110 = 2112;
      v111 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Continue entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  arrivalGuidanceInfo = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
  guidanceInfo = [(PedestrianARVKFeatureMapEntry *)self->_arrivalEntry guidanceInfo];
  v21 = arrivalGuidanceInfo;
  v22 = guidanceInfo;
  v23 = v21;
  v24 = v22;
  v87 = v22;
  v88 = infosCopy;
  if (v21 | v22 && (v25 = [v21 isEqual:v22], v24, v21, (v25 & 1) == 0))
  {
    v31 = sub_100B603DC();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      mapsShortDescription = [v24 mapsShortDescription];
      mapsShortDescription2 = [v21 mapsShortDescription];
      *buf = 134349570;
      selfCopy9 = self;
      v108 = 2112;
      v109 = mapsShortDescription;
      v110 = 2112;
      v111 = mapsShortDescription2;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}p] Arrival entries: existing: %@, new: %@", buf, 0x20u);

      v24 = v87;
    }

    if (v21)
    {
      v34 = v24 == 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v34;
    v89 = v35;
  }

  else
  {
    v26 = sub_100B603DC();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      mapsShortDescription3 = [v24 mapsShortDescription];
      mapsShortDescription4 = [v21 mapsShortDescription];
      *buf = 134349570;
      selfCopy9 = self;
      v108 = 2112;
      v109 = mapsShortDescription3;
      v110 = 2112;
      v111 = mapsShortDescription4;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Arrival entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);
    }

    v89 = 0;
  }

  maneuverGuidanceInfos = [(PedestrianARVKRenderer *)self maneuverGuidanceInfos];
  v37 = [maneuverGuidanceInfos sortedArrayUsingComparator:&stru_10163AD38];

  v38 = sub_100021DB0(self->_maneuverEntries, &stru_10163AD58);
  v39 = [v38 sortedArrayUsingComparator:&stru_10163AD78];

  v40 = v37;
  v41 = v39;
  selfCopy6 = self;
  if (v40 | v41 && (v42 = [v40 isEqual:v41], v41, v40, (v42 & 1) == 0))
  {
    v43 = sub_100B603DC();
    v46 = 1;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v59 = sub_100021DB0(v41, &stru_10163AD98);
      v60 = sub_100021DB0(v40, &stru_10163ADB8);
      *buf = 134349570;
      selfCopy9 = selfCopy6;
      v108 = 2112;
      v109 = v59;
      v110 = 2112;
      v111 = v60;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver entries are different: existing: %@, new: %@", buf, 0x20u);

      v46 = 1;
      self = selfCopy6;
    }
  }

  else
  {
    v43 = sub_100B603DC();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = sub_100021DB0(v41, &stru_10163ADD8);
      v45 = sub_100021DB0(v40, &stru_10163ADF8);
      *buf = 134349570;
      selfCopy9 = selfCopy6;
      v108 = 2112;
      v109 = v44;
      v110 = 2112;
      v111 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);

      self = selfCopy6;
    }

    v46 = 0;
  }

  continueEntries = self->_continueEntries;
  if (v18)
  {
    self->_continueEntries = 0;
  }

  else
  {
    if (!continueEntries)
    {
      goto LABEL_47;
    }

    obj = v46;
    v48 = sub_100B603DC();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy9 = self;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "[%{public}p] Updating continue entries mapping", buf, 0xCu);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    continueEntries = self->_continueEntries;
    v49 = [(NSArray *)continueEntries countByEnumeratingWithState:&v100 objects:v105 count:16];
    if (v49)
    {
      v50 = v49;
      v85 = v41;
      v79 = v40;
      v80 = v21;
      v82 = v13;
      v51 = *v101;
      do
      {
        v52 = continueEntries;
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v101 != v51)
          {
            objc_enumerationMutation(v52);
          }

          v54 = *(*(&v100 + 1) + 8 * i);
          feature = [v54 feature];
          continueGuidanceInfos2 = [(PedestrianARVKRenderer *)selfCopy6 continueGuidanceInfos];
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100B61714;
          v99[3] = &unk_10163AE20;
          v99[4] = v54;
          v57 = sub_100030774(continueGuidanceInfos2, v99);

          mapViewDelegate = [(PedestrianARVKRenderer *)selfCopy6 mapViewDelegate];
          [mapViewDelegate updateGuidanceInfo:v57 forFeature:feature];
        }

        continueEntries = v52;
        v50 = [(NSArray *)v52 countByEnumeratingWithState:&v100 objects:v105 count:16];
      }

      while (v50);
      self = selfCopy6;
      v13 = v82;
      v18 = 0;
      v40 = v79;
      v23 = v80;
      v41 = v85;
    }

    else
    {
      self = selfCopy6;
    }

    v46 = obj;
  }

LABEL_47:
  arrivalEntry = self->_arrivalEntry;
  if (v89)
  {
    self->_arrivalEntry = 0;
  }

  else
  {
    if (!arrivalEntry)
    {
      goto LABEL_54;
    }

    obja = v46;
    v86 = v41;
    v62 = v23;
    v63 = v18;
    v64 = sub_100B603DC();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy9 = self;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "[%{public}p] Updating arrival entry mapping", buf, 0xCu);
    }

    arrivalEntry = [(PedestrianARVKRenderer *)self mapViewDelegate];
    arrivalGuidanceInfo2 = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
    feature2 = [(PedestrianARVKFeatureMapEntry *)self->_arrivalEntry feature];
    [arrivalEntry updateGuidanceInfo:arrivalGuidanceInfo2 forFeature:feature2];

    v18 = v63;
    v23 = v62;
    v41 = v86;
    v46 = obja;
  }

LABEL_54:
  maneuverEntries = self->_maneuverEntries;
  if (v46)
  {
    self->_maneuverEntries = 0;

    v68 = v88;
LABEL_68:
    [(PedestrianARVKRenderer *)self rebuildAnchors:v79];
    goto LABEL_69;
  }

  v68 = v88;
  if (maneuverEntries)
  {
    v84 = v12;
    v79 = v40;
    v80 = v23;
    v81 = v18;
    v83 = v13;
    v69 = sub_100B603DC();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy9 = self;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "[%{public}p] Updating maneuver entries mapping", buf, 0xCu);
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    objb = self->_maneuverEntries;
    v70 = [(NSArray *)objb countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v96;
      do
      {
        for (j = 0; j != v71; j = j + 1)
        {
          if (*v96 != v72)
          {
            objc_enumerationMutation(objb);
          }

          v74 = *(*(&v95 + 1) + 8 * j);
          feature3 = [v74 feature];
          maneuverGuidanceInfos2 = [(PedestrianARVKRenderer *)selfCopy6 maneuverGuidanceInfos];
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_100B61764;
          v94[3] = &unk_10163AE20;
          v94[4] = v74;
          v77 = sub_100030774(maneuverGuidanceInfos2, v94);

          mapViewDelegate2 = [(PedestrianARVKRenderer *)selfCopy6 mapViewDelegate];
          [mapViewDelegate2 updateGuidanceInfo:v77 forFeature:feature3];
        }

        v71 = [(NSArray *)objb countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v71);
    }

    v68 = v88;
    self = selfCopy6;
    v13 = v83;
    v12 = v84;
    v18 = v81;
    v40 = v79;
    v23 = v80;
  }

  if ((v18 | v89) == 1)
  {
    goto LABEL_68;
  }

LABEL_69:
}

- (NSArray)continueGuidanceInfos
{
  guidanceInfos = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_1000282CC(guidanceInfos, &stru_10163ABD8);

  return v3;
}

- (NSArray)maneuverGuidanceInfos
{
  guidanceInfos = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_1000282CC(guidanceInfos, &stru_10163ABB8);

  return v3;
}

- (MNGuidanceARInfo)arrivalGuidanceInfo
{
  guidanceInfos = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_100030774(guidanceInfos, &stru_10163AB98);

  return v3;
}

- (NSArray)continueEntries
{
  selfCopy = self;
  continueEntries = self->_continueEntries;
  if (!continueEntries)
  {
    continueGuidanceInfos = [(PedestrianARVKRenderer *)selfCopy continueGuidanceInfos];
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      v38 = selfCopy;
      v39 = 2112;
      v40 = continueGuidanceInfos;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating continue entries with continue infos: %@", buf, 0x16u);
    }

    v31 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [continueGuidanceInfos count]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = continueGuidanceInfos;
    v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v30 = *v33;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * i);
          v10 = [VKARWalkingContinueFeature alloc];
          v11 = selfCopy;
          route = [(PedestrianARVKRenderer *)selfCopy route];
          locationCoordinateRange = [v9 locationCoordinateRange];
          v15 = v14;
          arrowLabel = [v9 arrowLabel];
          v17 = [v10 initWithRoute:route range:locationCoordinateRange displayText:v15 continuePriority:{arrowLabel, objc_msgSend(v9, "priority")}];

          v18 = sub_100B603DC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            [v9 locationCoordinateRange];
            v21 = GEOPolylineCoordinateRangeAsString();
            arrowLabel2 = [v9 arrowLabel];
            v23 = [NSString stringWithFormat:@"<%@ %p, range: %@, text: %@>", v20, v17, v21, arrowLabel2];
            *buf = 134349314;
            v38 = v11;
            v39 = 2112;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Generated continue feature: %@", buf, 0x16u);
          }

          v24 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v17 guidanceInfo:v9];
          [v31 addObject:v24];

          selfCopy = v11;
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v7);
    }

    v25 = sub_100B603DC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v38 = selfCopy;
      v39 = 2112;
      v40 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Generated continue entries: %@", buf, 0x16u);
    }

    v26 = [v31 copy];
    v27 = selfCopy->_continueEntries;
    selfCopy->_continueEntries = v26;

    continueEntries = selfCopy->_continueEntries;
  }

  return continueEntries;
}

- (PedestrianARVKFeatureMapEntry)arrivalEntry
{
  arrivalEntry = self->_arrivalEntry;
  if (arrivalEntry)
  {
LABEL_25:
    v29 = arrivalEntry;
    goto LABEL_26;
  }

  v4 = sub_100B603DC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating arrival entry", buf, 0xCu);
  }

  arrivalGuidanceInfo = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
  if (arrivalGuidanceInfo)
  {
    v6 = arrivalGuidanceInfo;
    route = [(PedestrianARVKRenderer *)self route];
    steps = [route steps];
    lastObject = [steps lastObject];

    [lastObject endGeoCoordinate];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    route2 = [(PedestrianARVKRenderer *)self route];
    legs = [route2 legs];
    lastObject2 = [legs lastObject];

    destinationDisplayInfo = [lastObject2 destinationDisplayInfo];
    arInfo = [destinationDisplayInfo arInfo];

    route3 = [(PedestrianARVKRenderer *)self route];
    destination = [route3 destination];
    geoMapItem = [destination geoMapItem];
    _styleAttributes = [geoMapItem _styleAttributes];
    v25 = _styleAttributes;
    if (_styleAttributes)
    {
      v26 = _styleAttributes;
    }

    else
    {
      v26 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    }

    v30 = v26;

    storefrontFaceGeometrys = [arInfo storefrontFaceGeometrys];
    v32 = [storefrontFaceGeometrys count];

    if (v32)
    {
      v33 = sub_100B603DC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy6 = self;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] Generating arrival anchor with real look-around storefront data", buf, 0xCu);
      }

      v34 = [[VKARWalkingArrivalFeature alloc] initWithARInfo:arInfo iconStyleAttributes:v30];
    }

    else
    {
      v35 = +[NSUserDefaults standardUserDefaults];
      v36 = [v35 BOOLForKey:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

      v37 = sub_100B603DC();
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
      if (v36)
      {
        if (v38)
        {
          *buf = 134349056;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] Generating arrival anchor with fake look-around storefront data", buf, 0xCu);
        }

        v39 = sin(v11 * 0.0174532925);
        v40 = 6378137.0 / sqrt(v39 * v39 * -0.00669437999 + 1.0);
        v41 = (v40 + v15 * 0.0174532925) * v39;
        v42 = __sincos_stret(v13 * 0.0174532925);
        v43 = objc_opt_new();
        [v43 setX:v41 * v42.__cosval];
        [v43 setY:v41 * v42.__sinval];
        [v43 setZ:(v15 * 0.0174532925 + v40 * 0.99330562) * v39];
        v44 = objc_opt_new();
        [v44 setPosition:v43];
        v45 = objc_opt_new();

        [v45 addStorefrontFaceGeometry:v44];
        v34 = [[VKARWalkingArrivalFeature alloc] initWithARInfo:v45 iconStyleAttributes:v30];

        arInfo = v45;
      }

      else
      {
        if (v38)
        {
          *buf = 134349056;
          selfCopy6 = self;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] Generating arrival anchor without look-around storefront data", buf, 0xCu);
        }

        route4 = [(PedestrianARVKRenderer *)self route];
        steps2 = [route4 steps];
        lastObject3 = [steps2 lastObject];

        v49 = [VKARWalkingArrivalFeature alloc];
        [lastObject3 endGeoCoordinate];
        v34 = [v49 initWithPosition:v30 iconStyleAttributes:?];
      }
    }

    v50 = sub_100B603DC();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = [NSString stringWithFormat:@"<%@ %p, location: {%f, %f, %f}, arInfo: %@, styleAttributes: %@>", v52, v34, *&v11, *&v13, *&v15, arInfo, v30];
      *buf = 134349314;
      selfCopy6 = self;
      v59 = 2112;
      v60 = v53;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "[%{public}p] Generated arrival feature: %@", buf, 0x16u);
    }

    v54 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v34 guidanceInfo:v6];
    v55 = self->_arrivalEntry;
    self->_arrivalEntry = v54;

    arrivalEntry = self->_arrivalEntry;
    goto LABEL_25;
  }

  v27 = sub_100B603DC();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    guidanceInfos = [(PedestrianARVKRenderer *)self guidanceInfos];
    *buf = 134349314;
    selfCopy6 = self;
    v59 = 2112;
    v60 = guidanceInfos;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] There is no arrival guidance info; cannot generate arrival entry: %@", buf, 0x16u);
  }

  v29 = 0;
LABEL_26:

  return v29;
}

- (NSArray)maneuverEntries
{
  maneuverEntries = self->_maneuverEntries;
  if (!maneuverEntries)
  {
    maneuverGuidanceInfos = [(PedestrianARVKRenderer *)self maneuverGuidanceInfos];
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      selfCopy3 = self;
      v53 = 2112;
      v54 = maneuverGuidanceInfos;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating maneuver entries from guidance infos: %@", buf, 0x16u);
    }

    v45 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [maneuverGuidanceInfos count]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = maneuverGuidanceInfos;
    v6 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v44 = *v47;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v46 + 1) + 8 * i);
          route = [(PedestrianARVKRenderer *)self route];
          v11 = [route stepAtIndex:{objc_msgSend(v9, "stepIndex")}];

          v12 = [VKARWalkingManeuverFeature alloc];
          [v9 locationCoordinate];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          endRouteCoordinate = [v11 endRouteCoordinate];
          [v9 heading];
          v21 = v20;
          arrowLabel = [v9 arrowLabel];
          route2 = [(PedestrianARVKRenderer *)self route];
          v24 = [v12 initWithDisplayLocation:endRouteCoordinate routeCoordinate:arrowLabel maneuverHeading:objc_msgSend(route2 displayText:"elevationModel") elevationModel:{v14, v16, v18, v21}];

          v25 = sub_100B603DC();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            [v9 locationCoordinate];
            v29 = v28;
            [v9 locationCoordinate];
            v31 = v30;
            [v9 locationCoordinate];
            v33 = v32;
            [v9 heading];
            v35 = v34;
            arrowLabel2 = [v9 arrowLabel];
            v37 = [NSString stringWithFormat:@"<%@ %p, location: {%f, %f, %f}, heading: %f, text: %@>", v27, v24, v29, v31, v33, v35, arrowLabel2];
            *buf = 134349314;
            selfCopy3 = self;
            v53 = 2112;
            v54 = v37;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%{public}p] Generated maneuver feature: %@", buf, 0x16u);
          }

          v38 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v24 guidanceInfo:v9];
          [v45 addObject:v38];
        }

        v7 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v7);
    }

    v39 = sub_100B603DC();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      selfCopy3 = self;
      v53 = 2112;
      v54 = v45;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "[%{public}p] Generated maneuver entries: %@", buf, 0x16u);
    }

    v40 = [v45 copy];
    v41 = self->_maneuverEntries;
    self->_maneuverEntries = v40;

    maneuverEntries = self->_maneuverEntries;
  }

  return maneuverEntries;
}

- (void)clearAnchors
{
  v3 = sub_100B603DC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Clearing anchors", &v8, 0xCu);
  }

  maneuverEntries = self->_maneuverEntries;
  self->_maneuverEntries = 0;

  arrivalEntry = self->_arrivalEntry;
  self->_arrivalEntry = 0;

  continueEntries = self->_continueEntries;
  self->_continueEntries = 0;

  mapViewDelegate = [(PedestrianARVKRenderer *)self mapViewDelegate];
  [mapViewDelegate updateFeatureMapping:0];
}

- (void)rebuildAnchors
{
  route = [(PedestrianARVKRenderer *)self route];

  if (!route)
  {
    maneuverEntries = sub_100B603DC();
    if (!os_log_type_enabled(maneuverEntries, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    selfCopy6 = self;
    v20 = "[%{public}p] Cannot rebuild anchors without a route";
LABEL_23:
    _os_log_impl(&_mh_execute_header, maneuverEntries, OS_LOG_TYPE_INFO, v20, &v24, 0xCu);
    goto LABEL_24;
  }

  if (![(PedestrianARVKRenderer *)self shouldGenerateFeatures])
  {
    maneuverEntries = sub_100B603DC();
    if (!os_log_type_enabled(maneuverEntries, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    selfCopy6 = self;
    v20 = "[%{public}p] Cannot rebuild anchors while shouldGenerateFeatures is false";
    goto LABEL_23;
  }

  guidanceInfos = [(PedestrianARVKRenderer *)self guidanceInfos];
  v5 = [guidanceInfos count];

  if (!v5)
  {
    maneuverEntries = sub_100B603DC();
    if (!os_log_type_enabled(maneuverEntries, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    selfCopy6 = self;
    v20 = "[%{public}p] Cannot rebuild anchors without first AR guidance info callback";
    goto LABEL_23;
  }

  route2 = [(PedestrianARVKRenderer *)self route];
  steps = [route2 steps];
  v8 = [steps count];

  if (!v8)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      selfCopy6 = "[PedestrianARVKRenderer rebuildAnchors]";
      v26 = 2080;
      v27 = "PedestrianARVKRenderer.m";
      v28 = 1024;
      v29 = 199;
      v30 = 2080;
      v31 = "self.route.steps.count > 0";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
    }

    if (sub_100E03634())
    {
      v22 = sub_10006D178();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = +[NSThread callStackSymbols];
        v24 = 138412290;
        selfCopy6 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  route3 = [(PedestrianARVKRenderer *)self route];
  steps2 = [route3 steps];
  v11 = [steps2 count];

  maneuverEntries = sub_100B603DC();
  v13 = os_log_type_enabled(maneuverEntries, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    selfCopy6 = self;
    v20 = "[%{public}p] Current route has no steps. Cannot rebuild anchors.";
    goto LABEL_23;
  }

  if (v13)
  {
    v24 = 134349056;
    selfCopy6 = self;
    _os_log_impl(&_mh_execute_header, maneuverEntries, OS_LOG_TYPE_INFO, "[%{public}p] Rebuilding anchors", &v24, 0xCu);
  }

  maneuverEntries = [(PedestrianARVKRenderer *)self maneuverEntries];
  arrivalEntry = [(PedestrianARVKRenderer *)self arrivalEntry];
  if (arrivalEntry)
  {
    v15 = [maneuverEntries arrayByAddingObject:arrivalEntry];

    maneuverEntries = v15;
  }

  continueEntries = [(PedestrianARVKRenderer *)self continueEntries];
  if ([continueEntries count])
  {
    v17 = [maneuverEntries arrayByAddingObjectsFromArray:continueEntries];

    maneuverEntries = v17;
  }

  v18 = sub_100B603DC();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v24 = 134349314;
    selfCopy6 = self;
    v26 = 2112;
    v27 = maneuverEntries;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Rebuilt anchors: %@", &v24, 0x16u);
  }

  mapViewDelegate = [(PedestrianARVKRenderer *)self mapViewDelegate];
  [mapViewDelegate updateFeatureMapping:maneuverEntries];

LABEL_24:
}

- (BOOL)shouldShowFeatures
{
  mapView = [(PedestrianARVKRenderer *)self mapView];
  showsRoadLabels = [mapView showsRoadLabels];

  return showsRoadLabels;
}

- (void)setShouldShowFeatures:(BOOL)features
{
  featuresCopy = features;
  mapView = [(PedestrianARVKRenderer *)self mapView];
  showsRoadLabels = [mapView showsRoadLabels];

  if (showsRoadLabels != featuresCopy)
  {
    v7 = sub_100B603DC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (featuresCopy)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v11 = 134349314;
      selfCopy = self;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting shouldShowFeatures: %@", &v11, 0x16u);
    }

    mapView2 = [(PedestrianARVKRenderer *)self mapView];
    [mapView2 setShowsRoadLabels:featuresCopy];
  }
}

- (void)setShouldGenerateFeatures:(BOOL)features
{
  if (self->_shouldGenerateFeatures != features)
  {
    featuresCopy = features;
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (featuresCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 134349314;
      selfCopy = self;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Setting shouldGenerateFeatures: %@", &v8, 0x16u);
    }

    self->_shouldGenerateFeatures = featuresCopy;
    if (featuresCopy)
    {
      [(PedestrianARVKRenderer *)self rebuildAnchors];
    }

    else
    {
      [(PedestrianARVKRenderer *)self clearAnchors];
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    objc_storeStrong(&self->_route, route);
    v6 = sub_100B603DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349314;
      selfCopy = self;
      v11 = 2112;
      v12 = routeCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new route: %@", &v9, 0x16u);
    }

    v7 = [[VKRouteContext alloc] initWithComposedRoute:routeCopy useType:1];
    mapView = [(PedestrianARVKRenderer *)self mapView];
    [mapView setRouteContext:v7];

    [(PedestrianARVKRenderer *)self clearAnchors];
    [(PedestrianARVKRenderer *)self setGuidanceInfos:0];
  }
}

- (void)dealloc
{
  v3 = sub_100B603DC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

  [(GuidanceObserver *)self->_guidanceObserver removeOutlet:self];
  [(MNNavigationService *)self->_navigationService unregisterObserver:self];
  v5.receiver = self;
  v5.super_class = PedestrianARVKRenderer;
  [(PedestrianARVKRenderer *)&v5 dealloc];
}

- (PedestrianARVKRenderer)initWithMapView:(id)view navigationService:(id)service mapViewDelegate:(id)delegate guidanceObserver:(id)observer
{
  viewCopy = view;
  serviceCopy = service;
  delegateCopy = delegate;
  observerCopy = observer;
  if (!viewCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARVKRenderer initWithMapView:navigationService:mapViewDelegate:guidanceObserver:]";
      v34 = 2080;
      v35 = "PedestrianARVKRenderer.m";
      v36 = 1024;
      v37 = 95;
      v38 = 2080;
      v39 = "mapView != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!serviceCopy)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARVKRenderer initWithMapView:navigationService:mapViewDelegate:guidanceObserver:]";
      v34 = 2080;
      v35 = "PedestrianARVKRenderer.m";
      v36 = 1024;
      v37 = 96;
      v38 = 2080;
      v39 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!delegateCopy)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARVKRenderer initWithMapView:navigationService:mapViewDelegate:guidanceObserver:]";
      v34 = 2080;
      v35 = "PedestrianARVKRenderer.m";
      v36 = 1024;
      v37 = 97;
      v38 = 2080;
      v39 = "mapViewDelegate != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!observerCopy)
  {
    v28 = sub_10006D178();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "[PedestrianARVKRenderer initWithMapView:navigationService:mapViewDelegate:guidanceObserver:]";
      v34 = 2080;
      v35 = "PedestrianARVKRenderer.m";
      v36 = 1024;
      v37 = 98;
      v38 = 2080;
      v39 = "guidanceObserver != nil";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v29 = sub_10006D178();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v31.receiver = self;
  v31.super_class = PedestrianARVKRenderer;
  v15 = [(PedestrianARVKRenderer *)&v31 init];
  if (v15)
  {
    v16 = sub_100B603DC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v15->_mapView, view);
    objc_storeStrong(&v15->_navigationService, service);
    objc_storeWeak(&v15->_mapViewDelegate, delegateCopy);
    objc_storeStrong(&v15->_guidanceObserver, observer);
    v15->_lastManeuverStepIndex = -1;
    [(MNNavigationService *)v15->_navigationService registerObserver:v15];
    [(GuidanceObserver *)v15->_guidanceObserver addOutlet:v15];
    [(GuidanceObserver *)v15->_guidanceObserver repeatAllUpdatesForOutlet:v15];
    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 addObserver:v15 forKeyPath:@"PedestrianARInjectFakeStorefrontArrivalDataKey" options:1 context:0];
  }

  return v15;
}

@end