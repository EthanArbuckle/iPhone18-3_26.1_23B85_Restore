@interface MapsAnalyticsHelper
+ (id)acSuggestionEntriesFromAutoCompleteObjects:(id)a3 personalizedItems:(id)a4 context:(id)a5 mapsSuggestionsInsights:(id)a6 skipReportASearchItems:(BOOL)a7 traits:(id)a8 usedForLogging:(BOOL)a9 shouldUseDistanceFeatureServerResults:(BOOL)a10;
+ (id)acSuggestionEntriesFromSections:(id)a3 personalizedItems:(id)a4 context:(id)a5 mapsSuggestionsInsights:(id)a6 skipReportASearchItems:(BOOL)a7 selectedChildItemIndexPath:(id)a8 indexOfResultWithSelectedChildItem:(id)a9 traits:(id)a10 usedForLogging:(BOOL)a11 shouldUseDistanceFeatureServerResults:(BOOL)a12 placeSummaryMetadata:(id)a13;
+ (id)analyticsResultsInfoArrayFromAutoCompleteResultsArray:(id)a3 selectedIndex:(unint64_t)a4;
+ (id)hyperlinkMetadataWithTemplate:(id)a3 mapItem:(id)a4 metadata:(id)a5;
- (MapsAnalyticsHelper)init;
- (MapsAnalyticsHelper)initWithLabelMarker:(id)a3;
- (MapsAnalyticsHelper)initWithMapItem:(id)a3;
@end

@implementation MapsAnalyticsHelper

- (MapsAnalyticsHelper)initWithMapItem:(id)a3
{
  v4 = a3;
  v5 = [(MapsAnalyticsHelper *)self init];
  if (v5)
  {
    v6 = [v4 _geoMapItem];
    v7 = [GEOPlaceActionDetails actionDetailsWithMapItem:v6 timestamp:0xFFFFFFFFLL resultIndex:0.0];
    actionDetails = v5->_actionDetails;
    v5->_actionDetails = v7;
  }

  return v5;
}

- (MapsAnalyticsHelper)initWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [(MapsAnalyticsHelper *)self init];
  if (v5)
  {
    v6 = [v4 featureAnnotation];
    v7 = v6;
    if (!v6 || ![v6 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
    {
      if ([v4 isFlyoverTour])
      {
        v14 = +[GEOPlaceActionDetails actionDetailsWithTargetID:](GEOPlaceActionDetails, "actionDetailsWithTargetID:", [v4 featureID]);
        v15 = 0;
        v16 = 0;
        v17 = 1037;
      }

      else if ([v4 isTransitLine])
      {
        if ([v4 _maps_numLines] == 1)
        {
          v14 = +[GEOPlaceActionDetails actionDetailsWithTargetID:](GEOPlaceActionDetails, "actionDetailsWithTargetID:", [v4 featureID]);
          v15 = 0;
          v16 = 0;
        }

        else
        {
          v16 = [v4 _maps_analyticsEventValue];
          v15 = 0;
          v14 = 0;
        }

        v17 = 1035;
      }

      else if ([v4 isTrafficIncident])
      {
        v15 = 0;
        v14 = 0;
        v16 = 0;
        v17 = 1031;
      }

      else if ([v4 isCluster])
      {
        v55 = v4;
        v56 = v5;
        v26 = [v4 clusterFeatureAnnotations];
        v57 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v26, "count")}];
        v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v26 count]);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v28 = v26;
        v29 = [v28 countByEnumeratingWithState:&v61 objects:v67 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v62;
          do
          {
            v32 = 0;
            v33 = v7;
            do
            {
              if (*v62 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v7 = *(*(&v61 + 1) + 8 * v32);

              if ([v7 conformsToProtocol:&OBJC_PROTOCOL___CustomPOIAnnotation])
              {
                v34 = [v7 searchResult];
                if (v34)
                {
                  [v57 addObject:v34];
                  v35 = [v34 mapItem];
                  v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v35 _muid]);
                  [v27 addObject:v36];
                }
              }

              v32 = v32 + 1;
              v33 = v7;
            }

            while (v30 != v32);
            v30 = [v28 countByEnumeratingWithState:&v61 objects:v67 count:16];
          }

          while (v30);
        }

        v16 = [v27 componentsJoinedByString:{@", "}];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100B59D7C;
        v59[3] = &unk_101661B18;
        v60 = v57;
        v37 = v57;
        v15 = objc_retainBlock(v59);

        v7 = 0;
        v14 = 0;
        v17 = 1018;
        v4 = v55;
        v5 = v56;
      }

      else
      {
        if ([v4 _mapkit_hasMUID])
        {
          v44 = +[UIApplication sharedMapsDelegate];
          v45 = [v44 poiSearchManager];
          [v4 identifier];
          v47 = v46 = v4;
          v48 = [v45 searchResultForIdentifier:v47];

          v49 = [v48 mapItem];
          if (!v49)
          {
            v49 = [[MKMapItem alloc] _initWithLabelMarker:v46];
          }

          v50 = [v49 _geoMapItem];
          v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v50 timestamp:0xFFFFFFFFLL resultIndex:0.0];

          v4 = v46;
          if ([v46 isTransitAccessPoint])
          {
            v17 = 1062;
          }

          else if ([v46 isTransit])
          {
            v17 = 1011;
          }

          else if ([v46 isVenueButton])
          {
            v17 = 1053;
          }

          else if ([v46 hasBusinessID])
          {
            v17 = 1010;
          }

          else
          {
            v17 = 144;
          }

          v15 = 0;
        }

        else
        {
          v15 = 0;
          v14 = 0;
          v17 = 0;
        }

        v16 = 0;
      }

      goto LABEL_19;
    }

    v8 = v4;
    v7 = v7;
    v9 = [v7 parkedCar];
    v10 = [v7 searchResult];
    v11 = [v7 mapItem];
    v12 = v11;
    if (v9)
    {
      v13 = [v11 _geoMapItem];
      v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v13 timestamp:0xFFFFFFFFLL resultIndex:0.0];

LABEL_6:
      v15 = 0;
      v16 = 0;
      v17 = 1010;
LABEL_16:

      v4 = v8;
