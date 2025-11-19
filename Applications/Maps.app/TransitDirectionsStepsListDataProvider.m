@interface TransitDirectionsStepsListDataProvider
- (GEOComposedRoute)route;
- (NSArray)items;
- (NSArray)segmentRanges;
- (TransitDirectionsStepsListDataProvider)initWithRoute:(id)a3 forGuidance:(BOOL)a4;
- (id)_artworksForIntraSystemTransferBetweenAlightingStep:(id)a3 andBoardingStep:(id)a4 currentLineColor:(id)a5;
- (id)_boardingInfoItemForStep:(id)a3;
- (id)_destinationItem;
- (id)_destinationTitle;
- (id)_enterItemForStep:(id)a3 passStop:(id)a4 previouslySkippedPassStops:(id)a5;
- (id)_exitItemForAlightStep:(id)a3;
- (id)_fareAndOperatingHoursItemForBlockTransferStep:(id)a3 lineColor:(id)a4 alternateLineColor:(id)a5 parentItem:(id)a6;
- (id)_imageForInterSystemTransferBetweenAlightingStep:(id)a3 andBoardingStep:(id)a4 currentLineColor:(id)a5 dimmedOrigin:(BOOL)a6;
- (id)_incidentItemWithIncidentMessage:(id)a3;
- (id)_itemAtIndexPath:(id)a3 currentPosition:(unint64_t)a4 inItems:(id)a5 includingHiddenSubitems:(BOOL)a6;
- (id)_itemAtIndexPath:(id)a3 includingHiddenSubitems:(BOOL)a4;
- (id)_mergeTransitRoutingIncidentsForSteps:(id)a3;
- (id)_nextLeaveStopStepAfterStep:(id)a3;
- (id)_nextStepAfterStep:(id)a3 withManeuvers:(id)a4 beforeManeuvers:(id)a5;
- (id)_nextStepWithManeuver:(int)a3 beforeManeuver:(int)a4;
- (id)_originItem;
- (id)_originTitle;
- (id)_passStopSubItemForSteps:(id)a3 boardStep:(id)a4 previousPassStop:(id)a5 currentRideDuration:(unsigned int)a6 fromLineColor:(id)a7 toLineColor:(id)a8;
- (id)_previousStepBeforeStep:(id)a3 withManeuvers:(id)a4 afterManeuver:(int)a5;
- (id)_titleForWaypoint:(id)a3;
- (id)_transitTripAlightItem;
- (id)_transitTripBoardItem;
- (id)_walkingItemForWalkingSegment:(id)a3 toBoardStep:(id)a4;
- (id)indexPathForItem:(id)a3;
- (unint64_t)_startRangeIndexForAlightItem:(id)a3;
- (unint64_t)indexForItem:(id)a3 inSection:(unint64_t)a4;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3 includingHiddenSubitems:(BOOL)a4;
- (unint64_t)numberOfSections;
- (void)_appendItem:(id)a3 toArray:(id)a4;
- (void)_buildItems;
- (void)_consumeTransitTripSegment;
- (void)_consumeWalkingSegment;
- (void)_debugPrintHierarchy;
- (void)_insertItem:(id)a3 atIndex:(unint64_t)a4 inArray:(id)a5;
- (void)_populateAccessPointArtworkForItem:(id)a3 fromStep:(id)a4;
- (void)_populateAccessPointArtworkForItem:(id)a3 fromStepsInPreferedOrder:(id)a4;
- (void)_populateStationArtworkForItem:(id)a3 fromStep:(id)a4;
- (void)_populateStationArtworkForItem:(id)a3 fromStepsInPreferedOrder:(id)a4;
- (void)_updateCurrentStepToIndex:(unint64_t)a3;
@end

@implementation TransitDirectionsStepsListDataProvider

- (GEOComposedRoute)route
{
  WeakRetained = objc_loadWeakRetained(&self->_route);

  return WeakRetained;
}

- (NSArray)segmentRanges
{
  mutableSegmentRanges = self->_mutableSegmentRanges;
  if (!mutableSegmentRanges)
  {
    [(TransitDirectionsStepsListDataProvider *)self _buildItems];
    mutableSegmentRanges = self->_mutableSegmentRanges;
  }

  return mutableSegmentRanges;
}

- (void)_populateAccessPointArtworkForItem:(id)a3 fromStepsInPreferedOrder:(id)a4
{
  v9 = a3;
  v5 = sub_100021DB0(a4, &stru_10162CC70);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _mapkit_transitArtworkImageWithDataSource:v6 size:5 scale:?];

    [v9 setMinorStringImage:v8];
  }
}

- (void)_populateAccessPointArtworkForItem:(id)a3 fromStep:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = a3;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v8 fromStepsInPreferedOrder:v9, v10];
  }

  else
  {
    v9 = a3;
    [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v9 fromStepsInPreferedOrder:&__NSArray0__struct];
  }
}

- (void)_populateStationArtworkForItem:(id)a3 fromStepsInPreferedOrder:(id)a4
{
  v10 = a3;
  v5 = a4;
  if ([v10 type] != 8)
  {
    v6 = sub_100021DB0(v5, &stru_10162CC50);
    v7 = [v6 firstObject];

    if (v7)
    {
      v8 = +[UIScreen mainScreen];
      [v8 scale];
      v9 = [UIImage _mapkit_transitArtworkImageWithDataSource:v7 size:7 scale:?];

      [v10 setMajorStringImage:v9];
    }
  }
}

- (void)_populateStationArtworkForItem:(id)a3 fromStep:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = a3;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [(TransitDirectionsStepsListDataProvider *)self _populateStationArtworkForItem:v8 fromStepsInPreferedOrder:v9, v10];
  }

  else
  {
    v9 = a3;
    [(TransitDirectionsStepsListDataProvider *)self _populateStationArtworkForItem:v9 fromStepsInPreferedOrder:&__NSArray0__struct];
  }
}

- (id)_artworksForIntraSystemTransferBetweenAlightingStep:(id)a3 andBoardingStep:(id)a4 currentLineColor:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 _maps_hexString];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v7 transitLine];
    v11 = [v12 lineColorString];
  }

  v13 = [v8 transitLine];

  v14 = [v13 lineColorString];

  v15 = [MKTransitArtwork stationNodeArtworkWithHexColor:v11];
  v16 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:v14];
  v17 = +[NSMutableDictionary dictionary];
  v18 = v17;
  if (v15)
  {
    [v17 setObject:v15 forKeyedSubscript:&off_1016E7598];
  }

  if (v16)
  {
    [v18 setObject:v16 forKeyedSubscript:&off_1016E75B0];
    [v18 setObject:v16 forKeyedSubscript:&off_1016E7580];
    [v18 setObject:v16 forKeyedSubscript:&off_1016E75C8];
    [v18 setObject:v16 forKeyedSubscript:&off_1016E75E0];
  }

  return v18;
}

- (id)_imageForInterSystemTransferBetweenAlightingStep:(id)a3 andBoardingStep:(id)a4 currentLineColor:(id)a5 dimmedOrigin:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = [v9 transitLine];
  v22 = [v21 lineColorString];
  v13 = [UIColor _maps_colorFromHexString:v22];

  if (v6)
  {
LABEL_3:
    v14 = [v13 colorWithAlphaComponent:0.300000012];

    v13 = v14;
  }

