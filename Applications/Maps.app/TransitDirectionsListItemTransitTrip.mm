@interface TransitDirectionsListItemTransitTrip
- (BOOL)shouldEnableExpandedButton;
- (TransitDirectionsListItemTransitTrip)initWithTripStep:(id)a3;
- (id)_collapseButtonTitleByVehicleType;
- (id)_countStopsStringClientFallback;
- (id)_countStopsStringFromServer;
- (id)_expandButtonTitleFromServer;
- (id)expandingButtonTitleForExpandedState:(BOOL)a3;
- (id)subItemsWithForceExpand:(BOOL)a3;
- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)a3;
- (void)_rebuildSubItems;
- (void)setExpandedItems:(id)a3;
@end

@implementation TransitDirectionsListItemTransitTrip

- (void)setExpandedItems:(id)a3
{
  v4 = [a3 copy];
  expandedItems = self->_expandedItems;
  self->_expandedItems = v4;

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

- (TransitDirectionsListItemTransitTrip)initWithTripStep:(id)a3
{
  v5 = a3;
  v6 = [v5 routeDetailsPrimaryArtwork];
  v7 = [v6 firstObject];

  v8 = [v5 steppingArtwork];
  v9 = [v8 firstObject];

  v10 = [MNTransitStepInstruction instructionForStep:v5 context:1];
  if (v7)
  {
    v23 = &off_1016E6CF8;
    v24 = v7;
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    if (v9)
    {
LABEL_3:
      v21 = &off_1016E6CF8;
      v22 = v9;
      v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = &__NSDictionary0__struct;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = &__NSDictionary0__struct;
LABEL_6:
  v20.receiver = self;
  v20.super_class = TransitDirectionsListItemTransitTrip;
  v13 = [(TransitDirectionsListArtworkItem *)&v20 initWithArtworks:v11 alternateArtworks:v12 instructions:v10];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tripStep, a3);
    v15 = [v5 transitStep];
    v16 = [v15 badges];
    v17 = [v16 copy];
    badges = v14->super.super._badges;
    v14->super.super._badges = v17;
  }

  return v14;
}

- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)a3
{
  v3 = [(TransitDirectionsListItemTransitTrip *)self subItemsWithForceExpand:a3];
  v4 = [v3 count];

  return v4;
}

- (id)subItemsWithForceExpand:(BOOL)a3
{
  v3 = a3;
  if ([(TransitDirectionsListItemTransitTrip *)self expanded]|| v3)
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

- (BOOL)shouldEnableExpandedButton
{
  v2 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_countStopsStringClientFallback
{
  v3 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v4 = [v3 count];
  v5 = v4 + 1;

  v6 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v7 = [v6 lastObject];

  if (v7 && [v7 type] != 5)
  {
    v8 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
    v9 = [v8 count];

    if (v9 == 2)
    {
      v10 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
      v11 = [v10 firstObject];

      v12 = [v11 composedRouteSteps];
      v13 = [v12 lastObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 maneuver] == 5)
      {
        v4 = 1;
      }
    }

    v5 = v4;
  }

  v14 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
  v15 = [v14 isBus];

  if (v15)
  {
    v16 = +[NSBundle mainBundle];
    v17 = v16;
    v18 = @"%d stop [BUS]";
  }

  else
  {
    v19 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
    v20 = [v19 isRail];

    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (v20)
    {
      v18 = @"%d stop [RAIL]";
    }

    else
    {
      v18 = @"%d stop [OTHER]";
    }
  }

  v21 = [v16 localizedStringForKey:v18 value:@"localized string not found" table:0];

  v22 = [NSString localizedStringWithFormat:v21, v5];

  return v22;
}

- (id)_countStopsStringFromServer
{
  v2 = [(TransitDirectionsListItem *)self transitInstruction];
  v3 = [v2 countStopsString];

  v4 = [v3 optionsWithArgumentHandler:&stru_101657568];
  v5 = [v3 stringWithOptions:v4];

  return v5;
}

- (id)_expandButtonTitleFromServer
{
  v3 = [(TransitDirectionsListItem *)self transitInstruction];
  v4 = [v3 expandableListString];

  if (!v4)
  {
    if (-[TransitDirectionsListItem type](self, "type") == 3 && (-[TransitDirectionsListItem previousItem](self, "previousItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v6 == 2))
    {
      v7 = [(TransitDirectionsListItem *)self previousItem];
      v8 = [v7 transitInstruction];
      v4 = [v8 expandableListString];
    }

    else
    {
      v4 = 0;
    }
  }

  v9 = [v4 stringWithDefaultOptions];

  return v9;
}

- (id)_collapseButtonTitleByVehicleType
{
  v3 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
  v4 = [v3 isBus];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Transit_Ride_Steps_Hide_Bus";
  }

  else
  {
    v8 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
    v9 = [v8 isRail];

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v9)
    {
      v7 = @"Transit_Ride_Steps_Hide_Rail";
    }

    else
    {
      v7 = @"Transit_Ride_Steps_Hide_Other";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
  v11 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v10, [v11 count]);

  return v12;
}

- (id)expandingButtonTitleForExpandedState:(BOOL)a3
{
  if (a3 && (-[TransitDirectionsListItemTransitTrip expandedItems](self, "expandedItems"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = [(TransitDirectionsListItemTransitTrip *)self _collapseButtonTitleByVehicleType];
  }

  else
  {
    v6 = [(TransitDirectionsListItemTransitTrip *)self _expandButtonTitleFromServer];
    if (![v6 length])
    {
      v7 = [(TransitDirectionsListItemTransitTrip *)self _countStopsStringFromServer];

      v6 = v7;
    }

    if (![v6 length])
    {
      v8 = [(TransitDirectionsListItemTransitTrip *)self _countStopsStringClientFallback];

      v6 = v8;
    }
  }

  return v6;
}

@end