LABEL_19:
      v5->_tapAction = v17;
      v5->_target = 502;
      actionDetails = v5->_actionDetails;
      v5->_actionDetails = v14;
      v20 = v14;

      eventValue = v5->_eventValue;
      v5->_eventValue = v16;
      v22 = v16;

      v23 = objc_retainBlock(v15);
      populateTapEvent = v5->_populateTapEvent;
      v5->_populateTapEvent = v23;

      goto LABEL_20;
    }

    v18 = [v7 searchDotPlace];

    if (v18)
    {
      v15 = 0;
      v14 = 0;
      v16 = 0;
      v17 = 194;
      goto LABEL_16;
    }

    if (v10)
    {
      v38 = [v10 mapItem];
      v39 = [v38 _geoMapItem];
      v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v39 timestamp:0xFFFFFFFFLL resultIndex:0.0];

      if ([v10 isHomeOrWork])
      {
        goto LABEL_6;
      }

      v40 = [v10 type];
      if (v40 <= 0xD)
      {
        if (((1 << v40) & 0x2221) != 0)
        {
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_100B59C8C;
          v65[3] = &unk_101661B18;
          v41 = v10;
          v66 = v41;
          v15 = objc_retainBlock(v65);
          v42 = [v41 mapItem];
          v58 = [v42 _hasHikeInfo];

          if (v58)
          {
            v43 = [v41 mapItem];
            v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v43 _muid]);
          }

          else
          {
            v16 = 0;
          }

          v17 = 1017;
        }

        else
        {
          if (v40 == 4)
          {
            v52 = 1034;
          }

          else
          {
            v52 = 0;
          }

          v15 = 0;
          if (((1 << v40) & 0x1008) != 0)
          {
            v17 = 1020;
          }

          else
          {
            v17 = v52;
          }

          v16 = 0;
        }

        goto LABEL_16;
      }

      v15 = 0;
    }

    else
    {
      if (v12 && [v12 _hasMUID])
      {
        v51 = [v12 _geoMapItem];
        v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v51 timestamp:0xFFFFFFFFLL resultIndex:0.0];

        if ([v8 isTransit])
        {
          v15 = 0;
          v16 = 0;
          v17 = 1011;
        }

        else
        {
          v53 = [v12 _geoMapItem];
          v54 = [v53 _isInLinkedPlaceRelationship];

          v15 = 0;
          v16 = 0;
          if (v54)
          {
            v17 = 1017;
          }

          else
          {
            v17 = 1010;
          }
        }

        goto LABEL_16;
      }

      v15 = 0;
      v14 = 0;
    }

    v17 = 0;
    v16 = 0;
    goto LABEL_16;
  }

LABEL_20:

  return v5;
}