LABEL_4:
  v15 = [v13 _maps_hexString];
  v16 = [v10 transitLine];
  v17 = [v16 lineColorString];
  v18 = +[UIScreen mainScreen];
  [v18 scale];
  v19 = [UIImage interSystemTransferFromHexColor:v15 toHexColor:v17 imageWithSize:4 scale:0 darkMode:?];

  return v19;
}

- (id)_nextStepAfterStep:(id)a3 withManeuvers:(id)a4 beforeManeuvers:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 maneuver];
    }

    else
    {
      v10 = 0;
    }

    v11 = [NSNumber numberWithInt:v10];
    if ([v8 containsObject:v11])
    {
      v12 = v7;
      goto LABEL_10;
    }

    if (!v10 || [v9 containsObject:v11])
    {
      break;
    }

    v12 = 0;
LABEL_10:
    v13 = [v7 getNextStep];

    if (!v12)
    {
      v7 = v13;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
  v13 = v7;
LABEL_15:

  return v12;
}

- (id)_previousStepBeforeStep:(id)a3 withManeuvers:(id)a4 afterManeuver:(int)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 maneuver];
    }

    else
    {
      v9 = 0;
    }

    v10 = [NSNumber numberWithInt:v9];
    if ([v8 containsObject:v10])
    {
      v11 = v7;
      goto LABEL_10;
    }

    if (!v9 || v9 == a5)
    {
      break;
    }

    v11 = 0;
LABEL_10:
    v12 = [v7 getPreviousStep];

    if (!v11)
    {
      v7 = v12;
      if (v12)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v11 = 0;
  v12 = v7;
LABEL_15:

  return v11;
}

- (id)_nextStepWithManeuver:(int)a3 beforeManeuver:(int)a4
{
  v4 = *&a4;
  currentStep = self->_currentStep;
  v7 = [NSNumber numberWithInt:*&a3];
  v8 = [NSSet setWithObject:v7];
  v9 = [NSNumber numberWithInt:v4];
  v10 = [NSSet setWithObject:v9];
  v11 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:currentStep withManeuvers:v8 beforeManeuvers:v10];

  return v11;
}

- (unint64_t)_startRangeIndexForAlightItem:(id)a3
{
  v3 = a3;
  v4 = [v3 stepIndex];
  v5 = [v3 getPreviousStep];
  if (v5)
  {
    v6 = v5;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if ([v6 maneuver] != 4)
      {
        break;
      }

      v7 = [v6 transitVehicle];
      v8 = [v7 pickupDropoffType];

      if (v8 != 100)
      {
        break;
      }

      v4 = [v6 stepIndex];
      v9 = [v6 getPreviousStep];

      v6 = v9;
    }

    while (v9);
  }

  return v4;
}

- (id)_nextLeaveStopStepAfterStep:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObject:&off_1016E7508];
  v6 = [NSSet setWithObjects:&off_1016E7538, &off_1016E7520, 0];
  v7 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:v4 withManeuvers:v5 beforeManeuvers:v6];

  return v7;
}

- (id)_walkingItemForWalkingSegment:(id)a3 toBoardStep:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TransitDirectionsListItemWalking alloc] initWithWalkingSegment:v6 toBoardStep:v5];

  return v7;
}

- (void)_consumeWalkingSegment
{
  v3 = sub_10088E298();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v26 = 136315138;
    v27 = "[TransitDirectionsStepsListDataProvider _consumeWalkingSegment]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v26, 0xCu);
  }

  v4 = [(TransitDirectionsStepsListDataProvider *)self route];
  v5 = [v4 segmentForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_currentStep, "stepIndex")}];

  v6 = [v5 lastWalkingStep];
  v7 = [v6 getNextStep];
  v8 = [NSSet setWithObject:&off_1016E7550];
  v9 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:v7 withManeuvers:v8 beforeManeuvers:0];

  if (self->_forGuidance)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TransitDirectionsStepsListDataProvider *)self _walkingItemForWalkingSegment:v5 toBoardStep:v10];
  v12 = [v11 majorFormattedStrings];
  v13 = [v12 firstObject];
  v14 = [v13 stringWithDefaultOptions];

  if ([v14 length])
  {
    [(TransitDirectionsStepsListDataProvider *)self _appendItem:v11 toArray:self->_mutableItems];
    mutableSegmentRanges = self->_mutableSegmentRanges;
    v16 = [NSValue valueWithRange:self->_segmentRangeLocation, 1];
    [(NSMutableArray *)mutableSegmentRanges addObject:v16];

    ++self->_segmentRangeLocation;
  }

  v17 = [v5 stepRange];
  [(TransitDirectionsStepsListDataProvider *)self _updateCurrentStepToIndex:&v17[v18]];
  v19 = [(GEOComposedRouteStep *)self->_currentStep transitStep];
  v20 = [v19 maneuverType];

  if ((v20 & 0xFFFFFFFE) == 6)
  {
    v21 = sub_10088E298();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = @"TRANSFER_STOP_TO_STOP";
      if (v20 == 7)
      {
        v22 = @"GOTO_STOP";
      }

      v26 = 138412290;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "- including next %@", &v26, 0xCu);
    }

    v23 = [v11 composedRouteSteps];
    v24 = [v23 mutableCopy];

    [v24 addObject:self->_currentStep];
    v25 = [v24 copy];
    [v11 setComposedRouteSteps:v25];

    [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
  }
}

- (id)_mergeTransitRoutingIncidentsForSteps:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v29)
  {
    v28 = *v36;
    *&v6 = 134218240;
    v25 = v6;
    v26 = v5;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v35 + 1) + 8 * i);
        v9 = [v8 advisories];

        if (v9)
        {
          v30 = i;
          v10 = [v8 advisories];
          [v5 addObjectsFromArray:v10];

          v11 = sub_10088E298();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = [v5 count];
            v13 = [obj count];
            *buf = v25;
            v41 = v12;
            v42 = 2048;
            v43 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "- found %lu advisories across %lu steps", buf, 0x16u);
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = v5;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v31 + 1) + 8 * j);
                v20 = [MergedTransitRoutingIncidentMessage alloc];
                v21 = [v8 transitIncidents];
                v22 = [(MergedTransitRoutingIncidentMessage *)v20 initWithGEOComposedRouteAdvisory:v19 transitIncidents:v21];

                [v4 addObject:v22];
              }

              v16 = [v14 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v16);
          }

          v5 = v26;
          i = v30;
        }
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v29);
  }

  v23 = [v4 copy];

  return v23;
}

- (id)_incidentItemWithIncidentMessage:(id)a3
{
  v3 = a3;
  v4 = [[TransitDirectionsListItemIncident alloc] initWithIncidentMessage:v3];

  return v4;
}

