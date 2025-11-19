@interface PedestrianARVKRenderer
- (BOOL)shouldShowFeatures;
- (MNGuidanceARInfo)arrivalGuidanceInfo;
- (NSArray)continueEntries;
- (NSArray)continueGuidanceInfos;
- (NSArray)maneuverEntries;
- (NSArray)maneuverGuidanceInfos;
- (PedestrianARVKFeatureMapEntry)arrivalEntry;
- (PedestrianARVKMapViewMapDelegate)mapViewDelegate;
- (PedestrianARVKRenderer)initWithMapView:(id)a3 navigationService:(id)a4 mapViewDelegate:(id)a5 guidanceObserver:(id)a6;
- (void)clearAnchors;
- (void)dealloc;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)rebuildAnchors;
- (void)setGuidanceInfos:(id)a3;
- (void)setRoute:(id)a3;
- (void)setShouldGenerateFeatures:(BOOL)a3;
- (void)setShouldShowFeatures:(BOOL)a3;
- (void)updateARSigns:(id)a3;
@end

@implementation PedestrianARVKRenderer

- (PedestrianARVKMapViewMapDelegate)mapViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapViewDelegate);

  return WeakRetained;
}

- (void)updateARSigns:(id)a3
{
  v4 = a3;
  v5 = sub_100B603DC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134349314;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Got updated AR guidance infos: %@", &v6, 0x16u);
  }

  [(PedestrianARVKRenderer *)self setGuidanceInfos:v4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_9:
    v21.receiver = self;
    v21.super_class = PedestrianARVKRenderer;
    [(PedestrianARVKRenderer *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_10;
  }

  v15 = [v10 isEqualToString:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = sub_100B603DC();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v18 = @"YES";
    if (!v17)
    {
      v18 = @"NO";
    }

    v19 = v18;
    *buf = 134349314;
    v23 = self;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Debug force show arrival key was toggled: %@", buf, 0x16u);
  }

  arrivalEntry = self->_arrivalEntry;
  self->_arrivalEntry = 0;

  [(PedestrianARVKRenderer *)self rebuildAnchors];
LABEL_10:
}

- (void)navigationService:(id)a3 didUpdateStepIndex:(unint64_t)a4 segmentIndex:(unint64_t)a5
{
  v7 = a3;
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
        v19 = "[PedestrianARVKRenderer navigationService:didUpdateStepIndex:segmentIndex:]";
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
          v19 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v18, 0xCu);
        }
      }
    }
  }

  if ([(PedestrianARVKRenderer *)self lastManeuverStepIndex]!= a4)
  {
    v11 = sub_100B603DC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(PedestrianARVKRenderer *)self lastManeuverStepIndex];
      v18 = 134349568;
      v19 = self;
      v20 = 2048;
      v21 = v12;
      v22 = 2048;
      *v23 = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver step index changed; previous: %lu, current: %lu", &v18, 0x20u);
    }

    [(PedestrianARVKRenderer *)self setLastManeuverStepIndex:a4];
    maneuverEntries = self->_maneuverEntries;
    self->_maneuverEntries = 0;

    continueEntries = self->_continueEntries;
    self->_continueEntries = 0;

    [(PedestrianARVKRenderer *)self rebuildAnchors];
  }
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
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = 136316418;
        v27 = "[PedestrianARVKRenderer navigationService:didUpdateMatchedLocation:]";
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
          v27 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", &v26, 0xCu);
        }
      }
    }
  }

  v11 = [v7 routeMatch];

  v12 = sub_100B603DC();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      [v7 coordinate];
      v15 = v14;
      [v7 coordinate];
      v17 = v16;
      [v7 altitude];
      v26 = 134349825;
      v27 = self;
      v28 = 2049;
      v29 = v15;
      v30 = 2049;
      *v31 = v17;
      *&v31[8] = 2049;
      *&v31[10] = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Got location update: %{private}0.6f, %{private}0.6f, %{private}0.6f", &v26, 0x2Au);
    }

    v19 = [(PedestrianARVKRenderer *)self mapView];
    v20 = [v7 routeMatch];
    [v19 setRouteUserOffset:{objc_msgSend(v20, "routeCoordinate")}];

    v12 = [(PedestrianARVKRenderer *)self mapView];
    v21 = [v12 userLocationAnimator];
    v22 = [v7 routeMatch];
    [v21 updateLocation:v7 routeMatch:v22];
  }

  else if (v13)
  {
    v26 = 134349056;
    v27 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Location update had no route match; ignoring", &v26, 0xCu);
  }
}