- (MapsAnalyticsHelper)init
{
  v7.receiver = self;
  v7.super_class = MapsAnalyticsHelper;
  v2 = [(MapsAnalyticsHelper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_tapAction = 0;
    v4 = objc_alloc_init(GEOPlaceActionDetails);
    actionDetails = v3->_actionDetails;
    v3->_actionDetails = v4;
  }

  return v3;
}

+ (id)hyperlinkMetadataWithTemplate:(id)a3 mapItem:(id)a4 metadata:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (![v7 containsUserGeneratedGuideUnit])
  {
LABEL_6:
    if ([v7 containsCuratedGuideUnit])
    {
      v15 = [v8 _placeCollections];
      v16 = [v15 count];

      if (v16 == 1)
      {
        v14 = objc_alloc_init(GEOHyperlinkMetaData);
        v17 = [v8 _placeCollections];
        v11 = [v17 firstObject];

        [v14 setHyperlinkType:1];
        v18 = [v11 publisherAttribution];
        v19 = [v18 displayName];
        v20 = [v11 collectionTitle];
        v21 = [NSString stringWithFormat:@"%@: %@", v19, v20];
        [v14 setDisplayedString:v21];

        goto LABEL_26;
      }

      v22 = [v8 _placeCollections];
      v23 = [v22 count];

      if (v23 >= 2)
      {
        v14 = objc_alloc_init(GEOHyperlinkMetaData);
        [v14 setHyperlinkType:1];
        v24 = [v8 _placeCollections];
        v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Featured in %lu Guides", [v24 count]);
        [v14 setDisplayedString:v25];

        goto LABEL_27;
      }
    }

    if ([v7 containsContainmentParentUnit])
    {
      v26 = [v8 _geoMapItem];
      v27 = [v26 _containedPlace];
      v28 = [v27 parent];
      v11 = [v28 _identifier];

      if (v11)
      {
        v29 = [v11 muid];
        if (v29)
        {
LABEL_14:
          v14 = objc_alloc_init(GEOHyperlinkMetaData);
          [v14 setHyperlinkType:2];
          v30 = [NSString stringWithFormat:@"Location %llu", v29];
          [v14 setDisplayedString:v30];

          goto LABEL_26;
        }
      }

      else
      {
        v31 = [v8 _venueInfo];
        v32 = [v31 parent];
        v29 = [v32 businessID];

        if (v29)
        {
          goto LABEL_14;
        }
      }
    }

    v33 = [v8 _geoMapItem];
    v34 = [v33 _identifier];
    v35 = [v7 containsTappableEntityWithIdentifier:v34 metadata:v9];

    if (v35)
    {
      v36 = objc_alloc_init(GEOHyperlinkMetaData);
      v14 = v36;
      v37 = 3;
    }

    else
    {
      if (![v7 containsTransitShieldsUnit] || !objc_msgSend(v8, "_hasTransitLabels"))
      {
        v11 = [v7 stringUnitContent];
        if ([v11 length])
        {
          v14 = objc_alloc_init(GEOHyperlinkMetaData);
          [v14 setHyperlinkType:4];
          [v14 setDisplayedString:v11];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_26;
      }

      v36 = objc_alloc_init(GEOHyperlinkMetaData);
      v14 = v36;
      v37 = 4;
    }

    [v36 setHyperlinkType:v37];
    goto LABEL_27;
  }

  v10 = +[CollectionManager sharedManager];
  v11 = [v10 firstUserGuideContainingMapItem:v8 requiresOrdering:1];

  if (!v11 || ([v11 title], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, !v13))
  {

    goto LABEL_6;
  }

  v14 = objc_alloc_init(GEOHyperlinkMetaData);
  [v14 setHyperlinkType:0];
LABEL_26:

LABEL_27:

  return v14;
}

+ (id)acSuggestionEntriesFromSections:(id)a3 personalizedItems:(id)a4 context:(id)a5 mapsSuggestionsInsights:(id)a6 skipReportASearchItems:(BOOL)a7 selectedChildItemIndexPath:(id)a8 indexOfResultWithSelectedChildItem:(id)a9 traits:(id)a10 usedForLogging:(BOOL)a11 shouldUseDistanceFeatureServerResults:(BOOL)a12 placeSummaryMetadata:(id)a13
{
  v336 = a3;
  v17 = a4;
  v314 = a5;
  v301 = a6;
  v309 = a8;
  v311 = a9;
  v18 = a10;
  v317 = a13;
  v300 = v18;
  v319 = [v18 copy];
  v352 = v17;
  if (v17)
  {
    v405 = 0u;
    v404 = 0u;
    v403 = 0u;
    v402 = 0u;
    obj = v336;
    v348 = [obj countByEnumeratingWithState:&v402 objects:v420 count:16];
    if (v348)
    {
      v346 = *v403;
      do
      {
        v19 = 0;
        do
        {
          if (*v403 != v346)
          {
            v20 = v19;
            objc_enumerationMutation(obj);
            v19 = v20;
          }

          v350 = v19;
          v21 = *(*(&v402 + 1) + 8 * v19);
          v22 = [v21 items];
          v23 = [v22 count] == 0;

          if (!v23)
          {
            v24 = 0;
            do
            {
              v25 = [v352 objectAtIndexedSubscript:v24];
              v26 = [v21 items];
              v27 = [v26 objectAtIndexedSubscript:v24];
              v28 = v25 == v27;

              if (!v28)
              {
                v29 = [v21 items];
                v30 = [v29 objectAtIndexedSubscript:v24];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = v30;
                }

                else
                {
                  v31 = 0;
                }

                v32 = v31;

                v401 = 0u;
                v400 = 0u;
                v399 = 0u;
                v398 = 0u;
                v33 = [v32 items];
                v34 = [v33 countByEnumeratingWithState:&v398 objects:v419 count:16];
                if (v34)
                {
                  v35 = *v399;
LABEL_15:
                  v36 = 0;
                  while (1)
                  {
                    if (*v399 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v37 = [*(*(&v398 + 1) + 8 * v36) autocompleteObject];
                    v38 = [v352 objectAtIndexedSubscript:v24];
                    v39 = [v38 autocompleteObject];
                    v40 = v37 == v39;

                    if (v40)
                    {
                      break;
                    }

                    if (v34 == ++v36)
                    {
                      v34 = [v33 countByEnumeratingWithState:&v398 objects:v419 count:16];
                      if (v34)
                      {
                        goto LABEL_15;
                      }

                      break;
                    }
                  }
                }
              }

              v41 = [v21 items];
              v42 = [v41 count];

              ++v24;
            }

            while (v24 < v42);
          }

          v19 = v350 + 1;
        }

        while ((v350 + 1) != v348);
        v348 = [obj countByEnumeratingWithState:&v402 objects:v420 count:16];
      }

      while (v348);
    }
  }

  v43 = +[MKLocationManager sharedLocationManager];
  v302 = [v43 currentLocation];

  if (v302)
  {
    [v302 coordinate];
    v307 = v44;
    v46 = v45;
  }

  else
  {
    v46 = -180.0;
    v307 = -180.0;
  }

  v322 = +[NSMutableArray array];
  v320 = +[NSMutableArray array];
  v321 = +[NSMutableArray array];
  v396 = 0u;
  v397 = 0u;
  v394 = 0u;
  v395 = 0u;
  v306 = v336;
  v304 = [v306 countByEnumeratingWithState:&v394 objects:v418 count:16];
  if (v304)
  {
    v303 = *v395;
    v312 = fabs(v307);
    do
    {
      v47 = 0;
      do
      {
        if (*v395 != v303)
        {
          v48 = v47;
          objc_enumerationMutation(v306);
          v47 = v48;
        }

        v305 = v47;
        v323 = *(*(&v394 + 1) + 8 * v47);
        v49 = [v323 items];
        v50 = [v49 count] == 0;

        if (!v50)
        {
          v332 = 0;
          while (1)
          {
            v51 = [v323 items];
            obja = [v51 objectAtIndexedSubscript:v332];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([obja autocompleteObject], v52 = objc_claimAutoreleasedReturnValue(), v53 = v52 == 0, v52, v53))
            {
              v334 = 0;
            }

            else
            {
              v334 = obja;
              obja = [v334 autocompleteObject];
            }

            v54 = objc_alloc_init(GEOClientACSuggestionEntry);
            v55 = [v352 objectAtIndexedSubscript:v332];
            v56 = v55;
            v57 = v334;
            if (v55)
            {
              v57 = v55;
            }

            v325 = v57;

            v58 = v334;
            if (([v334 hasServerItemIndex] & 1) != 0 || (v58 = v325, objc_msgSend(v325, "hasServerItemIndex")))
            {
              [v54 setServerSectionIndex:{objc_msgSend(v58, "serverSectionIndex")}];
              [v54 setServerItemIndexInSection:{objc_msgSend(v58, "serverItemIndexInSection")}];
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (!a7)
            {
              [v322 addObject:v54];
              v59 = +[NSNull null];
              [v320 addObject:v59];

              v337 = +[NSNull null];
              [v321 addObject:v337];
            }

LABEL_209:

            v170 = [v323 items];
            v171 = [v170 count];

            if (++v332 >= v171)
            {
              goto LABEL_262;
            }
          }

          v60 = [v314 matchInfoForObject:obja];
          if (v60)
          {
            v338 = v60;
          }

          else
          {
            v338 = [v334 matchInfo];

            if (!v338)
            {
              if ([obja conformsToProtocol:&OBJC_PROTOCOL___AutocompleteItemWithMatchInfo])
              {
                v338 = [obja matchInfo];
              }

              else
              {
                v338 = 0;
              }
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v415 = sub_100B5CCE0;
          v416 = sub_100B5CCF0;
          v417 = 0;
          [v54 setSuggestionType:0];
          [v54 setShownToUser:{objc_msgSend(v338, "shownToUser")}];
          v61 = [v334 autocompleteAnalytics];
          v62 = [v61 hasDiscreteFeatureValuesContributedToLatestClientRankingScore];

          if (v62)
          {
            v63 = [v334 autocompleteAnalytics];
            [v54 setDiscreteFeatureValuesAvailable:{objc_msgSend(v63, "discreteFeatureValuesContributedToLatestClientRankingScore")}];
          }

          v389 = 0;
          v390 = &v389;
          v391 = 0x3010000000;
          v392 = &unk_1014C0133;
          v393 = xmmword_101215F80;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 setSuggestionType:9];
            v328 = obja;
            v64 = [v328 mapItem];
            v65 = [v64 _geoMapItem];
            v66 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v65;

            v388 = 0uLL;
            if ([v328 getCoordinate:&v388])
            {
              *(v390 + 2) = v388;
              if (!*(*&buf[8] + 40))
              {
                v67 = [CLLocation alloc];
                v68 = [v67 initWithLatitude:v388 longitude:?];
                v69 = [[MKMapItem alloc] initWithCLLocation:v68 placeType:{objc_msgSend(v328, "_placeType")}];
                v70 = [v69 _geoMapItem];
                v71 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v70;
              }
            }

            v72 = [v328 _type] - 1;
            if (v72 < 3)
            {
              v73 = (v72 + 1);
            }

            else
            {
              v73 = 0;
            }

            [v54 setServerEntryType:v73];
            v74 = [v328 mapItem];
            v75 = [v74 _geoMapItem];
            v76 = [v75 _childItems];
            v77 = [v76 count];
            if (v77)
            {
              v78 = 1;
            }

            else
            {
              v310 = [v328 childItems];
              v78 = v310 != 0;
            }

            [v54 setIsProminentResult:v78];
            if (!v77)
            {
            }

            v120 = [v328 autocompleteCellType] - 1;
            if (v120 < 4)
            {
              v121 = (v120 + 1);
            }

            else
            {
              v121 = 0;
            }

            [v54 setAutocompleteResultCellType:v121];
            [v54 setTapBehavior:{objc_msgSend(v328, "entryTapBehavior") == 1}];
            if (v317)
            {
              v122 = [_TtC4Maps27PlaceSummaryTemplateFactory autocompleteTemplateWithCompletion:v328 metadata:v317];
              v123 = [v328 mapItem];
              v124 = [a1 hyperlinkMetadataWithTemplate:v122 mapItem:v123 metadata:v317];
              [v54 setHyperlinkMetadata:v124];
            }

            v125 = [NSMutableArray alloc];
            v126 = [v328 childItems];
            v127 = [v125 initWithCapacity:{objc_msgSend(v126, "count")}];

            v386 = 0u;
            v387 = 0u;
            v384 = 0u;
            v385 = 0u;
            v128 = [v328 childItems];
            v129 = [v128 countByEnumeratingWithState:&v384 objects:v413 count:16];
            if (v129)
            {
              v130 = *v385;
              do
              {
                for (i = 0; i != v129; i = i + 1)
                {
                  if (*v385 != v130)
                  {
                    objc_enumerationMutation(v128);
                  }

                  v132 = *(*(&v384 + 1) + 8 * i);
                  v133 = [v132 childItemAction];
                  v134 = [v133 childActionType] == 8;

                  if (v134)
                  {
                    v135 = +[MapsOfflineUIHelper sharedHelper];
                    v136 = [*(*&buf[8] + 40) offlineDownloadRegion];
                    v137 = [v135 isRegionDownloaded:v136 requireFullyDownloaded:0];

                    if (v137)
                    {
                      continue;
                    }
                  }

                  [v127 addObject:v132];
                }

                v129 = [v128 countByEnumeratingWithState:&v384 objects:v413 count:16];
              }

              while (v129);
            }

            if ([v127 count])
            {
              v138 = v309;
              if (v311)
              {
                v139 = [v306 indexOfObject:{v323, v309}];
                if (v139 == [v311 section])
                {
                  if (v332 == [v311 row])
                  {
                    v138 = v309;
                  }

                  else
                  {
                    v138 = 0;
                  }
                }

                else
                {
                  v138 = 0;
                }
              }

              v153 = [GEOSubactionMetaData subactionMetaDataWithChildItems:v127 selectedChildItemIndexPath:v138];
              [v54 setSubactionMetaData:v153];
            }

            goto LABEL_155;
          }

          [v54 setSuggestionType:10];
          [v338 fractionOfMatch];
          [v54 setFractionOfMatch:?];
          v79 = [v338 prefixLastTokenMatchCover];
          v80 = v79 == 0;

          if (!v80)
          {
            v81 = [v338 prefixLastTokenMatchCover];
            [v81 floatValue];
            [v54 setPrefixLastTokenMatchCover:?];
          }

          v82 = [v338 prefixMatchCover];
          v83 = v82 == 0;

          if (!v83)
          {
            v84 = [v338 prefixMatchCover];
            [v84 floatValue];
            [v54 setPrefixMatchCover:?];
          }

          v85 = [v338 prefixMatchPosition];
          v86 = v85 == 0;

          if (!v86)
          {
            v87 = [v338 prefixMatchPosition];
            [v54 setPrefixMatchPosition:{objc_msgSend(v87, "intValue")}];
          }

          [v54 setPrefixMatchWordBoundary:{objc_msgSend(v338, "prefixMatchesWordBoundary")}];
          v88 = [v338 firstPrefixToken];
          v89 = v88 == 0;

          if (!v89)
          {
            v90 = [v338 firstPrefixToken];
            [v54 setPrefixTokenMatchLengthFirstQueryToken:{objc_msgSend(v90, "matchLength")}];
            [v54 setPrefixTokenMatchPositionFirstQueryToken:{objc_msgSend(v90, "matchPostion")}];
            [v54 setPrefixTokenIsNumberFirstQueryToken:{objc_msgSend(v90, "isNumber")}];
            [v54 setPrefixTokenMatchLocationFirstQueryToken:{objc_msgSend(v90, "matchLocation")}];
          }

          v91 = [v338 secondPrefixToken];
          v92 = v91 == 0;

          if (!v92)
          {
            v93 = [v338 secondPrefixToken];
            [v54 setPrefixTokenMatchLengthSecondQueryToken:{objc_msgSend(v93, "matchLength")}];
            [v54 setPrefixTokenMatchPositionSecondQueryToken:{objc_msgSend(v93, "matchPostion")}];
            [v54 setPrefixTokenIsNumberSecondQueryToken:{objc_msgSend(v93, "isNumber")}];
            [v54 setPrefixTokenMatchLocationSecondQueryToken:{objc_msgSend(v93, "matchLocation")}];
          }

          if (([v338 matchType] & 4) != 0)
          {
            [v54 setMatchedUsingAddress:1];
          }

          if (([v338 matchType] & 0x10) != 0)
          {
            [v54 setMatchedUsingEventName:1];
          }

          if (([v338 matchType] & 8) != 0)
          {
            [v54 setMatchedUsingLabel:1];
          }

          if ([v338 matchType])
          {
            [v54 setMatchedUsingName:1];
          }

          if (([v338 matchType] & 2) != 0)
          {
            [v54 setMatchedUsingOrganization:1];
          }

          [v338 peopleSuggesterRank];
          if (v94 != 0.0)
          {
            [v338 peopleSuggesterRank];
            [v54 setPeopleSuggesterRank:v95];
          }

          if (([v338 ageInSeconds] & 0x80000000) == 0)
          {
            [v54 setAge:{objc_msgSend(v338, "ageInSeconds")}];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 setSuggestionType:4];
            v328 = obja;
            v96 = [v328 historyEntry];
            v381[0] = _NSConcreteStackBlock;
            v381[1] = 3221225472;
            v381[2] = sub_100B5CCF8;
            v381[3] = &unk_101656AC0;
            v382 = v54;
            v383 = &v389;
            v377[0] = _NSConcreteStackBlock;
            v377[1] = 3221225472;
            v377[2] = sub_100B5CD98;
            v377[3] = &unk_10163AA10;
            v378 = v382;
            v379 = buf;
            v380 = &v389;
            v373[0] = _NSConcreteStackBlock;
            v373[1] = 3221225472;
            v373[2] = sub_100B5CE9C;
            v373[3] = &unk_10163AA38;
            v374 = v378;
            v375 = &v389;
            v376 = buf;
            [v96 ifSearch:v381 ifRoute:v377 ifPlaceDisplay:v373 ifTransitLineItem:&stru_10163AA58];

            goto LABEL_156;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 setSuggestionType:7];
            v97 = obja;
            v98 = [v97 contact];
            v99 = [v97 geocodedMapItem];
            v328 = v97;

            if (v99)
            {
              v100 = [v97 geocodedMapItem];
              [v100 _coordinate];
              v102 = v101;
              v104 = v103;

              v105 = v390;
              v390[4] = v102;
              v105[5] = v104;
              v106 = [v97 geocodedMapItem];
              v107 = [v106 _geoMapItem];
              v108 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v107;
            }

            if (!a11)
            {
              v371 = 0u;
              v372 = 0u;
              v369 = 0u;
              v370 = 0u;
              v109 = [v98 postalAddresses];
              v110 = [v109 countByEnumeratingWithState:&v369 objects:v412 count:16];
              if (v110)
              {
                v111 = *v370;
                do
                {
                  for (j = 0; j != v110; j = j + 1)
                  {
                    if (*v370 != v111)
                    {
                      objc_enumerationMutation(v109);
                    }

                    v113 = *(*(&v369 + 1) + 8 * j);
                    v114 = [v113 label];
                    v115 = [v114 isEqualToString:CNLabelHome];

                    if (v115)
                    {
                      [v54 setIsContactWithHomeLocation:1];
                    }

                    else
                    {
                      v116 = [v113 label];
                      v117 = [v116 isEqualToString:CNLabelWork];

                      if (v117)
                      {
                        [v54 setIsContactWithWorkLocation:1];
                      }

                      else
                      {
                        v118 = [v113 label];
                        v119 = [v118 isEqualToString:CNLabelSchool];

                        if (v119)
                        {
                          [v54 setIsContactWithSchoolLocation:1];
                        }

                        else
                        {
                          [v54 setIsContactWithOtherLocation:1];
                        }
                      }
                    }
                  }

                  v110 = [v109 countByEnumeratingWithState:&v369 objects:v412 count:16];
                }

                while (v110);
              }

              goto LABEL_258;
            }

LABEL_157:

LABEL_158:
            v154 = v390;
            if (fabs(*(v390 + 5)) <= 180.0)
            {
              v155 = *(v390 + 4);
              if (v155 >= -90.0 && v155 <= 90.0 && v312 <= 180.0 && v46 >= -90.0 && v46 <= 90.0)
              {
                if (a12 && !a11 || a11 && (v156 = [v54 suggestionType], v154 = v390, v156 != 9))
                {
                  GEOCalculateDistance();
                  [v54 setDistanceToSuggestion:v157];
                  v154 = v390;
                }
              }
            }

            if (fabs(v154[5]) <= 180.0)
            {
              v158 = v154[4];
              if (v158 >= -90.0 && v158 <= 90.0 && [v319 hasMapRegion] && (!a11 || objc_msgSend(v54, "suggestionType") == 9))
              {
                v159 = [v319 mapRegion];
                [v54 setIsContainedInViewport:{objc_msgSend(v159, "containsCoordinate:", *(v390 + 4), *(v390 + 5))}];
                [v159 centerLat];
                v161 = v160;
                [v159 centerLng];
                if (fabs(v162) <= 180.0 && v161 >= -90.0 && v161 <= 90.0)
                {
                  GEOCalculateDistance();
                  [v54 setDistanceToSuggestionFromViewportCenter:?];
                }
              }
            }

            if ([v319 hasTimeSinceMapViewportChanged] && !a11)
            {
              [v54 setTimeSinceMapViewportChangedSeconds:{objc_msgSend(v319, "timeSinceMapViewportChanged")}];
            }

            if (v334 && [v334 containsPossiblePersonalizedItemSourceSubtype:1])
            {
              [v54 setIsFavorite:1];
            }

            if (![*(*&buf[8] + 40) _hasBusinessHours])
            {
              goto LABEL_197;
            }

            if (([*(*&buf[8] + 40) _openingHoursOptions] & 0x20) != 0)
            {
              v163 = 3;
            }

            else if (([*(*&buf[8] + 40) _openingHoursOptions] & 0x40) != 0)
            {
              v163 = 4;
            }

            else
            {
              if (([*(*&buf[8] + 40) _openingHoursOptions] & 4) == 0 && (objc_msgSend(*(*&buf[8] + 40), "_openingHoursOptions") & 8) == 0)
              {
                if (([*(*&buf[8] + 40) _openingHoursOptions] & 2) != 0 || (objc_msgSend(*(*&buf[8] + 40), "_openingHoursOptions") & 0x10) != 0)
                {
                  v163 = 2;
                  goto LABEL_196;
                }

LABEL_197:
                v164 = [v323 title];
                v165 = v164;
                if (v164)
                {
                  v166 = v164;
                }

                else
                {
                  v166 = &stru_1016631F0;
                }

                [v54 setSuggestionSectionType:v166];

                [v322 addObject:v54];
                v167 = v98;
                if (!v98)
                {
                  v316 = +[NSNull null];
                  v167 = v316;
                }

                [v320 addObject:v167];
                if (!v98)
                {
                }

                v168 = *(*&buf[8] + 40);
                v169 = v168;
                if (!v168)
                {
                  v315 = +[NSNull null];
                  v169 = v315;
                }

                [v321 addObject:v169];
                if (!v168)
                {
                }

                _Block_object_dispose(&v389, 8);

                _Block_object_dispose(buf, 8);
                goto LABEL_209;
              }

              v163 = 0;
            }

LABEL_196:
            [v54 setPoiOpenState:v163];
            goto LABEL_197;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v54 setSuggestionType:7];
            v328 = obja;
            v140 = [v328 handle];
            v141 = v140 == 0;

            if (!v141)
            {
              [v54 setIsContactWithLiveLocation:1];
            }

            v142 = [v328 contact];
            v98 = v142;
            if (a11)
            {
              goto LABEL_157;
            }

            v367 = 0u;
            v368 = 0u;
            v365 = 0u;
            v366 = 0u;
            v109 = [v142 postalAddresses];
            v143 = [v109 countByEnumeratingWithState:&v365 objects:v411 count:16];
            if (v143)
            {
              v144 = *v366;
              do
              {
                for (k = 0; k != v143; k = k + 1)
                {
                  if (*v366 != v144)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v146 = *(*(&v365 + 1) + 8 * k);
                  v147 = [v146 label];
                  v148 = [v147 isEqualToString:CNLabelHome];

                  if (v148)
                  {
                    [v54 setIsContactWithHomeLocation:1];
                  }

                  else
                  {
                    v149 = [v146 label];
                    v150 = [v149 isEqualToString:CNLabelWork];

                    if (v150)
                    {
                      [v54 setIsContactWithWorkLocation:1];
                    }

                    else
                    {
                      v151 = [v146 label];
                      v152 = [v151 isEqualToString:CNLabelSchool];

                      if (v152)
                      {
                        [v54 setIsContactWithSchoolLocation:1];
                      }

                      else
                      {
                        [v54 setIsContactWithOtherLocation:1];
                      }
                    }
                  }
                }

                v143 = [v109 countByEnumeratingWithState:&v365 objects:v411 count:16];
              }

              while (v143);
            }

LABEL_258:

            goto LABEL_157;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v172 = 1;
            goto LABEL_214;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v325 sourceType] == 5 && objc_msgSend(v325, "sourceSubtype") == 5 || objc_msgSend(v325, "sourceType") != 5 || objc_msgSend(v325, "sourceSubtype") != 6)
            {
              v172 = 3;
            }

            else
            {
              v172 = 2;
            }

LABEL_214:
            [v54 setSuggestionType:v172];
LABEL_215:
            v98 = 0;
            goto LABEL_158;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v328 = obja;
            v173 = [v328 mapItem];
            v174 = [v173 _geoMapItem];
            v175 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v174;

            [v328 coordinate];
            v177 = v176;
            v179 = v178;
            v180 = [v328 type];
            if (v180 == 3)
            {
              v197 = 13;
            }

            else
            {
              if (v180 == 4)
              {
                [v54 setSuggestionType:11];
                v177 = v46;
                v179 = v307;
LABEL_243:
                v198 = v390;
                *(v390 + 4) = v177;
                v198[5] = v179;
                v199 = [v328 mapItem];
                v200 = [v199 _geoMapItem];
                v201 = [v200 _childItems];
                [v54 setIsProminentResult:{objc_msgSend(v201, "count") != 0}];

                if (v317)
                {
                  v202 = +[PlaceSummaryTemplateFactory autocompleteTemplateWithSearchResult:searchAlongRoute:](_TtC4Maps27PlaceSummaryTemplateFactory, "autocompleteTemplateWithSearchResult:searchAlongRoute:", v328, [v319 navigating]);
                  v203 = [v328 mapItem];
                  v204 = [a1 hyperlinkMetadataWithTemplate:v202 mapItem:v203 metadata:v317];
                  [v54 setHyperlinkMetadata:v204];
                }

LABEL_156:
                v98 = 0;
                goto LABEL_157;
              }

              v197 = 8;
            }

            [v54 setSuggestionType:v197];
            goto LABEL_243;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([obja conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItem])
            {
              v328 = obja;
              v109 = [v328 mapItem];
              v189 = [v109 _geoMapItem];
              v190 = *(*&buf[8] + 40);
              *(*&buf[8] + 40) = v189;

              if (v109)
              {
                [v109 _coordinate];
                v191 = v390;
                v390[4] = v192;
                v191[5] = v193;
              }

              v194 = [v328 address];
              v195 = v194 == 0;

              if (v195)
              {
                v210 = [v328 locationOfInterest];
                v211 = v210 == 0;

                if (v211)
                {
                  v212 = 10;
                }

                else
                {
                  v212 = 1;
                }

                [v54 setSuggestionType:v212];
                v98 = 0;
              }

              else
              {
                [v54 setSuggestionType:7];
                v196 = [v328 address];
                v98 = [v196 contact];
              }

              goto LABEL_258;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v205 = obja;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v206 = v205;
              }

              else
              {
                v206 = 0;
              }

              v328 = v206;

              [v328 originCoordinate];
              v98 = 0;
              v207 = v390;
              v390[4] = v208;
              v207[5] = v209;
              goto LABEL_157;
            }

            goto LABEL_215;
          }

          v328 = obja;
          v181 = [v328 type];
          if (v181 <= 4)
          {
            if ((v181 - 1) < 4)
            {
              v182 = 1;
              goto LABEL_231;
            }

LABEL_260:
            v182 = 10;
            goto LABEL_231;
          }

          switch(v181)
          {
            case 5:
              v182 = 4;
              goto LABEL_231;
            case 6:
              [v54 setSuggestionType:8];
              [v54 setIsFavorite:1];
              break;
            case 7:
              v182 = 12;
LABEL_231:
              [v54 setSuggestionType:v182];
              break;
            default:
              goto LABEL_260;
          }

          v183 = [v328 MKMapItem];
          v127 = v183;
          if (v183)
          {
            [v183 _coordinate];
            v184 = v390;
            v390[4] = v185;
            v184[5] = v186;
            v187 = [v127 _geoMapItem];
            v188 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v187;
          }

