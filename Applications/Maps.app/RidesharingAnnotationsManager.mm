@interface RidesharingAnnotationsManager
- (IOSBasedChromeViewController)chromeViewController;
- (MKAnnotationView)vehicleAnnotationView;
- (MKMarkerAnnotationView)pickupAnnotationView;
- (RidesharingAnnotationsManager)initWithMapView:(id)view;
- (RidesharingBalloonETAView)ETAView;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_updateFromRideStatus:(id)status;
- (void)addCurrentRideWithApplicationIdentifier:(id)identifier;
- (void)removeCurrentRide;
- (void)rideStatusMapDidChange:(id)change;
- (void)setPickupAnnotation:(id)annotation;
- (void)setVehicleAnnotation:(id)annotation;
- (void)setWaypointAnnotations:(id)annotations;
@end

@implementation RidesharingAnnotationsManager

- (IOSBasedChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (RidesharingBalloonETAView)ETAView
{
  ETAView = self->_ETAView;
  if (!ETAView)
  {
    v4 = objc_alloc_init(RidesharingBalloonETAView);
    v5 = self->_ETAView;
    self->_ETAView = v4;

    ETAView = self->_ETAView;
  }

  return ETAView;
}

- (MKAnnotationView)vehicleAnnotationView
{
  vehicleAnnotationView = self->_vehicleAnnotationView;
  if (!vehicleAnnotationView)
  {
    v4 = [MKAnnotationView alloc];
    vehicleAnnotation = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
    v6 = [v4 initWithAnnotation:vehicleAnnotation reuseIdentifier:@"RidesharingVehicleAnnotationView"];
    v7 = self->_vehicleAnnotationView;
    self->_vehicleAnnotationView = v6;

    rideStatus = [(RidesharingAnnotationsManager *)self rideStatus];
    vehicleImage = [rideStatus vehicleImage];
    GEOConfigGetDouble();
    v11 = v10;
    GEOConfigGetDouble();
    v13 = [vehicleImage _maps_imageWithAspectFitScalingForMaximumSize:{v11, v12}];

    [(MKAnnotationView *)self->_vehicleAnnotationView setImage:v13];
    v14 = self->_vehicleAnnotationView;
    v15 = +[UIColor clearColor];
    [(MKAnnotationView *)v14 setBackgroundColor:v15];

    [(MKAnnotationView *)self->_vehicleAnnotationView setSelected:1 animated:1];
    vehicleAnnotationView = self->_vehicleAnnotationView;
  }

  return vehicleAnnotationView;
}

- (MKMarkerAnnotationView)pickupAnnotationView
{
  pickupAnnotationView = self->_pickupAnnotationView;
  if (!pickupAnnotationView)
  {
    v4 = [MKMarkerAnnotationView alloc];
    pickupAnnotation = [(RidesharingAnnotationsManager *)self pickupAnnotation];
    v6 = [v4 initWithAnnotation:pickupAnnotation reuseIdentifier:@"RidesharingPickupAnnotationView"];
    v7 = self->_pickupAnnotationView;
    self->_pickupAnnotationView = v6;

    v8 = self->_pickupAnnotationView;
    v9 = objc_opt_new();
    [(MKMarkerAnnotationView *)v8 setGlyphImage:v9];

    [(MKMarkerAnnotationView *)self->_pickupAnnotationView setCanShowCallout:1];
    v10 = self->_pickupAnnotationView;
    v11 = +[RidesharingBalloonETAView balloonFillColor];
    [(MKMarkerAnnotationView *)v10 setMarkerTintColor:v11];

    v12 = self->_pickupAnnotationView;
    eTAView = [(RidesharingAnnotationsManager *)self ETAView];
    [(MKMarkerAnnotationView *)v12 setSelectedContentView:eTAView];

    [(MKMarkerAnnotationView *)self->_pickupAnnotationView setSelected:1 animated:1];
    pickupAnnotationView = self->_pickupAnnotationView;
  }

  return pickupAnnotationView;
}

- (void)setWaypointAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  if (annotationsCopy)
  {
    p_waypointAnnotations = &self->_waypointAnnotations;
    if (![(NSArray *)self->_waypointAnnotations isEqualToArray:annotationsCopy])
    {
      if (*p_waypointAnnotations)
      {
        mapView = [(RidesharingAnnotationsManager *)self mapView];
        [mapView removeAnnotations:self->_waypointAnnotations];
      }

      mapView2 = [(RidesharingAnnotationsManager *)self mapView];
      [mapView2 addAnnotations:annotationsCopy];

      objc_storeStrong(p_waypointAnnotations, annotations);
    }

    objc_storeStrong(p_waypointAnnotations, annotations);
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
      v11 = [[NSString alloc] initWithFormat:@"waypointAnnotations is nil. Returning."];
      v12 = 136315394;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", &v12, 0x16u);
    }
  }
}