- (void)setGuidanceInfos:(id)a3
{
  v5 = a3;
  v6 = sub_100B603DC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    guidanceInfos = self->_guidanceInfos;
    *buf = 134349570;
    v107 = self;
    v108 = 2112;
    v109 = guidanceInfos;
    v110 = 2112;
    v111 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating guidance info; old: %@, new: %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_guidanceInfos, a3);
  v8 = [(PedestrianARVKRenderer *)self continueGuidanceInfos];
  v9 = [v8 sortedArrayUsingComparator:&stru_10163AC18];

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
      v107 = self;
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
      v107 = self;
      v108 = 2112;
      v109 = v16;
      v110 = 2112;
      v111 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Continue entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  v19 = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
  v20 = [(PedestrianARVKFeatureMapEntry *)self->_arrivalEntry guidanceInfo];
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v87 = v22;
  v88 = v5;
  if (v21 | v22 && (v25 = [v21 isEqual:v22], v24, v21, (v25 & 1) == 0))
  {
    v31 = sub_100B603DC();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [v24 mapsShortDescription];
      v33 = [v21 mapsShortDescription];
      *buf = 134349570;
      v107 = self;
      v108 = 2112;
      v109 = v32;
      v110 = 2112;
      v111 = v33;
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
      v27 = [v24 mapsShortDescription];
      v28 = [v21 mapsShortDescription];
      *buf = 134349570;
      v107 = self;
      v108 = 2112;
      v109 = v27;
      v110 = 2112;
      v111 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[%{public}p] Arrival entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);
    }

    v89 = 0;
  }

  v36 = [(PedestrianARVKRenderer *)self maneuverGuidanceInfos];
  v37 = [v36 sortedArrayUsingComparator:&stru_10163AD38];

  v38 = sub_100021DB0(self->_maneuverEntries, &stru_10163AD58);
  v39 = [v38 sortedArrayUsingComparator:&stru_10163AD78];

  v40 = v37;
  v41 = v39;
  v93 = self;
  if (v40 | v41 && (v42 = [v40 isEqual:v41], v41, v40, (v42 & 1) == 0))
  {
    v43 = sub_100B603DC();
    v46 = 1;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v59 = sub_100021DB0(v41, &stru_10163AD98);
      v60 = sub_100021DB0(v40, &stru_10163ADB8);
      *buf = 134349570;
      v107 = v93;
      v108 = 2112;
      v109 = v59;
      v110 = 2112;
      v111 = v60;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver entries are different: existing: %@, new: %@", buf, 0x20u);

      v46 = 1;
      self = v93;
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
      v107 = v93;
      v108 = 2112;
      v109 = v44;
      v110 = 2112;
      v111 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}p] Maneuver entries are both nil or equal: existing: %@, new: %@", buf, 0x20u);

      self = v93;
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
      v107 = self;
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
          v55 = [v54 feature];
          v56 = [(PedestrianARVKRenderer *)v93 continueGuidanceInfos];
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100B61714;
          v99[3] = &unk_10163AE20;
          v99[4] = v54;
          v57 = sub_100030774(v56, v99);

          v58 = [(PedestrianARVKRenderer *)v93 mapViewDelegate];
          [v58 updateGuidanceInfo:v57 forFeature:v55];
        }

        continueEntries = v52;
        v50 = [(NSArray *)v52 countByEnumeratingWithState:&v100 objects:v105 count:16];
      }

      while (v50);
      self = v93;
      v13 = v82;
      v18 = 0;
      v40 = v79;
      v23 = v80;
      v41 = v85;
    }

    else
    {
      self = v93;
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
      v107 = self;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "[%{public}p] Updating arrival entry mapping", buf, 0xCu);
    }

    arrivalEntry = [(PedestrianARVKRenderer *)self mapViewDelegate];
    v65 = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
    v66 = [(PedestrianARVKFeatureMapEntry *)self->_arrivalEntry feature];
    [arrivalEntry updateGuidanceInfo:v65 forFeature:v66];

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
      v107 = self;
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
          v75 = [v74 feature];
          v76 = [(PedestrianARVKRenderer *)v93 maneuverGuidanceInfos];
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_100B61764;
          v94[3] = &unk_10163AE20;
          v94[4] = v74;
          v77 = sub_100030774(v76, v94);

          v78 = [(PedestrianARVKRenderer *)v93 mapViewDelegate];
          [v78 updateGuidanceInfo:v77 forFeature:v75];
        }

        v71 = [(NSArray *)objb countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v71);
    }

    v68 = v88;
    self = v93;
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
  v2 = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_1000282CC(v2, &stru_10163ABD8);

  return v3;
}

