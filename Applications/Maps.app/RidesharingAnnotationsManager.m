@interface RidesharingAnnotationsManager
- (IOSBasedChromeViewController)chromeViewController;
- (MKAnnotationView)vehicleAnnotationView;
- (MKMarkerAnnotationView)pickupAnnotationView;
- (RidesharingAnnotationsManager)initWithMapView:(id)a3;
- (RidesharingBalloonETAView)ETAView;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_updateFromRideStatus:(id)a3;
- (void)addCurrentRideWithApplicationIdentifier:(id)a3;
- (void)removeCurrentRide;
- (void)rideStatusMapDidChange:(id)a3;
- (void)setPickupAnnotation:(id)a3;
- (void)setVehicleAnnotation:(id)a3;
- (void)setWaypointAnnotations:(id)a3;
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
    v5 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
    v6 = [v4 initWithAnnotation:v5 reuseIdentifier:@"RidesharingVehicleAnnotationView"];
    v7 = self->_vehicleAnnotationView;
    self->_vehicleAnnotationView = v6;

    v8 = [(RidesharingAnnotationsManager *)self rideStatus];
    v9 = [v8 vehicleImage];
    GEOConfigGetDouble();
    v11 = v10;
    GEOConfigGetDouble();
    v13 = [v9 _maps_imageWithAspectFitScalingForMaximumSize:{v11, v12}];

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
    v5 = [(RidesharingAnnotationsManager *)self pickupAnnotation];
    v6 = [v4 initWithAnnotation:v5 reuseIdentifier:@"RidesharingPickupAnnotationView"];
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
    v13 = [(RidesharingAnnotationsManager *)self ETAView];
    [(MKMarkerAnnotationView *)v12 setSelectedContentView:v13];

    [(MKMarkerAnnotationView *)self->_pickupAnnotationView setSelected:1 animated:1];
    pickupAnnotationView = self->_pickupAnnotationView;
  }

  return pickupAnnotationView;
}

