@interface VKMapSnapshotCreator(MapKitAdditions)
- (uint64_t)_mapkit_configureFromDefaults;
- (uint64_t)_mapkit_configureLabelSizesForContentSizeCategory:()MapKitAdditions;
- (void)_mapkit_configureWithOptions:()MapKitAdditions configuration:scale:;
- (void)initWithSnapshotOptions:()MapKitAdditions homeQueue:auditToken:;
@end

@implementation VKMapSnapshotCreator(MapKitAdditions)

- (void)_mapkit_configureWithOptions:()MapKitAdditions configuration:scale:
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a4;
  [self _mapkit_configureFromDefaults];
  [self setMapType:_VKMapTypeForMKCartographicConfiguration(a5)];
  pointOfInterestFilter = [v8 pointOfInterestFilter];
  _geoPOICategoryFilter = [pointOfInterestFilter _geoPOICategoryFilter];
  [self setPointsOfInterestFilter:_geoPOICategoryFilter];

  [self setShowsRoadLabels:{objc_msgSend(v8, "_showsRoadLabels")}];
  [self setShowsRoadShields:{objc_msgSend(v8, "_showsRoadShields")}];
  [self setShowsPointLabels:{objc_msgSend(v8, "_showsPointLabels")}];
  [self setShowsBuildings:{objc_msgSend(v8, "showsBuildings")}];
  [self setShowsVenues:{objc_msgSend(v8, "_showsVenues")}];
  [self setShowsPOIUpdates:{objc_msgSend(v8, "_networkUsageMode") == 0}];
  [self setPreferStaleTiles:{objc_msgSend(v8, "_networkUsageMode") == 1}];
  if ([v8 _rendersInBackground])
  {
    [self setAllowsBackgroundGPUSubmission];
  }

  preferredConfiguration = [v8 preferredConfiguration];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    preferredConfiguration2 = [v8 preferredConfiguration];
    showsTraffic = [preferredConfiguration2 showsTraffic];
  }

  else
  {
    showsTraffic = 0;
  }

  preferredConfiguration3 = [v8 preferredConfiguration];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    preferredConfiguration4 = [v8 preferredConfiguration];
    showsHiking = [preferredConfiguration4 showsHiking];
  }

  else
  {
    showsHiking = 0;
  }

  preferredConfiguration5 = [v8 preferredConfiguration];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    preferredConfiguration6 = [v8 preferredConfiguration];
    showsTopographicFeatures = [preferredConfiguration6 showsTopographicFeatures];
  }

  else
  {
    showsTopographicFeatures = 0;
  }

  [self setShowsTraffic:showsTraffic];
  [self setShowsGlobe:a5[2] == 1];
  [self setTerrainMode:_VKTerrainModeForMKCartographicConfiguration(a5)];
  v23 = ![self mapType] && (objc_msgSend(self, "terrainMode") == 1 || objc_msgSend(self, "terrainMode") == 3);
  [self setShowsTintBands:v23];
  if (![self mapType])
  {
    [self setShowsHillshade:0];
    [self setShowsHiking:showsHiking withTopographicFeatures:showsTopographicFeatures];
  }

  [v8 _edgeInsets];
  *&v24 = v24;
  *&v25 = v25;
  *&v26 = v26;
  *&v27 = v27;
  [self setEdgeInsets:{v24, v25, v26, v27}];
  traitCollection = [v8 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v30 = preferredContentSizeCategory;
  v31 = *MEMORY[0x1E69DDC90];
  if (preferredContentSizeCategory)
  {
    v31 = preferredContentSizeCategory;
  }

  v32 = v31;

  [self _mapkit_configureLabelSizesForContentSizeCategory:v32];
  [self setEmphasis:_VKEmphasisForMKCartographicConfiguration(a5)];
  v33 = a5[4];
  if (v33 >= 3)
  {
    LOBYTE(v33) = 1;
  }

  [self setMapKitUsage:v33];
  [self setMapKitClientMode:a5[5] == 1];
  _routeContext = [v8 _routeContext];
  [self setRouteContext:_routeContext];

  _routeOverlay = [v8 _routeOverlay];
  [self setRouteOverlay:_routeOverlay];

  _composedRoutesForRouteLines = [v8 _composedRoutesForRouteLines];
  v37 = [_composedRoutesForRouteLines count];

  if (v37)
  {
    _composedRoutesForRouteLines2 = [v8 _composedRoutesForRouteLines];
    v39 = objc_alloc_init(MEMORY[0x1E69DF470]);
    if ([_composedRoutesForRouteLines2 count])
    {
      v40 = 0;
      do
      {
        v41 = [_composedRoutesForRouteLines2 objectAtIndex:v40];
        traffic = [v41 traffic];
        v43 = [objc_alloc(MEMORY[0x1E69DF478]) initWithComposedRoute:v41 traffic:traffic];
        [v43 setShowTraffic:1];
        if (v40 == [v8 _selectedRouteIndex])
        {
          [v43 setSelected:1];
        }

        [v39 addPolyline:v43];

        ++v40;
      }

      while (v40 < [_composedRoutesForRouteLines2 count]);
    }

    [self setRouteOverlay:v39];
    v44 = objc_alloc_init(MKRouteContextBuilder);
    v45 = -[MKRouteContextBuilder buildRouteContextForRoutes:selectedRouteIndex:](v44, "buildRouteContextForRoutes:selectedRouteIndex:", _composedRoutesForRouteLines2, [v8 _selectedRouteIndex]);
    [self setRouteContext:v45];
  }

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __90__VKMapSnapshotCreator_MapKitAdditions___mapkit_configureWithOptions_configuration_scale___block_invoke;
  v75[3] = &unk_1E76C9960;
  v46 = v8;
  v78 = a2;
  v76 = v46;
  selfCopy = self;
  v47 = MEMORY[0x1A58E9F30](v75);
  v47[2](v47, 0);
  v47[2](v47, 1);
  _selectedTrailID = [v46 _selectedTrailID];

  if (_selectedTrailID)
  {
    _selectedTrailID2 = [v46 _selectedTrailID];
    unsignedLongLongValue = [_selectedTrailID2 unsignedLongLongValue];
    _selectedTrailName = [v46 _selectedTrailName];
    _selectedTrailLocale = [v46 _selectedTrailLocale];
    [self setSelectedTrailWithId:unsignedLongLongValue name:_selectedTrailName locale:_selectedTrailLocale];
  }

  camera = [v46 camera];
  if ([v46 _viewportMode] == 2)
  {
    [camera centerCoordinate];
    v55 = v54;
    v57 = v56;
    [camera altitude];
    v59 = v58;
    [camera heading];
    v61 = v60;
    [camera pitch];
    [self setCenterCoordinate:v55 altitude:v57 yaw:v59 pitch:{v61, v62}];
  }

  else
  {
    [v46 mapRect];
    v67 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v63, v64, v65, v66}];
    [camera pitch];
    v69 = v68;
    [camera heading];
    [self setMapRegion:v67 pitch:v69 yaw:v70];
  }

  v71 = MKGetSnapshotLog();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    routeOverlay = [self routeOverlay];
    v73 = "YES";
    if (!routeOverlay)
    {
      v73 = "NO";
    }

    *buf = 136315138;
    v80 = v73;
    _os_log_impl(&dword_1A2EA0000, v71, OS_LOG_TYPE_INFO, "Has Route Overlay: %s ", buf, 0xCu);
  }

  v74 = MKGetSnapshotLog();
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v80 = camera;
    _os_log_impl(&dword_1A2EA0000, v74, OS_LOG_TYPE_INFO, "Camera Configuration: %@", buf, 0xCu);
  }
}