- (void)setVehicleAnnotation:(id)annotation
{
  annotationCopy = annotation;
  p_vehicleAnnotation = &self->_vehicleAnnotation;
  vehicleAnnotation = self->_vehicleAnnotation;
  if (vehicleAnnotation != annotationCopy)
  {
    v10 = annotationCopy;
    if (vehicleAnnotation)
    {
      mapView = [(RidesharingAnnotationsManager *)self mapView];
      [mapView removeAnnotation:self->_vehicleAnnotation];

      annotationCopy = v10;
    }

    if (annotationCopy)
    {
      mapView2 = [(RidesharingAnnotationsManager *)self mapView];
      [mapView2 addAnnotation:v10];
    }

    objc_storeStrong(p_vehicleAnnotation, annotation);
    annotationCopy = v10;
  }
}

- (void)setPickupAnnotation:(id)annotation
{
  annotationCopy = annotation;
  p_pickupAnnotation = &self->_pickupAnnotation;
  pickupAnnotation = self->_pickupAnnotation;
  if (pickupAnnotation != annotationCopy)
  {
    v10 = annotationCopy;
    if (pickupAnnotation)
    {
      mapView = [(RidesharingAnnotationsManager *)self mapView];
      [mapView removeAnnotation:self->_pickupAnnotation];

      annotationCopy = v10;
    }

    if (annotationCopy)
    {
      mapView2 = [(RidesharingAnnotationsManager *)self mapView];
      [mapView2 addAnnotation:v10];
    }

    objc_storeStrong(p_pickupAnnotation, annotation);
    annotationCopy = v10;
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  vehicleAnnotation = [(RidesharingAnnotationsManager *)self vehicleAnnotation];

  if (vehicleAnnotation == annotationCopy)
  {
    vehicleAnnotationView = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
  }

  else
  {
    pickupAnnotation = [(RidesharingAnnotationsManager *)self pickupAnnotation];

    if (pickupAnnotation != annotationCopy)
    {
      v8 = 0;
      goto LABEL_7;
    }

    pickupAnnotationView = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
    eTAView = [(RidesharingAnnotationsManager *)self ETAView];
    [pickupAnnotationView setSelectedContentView:eTAView];

    vehicleAnnotationView = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
  }

  v8 = vehicleAnnotationView;
LABEL_7:

  return v8;
}

- (void)_updateFromRideStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isValidRide] && (objc_msgSend(statusCopy, "isActiveRide") & 1) != 0)
  {
    v5 = ([statusCopy isScheduledRide] & 1) == 0 && objc_msgSend(statusCopy, "phase") != 1;
    vehicleLocation = [statusCopy vehicleLocation];
    [vehicleLocation coordinate];
    v8 = v7;
    v10 = v9;

    vehicleLocation2 = [statusCopy vehicleLocation];
    v12 = vehicleLocation2;
    if (vehicleLocation2 && ([vehicleLocation2 coordinate], latitude = v162.latitude, longitude = v162.longitude, CLLocationCoordinate2DIsValid(v162)) && fabs(latitude) > 2.22044605e-16)
    {

      if (fabs(longitude) > 2.22044605e-16)
      {
        LODWORD(dropoffAnnotation2) = 1;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
      v18 = [[NSString alloc] initWithFormat:@"Vehicle coordinate was invalid"];
      *buf = 136315394;
      v159 = v17;
      v160 = 2112;
      v161 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    LODWORD(dropoffAnnotation2) = 0;
LABEL_16:
    application = [statusCopy application];
    identifier = [application identifier];
    identifier2 = [statusCopy identifier];
    v151 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:identifier rideIdentifier:identifier2];

    if (v5)
    {
      vehicleLocation3 = [statusCopy vehicleLocation];

      if (vehicleLocation3)
      {
        if ((dropoffAnnotation2 & 1) == 0)
        {
          [v151 setInvalidVehicleLocation:1];
        }
      }

      else
      {
        [v151 setMissingVehicleLocation:1];
      }
    }

    pickupLocation = [statusCopy pickupLocation];
    location = [pickupLocation location];
    [location coordinate];
    v26 = v25;
    v28 = v27;

    pickupLocation2 = [statusCopy pickupLocation];
    location2 = [pickupLocation2 location];
    v31 = location2;
    if (location2 && ([location2 coordinate], v32 = v163.latitude, v33 = v163.longitude, CLLocationCoordinate2DIsValid(v163)) && fabs(v32) > 2.22044605e-16)
    {

      if (fabs(v33) > 2.22044605e-16)
      {
        v34 = 1;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
      v37 = [[NSString alloc] initWithFormat:@"Pickup coordinate was invalid"];
      *buf = 136315394;
      v159 = v36;
      v160 = 2112;
      v161 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v34 = 0;
LABEL_30:
    dropoffLocation = [statusCopy dropoffLocation];
    location3 = [dropoffLocation location];
    v40 = location3;
    if (location3 && ([location3 coordinate], v41 = v164.latitude, v42 = v164.longitude, CLLocationCoordinate2DIsValid(v164)) && fabs(v41) > 2.22044605e-16)
    {

      if (fabs(v42) > 2.22044605e-16)
      {
        v150 = 1;
        goto LABEL_39;
      }
    }

    else
    {
    }

    v43 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
      v45 = [[NSString alloc] initWithFormat:@"Dropoff coordinate was invalid"];
      *buf = 136315394;
      v159 = v44;
      v160 = 2112;
      v161 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v150 = 0;
LABEL_39:
    mapView = [(RidesharingAnnotationsManager *)self mapView];
    userLocation = [mapView userLocation];
    [userLocation coordinate];

    mapView2 = [(RidesharingAnnotationsManager *)self mapView];
    userLocation2 = [mapView2 userLocation];
    location4 = [userLocation2 location];
    v51 = location4;
    if (location4)
    {
      [location4 coordinate];
      v52 = v165.latitude;
      v53 = v165.longitude;
      v54 = 0;
      if (CLLocationCoordinate2DIsValid(v165) && fabs(v52) > 2.22044605e-16)
      {
        v54 = fabs(v53) > 2.22044605e-16;
      }
    }

    else
    {
      v54 = 0;
    }

    if (!v54)
    {
      v55 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        v56 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
        v57 = [[NSString alloc] initWithFormat:@"User location coordinate was invalid"];
        *buf = 136315394;
        v159 = v56;
        v160 = 2112;
        v161 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }
    }

    v58 = objc_alloc_init(NSMutableArray);
    if (dropoffAnnotation2 && ([statusCopy vehicleImage], v59 = objc_claimAutoreleasedReturnValue(), v59, v59))
    {
      v148 = v34;
      v149 = v54;
      vehicleAnnotationView3 = +[NSDate date];
      lastVehicleLocationUpdateDate = [(RidesharingAnnotationsManager *)self lastVehicleLocationUpdateDate];
      if (lastVehicleLocationUpdateDate)
      {
        lastVehicleLocationUpdateDate2 = [(RidesharingAnnotationsManager *)self lastVehicleLocationUpdateDate];
        [vehicleAnnotationView3 timeIntervalSinceDate:lastVehicleLocationUpdateDate2];
        v64 = v63 <= 10.0;
      }

      else
      {
        v64 = 1;
      }

      [(RidesharingAnnotationsManager *)self setLastVehicleLocationUpdateDate:vehicleAnnotationView3];
      vehicleAnnotation = [(RidesharingAnnotationsManager *)self vehicleAnnotation];

      if (!vehicleAnnotation)
      {
        v69 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v71 = dropoffAnnotation2;
          dropoffAnnotation2 = [[NSString alloc] initWithFormat:@"Creating vehicle annotation"];
          *buf = 136315394;
          v159 = v70;
          v160 = 2112;
          v161 = dropoffAnnotation2;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

          LOBYTE(dropoffAnnotation2) = v71;
        }

        self->_shouldReframeMapView = 1;
        v72 = objc_alloc_init(MKPointAnnotation);
        [(RidesharingAnnotationsManager *)self setVehicleAnnotation:v72];

        v64 = 0;
      }

      v73 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
        v146 = dropoffAnnotation2;
        v75 = [NSString alloc];
        vehicleLocation4 = [statusCopy vehicleLocation];
        [vehicleLocation4 course];
        v78 = @"No";
        if (v64)
        {
          v78 = @"Yes";
        }

        dropoffAnnotation2 = [v75 initWithFormat:@"Updating vehicle annotation: %f, %f at %f with animation: %@", *&v8, *&v10, v77, v78];
        *buf = 136315394;
        v159 = v74;
        v160 = 2112;
        v161 = dropoffAnnotation2;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

        LOBYTE(dropoffAnnotation2) = v146;
      }

      if (v64)
      {
        v152[0] = _NSConcreteStackBlock;
        v152[1] = 3221225472;
        v152[2] = sub_100BB06CC;
        v152[3] = &unk_10164C698;
        v152[4] = self;
        v154 = v8;
        v155 = v10;
        v153 = statusCopy;
        [UIView animateWithDuration:4 delay:v152 options:0 animations:0.6 completion:0.0];
      }

      else
      {
        vehicleAnnotation2 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
        [vehicleAnnotation2 setCoordinate:{v8, v10}];

        vehicleAnnotationView = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
        vehicleLocation5 = [statusCopy vehicleLocation];
        [vehicleLocation5 course];
        [vehicleAnnotationView _setDirection:?];

        vehicleAnnotationView2 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
        [vehicleAnnotationView2 setAlpha:1.0];
      }

      vehicleAnnotation3 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
      [v58 addObject:vehicleAnnotation3];

      v34 = v148;
      v54 = v149;
    }

    else
    {
      v65 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
        v67 = [[NSString alloc] initWithFormat:@"Stale vehicle annotation"];
        *buf = 136315394;
        v159 = v66;
        v160 = 2112;
        v161 = v67;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
      }

      vehicleAnnotationView3 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
      [vehicleAnnotationView3 setAlpha:0.25];
    }

    if (!v34 || [statusCopy phase] == 3 || objc_msgSend(statusCopy, "phase") == 4)
    {
      [(RidesharingAnnotationsManager *)self setPickupAnnotation:0];
    }

    else
    {
      pickupAnnotation = [(RidesharingAnnotationsManager *)self pickupAnnotation];

      if (!pickupAnnotation)
      {
        self->_shouldReframeMapView = 1;
        v137 = objc_alloc_init(MKPointAnnotation);
        [(RidesharingAnnotationsManager *)self setPickupAnnotation:v137];
      }

      pickupAnnotation2 = [(RidesharingAnnotationsManager *)self pickupAnnotation];
      [pickupAnnotation2 setCoordinate:{v26, v28}];

      pickupAnnotationView = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
      [pickupAnnotationView setSelected:1 animated:1];

      isScheduledRide = [statusCopy isScheduledRide];
      eTAView = [(RidesharingAnnotationsManager *)self ETAView];
      if (isScheduledRide)
      {
        scheduledPickupWindowStartDateComponents = [statusCopy scheduledPickupWindowStartDateComponents];
        [eTAView setScheduledPickupWindowStart:scheduledPickupWindowStartDateComponents];
      }

      else
      {
        scheduledPickupWindowStartDateComponents = [statusCopy pickupETAMinutes];
        [eTAView setMinutes:scheduledPickupWindowStartDateComponents withState:0];
      }

      pickupAnnotationView2 = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
      eTAView2 = [(RidesharingAnnotationsManager *)self ETAView];
      [pickupAnnotationView2 setSelectedContentView:eTAView2];

      pickupAnnotation3 = [(RidesharingAnnotationsManager *)self pickupAnnotation];
      [v58 addObject:pickupAnnotation3];
    }

    chromeViewController = [(RidesharingAnnotationsManager *)self chromeViewController];
    currentIOSBasedContext = [chromeViewController currentIOSBasedContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (v150 && (([statusCopy phase] == 3) & isKindOfClass) == 1)
    {
      dropoffAnnotation = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

      if (!dropoffAnnotation)
      {
        self->_shouldReframeMapView = 1;
        v88 = [MKMapItem alloc];
        dropoffLocation2 = [statusCopy dropoffLocation];
        [dropoffLocation2 _geoMapItem];
        v90 = v147 = dropoffAnnotation2;
        v91 = [v88 initWithGeoMapItem:v90 isPlaceHolderPlace:0];

        v92 = [[RidesharingPOIAnnotation alloc] initWithMapItem:v91];
        [(RidesharingAnnotationsManager *)self setDropoffAnnotation:v92];

        customFeatureStore = [(RidesharingAnnotationsManager *)self customFeatureStore];
        dropoffAnnotation2 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
        v157 = dropoffAnnotation2;
        v94 = [NSArray arrayWithObjects:&v157 count:1];
        [customFeatureStore addAnnotations:v94];

        LOBYTE(dropoffAnnotation2) = v147;
        mapView3 = [(RidesharingAnnotationsManager *)self mapView];
        [mapView3 _setApplicationState:1];
      }

      dropoffAnnotation3 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
      [v58 addObject:dropoffAnnotation3];

      if (!v54)
      {
        goto LABEL_88;
      }
    }

    else
    {
      dropoffAnnotation4 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

      if (dropoffAnnotation4)
      {
        customFeatureStore2 = [(RidesharingAnnotationsManager *)self customFeatureStore];
        dropoffAnnotation5 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
        v156 = dropoffAnnotation5;
        [NSArray arrayWithObjects:&v156 count:1];
        v100 = v54;
        dropoffAnnotation2 = v101 = dropoffAnnotation2;
        [customFeatureStore2 removeAnnotations:dropoffAnnotation2];

        LOBYTE(dropoffAnnotation2) = v101;
        v54 = v100;
      }

      [(RidesharingAnnotationsManager *)self setDropoffAnnotation:0];
      if (!v54)
      {
        goto LABEL_88;
      }
    }

    phase = [statusCopy phase];
    v103 = dropoffAnnotation2 ^ 1;
    if (phase != 3)
    {
      v103 = 1;
    }

    if ((v103 & 1) == 0)
    {
      GEOCalculateDistance();
      v105 = v104;
      GEOConfigGetDouble();
      if (v105 < v106)
      {
        mapView7 = GEOFindOrCreateLog();
        if (os_log_type_enabled(mapView7, OS_LOG_TYPE_INFO))
        {
          v108 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v109 = [[NSString alloc] initWithFormat:@"Hiding user location because it is close to the vehicle location"];
          *buf = 136315394;
          v159 = v108;
          v160 = 2112;
          v161 = v109;
          _os_log_impl(&_mh_execute_header, mapView7, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v110 = 0;
LABEL_89:

        if (isKindOfClass)
        {
          mapView4 = [(RidesharingAnnotationsManager *)self mapView];
          [mapView4 setShowsUserLocation:v110];
        }

        if (![v58 count] || (self->_shouldReframeMapView & isKindOfClass & 1) == 0)
        {
          goto LABEL_106;
        }

        self->_shouldReframeMapView = 0;
        vehicleAnnotation4 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
        if ([v58 containsObject:vehicleAnnotation4])
        {
        }

        else
        {
          dropoffAnnotation6 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
          v115 = [v58 containsObject:dropoffAnnotation6];

          if (!v115)
          {
            mapView5 = [(RidesharingAnnotationsManager *)self mapView];
            [mapView5 showAnnotations:v58 animated:1];
LABEL_105:

LABEL_106:
            goto LABEL_107;
          }
        }

        mapView5 = [GEOMapRegion _mapkit_mapRegionEnclosingAnnotations:v58];
        v117 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          v118 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v116 = [[NSString alloc] initWithFormat:@"Enclosing map region for annotations: %@", mapView5];
          *buf = 136315394;
          v159 = v118;
          v160 = 2112;
          v161 = v116;
          _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        if (mapView5)
        {
          GEOMapRectForMapRegion();
          v121 = v120;
          v123 = v122;
          v125 = v124;
          v127 = v126;
          vehicleAnnotationView4 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
          image = [vehicleAnnotationView4 image];
          [image size];
          v131 = v130;
          v133 = v132;

          v134 = fmax(v133, v131) * 0.5 + 25.0;
          mapView6 = [(RidesharingAnnotationsManager *)self mapView];
          [mapView6 setVisibleMapRect:1 edgePadding:v121 animated:{v123, v125, v127, v134, v134, v134, v134}];
        }

        goto LABEL_105;
      }
    }

LABEL_88:
    mapView7 = [(RidesharingAnnotationsManager *)self mapView];
    userLocation3 = [mapView7 userLocation];
    [v58 addObject:userLocation3];

    v110 = 1;
    goto LABEL_89;
  }

  [(RidesharingAnnotationsManager *)self removeCurrentRide];
LABEL_107:
}

- (void)rideStatusMapDidChange:(id)change
{
  changeCopy = change;
  applicationIdentifier = [(RidesharingAnnotationsManager *)self applicationIdentifier];
  v6 = [changeCopy objectForKey:applicationIdentifier];

  [(RidesharingAnnotationsManager *)self setRideStatus:v6];
  rideStatus = [(RidesharingAnnotationsManager *)self rideStatus];
  [(RidesharingAnnotationsManager *)self _updateFromRideStatus:rideStatus];
}

- (void)removeCurrentRide
{
  v3 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
    v5 = [[NSString alloc] initWithFormat:@"Removing current ride"];
    *buf = 136315394;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  chromeViewController = [(RidesharingAnnotationsManager *)self chromeViewController];
  currentIOSBasedContext = [chromeViewController currentIOSBasedContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  [(RidesharingAnnotationsManager *)self setRideStatusObserverProxy:0];
  [(RidesharingAnnotationsManager *)self setApplicationIdentifier:0];
  [(RidesharingAnnotationsManager *)self setVehicleAnnotation:0];
  [(RidesharingAnnotationsManager *)self setVehicleAnnotationView:0];
  [(RidesharingAnnotationsManager *)self setPickupAnnotation:0];
  [(RidesharingAnnotationsManager *)self setPickupAnnotationView:0];
  dropoffAnnotation = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

  if (dropoffAnnotation)
  {
    customFeatureStore = [(RidesharingAnnotationsManager *)self customFeatureStore];
    dropoffAnnotation2 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
    v17 = dropoffAnnotation2;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    [customFeatureStore removeAnnotations:v12];

    [(RidesharingAnnotationsManager *)self setDropoffAnnotation:0];
  }

  mapView = self->_mapView;
  customFeatureStore2 = [(RidesharingAnnotationsManager *)self customFeatureStore];
  [(MKMapView *)mapView _removeCustomFeatureDataSource:customFeatureStore2];

  [(RidesharingAnnotationsManager *)self setWaypointAnnotations:0];
  [(RidesharingAnnotationsManager *)self setETAView:0];
  [(RidesharingAnnotationsManager *)self setLastVehicleLocationUpdateDate:0];
  if (isKindOfClass)
  {
    mapView = [(RidesharingAnnotationsManager *)self mapView];
    [mapView _setApplicationState:0];

    mapView2 = [(RidesharingAnnotationsManager *)self mapView];
    [mapView2 setShowsUserLocation:1];
  }
}

- (void)addCurrentRideWithApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(RidesharingAnnotationsManager *)self removeCurrentRide];
  mapView = self->_mapView;
  customFeatureStore = [(RidesharingAnnotationsManager *)self customFeatureStore];
  [(MKMapView *)mapView _addCustomFeatureDataSource:customFeatureStore];

  self->_shouldReframeMapView = 1;
  v7 = [identifierCopy copy];

  [(RidesharingAnnotationsManager *)self setApplicationIdentifier:v7];
  v8 = [[RideBookingRideStatusObserverProxy alloc] initWithDelegate:self];
  [(RidesharingAnnotationsManager *)self setRideStatusObserverProxy:v8];
}

- (RidesharingAnnotationsManager)initWithMapView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = RidesharingAnnotationsManager;
  v6 = [(RidesharingAnnotationsManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, view);
    v8 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
    customFeatureStore = v7->_customFeatureStore;
    v7->_customFeatureStore = v8;
  }

  return v7;
}

@end