- (void)setWaypointAnnotations:(id)a3
{
  v5 = a3;
  if (v5)
  {
    p_waypointAnnotations = &self->_waypointAnnotations;
    if (![(NSArray *)self->_waypointAnnotations isEqualToArray:v5])
    {
      if (*p_waypointAnnotations)
      {
        v7 = [(RidesharingAnnotationsManager *)self mapView];
        [v7 removeAnnotations:self->_waypointAnnotations];
      }

      v8 = [(RidesharingAnnotationsManager *)self mapView];
      [v8 addAnnotations:v5];

      objc_storeStrong(p_waypointAnnotations, a3);
    }

    objc_storeStrong(p_waypointAnnotations, a3);
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

- (void)setVehicleAnnotation:(id)a3
{
  v5 = a3;
  p_vehicleAnnotation = &self->_vehicleAnnotation;
  vehicleAnnotation = self->_vehicleAnnotation;
  if (vehicleAnnotation != v5)
  {
    v10 = v5;
    if (vehicleAnnotation)
    {
      v8 = [(RidesharingAnnotationsManager *)self mapView];
      [v8 removeAnnotation:self->_vehicleAnnotation];

      v5 = v10;
    }

    if (v5)
    {
      v9 = [(RidesharingAnnotationsManager *)self mapView];
      [v9 addAnnotation:v10];
    }

    objc_storeStrong(p_vehicleAnnotation, a3);
    v5 = v10;
  }
}

- (void)setPickupAnnotation:(id)a3
{
  v5 = a3;
  p_pickupAnnotation = &self->_pickupAnnotation;
  pickupAnnotation = self->_pickupAnnotation;
  if (pickupAnnotation != v5)
  {
    v10 = v5;
    if (pickupAnnotation)
    {
      v8 = [(RidesharingAnnotationsManager *)self mapView];
      [v8 removeAnnotation:self->_pickupAnnotation];

      v5 = v10;
    }

    if (v5)
    {
      v9 = [(RidesharingAnnotationsManager *)self mapView];
      [v9 addAnnotation:v10];
    }

    objc_storeStrong(p_pickupAnnotation, a3);
    v5 = v10;
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];

  if (v6 == v5)
  {
    v9 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
  }

  else
  {
    v7 = [(RidesharingAnnotationsManager *)self pickupAnnotation];

    if (v7 != v5)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v10 = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
    v11 = [(RidesharingAnnotationsManager *)self ETAView];
    [v10 setSelectedContentView:v11];

    v9 = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (void)_updateFromRideStatus:(id)a3
{
  v4 = a3;
  if ([v4 isValidRide] && (objc_msgSend(v4, "isActiveRide") & 1) != 0)
  {
    v5 = ([v4 isScheduledRide] & 1) == 0 && objc_msgSend(v4, "phase") != 1;
    v6 = [v4 vehicleLocation];
    [v6 coordinate];
    v8 = v7;
    v10 = v9;

    v11 = [v4 vehicleLocation];
    v12 = v11;
    if (v11 && ([v11 coordinate], latitude = v162.latitude, longitude = v162.longitude, CLLocationCoordinate2DIsValid(v162)) && fabs(latitude) > 2.22044605e-16)
    {

      if (fabs(longitude) > 2.22044605e-16)
      {
        LODWORD(v15) = 1;
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

    LODWORD(v15) = 0;
LABEL_16:
    v19 = [v4 application];
    v20 = [v19 identifier];
    v21 = [v4 identifier];
    v151 = [RideBookingAccessProxy rideBookingCurrentBookedSessionForAppIdentifier:v20 rideIdentifier:v21];

    if (v5)
    {
      v22 = [v4 vehicleLocation];

      if (v22)
      {
        if ((v15 & 1) == 0)
        {
          [v151 setInvalidVehicleLocation:1];
        }
      }

      else
      {
        [v151 setMissingVehicleLocation:1];
      }
    }

    v23 = [v4 pickupLocation];
    v24 = [v23 location];
    [v24 coordinate];
    v26 = v25;
    v28 = v27;

    v29 = [v4 pickupLocation];
    v30 = [v29 location];
    v31 = v30;
    if (v30 && ([v30 coordinate], v32 = v163.latitude, v33 = v163.longitude, CLLocationCoordinate2DIsValid(v163)) && fabs(v32) > 2.22044605e-16)
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
    v38 = [v4 dropoffLocation];
    v39 = [v38 location];
    v40 = v39;
    if (v39 && ([v39 coordinate], v41 = v164.latitude, v42 = v164.longitude, CLLocationCoordinate2DIsValid(v164)) && fabs(v41) > 2.22044605e-16)
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
    v46 = [(RidesharingAnnotationsManager *)self mapView];
    v47 = [v46 userLocation];
    [v47 coordinate];

    v48 = [(RidesharingAnnotationsManager *)self mapView];
    v49 = [v48 userLocation];
    v50 = [v49 location];
    v51 = v50;
    if (v50)
    {
      [v50 coordinate];
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
    if (v15 && ([v4 vehicleImage], v59 = objc_claimAutoreleasedReturnValue(), v59, v59))
    {
      v148 = v34;
      v149 = v54;
      v60 = +[NSDate date];
      v61 = [(RidesharingAnnotationsManager *)self lastVehicleLocationUpdateDate];
      if (v61)
      {
        v62 = [(RidesharingAnnotationsManager *)self lastVehicleLocationUpdateDate];
        [v60 timeIntervalSinceDate:v62];
        v64 = v63 <= 10.0;
      }

      else
      {
        v64 = 1;
      }

      [(RidesharingAnnotationsManager *)self setLastVehicleLocationUpdateDate:v60];
      v68 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];

      if (!v68)
      {
        v69 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v70 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v71 = v15;
          v15 = [[NSString alloc] initWithFormat:@"Creating vehicle annotation"];
          *buf = 136315394;
          v159 = v70;
          v160 = 2112;
          v161 = v15;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

          LOBYTE(v15) = v71;
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
        v146 = v15;
        v75 = [NSString alloc];
        v76 = [v4 vehicleLocation];
        [v76 course];
        v78 = @"No";
        if (v64)
        {
          v78 = @"Yes";
        }

        v15 = [v75 initWithFormat:@"Updating vehicle annotation: %f, %f at %f with animation: %@", *&v8, *&v10, v77, v78];
        *buf = 136315394;
        v159 = v74;
        v160 = 2112;
        v161 = v15;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);

        LOBYTE(v15) = v146;
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
        v153 = v4;
        [UIView animateWithDuration:4 delay:v152 options:0 animations:0.6 completion:0.0];
      }

      else
      {
        v79 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
        [v79 setCoordinate:{v8, v10}];

        v80 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
        v81 = [v4 vehicleLocation];
        [v81 course];
        [v80 _setDirection:?];

        v82 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
        [v82 setAlpha:1.0];
      }

      v83 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
      [v58 addObject:v83];

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

      v60 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
      [v60 setAlpha:0.25];
    }

    if (!v34 || [v4 phase] == 3 || objc_msgSend(v4, "phase") == 4)
    {
      [(RidesharingAnnotationsManager *)self setPickupAnnotation:0];
    }

    else
    {
      v136 = [(RidesharingAnnotationsManager *)self pickupAnnotation];

      if (!v136)
      {
        self->_shouldReframeMapView = 1;
        v137 = objc_alloc_init(MKPointAnnotation);
        [(RidesharingAnnotationsManager *)self setPickupAnnotation:v137];
      }

      v138 = [(RidesharingAnnotationsManager *)self pickupAnnotation];
      [v138 setCoordinate:{v26, v28}];

      v139 = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
      [v139 setSelected:1 animated:1];

      v140 = [v4 isScheduledRide];
      v141 = [(RidesharingAnnotationsManager *)self ETAView];
      if (v140)
      {
        v142 = [v4 scheduledPickupWindowStartDateComponents];
        [v141 setScheduledPickupWindowStart:v142];
      }

      else
      {
        v142 = [v4 pickupETAMinutes];
        [v141 setMinutes:v142 withState:0];
      }

      v143 = [(RidesharingAnnotationsManager *)self pickupAnnotationView];
      v144 = [(RidesharingAnnotationsManager *)self ETAView];
      [v143 setSelectedContentView:v144];

      v145 = [(RidesharingAnnotationsManager *)self pickupAnnotation];
      [v58 addObject:v145];
    }

    v84 = [(RidesharingAnnotationsManager *)self chromeViewController];
    v85 = [v84 currentIOSBasedContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (v150 && (([v4 phase] == 3) & isKindOfClass) == 1)
    {
      v87 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

      if (!v87)
      {
        self->_shouldReframeMapView = 1;
        v88 = [MKMapItem alloc];
        v89 = [v4 dropoffLocation];
        [v89 _geoMapItem];
        v90 = v147 = v15;
        v91 = [v88 initWithGeoMapItem:v90 isPlaceHolderPlace:0];

        v92 = [[RidesharingPOIAnnotation alloc] initWithMapItem:v91];
        [(RidesharingAnnotationsManager *)self setDropoffAnnotation:v92];

        v93 = [(RidesharingAnnotationsManager *)self customFeatureStore];
        v15 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
        v157 = v15;
        v94 = [NSArray arrayWithObjects:&v157 count:1];
        [v93 addAnnotations:v94];

        LOBYTE(v15) = v147;
        v95 = [(RidesharingAnnotationsManager *)self mapView];
        [v95 _setApplicationState:1];
      }

      v96 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
      [v58 addObject:v96];

      if (!v54)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v97 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

      if (v97)
      {
        v98 = [(RidesharingAnnotationsManager *)self customFeatureStore];
        v99 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
        v156 = v99;
        [NSArray arrayWithObjects:&v156 count:1];
        v100 = v54;
        v15 = v101 = v15;
        [v98 removeAnnotations:v15];

        LOBYTE(v15) = v101;
        v54 = v100;
      }

      [(RidesharingAnnotationsManager *)self setDropoffAnnotation:0];
      if (!v54)
      {
        goto LABEL_88;
      }
    }

    v102 = [v4 phase];
    v103 = v15 ^ 1;
    if (v102 != 3)
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
        v107 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
        {
          v108 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v109 = [[NSString alloc] initWithFormat:@"Hiding user location because it is close to the vehicle location"];
          *buf = 136315394;
          v159 = v108;
          v160 = 2112;
          v161 = v109;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        v110 = 0;
LABEL_89:

        if (isKindOfClass)
        {
          v112 = [(RidesharingAnnotationsManager *)self mapView];
          [v112 setShowsUserLocation:v110];
        }

        if (![v58 count] || (self->_shouldReframeMapView & isKindOfClass & 1) == 0)
        {
          goto LABEL_106;
        }

        self->_shouldReframeMapView = 0;
        v113 = [(RidesharingAnnotationsManager *)self vehicleAnnotation];
        if ([v58 containsObject:v113])
        {
        }

        else
        {
          v114 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
          v115 = [v58 containsObject:v114];

          if (!v115)
          {
            v116 = [(RidesharingAnnotationsManager *)self mapView];
            [v116 showAnnotations:v58 animated:1];
LABEL_105:

LABEL_106:
            goto LABEL_107;
          }
        }

        v116 = [GEOMapRegion _mapkit_mapRegionEnclosingAnnotations:v58];
        v117 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
        {
          v118 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingAnnotationsManager.m");
          v119 = [[NSString alloc] initWithFormat:@"Enclosing map region for annotations: %@", v116];
          *buf = 136315394;
          v159 = v118;
          v160 = 2112;
          v161 = v119;
          _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
        }

        if (v116)
        {
          GEOMapRectForMapRegion();
          v121 = v120;
          v123 = v122;
          v125 = v124;
          v127 = v126;
          v128 = [(RidesharingAnnotationsManager *)self vehicleAnnotationView];
          v129 = [v128 image];
          [v129 size];
          v131 = v130;
          v133 = v132;

          v134 = fmax(v133, v131) * 0.5 + 25.0;
          v135 = [(RidesharingAnnotationsManager *)self mapView];
          [v135 setVisibleMapRect:1 edgePadding:v121 animated:{v123, v125, v127, v134, v134, v134, v134}];
        }

        goto LABEL_105;
      }
    }

LABEL_88:
    v107 = [(RidesharingAnnotationsManager *)self mapView];
    v111 = [v107 userLocation];
    [v58 addObject:v111];

    v110 = 1;
    goto LABEL_89;
  }

  [(RidesharingAnnotationsManager *)self removeCurrentRide];
LABEL_107:
}

- (void)rideStatusMapDidChange:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingAnnotationsManager *)self applicationIdentifier];
  v6 = [v4 objectForKey:v5];

  [(RidesharingAnnotationsManager *)self setRideStatus:v6];
  v7 = [(RidesharingAnnotationsManager *)self rideStatus];
  [(RidesharingAnnotationsManager *)self _updateFromRideStatus:v7];
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

  v6 = [(RidesharingAnnotationsManager *)self chromeViewController];
  v7 = [v6 currentIOSBasedContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  [(RidesharingAnnotationsManager *)self setRideStatusObserverProxy:0];
  [(RidesharingAnnotationsManager *)self setApplicationIdentifier:0];
  [(RidesharingAnnotationsManager *)self setVehicleAnnotation:0];
  [(RidesharingAnnotationsManager *)self setVehicleAnnotationView:0];
  [(RidesharingAnnotationsManager *)self setPickupAnnotation:0];
  [(RidesharingAnnotationsManager *)self setPickupAnnotationView:0];
  v9 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];

  if (v9)
  {
    v10 = [(RidesharingAnnotationsManager *)self customFeatureStore];
    v11 = [(RidesharingAnnotationsManager *)self dropoffAnnotation];
    v17 = v11;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    [v10 removeAnnotations:v12];

    [(RidesharingAnnotationsManager *)self setDropoffAnnotation:0];
  }

  mapView = self->_mapView;
  v14 = [(RidesharingAnnotationsManager *)self customFeatureStore];
  [(MKMapView *)mapView _removeCustomFeatureDataSource:v14];

  [(RidesharingAnnotationsManager *)self setWaypointAnnotations:0];
  [(RidesharingAnnotationsManager *)self setETAView:0];
  [(RidesharingAnnotationsManager *)self setLastVehicleLocationUpdateDate:0];
  if (isKindOfClass)
  {
    v15 = [(RidesharingAnnotationsManager *)self mapView];
    [v15 _setApplicationState:0];

    v16 = [(RidesharingAnnotationsManager *)self mapView];
    [v16 setShowsUserLocation:1];
  }
}

- (void)addCurrentRideWithApplicationIdentifier:(id)a3
{
  v4 = a3;
  [(RidesharingAnnotationsManager *)self removeCurrentRide];
  mapView = self->_mapView;
  v6 = [(RidesharingAnnotationsManager *)self customFeatureStore];
  [(MKMapView *)mapView _addCustomFeatureDataSource:v6];

  self->_shouldReframeMapView = 1;
  v7 = [v4 copy];

  [(RidesharingAnnotationsManager *)self setApplicationIdentifier:v7];
  v8 = [[RideBookingRideStatusObserverProxy alloc] initWithDelegate:self];
  [(RidesharingAnnotationsManager *)self setRideStatusObserverProxy:v8];
}

- (RidesharingAnnotationsManager)initWithMapView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RidesharingAnnotationsManager;
  v6 = [(RidesharingAnnotationsManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapView, a3);
    v8 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
    customFeatureStore = v7->_customFeatureStore;
    v7->_customFeatureStore = v8;
  }

  return v7;
}

@end