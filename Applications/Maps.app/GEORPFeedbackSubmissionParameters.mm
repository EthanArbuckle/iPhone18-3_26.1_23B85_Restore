@interface GEORPFeedbackSubmissionParameters
- (BOOL)isPersonalizedMapsFeedback;
- (id)stringForFeedbackType:(int)type;
- (unint64_t)logDiscardTriggerType;
- (void)addDirectionsContextWithReport:(id)report recording:(id)recording;
- (void)appendImageIdToPoiEnrichment:(id)enrichment withPhotoMetadata:(id)metadata;
- (void)appendServerImageId:(id)id withMatchingPhoto:(id)photo;
- (void)insertDirectionStepCommentId:(id)id withMatchingPhoto:(id)photo;
- (void)insertDirectionStepImageId:(id)id withMatchingPhoto:(id)photo;
- (void)insertImageIdIntoCommonCorrections:(id)corrections;
- (void)insertImageIdIntoLookAroundContext:(id)context;
- (void)insertImageIdIntoMapViewContext:(id)context;
- (void)insertOverviewDirectionsImageId:(id)id;
- (void)setFeedbackType;
- (void)updatePOIEnrichmentWithCloudKitReceipts:(id)receipts;
@end

@implementation GEORPFeedbackSubmissionParameters

- (BOOL)isPersonalizedMapsFeedback
{
  if ([(GEORPFeedbackSubmissionParameters *)self type]!= 4)
  {
    return 0;
  }

  details = [(GEORPFeedbackSubmissionParameters *)self details];
  addressPointFeedback = [details addressPointFeedback];
  hasPersonalizedMaps = [addressPointFeedback hasPersonalizedMaps];

  return hasPersonalizedMaps;
}

- (void)insertImageIdIntoLookAroundContext:(id)context
{
  contextCopy = context;
  details = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!details)
  {
    v6 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v6];
  }

  details2 = [(GEORPFeedbackSubmissionParameters *)self details];
  groundViewFeedback = [details2 groundViewFeedback];

  if (!groundViewFeedback)
  {
    v9 = objc_alloc_init(GEORPGroundViewFeedback);
    details3 = [(GEORPFeedbackSubmissionParameters *)self details];
    [details3 setGroundViewFeedback:v9];
  }

  details4 = [(GEORPFeedbackSubmissionParameters *)self details];
  groundViewFeedback2 = [details4 groundViewFeedback];
  groundViewContext = [groundViewFeedback2 groundViewContext];

  if (!groundViewContext)
  {
    v14 = objc_alloc_init(GEORPGroundViewFeedbackContext);
    details5 = [(GEORPFeedbackSubmissionParameters *)self details];
    groundViewFeedback3 = [details5 groundViewFeedback];
    [groundViewFeedback3 setGroundViewContext:v14];
  }

  details6 = [(GEORPFeedbackSubmissionParameters *)self details];
  groundViewFeedback4 = [details6 groundViewFeedback];
  groundViewContext2 = [groundViewFeedback4 groundViewContext];
  [groundViewContext2 setImageId:contextCopy];
}

- (void)insertImageIdIntoCommonCorrections:(id)corrections
{
  correctionsCopy = corrections;
  commonCorrections = [(GEORPFeedbackSubmissionParameters *)self commonCorrections];

  if (!commonCorrections)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonCorrections);
    [(GEORPFeedbackSubmissionParameters *)self setCommonCorrections:v6];
  }

  commonCorrections2 = [(GEORPFeedbackSubmissionParameters *)self commonCorrections];
  [commonCorrections2 addImageId:correctionsCopy];
}

- (void)insertImageIdIntoMapViewContext:(id)context
{
  contextCopy = context;
  commonContext = [(GEORPFeedbackSubmissionParameters *)self commonContext];

  if (!commonContext)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [(GEORPFeedbackSubmissionParameters *)self setCommonContext:v6];
  }

  commonContext2 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
  mapLocation = [commonContext2 mapLocation];

  if (!mapLocation)
  {
    v9 = objc_alloc_init(GEORPMapLocation);
    commonContext3 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
    [commonContext3 setMapLocation:v9];
  }

  commonContext4 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
  mapLocation2 = [commonContext4 mapLocation];
  [mapLocation2 setMapScreenshotId:contextCopy];
}

