@interface GEORPFeedbackSubmissionParameters
- (BOOL)isPersonalizedMapsFeedback;
- (id)stringForFeedbackType:(int)a3;
- (unint64_t)logDiscardTriggerType;
- (void)addDirectionsContextWithReport:(id)a3 recording:(id)a4;
- (void)appendImageIdToPoiEnrichment:(id)a3 withPhotoMetadata:(id)a4;
- (void)appendServerImageId:(id)a3 withMatchingPhoto:(id)a4;
- (void)insertDirectionStepCommentId:(id)a3 withMatchingPhoto:(id)a4;
- (void)insertDirectionStepImageId:(id)a3 withMatchingPhoto:(id)a4;
- (void)insertImageIdIntoCommonCorrections:(id)a3;
- (void)insertImageIdIntoLookAroundContext:(id)a3;
- (void)insertImageIdIntoMapViewContext:(id)a3;
- (void)insertOverviewDirectionsImageId:(id)a3;
- (void)setFeedbackType;
- (void)updatePOIEnrichmentWithCloudKitReceipts:(id)a3;
@end

@implementation GEORPFeedbackSubmissionParameters

- (BOOL)isPersonalizedMapsFeedback
{
  if ([(GEORPFeedbackSubmissionParameters *)self type]!= 4)
  {
    return 0;
  }

  v3 = [(GEORPFeedbackSubmissionParameters *)self details];
  v4 = [v3 addressPointFeedback];
  v5 = [v4 hasPersonalizedMaps];

  return v5;
}

- (void)insertImageIdIntoLookAroundContext:(id)a3
{
  v4 = a3;
  v5 = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v6];
  }

  v7 = [(GEORPFeedbackSubmissionParameters *)self details];
  v8 = [v7 groundViewFeedback];

  if (!v8)
  {
    v9 = objc_alloc_init(GEORPGroundViewFeedback);
    v10 = [(GEORPFeedbackSubmissionParameters *)self details];
    [v10 setGroundViewFeedback:v9];
  }

  v11 = [(GEORPFeedbackSubmissionParameters *)self details];
  v12 = [v11 groundViewFeedback];
  v13 = [v12 groundViewContext];

  if (!v13)
  {
    v14 = objc_alloc_init(GEORPGroundViewFeedbackContext);
    v15 = [(GEORPFeedbackSubmissionParameters *)self details];
    v16 = [v15 groundViewFeedback];
    [v16 setGroundViewContext:v14];
  }

  v19 = [(GEORPFeedbackSubmissionParameters *)self details];
  v17 = [v19 groundViewFeedback];
  v18 = [v17 groundViewContext];
  [v18 setImageId:v4];
}

- (void)insertImageIdIntoCommonCorrections:(id)a3
{
  v4 = a3;
  v5 = [(GEORPFeedbackSubmissionParameters *)self commonCorrections];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonCorrections);
    [(GEORPFeedbackSubmissionParameters *)self setCommonCorrections:v6];
  }

  v7 = [(GEORPFeedbackSubmissionParameters *)self commonCorrections];
  [v7 addImageId:v4];
}

- (void)insertImageIdIntoMapViewContext:(id)a3
{
  v4 = a3;
  v5 = [(GEORPFeedbackSubmissionParameters *)self commonContext];

  if (!v5)
  {
    v6 = objc_alloc_init(GEORPFeedbackCommonContext);
    [(GEORPFeedbackSubmissionParameters *)self setCommonContext:v6];
  }

  v7 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
  v8 = [v7 mapLocation];

  if (!v8)
  {
    v9 = objc_alloc_init(GEORPMapLocation);
    v10 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
    [v10 setMapLocation:v9];
  }

  v12 = [(GEORPFeedbackSubmissionParameters *)self commonContext];
  v11 = [v12 mapLocation];
  [v11 setMapScreenshotId:v4];
}

- (void)insertOverviewDirectionsImageId:(id)a3
{
  v14 = a3;
  v4 = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!v4)
  {
    v5 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v5];
  }

  v6 = [(GEORPFeedbackSubmissionParameters *)self details];
  v7 = [v6 directionsFeedback];

  if (!v7)
  {
    v7 = objc_alloc_init(GEORPDirectionsFeedback);
    v8 = [(GEORPFeedbackSubmissionParameters *)self details];
    [v8 setDirectionsFeedback:v7];
  }

  v9 = [(GEORPFeedbackSubmissionParameters *)self details];
  v10 = [v9 directionsFeedback];
  v11 = [v10 directionsCorrections];

  if (!v11)
  {
    v11 = objc_alloc_init(GEORPDirectionsCorrections);
    v12 = [(GEORPFeedbackSubmissionParameters *)self details];
    v13 = [v12 directionsFeedback];
    [v13 setDirectionsCorrections:v11];
  }

  [v11 setOverviewScreenshotImageId:v14];
}

