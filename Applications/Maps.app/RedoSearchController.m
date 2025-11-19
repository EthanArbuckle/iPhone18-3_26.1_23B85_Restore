@interface RedoSearchController
- (BOOL)shouldShowManualRedoSearchButton:(id)a3 searchResults:(id)a4;
- (BOOL)shouldTriggerAutoRedoWithThreshold:(id)a3 searchResults:(id)a4;
- (BOOL)shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:(unint64_t)a3 panDeltaThresholdInMeters:(double)a4 zoomInPercentageThreshold:(double)a5 zoomOutPercentageThreshold:(double)a6 searchResults:(id)a7;
- (RedoSearchController)initWithMapState:(id)a3 zoomLevel:(double)a4;
- (unint64_t)numberOfVisibleSearchResults:(id)a3;
@end

@implementation RedoSearchController

- (unint64_t)numberOfVisibleSearchResults:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009A7324;
  v7[3] = &unk_101650128;
  v7[4] = self;
  v7[5] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:(unint64_t)a3 panDeltaThresholdInMeters:(double)a4 zoomInPercentageThreshold:(double)a5 zoomOutPercentageThreshold:(double)a6 searchResults:(id)a7
{
  v12 = a7;
  v13 = [(RedoSearchController *)self currentState];
  if (v13)
  {
    v14 = v13;
    v15 = [(RedoSearchController *)self originalState];

    if (v15)
    {
      v16 = [(RedoSearchController *)self currentState];
      v17 = [(RedoSearchController *)self originalState];
      v18 = [v16 isEqual:v17];

      if (v18)
      {
        v19 = sub_1007991E4();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Current and Original states are equal, ignoring.", buf, 2u);
        }

        LOBYTE(v15) = 0;
LABEL_27:

        goto LABEL_28;
      }

      v48 = a3;
      v20 = [(RedoSearchController *)self originalState];
      v21 = [v20 mapRegion];
      [v21 centerLat];
      v22 = [(RedoSearchController *)self originalState];
      v23 = [v22 mapRegion];
      [v23 centerLng];
      v24 = [(RedoSearchController *)self currentState];
      v25 = [v24 mapRegion];
      [v25 centerLat];
      v26 = [(RedoSearchController *)self currentState];
      v27 = [v26 mapRegion];
      [v27 centerLng];
      GEOCalculateDistance();
      v29 = v28;

      *&v30 = COERCE_DOUBLE([(RedoSearchController *)self numberOfVisibleSearchResults:v12]);
      v31 = [(RedoSearchController *)self currentState];
      [v31 zoomLevel];
      v33 = v32;
      v34 = [(RedoSearchController *)self originalState];
      [v34 zoomLevel];
      v36 = v33 * 100.0 / v35;

      if (v36 <= 100.0)
      {
        v37 = v48;
        if (v36 >= 100.0)
        {
          if (v29 > a4 && v30 < v48)
          {
            v40 = @"Triggered with reason: distance && visible results number";
            LOBYTE(v15) = 1;
            goto LABEL_23;
          }

LABEL_22:
          LOBYTE(v15) = 0;
          v40 = @"Not triggered";
LABEL_23:
          v41 = sub_1007991E4();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 134218752;
            v50 = *&v37;
            v51 = 2048;
            v52 = a4;
            v53 = 2048;
            v54 = a5;
            v55 = 2048;
            v56 = a6;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Thresholds - Number of results: %lu. Distance: %f Zoom in: %f. Zoom out: %f.", buf, 0x2Au);
          }

          v19 = sub_1007991E4();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v42 = [(RedoSearchController *)self currentState];
            [v42 zoomLevel];
            v44 = v43;
            v45 = [(RedoSearchController *)self originalState];
            [v45 zoomLevel];
            *buf = 134219266;
            v50 = v29;
            v51 = 2048;
            v52 = *&v30;
            v53 = 2048;
            v54 = v44;
            v55 = 2048;
            v56 = v46;
            v57 = 2048;
            v58 = v36;
            v59 = 2112;
            v60 = v40;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Distance: %f. Number of Visible results: %lu. Current zoom: %f. Original zoom: %f. Percentage: %f. %@", buf, 0x3Eu);
          }

          goto LABEL_27;
        }

        v39 = 100.0 - v36 > a6;
      }

      else
      {
        v37 = v48;
        v39 = v36 + -100.0 > a5 && v30 < v48;
      }

      if (v29 > a4 && v30 < v37)
      {
        v40 = @"Triggered with reason: distance && visible results number";
      }

      else
      {
        v40 = @"Triggered with reason: zoom level";
      }

      LOBYTE(v15) = 1;
      if (v29 > a4 && v30 < v37 || v39)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

LABEL_28:

  return v15;
}

- (BOOL)shouldTriggerAutoRedoWithThreshold:(id)a3 searchResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 numberOfVisiblePoisThreshold];
  [v7 panDeltaThresholdInMeters];
  v10 = v9;
  [v7 zoomInPercentThreshold];
  v12 = v11;
  [v7 zoomOutPercentThreshold];
  v14 = v13;

  LOBYTE(v7) = [(RedoSearchController *)self shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:v8 panDeltaThresholdInMeters:v6 zoomInPercentageThreshold:v10 zoomOutPercentageThreshold:v12 searchResults:v14];
  return v7;
}

- (BOOL)shouldShowManualRedoSearchButton:(id)a3 searchResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 numberOfVisiblePoisThreshold];
  [v7 panDeltaThresholdInMeters];
  v10 = v9;
  [v7 zoomInPercentThreshold];
  v12 = v11;
  [v7 zoomOutPercentThreshold];
  v14 = v13;

  LOBYTE(v7) = [(RedoSearchController *)self shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:v8 panDeltaThresholdInMeters:v6 zoomInPercentageThreshold:v10 zoomOutPercentageThreshold:v12 searchResults:v14];
  return v7;
}

- (RedoSearchController)initWithMapState:(id)a3 zoomLevel:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RedoSearchController;
  v7 = [(RedoSearchController *)&v11 init];
  if (v7)
  {
    v8 = [[RedoSearchMapState alloc] initWithMapRegion:v6 zoomLevel:a4];
    originalState = v7->_originalState;
    v7->_originalState = v8;
  }

  return v7;
}

@end