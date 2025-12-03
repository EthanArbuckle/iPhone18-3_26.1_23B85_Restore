@interface RAPReport
- (BOOL)_shouldEnableCommunityID;
- (GEORPUserPath)combinedUserPath;
- (RAPReport)init;
- (RAPReport)initWithContext:(id)context submitter:(id)submitter;
- (id)_auxiliaryControlsRecording;
- (id)_buildRequestParamsWithError:(id *)error;
- (id)_directionsRecording;
- (id)_mapContext;
- (id)_navigationSettings;
- (id)_placeContext;
- (id)_saveRAPInfoToMapsSyncWithRequestParams:(id)params;
- (id)devicePushToken;
- (id)newFeedbackRequestParameters;
- (void)_anonymizeDirectionsRequestsAndResponsesIfNeeded:(id)needed;
- (void)_anonymizeLocations:(id)locations traits:(id)traits;
- (void)_anonymizePhotos:(id)photos;
- (void)_anonymizeScreenshots:(id)screenshots;
- (void)_buildUserInfoWithRequestParams:(id)params CompletionHandler:(id)handler;
- (void)_invokeChangeHandlers;
- (void)_prepareRequestParametersForSubmission:(id)submission;
- (void)_setNeedsUpdate;
- (void)_update;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)removePhotosOfType:(int64_t)type;
- (void)setInitialQuestion:(id)question;
- (void)submitWithPrivacyRequestHandler:(id)handler willStartSubmitting:(id)submitting didFinishSubmitting:(id)finishSubmitting;
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

- (void)_anonymizeDirectionsRequestsAndResponsesIfNeeded:(id)needed
{
  neededCopy = needed;
  details = [neededCopy details];
  directionsFeedback = [details directionsFeedback];
  directionsContext = [directionsFeedback directionsContext];

  directionsRequests = [directionsContext directionsRequests];
  v8 = [directionsRequests count];

  if (v8)
  {
    if (sub_100742C84())
    {
      [directionsContext setDirectionsRequests:0];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      directionsWaypointPlaceInfos = [directionsContext directionsWaypointPlaceInfos];
      v10 = [directionsWaypointPlaceInfos countByEnumeratingWithState:&v48 objects:v55 count:16];
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
              objc_enumerationMutation(directionsWaypointPlaceInfos);
            }

            [*(*(&v48 + 1) + 8 * i) setPlaceRequest:0];
          }

          v11 = [directionsWaypointPlaceInfos countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v11);
      }
    }

    else
    {
      directionsWaypointPlaceInfos = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      directionsRequests2 = [directionsContext directionsRequests];
      v15 = [directionsRequests2 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
              objc_enumerationMutation(directionsRequests2);
            }

            v19 = [*(*(&v44 + 1) + 8 * j) copy];
            if ((sub_100742300() & 1) == 0)
            {
              [v19 clearDeviceHistoricalLocations];
            }

            [v19 clearSessionId];
            [directionsWaypointPlaceInfos addObject:v19];
          }

          v16 = [directionsRequests2 countByEnumeratingWithState:&v44 objects:v54 count:16];
        }

        while (v16);
      }

      [directionsContext setDirectionsRequests:directionsWaypointPlaceInfos];
    }
  }

  if (sub_100742FB0())
  {
    [directionsContext setDirectionsResponses:0];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    directionsWaypointPlaceInfos2 = [directionsContext directionsWaypointPlaceInfos];
    v21 = [directionsWaypointPlaceInfos2 countByEnumeratingWithState:&v40 objects:v53 count:16];
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
            objc_enumerationMutation(directionsWaypointPlaceInfos2);
          }

          [*(*(&v40 + 1) + 8 * k) setPlaceResponse:0];
        }

        v22 = [directionsWaypointPlaceInfos2 countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v22);
    }
  }

  details2 = [neededCopy details];
  transitPoiFeedback = [details2 transitPoiFeedback];

  directionsRequests3 = [transitPoiFeedback directionsRequests];
  v28 = [directionsRequests3 count];

  if (v28)
  {
    if (sub_100742C84())
    {
      [transitPoiFeedback setDirectionsRequests:0];
    }

    else
    {
      v29 = objc_opt_new();
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      directionsRequests4 = [transitPoiFeedback directionsRequests];
      v31 = [directionsRequests4 countByEnumeratingWithState:&v36 objects:v52 count:16];
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
              objc_enumerationMutation(directionsRequests4);
            }

            v35 = [*(*(&v36 + 1) + 8 * m) copy];
            if ((sub_100742300() & 1) == 0)
            {
              [v35 clearDeviceHistoricalLocations];
            }

            [v35 clearSessionId];
            [v29 addObject:v35];
          }

          v32 = [directionsRequests4 countByEnumeratingWithState:&v36 objects:v52 count:16];
        }

        while (v32);
      }

      [transitPoiFeedback setDirectionsRequests:v29];
    }
  }

  if (sub_100742FB0())
  {
    [transitPoiFeedback setDirectionsResponses:0];
  }
}

