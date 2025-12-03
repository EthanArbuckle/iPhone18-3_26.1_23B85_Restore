@interface TransitDirectionsStepsListDataProvider
- (GEOComposedRoute)route;
- (NSArray)items;
- (NSArray)segmentRanges;
- (TransitDirectionsStepsListDataProvider)initWithRoute:(id)route forGuidance:(BOOL)guidance;
- (id)_artworksForIntraSystemTransferBetweenAlightingStep:(id)step andBoardingStep:(id)boardingStep currentLineColor:(id)color;
- (id)_boardingInfoItemForStep:(id)step;
- (id)_destinationItem;
- (id)_destinationTitle;
- (id)_enterItemForStep:(id)step passStop:(id)stop previouslySkippedPassStops:(id)stops;
- (id)_exitItemForAlightStep:(id)step;
- (id)_fareAndOperatingHoursItemForBlockTransferStep:(id)step lineColor:(id)color alternateLineColor:(id)lineColor parentItem:(id)item;
- (id)_imageForInterSystemTransferBetweenAlightingStep:(id)step andBoardingStep:(id)boardingStep currentLineColor:(id)color dimmedOrigin:(BOOL)origin;
- (id)_incidentItemWithIncidentMessage:(id)message;
- (id)_itemAtIndexPath:(id)path currentPosition:(unint64_t)position inItems:(id)items includingHiddenSubitems:(BOOL)subitems;
- (id)_itemAtIndexPath:(id)path includingHiddenSubitems:(BOOL)subitems;
- (id)_mergeTransitRoutingIncidentsForSteps:(id)steps;
- (id)_nextLeaveStopStepAfterStep:(id)step;
- (id)_nextStepAfterStep:(id)step withManeuvers:(id)maneuvers beforeManeuvers:(id)beforeManeuvers;
- (id)_nextStepWithManeuver:(int)maneuver beforeManeuver:(int)beforeManeuver;
- (id)_originItem;
- (id)_originTitle;
- (id)_passStopSubItemForSteps:(id)steps boardStep:(id)step previousPassStop:(id)stop currentRideDuration:(unsigned int)duration fromLineColor:(id)color toLineColor:(id)lineColor;
- (id)_previousStepBeforeStep:(id)step withManeuvers:(id)maneuvers afterManeuver:(int)maneuver;
- (id)_titleForWaypoint:(id)waypoint;
- (id)_transitTripAlightItem;
- (id)_transitTripBoardItem;
- (id)_walkingItemForWalkingSegment:(id)segment toBoardStep:(id)step;
- (id)indexPathForItem:(id)item;
- (unint64_t)_startRangeIndexForAlightItem:(id)item;
- (unint64_t)indexForItem:(id)item inSection:(unint64_t)section;
- (unint64_t)numberOfItemsInSection:(unint64_t)section includingHiddenSubitems:(BOOL)subitems;
- (unint64_t)numberOfSections;
- (void)_appendItem:(id)item toArray:(id)array;
- (void)_buildItems;
- (void)_consumeTransitTripSegment;
- (void)_consumeWalkingSegment;
- (void)_debugPrintHierarchy;
- (void)_insertItem:(id)item atIndex:(unint64_t)index inArray:(id)array;
- (void)_populateAccessPointArtworkForItem:(id)item fromStep:(id)step;
- (void)_populateAccessPointArtworkForItem:(id)item fromStepsInPreferedOrder:(id)order;
- (void)_populateStationArtworkForItem:(id)item fromStep:(id)step;
- (void)_populateStationArtworkForItem:(id)item fromStepsInPreferedOrder:(id)order;
- (void)_updateCurrentStepToIndex:(unint64_t)index;
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

- (void)_populateAccessPointArtworkForItem:(id)item fromStepsInPreferedOrder:(id)order
{
  itemCopy = item;
  v5 = sub_100021DB0(order, &stru_10162CC70);
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _mapkit_transitArtworkImageWithDataSource:firstObject size:5 scale:?];

    [itemCopy setMinorStringImage:v8];
  }
}

- (void)_populateAccessPointArtworkForItem:(id)item fromStep:(id)step
{
  stepCopy = step;
  v7 = stepCopy;
  if (stepCopy)
  {
    v10 = stepCopy;
    itemCopy = item;
    itemCopy2 = [NSArray arrayWithObjects:&v10 count:1];
    [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:itemCopy fromStepsInPreferedOrder:itemCopy2, v10];
  }

  else
  {
    itemCopy2 = item;
    [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:itemCopy2 fromStepsInPreferedOrder:&__NSArray0__struct];
  }
}

- (void)_populateStationArtworkForItem:(id)item fromStepsInPreferedOrder:(id)order
{
  itemCopy = item;
  orderCopy = order;
  if ([itemCopy type] != 8)
  {
    v6 = sub_100021DB0(orderCopy, &stru_10162CC50);
    firstObject = [v6 firstObject];

    if (firstObject)
    {
      v8 = +[UIScreen mainScreen];
      [v8 scale];
      v9 = [UIImage _mapkit_transitArtworkImageWithDataSource:firstObject size:7 scale:?];

      [itemCopy setMajorStringImage:v9];
    }
  }
}

- (void)_populateStationArtworkForItem:(id)item fromStep:(id)step
{
  stepCopy = step;
  v7 = stepCopy;
  if (stepCopy)
  {
    v10 = stepCopy;
    itemCopy = item;
    itemCopy2 = [NSArray arrayWithObjects:&v10 count:1];
    [(TransitDirectionsStepsListDataProvider *)self _populateStationArtworkForItem:itemCopy fromStepsInPreferedOrder:itemCopy2, v10];
  }

  else
  {
    itemCopy2 = item;
    [(TransitDirectionsStepsListDataProvider *)self _populateStationArtworkForItem:itemCopy2 fromStepsInPreferedOrder:&__NSArray0__struct];
  }
}

