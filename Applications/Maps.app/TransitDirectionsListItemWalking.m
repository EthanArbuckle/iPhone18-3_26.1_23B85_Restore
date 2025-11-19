@interface TransitDirectionsListItemWalking
- (BOOL)_shouldHideWalkingSubStep:(id)a3;
- (TransitDirectionsListItemWalking)initWithWalkingSegment:(id)a3 toBoardStep:(id)a4;
- (id)_generateWalkingSubSteps;
- (id)_transitWalkingLegInstruction;
- (id)expandingButtonTitleForExpandedState:(BOOL)a3;
- (id)subItemsWithForceExpand:(BOOL)a3;
- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)a3;
- (void)_rebuildSubItems;
- (void)setExpandedItems:(id)a3;
@end

@implementation TransitDirectionsListItemWalking

- (BOOL)_shouldHideWalkingSubStep:(id)a3
{
  v3 = a3;
  v4 = [v3 geoStep];
  if ([v4 maneuverType] == 18)
  {
    [v3 distance];
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
  v3 = [(TransitDirectionsListItemWalking *)self _transitWalkingLegInstruction];
  v4 = [v3 walkingSegment];

  v27 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 stepCount]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v4;
  obj = [v4 steps];
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
          v13 = [v12 instruction];

          if (v13)
          {
            v14 = objc_alloc_init(TransitDirectionsListItem);
            v15 = [objc_alloc(v8[152]) initWithString:v13];
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
              v20 = [v11 distanceString];
              v21 = [v19 initWithString:v20];
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
  v3 = [(TransitDirectionsListItem *)self transitInstruction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TransitDirectionsListItem *)self transitInstruction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TransitDirectionsListItemWalking)initWithWalkingSegment:(id)a3 toBoardStep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MNTransitWalkingSegmentInstruction instructionForWalkingSegment:v6 context:2];
  v9 = [v6 steps];
  v10 = [v9 firstObject];
  v11 = [v10 routeDetailsPrimaryArtwork];
  v12 = [v11 firstObject];

  if (v12)
  {
    v39 = &off_1016E6CF8;
    v40 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  }

  else
  {
    v13 = &__NSDictionary0__struct;
  }

  v37.receiver = self;
  v37.super_class = TransitDirectionsListItemWalking;
  v14 = [(TransitDirectionsListArtworkItem *)&v37 initWithArtworks:v13 alternateArtworks:0 instructions:v8];
  if (v12)
  {
  }

  if (v14)
  {
    v15 = [(TransitDirectionsListItemWalking *)v14 _generateWalkingSubSteps];
    walkingSubItems = v14->_walkingSubItems;
    v14->_walkingSubItems = v15;

    v17 = [v7 boardingInfo];
    v18 = [v17 hasPreBoardingTimeInstruction];

    if (v18)
    {
      v19 = [v7 boardingInfo];
      v20 = [v19 preBoardingTimeInstruction];

      v21 = [[NSMutableArray alloc] initWithCapacity:2];
      if ([v20 hasPrimaryText])
      {
        v22 = [GEOComposedString alloc];
        v23 = [v20 primaryText];
        v24 = [v22 initWithGeoFormattedString:v23];
        [v21 addObject:v24];
      }

      if ([v20 hasSecondaryText])
      {
        v25 = [GEOComposedString alloc];
        v26 = [v20 secondaryText];
        v27 = [v25 initWithGeoFormattedString:v26];
        [v21 addObject:v27];
      }

      v28 = [[TransitDirectionsListBoardingInfoItem alloc] initWithPreboardingStrings:v21];
      [(TransitDirectionsListItem *)v28 setParentItem:v14];
      v38 = v28;
      v29 = [NSArray arrayWithObjects:&v38 count:1];
      [(TransitDirectionsListItem *)v14 setFooterItems:v29];
    }

    [(TransitDirectionsListItem *)v14 setType:9];
    v30 = [v6 steps];
    [(TransitDirectionsListItem *)v14 setComposedRouteStepsDisplayedOnMap:v30];
    v31 = [v30 lastObject];
    v32 = [v31 isArrivalStep];

    if (v32)
    {
      v33 = [v30 mutableCopy];
      [v33 removeLastObject];
      v34 = [v33 copy];

      v30 = v34;
    }

    [(TransitDirectionsListItem *)v14 setComposedRouteSteps:v30];
    v35 = v14;
  }

  return v14;
}

- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)a3
{
  v3 = [(TransitDirectionsListItemWalking *)self subItemsWithForceExpand:a3];
  v4 = [v3 count];

  return v4;
}

- (id)subItemsWithForceExpand:(BOOL)a3
{
  v3 = a3;
  if ([(TransitDirectionsListItemWalking *)self expanded]|| v3)
  {
    subItemsExpanded = self->super.super._subItemsExpanded;
    if (!subItemsExpanded)
    {
      v7 = sub_100EA4B34(self, 1);
      v8 = self->super.super._subItemsExpanded;
      self->super.super._subItemsExpanded = v7;

      subItemsExpanded = self->super.super._subItemsExpanded;
    }

    v5 = subItemsExpanded;
  }

  else
  {
    v5 = [(TransitDirectionsListItem *)self subItems];
  }

  return v5;
}

- (void)_rebuildSubItems
{
  v3 = sub_100EA4B34(self, 0);
  subItems = self->super.super._subItems;
  self->super.super._subItems = v3;
}

- (id)expandingButtonTitleForExpandedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(TransitDirectionsListItemWalking *)self expandedItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v3)
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

- (void)setExpandedItems:(id)a3
{
  [(TransitDirectionsListItemWalking *)self setWalkingSubItems:a3];

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

@end