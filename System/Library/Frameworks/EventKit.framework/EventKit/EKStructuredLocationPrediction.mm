@interface EKStructuredLocationPrediction
+ (BOOL)shouldDoLocationPredictionForEvent:(id)a3;
+ (id)_mockLocationForEventTitle:(id)a3;
+ (id)locationPredictionForTitle:(id)a3 location:(id)a4 calendar:(id)a5 error:(id *)a6 timeout:(double)a7;
+ (void)userInteractionWithPredictedLocationOfInterest:(id)a3 interaction:(unint64_t)a4;
@end

@implementation EKStructuredLocationPrediction

+ (id)locationPredictionForTitle:(id)a3 location:(id)a4 calendar:(id)a5 error:(id *)a6 timeout:(double)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([MEMORY[0x1E6992FA0] currentProcessHasBooleanEntitlement:@"com.apple.CoreRoutine.LocationOfInterest"])
  {
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__25;
    v42 = __Block_byref_object_dispose__25;
    v43 = 0;
    v14 = [MEMORY[0x1E6992DF0] shared];
    v15 = [v14 get_suggestedLocationsTestMode];

    if (v15 && ([a1 _mockLocationForEventTitle:v11], v16 = objc_claimAutoreleasedReturnValue(), v17 = *(v39 + 5), *(v39 + 5) = v16, v17, (v18 = *(v39 + 5)) != 0))
    {
      v19 = v18;
    }

    else
    {
      v37 = 0;
      v21 = [MEMORY[0x1E6992FF0] predictedLocationOfInterestForEventTitle:v11 eventLocation:v12 calendarIdentifier:v13 timeout:dispatch_time(0 error:{(a7 * 1000000000.0)), &v37}];
      v22 = v37;
      if (v21)
      {
        v23 = EKWeakLinkClass();
        v24 = [v21 locationOfInterest];
        v25 = dispatch_semaphore_create(0);
        v26 = [v23 sharedService];
        v27 = [v24 mapItem];
        v28 = [v27 geoMapItemHandle];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __93__EKStructuredLocationPrediction_locationPredictionForTitle_location_calendar_error_timeout___block_invoke;
        v32[3] = &unk_1E7801528;
        v36 = buf;
        v29 = v24;
        v33 = v29;
        v34 = v21;
        v30 = v25;
        v35 = v30;
        [v26 resolveMapItemLocallyFromHandle:v28 completionHandler:v32];

        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
      }

      v19 = *(v39 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v20 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A805E000, v20, OS_LOG_TYPE_INFO, "Skipping looking up predicted location because process is not entitled.", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

void __93__EKStructuredLocationPrediction_locationPredictionForTitle_location_calendar_error_timeout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [EKStructuredLocation locationWithGEOMapItem:v5];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) location];
    [v10 horizontalUncertainty];
    [*(*(*(a1 + 56) + 8) + 40) setRadius:?];

    [*(*(*(a1 + 56) + 8) + 40) setImprecise:1];
    v11 = [[EKPredictedLocationOfInterest alloc] initWithPredictedLocationOfInterest:*(a1 + 40)];
    [*(*(*(a1 + 56) + 8) + 40) setPredictedLOI:v11];
  }

  else
  {
    v12 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __93__EKStructuredLocationPrediction_locationPredictionForTitle_location_calendar_error_timeout___block_invoke_cold_1(v12, v6);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

+ (BOOL)shouldDoLocationPredictionForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 preferredLocationWithoutPrediction];
  v5 = [MEMORY[0x1E6992DF0] shared];
  if (![v5 get_suggestEventLocations] || (objc_msgSend(v3, "isNew") & 1) != 0)
  {
    goto LABEL_11;
  }

  v6 = [v4 geoLocation];
  if (v6 || [v3 locationPredictionState] || (objc_msgSend(v3, "calendar"), v6 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v6, "allowsContentModifications") & 1) == 0))
  {
LABEL_10:

LABEL_11:
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v7 = [v3 calendar];
  if ([v7 type] == 4)
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = [v3 calendar];
  if ([v8 type] == 3)
  {

    goto LABEL_9;
  }

  v11 = [v3 calendar];
  v12 = [v11 type];

  if (v12 == 6)
  {
    goto LABEL_12;
  }

  v13 = *MEMORY[0x1E69930E8];
  v14 = [MEMORY[0x1E6992FE0] authorizationStatusForBundleIdentifier:*MEMORY[0x1E69930E8]];
  v15 = [MEMORY[0x1E6992FE0] locationPrecisionForBundleIdentifier:v13];
  v9 = (v14 - 3) < 2 && v15 == 2;
LABEL_13:

  return v9;
}