- (id)_fareAndOperatingHoursItemForBlockTransferStep:(id)a3 lineColor:(id)a4 alternateLineColor:(id)a5 parentItem:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[NSMutableArray alloc] initWithCapacity:2];
  if ([v9 maneuver] != 9)
  {
    v53 = v12;
    v14 = [v9 transitLine];
    v15 = [v14 operatingHours];

    v16 = [v15 count];
    v17 = [v9 composedRoute];
    v18 = [v17 shouldShowSchedule];

    if ((v18 & 1) == 0 && v16)
    {
      v51 = v11;
      v52 = v10;
      v19 = [[NSMutableArray alloc] initWithCapacity:v16];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v50 = v15;
      v20 = v15;
      v21 = [v20 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v56;
        do
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v56 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v55 + 1) + 8 * i);
            [v25 startTime];
            v27 = v26;
            [v25 duration];
            if (v28 > 0.0)
            {
              v29 = v28;
              v30 = [NSDate dateWithTimeIntervalSinceReferenceDate:v27];
              v31 = [NSDate dateWithTimeInterval:v30 sinceDate:v29];
              [v19 addObject:v30];
              [v19 addObject:v31];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v22);
      }

      v11 = v51;
      if ([v19 count])
      {
        v32 = [v9 startingStop];
        v33 = [v32 timezone];
        v34 = [NSTimeZone timeZoneWithName:v33];

        v35 = [NSString _navigation_formattedStringForHourRanges:v19 timeZone:v34];
        v36 = +[NSBundle mainBundle];
        v37 = [v36 localizedStringForKey:@"Transit_List_Operating_Hours" value:@"localized string not found" table:0];

        v38 = v37;
        v39 = v35;
        v40 = [NSString stringWithValidatedFormat:v37 validFormatSpecifiers:@"%@" error:0, v35];
        v41 = [[GEOComposedString alloc] initWithString:v40];
        [v13 addObject:v41];
        v42 = sub_10088E298();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "- adding operating hours", buf, 2u);
        }
      }

      v10 = v52;
      v15 = v50;
    }

    v12 = v53;
  }

  v43 = [v9 instructions];
  v44 = [v43 transitListInstruction];
  v45 = [v44 priceFormatteds];
  v46 = [v45 _geo_map:&stru_10162CC10];

  if ([v46 count])
  {
    v47 = sub_10088E298();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "- adding fares", buf, 2u);
    }
  }

  [v13 addObjectsFromArray:v46];
  if ([v13 count])
  {
    v48 = objc_alloc_init(TransitDirectionsListItem);
    [(TransitDirectionsListItem *)v48 setType:15];
    [(TransitDirectionsListItem *)v48 setParentItem:v12];
    [(TransitDirectionsListItem *)v48 setFromLineColor:v10];
    [(TransitDirectionsListItem *)v48 setToLineColor:v10];
    [(TransitDirectionsListItem *)v48 setAlternateFromLineColor:v11];
    [(TransitDirectionsListItem *)v48 setAlternateToLineColor:v11];
    [(TransitDirectionsListItem *)v48 setMajorFormattedStrings:v13];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)_exitItemForAlightStep:(id)a3
{
  v4 = a3;
  v5 = [(TransitDirectionsStepsListDataProvider *)self _nextLeaveStopStepAfterStep:v4];
  v6 = [v4 nextTransitStep];
  if ([v6 maneuver] == 6)
  {
    v7 = [v4 nextTransitStep];
  }

  else
  {
    v7 = 0;
  }

  if (v5 | v7)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v8;
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    [v8 setObject:v10 forKeyedSubscript:&off_1016E7580];
  }

  else
  {
    v9 = 0;
  }

  v37 = v9;
  v11 = [MNTransitStepInstruction instructionForStep:v4 overrides:v9 context:[TransitDirectionsListItem defaultInstructionContextForItemType:11 forGuidance:self->_forGuidance]];
  v38 = &off_1016E7568;
  v12 = [(UIColor *)self->_currentLineColor _maps_hexString];
  v13 = [MKTransitArtwork stationNodeArtworkWithHexColor:v12];
  v39 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];

  v36 = v14;
  v15 = [[TransitDirectionsListArtworkItem alloc] initWithArtworks:v14 instructions:v11];
  v16 = v15;
  if (self->_forGuidance)
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  [(TransitDirectionsListArtworkItem *)v15 setSelectedSize:v17];
  [(TransitDirectionsListArtworkItem *)v16 setAdaptiveShieldSize:0];
  v18 = [v11 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v16 setPrimaryAccessoryString:v18];

  v19 = [v11 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v16 setSecondaryAccessoryString:v19];

  -[TransitDirectionsListItem setHideAccessoryStringsWhenCollapsed:](v16, "setHideAccessoryStringsWhenCollapsed:", [v11 hideTimeInstructionsWhenCollapsed]);
  v20 = [(TransitDirectionsListItem *)v16 badges];
  v21 = [v20 count];

  if (!v21 && v7)
  {
    v22 = [v7 transitStep];
    v23 = [v22 badges];
    [(TransitDirectionsListItem *)v16 setBadges:v23];
  }

  [(TransitDirectionsListItem *)v16 setType:11];
  [(TransitDirectionsListItem *)v16 setFromLineColor:self->_currentLineColor];
  [(TransitDirectionsListItem *)v16 setToLineColor:0];
  v24 = [(TransitDirectionsStepsListDataProvider *)self _startRangeIndexForAlightItem:v4];
  if (v5)
  {
    v25 = v5;
  }

  else
  {
    v25 = v4;
  }

  v26 = [v25 stepIndex];
  v27 = [v4 composedRoute];
  v28 = [v27 steps];
  v29 = [v28 subarrayWithRange:{v24, &v26[-v24 + 1]}];
  [(TransitDirectionsListItem *)v16 setComposedRouteSteps:v29];

  v30 = [v4 composedRoute];
  v31 = [v30 steps];
  v32 = [v31 subarrayWithRange:{objc_msgSend(v4, "stepIndex"), v26 - objc_msgSend(v4, "stepIndex") + 1}];
  [(TransitDirectionsListItem *)v16 setComposedRouteStepsDisplayedOnMap:v32];

  v33 = +[NSMutableArray array];
  v34 = v33;
  if (v5)
  {
    [v33 addObject:v5];
  }

  if (v4)
  {
    [v34 addObject:v4];
  }

  [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v16 fromStepsInPreferedOrder:v34];

  return v16;
}

- (id)_enterItemForStep:(id)a3 passStop:(id)a4 previouslySkippedPassStops:(id)a5
{
  v8 = a3;
  v9 = a4;
  forGuidance = self->_forGuidance;
  v11 = a5;
  v12 = [MNTransitStepInstruction instructionForStep:v9 context:[TransitDirectionsListItem defaultInstructionContextForItemType:10 forGuidance:forGuidance]];
  v13 = [v9 transitLine];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v8 nextBoardingStep];
    v15 = [v16 transitLine];
  }

  v32 = &off_1016E7568;
  v17 = [v15 lineColorString];
  v18 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:v17];
  v33 = v18;
  v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v20 = [[TransitDirectionsListArtworkItem alloc] initWithArtworks:v19 instructions:v12];
  v21 = v20;
  if (self->_forGuidance)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  [(TransitDirectionsListArtworkItem *)v20 setSelectedSize:v22];
  [(TransitDirectionsListArtworkItem *)v21 setAdaptiveShieldSize:0];
  v23 = [v12 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v21 setPrimaryAccessoryString:v23];

  v24 = [v12 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v21 setSecondaryAccessoryString:v24];

  -[TransitDirectionsListItem setHideAccessoryStringsWhenCollapsed:](v21, "setHideAccessoryStringsWhenCollapsed:", [v12 hideTimeInstructionsWhenCollapsed]);
  [(TransitDirectionsListItem *)v21 setType:10];
  [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v21 fromStep:v9];
  if (v15)
  {
    v25 = [UIColor _mapkit_colorForTransitLine:v15];
  }

  else
  {
    v25 = 0;
  }

  currentLineColor = self->_currentLineColor;
  self->_currentLineColor = v25;

  [(TransitDirectionsListItem *)v21 setFromLineColor:0];
  [(TransitDirectionsListItem *)v21 setToLineColor:self->_currentLineColor];
  v27 = objc_alloc_init(NSMutableArray);
  v28 = v27;
  if (v9)
  {
    v29 = v9;
  }

  else
  {
    v29 = v8;
  }

  [v27 addObject:v29];
  [v28 addObjectsFromArray:v11];

  v30 = [v28 copy];
  [(TransitDirectionsListItem *)v21 setComposedRouteSteps:v30];

  return v21;
}