LABEL_155:

          goto LABEL_156;
        }

LABEL_262:
        v47 = v305 + 1;
      }

      while ((v305 + 1) != v304);
      v304 = [v306 countByEnumeratingWithState:&v394 objects:v418 count:16];
    }

    while (v304);
  }

  if (!v301)
  {
    goto LABEL_360;
  }

  v335 = +[NSMutableArray array];
  v333 = +[NSMutableArray array];
  v351 = +[NSMutableArray array];
  v347 = +[NSMutableArray array];
  v349 = +[NSMutableArray array];
  v363 = 0u;
  v364 = 0u;
  v361 = 0u;
  v362 = 0u;
  v318 = v306;
  v326 = [v318 countByEnumeratingWithState:&v361 objects:v410 count:16];
  if (!v326)
  {
    goto LABEL_305;
  }

  v324 = *v362;
  do
  {
    v213 = 0;
    do
    {
      if (*v362 != v324)
      {
        v214 = v213;
        objc_enumerationMutation(v318);
        v213 = v214;
      }

      v329 = v213;
      v339 = *(*(&v361 + 1) + 8 * v213);
      v215 = [v339 items];
      v216 = [v215 count] == 0;

      if (!v216)
      {
        v217 = 0;
        while (1)
        {
          v218 = [v321 objectAtIndexedSubscript:v217];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objb = [v321 objectAtIndexedSubscript:v217];

          if (objb)
          {
            v218 = [GEOMapItemStorage mapItemStorageForGEOMapItem:?];

            if (!v218)
            {
              goto LABEL_279;
            }

            [v335 addObject:v218];
            v219 = [NSNumber numberWithUnsignedInteger:v217];
            [v333 addObject:v219];

            goto LABEL_277;
          }

          objb = 0;
LABEL_279:
          v220 = [v320 objectAtIndexedSubscript:v217];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v221 = 0;
          }

          else
          {
            v221 = [v320 objectAtIndexedSubscript:v217];

            if (!v221)
            {
              goto LABEL_291;
            }

            if ([v351 count])
            {
              v222 = 0;
              v223 = 0;
              do
              {
                while (1)
                {
                  v224 = [v351 objectAtIndexedSubscript:v222];
                  v225 = [v224 identifier];
                  v226 = [v221 identifier];
                  v227 = [v225 isEqualToString:v226];

                  if ((v227 & 1) == 0)
                  {
                    break;
                  }

                  v228 = [v349 objectAtIndexedSubscript:v222];
                  v229 = [NSNumber numberWithUnsignedInteger:v217];
                  v230 = [v228 arrayByAddingObject:v229];
                  [v349 setObject:v230 atIndexedSubscript:v222];

                  ++v222;
                  v223 = 1;
                  if (v222 >= [v351 count])
                  {
                    goto LABEL_291;
                  }
                }

                ++v222;
              }

              while (v222 < [v351 count]);
              if (v223)
              {
                goto LABEL_291;
              }
            }

            v233 = [v221 postalAddresses];
            v234 = [v233 count] == 0;

            if (v234)
            {
              [v351 addObject:v221];
              v241 = +[NSNull null];
              [v347 addObject:v241];

              v220 = [NSNumber numberWithUnsignedInteger:v217];
              v407 = v220;
              v242 = [NSArray arrayWithObjects:&v407 count:1];
              [v349 addObject:v242];
            }

            else
            {
              v359 = 0u;
              v360 = 0u;
              v357 = 0u;
              v358 = 0u;
              v220 = [v221 postalAddresses];
              v235 = [v220 countByEnumeratingWithState:&v357 objects:v409 count:16];
              if (v235)
              {
                v236 = *v358;
                do
                {
                  for (m = 0; m != v235; m = m + 1)
                  {
                    if (*v358 != v236)
                    {
                      objc_enumerationMutation(v220);
                    }

                    v238 = *(*(&v357 + 1) + 8 * m);
                    [v351 addObject:v221];
                    [v347 addObject:v238];
                    v239 = [NSNumber numberWithUnsignedInteger:v217];
                    v408 = v239;
                    v240 = [NSArray arrayWithObjects:&v408 count:1];
                    [v349 addObject:v240];
                  }

                  v235 = [v220 countByEnumeratingWithState:&v357 objects:v409 count:16];
                }

                while (v235);
              }
            }
          }

LABEL_291:
          v231 = [v339 items];
          v232 = [v231 count];

          if (++v217 >= v232)
          {
            goto LABEL_303;
          }
        }

        objb = 0;
LABEL_277:

        goto LABEL_279;
      }

LABEL_303:
      v213 = v329 + 1;
    }

    while ((v329 + 1) != v326);
    v326 = [v318 countByEnumeratingWithState:&v361 objects:v410 count:16];
  }

  while (v326);