- (NSArray)maneuverGuidanceInfos
{
  v2 = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_1000282CC(v2, &stru_10163ABB8);

  return v3;
}

- (MNGuidanceARInfo)arrivalGuidanceInfo
{
  v2 = [(PedestrianARVKRenderer *)self guidanceInfos];
  v3 = sub_100030774(v2, &stru_10163AB98);

  return v3;
}

- (NSArray)continueEntries
{
  v2 = self;
  continueEntries = self->_continueEntries;
  if (!continueEntries)
  {
    v4 = [(PedestrianARVKRenderer *)v2 continueGuidanceInfos];
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      v38 = v2;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating continue entries with continue infos: %@", buf, 0x16u);
    }

    v31 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v4;
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
          v11 = v2;
          v12 = [(PedestrianARVKRenderer *)v2 route];
          v13 = [v9 locationCoordinateRange];
          v15 = v14;
          v16 = [v9 arrowLabel];
          v17 = [v10 initWithRoute:v12 range:v13 displayText:v15 continuePriority:{v16, objc_msgSend(v9, "priority")}];

          v18 = sub_100B603DC();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            [v9 locationCoordinateRange];
            v21 = GEOPolylineCoordinateRangeAsString();
            v22 = [v9 arrowLabel];
            v23 = [NSString stringWithFormat:@"<%@ %p, range: %@, text: %@>", v20, v17, v21, v22];
            *buf = 134349314;
            v38 = v11;
            v39 = 2112;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Generated continue feature: %@", buf, 0x16u);
          }

          v24 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v17 guidanceInfo:v9];
          [v31 addObject:v24];

          v2 = v11;
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v7);
    }

    v25 = sub_100B603DC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v38 = v2;
      v39 = 2112;
      v40 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Generated continue entries: %@", buf, 0x16u);
    }

    v26 = [v31 copy];
    v27 = v2->_continueEntries;
    v2->_continueEntries = v26;

    continueEntries = v2->_continueEntries;
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
    v58 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating arrival entry", buf, 0xCu);
  }

  v5 = [(PedestrianARVKRenderer *)self arrivalGuidanceInfo];
  if (v5)
  {
    v6 = v5;
    v7 = [(PedestrianARVKRenderer *)self route];
    v8 = [v7 steps];
    v9 = [v8 lastObject];

    [v9 endGeoCoordinate];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(PedestrianARVKRenderer *)self route];
    v17 = [v16 legs];
    v18 = [v17 lastObject];

    v19 = [v18 destinationDisplayInfo];
    v20 = [v19 arInfo];

    v21 = [(PedestrianARVKRenderer *)self route];
    v22 = [v21 destination];
    v23 = [v22 geoMapItem];
    v24 = [v23 _styleAttributes];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    }

    v30 = v26;

    v31 = [v20 storefrontFaceGeometrys];
    v32 = [v31 count];

    if (v32)
    {
      v33 = sub_100B603DC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v58 = self;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%{public}p] Generating arrival anchor with real look-around storefront data", buf, 0xCu);
      }

      v34 = [[VKARWalkingArrivalFeature alloc] initWithARInfo:v20 iconStyleAttributes:v30];
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
          v58 = self;
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

        v20 = v45;
      }

      else
      {
        if (v38)
        {
          *buf = 134349056;
          v58 = self;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] Generating arrival anchor without look-around storefront data", buf, 0xCu);
        }

        v46 = [(PedestrianARVKRenderer *)self route];
        v47 = [v46 steps];
        v48 = [v47 lastObject];

        v49 = [VKARWalkingArrivalFeature alloc];
        [v48 endGeoCoordinate];
        v34 = [v49 initWithPosition:v30 iconStyleAttributes:?];
      }
    }

    v50 = sub_100B603DC();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = [NSString stringWithFormat:@"<%@ %p, location: {%f, %f, %f}, arInfo: %@, styleAttributes: %@>", v52, v34, *&v11, *&v13, *&v15, v20, v30];
      *buf = 134349314;
      v58 = self;
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
    v28 = [(PedestrianARVKRenderer *)self guidanceInfos];
    *buf = 134349314;
    v58 = self;
    v59 = 2112;
    v60 = v28;
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
    v4 = [(PedestrianARVKRenderer *)self maneuverGuidanceInfos];
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349314;
      v52 = self;
      v53 = 2112;
      v54 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Generating maneuver entries from guidance infos: %@", buf, 0x16u);
    }

    v45 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v4;
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
          v10 = [(PedestrianARVKRenderer *)self route];
          v11 = [v10 stepAtIndex:{objc_msgSend(v9, "stepIndex")}];

          v12 = [VKARWalkingManeuverFeature alloc];
          [v9 locationCoordinate];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v11 endRouteCoordinate];
          [v9 heading];
          v21 = v20;
          v22 = [v9 arrowLabel];
          v23 = [(PedestrianARVKRenderer *)self route];
          v24 = [v12 initWithDisplayLocation:v19 routeCoordinate:v22 maneuverHeading:objc_msgSend(v23 displayText:"elevationModel") elevationModel:{v14, v16, v18, v21}];

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
            v36 = [v9 arrowLabel];
            v37 = [NSString stringWithFormat:@"<%@ %p, location: {%f, %f, %f}, heading: %f, text: %@>", v27, v24, v29, v31, v33, v35, v36];
            *buf = 134349314;
            v52 = self;
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
      v52 = self;
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
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Clearing anchors", &v8, 0xCu);
  }

  maneuverEntries = self->_maneuverEntries;
  self->_maneuverEntries = 0;

  arrivalEntry = self->_arrivalEntry;
  self->_arrivalEntry = 0;

  continueEntries = self->_continueEntries;
  self->_continueEntries = 0;

  v7 = [(PedestrianARVKRenderer *)self mapViewDelegate];
  [v7 updateFeatureMapping:0];
}

