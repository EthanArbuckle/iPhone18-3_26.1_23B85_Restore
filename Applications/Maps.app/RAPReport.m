@interface RAPReport
- (BOOL)_shouldEnableCommunityID;
- (GEORPUserPath)combinedUserPath;
- (RAPReport)init;
- (RAPReport)initWithContext:(id)a3 submitter:(id)a4;
- (id)_auxiliaryControlsRecording;
- (id)_buildRequestParamsWithError:(id *)a3;
- (id)_directionsRecording;
- (id)_mapContext;
- (id)_navigationSettings;
- (id)_placeContext;
- (id)_saveRAPInfoToMapsSyncWithRequestParams:(id)a3;
- (id)devicePushToken;
- (id)newFeedbackRequestParameters;
- (void)_anonymizeDirectionsRequestsAndResponsesIfNeeded:(id)a3;
- (void)_anonymizeLocations:(id)a3 traits:(id)a4;
- (void)_anonymizePhotos:(id)a3;
- (void)_anonymizeScreenshots:(id)a3;
- (void)_buildUserInfoWithRequestParams:(id)a3 CompletionHandler:(id)a4;
- (void)_invokeChangeHandlers;
- (void)_prepareRequestParametersForSubmission:(id)a3;
- (void)_setNeedsUpdate;
- (void)_update;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
- (void)removePhotosOfType:(int64_t)a3;
- (void)setInitialQuestion:(id)a3;
- (void)submitWithPrivacyRequestHandler:(id)a3 willStartSubmitting:(id)a4 didFinishSubmitting:(id)a5;
- (void)updateIfNeeded;
@end

@implementation RAPReport

- (GEORPUserPath)combinedUserPath
{
  combinedUserPath = self->_combinedUserPath;
  if (!combinedUserPath)
  {
    v4 = objc_alloc_init(GEORPUserPath);
    v5 = self->_combinedUserPath;
    self->_combinedUserPath = v4;

    combinedUserPath = self->_combinedUserPath;
  }

  return combinedUserPath;
}

- (void)_anonymizeDirectionsRequestsAndResponsesIfNeeded:(id)a3
{
  v3 = a3;
  v4 = [v3 details];
  v5 = [v4 directionsFeedback];
  v6 = [v5 directionsContext];

  v7 = [v6 directionsRequests];
  v8 = [v7 count];

  if (v8)
  {
    if (sub_100742C84())
    {
      [v6 setDirectionsRequests:0];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = [v6 directionsWaypointPlaceInfos];
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v49;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v48 + 1) + 8 * i) setPlaceRequest:0];
          }

          v11 = [v9 countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v9 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = [v6 directionsRequests];
      v15 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v45;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v44 + 1) + 8 * j) copy];
            if ((sub_100742300() & 1) == 0)
            {
              [v19 clearDeviceHistoricalLocations];
            }

            [v19 clearSessionId];
            [v9 addObject:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v16);
      }

      [v6 setDirectionsRequests:v9];
    }
  }

  if (sub_100742FB0())
  {
    [v6 setDirectionsResponses:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = [v6 directionsWaypointPlaceInfos];
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v40 + 1) + 8 * k) setPlaceResponse:0];
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v22);
    }
  }

  v25 = [v3 details];
  v26 = [v25 transitPoiFeedback];

  v27 = [v26 directionsRequests];
  v28 = [v27 count];

  if (v28)
  {
    if (sub_100742C84())
    {
      [v26 setDirectionsRequests:0];
    }

    else
    {
      v29 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v30 = [v26 directionsRequests];
      v31 = [v30 countByEnumeratingWithState:&v36 objects:v52 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v37;
        do
        {
          for (m = 0; m != v32; m = m + 1)
          {
            if (*v37 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [*(*(&v36 + 1) + 8 * m) copy];
            if ((sub_100742300() & 1) == 0)
            {
              [v35 clearDeviceHistoricalLocations];
            }

            [v35 clearSessionId];
            [v29 addObject:v35];
          }

          v32 = [v30 countByEnumeratingWithState:&v36 objects:v52 count:16];
        }

        while (v32);
      }

      [v26 setDirectionsRequests:v29];
    }
  }

  if (sub_100742FB0())
  {
    [v26 setDirectionsResponses:0];
  }
}