- (void)_anonymizeLocations:(id)locations traits:(id)traits
{
  locationsCopy = locations;
  traitsCopy = traits;
  [traitsCopy clearSessionId];
  [traitsCopy clearLocations];
  details = [locationsCopy details];
  directionsFeedback = [details directionsFeedback];
  directionsContext = [directionsFeedback directionsContext];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  directionsWaypointPlaceInfos = [directionsContext directionsWaypointPlaceInfos];
  v11 = [directionsWaypointPlaceInfos countByEnumeratingWithState:&v80 objects:v89 count:16];
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
          objc_enumerationMutation(directionsWaypointPlaceInfos);
        }

        [*(*(&v80 + 1) + 8 * v14) clearLocations];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [directionsWaypointPlaceInfos countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v12);
  }

  directionsRequests = [directionsContext directionsRequests];
  v16 = [directionsRequests count];

  if (v16)
  {
    v17 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    directionsRequests2 = [directionsContext directionsRequests];
    v19 = [directionsRequests2 countByEnumeratingWithState:&v76 objects:v88 count:16];
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
            objc_enumerationMutation(directionsRequests2);
          }

          v23 = [*(*(&v76 + 1) + 8 * v22) copy];
          [v23 clearLocations];
          [v23 setRequestTime:0.0];
          [v17 addObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [directionsRequests2 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v20);
    }

    [directionsContext setDirectionsRequests:v17];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  directionsResponses = [directionsContext directionsResponses];
  v25 = [directionsResponses countByEnumeratingWithState:&v72 objects:v87 count:16];
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
          objc_enumerationMutation(directionsResponses);
        }

        [*(*(&v72 + 1) + 8 * v28) clearLocations];
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [directionsResponses countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v26);
  }

  startWaypoint = [directionsContext startWaypoint];
  [startWaypoint setOrigin:0];

  startWaypoint2 = [directionsContext startWaypoint];
  [startWaypoint2 setAutocompleteEntry:0];

  startWaypoint3 = [directionsContext startWaypoint];
  [startWaypoint3 setSearchString:0];

  endWaypoint = [directionsContext endWaypoint];
  [endWaypoint setOrigin:0];

  endWaypoint2 = [directionsContext endWaypoint];
  [endWaypoint2 setAutocompleteEntry:0];

  endWaypoint3 = [directionsContext endWaypoint];
  [endWaypoint3 setSearchString:0];

  details2 = [locationsCopy details];
  transitPoiFeedback = [details2 transitPoiFeedback];

  directionsRequests3 = [transitPoiFeedback directionsRequests];
  v38 = [directionsRequests3 count];

  if (v38)
  {
    v39 = objc_opt_new();
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    directionsRequests4 = [transitPoiFeedback directionsRequests];
    v41 = [directionsRequests4 countByEnumeratingWithState:&v68 objects:v86 count:16];
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
            objc_enumerationMutation(directionsRequests4);
          }

          v45 = [*(*(&v68 + 1) + 8 * v44) copy];
          [v45 clearLocations];
          [v45 setRequestTime:0.0];
          [v39 addObject:v45];

          v44 = v44 + 1;
        }

        while (v42 != v44);
        v42 = [directionsRequests4 countByEnumeratingWithState:&v68 objects:v86 count:16];
      }

      while (v42);
    }

    [transitPoiFeedback setDirectionsRequests:v39];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  directionsResponses2 = [transitPoiFeedback directionsResponses];
  v47 = [directionsResponses2 countByEnumeratingWithState:&v64 objects:v85 count:16];
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
          objc_enumerationMutation(directionsResponses2);
        }

        [*(*(&v64 + 1) + 8 * v50) clearLocations];
        v50 = v50 + 1;
      }

      while (v48 != v50);
      v48 = [directionsResponses2 countByEnumeratingWithState:&v64 objects:v85 count:16];
    }

    while (v48);
  }

  commonContext = [locationsCopy commonContext];
  if ([commonContext pinType] == 4)
  {
    [commonContext setPinType:2];
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

  if ([locationsCopy isPersonalizedMapsFeedback])
  {
    [commonContext clearUserPaths];
    [commonContext addUserPath:1];
    [commonContext addUserPath:7];
    [commonContext addUserPath:10];
    [commonContext addUserPath:10];
    details3 = [locationsCopy details];
    addressPointFeedback = [details3 addressPointFeedback];
    [addressPointFeedback setPersonalizedMaps:0];
  }
}

