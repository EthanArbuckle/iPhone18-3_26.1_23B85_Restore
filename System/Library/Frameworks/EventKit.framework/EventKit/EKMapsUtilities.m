@interface EKMapsUtilities
+ (id)_locationStringForStructuredLocation:(id)a3 withTitle:(id)a4;
+ (void)geocodeEventIfNeeded:(id)a3;
@end

@implementation EKMapsUtilities

+ (id)_locationStringForStructuredLocation:(id)a3 withTitle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v7 = [v5 address];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 title];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (([v7 hasPrefix:v8] & 1) != 0 || !objc_msgSend(v7, "CalContainsSubstring:", v8))
  {
    v10 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v8 address:v7];
    goto LABEL_10;
  }

LABEL_8:
  v10 = v7;
LABEL_10:
  v9 = v10;

LABEL_11:

  return v9;
}

+ (void)geocodeEventIfNeeded:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[EKFeatureSet isTravelAdvisorySupported])
  {
    v4 = [v3 locationWithoutPrediction];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [v3 structuredLocationWithoutPrediction];
      v7 = [v6 geoLocation];
      if (v7)
      {
        v8 = v7;
        v9 = [v6 mapKitHandle];

        if (!v9)
        {
          v11 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = v3;
            v12 = "Event has geoLocation but no mapKitHandle.  Will not attempt geocode for event: [%@]";
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }

      v10 = [v3 suggestionInfo];

      if (v10)
      {
        v11 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v62 = v3;
          v12 = "Event is a suggested event.  Will not attempt geocode for event: [%@]";
LABEL_18:
          _os_log_impl(&dword_1A805E000, v11, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      if ([v3 _hasChangesForKey:*MEMORY[0x1E69926D8]])
      {
        v11 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v62 = v3;
          v12 = "Event has unsaved location changes.  Will not attempt geocode for event: [%@]";
          goto LABEL_18;
        }

LABEL_36:

        goto LABEL_37;
      }

      if (geocodeEventIfNeeded__onceToken != -1)
      {
        +[EKMapsUtilities geocodeEventIfNeeded:];
      }

      v15 = MEMORY[0x1E696AD98];
      v16 = [v3 objectID];
      v17 = [v15 numberWithInt:{objc_msgSend(v16, "rowID")}];

      v18 = [geocodeEventIfNeeded__s_lastGeocodedStringForEvent objectForKeyedSubscript:v17];
      v19 = [v3 locationWithoutPrediction];
      v20 = [v19 isEqualToString:v18];

      if (v20)
      {
        v21 = [geocodeEventIfNeeded__s_lastGeocodeDateForEvent objectForKeyedSubscript:v17];
        if (v21)
        {
          v22 = objc_opt_new();
          [v22 timeIntervalSinceDate:v21];
          v24 = v23;

          if (v24 < 86400.0)
          {
            v25 = EKLogHandle;
            if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v62 = v3;
              _os_log_impl(&dword_1A805E000, v25, OS_LOG_TYPE_INFO, "Event location hasn't changed since we geocoded 24 hours ago.  Will not attempt geocode for event: [%@]", buf, 0xCu);
            }

            goto LABEL_35;
          }
        }
      }

      v49 = v18;
      v26 = objc_opt_new();
      [geocodeEventIfNeeded__s_lastGeocodeDateForEvent setObject:v26 forKeyedSubscript:v17];

      v27 = [v3 locationWithoutPrediction];
      v50 = v17;
      [geocodeEventIfNeeded__s_lastGeocodedStringForEvent setObject:v27 forKeyedSubscript:v17];

      v28 = [geocodeEventIfNeeded__storeForSavingProvider eventStore];
      v29 = [v3 objectID];
      v30 = [v3 startDate];
      v31 = [v28 eventForObjectID:v29 occurrenceDate:v30 checkValid:0];

      v32 = [v31 locationWithoutPrediction];
      v33 = [v31 clientLocation];
      v34 = [v33 mapKitHandle];
      if (v34)
      {
        [v31 clientLocation];
      }

      else
      {
        [v31 structuredLocationWithoutPrediction];
      }
      v35 = ;
      v36 = [v35 mapKitHandle];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_23;
      aBlock[3] = &unk_1E7800548;
      v37 = v31;
      v56 = v37;
      v38 = v32;
      v57 = v38;
      v39 = v36;
      v58 = v39;
      v59 = v50;
      v21 = v28;
      v60 = v21;
      v40 = _Block_copy(aBlock);
      if (v39)
      {
        v41 = v38;
        v42 = EKWeakLinkClass();
        v43 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v3;
          _os_log_impl(&dword_1A805E000, v43, OS_LOG_TYPE_DEFAULT, "Starting geocode of mapHandle for event: [%@]", buf, 0xCu);
        }

        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_29;
        v51[3] = &unk_1E7800570;
        v52 = v40;
        [v42 _mapItemFromHandle:v39 completionHandler:v51];

        v38 = v41;
        goto LABEL_34;
      }

      if ([v37 locationIsAConferenceRoom])
      {
        v45 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v46 = "The event has a location that is a conference room.  Will not attempt to geocode its location string.";
LABEL_47:
          _os_log_impl(&dword_1A805E000, v45, OS_LOG_TYPE_INFO, v46, buf, 2u);
        }
      }

      else
      {
        v47 = [v37 automaticLocationGeocodingAllowed];
        v45 = EKLogHandle;
        if (v47)
        {
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v62 = v3;
            _os_log_impl(&dword_1A805E000, v45, OS_LOG_TYPE_DEFAULT, "Starting geocode of location string for event: [%@]", buf, 0xCu);
          }

          v48 = MEMORY[0x1E6992FB8];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_27;
          v53[3] = &unk_1E7800570;
          v54 = v40;
          [v48 geocodeLocationString:v38 withCompletionBlock:v53];

          goto LABEL_34;
        }

        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v46 = "Automatic location geocoding is disallowed.  Will not attempt to geocode this event's location string.";
          goto LABEL_47;
        }
      }