- (void)_anonymizeLocations:(id)a3 traits:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v6 clearSessionId];
  [v6 clearLocations];
  v7 = [v5 details];
  v8 = [v7 directionsFeedback];
  v9 = [v8 directionsContext];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v10 = [v9 directionsWaypointPlaceInfos];
  v11 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v81;
    do
    {
      v14 = 0;
      do
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v80 + 1) + 8 * v14) clearLocations];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v12);
  }

  v15 = [v9 directionsRequests];
  v16 = [v15 count];

  if (v16)
  {
    v17 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v18 = [v9 directionsRequests];
    v19 = [v18 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v77;
      do
      {
        v22 = 0;
        do
        {
          if (*v77 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v76 + 1) + 8 * v22) copy];
          [v23 clearLocations];
          [v23 setRequestTime:0.0];
          [v17 addObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v20);
    }

    [v9 setDirectionsRequests:v17];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v24 = [v9 directionsResponses];
  v25 = [v24 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v73;
    do
    {
      v28 = 0;
      do
      {
        if (*v73 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v72 + 1) + 8 * v28) clearLocations];
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v26);
  }

  v29 = [v9 startWaypoint];
  [v29 setOrigin:0];

  v30 = [v9 startWaypoint];
  [v30 setAutocompleteEntry:0];

  v31 = [v9 startWaypoint];
  [v31 setSearchString:0];

  v32 = [v9 endWaypoint];
  [v32 setOrigin:0];

  v33 = [v9 endWaypoint];
  [v33 setAutocompleteEntry:0];

  v34 = [v9 endWaypoint];
  [v34 setSearchString:0];

  v35 = [v5 details];
  v36 = [v35 transitPoiFeedback];

  v37 = [v36 directionsRequests];
  v38 = [v37 count];

  if (v38)
  {
    v39 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v40 = [v36 directionsRequests];
    v41 = [v40 countByEnumeratingWithState:&v68 objects:v86 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v69;
      do
      {
        v44 = 0;
        do
        {
          if (*v69 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v68 + 1) + 8 * v44) copy];
          [v45 clearLocations];
          [v45 setRequestTime:0.0];
          [v39 addObject:v45];

          v44 = v44 + 1;
        }

        while (v42 != v44);
        v42 = [v40 countByEnumeratingWithState:&v68 objects:v86 count:16];
      }

      while (v42);
    }

    [v36 setDirectionsRequests:v39];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v46 = [v36 directionsResponses];
  v47 = [v46 countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v65;
    do
    {
      v50 = 0;
      do
      {
        if (*v65 != v49)
        {
          objc_enumerationMutation(v46);
        }

        [*(*(&v64 + 1) + 8 * v50) clearLocations];
        v50 = v50 + 1;
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v64 objects:v85 count:16];
    }

    while (v48);
  }

  v51 = [v5 commonContext];
  if ([v51 pinType] == 4)
  {
    [v51 setPinType:2];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v52 = self->_photosWithMetadata;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v60 objects:v84 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v61;
    do
    {
      v56 = 0;
      do
      {
        if (*v61 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v60 + 1) + 8 * v56) anonymizeLocation];
        v56 = v56 + 1;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v60 objects:v84 count:16];
    }

    while (v54);
  }

  if ([v5 isPersonalizedMapsFeedback])
  {
    [v51 clearUserPaths];
    [v51 addUserPath:1];
    [v51 addUserPath:7];
    [v51 addUserPath:10];
    [v51 addUserPath:10];
    v57 = [v5 details];
    v58 = [v57 addressPointFeedback];
    [v58 setPersonalizedMaps:0];
  }
}