- (id)_artworksForIntraSystemTransferBetweenAlightingStep:(id)step andBoardingStep:(id)boardingStep currentLineColor:(id)color
{
  stepCopy = step;
  boardingStepCopy = boardingStep;
  _maps_hexString = [color _maps_hexString];
  v10 = _maps_hexString;
  if (_maps_hexString)
  {
    lineColorString = _maps_hexString;
  }

  else
  {
    transitLine = [stepCopy transitLine];
    lineColorString = [transitLine lineColorString];
  }

  transitLine2 = [boardingStepCopy transitLine];

  lineColorString2 = [transitLine2 lineColorString];

  v15 = [MKTransitArtwork stationNodeArtworkWithHexColor:lineColorString];
  v16 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:lineColorString2];
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

- (id)_imageForInterSystemTransferBetweenAlightingStep:(id)step andBoardingStep:(id)boardingStep currentLineColor:(id)color dimmedOrigin:(BOOL)origin
{
  originCopy = origin;
  stepCopy = step;
  boardingStepCopy = boardingStep;
  colorCopy = color;
  v12 = colorCopy;
  if (colorCopy)
  {
    v13 = colorCopy;
    if (!originCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  transitLine = [stepCopy transitLine];
  lineColorString = [transitLine lineColorString];
  v13 = [UIColor _maps_colorFromHexString:lineColorString];

  if (originCopy)
  {
LABEL_3:
    v14 = [v13 colorWithAlphaComponent:0.300000012];

    v13 = v14;
  }

LABEL_4:
  _maps_hexString = [v13 _maps_hexString];
  transitLine2 = [boardingStepCopy transitLine];
  lineColorString2 = [transitLine2 lineColorString];
  v18 = +[UIScreen mainScreen];
  [v18 scale];
  v19 = [UIImage interSystemTransferFromHexColor:_maps_hexString toHexColor:lineColorString2 imageWithSize:4 scale:0 darkMode:?];

  return v19;
}

- (id)_nextStepAfterStep:(id)step withManeuvers:(id)maneuvers beforeManeuvers:(id)beforeManeuvers
{
  stepCopy = step;
  maneuversCopy = maneuvers;
  beforeManeuversCopy = beforeManeuvers;
  if (!stepCopy)
  {
    v12 = 0;
    getNextStep = 0;
    goto LABEL_15;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      maneuver = [stepCopy maneuver];
    }

    else
    {
      maneuver = 0;
    }

    v11 = [NSNumber numberWithInt:maneuver];
    if ([maneuversCopy containsObject:v11])
    {
      v12 = stepCopy;
      goto LABEL_10;
    }

    if (!maneuver || [beforeManeuversCopy containsObject:v11])
    {
      break;
    }

    v12 = 0;
LABEL_10:
    getNextStep = [stepCopy getNextStep];

    if (!v12)
    {
      stepCopy = getNextStep;
      if (getNextStep)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
  getNextStep = stepCopy;
LABEL_15:

  return v12;
}

- (id)_previousStepBeforeStep:(id)step withManeuvers:(id)maneuvers afterManeuver:(int)maneuver
{
  stepCopy = step;
  maneuversCopy = maneuvers;
  if (!stepCopy)
  {
    v11 = 0;
    getPreviousStep = 0;
    goto LABEL_15;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      maneuver = [stepCopy maneuver];
    }

    else
    {
      maneuver = 0;
    }

    v10 = [NSNumber numberWithInt:maneuver];
    if ([maneuversCopy containsObject:v10])
    {
      v11 = stepCopy;
      goto LABEL_10;
    }

    if (!maneuver || maneuver == maneuver)
    {
      break;
    }

    v11 = 0;
LABEL_10:
    getPreviousStep = [stepCopy getPreviousStep];

    if (!v11)
    {
      stepCopy = getPreviousStep;
      if (getPreviousStep)
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  v11 = 0;
  getPreviousStep = stepCopy;
LABEL_15:

  return v11;
}

- (id)_nextStepWithManeuver:(int)maneuver beforeManeuver:(int)beforeManeuver
{
  v4 = *&beforeManeuver;
  currentStep = self->_currentStep;
  v7 = [NSNumber numberWithInt:*&maneuver];
  v8 = [NSSet setWithObject:v7];
  v9 = [NSNumber numberWithInt:v4];
  v10 = [NSSet setWithObject:v9];
  v11 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:currentStep withManeuvers:v8 beforeManeuvers:v10];

  return v11;
}

- (unint64_t)_startRangeIndexForAlightItem:(id)item
{
  itemCopy = item;
  stepIndex = [itemCopy stepIndex];
  getPreviousStep = [itemCopy getPreviousStep];
  if (getPreviousStep)
  {
    v6 = getPreviousStep;
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

      transitVehicle = [v6 transitVehicle];
      pickupDropoffType = [transitVehicle pickupDropoffType];

      if (pickupDropoffType != 100)
      {
        break;
      }

      stepIndex = [v6 stepIndex];
      getPreviousStep2 = [v6 getPreviousStep];

      v6 = getPreviousStep2;
    }

    while (getPreviousStep2);
  }

  return stepIndex;
}

- (id)_nextLeaveStopStepAfterStep:(id)step
{
  stepCopy = step;
  v5 = [NSSet setWithObject:&off_1016E7508];
  v6 = [NSSet setWithObjects:&off_1016E7538, &off_1016E7520, 0];
  v7 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:stepCopy withManeuvers:v5 beforeManeuvers:v6];

  return v7;
}

- (id)_walkingItemForWalkingSegment:(id)segment toBoardStep:(id)step
{
  stepCopy = step;
  segmentCopy = segment;
  v7 = [[TransitDirectionsListItemWalking alloc] initWithWalkingSegment:segmentCopy toBoardStep:stepCopy];

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

  route = [(TransitDirectionsStepsListDataProvider *)self route];
  v5 = [route segmentForStepIndex:{-[GEOComposedRouteStep stepIndex](self->_currentStep, "stepIndex")}];

  lastWalkingStep = [v5 lastWalkingStep];
  getNextStep = [lastWalkingStep getNextStep];
  v8 = [NSSet setWithObject:&off_1016E7550];
  v9 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:getNextStep withManeuvers:v8 beforeManeuvers:0];

  if (self->_forGuidance)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(TransitDirectionsStepsListDataProvider *)self _walkingItemForWalkingSegment:v5 toBoardStep:v10];
  majorFormattedStrings = [v11 majorFormattedStrings];
  firstObject = [majorFormattedStrings firstObject];
  stringWithDefaultOptions = [firstObject stringWithDefaultOptions];

  if ([stringWithDefaultOptions length])
  {
    [(TransitDirectionsStepsListDataProvider *)self _appendItem:v11 toArray:self->_mutableItems];
    mutableSegmentRanges = self->_mutableSegmentRanges;
    v16 = [NSValue valueWithRange:self->_segmentRangeLocation, 1];
    [(NSMutableArray *)mutableSegmentRanges addObject:v16];

    ++self->_segmentRangeLocation;
  }

  stepRange = [v5 stepRange];
  [(TransitDirectionsStepsListDataProvider *)self _updateCurrentStepToIndex:&stepRange[v18]];
  transitStep = [(GEOComposedRouteStep *)self->_currentStep transitStep];
  maneuverType = [transitStep maneuverType];

  if ((maneuverType & 0xFFFFFFFE) == 6)
  {
    v21 = sub_10088E298();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = @"TRANSFER_STOP_TO_STOP";
      if (maneuverType == 7)
      {
        v22 = @"GOTO_STOP";
      }

      v26 = 138412290;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "- including next %@", &v26, 0xCu);
    }

    composedRouteSteps = [v11 composedRouteSteps];
    v24 = [composedRouteSteps mutableCopy];

    [v24 addObject:self->_currentStep];
    v25 = [v24 copy];
    [v11 setComposedRouteSteps:v25];

    [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
  }
}