- (void)_anonymizeScreenshots:(id)screenshots
{
  screenshotsCopy = screenshots;
  [(RAPReport *)self removePhotosOfType:0];
  [(RAPReport *)self removePhotosOfType:5];
  [(RAPReport *)self removePhotosOfType:2];
  [(RAPReport *)self removePhotosOfType:3];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  details = [screenshotsCopy details];
  directionsFeedback = [details directionsFeedback];
  directionsCorrections = [directionsFeedback directionsCorrections];
  instructionCorrections = [directionsCorrections instructionCorrections];

  v9 = [instructionCorrections countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(instructionCorrections);
        }

        [*(*(&v13 + 1) + 8 * v12) setRouteStepScreenshotImageId:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [instructionCorrections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_anonymizePhotos:(id)photos
{
  photosCopy = photos;
  [(RAPReport *)self removePhotosOfType:1];
  [(RAPReport *)self removePhotosOfType:4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  details = [photosCopy details];
  directionsFeedback = [details directionsFeedback];
  directionsCorrections = [directionsFeedback directionsCorrections];
  instructionCorrections = [directionsCorrections instructionCorrections];

  v9 = [instructionCorrections countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(instructionCorrections);
        }

        [*(*(&v13 + 1) + 8 * v12) setPhotoId:0];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [instructionCorrections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)_saveRAPInfoToMapsSyncWithRequestParams:(id)params
{
  paramsCopy = params;
  submissionParameters = [paramsCopy submissionParameters];
  type = [submissionParameters type];

  _directionsRecording = 0;
  v8 = type;
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
      _context = [(RAPReport *)self _context];
      reportedPlace = [_context reportedPlace];
      mapItem = [reportedPlace mapItem];
      _geoMapItem = [mapItem _geoMapItem];

      v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:_geoMapItem];

      goto LABEL_3;
    case 2u:
      submissionParameters2 = [paramsCopy submissionParameters];
      details = [submissionParameters2 details];
      hasPoiFeedback = [details hasPoiFeedback];

      if (!hasPoiFeedback)
      {
        goto LABEL_19;
      }

      submissionParameters3 = [paramsCopy submissionParameters];
      details2 = [submissionParameters3 details];
      poiFeedback = [details2 poiFeedback];
      goto LABEL_16;
    case 3u:
      submissionParameters4 = [paramsCopy submissionParameters];
      details3 = [submissionParameters4 details];
      hasTransitPoiFeedback = [details3 hasTransitPoiFeedback];

      if (!hasTransitPoiFeedback)
      {
        goto LABEL_19;
      }

      submissionParameters3 = [paramsCopy submissionParameters];
      details2 = [submissionParameters3 details];
      poiFeedback = [details2 transitPoiFeedback];
      goto LABEL_16;
    case 4u:
      submissionParameters5 = [paramsCopy submissionParameters];
      details4 = [submissionParameters5 details];
      hasAddressPointFeedback = [details4 hasAddressPointFeedback];

      if (!hasAddressPointFeedback)
      {
        goto LABEL_19;
      }

      submissionParameters3 = [paramsCopy submissionParameters];
      details2 = [submissionParameters3 details];
      poiFeedback = [details2 addressPointFeedback];
      goto LABEL_16;
    case 8u:
      _directionsRecording = [(RAPReport *)self _directionsRecording];
      goto LABEL_20;
    case 9u:
      goto LABEL_22;
    case 0xAu:
      submissionParameters6 = [paramsCopy submissionParameters];
      details5 = [submissionParameters6 details];
      hasPoiEnrichmentUpdate = [details5 hasPoiEnrichmentUpdate];

      if (!hasPoiEnrichmentUpdate)
      {
        goto LABEL_19;
      }

      submissionParameters3 = [paramsCopy submissionParameters];
      details2 = [submissionParameters3 details];
      poiFeedback = [details2 poiEnrichmentUpdate];
      goto LABEL_16;
    case 0xCu:
      submissionParameters7 = [paramsCopy submissionParameters];
      details6 = [submissionParameters7 details];
      curatedCollectionFeedback = [details6 curatedCollectionFeedback];
      hasCuratedCollectionContext = [curatedCollectionFeedback hasCuratedCollectionContext];

      if (!hasCuratedCollectionContext)
      {
        goto LABEL_19;
      }

      v46 = [MKMapItemIdentifier alloc];
      submissionParameters8 = [paramsCopy submissionParameters];
      details7 = [submissionParameters8 details];
      curatedCollectionFeedback2 = [details7 curatedCollectionFeedback];
      curatedCollectionContext = [curatedCollectionFeedback2 curatedCollectionContext];
      curatedCollectionMuid = [curatedCollectionContext curatedCollectionMuid];
      v52 = [v46 initWithMUID:curatedCollectionMuid resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

      v9 = [NSString stringWithFormat:@"%@", v52];

      _directionsRecording = 0;
      goto LABEL_21;
    case 0xDu:
      submissionParameters9 = [paramsCopy submissionParameters];
      details8 = [submissionParameters9 details];
      hasPoiImageFeedback = [details8 hasPoiImageFeedback];

      if (hasPoiImageFeedback)
      {
        submissionParameters10 = [paramsCopy submissionParameters];
        details9 = [submissionParameters10 details];
        poiImageFeedback = [details9 poiImageFeedback];
        poiImageContext = [poiImageFeedback poiImageContext];
        place = [poiImageContext place];
        geoMapItem = [place geoMapItem];

        v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:geoMapItem];

LABEL_3:
        _directionsRecording = 0;
        v9 = 0;
      }

      else
      {
LABEL_19:
        _directionsRecording = 0;
LABEL_20:
        v9 = 0;
LABEL_21:
        v10 = 0;
      }

LABEL_22:
      v53 = objc_alloc_init(RapUserProfileRecord);
      [(RapUserProfileRecord *)v53 setMapItemStorage:v10];
      [(RapUserProfileRecord *)v53 setCuratedCollectionIdentifier:v9];
      [(RapUserProfileRecord *)v53 setDirections:_directionsRecording];
      [(RapUserProfileRecord *)v53 setMuninViewState:0];

      return v53;
    case 0x10u:
      submissionParameters3 = [paramsCopy submissionParameters];
      details2 = [submissionParameters3 details];
      poiFeedback = [details2 localityFeedback];
LABEL_16:
      v39 = poiFeedback;
      place2 = [poiFeedback place];
      geoMapItem2 = [place2 geoMapItem];

      v10 = [GEOMapItemStorage mapItemStorageForGEOMapItem:geoMapItem2];

      goto LABEL_3;
    default:
      v9 = 0;
      v10 = 0;
      goto LABEL_22;
  }
}

- (id)_buildRequestParamsWithError:(id *)error
{
  newFeedbackRequestParameters = [(RAPReport *)self newFeedbackRequestParameters];
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
    countryCode = [v15 countryCode];
    v17 = [v14 objectForKey:countryCode];

    if (v17)
    {
      bOOLValue = [v17 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
LABEL_11:
        submissionParameters = [newFeedbackRequestParameters submissionParameters];
        if ([submissionParameters isDirectionsFeedback])
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
            v74 = newFeedbackRequestParameters;
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
            countryCode2 = [v39 countryCode];
            v41 = [v38 objectForKey:countryCode2];

            if (v41)
            {
              bOOLValue2 = [v41 BOOLValue];

              newFeedbackRequestParameters = v74;
              if (bOOLValue2)
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

              newFeedbackRequestParameters = v74;
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

        submissionParameters2 = [newFeedbackRequestParameters submissionParameters];
        if ([submissionParameters2 isTransitFeedback])
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
            v75 = newFeedbackRequestParameters;
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
            countryCode3 = [v53 countryCode];
            v55 = [v52 objectForKey:countryCode3];

            if (v55)
            {
              bOOLValue3 = [v55 BOOLValue];

              newFeedbackRequestParameters = v75;
              if (bOOLValue3)
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

              newFeedbackRequestParameters = v75;
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

        [(RAPReport *)self _prepareRequestParametersForSubmission:newFeedbackRequestParameters];
        v28 = newFeedbackRequestParameters;
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

  submissionParameters3 = [newFeedbackRequestParameters submissionParameters];
  isPersonalizedMapsFeedback = [submissionParameters3 isPersonalizedMapsFeedback];

  if (!isPersonalizedMapsFeedback)
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
  *error = v60;
LABEL_39:

  return v28;
}

- (void)_buildUserInfoWithRequestParams:(id)params CompletionHandler:(id)handler
{
  paramsCopy = params;
  handlerCopy = handler;
  if ([(RAPReport *)self _shouldEnableCommunityID])
  {
    v8 = +[_TtC4Maps30ServerEvaluationStatusMapsSync shared];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100A31358;
    v13[3] = &unk_101632368;
    v14 = paramsCopy;
    selfCopy = self;
    v16 = handlerCopy;
    [v8 fetchRAPStatusWithCompletion:v13];
  }

  else
  {
    if (sub_10074262C())
    {
      devicePushToken = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      devicePushToken = [(RAPReport *)self devicePushToken];
      if (sub_10079AE64() == 1)
      {
        v10 = sub_1007412FC();
      }

      else
      {
        v10 = 0;
      }

      preferredEmailAddress = [(RAPReport *)self preferredEmailAddress];
      v11 = [GEORPFeedbackUserInfo userCredentialsForContactBackEmailAddress:v10 userEnteredEmailAddress:preferredEmailAddress pushToken:devicePushToken];
    }

    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (BOOL)_shouldEnableCommunityID
{
  IsEnabled_RAPCommunityID = MapsFeature_IsEnabled_RAPCommunityID();
  if (IsEnabled_RAPCommunityID)
  {
    initialQuestion = [(RAPReport *)self initialQuestion];
    isAnonymous = [initialQuestion isAnonymous];

    LOBYTE(IsEnabled_RAPCommunityID) = isAnonymous;
  }

  return IsEnabled_RAPCommunityID;
}

- (void)submitWithPrivacyRequestHandler:(id)handler willStartSubmitting:(id)submitting didFinishSubmitting:(id)finishSubmitting
{
  handlerCopy = handler;
  submittingCopy = submitting;
  finishSubmittingCopy = finishSubmitting;
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
    v21 = submittingCopy;
    v13 = v11;
    v22 = v13;
    v23 = finishSubmittingCopy;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A31E34;
    v15[3] = &unk_101632318;
    v15[4] = self;
    v16 = objc_retainBlock(v20);
    v19 = v12;
    v17 = handlerCopy;
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

- (void)_prepareRequestParametersForSubmission:(id)submission
{
  submissionCopy = submission;
  submissionParameters = [submissionCopy submissionParameters];
  commonContext = [submissionParameters commonContext];

  if (!commonContext)
  {
    commonContext = objc_opt_new();
    submissionParameters2 = [submissionCopy submissionParameters];
    [submissionParameters2 setCommonContext:commonContext];
  }

  combinedUserPath = [commonContext combinedUserPath];

  combinedUserPath2 = [(RAPReport *)self combinedUserPath];
  webPaths = combinedUserPath2;
  if (combinedUserPath)
  {
    nativePathsCount = [combinedUserPath2 nativePathsCount];

    if (nativePathsCount)
    {
      v12 = 0;
      do
      {
        combinedUserPath3 = [(RAPReport *)self combinedUserPath];
        v14 = [combinedUserPath3 nativePathAtIndex:v12];

        combinedUserPath4 = [commonContext combinedUserPath];
        [combinedUserPath4 addNativePath:v14];

        ++v12;
        combinedUserPath5 = [(RAPReport *)self combinedUserPath];
        nativePathsCount2 = [combinedUserPath5 nativePathsCount];
      }

      while (v12 < nativePathsCount2);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    combinedUserPath6 = [(RAPReport *)self combinedUserPath];
    webPaths = [combinedUserPath6 webPaths];

    v19 = [webPaths countByEnumeratingWithState:&v82 objects:v86 count:16];
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
            objc_enumerationMutation(webPaths);
          }

          v23 = *(*(&v82 + 1) + 8 * i);
          combinedUserPath7 = [commonContext combinedUserPath];
          [combinedUserPath7 addWebPath:v23];
        }

        v20 = [webPaths countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v20);
    }
  }

  else
  {
    [commonContext setCombinedUserPath:combinedUserPath2];
  }

  v25 = +[NSTimeZone localTimeZone];
  [commonContext setDeviceGmtOffset:{objc_msgSend(v25, "secondsFromGMT")}];

  _context = [(RAPReport *)self _context];
  reportedPlace = [_context reportedPlace];
  mapItem = [reportedPlace mapItem];
  _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

  if (_isMapItemTypeBrand)
  {
    submissionParameters3 = [submissionCopy submissionParameters];
    commonContext2 = [submissionParameters3 commonContext];
    [commonContext2 setPinType:8];
  }

  _auxiliaryControlsRecording = [(RAPReport *)self _auxiliaryControlsRecording];
  auxiliaryControls = [_auxiliaryControlsRecording auxiliaryControls];
  v34 = [auxiliaryControls mutableCopy];
  [commonContext setAuxiliaryControls:v34];

  if ([_auxiliaryControlsRecording hasOriginatingAuxiliaryControlIndex])
  {
    [commonContext setOriginatingAuxiliaryControlIndex:{objc_msgSend(_auxiliaryControlsRecording, "originatingAuxiliaryControlIndex")}];
  }

  v35 = objc_alloc_init(GEORPMapLocation);
  [commonContext setMapLocation:v35];
  _mapContext = [(RAPReport *)self _mapContext];
  mapSnapshotImageData = [_mapContext mapSnapshotImageData];

  if (mapSnapshotImageData)
  {
    v38 = [RAPPhoto alloc];
    v39 = [UIImage alloc];
    mapSnapshotImageData2 = [_mapContext mapSnapshotImageData];
    v41 = [v39 initWithData:mapSnapshotImageData2];
    v42 = [(RAPPhoto *)v38 initWithPhoto:v41 date:0 location:0];

    v43 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v42 photoType:0];
    [(RAPReport *)self addPhotoWithMetadata:v43];
  }

  [(RAPQuestion *)self->_initialQuestion _prepareForSubmission];
  [_mapContext mapZoomLevel];
  *&v44 = v44;
  [v35 setZoomLevel:v44];
  mapType = [_mapContext mapType];
  mapRegion = [_mapContext mapRegion];
  [v35 _setMapType:mapType region:mapRegion];

  mapVisibleTileSets = [_mapContext mapVisibleTileSets];
  v48 = [mapVisibleTileSets mutableCopy];
  [commonContext setVisibleTileSets:v48];

  _navigationSettings = [(RAPReport *)self _navigationSettings];
  [commonContext setNavigationSettings:_navigationSettings];

  [commonContext setClientCreatedAt:CFAbsoluteTimeGetCurrent()];
  _context2 = [(RAPReport *)self _context];
  reportedPlace2 = [_context2 reportedPlace];

  if (reportedPlace2)
  {
    _context3 = [(RAPReport *)self _context];
    reportedPlace3 = [_context3 reportedPlace];
    source = [reportedPlace3 source];

    if (source <= 9)
    {
      [commonContext setPinType:dword_101215098[source]];
    }
  }

  _context4 = [(RAPReport *)self _context];
  reportedPlace4 = [_context4 reportedPlace];
  mapItem2 = [reportedPlace4 mapItem];
  _isMapItemTypeBrand2 = [mapItem2 _isMapItemTypeBrand];

  if (_isMapItemTypeBrand2)
  {
    [commonContext setPinType:8];
  }

  if ([commonContext pinType] == 6)
  {
    _context5 = [(RAPReport *)self _context];
    reportedPlace5 = [_context5 reportedPlace];

    if (reportedPlace5)
    {
      sourceInfo = [commonContext sourceInfo];

      if (!sourceInfo)
      {
        v62 = objc_alloc_init(GEORPSourceInfo);
        [commonContext setSourceInfo:v62];
      }

      _context6 = [(RAPReport *)self _context];
      reportedPlace6 = [_context6 reportedPlace];
      sourceApplication = [reportedPlace6 sourceApplication];
      sourceInfo2 = [commonContext sourceInfo];
      [sourceInfo2 setSourceApplication:sourceApplication];

      _context7 = [(RAPReport *)self _context];
      reportedPlace7 = [_context7 reportedPlace];
      sourceURL = [reportedPlace7 sourceURL];
      sourceInfo3 = [commonContext sourceInfo];
      [sourceInfo3 setSourceUrl:sourceURL];
    }
  }

  _context8 = [(RAPReport *)self _context];
  [commonContext setIsSprMap:{objc_msgSend(_context8, "isSprMap")}];

  submissionParameters4 = [submissionCopy submissionParameters];
  commonContext3 = [submissionParameters4 commonContext];
  searchCommon = [commonContext3 searchCommon];

  if (!searchCommon)
  {
    searchCommon = objc_alloc_init(GEORPSearchCommonContext);
    submissionParameters5 = [submissionCopy submissionParameters];
    commonContext4 = [submissionParameters5 commonContext];
    [commonContext4 setSearchCommon:searchCommon];
  }

  _context9 = [(RAPReport *)self _context];
  currentSearchString = [_context9 currentSearchString];
  [searchCommon setLastSearchString:currentSearchString];

  _context10 = [(RAPReport *)self _context];
  currentUserTypedSearchString = [_context10 currentUserTypedSearchString];
  [searchCommon setLastUserTypedSearchString:currentUserTypedSearchString];

  submissionParameters6 = [submissionCopy submissionParameters];
  [submissionParameters6 setFeedbackType];
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

  path = [qword_10195E208 path];
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
  effectiveTransportType = [v3 effectiveTransportType];
  if (!effectiveTransportType || effectiveTransportType == 3 || effectiveTransportType == 2)
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
  currentVoiceLanguage = [v3 currentVoiceLanguage];
  [v2 setVoiceLanguage:currentVoiceLanguage];

  [v2 setShouldUseGuidanceEventManager:1];
  [v2 setUserPreferredTransportType:GEOGetUserPreferredTransportType()];

  return v2;
}

- (id)_auxiliaryControlsRecording
{
  initialQuestion = [(RAPReport *)self initialQuestion];
  _alternateAuxiliaryControlsRecording = [initialQuestion _alternateAuxiliaryControlsRecording];

  if (!_alternateAuxiliaryControlsRecording)
  {
    _context = [(RAPReport *)self _context];
    _alternateAuxiliaryControlsRecording = [_context currentlyConnectedAuxiliaryControls];
  }

  return _alternateAuxiliaryControlsRecording;
}

- (id)_directionsRecording
{
  initialQuestion = [(RAPReport *)self initialQuestion];
  _alternateDirectionsRecording = [initialQuestion _alternateDirectionsRecording];

  if (!_alternateDirectionsRecording)
  {
    _context = [(RAPReport *)self _context];
    _alternateDirectionsRecording = [_context directionsRecording];
  }

  return _alternateDirectionsRecording;
}

- (id)_placeContext
{
  initialQuestion = [(RAPReport *)self initialQuestion];
  _alternatePlaceContext = [initialQuestion _alternatePlaceContext];

  if (!_alternatePlaceContext)
  {
    _alternatePlaceContext = [(RAPReport *)self _context];
  }

  return _alternatePlaceContext;
}

- (id)_mapContext
{
  initialQuestion = [(RAPReport *)self initialQuestion];
  _alternateMapViewContext = [initialQuestion _alternateMapViewContext];

  if (!_alternateMapViewContext)
  {
    _alternateMapViewContext = [(RAPReport *)self _context];
  }

  return _alternateMapViewContext;
}

- (void)_invokeChangeHandlers
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

- (id)newFeedbackRequestParameters
{
  v3 = objc_alloc_init(GEORPFeedbackRequestParameters);
  v4 = objc_alloc_init(GEORPFeedbackSubmissionParameters);
  initialQuestion = [(RAPReport *)self initialQuestion];
  [initialQuestion _fillSubmissionParameters:v4];

  [v3 setSubmissionParameters:v4];
  return v3;
}

- (void)_update
{
  initialQuestion = [(RAPReport *)self initialQuestion];
  _isRecursivelyComplete = [initialQuestion _isRecursivelyComplete];

  if (self->_canCreateSubmittableProblem != _isRecursivelyComplete)
  {
    self->_canCreateSubmittableProblem = _isRecursivelyComplete;

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

- (void)removePhotosOfType:(int64_t)type
{
  photosWithMetadata = self->_photosWithMetadata;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A33C54;
  v5[3] = &unk_101632278;
  v5[4] = type;
  v4 = [NSPredicate predicateWithBlock:v5];
  [(NSMutableArray *)photosWithMetadata filterUsingPredicate:v4];
}

- (void)setInitialQuestion:(id)question
{
  questionCopy = question;
  if (!self->_initialQuestion)
  {
    v6 = questionCopy;
    objc_storeStrong(&self->_initialQuestion, question);
    [(RAPReport *)self _setNeedsUpdate];
    questionCopy = v6;
  }
}

- (RAPReport)initWithContext:(id)context submitter:(id)submitter
{
  contextCopy = context;
  submitterCopy = submitter;
  v16.receiver = self;
  v16.super_class = RAPReport;
  v9 = [(RAPReport *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_submitter, submitter);
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