- (void)_anonymizeScreenshots:(id)a3
{
  v4 = a3;
  [(RAPReport *)self removePhotosOfType:0];
  [(RAPReport *)self removePhotosOfType:5];
  [(RAPReport *)self removePhotosOfType:2];
  [(RAPReport *)self removePhotosOfType:3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 details];
  v6 = [v5 directionsFeedback];
  v7 = [v6 directionsCorrections];
  v8 = [v7 instructionCorrections];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setRouteStepScreenshotImageId:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_anonymizePhotos:(id)a3
{
  v4 = a3;
  [(RAPReport *)self removePhotosOfType:1];
  [(RAPReport *)self removePhotosOfType:4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 details];
  v6 = [v5 directionsFeedback];
  v7 = [v6 directionsCorrections];
  v8 = [v7 instructionCorrections];

  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) setPhotoId:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)_saveRAPInfoToMapsSyncWithRequestParams:(id)a3
{
  v4 = a3;
  v5 = [v4 submissionParameters];
  v6 = [v5 type];

  v7 = 0;
  v8 = v6;
  v9 = 0;
  v10 = 0;
  switch(v8)
  {
    case 0u:
    case 1u:
    case 5u:
    case 6u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      v11 = [(RAPReport *)self _context];
      v12 = [v11 reportedPlace];
      v13 = [v12 mapItem];
      v14 = [v13 _geoMapItem];

      v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v14];

      goto LABEL_3;
    case 2u:
      v36 = [v4 submissionParameters];
      v37 = [v36 details];
      v38 = [v37 hasPoiFeedback];

      if (!v38)
      {
        goto LABEL_19;
      }

      v27 = [v4 submissionParameters];
      v28 = [v27 details];
      v29 = [v28 poiFeedback];
      goto LABEL_16;
    case 3u:
      v24 = [v4 submissionParameters];
      v25 = [v24 details];
      v26 = [v25 hasTransitPoiFeedback];

      if (!v26)
      {
        goto LABEL_19;
      }

      v27 = [v4 submissionParameters];
      v28 = [v27 details];
      v29 = [v28 transitPoiFeedback];
      goto LABEL_16;
    case 4u:
      v30 = [v4 submissionParameters];
      v31 = [v30 details];
      v32 = [v31 hasAddressPointFeedback];

      if (!v32)
      {
        goto LABEL_19;
      }

      v27 = [v4 submissionParameters];
      v28 = [v27 details];
      v29 = [v28 addressPointFeedback];
      goto LABEL_16;
    case 8u:
      v7 = [(RAPReport *)self _directionsRecording];
      goto LABEL_20;
    case 9u:
      goto LABEL_22;
    case 0xAu:
      v33 = [v4 submissionParameters];
      v34 = [v33 details];
      v35 = [v34 hasPoiEnrichmentUpdate];

      if (!v35)
      {
        goto LABEL_19;
      }

      v27 = [v4 submissionParameters];
      v28 = [v27 details];
      v29 = [v28 poiEnrichmentUpdate];
      goto LABEL_16;
    case 0xCu:
      v42 = [v4 submissionParameters];
      v43 = [v42 details];
      v44 = [v43 curatedCollectionFeedback];
      v45 = [v44 hasCuratedCollectionContext];

      if (!v45)
      {
        goto LABEL_19;
      }

      v46 = [MKMapItemIdentifier alloc];
      v47 = [v4 submissionParameters];
      v48 = [v47 details];
      v49 = [v48 curatedCollectionFeedback];
      v50 = [v49 curatedCollectionContext];
      v51 = [v50 curatedCollectionMuid];
      v52 = [v46 initWithMUID:v51 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

      v9 = [NSString stringWithFormat:@"%@", v52];

      v7 = 0;
      goto LABEL_21;
    case 0xDu:
      v15 = [v4 submissionParameters];
      v16 = [v15 details];
      v17 = [v16 hasPoiImageFeedback];

      if (v17)
      {
        v18 = [v4 submissionParameters];
        v19 = [v18 details];
        v20 = [v19 poiImageFeedback];
        v21 = [v20 poiImageContext];
        v22 = [v21 place];
        v23 = [v22 geoMapItem];

        v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v23];

LABEL_3:
        v7 = 0;
        v9 = 0;
      }

      else
      {
LABEL_19:
        v7 = 0;
LABEL_20:
        v9 = 0;
LABEL_21:
        v10 = 0;
      }

LABEL_22:
      v53 = objc_alloc_init(RapUserProfileRecord);
      [(RapUserProfileRecord *)v53 setMapItemStorage:v10];
      [(RapUserProfileRecord *)v53 setCuratedCollectionIdentifier:v9];
      [(RapUserProfileRecord *)v53 setDirections:v7];
      [(RapUserProfileRecord *)v53 setMuninViewState:0];

      return v53;
    case 0x10u:
      v27 = [v4 submissionParameters];
      v28 = [v27 details];
      v29 = [v28 localityFeedback];
LABEL_16:
      v39 = v29;
      v40 = [v29 place];
      v41 = [v40 geoMapItem];

      v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v41];

      goto LABEL_3;
    default:
      v9 = 0;
      v10 = 0;
      goto LABEL_22;
  }
}