- (id)_passStopSubItemForSteps:(id)a3 boardStep:(id)a4 previousPassStop:(id)a5 currentRideDuration:(unsigned int)a6 fromLineColor:(id)a7 toLineColor:(id)a8
{
  v11 = a3;
  v32 = &off_1016E7568;
  if (a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = a7;
  }

  v13 = a8;
  v14 = a7;
  v15 = [v12 _maps_hexString];
  v16 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:v15];
  v33 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v18 = [[TransitDirectionsListArtworkItem alloc] initWithArtworks:v17 instructions:0];
  [(TransitDirectionsListItem *)v18 setType:5];
  v19 = [v11 firstObject];
  v20 = [MNTransitStepInstruction instructionForStep:v19 context:[TransitDirectionsListItem defaultInstructionContextForItemType:5 forGuidance:self->_forGuidance]];
  v21 = [v20 majorInstructionStrings];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [v20 majorInstructionStrings];
    [(TransitDirectionsListItem *)v18 setMajorFormattedStrings:v23];
  }

  else
  {
    v23 = [v19 originStopIntermediateListName];
    if (v23)
    {
      v24 = [[GEOComposedString alloc] initWithString:v23];
      v31 = v24;
      v25 = [NSArray arrayWithObjects:&v31 count:1];
      [(TransitDirectionsListItem *)v18 setMajorFormattedStrings:v25];
    }
  }

  v26 = [v20 minorInstructionStrings];
  [(TransitDirectionsListItem *)v18 setMinorFormattedStrings:v26];

  v27 = [v20 tertiaryInstructionStrings];
  [(TransitDirectionsListItem *)v18 setTertiaryFormattedStrings:v27];

  v28 = [v20 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v18 setPrimaryAccessoryString:v28];

  v29 = [v20 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v18 setSecondaryAccessoryString:v29];

  [(TransitDirectionsListItem *)v18 setFromLineColor:v14];
  [(TransitDirectionsListItem *)v18 setToLineColor:v13];

  [(TransitDirectionsListArtworkItem *)v18 setSelectedSize:2];
  [(TransitDirectionsListArtworkItem *)v18 setAdaptiveShieldSize:0];
  [(TransitDirectionsListItem *)v18 setComposedRouteSteps:v11];

  return v18;
}

- (id)_boardingInfoItemForStep:(id)a3
{
  v3 = a3;
  v4 = [v3 boardingInfo];
  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = [[TransitDirectionsListBoardingInfoItem alloc] initWithBoardingInfo:v5];

    goto LABEL_7;
  }

  v7 = [v3 instructions];
  v8 = [v7 transitListInstruction];
  v9 = [v8 hasTimeInstructions];

  if (v9)
  {
    v5 = objc_alloc_init(GEOTransitBoardingInfo);
    v10 = objc_alloc_init(GEOTransitBoardingInfoEntry);
    v11 = [v3 instructions];
    v12 = [v11 transitListInstruction];
    v13 = [v12 timeInstructions];
    [v10 setMainTimeInstruction:v13];

    [v5 addEntry:v10];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_transitTripAlightItem
{
  v121 = self->_currentStep;
  v3 = sub_10088E298();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "- creating TRIP item for trip", buf, 2u);
  }

  v120 = objc_alloc_init(NSMutableArray);
  v125 = objc_alloc_init(NSMutableArray);
  v113 = objc_alloc_init(NSMutableArray);
  currentStep = self->_currentStep;
  v5 = [NSSet setWithObject:&off_1016E74F0];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:currentStep withManeuvers:v5 beforeManeuvers:0];

  v7 = [[TransitDirectionsListItemTransitTrip alloc] initWithTripStep:v6];
  [(TransitDirectionsListItem *)v7 setType:3];
  location = &self->_currentLineColor;
  if (!self->_currentLineColor)
  {
    v8 = [(__CFString *)v6 transitLine];
    v9 = [UIColor _mapkit_colorForTransitLine:v8];
    v10 = *location;
    *location = v9;
  }

  v117 = v6;
  [(TransitDirectionsListItemTransitTrip *)v7 setExpanded:0];
  [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
  v11 = self->_currentStep;
  if (v11)
  {
    v12 = v11;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(GEOComposedRouteStep *)v12 maneuver]!= 4)
      {
        break;
      }

      v13 = [(GEOComposedRouteStep *)v12 transitVehicle];
      v14 = v12;
      v15 = [v13 pickupDropoffType];

      v118 = v14;
      if (v15 != 100)
      {
        goto LABEL_15;
      }

      v16 = sub_10088E298();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "- skipping pre-ENTER pass stop: %@", buf, 0xCu);
      }

      [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
      v17 = self->_currentStep;

      v12 = v17;
    }

    while (v12);
    v118 = v12;
  }

  else
  {
    v118 = 0;
  }

LABEL_15:
  LODWORD(v18) = 0;
  v126 = 0;
  v119 = 0;
  v124 = v7;
  do
  {
    v19 = self->_currentStep;
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = sub_100890904;
    v143[3] = &unk_10162CBD0;
    v143[4] = self;
    v20 = v7;
    v144 = v20;
    v134 = v125;
    v145 = v134;
    v21 = objc_retainBlock(v143);
    v132 = v21;
    if ([(GEOComposedRouteStep *)v19 maneuver]== 9)
    {
      v22 = v21[2](v21, v19);
      v23 = [(GEOComposedRouteStep *)v19 transitLine];
      v24 = [UIColor _mapkit_colorForTransitLine:v23];
      v25 = *location;
      *location = v24;
    }

    else
    {
      v22 = 0;
    }

    if ([(GEOComposedRouteStep *)v19 maneuver]!= 4 && v22 == 0)
    {
      v54 = 0;
      goto LABEL_82;
    }

    v129 = v20;
    v27 = [(GEOComposedRouteStep *)v19 transitLine];
    obj = [UIColor _mapkit_colorForTransitLine:v27];

    v28 = [(GEOComposedRouteStep *)v19 duration];
    v29 = [[NSMutableArray alloc] initWithObjects:{v19, 0}];
    v30 = 0;
    if (!v126)
    {
      v30 = objc_alloc_init(NSMutableArray);
    }

    v131 = v29;
    v18 = v28 + v18;
    v31 = [(GEOComposedRouteStep *)self->_currentStep getNextStep];
    if (!v31)
    {
LABEL_52:
      v41 = 0;
      goto LABEL_58;
    }

    v32 = v31;
    while (1)
    {
      v33 = v32;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 maneuver] == 4)
      {
        v34 = [v33 transitVehicle];
        v35 = [v34 pickupDropoffType];

        if (v35 == 100)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      v36 = v33;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v36 maneuver] == 9)
      {
        v37 = [v36 originStop];
        v38 = [v37 muid];
        v39 = [v36 destinationStop];
        v40 = [v39 muid];

        if (v38 == v40)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

      v41 = v36;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v43 = v41;
        goto LABEL_56;
      }

      v42 = [(__CFString *)v41 maneuver];

      if (v42 != 9)
      {
        goto LABEL_57;
      }

      v43 = [(__CFString *)v41 originStop];
      v44 = [v43 muid];
      v45 = [(__CFString *)v41 destinationStop];
      if (v44 == [v45 muid])
      {
        break;
      }

      v46 = [(__CFString *)v41 transitVehicle];
      v47 = [v46 pickupDropoffType];

      if (v47 != 100)
      {
        goto LABEL_58;
      }