LABEL_305:

  if ([v335 count])
  {
    v243 = [v301 confidenceScoresForMapItems:v335];
  }

  else
  {
    v243 = 0;
  }

  if (+[AddressBookManager addressBookAllowed](AddressBookManager, "addressBookAllowed") && [v351 count])
  {
    objc = [v301 confidenceScoresForContacts:v351 addresses:v347];
  }

  else
  {
    objc = 0;
  }

  if ([v335 count])
  {
    v244 = 0;
    do
    {
      if ([v243 count] > v244)
      {
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v245 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
          {
            v246 = [v243 objectAtIndexedSubscript:v244];
            [v246 confidence];
            v248 = v247;
            v249 = [v243 objectAtIndexedSubscript:v244];
            v250 = [v249 lastInteractionTime];
            *buf = 134218242;
            *&buf[4] = v248;
            *&buf[12] = 2112;
            *&buf[14] = v250;
            _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEBUG, "confidence: %f, time: %@", buf, 0x16u);
          }
        }

        v251 = [v243 objectAtIndexedSubscript:v244];
        [v251 confidence];
        v253 = v252;

        v340 = [v243 objectAtIndexedSubscript:v244];
        v330 = [v340 lastInteractionTime];
        [v330 timeIntervalSinceNow];
        LODWORD(v251) = v254 >= 0.0;
        v255 = [v243 objectAtIndexedSubscript:v244];
        v256 = [v255 lastInteractionTime];
        [v256 timeIntervalSinceNow];
        if (!v251)
        {
          v257 = -v257;
        }

        v258 = 0.0;
        if (v257 > 0.0)
        {
          v327 = [v243 objectAtIndexedSubscript:v244];
          v259 = [v327 lastInteractionTime];
          [v259 timeIntervalSinceNow];
          v261 = v260 < 0.0;
          v262 = [v243 objectAtIndexedSubscript:v244];
          v263 = [v262 lastInteractionTime];
          [v263 timeIntervalSinceNow];
          if (v261)
          {
            v258 = -v264;
          }

          else
          {
            v258 = v264;
          }
        }

        v265 = [v333 objectAtIndexedSubscript:v244];
        v266 = [v265 unsignedIntegerValue];

        v267 = [v322 objectAtIndexedSubscript:v266];
        [v267 setMapsSuggestionsPoiRevelanceScore:v253];

        v268 = [v322 objectAtIndexedSubscript:v266];
        [v268 setTimeSinceLastInteractedSeconds:v258];
      }

      ++v244;
    }

    while (v244 < [v335 count]);
  }

  if ([v351 count])
  {
    v269 = 0;
    do
    {
      if ([objc count] > v269)
      {
        if (MapsSuggestionsLoggingIsVerbose())
        {
          v270 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v270, OS_LOG_TYPE_DEBUG))
          {
            v271 = [objc objectAtIndexedSubscript:v269];
            [v271 confidence];
            v273 = v272;
            v274 = [objc objectAtIndexedSubscript:v269];
            v275 = [v274 lastInteractionTime];
            *buf = 134218242;
            *&buf[4] = v273;
            *&buf[12] = 2112;
            *&buf[14] = v275;
            _os_log_impl(&_mh_execute_header, v270, OS_LOG_TYPE_DEBUG, "confidence: %f, time: %@", buf, 0x16u);
          }
        }

        v276 = [objc objectAtIndexedSubscript:v269];
        [v276 confidence];
        v278 = v277;

        v279 = [objc objectAtIndexedSubscript:v269];
        v341 = [v279 lastInteractionTime];
        [v341 timeIntervalSinceNow];
        LODWORD(v276) = v280 >= 0.0;
        v281 = [objc objectAtIndexedSubscript:v269];
        v282 = [v281 lastInteractionTime];
        [v282 timeIntervalSinceNow];
        if (!v276)
        {
          v283 = -v283;
        }

        v284 = 0.0;
        if (v283 > 0.0)
        {
          v331 = [objc objectAtIndexedSubscript:v269];
          v285 = [v331 lastInteractionTime];
          [v285 timeIntervalSinceNow];
          v287 = v286 < 0.0;
          v288 = [objc objectAtIndexedSubscript:v269];
          v289 = [v288 lastInteractionTime];
          [v289 timeIntervalSinceNow];
          if (v287)
          {
            v284 = -v290;
          }

          else
          {
            v284 = v290;
          }
        }

        v355 = 0u;
        v356 = 0u;
        v353 = 0u;
        v354 = 0u;
        v291 = [v349 objectAtIndexedSubscript:v269];
        v292 = [v291 countByEnumeratingWithState:&v353 objects:v406 count:16];
        if (v292)
        {
          v293 = *v354;
          do
          {
            for (n = 0; n != v292; n = n + 1)
            {
              if (*v354 != v293)
              {
                objc_enumerationMutation(v291);
              }

              v295 = [v322 objectAtIndexedSubscript:{objc_msgSend(*(*(&v353 + 1) + 8 * n), "unsignedIntegerValue")}];
              if (![v295 hasMapsSuggestionsContactRevelanceScore] || objc_msgSend(v295, "hasMapsSuggestionsContactRevelanceScore") && (objc_msgSend(v295, "mapsSuggestionsContactRevelanceScore"), v278 > v296))
              {
                [v295 setMapsSuggestionsContactRevelanceScore:v278];
              }

              if (![v295 hasTimeSinceLastInteractedSeconds] || v284 > 0.0 && (objc_msgSend(v295, "timeSinceLastInteractedSeconds"), v284 < v297))
              {
                [v295 setTimeSinceLastInteractedSeconds:v284];
              }
            }

            v292 = [v291 countByEnumeratingWithState:&v353 objects:v406 count:16];
          }

          while (v292);
        }
      }

      ++v269;
    }

    while (v269 < [v351 count]);
  }