- (uint64_t)_mapkit_configureFromDefaults
{
  BOOL = GEOConfigGetBOOL();

  return [self setLocalizeLabels:BOOL];
}

- (uint64_t)_mapkit_configureLabelSizesForContentSizeCategory:()MapKitAdditions
{
  v4 = labelScaleFactorForContentSizeCategory(a3);

  return [self setLabelScaleFactor:v4];
}

- (void)initWithSnapshotOptions:()MapKitAdditions homeQueue:auditToken:
{
  v115 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v100 = a4;
  v8 = a5;
  v104 = 0;
  memset(v103, 0, sizeof(v103));
  if (v7)
  {
    [v7 _resolvedCartographicConfigurationWithAuditToken:v8];
  }

  v99 = v8;
  traitCollection = [v7 traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v11 = *&v103[0] | userInterfaceStyle;
  v12 = MKGetSnapshotLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "NO";
    if (!v11)
    {
      v13 = "YES";
    }

    *buf = 136315138;
    v114 = v13;
    _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_INFO, "Generate both light and dark: %s ", buf, 0xCu);
  }

  v14 = MEMORY[0x1E69DF4F8];
  if (v11)
  {
    traitCollection2 = [v7 traitCollection];
    v16 = [traitCollection2 userInterfaceStyle] == 2;

    v17 = *&v103[0] == 0;
    v101 = malloc_type_malloc(6uLL, 0x1000040274DC3F3uLL);
    v18 = v7;
    v19 = v18;
    v20 = !v16 || !v17;
    if (v16 && v17)
    {
      v21 = MEMORY[0x1E69DF500];
    }

    else
    {
      v21 = v14;
    }

    if (v20)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = (MEMORY[0x1E69DF500] + 1);
    }

    if (v20)
    {
      v23 = v14 + 2;
    }

    else
    {
      v23 = (MEMORY[0x1E69DF500] + 2);
    }

    if (v20)
    {
      v24 = (v14 + 3);
    }

    else
    {
      v24 = MEMORY[0x1E69DF500] + 3;
    }

    v25 = MEMORY[0x1E69DF500] + 5;
    v109 = 0u;
    v110 = 0u;
    if (v20)
    {
      v25 = (v14 + 5);
    }

    v95 = v25;
    v96 = v24;
    v111 = 0uLL;
    v112 = 0uLL;
    _customFeatureAnnotations = [v18 _customFeatureAnnotations];
    v27 = [_customFeatureAnnotations countByEnumeratingWithState:&v109 objects:buf count:16];
    if (v27)
    {
      v94 = v23;
      v28 = v22;
      v29 = *v110;
      while (2)
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v110 != v29)
          {
            objc_enumerationMutation(_customFeatureAnnotations);
          }

          v31 = *(*(&v109 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 representation] == 2)
          {
            LOBYTE(v27) = 1;
            goto LABEL_44;
          }
        }

        v27 = [_customFeatureAnnotations countByEnumeratingWithState:&v109 objects:buf count:16];
        if (v27)
        {
          continue;
        }

        break;
      }