- (id)_mergeTransitRoutingIncidentsForSteps:(id)steps
{
  stepsCopy = steps;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = stepsCopy;
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
        advisories = [v8 advisories];

        if (advisories)
        {
          v30 = i;
          advisories2 = [v8 advisories];
          [v5 addObjectsFromArray:advisories2];

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
                transitIncidents = [v8 transitIncidents];
                v22 = [(MergedTransitRoutingIncidentMessage *)v20 initWithGEOComposedRouteAdvisory:v19 transitIncidents:transitIncidents];

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

- (id)_incidentItemWithIncidentMessage:(id)message
{
  messageCopy = message;
  v4 = [[TransitDirectionsListItemIncident alloc] initWithIncidentMessage:messageCopy];

  return v4;
}

- (id)_fareAndOperatingHoursItemForBlockTransferStep:(id)step lineColor:(id)color alternateLineColor:(id)lineColor parentItem:(id)item
{
  stepCopy = step;
  colorCopy = color;
  lineColorCopy = lineColor;
  itemCopy = item;
  v13 = [[NSMutableArray alloc] initWithCapacity:2];
  if ([stepCopy maneuver] != 9)
  {
    v53 = itemCopy;
    transitLine = [stepCopy transitLine];
    operatingHours = [transitLine operatingHours];

    v16 = [operatingHours count];
    composedRoute = [stepCopy composedRoute];
    shouldShowSchedule = [composedRoute shouldShowSchedule];

    if ((shouldShowSchedule & 1) == 0 && v16)
    {
      v51 = lineColorCopy;
      v52 = colorCopy;
      v19 = [[NSMutableArray alloc] initWithCapacity:v16];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v50 = operatingHours;
      v20 = operatingHours;
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

      lineColorCopy = v51;
      if ([v19 count])
      {
        startingStop = [stepCopy startingStop];
        timezone = [startingStop timezone];
        v34 = [NSTimeZone timeZoneWithName:timezone];

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

      colorCopy = v52;
      operatingHours = v50;
    }

    itemCopy = v53;
  }

  instructions = [stepCopy instructions];
  transitListInstruction = [instructions transitListInstruction];
  priceFormatteds = [transitListInstruction priceFormatteds];
  v46 = [priceFormatteds _geo_map:&stru_10162CC10];

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
    [(TransitDirectionsListItem *)v48 setParentItem:itemCopy];
    [(TransitDirectionsListItem *)v48 setFromLineColor:colorCopy];
    [(TransitDirectionsListItem *)v48 setToLineColor:colorCopy];
    [(TransitDirectionsListItem *)v48 setAlternateFromLineColor:lineColorCopy];
    [(TransitDirectionsListItem *)v48 setAlternateToLineColor:lineColorCopy];
    [(TransitDirectionsListItem *)v48 setMajorFormattedStrings:v13];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)_exitItemForAlightStep:(id)step
{
  stepCopy = step;
  v5 = [(TransitDirectionsStepsListDataProvider *)self _nextLeaveStopStepAfterStep:stepCopy];
  nextTransitStep = [stepCopy nextTransitStep];
  if ([nextTransitStep maneuver] == 6)
  {
    nextTransitStep2 = [stepCopy nextTransitStep];
  }

  else
  {
    nextTransitStep2 = 0;
  }

  if (v5 | nextTransitStep2)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v8;
    if (nextTransitStep2)
    {
      v10 = nextTransitStep2;
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
  v11 = [MNTransitStepInstruction instructionForStep:stepCopy overrides:v9 context:[TransitDirectionsListItem defaultInstructionContextForItemType:11 forGuidance:self->_forGuidance]];
  v38 = &off_1016E7568;
  _maps_hexString = [(UIColor *)self->_currentLineColor _maps_hexString];
  v13 = [MKTransitArtwork stationNodeArtworkWithHexColor:_maps_hexString];
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
  primaryTimeInstructionString = [v11 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v16 setPrimaryAccessoryString:primaryTimeInstructionString];

  secondaryTimeInstructionString = [v11 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v16 setSecondaryAccessoryString:secondaryTimeInstructionString];

  -[TransitDirectionsListItem setHideAccessoryStringsWhenCollapsed:](v16, "setHideAccessoryStringsWhenCollapsed:", [v11 hideTimeInstructionsWhenCollapsed]);
  badges = [(TransitDirectionsListItem *)v16 badges];
  v21 = [badges count];

  if (!v21 && nextTransitStep2)
  {
    transitStep = [nextTransitStep2 transitStep];
    badges2 = [transitStep badges];
    [(TransitDirectionsListItem *)v16 setBadges:badges2];
  }

  [(TransitDirectionsListItem *)v16 setType:11];
  [(TransitDirectionsListItem *)v16 setFromLineColor:self->_currentLineColor];
  [(TransitDirectionsListItem *)v16 setToLineColor:0];
  v24 = [(TransitDirectionsStepsListDataProvider *)self _startRangeIndexForAlightItem:stepCopy];
  if (v5)
  {
    v25 = v5;
  }

  else
  {
    v25 = stepCopy;
  }

  stepIndex = [v25 stepIndex];
  composedRoute = [stepCopy composedRoute];
  steps = [composedRoute steps];
  v29 = [steps subarrayWithRange:{v24, &stepIndex[-v24 + 1]}];
  [(TransitDirectionsListItem *)v16 setComposedRouteSteps:v29];

  composedRoute2 = [stepCopy composedRoute];
  steps2 = [composedRoute2 steps];
  v32 = [steps2 subarrayWithRange:{objc_msgSend(stepCopy, "stepIndex"), stepIndex - objc_msgSend(stepCopy, "stepIndex") + 1}];
  [(TransitDirectionsListItem *)v16 setComposedRouteStepsDisplayedOnMap:v32];

  v33 = +[NSMutableArray array];
  v34 = v33;
  if (v5)
  {
    [v33 addObject:v5];
  }

  if (stepCopy)
  {
    [v34 addObject:stepCopy];
  }

  [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v16 fromStepsInPreferedOrder:v34];

  return v16;
}

- (id)_enterItemForStep:(id)step passStop:(id)stop previouslySkippedPassStops:(id)stops
{
  stepCopy = step;
  stopCopy = stop;
  forGuidance = self->_forGuidance;
  stopsCopy = stops;
  v12 = [MNTransitStepInstruction instructionForStep:stopCopy context:[TransitDirectionsListItem defaultInstructionContextForItemType:10 forGuidance:forGuidance]];
  transitLine = [stopCopy transitLine];
  v14 = transitLine;
  if (transitLine)
  {
    transitLine2 = transitLine;
  }

  else
  {
    nextBoardingStep = [stepCopy nextBoardingStep];
    transitLine2 = [nextBoardingStep transitLine];
  }

  v32 = &off_1016E7568;
  lineColorString = [transitLine2 lineColorString];
  v18 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:lineColorString];
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
  primaryTimeInstructionString = [v12 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v21 setPrimaryAccessoryString:primaryTimeInstructionString];

  secondaryTimeInstructionString = [v12 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v21 setSecondaryAccessoryString:secondaryTimeInstructionString];

  -[TransitDirectionsListItem setHideAccessoryStringsWhenCollapsed:](v21, "setHideAccessoryStringsWhenCollapsed:", [v12 hideTimeInstructionsWhenCollapsed]);
  [(TransitDirectionsListItem *)v21 setType:10];
  [(TransitDirectionsStepsListDataProvider *)self _populateAccessPointArtworkForItem:v21 fromStep:stopCopy];
  if (transitLine2)
  {
    v25 = [UIColor _mapkit_colorForTransitLine:transitLine2];
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
  if (stopCopy)
  {
    v29 = stopCopy;
  }

  else
  {
    v29 = stepCopy;
  }

  [v27 addObject:v29];
  [v28 addObjectsFromArray:stopsCopy];

  v30 = [v28 copy];
  [(TransitDirectionsListItem *)v21 setComposedRouteSteps:v30];

  return v21;
}

- (id)_passStopSubItemForSteps:(id)steps boardStep:(id)step previousPassStop:(id)stop currentRideDuration:(unsigned int)duration fromLineColor:(id)color toLineColor:(id)lineColor
{
  stepsCopy = steps;
  v32 = &off_1016E7568;
  if (lineColor)
  {
    colorCopy = lineColor;
  }

  else
  {
    colorCopy = color;
  }

  lineColorCopy2 = lineColor;
  colorCopy2 = color;
  _maps_hexString = [colorCopy _maps_hexString];
  v16 = [MKTransitArtwork stationNodeOutlinedArtworkWithHexColor:_maps_hexString];
  v33 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v18 = [[TransitDirectionsListArtworkItem alloc] initWithArtworks:v17 instructions:0];
  [(TransitDirectionsListItem *)v18 setType:5];
  firstObject = [stepsCopy firstObject];
  v20 = [MNTransitStepInstruction instructionForStep:firstObject context:[TransitDirectionsListItem defaultInstructionContextForItemType:5 forGuidance:self->_forGuidance]];
  majorInstructionStrings = [v20 majorInstructionStrings];
  v22 = [majorInstructionStrings count];

  if (v22)
  {
    majorInstructionStrings2 = [v20 majorInstructionStrings];
    [(TransitDirectionsListItem *)v18 setMajorFormattedStrings:majorInstructionStrings2];
  }

  else
  {
    majorInstructionStrings2 = [firstObject originStopIntermediateListName];
    if (majorInstructionStrings2)
    {
      v24 = [[GEOComposedString alloc] initWithString:majorInstructionStrings2];
      v31 = v24;
      v25 = [NSArray arrayWithObjects:&v31 count:1];
      [(TransitDirectionsListItem *)v18 setMajorFormattedStrings:v25];
    }
  }

  minorInstructionStrings = [v20 minorInstructionStrings];
  [(TransitDirectionsListItem *)v18 setMinorFormattedStrings:minorInstructionStrings];

  tertiaryInstructionStrings = [v20 tertiaryInstructionStrings];
  [(TransitDirectionsListItem *)v18 setTertiaryFormattedStrings:tertiaryInstructionStrings];

  primaryTimeInstructionString = [v20 primaryTimeInstructionString];
  [(TransitDirectionsListItem *)v18 setPrimaryAccessoryString:primaryTimeInstructionString];

  secondaryTimeInstructionString = [v20 secondaryTimeInstructionString];
  [(TransitDirectionsListItem *)v18 setSecondaryAccessoryString:secondaryTimeInstructionString];

  [(TransitDirectionsListItem *)v18 setFromLineColor:colorCopy2];
  [(TransitDirectionsListItem *)v18 setToLineColor:lineColorCopy2];

  [(TransitDirectionsListArtworkItem *)v18 setSelectedSize:2];
  [(TransitDirectionsListArtworkItem *)v18 setAdaptiveShieldSize:0];
  [(TransitDirectionsListItem *)v18 setComposedRouteSteps:stepsCopy];

  return v18;
}

- (id)_boardingInfoItemForStep:(id)step
{
  stepCopy = step;
  boardingInfo = [stepCopy boardingInfo];
  if (boardingInfo)
  {
    v5 = boardingInfo;
LABEL_3:
    v6 = [[TransitDirectionsListBoardingInfoItem alloc] initWithBoardingInfo:v5];

    goto LABEL_7;
  }

  instructions = [stepCopy instructions];
  transitListInstruction = [instructions transitListInstruction];
  hasTimeInstructions = [transitListInstruction hasTimeInstructions];

  if (hasTimeInstructions)
  {
    v5 = objc_alloc_init(GEOTransitBoardingInfo);
    v10 = objc_alloc_init(GEOTransitBoardingInfoEntry);
    instructions2 = [stepCopy instructions];
    transitListInstruction2 = [instructions2 transitListInstruction];
    timeInstructions = [transitListInstruction2 timeInstructions];
    [v10 setMainTimeInstruction:timeInstructions];

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
    transitLine = [(__CFString *)v6 transitLine];
    v9 = [UIColor _mapkit_colorForTransitLine:transitLine];
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

      transitVehicle = [(GEOComposedRouteStep *)v12 transitVehicle];
      v14 = v12;
      pickupDropoffType = [transitVehicle pickupDropoffType];

      v118 = v14;
      if (pickupDropoffType != 100)
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
      transitLine2 = [(GEOComposedRouteStep *)v19 transitLine];
      v24 = [UIColor _mapkit_colorForTransitLine:transitLine2];
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
    transitLine3 = [(GEOComposedRouteStep *)v19 transitLine];
    obj = [UIColor _mapkit_colorForTransitLine:transitLine3];

    duration = [(GEOComposedRouteStep *)v19 duration];
    v29 = [[NSMutableArray alloc] initWithObjects:{v19, 0}];
    v30 = 0;
    if (!v126)
    {
      v30 = objc_alloc_init(NSMutableArray);
    }

    v131 = v29;
    v18 = duration + v18;
    getNextStep = [(GEOComposedRouteStep *)self->_currentStep getNextStep];
    if (!getNextStep)
    {
LABEL_52:
      v41 = 0;
      goto LABEL_58;
    }

    getNextStep2 = getNextStep;
    while (1)
    {
      v33 = getNextStep2;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 maneuver] == 4)
      {
        transitVehicle2 = [v33 transitVehicle];
        pickupDropoffType2 = [transitVehicle2 pickupDropoffType];

        if (pickupDropoffType2 == 100)
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
        originStop = [v36 originStop];
        muid = [originStop muid];
        destinationStop = [v36 destinationStop];
        muid2 = [destinationStop muid];

        if (muid == muid2)
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
        originStop2 = v41;
        goto LABEL_56;
      }

      maneuver = [(__CFString *)v41 maneuver];

      if (maneuver != 9)
      {
        goto LABEL_57;
      }

      originStop2 = [(__CFString *)v41 originStop];
      muid3 = [originStop2 muid];
      destinationStop2 = [(__CFString *)v41 destinationStop];
      if (muid3 == [destinationStop2 muid])
      {
        break;
      }

      transitVehicle3 = [(__CFString *)v41 transitVehicle];
      pickupDropoffType3 = [transitVehicle3 pickupDropoffType];

      if (pickupDropoffType3 != 100)
      {
        goto LABEL_58;
      }

LABEL_41:
      v48 = v33;

      duration2 = [v48 duration];
      v19 = v48;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        maneuver2 = [(GEOComposedRouteStep *)v19 maneuver];

        if (maneuver2 == 9 && (v132[2](v132, v19) & 1) != 0)
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

      transitVehicle4 = [(GEOComposedRouteStep *)v51 transitVehicle];
      pickupDropoffType4 = [transitVehicle4 pickupDropoffType];

      if (pickupDropoffType4 == 100)
      {
LABEL_49:
        [v131 addObject:v19];
        [v30 addObject:v19];
      }

LABEL_51:
      v18 = duration2 + v18;
      [(TransitDirectionsStepsListDataProvider *)self _incrementStep];
      getNextStep2 = [(GEOComposedRouteStep *)self->_currentStep getNextStep];

      if (!getNextStep2)
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
          firstObject = [v131 firstObject];
          v59 = firstObject;
        }

        else
        {
          v115 = [v131 valueForKey:@"description"];
          firstObject = [v115 componentsJoinedByString:@"\n-| "];
          v114 = firstObject;
          v59 = v116;
        }

        *buf = 138412546;
        v149 = v56;
        v150 = 2112;
        v151 = firstObject;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "- adding PASS_STOP item for:%@%@", buf, 0x16u);
        v65 = v59;
        if (v57 >= 2)
        {

          v65 = v115;
        }

        v116 = v59;
      }

      lastObject = [v120 lastObject];
      composedRouteSteps = [lastObject composedRouteSteps];

      firstObject2 = [composedRouteSteps firstObject];
      v61 = [(TransitDirectionsStepsListDataProvider *)self _passStopSubItemForSteps:v131 boardStep:v121 previousPassStop:firstObject2 currentRideDuration:v18 fromLineColor:self->_currentLineColor toLineColor:obj];

      [(__CFString *)v61 setParentItem:v129];
      [(TransitDirectionsStepsListDataProvider *)self _appendItem:v61 toArray:v120];
      objc_storeStrong(location, obj);
    }

    else
    {
      composedRouteSteps = [NSSet setWithObjects:&off_1016E7508, &off_1016E7520, &off_1016E7538, 0];
      v61 = [(TransitDirectionsStepsListDataProvider *)self _previousStepBeforeStep:v121 withManeuvers:composedRouteSteps afterManeuver:1];
      v62 = sub_10088E298();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v149 = v61;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "- creating ENTER item for boarding step: %@", buf, 0xCu);
      }

      firstObject3 = [v131 firstObject];
      v64 = [(TransitDirectionsStepsListDataProvider *)self _enterItemForStep:v61 passStop:firstObject3 previouslySkippedPassStops:v30];

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
    firstObject4 = [v120 firstObject];
    v74 = objc_alloc_init(TransitDirectionsListItem);
    [(TransitDirectionsListItem *)v74 setType:6];
    [(TransitDirectionsListItem *)v74 setParentItem:v20];
    fromLineColor = [firstObject4 fromLineColor];
    [(TransitDirectionsListItem *)v74 setFromLineColor:fromLineColor];

    toLineColor = [firstObject4 toLineColor];
    [(TransitDirectionsListItem *)v74 setToLineColor:toLineColor];

    alternateFromLineColor = [firstObject4 alternateFromLineColor];
    [(TransitDirectionsListItem *)v74 setAlternateFromLineColor:alternateFromLineColor];

    alternateToLineColor = [firstObject4 alternateToLineColor];
    [(TransitDirectionsListItem *)v74 setAlternateToLineColor:alternateToLineColor];

    [v120 insertObject:v74 atIndex:0];
  }

  [(TransitDirectionsListItemTransitTrip *)v20 setExpandedItems:v120];
  v79 = +[NSMutableArray array];
  v80 = v79;
  if (v117)
  {
    [v79 addObject:?];
  }

  getNextStep3 = [(GEOComposedRouteStep *)v121 getNextStep];
  v82 = [NSSet setWithObjects:&off_1016E7508, 0];
  v83 = [NSSet setWithObjects:&off_1016E7550, 0];
  v84 = [(TransitDirectionsStepsListDataProvider *)self _nextStepAfterStep:getNextStep3 withManeuvers:v82 beforeManeuvers:v83];

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
        routingMessage = [v89 routingMessage];
        v91 = [routingMessage length];

        if (v91)
        {
          self->_hasIncidentItems = 1;
          v92 = [(TransitDirectionsStepsListDataProvider *)self _incidentItemWithIncidentMessage:v89];
          v93 = sub_10088E298();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            routingMessage2 = [v89 routingMessage];
            *buf = 138477827;
            v149 = routingMessage2;
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
  composedRouteSteps2 = [v126 composedRouteSteps];
  [v98 addObjectsFromArray:composedRouteSteps2];

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

        composedRouteSteps3 = [*(*(&v135 + 1) + 8 * j) composedRouteSteps];
        [v98 addObjectsFromArray:composedRouteSteps3];
      }

      v102 = [v100 countByEnumeratingWithState:&v135 objects:v146 count:16];
    }

    while (v102);
  }

  composedRouteSteps4 = [v119 composedRouteSteps];
  [v98 addObjectsFromArray:composedRouteSteps4];

  [(TransitDirectionsListItem *)v97 setComposedRouteStepsDisplayedOnMap:v98];
  v107 = objc_alloc_init(TransitDirectionsListItem);
  [(TransitDirectionsListItem *)v107 setType:7];
  [(TransitDirectionsListItem *)v107 setParentItem:v97];
  toLineColor2 = [v126 toLineColor];
  [(TransitDirectionsListItem *)v107 setFromLineColor:toLineColor2];

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

  routeDetailsPrimaryArtwork = [(GEOComposedRouteStep *)v3 routeDetailsPrimaryArtwork];
  firstObject = [routeDetailsPrimaryArtwork firstObject];

  v45 = [MNTransitStepInstruction instructionForStep:v3 context:[TransitDirectionsListItem defaultInstructionContextForItemType:2 forGuidance:self->_forGuidance]];
  v46 = firstObject;
  v7 = [[TransitDirectionsListArtworkItem alloc] initWithArtwork:firstObject instructions:v45];
  transitStep = [(GEOComposedRouteStep *)v3 transitStep];
  badges = [transitStep badges];
  v10 = [badges copy];
  [(TransitDirectionsListItem *)v7 setBadges:v10];

  [(TransitDirectionsListItem *)v7 setType:2];
  if (!self->_currentLineColor)
  {
    transitLine = [(GEOComposedRouteStep *)v3 transitLine];
    v12 = [UIColor _mapkit_colorForTransitLine:transitLine];
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
        routingMessage = [v21 routingMessage];
        v23 = [routingMessage length];

        if (v23)
        {
          self->_hasIncidentItems = 1;
          v24 = [(TransitDirectionsStepsListDataProvider *)self _incidentItemWithIncidentMessage:v21];
          v25 = sub_10088E298();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            routingMessage2 = [v21 routingMessage];
            *buf = 138477827;
            v55 = routingMessage2;
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

  tripSegment = [(GEOComposedRouteStep *)v47 tripSegment];
  rideOptionsCount = [tripSegment rideOptionsCount];

  if (rideOptionsCount >= 2)
  {
    v31 = sub_10088E298();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "- adding clustered rides item", buf, 2u);
    }

    v32 = [TransitDirectionsListClusteredVehicleItem alloc];
    tripSegment2 = [(GEOComposedRouteStep *)v47 tripSegment];
    v34 = [(TransitDirectionsListClusteredVehicleItem *)v32 initWithClusteredRouteSegment:tripSegment2];

    [(TransitDirectionsStepsListDataProvider *)self _appendItem:v34 toArray:v14];
    ++self->_segmentRangeLength;
  }

  v35 = [[NSMutableArray alloc] initWithCapacity:2];
  v36 = self->_prefixStepForNextBoardItem;
  transitStep2 = [(GEOComposedRouteStep *)v36 transitStep];
  maneuverType = [transitStep2 maneuverType];

  if (v36 && (maneuverType & 0xFFFFFFFE) == 6)
  {
    v39 = sub_10088E298();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = @"TRANSFER_STOP_TO_STOP";
      if (maneuverType == 7)
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
  _transitTripBoardItem = [(TransitDirectionsStepsListDataProvider *)self _transitTripBoardItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:_transitTripBoardItem toArray:self->_mutableItems];
  _transitTripAlightItem = [(TransitDirectionsStepsListDataProvider *)self _transitTripAlightItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:_transitTripAlightItem toArray:self->_mutableItems];
}