- (id)_buildRequestParamsWithError:(id *)a3
{
  v3 = [(RAPReport *)self newFeedbackRequestParameters];
  if (_GEOConfigHasValue())
  {
    if ((GEOConfigGetBOOL() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v69 = [NSNumber numberWithUnsignedInt:118];
    v76 = v69;
    *buf = &off_1016EE2B8;
    v66 = [NSNumber numberWithUnsignedInt:119];
    v77 = v66;
    v87 = &off_1016EE2E0;
    v4 = [NSNumber numberWithUnsignedInt:120];
    v78 = v4;
    v88 = &off_1016EE308;
    v5 = [NSNumber numberWithUnsignedInt:121];
    v79 = v5;
    v89 = &off_1016EE330;
    v6 = [NSNumber numberWithUnsignedInt:122];
    v80 = v6;
    v90 = &off_1016EE358;
    v7 = [NSNumber numberWithUnsignedInt:123];
    v81 = v7;
    v91 = &off_1016EE380;
    v8 = [NSNumber numberWithUnsignedInt:124];
    v82 = v8;
    v92 = &off_1016EE3A8;
    v9 = [NSNumber numberWithUnsignedInt:125];
    v83 = v9;
    v93 = &off_1016EE3D0;
    v10 = [NSNumber numberWithUnsignedInt:126];
    v84 = v10;
    v94 = &off_1016EE3F8;
    v11 = [NSNumber numberWithUnsignedInt:398];
    v85 = v11;
    v95 = &off_1016EE420;
    v12 = [NSDictionary dictionaryWithObjects:buf forKeys:&v76 count:10];

    v13 = [NSNumber numberWithUnsignedInt:126];
    v14 = [v12 objectForKeyedSubscript:v13];

    v15 = +[GEOCountryConfiguration sharedConfiguration];
    v16 = [v15 countryCode];
    v17 = [v14 objectForKey:v16];

    if (v17)
    {
      v18 = [v17 BOOLValue];

      if ((v18 & 1) == 0)
      {
LABEL_11:
        v24 = [v3 submissionParameters];
        if ([v24 isDirectionsFeedback])
        {
          if (_GEOConfigHasValue())
          {
            BOOL = GEOConfigGetBOOL();

            if (BOOL)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v74 = v3;
            v70 = [NSNumber numberWithUnsignedInt:118];
            v76 = v70;
            *buf = &off_1016EE2B8;
            v67 = [NSNumber numberWithUnsignedInt:119];
            v77 = v67;
            v87 = &off_1016EE2E0;
            v64 = [NSNumber numberWithUnsignedInt:120];
            v78 = v64;
            v88 = &off_1016EE308;
            v29 = [NSNumber numberWithUnsignedInt:121];
            v79 = v29;
            v89 = &off_1016EE330;
            v30 = [NSNumber numberWithUnsignedInt:122];
            v80 = v30;
            v90 = &off_1016EE358;
            v31 = [NSNumber numberWithUnsignedInt:123];
            v81 = v31;
            v91 = &off_1016EE380;
            v32 = [NSNumber numberWithUnsignedInt:124];
            v82 = v32;
            v92 = &off_1016EE3A8;
            v33 = [NSNumber numberWithUnsignedInt:125];
            v83 = v33;
            v93 = &off_1016EE3D0;
            v34 = [NSNumber numberWithUnsignedInt:126];
            v84 = v34;
            v94 = &off_1016EE3F8;
            v35 = [NSNumber numberWithUnsignedInt:398];
            v85 = v35;
            v95 = &off_1016EE420;
            v36 = [NSDictionary dictionaryWithObjects:buf forKeys:&v76 count:10];

            v37 = [NSNumber numberWithUnsignedInt:122];
            v38 = [v36 objectForKeyedSubscript:v37];

            v39 = +[GEOCountryConfiguration sharedConfiguration];
            v40 = [v39 countryCode];
            v41 = [v38 objectForKey:v40];

            if (v41)
            {
              v42 = [v41 BOOLValue];

              v3 = v74;
              if (v42)
              {
LABEL_29:
                if (!sub_1007432DC())
                {
                  v22 = GEOErrorDomain();
                  v76 = kCFErrorDebugDescriptionKey;
                  v23 = @"Cannot submit directions RAP due to privacy";
                  goto LABEL_37;
                }

LABEL_33:
                v59 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "RAP suppressed without user-visible error (invalid request)", buf, 2u);
                }

                v60 = 0;
                goto LABEL_38;
              }
            }

            else
            {
              v57 = GEOConfigGetBOOL();

              v3 = v74;
              if (v57)
              {
                goto LABEL_29;
              }
            }
          }
        }

        else
        {
        }

        v26 = [v3 submissionParameters];
        if ([v26 isTransitFeedback])
        {
          if (_GEOConfigHasValue())
          {
            v27 = GEOConfigGetBOOL();

            if (v27)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v75 = v3;
            v71 = [NSNumber numberWithUnsignedInt:118];
            v76 = v71;
            *buf = &off_1016EE2B8;
            v68 = [NSNumber numberWithUnsignedInt:119];
            v77 = v68;
            v87 = &off_1016EE2E0;
            v65 = [NSNumber numberWithUnsignedInt:120];
            v78 = v65;
            v88 = &off_1016EE308;
            v43 = [NSNumber numberWithUnsignedInt:121];
            v79 = v43;
            v89 = &off_1016EE330;
            v44 = [NSNumber numberWithUnsignedInt:122];
            v80 = v44;
            v90 = &off_1016EE358;
            v45 = [NSNumber numberWithUnsignedInt:123];
            v81 = v45;
            v91 = &off_1016EE380;
            v46 = [NSNumber numberWithUnsignedInt:124];
            v82 = v46;
            v92 = &off_1016EE3A8;
            v47 = [NSNumber numberWithUnsignedInt:125];
            v83 = v47;
            v93 = &off_1016EE3D0;
            v48 = [NSNumber numberWithUnsignedInt:126];
            v84 = v48;
            v94 = &off_1016EE3F8;
            v49 = [NSNumber numberWithUnsignedInt:398];
            v85 = v49;
            v95 = &off_1016EE420;
            v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v76 count:10];

            v51 = [NSNumber numberWithUnsignedInt:125];
            v52 = [v50 objectForKeyedSubscript:v51];

            v53 = +[GEOCountryConfiguration sharedConfiguration];
            v54 = [v53 countryCode];
            v55 = [v52 objectForKey:v54];

            if (v55)
            {
              v56 = [v55 BOOLValue];

              v3 = v75;
              if (v56)
              {
LABEL_32:
                if (!sub_1007432DC())
                {
                  v22 = GEOErrorDomain();
                  v76 = kCFErrorDebugDescriptionKey;
                  v23 = @"Cannot submit transit RAP due to privacy";
                  goto LABEL_37;
                }

                goto LABEL_33;
              }
            }

            else
            {
              v58 = GEOConfigGetBOOL();

              v3 = v75;
              if (v58)
              {
                goto LABEL_32;
              }
            }
          }
        }

        else
        {
        }

        [(RAPReport *)self _prepareRequestParametersForSubmission:v3];
        v28 = v3;
        goto LABEL_39;
      }
    }

    else
    {
      v19 = GEOConfigGetBOOL();

      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

  v20 = [v3 submissionParameters];
  v21 = [v20 isPersonalizedMapsFeedback];

  if (!v21)
  {
    goto LABEL_11;
  }

  if (sub_1007432DC())
  {
    goto LABEL_33;
  }

  v22 = GEOErrorDomain();
  v76 = kCFErrorDebugDescriptionKey;
  v23 = @"Cannot submit personalized Maps RAP due to privacy";
LABEL_37:
  *buf = v23;
  v61 = [NSDictionary dictionaryWithObjects:buf forKeys:&v76 count:1];
  v60 = [NSError errorWithDomain:v22 code:-10 userInfo:v61];

  v62 = v60;
LABEL_38:
  v28 = 0;
  *a3 = v60;
LABEL_39:

  return v28;
}

- (void)_buildUserInfoWithRequestParams:(id)a3 CompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(RAPReport *)self _shouldEnableCommunityID])
  {
    v8 = +[_TtC4Maps30ServerEvaluationStatusMapsSync shared];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100A31358;
    v13[3] = &unk_101632368;
    v14 = v6;
    v15 = self;
    v16 = v7;
    [v8 fetchRAPStatusWithCompletion:v13];
  }

  else
  {
    if (sub_10074262C())
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v9 = [(RAPReport *)self devicePushToken];
      if (sub_10079AE64() == 1)
      {
        v10 = sub_1007412FC();
      }

      else
      {
        v10 = 0;
      }

      v12 = [(RAPReport *)self preferredEmailAddress];
      v11 = [GEORPFeedbackUserInfo userCredentialsForContactBackEmailAddress:v10 userEnteredEmailAddress:v12 pushToken:v9];
    }

    (*(v7 + 2))(v7, v11);
  }
}