LABEL_44:
      v22 = v28;
      v23 = v94;
    }

    if (v7)
    {
      [v19 _cartographicConfiguration];
      v41 = *(&v105 + 1) == 4;
    }

    else
    {
      v41 = 0;
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
    }

    v42 = *v21;
    v43 = *v22;
    v44 = *v23;
    v45 = *v96;
    v46 = *v95;
    if (v27)
    {
      _searchResultsType = 1;
    }

    else
    {
      _searchResultsType = [v19 _searchResultsType];
    }

    _composedRouteForRouteLine = [v19 _composedRouteForRouteLine];

    v49 = v44 << 16;
    if (_composedRouteForRouteLine)
    {
      v49 = 0x10000;
    }

    v50 = v49 | (v45 << 24);
    v51 = v43 << 8;
    if (v41)
    {
      v51 = 512;
    }

    v52 = ((v46 << 40) | (_searchResultsType << 32)) >> 32;
    v53 = v101;
    *(v101 + 2) = v52;
    *v101 = (v50 | v51) & 0xFFFFFF00 | v42;
    v54 = 1;
  }

  else
  {
    v32 = malloc_type_malloc(0xCuLL, 0x1000040274DC3F3uLL);
    v33 = v7;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    _customFeatureAnnotations2 = [v33 _customFeatureAnnotations];
    v35 = [_customFeatureAnnotations2 countByEnumeratingWithState:&v109 objects:buf count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v110;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v110 != v37)
          {
            objc_enumerationMutation(_customFeatureAnnotations2);
          }

          v39 = *(*(&v109 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 representation] == 2)
          {
            v40 = 1;
            goto LABEL_57;
          }
        }

        v36 = [_customFeatureAnnotations2 countByEnumeratingWithState:&v109 objects:buf count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v40 = 0;
LABEL_57:

    v102 = v32;
    if (v7)
    {
      [v33 _cartographicConfiguration];
      v55 = *(&v105 + 1) == 4;
    }

    else
    {
      v55 = 0;
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
    }

    v56 = *v14;
    v57 = v14[1];
    v58 = v14[2];
    v59 = v14[3];
    v60 = v14[5];
    if (v40)
    {
      v61 = v55;
      _searchResultsType2 = 1;
    }

    else
    {
      v61 = v55;
      _searchResultsType2 = [v33 _searchResultsType];
    }

    _composedRouteForRouteLine2 = [v33 _composedRouteForRouteLine];

    v64 = v58 << 16;
    if (_composedRouteForRouteLine2)
    {
      v64 = 0x10000;
    }

    v65 = v64 | (v59 << 24);
    v66 = v57 << 8;
    if (v61)
    {
      v66 = 512;
    }

    *(v102 + 2) = ((v60 << 40) | (_searchResultsType2 << 32)) >> 32;
    *v102 = v65 | v56 | v66;
    v67 = v33;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    _customFeatureAnnotations3 = [v67 _customFeatureAnnotations];
    v69 = [_customFeatureAnnotations3 countByEnumeratingWithState:&v109 objects:buf count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v110;
      while (2)
      {
        for (k = 0; k != v70; ++k)
        {
          if (*v110 != v71)
          {
            objc_enumerationMutation(_customFeatureAnnotations3);
          }

          v73 = *(*(&v109 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v73 representation] == 2)
          {
            v74 = 1;
            goto LABEL_78;
          }
        }

        v70 = [_customFeatureAnnotations3 countByEnumeratingWithState:&v109 objects:buf count:16];
        if (v70)
        {
          continue;
        }

        break;
      }
    }

    v74 = 0;
LABEL_78:
    v75 = MEMORY[0x1E69DF500];

    if (v7)
    {
      [v67 _cartographicConfiguration];
      v97 = *(&v105 + 1) == 4;
    }

    else
    {
      v97 = 0;
      v108 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
    }

    v76 = *v75;
    v77 = v75[1];
    v78 = v75[2];
    v79 = v75[3];
    v80 = v75[5];
    if (v74)
    {
      _searchResultsType3 = 1;
    }

    else
    {
      _searchResultsType3 = [v67 _searchResultsType];
    }

    _composedRouteForRouteLine3 = [v67 _composedRouteForRouteLine];

    v83 = v78 << 16;
    if (_composedRouteForRouteLine3)
    {
      v83 = 0x10000;
    }

    v84 = v83 | (v79 << 24);
    v85 = v77 << 8;
    if (v97)
    {
      v85 = 512;
    }

    v53 = v102;
    *(v102 + 5) = ((v80 << 40) | (_searchResultsType3 << 32)) >> 32;
    *(v102 + 6) = v84 | v76 | v85;
    v54 = 2;
  }

  traitCollection3 = [v7 traitCollection];
  [traitCollection3 displayScale];
  v88 = v87;

  [v7 size];
  v91 = [self initWithSize:v100 scale:objc_msgSend(v7 homeQueue:"signpostId") signpostId:_VKMapTypeForMKCartographicConfiguration(v103) mapType:v53 mapDisplayStyles:v54 mapDisplayStylesCount:v99 auditToken:{v89, v90, v88}];
  [v91 setCaptureMemoryStatistics:{objc_msgSend(v7, "captureMemoryStatistics")}];
  free(v53);
  if (v91)
  {
    [v91 _mapkit_configureWithOptions:v7 configuration:v103 scale:v88];
    v92 = v91;
  }

  return v91;
}

@end