- (void)rebuildAnchors
{
  v3 = [(PedestrianARVKRenderer *)self route];

  if (!v3)
  {
    v12 = sub_100B603DC();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    v25 = self;
    v20 = "[%{public}p] Cannot rebuild anchors without a route";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v20, &v24, 0xCu);
    goto LABEL_24;
  }

  if (![(PedestrianARVKRenderer *)self shouldGenerateFeatures])
  {
    v12 = sub_100B603DC();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    v25 = self;
    v20 = "[%{public}p] Cannot rebuild anchors while shouldGenerateFeatures is false";
    goto LABEL_23;
  }

  v4 = [(PedestrianARVKRenderer *)self guidanceInfos];
  v5 = [v4 count];

  if (!v5)
  {
    v12 = sub_100B603DC();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    v25 = self;
    v20 = "[%{public}p] Cannot rebuild anchors without first AR guidance info callback";
    goto LABEL_23;
  }

  v6 = [(PedestrianARVKRenderer *)self route];
  v7 = [v6 steps];
  v8 = [v7 count];

  if (!v8)
  {
    v21 = sub_10006D178();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "[PedestrianARVKRenderer rebuildAnchors]";
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
        v25 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);
      }
    }
  }

  v9 = [(PedestrianARVKRenderer *)self route];
  v10 = [v9 steps];
  v11 = [v10 count];

  v12 = sub_100B603DC();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_24;
    }

    v24 = 134349056;
    v25 = self;
    v20 = "[%{public}p] Current route has no steps. Cannot rebuild anchors.";
    goto LABEL_23;
  }

  if (v13)
  {
    v24 = 134349056;
    v25 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Rebuilding anchors", &v24, 0xCu);
  }

  v12 = [(PedestrianARVKRenderer *)self maneuverEntries];
  v14 = [(PedestrianARVKRenderer *)self arrivalEntry];
  if (v14)
  {
    v15 = [v12 arrayByAddingObject:v14];

    v12 = v15;
  }

  v16 = [(PedestrianARVKRenderer *)self continueEntries];
  if ([v16 count])
  {
    v17 = [v12 arrayByAddingObjectsFromArray:v16];

    v12 = v17;
  }

  v18 = sub_100B603DC();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v24 = 134349314;
    v25 = self;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] Rebuilt anchors: %@", &v24, 0x16u);
  }

  v19 = [(PedestrianARVKRenderer *)self mapViewDelegate];
  [v19 updateFeatureMapping:v12];