- (id)_titleForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  responseSearch = [waypointCopy responseSearch];
  singleLineAddress = [responseSearch singleLineAddress];

  responseSearch2 = [waypointCopy responseSearch];
  mapItem = [responseSearch2 mapItem];
  if ([mapItem _hasTransitDisplayName])
  {
  }

  else
  {
    v8 = [singleLineAddress length];

    if (v8)
    {
      title = singleLineAddress;
      goto LABEL_6;
    }
  }

  responseSearch3 = [waypointCopy responseSearch];
  title = [responseSearch3 title];

LABEL_6:

  return title;
}

- (id)_destinationTitle
{
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  _maps_directionsWaypoints = [route _maps_directionsWaypoints];
  lastObject = [_maps_directionsWaypoints lastObject];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _titleForWaypoint:lastObject];

  return v6;
}

- (id)_destinationItem
{
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  destination = [route destination];
  mkMapItem = [destination mkMapItem];
  v6 = +[MKSystemController sharedInstance];
  [v6 screenScale];
  v7 = [MKMapItem _maps_markerImageForMapItem:mkMapItem scale:3 size:1 useMarkerFallback:?];

  v8 = [[TransitDirectionsListImageItem alloc] initWithImage:v7 instructions:0];
  [(TransitDirectionsListItem *)v8 setType:1];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Arrive [Transit List View]" value:@"localized string not found" table:0];

  v11 = [[GEOComposedString alloc] initWithString:v10];
  v24 = v11;
  v12 = [NSArray arrayWithObjects:&v24 count:1];
  [(TransitDirectionsListItem *)v8 setMajorFormattedStrings:v12];

  v13 = [GEOComposedString alloc];
  _destinationTitle = [(TransitDirectionsStepsListDataProvider *)self _destinationTitle];
  v15 = [v13 initWithString:_destinationTitle];

  if (v15)
  {
    v23 = v15;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(TransitDirectionsListItem *)v8 setMinorFormattedStrings:v16];
  }

  route2 = [(TransitDirectionsStepsListDataProvider *)self route];
  steps = [route2 steps];
  lastObject = [steps lastObject];

  if (lastObject)
  {
    v22 = lastObject;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [(TransitDirectionsListItem *)v8 setComposedRouteSteps:v20];
  }

  return v8;
}