- (BOOL)_shouldEnableCommunityID
{
  IsEnabled_RAPCommunityID = MapsFeature_IsEnabled_RAPCommunityID();
  if (IsEnabled_RAPCommunityID)
  {
    v4 = [(RAPReport *)self initialQuestion];
    v5 = [v4 isAnonymous];

    LOBYTE(IsEnabled_RAPCommunityID) = v5;
  }

  return IsEnabled_RAPCommunityID;
}

- (void)submitWithPrivacyRequestHandler:(id)a3 willStartSubmitting:(id)a4 didFinishSubmitting:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(RAPReport *)self updateIfNeeded];
  [(RAPReport *)self _shouldEnableCommunityID];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100A31A04;
  v24[3] = &unk_101661B18;
  v24[4] = self;
  v11 = objc_retainBlock(v24);
  if ([(RAPReport *)self canCreateSubmittableProblem])
  {
    v12 = +[RAPPrivacy hasReceivedPrivacyConsent];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100A31A0C;
    v20[3] = &unk_1016322F0;
    v20[4] = self;
    v21 = v9;
    v13 = v11;
    v22 = v13;
    v23 = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A31E34;
    v15[3] = &unk_101632318;
    v15[4] = self;
    v16 = objc_retainBlock(v20);
    v19 = v12;
    v17 = v8;
    v18 = v13;
    v14 = v16;
    dispatch_async(&_dispatch_main_q, v15);
  }

  else
  {
    (v11[2])(v11);
  }
}

