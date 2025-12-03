@interface TransitDirectionsListItemWalking
- (BOOL)_shouldHideWalkingSubStep:(id)step;
- (TransitDirectionsListItemWalking)initWithWalkingSegment:(id)segment toBoardStep:(id)step;
- (id)_generateWalkingSubSteps;
- (id)_transitWalkingLegInstruction;
- (id)expandingButtonTitleForExpandedState:(BOOL)state;
- (id)subItemsWithForceExpand:(BOOL)expand;
- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)expand;
- (void)_rebuildSubItems;
- (void)setExpandedItems:(id)items;
@end

@implementation TransitDirectionsListItemWalking

- (BOOL)_shouldHideWalkingSubStep:(id)step
{
  stepCopy = step;
  geoStep = [stepCopy geoStep];
  if ([geoStep maneuverType] == 18)
  {
    [stepCopy distance];
    v6 = v5 < 3.048;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_generateWalkingSubSteps
{
  _transitWalkingLegInstruction = [(TransitDirectionsListItemWalking *)self _transitWalkingLegInstruction];
  walkingSegment = [_transitWalkingLegInstruction walkingSegment];

  v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [walkingSegment stepCount]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = walkingSegment;
  obj = [walkingSegment steps];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = &GEOMapsAuthEnvironmentKey_ptr;
    v9 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v26 = *v30;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (![(TransitDirectionsListItemWalking *)self _shouldHideWalkingSubStep:v11])
        {
          v12 = [v11 contentsForContext:1];
          instruction = [v12 instruction];

          if (instruction)
          {
            v14 = objc_alloc_init(TransitDirectionsListItem);
            v15 = [objc_alloc(v8[152]) initWithString:instruction];
            v34 = v15;
            v16 = v9;
            v17 = [v9[286] arrayWithObjects:&v34 count:1];
            [(TransitDirectionsListItem *)v14 setMajorFormattedStrings:v17];

            [v11 distance];
            if (v18 <= 0.0)
            {
              [(TransitDirectionsListItem *)v14 setPrimaryAccessoryString:0];
            }

            else
            {
              v19 = objc_alloc(v8[152]);
              distanceString = [v11 distanceString];
              v21 = [v19 initWithString:distanceString];
              [(TransitDirectionsListItem *)v14 setPrimaryAccessoryString:v21];
            }

            [(TransitDirectionsListItem *)v14 setParentItem:self];
            [(TransitDirectionsListItem *)v14 setType:14];
            v33 = v11;
            v9 = v16;
            v22 = [v16[286] arrayWithObjects:&v33 count:1];
            [(TransitDirectionsListItem *)v14 setComposedRouteSteps:v22];

            [v27 addObject:v14];
            v8 = &GEOMapsAuthEnvironmentKey_ptr;
            v7 = v26;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v23 = [v27 copy];

  return v23;
}

- (id)_transitWalkingLegInstruction
{
  transitInstruction = [(TransitDirectionsListItem *)self transitInstruction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    transitInstruction2 = [(TransitDirectionsListItem *)self transitInstruction];
  }

  else
  {
    transitInstruction2 = 0;
  }

  return transitInstruction2;
}

- (TransitDirectionsListItemWalking)initWithWalkingSegment:(id)segment toBoardStep:(id)step
{
  segmentCopy = segment;
  stepCopy = step;
  v8 = [MNTransitWalkingSegmentInstruction instructionForWalkingSegment:segmentCopy context:2];
  steps = [segmentCopy steps];
  firstObject = [steps firstObject];
  routeDetailsPrimaryArtwork = [firstObject routeDetailsPrimaryArtwork];
  firstObject2 = [routeDetailsPrimaryArtwork firstObject];

  if (firstObject2)
  {
    v39 = &off_1016E6CF8;
    v40 = firstObject2;
    v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  v37.receiver = self;
  v37.super_class = TransitDirectionsListItemWalking;
  v14 = [(TransitDirectionsListArtworkItem *)&v37 initWithArtworks:v13 alternateArtworks:0 instructions:v8];
  if (firstObject2)
  {
  }

  if (v14)
  {
    _generateWalkingSubSteps = [(TransitDirectionsListItemWalking *)v14 _generateWalkingSubSteps];
    walkingSubItems = v14->_walkingSubItems;
    v14->_walkingSubItems = _generateWalkingSubSteps;

    boardingInfo = [stepCopy boardingInfo];
    hasPreBoardingTimeInstruction = [boardingInfo hasPreBoardingTimeInstruction];

    if (hasPreBoardingTimeInstruction)
    {
      boardingInfo2 = [stepCopy boardingInfo];
      preBoardingTimeInstruction = [boardingInfo2 preBoardingTimeInstruction];

      v21 = [[NSMutableArray alloc] initWithCapacity:2];
      if ([preBoardingTimeInstruction hasPrimaryText])
      {
        v22 = [GEOComposedString alloc];
        primaryText = [preBoardingTimeInstruction primaryText];
        v24 = [v22 initWithGeoFormattedString:primaryText];
        [v21 addObject:v24];
      }

      if ([preBoardingTimeInstruction hasSecondaryText])
      {
        v25 = [GEOComposedString alloc];
        secondaryText = [preBoardingTimeInstruction secondaryText];
        v27 = [v25 initWithGeoFormattedString:secondaryText];
        [v21 addObject:v27];
      }

      v28 = [[TransitDirectionsListBoardingInfoItem alloc] initWithPreboardingStrings:v21];
      [(TransitDirectionsListItem *)v28 setParentItem:v14];
      v38 = v28;
      v29 = [NSArray arrayWithObjects:&v38 count:1];
      [(TransitDirectionsListItem *)v14 setFooterItems:v29];
    }

    [(TransitDirectionsListItem *)v14 setType:9];
    steps2 = [segmentCopy steps];
    [(TransitDirectionsListItem *)v14 setComposedRouteStepsDisplayedOnMap:steps2];
    lastObject = [steps2 lastObject];
    isArrivalStep = [lastObject isArrivalStep];

    if (isArrivalStep)
    {
      v33 = [steps2 mutableCopy];
      [v33 removeLastObject];
      v34 = [v33 copy];

      steps2 = v34;
    }

    [(TransitDirectionsListItem *)v14 setComposedRouteSteps:steps2];
    v35 = v14;
  }

  return v14;
}

- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)expand
{
  v3 = [(TransitDirectionsListItemWalking *)self subItemsWithForceExpand:expand];
  v4 = [v3 count];

  return v4;
}

- (id)subItemsWithForceExpand:(BOOL)expand
{
  expandCopy = expand;
  if ([(TransitDirectionsListItemWalking *)self expanded]|| expandCopy)
  {
    subItemsExpanded = self->super.super._subItemsExpanded;
    if (!subItemsExpanded)
    {
      v7 = sub_100EA4B34(self, 1);
      v8 = self->super.super._subItemsExpanded;
      self->super.super._subItemsExpanded = v7;

      subItemsExpanded = self->super.super._subItemsExpanded;
    }

    subItems = subItemsExpanded;
  }

  else
  {
    subItems = [(TransitDirectionsListItem *)self subItems];
  }

  return subItems;
}

- (void)_rebuildSubItems
{
  v3 = sub_100EA4B34(self, 0);
  subItems = self->super.super._subItems;
  self->super.super._subItems = v3;
}

- (id)expandingButtonTitleForExpandedState:(BOOL)state
{
  stateCopy = state;
  expandedItems = [(TransitDirectionsListItemWalking *)self expandedItems];
  v5 = [expandedItems count];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (stateCopy)
    {
      v8 = @"Transit_Walking_Steps_Hide";
    }

    else
    {
      v8 = @"Details_Stepping_List_iOS";
    }

    v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setExpandedItems:(id)items
{
  [(TransitDirectionsListItemWalking *)self setWalkingSubItems:items];

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

@end