- (id)_originTitle
{
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  _maps_directionsWaypoints = [route _maps_directionsWaypoints];
  firstObject = [_maps_directionsWaypoints firstObject];
  v6 = [(TransitDirectionsStepsListDataProvider *)self _titleForWaypoint:firstObject];

  return v6;
}

- (id)_originItem
{
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  origin = [route origin];
  mkMapItem = [origin mkMapItem];
  v6 = +[MKSystemController sharedInstance];
  [v6 screenScale];
  v7 = [MKMapItem _maps_markerImageForMapItem:mkMapItem scale:3 size:1 useMarkerFallback:?];

  v8 = [[TransitDirectionsListImageItem alloc] initWithImage:v7 instructions:0];
  [(TransitDirectionsListItem *)v8 setType:0];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Start [Transit List View]" value:@"localized string not found" table:0];

  v11 = [[GEOComposedString alloc] initWithString:v10];
  v24 = v11;
  v12 = [NSArray arrayWithObjects:&v24 count:1];
  [(TransitDirectionsListItem *)v8 setMajorFormattedStrings:v12];

  v13 = [GEOComposedString alloc];
  _originTitle = [(TransitDirectionsStepsListDataProvider *)self _originTitle];
  v15 = [v13 initWithString:_originTitle];

  if (v15)
  {
    v23 = v15;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(TransitDirectionsListItem *)v8 setMinorFormattedStrings:v16];
  }

  route2 = [(TransitDirectionsStepsListDataProvider *)self route];
  steps = [route2 steps];
  firstObject = [steps firstObject];

  if (firstObject)
  {
    v22 = firstObject;
    v20 = [NSArray arrayWithObjects:&v22 count:1];
    [(TransitDirectionsListItem *)v8 setComposedRouteStepsDisplayedOnMap:v20];
  }

  return v8;
}