LABEL_34:

      v18 = v49;
      v17 = v50;
LABEL_35:

      goto LABEL_36;
    }

    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v3;
      v14 = "Event has no location.  Will not attempt geocode for event: [%@]";
      goto LABEL_12;
    }
  }

  else
  {
    v13 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v3;
      v14 = "Travel advisory not supported.  Will not attempt geocode for event: [%@]";
LABEL_12:
      _os_log_impl(&dword_1A805E000, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
    }
  }

LABEL_37:

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke()
{
  v0 = objc_opt_new();
  v1 = geocodeEventIfNeeded__s_lastGeocodeDateForEvent;
  geocodeEventIfNeeded__s_lastGeocodeDateForEvent = v0;

  v2 = objc_opt_new();
  v3 = geocodeEventIfNeeded__s_lastGeocodedStringForEvent;
  geocodeEventIfNeeded__s_lastGeocodedStringForEvent = v2;

  geocodeEventIfNeeded__storeForSavingProvider = [[EKEphemeralCacheEventStoreProvider alloc] initWithCreationBlock:&__block_literal_global_20_0];

  return MEMORY[0x1EEE66BB8]();
}

id __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2()
{
  v0 = objc_opt_new();

  return v0;
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_23(id *a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = dispatch_get_global_queue(9, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24;
  v12[3] = &unk_1E7800520;
  v13 = a1[4];
  v20 = a4;
  v14 = a1[5];
  v15 = a1[6];
  v16 = v8;
  v17 = a1[7];
  v18 = v7;
  v19 = a1[8];
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, v12);
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24(uint64_t a1)
{
  [*(a1 + 32) refreshIfRefreshableAndNotify:1];
  v2 = *(a1 + 32);
  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 40);
    v4 = [v2 locationWithoutPrediction];
    LOBYTE(v3) = [v3 isEqualToString:v4];

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:
    v19 = EKLogHandle;
    if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v25 = 0;
    v20 = "Geocoding finished but the event location changed. Not saving results of geocode.";
    v21 = v25;
    goto LABEL_18;
  }

  v5 = *(a1 + 48);
  v6 = [v2 clientLocation];
  v7 = [v6 mapKitHandle];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 clientLocation];
    v10 = [v9 mapKitHandle];
    v11 = [v5 isEqualToData:v10];
  }

  else
  {
    v7 = [v8 structuredLocationWithoutPrediction];
    v9 = [v7 mapKitHandle];
    v11 = [v5 isEqualToData:v9];
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_1((a1 + 56));
    }

    [geocodeEventIfNeeded__s_lastGeocodeDateForEvent removeObjectForKey:*(a1 + 64)];
    [geocodeEventIfNeeded__s_lastGeocodedStringForEvent removeObjectForKey:*(a1 + 64)];
    return;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    v19 = EKLogHandle;
    if (!os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v22 = 0;
    v20 = "Geocoding finished but the location string was not geocodable.";
    v21 = &v22;
LABEL_18:
    _os_log_impl(&dword_1A805E000, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 2u);
    return;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 80);
  v24 = 0;
  v15 = [v13 updateWithGeocodedMapItemAndSaveWithCommit:v12 eventStore:v14 error:&v24];
  v16 = v24;
  v17 = v16;
  v18 = EKLogHandle;
  if (!v15 || v16)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_2();
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A805E000, v18, OS_LOG_TYPE_DEFAULT, "Geocoding finished and event was updated.", buf, 2u);
  }
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __40__EKMapsUtilities_geocodeEventIfNeeded___block_invoke_2_24_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end