LABEL_24:
}

- (BOOL)shouldShowFeatures
{
  v2 = [(PedestrianARVKRenderer *)self mapView];
  v3 = [v2 showsRoadLabels];

  return v3;
}

- (void)setShouldShowFeatures:(BOOL)a3
{
  v3 = a3;
  v5 = [(PedestrianARVKRenderer *)self mapView];
  v6 = [v5 showsRoadLabels];

  if (v6 != v3)
  {
    v7 = sub_100B603DC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v3)
      {
        v8 = @"YES";
      }

      v9 = v8;
      v11 = 134349314;
      v12 = self;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Setting shouldShowFeatures: %@", &v11, 0x16u);
    }

    v10 = [(PedestrianARVKRenderer *)self mapView];
    [v10 setShowsRoadLabels:v3];
  }
}

- (void)setShouldGenerateFeatures:(BOOL)a3
{
  if (self->_shouldGenerateFeatures != a3)
  {
    v3 = a3;
    v5 = sub_100B603DC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 134349314;
      v9 = self;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Setting shouldGenerateFeatures: %@", &v8, 0x16u);
    }

    self->_shouldGenerateFeatures = v3;
    if (v3)
    {
      [(PedestrianARVKRenderer *)self rebuildAnchors];
    }

    else
    {
      [(PedestrianARVKRenderer *)self clearAnchors];
    }
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    objc_storeStrong(&self->_route, a3);
    v6 = sub_100B603DC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134349314;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new route: %@", &v9, 0x16u);
    }

    v7 = [[VKRouteContext alloc] initWithComposedRoute:v5 useType:1];
    v8 = [(PedestrianARVKRenderer *)self mapView];
    [v8 setRouteContext:v7];

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
    v7 = self;
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

- (PedestrianARVKRenderer)initWithMapView:(id)a3 navigationService:(id)a4 mapViewDelegate:(id)a5 guidanceObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
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

  if (!v12)
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

  if (!v13)
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

  if (!v14)
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

    objc_storeStrong(&v15->_mapView, a3);
    objc_storeStrong(&v15->_navigationService, a4);
    objc_storeWeak(&v15->_mapViewDelegate, v13);
    objc_storeStrong(&v15->_guidanceObserver, a6);
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