LABEL_360:
  v298 = v322;

  return v322;
}

+ (id)acSuggestionEntriesFromAutoCompleteObjects:(id)a3 personalizedItems:(id)a4 context:(id)a5 mapsSuggestionsInsights:(id)a6 skipReportASearchItems:(BOOL)a7 traits:(id)a8 usedForLogging:(BOOL)a9 shouldUseDistanceFeatureServerResults:(BOOL)a10
{
  v11 = a7;
  v16 = a9;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  if ([v17 count])
  {
    v29 = [AutocompleteSection sectionWithTitle:0 items:v17 isQuerySuggestionsSection:0];
    v22 = a1;
    v23 = v11;
    v24 = v29;
    v25 = [NSArray arrayWithObjects:&v29 count:1];

    v11 = v23;
    a1 = v22;
    v16 = a9;
  }

  else
  {
    v25 = &__NSArray0__struct;
  }

  BYTE1(v28) = a10;
  LOBYTE(v28) = v16;
  v26 = [a1 acSuggestionEntriesFromSections:v25 personalizedItems:v18 context:v19 mapsSuggestionsInsights:v20 skipReportASearchItems:v11 selectedChildItemIndexPath:0 indexOfResultWithSelectedChildItem:0 traits:v21 usedForLogging:v28 shouldUseDistanceFeatureServerResults:0 placeSummaryMetadata:?];

  return v26;
}