+ (void)userInteractionWithPredictedLocationOfInterest:(id)a3 interaction:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 rtPredictedLocationOfInterest];
  if (v6)
  {
    if (userInteractionWithPredictedLocationOfInterest_interaction__onceToken != -1)
    {
      +[EKStructuredLocationPrediction userInteractionWithPredictedLocationOfInterest:interaction:];
    }

    v7 = [userInteractionWithPredictedLocationOfInterest_interaction__RTRoutineManagerClass defaultManager];
    [v7 userInteractionWithPredictedLocationOfInterest:v6 interaction:a4 feedback:0];
    goto LABEL_7;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v8;
    v9 = [v5 customLabel];
    v11 = 138543618;
    v12 = v9;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "Got user interaction for mocked location of interest (%{public}@). Interaction type = %d", &v11, 0x12u);

LABEL_7:
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __93__EKStructuredLocationPrediction_userInteractionWithPredictedLocationOfInterest_interaction___block_invoke()
{
  result = EKWeakLinkClass();
  userInteractionWithPredictedLocationOfInterest_interaction__RTRoutineManagerClass = result;
  return result;
}

+ (id)_mockLocationForEventTitle:(id)a3
{
  v3 = _mockLocationForEventTitle__onceToken[0];
  v4 = a3;
  if (v3 != -1)
  {
    +[EKStructuredLocationPrediction _mockLocationForEventTitle:];
  }

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS SELF", v4];

  v6 = [_mockLocationForEventTitle__s_mockLocations allKeys];
  v7 = [v6 filteredArrayUsingPredicate:v5];
  v8 = [v7 firstObject];

  v9 = [_mockLocationForEventTitle__s_mockLocations objectForKey:v8];
  v10 = [v9 duplicate];

  return v10;
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke()
{
  v0 = EKWeakLinkClass();
  v1 = EKWeakLinkClass();
  v2 = EKWeakLinkClass();
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_115;
  v7[3] = &unk_1E7801578;
  v9 = v0;
  v10 = v1;
  v11 = v2;
  v4 = v3;
  v8 = v4;
  [((3 *)&unk_1F1B6B3F0 enumerateKeysAndObjectsWithOptions:1 usingBlock:v7];
  v5 = _mockLocationForEventTitle__s_mockLocations;
  _mockLocationForEventTitle__s_mockLocations = v4;
  v6 = v4;
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"Lat"];
  [v7 doubleValue];
  v9 = v8;
  v10 = [v6 objectForKeyedSubscript:@"Lon"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [*(a1 + 40) sharedService];
  v14 = [v13 ticketForReverseGeocodeCoordinate:1 shiftLocationsIfNeeded:0 traits:{v9, v12}];
  v15 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2;
  v27[3] = &unk_1E7801550;
  v16 = v5;
  v28 = v16;
  v32 = *(a1 + 48);
  v17 = v6;
  v29 = v17;
  v30 = *(a1 + 32);
  v18 = v15;
  v31 = v18;
  [v14 submitWithHandler:v27 networkActivity:0];
  v19 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v18, v19))
  {
    v20 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_115_cold_1(v16, v20, v21, v22, v23, v24, v25, v26);
    }
  }
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = [v5 firstObject];
  v15 = v14;
  if (v14)
  {
    [v14 coordinate];
    v17 = v16;
    [v15 coordinate];
    v19 = v18;
    v20 = [v15 addressDictionary];
    v21 = objc_alloc(*(a1 + 64));
    v47 = v20;
    v22 = [objc_alloc(*(a1 + 72)) initWithCoordinate:v20 addressDictionary:{v17, v19}];
    v23 = [v21 initWithPlacemark:v22];

    v24 = [v15 geoAddress];
    v25 = [v24 structuredAddress];

    v26 = [*(a1 + 40) objectForKeyedSubscript:@"Type"];
    v48 = v6;
    v49 = v5;
    v46 = v26;
    if (v26)
    {
      v27 = [v26 integerValue];
    }

    else
    {
      v27 = -1;
    }

    v35 = [EKPredictedLocationOfInterest alloc];
    v36 = *(a1 + 32);
    [v23 name];
    v38 = v37 = v23;
    v39 = [v25 countryCode];
    v40 = [v25 thoroughfare];
    [v25 locality];
    v41 = v45 = v25;
    v42 = [(EKPredictedLocationOfInterest *)v35 initWithType:v27 customLabel:v36 mapItemName:v38 addressCountryCode:v39 addressThoroughFare:v40 addressLocality:v41];

    v43 = [EKStructuredLocation locationWithMapItem:v37];
    [v43 setImprecise:1];
    [v43 setPredictedLOI:v42];
    v44 = *(a1 + 48);
    objc_sync_enter(v44);
    [*(a1 + 48) setObject:v43 forKeyedSubscript:*(a1 + 32)];
    objc_sync_exit(v44);

    v6 = v48;
    v5 = v49;
  }

  else
  {
    v28 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2_cold_2(a1, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void __93__EKStructuredLocationPrediction_locationPredictionForTitle_location_calendar_error_timeout___block_invoke_cold_1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 code];
  v5 = [a2 domain];
  v7 = 134218498;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Failed to get map item from GEOMapService. error code = %ld, domain = %{public}@, error = %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_115_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "reverse geocode timeout for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "error reverse geocoding: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__EKStructuredLocationPrediction__mockLocationForEventTitle___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, a2, a3, "no results from reverse geocode for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end