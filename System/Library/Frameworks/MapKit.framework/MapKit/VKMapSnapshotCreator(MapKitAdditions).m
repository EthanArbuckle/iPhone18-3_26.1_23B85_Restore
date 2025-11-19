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
  [a1 _mapkit_configureFromDefaults];
  [a1 setMapType:_VKMapTypeForMKCartographicConfiguration(a5)];
  v9 = [v8 pointOfInterestFilter];
  v10 = [v9 _geoPOICategoryFilter];
  [a1 setPointsOfInterestFilter:v10];

  [a1 setShowsRoadLabels:{objc_msgSend(v8, "_showsRoadLabels")}];
  [a1 setShowsRoadShields:{objc_msgSend(v8, "_showsRoadShields")}];
  [a1 setShowsPointLabels:{objc_msgSend(v8, "_showsPointLabels")}];
  [a1 setShowsBuildings:{objc_msgSend(v8, "showsBuildings")}];
  [a1 setShowsVenues:{objc_msgSend(v8, "_showsVenues")}];
  [a1 setShowsPOIUpdates:{objc_msgSend(v8, "_networkUsageMode") == 0}];
  [a1 setPreferStaleTiles:{objc_msgSend(v8, "_networkUsageMode") == 1}];
  if ([v8 _rendersInBackground])
  {
    [a1 setAllowsBackgroundGPUSubmission];
  }

  v11 = [v8 preferredConfiguration];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [v8 preferredConfiguration];
    v14 = [v13 showsTraffic];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 preferredConfiguration];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [v8 preferredConfiguration];
    v18 = [v17 showsHiking];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v8 preferredConfiguration];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [v8 preferredConfiguration];
    v22 = [v21 showsTopographicFeatures];
  }

  else
  {
    v22 = 0;
  }

  [a1 setShowsTraffic:v14];
  [a1 setShowsGlobe:a5[2] == 1];
  [a1 setTerrainMode:_VKTerrainModeForMKCartographicConfiguration(a5)];
  v23 = ![a1 mapType] && (objc_msgSend(a1, "terrainMode") == 1 || objc_msgSend(a1, "terrainMode") == 3);
  [a1 setShowsTintBands:v23];
  if (![a1 mapType])
  {
    [a1 setShowsHillshade:0];
    [a1 setShowsHiking:v18 withTopographicFeatures:v22];
  }

  [v8 _edgeInsets];
  *&v24 = v24;
  *&v25 = v25;
  *&v26 = v26;
  *&v27 = v27;
  [a1 setEdgeInsets:{v24, v25, v26, v27}];
  v28 = [v8 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = v29;
  v31 = *MEMORY[0x1E69DDC90];
  if (v29)
  {
    v31 = v29;
  }

  v32 = v31;

  [a1 _mapkit_configureLabelSizesForContentSizeCategory:v32];
  [a1 setEmphasis:_VKEmphasisForMKCartographicConfiguration(a5)];
  v33 = a5[4];
  if (v33 >= 3)
  {
    LOBYTE(v33) = 1;
  }

  [a1 setMapKitUsage:v33];
  [a1 setMapKitClientMode:a5[5] == 1];
  v34 = [v8 _routeContext];
  [a1 setRouteContext:v34];

  v35 = [v8 _routeOverlay];
  [a1 setRouteOverlay:v35];

  v36 = [v8 _composedRoutesForRouteLines];
  v37 = [v36 count];

  if (v37)
  {
    v38 = [v8 _composedRoutesForRouteLines];
    v39 = objc_alloc_init(MEMORY[0x1E69DF470]);
    if ([v38 count])
    {
      v40 = 0;
      do
      {
        v41 = [v38 objectAtIndex:v40];
        v42 = [v41 traffic];
        v43 = [objc_alloc(MEMORY[0x1E69DF478]) initWithComposedRoute:v41 traffic:v42];
        [v43 setShowTraffic:1];
        if (v40 == [v8 _selectedRouteIndex])
        {
          [v43 setSelected:1];
        }

        [v39 addPolyline:v43];

        ++v40;
      }

      while (v40 < [v38 count]);
    }

    [a1 setRouteOverlay:v39];
    v44 = objc_alloc_init(MKRouteContextBuilder);
    v45 = -[MKRouteContextBuilder buildRouteContextForRoutes:selectedRouteIndex:](v44, "buildRouteContextForRoutes:selectedRouteIndex:", v38, [v8 _selectedRouteIndex]);
    [a1 setRouteContext:v45];
  }

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __90__VKMapSnapshotCreator_MapKitAdditions___mapkit_configureWithOptions_configuration_scale___block_invoke;
  v75[3] = &unk_1E76C9960;
  v46 = v8;
  v78 = a2;
  v76 = v46;
  v77 = a1;
  v47 = MEMORY[0x1A58E9F30](v75);
  v47[2](v47, 0);
  v47[2](v47, 1);
  v48 = [v46 _selectedTrailID];

  if (v48)
  {
    v49 = [v46 _selectedTrailID];
    v50 = [v49 unsignedLongLongValue];
    v51 = [v46 _selectedTrailName];
    v52 = [v46 _selectedTrailLocale];
    [a1 setSelectedTrailWithId:v50 name:v51 locale:v52];
  }

  v53 = [v46 camera];
  if ([v46 _viewportMode] == 2)
  {
    [v53 centerCoordinate];
    v55 = v54;
    v57 = v56;
    [v53 altitude];
    v59 = v58;
    [v53 heading];
    v61 = v60;
    [v53 pitch];
    [a1 setCenterCoordinate:v55 altitude:v57 yaw:v59 pitch:{v61, v62}];
  }

  else
  {
    [v46 mapRect];
    v67 = [objc_alloc(MEMORY[0x1E69A2200]) initWithMapRect:{v63, v64, v65, v66}];
    [v53 pitch];
    v69 = v68;
    [v53 heading];
    [a1 setMapRegion:v67 pitch:v69 yaw:v70];
  }

  v71 = MKGetSnapshotLog();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v72 = [a1 routeOverlay];
    v73 = "YES";
    if (!v72)
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
    v80 = v53;
    _os_log_impl(&dword_1A2EA0000, v74, OS_LOG_TYPE_INFO, "Camera Configuration: %@", buf, 0xCu);
  }
}