- (void)_updateCurrentStepToIndex:(unint64_t)index
{
  self->_stepIdx = index;
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  steps = [route steps];
  if ([steps count] <= index)
  {
    currentStep = self->_currentStep;
    p_currentStep = &self->_currentStep;
    route2 = currentStep;
    *p_currentStep = 0;
  }

  else
  {
    route2 = [(TransitDirectionsStepsListDataProvider *)self route];
    steps2 = [route2 steps];
    v9 = [steps2 objectAtIndexedSubscript:self->_stepIdx];
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

- (void)_appendItem:(id)item toArray:(id)array
{
  arrayCopy = array;
  itemCopy = item;
  -[TransitDirectionsStepsListDataProvider _insertItem:atIndex:inArray:](self, "_insertItem:atIndex:inArray:", itemCopy, [arrayCopy count], arrayCopy);
}

- (void)_insertItem:(id)item atIndex:(unint64_t)index inArray:(id)array
{
  itemCopy = item;
  arrayCopy = array;
  v9 = [(NSMutableArray *)arrayCopy count];
  v10 = v9;
  if (v9 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v9;
  }

  if (itemCopy && arrayCopy)
  {
    if (self->_mutableItems == arrayCopy)
    {
      if (indexCopy)
      {
        v12 = [(NSMutableArray *)arrayCopy objectAtIndexedSubscript:indexCopy - 1];
        [v12 setNextItem:itemCopy];
        [itemCopy setPreviousItem:v12];
      }

      if (v10 > index)
      {
        v13 = [(NSMutableArray *)arrayCopy objectAtIndexedSubscript:indexCopy];
        [itemCopy setNextItem:v13];
        [v13 setPreviousItem:itemCopy];
      }
    }

    [(NSMutableArray *)arrayCopy insertObject:itemCopy atIndex:indexCopy];
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
  route = [(TransitDirectionsStepsListDataProvider *)self route];
  v4 = sub_10088E298();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    origin = [route origin];
    navDisplayName = [origin navDisplayName];
    destination = [route destination];
    navDisplayName2 = [destination navDisplayName];
    *buf = 138478339;
    v30 = navDisplayName;
    v31 = 2113;
    v32 = navDisplayName2;
    v33 = 2048;
    stepsCount = [route stepsCount];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Start building items for route %{private}@ → %{private}@, %lu steps", buf, 0x20u);
  }

  v28 = route;

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
  _originItem = [(TransitDirectionsStepsListDataProvider *)self _originItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:_originItem toArray:self->_mutableItems];
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
        transitStep = self->_currentStep;
        maneuver = [(GEOComposedRouteStep *)transitStep maneuver];
        if (maneuver <= 4)
        {
          if (maneuver > 2)
          {
            if (maneuver == 3)
            {
              [(TransitDirectionsStepsListDataProvider *)self _consumeTransitTripSegment];
              prefixStepForNextBoardItem = self->_prefixStepForNextBoardItem;
              self->_prefixStepForNextBoardItem = 0;

              goto LABEL_21;
            }
          }

          else if (maneuver > 2)
          {
            goto LABEL_21;
          }
        }

        else if (maneuver > 7)
        {
          if (maneuver != 8 && maneuver != 9 && maneuver != 10)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((maneuver - 6) < 2)
          {
            objc_storeStrong(&self->_prefixStepForNextBoardItem, self->_currentStep);
            goto LABEL_20;
          }

          if (maneuver != 5)
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

    getPreviousStep = [(GEOComposedRouteStep *)self->_currentStep getPreviousStep];
    transitStep = [getPreviousStep transitStep];

    transitStep2 = [(GEOComposedRouteStep *)self->_currentStep transitStep];
    if ([transitStep2 maneuverType] == 10)
    {
      if ([(GEOComposedRouteStep *)transitStep maneuverType]== 7)
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

      maneuverType = [(GEOComposedRouteStep *)transitStep maneuverType];

      if (maneuverType == 5)
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
  _destinationItem = [(TransitDirectionsStepsListDataProvider *)self _destinationItem];
  [(TransitDirectionsStepsListDataProvider *)self _appendItem:_destinationItem toArray:self->_mutableItems];
  v26 = self->_mutableSegmentRanges;
  v27 = [NSValue valueWithRange:self->_segmentRangeLocation, 1];
  [(NSMutableArray *)v26 addObject:v27];

  [(TransitDirectionsStepsListDataProvider *)self _debugPrintHierarchy];
}

- (unint64_t)indexForItem:(id)item inSection:(unint64_t)section
{
  itemCopy = item;
  v7 = [NSIndexPath indexPathForRow:0 inSection:section];
  v8 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v7];

  if (v8 == itemCopy)
  {
    v14 = 0;
  }

  else
  {
    v9 = [(TransitDirectionsStepsListDataProvider *)self numberOfItemsInSection:section];
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
        v13 = [NSIndexPath indexPathForRow:v11 inSection:section];
        v8 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v13];

        if (v8 == itemCopy)
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }

      v15 = [NSIndexPath indexPathForRow:v11 inSection:section];
      v14 = [v15 row];
    }
  }

  return v14;
}