- (id)devicePushToken
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100A32BA8;
  v15 = sub_100A32BB8;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A32BC0;
  v8[3] = &unk_10163B7E8;
  v10 = &v11;
  v4 = v2;
  v9 = v4;
  [v3 fetchDevicePushToken:v8];

  v5 = dispatch_time(0, 1000000000);
  v6 = 0;
  if (!dispatch_semaphore_wait(v4, v5))
  {
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_prepareRequestParametersForSubmission:(id)a3
{
  v4 = a3;
  v5 = [v4 submissionParameters];
  v6 = [v5 commonContext];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = [v4 submissionParameters];
    [v7 setCommonContext:v6];
  }

  v8 = [v6 combinedUserPath];

  v9 = [(RAPReport *)self combinedUserPath];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 nativePathsCount];

    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = [(RAPReport *)self combinedUserPath];
        v14 = [v13 nativePathAtIndex:v12];

        v15 = [v6 combinedUserPath];
        [v15 addNativePath:v14];

        ++v12;
        v16 = [(RAPReport *)self combinedUserPath];
        v17 = [v16 nativePathsCount];
      }

      while (v12 < v17);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v18 = [(RAPReport *)self combinedUserPath];
    v10 = [v18 webPaths];

    v19 = [v10 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v83;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v83 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(*(&v82 + 1) + 8 * i);
          v24 = [v6 combinedUserPath];
          [v24 addWebPath:v23];
        }

        v20 = [v10 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v20);
    }
  }

  else
  {
    [v6 setCombinedUserPath:v9];
  }

  v25 = +[NSTimeZone localTimeZone];
  [v6 setDeviceGmtOffset:{objc_msgSend(v25, "secondsFromGMT")}];

  v26 = [(RAPReport *)self _context];
  v27 = [v26 reportedPlace];
  v28 = [v27 mapItem];
  v29 = [v28 _isMapItemTypeBrand];

  if (v29)
  {
    v30 = [v4 submissionParameters];
    v31 = [v30 commonContext];
    [v31 setPinType:8];
  }

  v32 = [(RAPReport *)self _auxiliaryControlsRecording];
  v33 = [v32 auxiliaryControls];
  v34 = [v33 mutableCopy];
  [v6 setAuxiliaryControls:v34];

  if ([v32 hasOriginatingAuxiliaryControlIndex])
  {
    [v6 setOriginatingAuxiliaryControlIndex:{objc_msgSend(v32, "originatingAuxiliaryControlIndex")}];
  }

  v35 = objc_alloc_init(GEORPMapLocation);
  [v6 setMapLocation:v35];
  v36 = [(RAPReport *)self _mapContext];
  v37 = [v36 mapSnapshotImageData];

  if (v37)
  {
    v38 = [RAPPhoto alloc];
    v39 = [UIImage alloc];
    v40 = [v36 mapSnapshotImageData];
    v41 = [v39 initWithData:v40];
    v42 = [(RAPPhoto *)v38 initWithPhoto:v41 date:0 location:0];

    v43 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v42 photoType:0];
    [(RAPReport *)self addPhotoWithMetadata:v43];
  }

  [(RAPQuestion *)self->_initialQuestion _prepareForSubmission];
  [v36 mapZoomLevel];
  *&v44 = v44;
  [v35 setZoomLevel:v44];
  v45 = [v36 mapType];
  v46 = [v36 mapRegion];
  [v35 _setMapType:v45 region:v46];

  v47 = [v36 mapVisibleTileSets];
  v48 = [v47 mutableCopy];
  [v6 setVisibleTileSets:v48];

  v49 = [(RAPReport *)self _navigationSettings];
  [v6 setNavigationSettings:v49];

  [v6 setClientCreatedAt:CFAbsoluteTimeGetCurrent()];
  v50 = [(RAPReport *)self _context];
  v51 = [v50 reportedPlace];

  if (v51)
  {
    v52 = [(RAPReport *)self _context];
    v53 = [v52 reportedPlace];
    v54 = [v53 source];

    if (v54 <= 9)
    {
      [v6 setPinType:dword_101215098[v54]];
    }
  }

  v55 = [(RAPReport *)self _context];
  v56 = [v55 reportedPlace];
  v57 = [v56 mapItem];
  v58 = [v57 _isMapItemTypeBrand];

  if (v58)
  {
    [v6 setPinType:8];
  }

  if ([v6 pinType] == 6)
  {
    v59 = [(RAPReport *)self _context];
    v60 = [v59 reportedPlace];

    if (v60)
    {
      v61 = [v6 sourceInfo];

      if (!v61)
      {
        v62 = objc_alloc_init(GEORPSourceInfo);
        [v6 setSourceInfo:v62];
      }

      v63 = [(RAPReport *)self _context];
      v64 = [v63 reportedPlace];
      v65 = [v64 sourceApplication];
      v66 = [v6 sourceInfo];
      [v66 setSourceApplication:v65];

      v67 = [(RAPReport *)self _context];
      v68 = [v67 reportedPlace];
      v69 = [v68 sourceURL];
      v70 = [v6 sourceInfo];
      [v70 setSourceUrl:v69];
    }
  }

  v71 = [(RAPReport *)self _context];
  [v6 setIsSprMap:{objc_msgSend(v71, "isSprMap")}];

  v72 = [v4 submissionParameters];
  v73 = [v72 commonContext];
  v74 = [v73 searchCommon];

  if (!v74)
  {
    v74 = objc_alloc_init(GEORPSearchCommonContext);
    v75 = [v4 submissionParameters];
    v76 = [v75 commonContext];
    [v76 setSearchCommon:v74];
  }

  v77 = [(RAPReport *)self _context];
  v78 = [v77 currentSearchString];
  [v74 setLastSearchString:v78];

  v79 = [(RAPReport *)self _context];
  v80 = [v79 currentUserTypedSearchString];
  [v74 setLastUserTypedSearchString:v80];

  v81 = [v4 submissionParameters];
  [v81 setFeedbackType];
}