LABEL_41:
      v48 = v33;

      v49 = [v48 duration];
      v19 = v48;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [(GEOComposedRouteStep *)v19 maneuver];

        if (v50 == 9 && (v132[2](v132, v19) & 1) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v51 = v19;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(GEOComposedRouteStep *)v51 maneuver]!= 4)
      {

        goto LABEL_51;
      }

      v52 = [(GEOComposedRouteStep *)v51 transitVehicle];
      v53 = [v52 pickupDropoffType];

      if (v53 == 100)
      {
LABEL_49:
        [v131 addObject:v19];
        [v30 addObject:v19];
      }

LABEL_51:
      v18 = v49 + v18;
      [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
      v32 = [(GEOComposedRouteStep *)self->_currentStep getNextStep];

      if (!v32)
      {
        goto LABEL_52;
      }
    }

LABEL_56:
LABEL_57:

LABEL_58:
    v123 = v30;
    if (v126)
    {
      v55 = sub_10088E298();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        if ([v131 count] <= 1)
        {
          v56 = @" ";
        }

        else
        {
          v56 = @"\n-| ";
        }

        v57 = [v131 count];
        if (v57 < 2)
        {
          v58 = [v131 firstObject];
          v59 = v58;
        }

        else
        {
          v115 = [v131 valueForKey:@"description"];
          v58 = [v115 componentsJoinedByString:@"\n-| "];
          v114 = v58;
          v59 = v116;
        }

        *buf = 138412546;
        v149 = v56;
        v150 = 2112;
        v151 = v58;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "- adding PASS_STOP item for:%@%@", buf, 0x16u);
        v65 = v59;
        if (v57 >= 2)
        {

          v65 = v115;
        }

        v116 = v59;
      }

      v66 = [v120 lastObject];
      v60 = [v66 composedRouteSteps];

      v67 = [v60 firstObject];
      v61 = [(TransitDirectionsStepsListDataProvider *)self _passStopSubItemForSteps:v131 boardStep:v121 previousPassStop:v67 currentRideDuration:v18 fromLineColor:self->_currentLineColor toLineColor:obj];

      [(__CFString *)v61 setParentItem:v129];
      [(TransitDirectionsStepsListDataProvider *)self _appendItem:v61 toArray:v120];
      objc_storeStrong(location, obj);
    }

    else
    {
      v60 = [NSSet setWithObjects:&off_1016E7508, &off_1016E7520, &off_1016E7538, 0];
      v61 = [(TransitDirectionsStepsListDataProvider *)self _previousStepBeforeStep:v121 withManeuvers:v60 afterManeuver:1];
      v62 = sub_10088E298();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v61;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "- creating ENTER item for boarding step: %@", buf, 0xCu);
      }

      v63 = [v131 firstObject];
      v64 = [(TransitDirectionsStepsListDataProvider *)self _enterItemForStep:v61 passStop:v63 previouslySkippedPassStops:v30];

      v126 = v64;
      [v64 setParentItem:v129];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = v129;
LABEL_80:
      v54 = 0;
      v71 = 1;
      goto LABEL_81;
    }

    if ([(__CFString *)v41 maneuver]!= 5)
    {
      v20 = v129;
      goto LABEL_80;
    }

    v68 = sub_10088E298();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v149 = v41;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEBUG, "- creating EXIT item for alight step: %@", buf, 0xCu);
    }

    v69 = v41;
    v70 = [(TransitDirectionsStepsListDataProvider *)self _exitItemForAlightStep:v69];

    v20 = v129;
    [v70 setParentItem:v129];
    objc_storeStrong(location, obj);
    [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
    v71 = 0;
    v54 = 1;
    v119 = v70;
    v117 = v69;
LABEL_81:

    v21 = v132;
    if (v71)
    {
LABEL_82:
      [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
    }

    v7 = v124;
  }

  while (!v54);
  v72 = v20;
  if ([v120 count])
  {
    v73 = [v120 firstObject];
    v74 = objc_alloc_init(TransitDirectionsListItem);
    [(TransitDirectionsListItem *)v74 setType:6];
    [(TransitDirectionsListItem *)v74 setParentItem:v20];
    v75 = [v73 fromLineColor];
    [(TransitDirectionsListItem *)v74 setFromLineColor:v75];

    v76 = [v73 toLineColor];
    [(TransitDirectionsListItem *)v74 setToLineColor:v76];

    v77 = [v73 alternateFromLineColor];
    [(TransitDirectionsListItem *)v74 setAlternateFromLineColor:v77];

    v78 = [v73 alternateToLineColor];
    [(TransitDirectionsListItem *)v74 setAlternateToLineColor:v78];

    [v120 insertObject:v74 atIndex:0];
  }

  [(TransitDirectionsListItemTransitTrip *)v20 setExpandedItems:v120];
  v79 = +[NSMutableArray array];
  v80 = v79;
  if (v117)
  {
    [v79 addObject:?];
  }

  v81 = [(GEOComposedRouteStep *)v121 getNextStep];
  v82 = [NSSet setWithObjects:&off_1016E7508, 0];
  v83 = [NSSet setWithObjects:&off_1016E7550, 0];
  v84 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:v81 withManeuvers:v82 beforeManeuvers:v83];

  if (v84)
  {
    [v80 addObject:v84];
  }

  obja = v84;
  v130 = v80;
  [(TransitDirectionsStepsListDataProvider *)self _mergeTransitRoutingIncidentsForSteps:v80];
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v133 = v142 = 0u;
  v85 = [v133 countByEnumeratingWithState:&v139 objects:v147 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v140;
    do
    {
      for (i = 0; i != v86; i = i + 1)
      {
        if (*v140 != v87)
        {
          objc_enumerationMutation(v133);
        }

        v89 = *(*(&v139 + 1) + 8 * i);
        v90 = [v89 routingMessage];
        v91 = [v90 length];

        if (v91)
        {
          self->_hasIncidentItems = 1;
          v92 = [(TransitDirectionsStepsListDataProvider *)self _incidentItemWithIncidentMessage:v89];
          v93 = sub_10088E298();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            v94 = [v89 routingMessage];
            *buf = 138477827;
            v149 = v94;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEBUG, "- adding merged incidents item: %{private}@", buf, 0xCu);
          }

          [v92 setParentItem:v72];
          [(TransitDirectionsStepsListDataProvider *)self _appendItem:v92 toArray:v134];
        }
      }

      v86 = [v133 countByEnumeratingWithState:&v139 objects:v147 count:16];
    }

    while (v86);
  }

  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v126 toArray:v134];
  v95 = sub_10088E298();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, "- added board pass item", buf, 2u);
  }

  [(TransitDirectionsStepsListDataProvider *)self _insertItem:v119 atIndex:0 inArray:v113];
  v96 = sub_10088E298();
  v97 = v72;
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEBUG, "- added alight pass item", buf, 2u);
  }

  v98 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v120, "count") + 2}];
  v99 = [v126 composedRouteSteps];
  [v98 addObjectsFromArray:v99];

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v100 = v120;
  v101 = [v100 countByEnumeratingWithState:&v135 objects:v146 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v136;
    do
    {
      for (j = 0; j != v102; j = j + 1)
      {
        if (*v136 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = [*(*(&v135 + 1) + 8 * j) composedRouteSteps];
        [v98 addObjectsFromArray:v105];
      }

      v102 = [v100 countByEnumeratingWithState:&v135 objects:v146 count:16];
    }

    while (v102);
  }

  v106 = [v119 composedRouteSteps];
  [v98 addObjectsFromArray:v106];

  [(TransitDirectionsListItem *)v97 setComposedRouteStepsDisplayedOnMap:v98];
  v107 = objc_alloc_init(TransitDirectionsListItem);
  [(TransitDirectionsListItem *)v107 setType:7];
  [(TransitDirectionsListItem *)v107 setParentItem:v97];
  v108 = [v126 toLineColor];
  [(TransitDirectionsListItem *)v107 setFromLineColor:v108];

  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v107 toArray:v134];
  v109 = sub_10088E298();
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
  {
    v110 = [v100 count];
    *buf = 134217984;
    v149 = v110;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEBUG, "- added expand item representing %lu hidden items", buf, 0xCu);
  }

  ++self->_segmentRangeLength;
  [(TransitDirectionsListItem *)v97 setPostTertiaryItems:v134];
  [(TransitDirectionsListItem *)v97 setFooterItems:v113];
  v111 = v97;

  return v97;
}