- (uint64_t)_mapkit_configureFromDefaults
{
  BOOL = GEOConfigGetBOOL();

  return [a1 setLocalizeLabels:BOOL];
}

- (uint64_t)_mapkit_configureLabelSizesForContentSizeCategory:()MapKitAdditions
{
  v4 = labelScaleFactorForContentSizeCategory(a3);

  return [a1 setLabelScaleFactor:v4];
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
  v9 = [v7 traitCollection];
  v10 = [v9 userInterfaceStyle];

  v11 = *&v103[0] | v10;
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
    v15 = [v7 traitCollection];
    v16 = [v15 userInterfaceStyle] == 2;

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
    v26 = [v18 _customFeatureAnnotations];
    v27 = [v26 countByEnumeratingWithState:&v109 objects:buf count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v109 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v31 representation] == 2)
          {
            LOBYTE(v27) = 1;
            goto LABEL_44;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v109 objects:buf count:16];
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
      v47 = 1;
    }

    else
    {
      v47 = [v19 _searchResultsType];
    }

    v48 = [v19 _composedRouteForRouteLine];

    v49 = v44 << 16;
    if (v48)
    {
      v49 = 0x10000;
    }

    v50 = v49 | (v45 << 24);
    v51 = v43 << 8;
    if (v41)
    {
      v51 = 512;
    }

    v52 = ((v46 << 40) | (v47 << 32)) >> 32;
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
    v34 = [v33 _customFeatureAnnotations];
    v35 = [v34 countByEnumeratingWithState:&v109 objects:buf count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v109 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 representation] == 2)
          {
            v40 = 1;
            goto LABEL_57;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v109 objects:buf count:16];
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
      v62 = 1;
    }

    else
    {
      v61 = v55;
      v62 = [v33 _searchResultsType];
    }

    v63 = [v33 _composedRouteForRouteLine];

    v64 = v58 << 16;
    if (v63)
    {
      v64 = 0x10000;
    }

    v65 = v64 | (v59 << 24);
    v66 = v57 << 8;
    if (v61)
    {
      v66 = 512;
    }

    *(v102 + 2) = ((v60 << 40) | (v62 << 32)) >> 32;
    *v102 = v65 | v56 | v66;
    v67 = v33;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v68 = [v67 _customFeatureAnnotations];
    v69 = [v68 countByEnumeratingWithState:&v109 objects:buf count:16];
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
            objc_enumerationMutation(v68);
          }

          v73 = *(*(&v109 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v73 representation] == 2)
          {
            v74 = 1;
            goto LABEL_78;
          }
        }

        v70 = [v68 countByEnumeratingWithState:&v109 objects:buf count:16];
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
      v81 = 1;
    }

    else
    {
      v81 = [v67 _searchResultsType];
    }

    v82 = [v67 _composedRouteForRouteLine];

    v83 = v78 << 16;
    if (v82)
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
    *(v102 + 5) = ((v80 << 40) | (v81 << 32)) >> 32;
    *(v102 + 6) = v84 | v76 | v85;
    v54 = 2;
  }

  v86 = [v7 traitCollection];
  [v86 displayScale];
  v88 = v87;

  [v7 size];
  v91 = [a1 initWithSize:v100 scale:objc_msgSend(v7 homeQueue:"signpostId") signpostId:_VKMapTypeForMKCartographicConfiguration(v103) mapType:v53 mapDisplayStyles:v54 mapDisplayStylesCount:v99 auditToken:{v89, v90, v88}];
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