- (void)insertDirectionStepCommentId:(id)a3 withMatchingPhoto:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEORPFeedbackSubmissionParameters *)self details];
  v9 = [v8 directionsFeedback];
  v10 = [v9 directionsCorrections];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = v10;
  v11 = [v10 instructionCorrections];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = v6;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 photoId];
        v18 = [v7 photoMetadata];
        v19 = [v18 clientImageUuid];
        v20 = [v17 isEqualToString:v19];

        if (v20)
        {
          v21 = v16;
          v6 = v22;
          [v21 setPhotoId:v22];
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v22;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)insertDirectionStepImageId:(id)a3 withMatchingPhoto:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEORPFeedbackSubmissionParameters *)self details];
  v9 = [v8 directionsFeedback];
  v10 = [v9 directionsCorrections];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = v10;
  v11 = [v10 instructionCorrections];
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v22 = v6;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 routeStepScreenshotImageId];
        v18 = [v7 photoMetadata];
        v19 = [v18 clientImageUuid];
        v20 = [v17 isEqualToString:v19];

        if (v20)
        {
          v21 = v16;
          v6 = v22;
          [v21 setRouteStepScreenshotImageId:v22];
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v6 = v22;
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

- (id)stringForFeedbackType:(int)a3
{
  if (a3 <= 0x15)
  {
    v4 = *(&off_101629CE8 + a3);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (void)setFeedbackType
{
  if ([(GEORPFeedbackSubmissionParameters *)self hasDetails])
  {
    v3 = [(GEORPFeedbackSubmissionParameters *)self details];
    v4 = [v3 hasPoiFeedback];

    if (v4)
    {
      v5 = 2;
    }

    else
    {
      v6 = [(GEORPFeedbackSubmissionParameters *)self details];
      v7 = [v6 hasTransitPoiFeedback];

      if (v7)
      {
        v5 = 3;
      }

      else
      {
        v8 = [(GEORPFeedbackSubmissionParameters *)self details];
        v9 = [v8 hasTileFeedback];

        if (v9)
        {
          v5 = 5;
        }

        else
        {
          v10 = [(GEORPFeedbackSubmissionParameters *)self details];
          v11 = [v10 hasSearchFeedback];

          if (v11)
          {
            v5 = 6;
          }

          else
          {
            v12 = [(GEORPFeedbackSubmissionParameters *)self details];
            v13 = [v12 hasDirectionsFeedback];

            if (v13)
            {
              v5 = 8;
            }

            else
            {
              v14 = [(GEORPFeedbackSubmissionParameters *)self details];
              v15 = [v14 hasAddressPointFeedback];

              if (v15)
              {
                v5 = 4;
              }

              else
              {
                v16 = [(GEORPFeedbackSubmissionParameters *)self details];
                v17 = [v16 hasGroundViewFeedback];

                if (v17)
                {
                  v5 = 9;
                }

                else
                {
                  v18 = [(GEORPFeedbackSubmissionParameters *)self details];
                  v19 = [v18 hasMerchantLookupFeedback];

                  if (v19)
                  {
                    v5 = 7;
                  }

                  else
                  {
                    v20 = [(GEORPFeedbackSubmissionParameters *)self details];
                    v21 = [v20 hasPoiEnrichmentUpdate];

                    if (v21)
                    {
                      v5 = 10;
                    }

                    else
                    {
                      v22 = [(GEORPFeedbackSubmissionParameters *)self details];
                      v23 = [v22 hasIncidentFeedback];

                      if (v23)
                      {
                        v5 = 11;
                      }

                      else
                      {
                        v24 = [(GEORPFeedbackSubmissionParameters *)self details];
                        v25 = [v24 hasPoiImageFeedback];

                        if (v25)
                        {
                          v5 = 13;
                        }

                        else
                        {
                          v26 = [(GEORPFeedbackSubmissionParameters *)self details];
                          v27 = [v26 hasCuratedCollectionFeedback];

                          if (v27)
                          {
                            v5 = 12;
                          }

                          else
                          {
                            v28 = [(GEORPFeedbackSubmissionParameters *)self details];
                            v29 = [v28 hasAddMapFeedback];

                            if (v29)
                            {
                              v5 = 15;
                            }

                            else
                            {
                              v30 = [(GEORPFeedbackSubmissionParameters *)self details];
                              v31 = [v30 hasStreetFeedback];

                              if (v31)
                              {
                                v5 = 17;
                              }

                              else
                              {
                                v32 = [(GEORPFeedbackSubmissionParameters *)self details];
                                v33 = [v32 hasLocalityFeedback];

                                if (v33)
                                {
                                  v5 = 16;
                                }

                                else
                                {
                                  v34 = [(GEORPFeedbackSubmissionParameters *)self details];
                                  v35 = [v34 hasRapUserResponseFeedback];

                                  if (v35)
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

- (void)addDirectionsContextWithReport:(id)a3 recording:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!v8)
  {
    v9 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v9];
  }

  v10 = [(GEORPFeedbackSubmissionParameters *)self details];
  v11 = [v10 directionsFeedback];

  if (!v11)
  {
    v12 = objc_alloc_init(GEORPDirectionsFeedback);
    v13 = [(GEORPFeedbackSubmissionParameters *)self details];
    [v13 setDirectionsFeedback:v12];
  }

  v14 = [(GEORPFeedbackSubmissionParameters *)self details];
  v15 = [v14 directionsFeedback];
  v16 = [v15 directionsContext];

  if (!v16)
  {
    v16 = objc_alloc_init(GEORPDirectionsFeedbackContext);
    v17 = [(GEORPFeedbackSubmissionParameters *)self details];
    v18 = [v17 directionsFeedback];
    [v18 setDirectionsContext:v16];
  }

  v19 = [v7 directionsRequests];
  [v16 setDirectionsRequests:v19];

  v20 = [v7 directionsResponses];
  [v16 setDirectionsResponses:v20];

  v21 = [(GEORPFeedbackSubmissionParameters *)self details];
  v22 = [v21 directionsFeedback];
  v23 = [v22 directionsCorrections];

  if (!v23)
  {
    v23 = objc_alloc_init(GEORPDirectionsCorrections);
    v24 = [(GEORPFeedbackSubmissionParameters *)self details];
    v25 = [v24 directionsFeedback];
    [v25 setDirectionsCorrections:v23];
  }

  v26 = [v7 directionsResponseID];
  [v23 setDirectionsResponseId:v26];

  v27 = [RAPPhoto alloc];
  v28 = [v7 overviewScreenshotImageData];
  v29 = [UIImage imageWithData:v28];
  v30 = +[NSDate date];
  v31 = [(RAPPhoto *)v27 initWithPhoto:v29 date:v30 location:0];

  v32 = [(RAPPhoto *)v31 photo];

  if (v32)
  {
    v33 = [[RAPPhotoWithMetadata alloc] initWithRAPPhoto:v31 photoType:2];
    [v6 addPhotoWithMetadata:v33];
  }

  v58 = v31;
  v59 = v6;
  v34 = [GEORPPlaceInfo alloc];
  v35 = [v7 startWaypointCorrectedSearchTemplate];
  v36 = [v34 initWithCorrectedSearch:v35];

  [v36 clearSessionId];
  v37 = objc_alloc_init(GEORPPlaceRequestResponse);
  v38 = [v36 placeRequest];
  [v37 setPlaceRequest:v38];

  v39 = [v36 placeResponse];
  [v37 setPlaceResponse:v39];

  v40 = [GEORPPlaceInfo alloc];
  v41 = [v7 endWaypointCorrectedSearchTemplate];
  v42 = [v40 initWithCorrectedSearch:v41];

  [v42 clearSessionId];
  v43 = objc_alloc_init(GEORPPlaceRequestResponse);
  v44 = [v42 placeRequest];
  [v43 setPlaceRequest:v44];

  v45 = [v42 placeResponse];
  [v43 setPlaceResponse:v45];

  v60[0] = v37;
  v60[1] = v43;
  v46 = [NSArray arrayWithObjects:v60 count:2];
  v47 = [v46 mutableCopy];
  [v16 setDirectionsWaypointPlaceInfos:v47];

  v48 = [v7 startWaypoint];
  if (v48)
  {
    v49 = [[GEORPUserSearchInput alloc] initWithRAPUserSearchInput:v48];
    [v16 setStartWaypoint:v49];
  }

  v50 = [v7 endWaypoint];
  if (v50)
  {
    v51 = [[GEORPUserSearchInput alloc] initWithRAPUserSearchInput:v50];
    [v16 setEndWaypoint:v51];
  }

  if (v7 && [v7 hasSelectedDirectionsResponseIndex] && objc_msgSend(v7, "hasSelectedSuggestedRouteIndexInDirectionsResponse") && !objc_msgSend(v23, "problematicRouteIndexsCount"))
  {
    v52 = objc_alloc_init(GEORPSuggestedRouteIndex);
    [v52 setDirectionsResponseIndex:{objc_msgSend(v7, "selectedDirectionsResponseIndex")}];
    v57 = v52;
    [v52 setDirectionsResponseSuggestedRoutesIndex:{objc_msgSend(v7, "selectedSuggestedRouteIndexInDirectionsResponse")}];
    v55 = [v7 directionsResponses];
    v53 = [v55 objectAtIndexedSubscript:{objc_msgSend(v7, "selectedDirectionsResponseIndex")}];

    v56 = v53;
    v54 = [v53 suggestedRoutes];

    if (v54)
    {
      [v57 setClusteredRouteRideSelections:objc_msgSend(v7 count:{"clusteredRouteRideSelections"), objc_msgSend(v7, "clusteredRouteRideSelectionsCount")}];
    }

    [v23 addProblematicRouteIndex:v57];
  }
}

- (void)updatePOIEnrichmentWithCloudKitReceipts:(id)a3
{
  v4 = a3;
  v5 = [(GEORPFeedbackSubmissionParameters *)self details];
  v6 = [v5 poiEnrichmentUpdate];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v4;
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
          v14 = [v13 comparisonIdentifier];
          [v7 setObject:v13 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = [(GEORPFeedbackSubmissionParameters *)self details];
    v16 = [v15 poiEnrichmentUpdate];
    v17 = [v16 imageUpdates];

    v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          if ([v22 action] == 1)
          {
            v23 = [v22 comparisonIdentifier];
            v24 = [v7 objectForKey:v23];

            v25 = [v24 uploadResponse];
            [v22 setUploadResponse:v25];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
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

- (void)appendImageIdToPoiEnrichment:(id)a3 withPhotoMetadata:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(GEORPFeedbackSubmissionParameters *)self details];

  if (!v7)
  {
    v8 = objc_alloc_init(GEORPFeedbackDetails);
    [(GEORPFeedbackSubmissionParameters *)self setDetails:v8];
  }

  v9 = [(GEORPFeedbackSubmissionParameters *)self details];
  v10 = [v9 poiEnrichmentUpdate];

  if (!v10)
  {
    v11 = objc_alloc_init(GEORPPoiEnrichmentUpdate);
    v12 = [(GEORPFeedbackSubmissionParameters *)self details];
    [v12 setPoiEnrichmentUpdate:v11];
  }

  v13 = [GEORPImageUpdate newImageUpdateWithImageId:v16 photoMetadata:v6];
  v14 = [(GEORPFeedbackSubmissionParameters *)self details];
  v15 = [v14 poiEnrichmentUpdate];
  [v15 addImageUpdate:v13];
}

- (void)appendServerImageId:(id)a3 withMatchingPhoto:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 photoType];
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoCommonCorrections:v9];
      }

      else if (v7 == 2)
      {
        [(GEORPFeedbackSubmissionParameters *)self insertOverviewDirectionsImageId:v9];
      }
    }

    else
    {
      [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoMapViewContext:v9];
    }
  }

  else if (v7 > 4)
  {
    if (v7 == 5)
    {
      [(GEORPFeedbackSubmissionParameters *)self insertImageIdIntoLookAroundContext:v9];
    }

    else if (v7 == 6)
    {
      v8 = [v6 photoMetadata];
      [(GEORPFeedbackSubmissionParameters *)self appendImageIdToPoiEnrichment:v9 withPhotoMetadata:v8];
    }
  }

  else if (v7 == 3)
  {
    [(GEORPFeedbackSubmissionParameters *)self insertDirectionStepImageId:v9 withMatchingPhoto:v6];
  }

  else
  {
    [(GEORPFeedbackSubmissionParameters *)self insertDirectionStepCommentId:v9 withMatchingPhoto:v6];
  }
}

@end