- (id)_transitTripBoardItem
{
  v3 = self->_currentStep;
  v4 = sub_10088E298();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "- creating BOARD item for trip", buf, 2u);
  }

  v5 = [(GEOComposedRouteStep *)v3 routeDetailsPrimaryArtwork];
  v6 = [v5 firstObject];

  v45 = [MNTransitStepInstruction instructionForStep:v3 context:[TransitDirectionsListItem defaultInstructionContextForItemType:2 forGuidance:self->_forGuidance]];
  v46 = v6;
  v7 = [[TransitDirectionsListArtworkItem alloc] initWithArtwork:v6 instructions:v45];
  v8 = [(GEOComposedRouteStep *)v3 transitStep];
  v9 = [v8 badges];
  v10 = [v9 copy];
  [(TransitDirectionsListItem *)v7 setBadges:v10];

  [(TransitDirectionsListItem *)v7 setType:2];
  if (!self->_currentLineColor)
  {
    v11 = [(GEOComposedRouteStep *)v3 transitLine];
    v12 = [UIColor _mapkit_colorForTransitLine:v11];
    currentLineColor = self->_currentLineColor;
    self->_currentLineColor = v12;
  }

  v14 = objc_alloc_init(NSMutableArray);
  v15 = +[NSMutableArray array];
  v16 = v15;
  if (v3)
  {
    [v15 addObject:v3];
  }

  v47 = v3;
  [(TransitDirectionsStepsListDataProvider *)self _mergeTransitRoutingIncidentsForSteps:v16, v16];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v17 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v49 + 1) + 8 * i);
        v22 = [v21 routingMessage];
        v23 = [v22 length];

        if (v23)
        {
          self->_hasIncidentItems = 1;
          v24 = [(TransitDirectionsStepsListDataProvider *)self _incidentItemWithIncidentMessage:v21];
          v25 = sub_10088E298();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = [v21 routingMessage];
            *buf = 138477827;
            v55 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "- adding merged incidents item: %{private}@", buf, 0xCu);
          }

          [v24 setParentItem:v7];
          [(TransitDirectionsStepsListDataProvider *)self _appendItem:v24 toArray:v14];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v18);
  }

  v27 = [(TransitDirectionsStepsListDataProvider *)self _boardingInfoItemForStep:v47];
  if (v27)
  {
    v28 = sub_10088E298();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "- adding boarding info item for trip", buf, 2u);
    }

    [v27 setParentItem:v7];
    [(TransitDirectionsStepsListDataProvider *)self _appendItem:v27 toArray:v14];
  }

  v29 = [(GEOComposedRouteStep *)v47 tripSegment];
  v30 = [v29 rideOptionsCount];

  if (v30 >= 2)
  {
    v31 = sub_10088E298();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "- adding clustered rides item", buf, 2u);
    }

    v32 = [TransitDirectionsListClusteredVehicleItem alloc];
    v33 = [(GEOComposedRouteStep *)v47 tripSegment];
    v34 = [(TransitDirectionsListClusteredVehicleItem *)v32 initWithClusteredRouteSegment:v33];

    [(TransitDirectionsStepsListDataProvider *)self _appendItem:v34 toArray:v14];
    ++self->_segmentRangeLength;
  }

  v35 = [[NSMutableArray alloc] initWithCapacity:2];
  v36 = self->_prefixStepForNextBoardItem;
  v37 = [(GEOComposedRouteStep *)v36 transitStep];
  v38 = [v37 maneuverType];

  if (v36 && (v38 & 0xFFFFFFFE) == 6)
  {
    v39 = sub_10088E298();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = @"TRANSFER_STOP_TO_STOP";
      if (v38 == 7)
      {
        v40 = @"GOTO_STOP";
      }

      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "- including previous %@", buf, 0xCu);
    }

    [v35 addObject:v36];
  }

  [v35 addObject:v47];
  v41 = [v35 copy];
  [(TransitDirectionsListItem *)v7 setComposedRouteSteps:v41];

  v53 = v47;
  v42 = [NSArray arrayWithObjects:&v53 count:1];
  [(TransitDirectionsListItem *)v7 setComposedRouteStepsDisplayedOnMap:v42];

  [(TransitDirectionsListItem *)v7 setPostTertiaryItems:v14];

  return v7;
}

- (void)_consumeTransitTripSegment
{
  v3 = sub_10088E298();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[TransitDirectionsStepsListDataProvider _consumeTransitTripSegment]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s", &v7, 0xCu);
  }

  v4 = self->_currentStep;
  v5 = [(TransitDirectionsStepsListDataProvider *)self _transitTripBoardItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v5 toArray:self->_mutableItems];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _transitTripAlightItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v6 toArray:self->_mutableItems];
}