- (id)indexPathForItem:(id)item
{
  itemCopy = item;
  if ([(TransitDirectionsStepsListDataProvider *)self numberOfSections])
  {
    v5 = 0;
    while (1)
    {
      v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
      v7 = [(TransitDirectionsStepsListDataProvider *)self itemAtIndexPath:v6];
      v8 = v7;
      if (v7 == itemCopy)
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

          if (v8 == itemCopy)
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

- (id)_itemAtIndexPath:(id)path currentPosition:(unint64_t)position inItems:(id)items includingHiddenSubitems:(BOOL)subitems
{
  subitemsCopy = subitems;
  pathCopy = path;
  itemsCopy = items;
  if ([pathCopy length] <= position || (v12 = objc_msgSend(pathCopy, "indexAtPosition:", position), v12 >= objc_msgSend(itemsCopy, "count")))
  {
    v14 = 0;
  }

  else
  {
    v13 = [itemsCopy objectAtIndexedSubscript:v12];
    if ([pathCopy length] - 1 == position)
    {
      v14 = v13;
    }

    else
    {
      v15 = [NSMutableArray arrayWithObject:v13];
      if ([v13 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
      {
        [v13 subItemsWithForceExpand:subitemsCopy];
      }

      else
      {
        [v13 subItems];
      }
      v16 = ;
      [v15 addObjectsFromArray:v16];

      v14 = [(TransitDirectionsStepsListDataProvider *)self _itemAtIndexPath:pathCopy currentPosition:position + 1 inItems:v15 includingHiddenSubitems:subitemsCopy];
    }
  }

  return v14;
}

- (id)_itemAtIndexPath:(id)path includingHiddenSubitems:(BOOL)subitems
{
  subitemsCopy = subitems;
  pathCopy = path;
  items = [(TransitDirectionsStepsListDataProvider *)self items];
  v8 = [(TransitDirectionsStepsListDataProvider *)self _itemAtIndexPath:pathCopy currentPosition:0 inItems:items includingHiddenSubitems:subitemsCopy];

  return v8;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section includingHiddenSubitems:(BOOL)subitems
{
  subitemsCopy = subitems;
  items = [(TransitDirectionsStepsListDataProvider *)self items];
  v8 = [items count];

  if (v8 <= section)
  {
    return 0;
  }

  items2 = [(TransitDirectionsStepsListDataProvider *)self items];
  v10 = [items2 objectAtIndexedSubscript:section];

  if ([v10 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    v11 = [v10 numberOfSubItemsWithForceExpand:subitemsCopy];
  }

  else
  {
    subItems = [v10 subItems];
    v11 = [subItems count];
  }

  v12 = v11 + 1;

  return v12;
}

- (unint64_t)numberOfSections
{
  items = [(TransitDirectionsStepsListDataProvider *)self items];
  v3 = [items count];

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

- (TransitDirectionsStepsListDataProvider)initWithRoute:(id)route forGuidance:(BOOL)guidance
{
  routeCopy = route;
  v10.receiver = self;
  v10.super_class = TransitDirectionsStepsListDataProvider;
  v7 = [(TransitDirectionsStepsListDataProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_route, routeCopy);
    v8->_forGuidance = guidance;
  }

  return v8;
}

@end