- (id)_navigationSettings
{
  v2 = objc_opt_new();
  v3 = +[MNNavigationService sharedService];
  [v2 setDistanceUnits:0];
  if (qword_10195E210 != -1)
  {
    dispatch_once(&qword_10195E210, &stru_101632388);
  }

  v4 = [qword_10195E208 path];
  v5 = _CFPreferencesCopyAppValueWithContainer();

  if (v5)
  {
    if ((_GEOConfigHasValue() & 1) == 0)
    {
      [v5 BOOLValue];
      GEOConfigSetBOOL();
    }

    v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
    [v6 homeDirectory];
    _CFPreferencesSetValueWithContainer();

    BOOL = [v5 BOOLValue];
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  v8 = BOOL;

  [v2 setPauseSpokenAudio:v8];
  v9 = [v3 effectiveTransportType];
  if (!v9 || v9 == 3 || v9 == 2)
  {
    Integer = GEOConfigGetInteger();
  }

  else
  {
    Integer = 0;
  }

  [v2 setMuteSpeechOverride:{objc_msgSend(v3, "voiceGuidanceLevel") != Integer}];
  [v2 setSpeechEnabled:1];
  [v2 setMaxAlternateRouteCount:2];
  v11 = [v3 currentVoiceLanguage];
  [v2 setVoiceLanguage:v11];

  [v2 setShouldUseGuidanceEventManager:1];
  [v2 setUserPreferredTransportType:GEOGetUserPreferredTransportType()];

  return v2;
}

- (id)_auxiliaryControlsRecording
{
  v3 = [(RAPReport *)self initialQuestion];
  v4 = [v3 _alternateAuxiliaryControlsRecording];

  if (!v4)
  {
    v5 = [(RAPReport *)self _context];
    v4 = [v5 currentlyConnectedAuxiliaryControls];
  }

  return v4;
}

- (id)_directionsRecording
{
  v3 = [(RAPReport *)self initialQuestion];
  v4 = [v3 _alternateDirectionsRecording];

  if (!v4)
  {
    v5 = [(RAPReport *)self _context];
    v4 = [v5 directionsRecording];
  }

  return v4;
}

- (id)_placeContext
{
  v3 = [(RAPReport *)self initialQuestion];
  v4 = [v3 _alternatePlaceContext];

  if (!v4)
  {
    v4 = [(RAPReport *)self _context];
  }

  return v4;
}

- (id)_mapContext
{
  v3 = [(RAPReport *)self initialQuestion];
  v4 = [v3 _alternateMapViewContext];

  if (!v4)
  {
    v4 = [(RAPReport *)self _context];
  }

  return v4;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

- (id)newFeedbackRequestParameters
{
  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v4 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
  v5 = [(RAPReport *)self initialQuestion];
  [v5 _fillSubmissionParameters:v4];

  [v3 setSubmissionParameters:v4];
  return v3;
}

- (void)_update
{
  v3 = [(RAPReport *)self initialQuestion];
  v4 = [v3 _isRecursivelyComplete];

  if (self->_canCreateSubmittableProblem != v4)
  {
    self->_canCreateSubmittableProblem = v4;

    [(RAPReport *)self _invokeChangeHandlers];
  }
}

- (void)updateIfNeeded
{
  if (self->_willUpdate)
  {
    self->_willUpdate = 0;
    [(RAPReport *)self _update];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_willUpdate)
  {
    self->_willUpdate = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A33B88;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)removePhotosOfType:(int64_t)a3
{
  photosWithMetadata = self->_photosWithMetadata;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A33C54;
  v5[3] = &unk_101632278;
  v5[4] = a3;
  v4 = [NSPredicate predicateWithBlock:v5];
  [(NSMutableArray *)photosWithMetadata filterUsingPredicate:v4];
}

- (void)setInitialQuestion:(id)a3
{
  v5 = a3;
  if (!self->_initialQuestion)
  {
    v6 = v5;
    objc_storeStrong(&self->_initialQuestion, a3);
    [(RAPReport *)self _setNeedsUpdate];
    v5 = v6;
  }
}

- (RAPReport)initWithContext:(id)a3 submitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = RAPReport;
  v9 = [(RAPReport *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_submitter, a4);
    v11 = objc_opt_new();
    photosWithMetadata = v10->_photosWithMetadata;
    v10->_photosWithMetadata = v11;

    v13 = +[NSDate now];
    creationDate = v10->_creationDate;
    v10->_creationDate = v13;

    [(RAPReport *)v10 _setNeedsUpdate];
  }

  return v10;
}

- (RAPReport)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end