- (id)_titleForWaypoint:(id)a3
{
  v3 = a3;
  v4 = [v3 responseSearch];
  v5 = [v4 singleLineAddress];

  v6 = [v3 responseSearch];
  v7 = [v6 mapItem];
  if ([v7 _hasTransitDisplayName])
  {
  }

  else
  {
    v8 = [v5 length];

    if (v8)
    {
      v9 = v5;
      goto LABEL_6;
    }
  }

  v10 = [v3 responseSearch];
  v9 = [v10 title];

LABEL_6:

  return v9;
}

- (id)_destinationTitle
{
  v3 = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = [v3 _maps_directionsWaypoints];
  v5 = [v4 lastObject];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _titleForWaypoint:v5];

  return v6;
}

- (id)_destinationItem
{
  v3 = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = [v3 destination];
  v5 = [v4 mkMapItem];
  v6 = +[MKSystemController sharedInstance];
  [v6 screenScale];
  v7 = [MKMapItem _maps_markerImageForMapItem:v5 scale:3 size:1 useMarkerFallback:?];

  v8 = [[TransitDirectionsListImageItem alloc] initWithImage:v7 instructions:0];
  [(TransitDirectionsListItem *)v8 setType:1];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Arrive [Transit List View]" value:@"localized string not found" table:0];

  v11 = [[GEOComposedString alloc] initWithString:v10];
  v24 = v11;
  v12 = [NSArray arrayWithObjects:&v24 count:1];
  [(TransitDirectionsListItem *)v8 setMajorFormattedStrings:v12];

  v13 = [GEOComposedString alloc];
  v14 = [(TransitDirectionsStepsListDataProvider *)self _destinationTitle];
  v15 = [v13 initWithString:v14];

  if (v15)
  {
    v23 = v15;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(TransitDirectionsListItem *)v8 setMinorFormattedStrings:v16];
  }

  v17 = [(TransitDirectionsStepsListDataProvider *)self route];
  v18 = [v17 steps];
  v19 = [v18 lastObject];

  if (v19)
  {
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [(TransitDirectionsListItem *)v8 setComposedRouteSteps:v20];
  }

  return v8;
}

- (id)_originTitle
{
  v3 = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = [v3 _maps_directionsWaypoints];
  v5 = [v4 firstObject];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _titleForWaypoint:v5];

  return v6;
}

- (id)_originItem
{
  v3 = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = [v3 origin];
  v5 = [v4 mkMapItem];
  v6 = +[MKSystemController sharedInstance];
  [v6 screenScale];
  v7 = [MKMapItem _maps_markerImageForMapItem:v5 scale:3 size:1 useMarkerFallback:?];

  v8 = [[TransitDirectionsListImageItem alloc] initWithImage:v7 instructions:0];
  [(TransitDirectionsListItem *)v8 setType:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Start [Transit List View]" value:@"localized string not found" table:0];

  v11 = [[GEOComposedString alloc] initWithString:v10];
  v24 = v11;
  v12 = [NSArray arrayWithObjects:&v24 count:1];
  [(TransitDirectionsListItem *)v8 setMajorFormattedStrings:v12];

  v13 = [GEOComposedString alloc];
  v14 = [(TransitDirectionsStepsListDataProvider *)self _originTitle];
  v15 = [v13 initWithString:v14];

  if (v15)
  {
    v23 = v15;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(TransitDirectionsListItem *)v8 setMinorFormattedStrings:v16];
  }

  v17 = [(TransitDirectionsStepsListDataProvider *)self route];
  v18 = [v17 steps];
  v19 = [v18 firstObject];

  if (v19)
  {
    v22 = v19;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [(TransitDirectionsListItem *)v8 setComposedRouteStepsDisplayedOnMap:v20];
  }

  return v8;
}

- (void)_updateCurrentStepToIndex:(unint64_t)a3
{
  self->_stepIdx = a3;
  v5 = [(TransitDirectionsStepsListDataProvider *)self route];
  v6 = [v5 steps];
  if ([v6 count] <= a3)
  {
    currentStep = self->_currentStep;
    p_currentStep = &self->_currentStep;
    v7 = currentStep;
    *p_currentStep = 0;
  }

  else
  {
    v7 = [(TransitDirectionsStepsListDataProvider *)self route];
    v8 = [v7 steps];
    v9 = [v8 objectAtIndexedSubscript:self->_stepIdx];
    v11 = self->_currentStep;
    p_currentStep = &self->_currentStep;
    *p_currentStep = v9;
  }

  v13 = *p_currentStep;
  v14 = sub_10088E298();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v15)
    {
      v16 = *p_currentStep;
      v20 = 138412290;
      v21 = v16;
      v17 = "-> %@";
      v18 = v14;
      v19 = 12;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v17, &v20, v19);
    }
  }

  else if (v15)
  {
    LOWORD(v20) = 0;
    v17 = "End of route";
    v18 = v14;
    v19 = 2;
    goto LABEL_9;
  }
}

- (void)_appendItem:(id)a3 toArray:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[TransitDirectionsStepsListDataProvider _insertItem:atIndex:inArray:](self, "_insertItem:atIndex:inArray:", v7, [v6 count], v6);
}

- (void)_insertItem:(id)a3 atIndex:(unint64_t)a4 inArray:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [(NSMutableArray *)v8 count];
  v10 = v9;
  if (v9 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v9;
  }

  if (v14 && v8)
  {
    if (self->_mutableItems == v8)
    {
      if (v11)
      {
        v12 = [(NSMutableArray *)v8 objectAtIndexedSubscript:v11 - 1];
        [v12 setNextItem:v14];
        [v14 setPreviousItem:v12];
      }

      if (v10 > a4)
      {
        v13 = [(NSMutableArray *)v8 objectAtIndexedSubscript:v11];
        [v14 setNextItem:v13];
        [v13 setPreviousItem:v14];
      }
    }

    [(NSMutableArray *)v8 insertObject:v14 atIndex:v11];
  }
}

- (void)_debugPrintHierarchy
{
  v3 = sub_10088E298();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_mutableItems, "count")}];
    mutableItems = self->_mutableItems;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100891D28;
    v9[3] = &unk_10162CBA8;
    v11 = &stru_10162CB58;
    v7 = v5;
    v10 = v7;
    [(NSMutableArray *)mutableItems enumerateObjectsUsingBlock:v9];
    v8 = sub_10088E298();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Finished building items: %@", buf, 0xCu);
    }
  }
}

