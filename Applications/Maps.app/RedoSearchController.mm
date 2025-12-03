@interface RedoSearchController
- (BOOL)shouldShowManualRedoSearchButton:(id)button searchResults:(id)results;
- (BOOL)shouldTriggerAutoRedoWithThreshold:(id)threshold searchResults:(id)results;
- (BOOL)shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:(unint64_t)is panDeltaThresholdInMeters:(double)meters zoomInPercentageThreshold:(double)threshold zoomOutPercentageThreshold:(double)percentageThreshold searchResults:(id)results;
- (RedoSearchController)initWithMapState:(id)state zoomLevel:(double)level;
- (unint64_t)numberOfVisibleSearchResults:(id)results;
@end

@implementation RedoSearchController

- (unint64_t)numberOfVisibleSearchResults:(id)results
{
  resultsCopy = results;
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
  [resultsCopy enumerateObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:(unint64_t)is panDeltaThresholdInMeters:(double)meters zoomInPercentageThreshold:(double)threshold zoomOutPercentageThreshold:(double)percentageThreshold searchResults:(id)results
{
  resultsCopy = results;
  currentState = [(RedoSearchController *)self currentState];
  if (currentState)
  {
    v14 = currentState;
    originalState = [(RedoSearchController *)self originalState];

    if (originalState)
    {
      currentState2 = [(RedoSearchController *)self currentState];
      originalState2 = [(RedoSearchController *)self originalState];
      v18 = [currentState2 isEqual:originalState2];

      if (v18)
      {
        v19 = sub_1007991E4();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Current and Original states are equal, ignoring.", buf, 2u);
        }

        LOBYTE(originalState) = 0;
LABEL_27:

        goto LABEL_28;
      }

      isCopy = is;
      originalState3 = [(RedoSearchController *)self originalState];
      mapRegion = [originalState3 mapRegion];
      [mapRegion centerLat];
      originalState4 = [(RedoSearchController *)self originalState];
      mapRegion2 = [originalState4 mapRegion];
      [mapRegion2 centerLng];
      currentState3 = [(RedoSearchController *)self currentState];
      mapRegion3 = [currentState3 mapRegion];
      [mapRegion3 centerLat];
      currentState4 = [(RedoSearchController *)self currentState];
      mapRegion4 = [currentState4 mapRegion];
      [mapRegion4 centerLng];
      GEOCalculateDistance();
      v29 = v28;

      *&v30 = COERCE_DOUBLE([(RedoSearchController *)self numberOfVisibleSearchResults:resultsCopy]);
      currentState5 = [(RedoSearchController *)self currentState];
      [currentState5 zoomLevel];
      v33 = v32;
      originalState5 = [(RedoSearchController *)self originalState];
      [originalState5 zoomLevel];
      v36 = v33 * 100.0 / v35;

      if (v36 <= 100.0)
      {
        v37 = isCopy;
        if (v36 >= 100.0)
        {
          if (v29 > meters && v30 < isCopy)
          {
            v40 = @"Triggered with reason: distance && visible results number";
            LOBYTE(originalState) = 1;
            goto LABEL_23;
          }

LABEL_22:
          LOBYTE(originalState) = 0;
          v40 = @"Not triggered";
LABEL_23:
          v41 = sub_1007991E4();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 134218752;
            v50 = *&v37;
            v51 = 2048;
            metersCopy = meters;
            v53 = 2048;
            thresholdCopy = threshold;
            v55 = 2048;
            percentageThresholdCopy = percentageThreshold;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Thresholds - Number of results: %lu. Distance: %f Zoom in: %f. Zoom out: %f.", buf, 0x2Au);
          }

          v19 = sub_1007991E4();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            currentState6 = [(RedoSearchController *)self currentState];
            [currentState6 zoomLevel];
            v44 = v43;
            originalState6 = [(RedoSearchController *)self originalState];
            [originalState6 zoomLevel];
            *buf = 134219266;
            v50 = v29;
            v51 = 2048;
            metersCopy = *&v30;
            v53 = 2048;
            thresholdCopy = v44;
            v55 = 2048;
            percentageThresholdCopy = v46;
            v57 = 2048;
            v58 = v36;
            v59 = 2112;
            v60 = v40;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Distance: %f. Number of Visible results: %lu. Current zoom: %f. Original zoom: %f. Percentage: %f. %@", buf, 0x3Eu);
          }

          goto LABEL_27;
        }

        v39 = 100.0 - v36 > percentageThreshold;
      }

      else
      {
        v37 = isCopy;
        v39 = v36 + -100.0 > threshold && v30 < isCopy;
      }

      if (v29 > meters && v30 < v37)
      {
        v40 = @"Triggered with reason: distance && visible results number";
      }

      else
      {
        v40 = @"Triggered with reason: zoom level";
      }

      LOBYTE(originalState) = 1;
      if (v29 > meters && v30 < v37 || v39)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    LOBYTE(originalState) = 0;
  }

LABEL_28:

  return originalState;
}

- (BOOL)shouldTriggerAutoRedoWithThreshold:(id)threshold searchResults:(id)results
{
  resultsCopy = results;
  thresholdCopy = threshold;
  numberOfVisiblePoisThreshold = [thresholdCopy numberOfVisiblePoisThreshold];
  [thresholdCopy panDeltaThresholdInMeters];
  v10 = v9;
  [thresholdCopy zoomInPercentThreshold];
  v12 = v11;
  [thresholdCopy zoomOutPercentThreshold];
  v14 = v13;

  LOBYTE(thresholdCopy) = [(RedoSearchController *)self shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:numberOfVisiblePoisThreshold panDeltaThresholdInMeters:resultsCopy zoomInPercentageThreshold:v10 zoomOutPercentageThreshold:v12 searchResults:v14];
  return thresholdCopy;
}

- (BOOL)shouldShowManualRedoSearchButton:(id)button searchResults:(id)results
{
  resultsCopy = results;
  buttonCopy = button;
  numberOfVisiblePoisThreshold = [buttonCopy numberOfVisiblePoisThreshold];
  [buttonCopy panDeltaThresholdInMeters];
  v10 = v9;
  [buttonCopy zoomInPercentThreshold];
  v12 = v11;
  [buttonCopy zoomOutPercentThreshold];
  v14 = v13;

  LOBYTE(buttonCopy) = [(RedoSearchController *)self shouldTriggerSearchHereWithMinimumNumberOfVisiblePOIs:numberOfVisiblePoisThreshold panDeltaThresholdInMeters:resultsCopy zoomInPercentageThreshold:v10 zoomOutPercentageThreshold:v12 searchResults:v14];
  return buttonCopy;
}

- (RedoSearchController)initWithMapState:(id)state zoomLevel:(double)level
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = RedoSearchController;
  v7 = [(RedoSearchController *)&v11 init];
  if (v7)
  {
    v8 = [[RedoSearchMapState alloc] initWithMapRegion:stateCopy zoomLevel:level];
    originalState = v7->_originalState;
    v7->_originalState = v8;
  }

  return v7;
}

@end