+ (id)analyticsResultsInfoArrayFromAutoCompleteResultsArray:(id)a3 selectedIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  if ([v5 count])
  {
    v7 = 0;
    v37 = CRRecentContactMetadataFrom;
    v36 = CRRecentContactMetadataFromAddressKind;
    p_superclass = DroppedPinMapItemKey.superclass;
    v9 = &GEOMapsAuthEnvironmentKey_ptr;
    v34 = CRAddressKindPhoneNumber;
    v35 = CRAddressKindEmail;
    while (1)
    {
      v10 = [v5 objectAtIndexedSubscript:{v7, v34}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 autocompleteObject];

        v10 = v11;
      }

      v12 = objc_alloc_init(v9[125]);
      [v12 setSuggestionsAcType:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [v12 setSuggestionsAcType:10];
      if (a4 == v7)
      {
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setSuggestionsAcType:4];
        v15 = v10;
        [v15 historyEntry];
        v16 = v5;
        v17 = v6;
        v18 = p_superclass;
        v20 = v19 = a4;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v22 = 4;
        a4 = v19;
        p_superclass = v18;
        v6 = v17;
        v5 = v16;
        if (isKindOfClass)
        {
          goto LABEL_20;
        }

        v23 = [v15 historyEntry];
        objc_opt_class();
        v24 = objc_opt_isKindOfClass();

        if (v24)
        {
          v22 = 6;
          goto LABEL_20;
        }

        v25 = [v15 historyEntry];
        objc_opt_class();
        v26 = objc_opt_isKindOfClass();

        if (v26)
        {
          v22 = 5;
LABEL_20:
          [v12 setSuggestionsAcType:v22];
        }

        v9 = &GEOMapsAuthEnvironmentKey_ptr;
        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = 7;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v13 = v12;
        v14 = 1;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setSuggestionsAcType:3];
        v27 = [v10 metadata];
        v28 = [v27 objectForKeyedSubscript:v37];

        v9 = &GEOMapsAuthEnvironmentKey_ptr;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [v28 objectForKeyedSubscript:v36];
          if ([v29 isEqual:v35])
          {
            v30 = 3;
            goto LABEL_38;
          }

          if ([v29 isEqual:v34])
          {
            v30 = 2;
LABEL_38:
            [v12 setSuggestionsAcType:v30];
          }
        }

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v10;
        if ([v31 type] != 4 && objc_msgSend(v31, "type") != 3)
        {
          [v12 setSuggestionsAcType:8];
        }

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v10 type] - 1;
        if (v32 > 5)
        {
          v14 = 10;
        }

        else
        {
          v14 = dword_101215464[v32];
        }

        v13 = v12;
        goto LABEL_7;
      }

LABEL_22:
      [v6 addObject:v12];

      if (++v7 >= [v5 count])
      {
        goto LABEL_43;
      }
    }

    v13 = v12;
    v14 = 9;
LABEL_7:
    [v13 setSuggestionsAcType:v14];
    goto LABEL_22;
  }

LABEL_43:

  return v6;
}

@end