- (void)_buildItems
{
  v3 = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = sub_10088E298();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [v3 origin];
    v6 = [v5 navDisplayName];
    v7 = [v3 destination];
    v8 = [v7 navDisplayName];
    *buf = 138478339;
    v30 = v6;
    v31 = 2113;
    v32 = v8;
    v33 = 2048;
    v34 = [v3 stepsCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Start building items for route %{private}@ → %{private}@, %lu steps", buf, 0x20u);
  }

  v28 = v3;

  v9 = objc_alloc_init(NSMutableArray);
  mutableItems = self->_mutableItems;
  self->_mutableItems = v9;

  v11 = objc_alloc_init(NSMutableArray);
  mutableSegmentRanges = self->_mutableSegmentRanges;
  self->_mutableSegmentRanges = v11;

  self->_hasIncidentItems = 0;
  self->_stepIdx = 0;
  self->_segmentRangeLocation = 0;
  self->_segmentRangeLength = 0;
  v13 = [(TransitDirectionsStepsListDataProvider *)self _originItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v13 toArray:self->_mutableItems];
  v14 = self->_mutableSegmentRanges;
  v15 = [NSValue valueWithRange:self->_segmentRangeLocation, 1];
  [(NSMutableArray *)v14 addObject:v15];

  ++self->_segmentRangeLocation;
  [(TransitDirectionsStepsListDataProvider *)self _updateCurrentStepToIndex:self->_stepIdx];
  if (self->_currentStep)
  {
    while (1)
    {
      stepIdx = self->_stepIdx;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = self->_currentStep;
        v20 = [(GEOComposedRouteStep *)v18 maneuver];
        if (v20 <= 4)
        {
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              [(TransitDirectionsStepsListDataProvider *)self _consumeTransitTripSegment];
              prefixStepForNextBoardItem = self->_prefixStepForNextBoardItem;
              self->_prefixStepForNextBoardItem = 0;

              goto LABEL_21;
            }
          }

          else if (v20 > 2)
          {
            goto LABEL_21;
          }
        }

        else if (v20 > 7)
        {
          if (v20 != 8 && v20 != 9 && v20 != 10)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v20 - 6) < 2)
          {
            objc_storeStrong(&self->_prefixStepForNextBoardItem, self->_currentStep);
            goto LABEL_20;
          }

          if (v20 != 5)
          {
LABEL_21:

            goto LABEL_22;
          }
        }

LABEL_20:
        [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
        goto LABEL_21;
      }

      [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
LABEL_22:
      if (stepIdx == self->_stepIdx)
      {
        [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
        v23 = sub_10088E298();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v30 = stepIdx;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "stepIdx had to be manually incremented from %lu", buf, 0xCu);
        }
      }

      if (!self->_currentStep)
      {
        goto LABEL_40;
      }
    }

    v17 = [(GEOComposedRouteStep *)self->_currentStep getPreviousStep];
    v18 = [v17 transitStep];

    v19 = [(GEOComposedRouteStep *)self->_currentStep transitStep];
    if ([v19 maneuverType] == 10)
    {
      if ([(GEOComposedRouteStep *)v18 maneuverType]== 7)
      {

LABEL_17:
        v22 = sub_10088E298();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Skipping over Walking/Arrival step since it follows GOTO_STOP or ALIGHT", buf, 2u);
        }

        goto LABEL_20;
      }

      v21 = [(GEOComposedRouteStep *)v18 maneuverType];

      if (v21 == 5)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    [(TransitDirectionsStepsListDataProvider *)self _consumeWalkingSegment];
    goto LABEL_21;
  }

LABEL_40:
  v25 = [(TransitDirectionsStepsListDataProvider *)self _destinationItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:v25 toArray:self->_mutableItems];
  v26 = self->_mutableSegmentRanges;
  v27 = [NSValue valueWithRange:self->_segmentRangeLocation, 1];
  [(NSMutableArray *)v26 addObject:v27];

  [(TransitDirectionsStepsListDataProvider *)self _debugPrintHierarchy];
}

- (unint64_t)indexForItem:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  v7 = [NSIndexPath indexPathForRow:0 inSection:a4];
  v8 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v7];

  if (v8 == v6)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(TransitDirectionsStepsListDataProvider *)self numberOfItemsInSection:a4];
    if (v9 < 2)
    {
LABEL_6:
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
      v11 = 1;
      while (1)
      {
        v12 = v8;
        v13 = [NSIndexPath indexPathForRow:v11 inSection:a4];
        v8 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v13];

        if (v8 == v6)
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }

      v15 = [NSIndexPath indexPathForRow:v11 inSection:a4];
      v14 = [v15 row];
    }
  }

  return v14;
}

- (id)indexPathForItem:(id)a3
{
  v4 = a3;
  if ([(TransitDirectionsStepsListDataProvider *)self numberOfSections])
  {
    v5 = 0;
    while (1)
    {
      v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
      v7 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v6];
      v8 = v7;
      if (v7 == v4)
      {
        break;
      }

      v9 = [(TransitDirectionsStepsListDataProvider *)self numberOfItemsInSection:v5];
      if (v9 < 2)
      {
LABEL_8:
      }

      else
      {
        v10 = v9;
        v11 = 1;
        while (1)
        {
          v12 = v8;
          v13 = [NSIndexPath indexPathForRow:v11 inSection:v5];
          v8 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v13];

          if (v8 == v4)
          {
            break;
          }

          if (v10 == ++v11)
          {
            goto LABEL_8;
          }
        }

        if (v6)
        {
          goto LABEL_13;
        }
      }

      if (++v5 >= [(TransitDirectionsStepsListDataProvider *)self numberOfSections])
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v6 = 0;
  }

LABEL_13:

  return v6;
}

- (id)_itemAtIndexPath:(id)a3 currentPosition:(unint64_t)a4 inItems:(id)a5 includingHiddenSubitems:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if ([v10 length] <= a4 || (v12 = objc_msgSend(v10, "indexAtPosition:", a4), v12 >= objc_msgSend(v11, "count")))
  {
    v14 = 0;
  }

  else
  {
    v13 = [v11 objectAtIndexedSubscript:v12];
    if ([v10 length] - 1 == a4)
    {
      v14 = v13;
    }

    else
    {
      v15 = [NSMutableArray arrayWithObject:v13];
      if ([v13 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
      {
        [v13 subItemsWithForceExpand:v6];
      }

      else
      {
        [v13 subItems];
      }
      v16 = ;
      [v15 addObjectsFromArray:v16];

      v14 = [(TransitDirectionsStepsListDataProvider *)self _itemAtIndexPath:v10 currentPosition:a4 + 1 inItems:v15 includingHiddenSubitems:v6];
    }
  }

  return v14;
}

- (id)_itemAtIndexPath:(id)a3 includingHiddenSubitems:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(TransitDirectionsStepsListDataProvider *)self items];
  v8 = [(TransitDirectionsStepsListDataProvider *)self _itemAtIndexPath:v6 currentPosition:0 inItems:v7 includingHiddenSubitems:v4];

  return v8;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3 includingHiddenSubitems:(BOOL)a4
{
  v4 = a4;
  v7 = [(TransitDirectionsStepsListDataProvider *)self items];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    return 0;
  }

  v9 = [(TransitDirectionsStepsListDataProvider *)self items];
  v10 = [v9 objectAtIndexedSubscript:a3];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    v11 = [v10 numberOfSubItemsWithForceExpand:v4];
  }

  else
  {
    v13 = [v10 subItems];
    v11 = [v13 count];
  }

  v12 = v11 + 1;

  return v12;
}

- (unint64_t)numberOfSections
{
  v2 = [(TransitDirectionsStepsListDataProvider *)self items];
  v3 = [v2 count];

  return v3;
}

- (NSArray)items
{
  mutableItems = self->_mutableItems;
  if (!mutableItems)
  {
    [(TransitDirectionsStepsListDataProvider *)self _buildItems];
    mutableItems = self->_mutableItems;
  }

  return mutableItems;
}

- (TransitDirectionsStepsListDataProvider)initWithRoute:(id)a3 forGuidance:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TransitDirectionsStepsListDataProvider;
  v7 = [(TransitDirectionsStepsListDataProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_route, v6);
    v8->_forGuidance = a4;
  }

  return v8;
}

@end