- (void)insertOverviewDirectionsImageId:(id)id
{
  idCopy = id;
  details = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!details)
  {
    v5 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v5];
  }

  details2 = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback = [details2 directionsFeedback];

  if (!directionsFeedback)
  {
    directionsFeedback = objc_alloc_init(GEORPDirectionsFeedback);
    details3 = [(GEORPFeedbackSubmissionParameters *)self details];
    [details3 setDirectionsFeedback:directionsFeedback];
  }

  details4 = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback2 = [details4 directionsFeedback];
  directionsCorrections = [directionsFeedback2 directionsCorrections];

  if (!directionsCorrections)
  {
    directionsCorrections = objc_alloc_init(GEORPDirectionsCorrections);
    details5 = [(GEORPFeedbackSubmissionParameters *)self details];
    directionsFeedback3 = [details5 directionsFeedback];
    [directionsFeedback3 setDirectionsCorrections:directionsCorrections];
  }

  [directionsCorrections setOverviewScreenshotImageId:idCopy];
}

- (void)insertDirectionStepCommentId:(id)id withMatchingPhoto:(id)photo
{
  idCopy = id;
  photoCopy = photo;
  details = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback = [details directionsFeedback];
  directionsCorrections = [directionsFeedback directionsCorrections];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = directionsCorrections;
  instructionCorrections = [directionsCorrections instructionCorrections];
  v12 = [instructionCorrections countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = idCopy;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(instructionCorrections);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        photoId = [v16 photoId];
        photoMetadata = [photoCopy photoMetadata];
        clientImageUuid = [photoMetadata clientImageUuid];
        v20 = [photoId isEqualToString:clientImageUuid];

        if (v20)
        {
          v21 = v16;
          idCopy = v22;
          [v21 setPhotoId:v22];
          goto LABEL_11;
        }
      }

      v13 = [instructionCorrections countByEnumeratingWithState:&v24 objects:v28 count:16];
      idCopy = v22;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)insertDirectionStepImageId:(id)id withMatchingPhoto:(id)photo
{
  idCopy = id;
  photoCopy = photo;
  details = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback = [details directionsFeedback];
  directionsCorrections = [directionsFeedback directionsCorrections];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = directionsCorrections;
  instructionCorrections = [directionsCorrections instructionCorrections];
  v12 = [instructionCorrections countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = idCopy;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(instructionCorrections);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        routeStepScreenshotImageId = [v16 routeStepScreenshotImageId];
        photoMetadata = [photoCopy photoMetadata];
        clientImageUuid = [photoMetadata clientImageUuid];
        v20 = [routeStepScreenshotImageId isEqualToString:clientImageUuid];

        if (v20)
        {
          v21 = v16;
          idCopy = v22;
          [v21 setRouteStepScreenshotImageId:v22];
          goto LABEL_11;
        }
      }

      v13 = [instructionCorrections countByEnumeratingWithState:&v24 objects:v28 count:16];
      idCopy = v22;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (unint64_t)logDiscardTriggerType
{
  v2 = [(GEORPFeedbackSubmissionParameters *)self type]- 2;
  if (v2 > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_101213458[v2];
  }
}

- (id)stringForFeedbackType:(int)type
{
  if (type <= 0x15)
  {
    v4 = *(&off_101629CE8 + type);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (void)setFeedbackType
{
  if ([(GEORPFeedbackSubmissionParameters *)self hasDetails])
  {
    details = [(GEORPFeedbackSubmissionParameters *)self details];
    hasPoiFeedback = [details hasPoiFeedback];

    if (hasPoiFeedback)
    {
      v5 = 2;
    }

    else
    {
      details2 = [(GEORPFeedbackSubmissionParameters *)self details];
      hasTransitPoiFeedback = [details2 hasTransitPoiFeedback];

      if (hasTransitPoiFeedback)
      {
        v5 = 3;
      }

      else
      {
        details3 = [(GEORPFeedbackSubmissionParameters *)self details];
        hasTileFeedback = [details3 hasTileFeedback];

        if (hasTileFeedback)
        {
          v5 = 5;
        }

        else
        {
          details4 = [(GEORPFeedbackSubmissionParameters *)self details];
          hasSearchFeedback = [details4 hasSearchFeedback];

          if (hasSearchFeedback)
          {
            v5 = 6;
          }

          else
          {
            details5 = [(GEORPFeedbackSubmissionParameters *)self details];
            hasDirectionsFeedback = [details5 hasDirectionsFeedback];

            if (hasDirectionsFeedback)
            {
              v5 = 8;
            }

            else
            {
              details6 = [(GEORPFeedbackSubmissionParameters *)self details];
              hasAddressPointFeedback = [details6 hasAddressPointFeedback];

              if (hasAddressPointFeedback)
              {
                v5 = 4;
              }

              else
              {
                details7 = [(GEORPFeedbackSubmissionParameters *)self details];
                hasGroundViewFeedback = [details7 hasGroundViewFeedback];

                if (hasGroundViewFeedback)
                {
                  v5 = 9;
                }

                else
                {
                  details8 = [(GEORPFeedbackSubmissionParameters *)self details];
                  hasMerchantLookupFeedback = [details8 hasMerchantLookupFeedback];

                  if (hasMerchantLookupFeedback)
                  {
                    v5 = 7;
                  }

                  else
                  {
                    details9 = [(GEORPFeedbackSubmissionParameters *)self details];
                    hasPoiEnrichmentUpdate = [details9 hasPoiEnrichmentUpdate];

                    if (hasPoiEnrichmentUpdate)
                    {
                      v5 = 10;
                    }

                    else
                    {
                      details10 = [(GEORPFeedbackSubmissionParameters *)self details];
                      hasIncidentFeedback = [details10 hasIncidentFeedback];

                      if (hasIncidentFeedback)
                      {
                        v5 = 11;
                      }

                      else
                      {
                        details11 = [(GEORPFeedbackSubmissionParameters *)self details];
                        hasPoiImageFeedback = [details11 hasPoiImageFeedback];

                        if (hasPoiImageFeedback)
                        {
                          v5 = 13;
                        }

                        else
                        {
                          details12 = [(GEORPFeedbackSubmissionParameters *)self details];
                          hasCuratedCollectionFeedback = [details12 hasCuratedCollectionFeedback];

                          if (hasCuratedCollectionFeedback)
                          {
                            v5 = 12;
                          }

                          else
                          {
                            details13 = [(GEORPFeedbackSubmissionParameters *)self details];
                            hasAddMapFeedback = [details13 hasAddMapFeedback];

                            if (hasAddMapFeedback)
                            {
                              v5 = 15;
                            }

                            else
                            {
                              details14 = [(GEORPFeedbackSubmissionParameters *)self details];
                              hasStreetFeedback = [details14 hasStreetFeedback];

                              if (hasStreetFeedback)
                              {
                                v5 = 17;
                              }

                              else
                              {
                                details15 = [(GEORPFeedbackSubmissionParameters *)self details];
                                hasLocalityFeedback = [details15 hasLocalityFeedback];

                                if (hasLocalityFeedback)
                                {
                                  v5 = 16;
                                }

                                else
                                {
                                  details16 = [(GEORPFeedbackSubmissionParameters *)self details];
                                  hasRapUserResponseFeedback = [details16 hasRapUserResponseFeedback];

                                  if (hasRapUserResponseFeedback)
                                  {
                                    v5 = 21;
                                  }

                                  else
                                  {
                                    v5 = 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 1;
  }

  [(GEORPFeedbackSubmissionParameters *)self setType:v5];
}

- (void)addDirectionsContextWithReport:(id)report recording:(id)recording
{
  reportCopy = report;
  recordingCopy = recording;
  details = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!details)
  {
    v9 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v9];
  }

  details2 = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback = [details2 directionsFeedback];

  if (!directionsFeedback)
  {
    v12 = objc_alloc_init(GEORPDirectionsFeedback);
    details3 = [(GEORPFeedbackSubmissionParameters *)self details];
    [details3 setDirectionsFeedback:v12];
  }

  details4 = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback2 = [details4 directionsFeedback];
  directionsContext = [directionsFeedback2 directionsContext];

  if (!directionsContext)
  {
    directionsContext = objc_alloc_init(GEORPDirectionsFeedbackContext);
    details5 = [(GEORPFeedbackSubmissionParameters *)self details];
    directionsFeedback3 = [details5 directionsFeedback];
    [directionsFeedback3 setDirectionsContext:directionsContext];
  }

  directionsRequests = [recordingCopy directionsRequests];
  [directionsContext setDirectionsRequests:directionsRequests];

  directionsResponses = [recordingCopy directionsResponses];
  [directionsContext setDirectionsResponses:directionsResponses];

  details6 = [(GEORPFeedbackSubmissionParameters *)self details];
  directionsFeedback4 = [details6 directionsFeedback];
  directionsCorrections = [directionsFeedback4 directionsCorrections];

  if (!directionsCorrections)
  {
    directionsCorrections = objc_alloc_init(GEORPDirectionsCorrections);
    details7 = [(GEORPFeedbackSubmissionParameters *)self details];
    directionsFeedback5 = [details7 directionsFeedback];
    [directionsFeedback5 setDirectionsCorrections:directionsCorrections];
  }

  directionsResponseID = [recordingCopy directionsResponseID];
  [directionsCorrections setDirectionsResponseId:directionsResponseID];

  v27 = [RAPPhoto alloc];
  overviewScreenshotImageData = [recordingCopy overviewScreenshotImageData];
  v29 = [UIImage imageWithData:overviewScreenshotImageData];
  v30 = +[NSDate date];
  v31 = [(RAPPhoto *)v27 initWithPhoto:v29 date:v30 location:0];

  photo = [(RAPPhoto *)v31 photo];

  if (photo)
  {
    v33 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v31 photoType:2];
    [reportCopy addPhotoWithMetadata:v33];
  }

  v58 = v31;
  v59 = reportCopy;
  v34 = [GEORPPlaceInfo alloc];
  startWaypointCorrectedSearchTemplate = [recordingCopy startWaypointCorrectedSearchTemplate];
  v36 = [v34 initWithCorrectedSearch:startWaypointCorrectedSearchTemplate];

  [v36 clearSessionId];
  v37 = objc_alloc_init(GEORPPlaceRequestResponse);
  placeRequest = [v36 placeRequest];
  [v37 setPlaceRequest:placeRequest];

  placeResponse = [v36 placeResponse];
  [v37 setPlaceResponse:placeResponse];

  v40 = [GEORPPlaceInfo alloc];
  endWaypointCorrectedSearchTemplate = [recordingCopy endWaypointCorrectedSearchTemplate];
  v42 = [v40 initWithCorrectedSearch:endWaypointCorrectedSearchTemplate];

  [v42 clearSessionId];
  v43 = objc_alloc_init(GEORPPlaceRequestResponse);
  placeRequest2 = [v42 placeRequest];
  [v43 setPlaceRequest:placeRequest2];

  placeResponse2 = [v42 placeResponse];
  [v43 setPlaceResponse:placeResponse2];

  v60[0] = v37;
  v60[1] = v43;
  v46 = [NSArray arrayWithObjects:v60 count:2];
  v47 = [v46 mutableCopy];
  [directionsContext setDirectionsWaypointPlaceInfos:v47];

  startWaypoint = [recordingCopy startWaypoint];
  if (startWaypoint)
  {
    v49 = [[GEORPUserSearchInput alloc] initWithRAPUserSearchInput:startWaypoint];
    [directionsContext setStartWaypoint:v49];
  }

  endWaypoint = [recordingCopy endWaypoint];
  if (endWaypoint)
  {
    v51 = [[GEORPUserSearchInput alloc] initWithRAPUserSearchInput:endWaypoint];
    [directionsContext setEndWaypoint:v51];
  }

  if (recordingCopy && [recordingCopy hasSelectedDirectionsResponseIndex] && objc_msgSend(recordingCopy, "hasSelectedSuggestedRouteIndexInDirectionsResponse") && !objc_msgSend(directionsCorrections, "problematicRouteIndexsCount"))
  {
    v52 = objc_alloc_init(GEORPSuggestedRouteIndex);
    [v52 setDirectionsResponseIndex:{objc_msgSend(recordingCopy, "selectedDirectionsResponseIndex")}];
    v57 = v52;
    [v52 setDirectionsResponseSuggestedRoutesIndex:{objc_msgSend(recordingCopy, "selectedSuggestedRouteIndexInDirectionsResponse")}];
    directionsResponses2 = [recordingCopy directionsResponses];
    v53 = [directionsResponses2 objectAtIndexedSubscript:{objc_msgSend(recordingCopy, "selectedDirectionsResponseIndex")}];

    v56 = v53;
    suggestedRoutes = [v53 suggestedRoutes];

    if (suggestedRoutes)
    {
      [v57 setClusteredRouteRideSelections:objc_msgSend(recordingCopy count:{"clusteredRouteRideSelections"), objc_msgSend(recordingCopy, "clusteredRouteRideSelectionsCount")}];
    }

    [directionsCorrections addProblematicRouteIndex:v57];
  }
}

- (void)updatePOIEnrichmentWithCloudKitReceipts:(id)receipts
{
  receiptsCopy = receipts;
  details = [(GEORPFeedbackSubmissionParameters *)self details];
  poiEnrichmentUpdate = [details poiEnrichmentUpdate];

  if (poiEnrichmentUpdate)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = receiptsCopy;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          comparisonIdentifier = [v13 comparisonIdentifier];
          [v7 setObject:v13 forKey:comparisonIdentifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    details2 = [(GEORPFeedbackSubmissionParameters *)self details];
    poiEnrichmentUpdate2 = [details2 poiEnrichmentUpdate];
    imageUpdates = [poiEnrichmentUpdate2 imageUpdates];

    v18 = [imageUpdates countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(imageUpdates);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          if ([v22 action] == 1)
          {
            comparisonIdentifier2 = [v22 comparisonIdentifier];
            v24 = [v7 objectForKey:comparisonIdentifier2];

            uploadResponse = [v24 uploadResponse];
            [v22 setUploadResponse:uploadResponse];
          }
        }

        v19 = [imageUpdates countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v19);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: enrichment != ((void *)0)", buf, 2u);
  }
}

- (void)appendImageIdToPoiEnrichment:(id)enrichment withPhotoMetadata:(id)metadata
{
  enrichmentCopy = enrichment;
  metadataCopy = metadata;
  details = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!details)
  {
    v8 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v8];
  }

  details2 = [(GEORPFeedbackSubmissionParameters *)self details];
  poiEnrichmentUpdate = [details2 poiEnrichmentUpdate];

  if (!poiEnrichmentUpdate)
  {
    v11 = objc_alloc_init(GEORPPoiEnrichmentUpdate);
    details3 = [(GEORPFeedbackSubmissionParameters *)self details];
    [details3 setPoiEnrichmentUpdate:v11];
  }

  v13 = [GEORPImageUpdate newImageUpdateWithImageId:enrichmentCopy photoMetadata:metadataCopy];
  details4 = [(GEORPFeedbackSubmissionParameters *)self details];
  poiEnrichmentUpdate2 = [details4 poiEnrichmentUpdate];
  [poiEnrichmentUpdate2 addImageUpdate:v13];
}

- (void)appendServerImageId:(id)id withMatchingPhoto:(id)photo
{
  idCopy = id;
  photoCopy = photo;
  photoType = [photoCopy photoType];
  if (photoType <= 2)
  {
    if (photoType)
    {
      if (photoType == 1)
      {
        [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoCommonCorrections:idCopy];
      }

      else if (photoType == 2)
      {
        [(GEORPFeedbackSubmissionParameters *)self insertOverviewDirectionsImageId:idCopy];
      }
    }

    else
    {
      [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoMapViewContext:idCopy];
    }
  }

  else if (photoType > 4)
  {
    if (photoType == 5)
    {
      [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoLookAroundContext:idCopy];
    }

    else if (photoType == 6)
    {
      photoMetadata = [photoCopy photoMetadata];
      [(GEORPFeedbackSubmissionParameters *)self appendImageIdToPoiEnrichment:idCopy withPhotoMetadata:photoMetadata];
    }
  }

  else if (photoType == 3)
  {
    [(GEORPFeedbackSubmissionParameters *)self insertDirectionStepImageId:idCopy withMatchingPhoto:photoCopy];
  }

  else
  {
    [(GEORPFeedbackSubmissionParameters *)self insertDirectionStepCommentId:idCopy withMatchingPhoto:photoCopy];
  }
}

@end