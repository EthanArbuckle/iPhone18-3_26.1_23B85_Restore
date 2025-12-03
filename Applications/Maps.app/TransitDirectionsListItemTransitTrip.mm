@interface TransitDirectionsListItemTransitTrip
- (BOOL)shouldEnableExpandedButton;
- (TransitDirectionsListItemTransitTrip)initWithTripStep:(id)step;
- (id)_collapseButtonTitleByVehicleType;
- (id)_countStopsStringClientFallback;
- (id)_countStopsStringFromServer;
- (id)_expandButtonTitleFromServer;
- (id)expandingButtonTitleForExpandedState:(BOOL)state;
- (id)subItemsWithForceExpand:(BOOL)expand;
- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)expand;
- (void)_rebuildSubItems;
- (void)setExpandedItems:(id)items;
@end

@implementation TransitDirectionsListItemTransitTrip

- (void)setExpandedItems:(id)items
{
  v4 = [items copy];
  expandedItems = self->_expandedItems;
  self->_expandedItems = v4;

  [(TransitDirectionsListItem *)self _invalidateSubItems];
}

- (TransitDirectionsListItemTransitTrip)initWithTripStep:(id)step
{
  stepCopy = step;
  routeDetailsPrimaryArtwork = [stepCopy routeDetailsPrimaryArtwork];
  firstObject = [routeDetailsPrimaryArtwork firstObject];

  steppingArtwork = [stepCopy steppingArtwork];
  firstObject2 = [steppingArtwork firstObject];

  v10 = [MNTransitStepInstruction instructionForStep:stepCopy context:1];
  if (firstObject)
  {
    v23 = &off_1016E6CF8;
    v24 = firstObject;
    v11 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    if (firstObject2)
    {
LABEL_3:
      v21 = &off_1016E6CF8;
      v22 = firstObject2;
      v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = &__NSDictionary0__struct;
    if (firstObject2)
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
    objc_storeStrong(&v13->_tripStep, step);
    transitStep = [stepCopy transitStep];
    badges = [transitStep badges];
    v17 = [badges copy];
    badges = v14->super.super._badges;
    v14->super.super._badges = v17;
  }

  return v14;
}

- (unint64_t)numberOfSubItemsWithForceExpand:(BOOL)expand
{
  v3 = [(TransitDirectionsListItemTransitTrip *)self subItemsWithForceExpand:expand];
  v4 = [v3 count];

  return v4;
}

- (id)subItemsWithForceExpand:(BOOL)expand
{
  expandCopy = expand;
  if ([(TransitDirectionsListItemTransitTrip *)self expanded]|| expandCopy)
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

- (BOOL)shouldEnableExpandedButton
{
  expandedItems = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v3 = [expandedItems count] != 0;

  return v3;
}

- (id)_countStopsStringClientFallback
{
  expandedItems = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v4 = [expandedItems count];
  v5 = v4 + 1;

  expandedItems2 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  lastObject = [expandedItems2 lastObject];

  if (lastObject && [lastObject type] != 5)
  {
    expandedItems3 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
    v9 = [expandedItems3 count];

    if (v9 == 2)
    {
      expandedItems4 = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
      firstObject = [expandedItems4 firstObject];

      composedRouteSteps = [firstObject composedRouteSteps];
      lastObject2 = [composedRouteSteps lastObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [lastObject2 maneuver] == 5)
      {
        v4 = 1;
      }
    }

    v5 = v4;
  }

  tripStep = [(TransitDirectionsListItemTransitTrip *)self tripStep];
  isBus = [tripStep isBus];

  if (isBus)
  {
    v16 = +[NSBundle mainBundle];
    v17 = v16;
    v18 = @"%d stop [BUS]";
  }

  else
  {
    tripStep2 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
    isRail = [tripStep2 isRail];

    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (isRail)
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
  transitInstruction = [(TransitDirectionsListItem *)self transitInstruction];
  countStopsString = [transitInstruction countStopsString];

  v4 = [countStopsString optionsWithArgumentHandler:&stru_101657568];
  v5 = [countStopsString stringWithOptions:v4];

  return v5;
}

- (id)_expandButtonTitleFromServer
{
  transitInstruction = [(TransitDirectionsListItem *)self transitInstruction];
  expandableListString = [transitInstruction expandableListString];

  if (!expandableListString)
  {
    if (-[TransitDirectionsListItem type](self, "type") == 3 && (-[TransitDirectionsListItem previousItem](self, "previousItem"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v6 == 2))
    {
      previousItem = [(TransitDirectionsListItem *)self previousItem];
      transitInstruction2 = [previousItem transitInstruction];
      expandableListString = [transitInstruction2 expandableListString];
    }

    else
    {
      expandableListString = 0;
    }
  }

  stringWithDefaultOptions = [expandableListString stringWithDefaultOptions];

  return stringWithDefaultOptions;
}

- (id)_collapseButtonTitleByVehicleType
{
  tripStep = [(TransitDirectionsListItemTransitTrip *)self tripStep];
  isBus = [tripStep isBus];

  if (isBus)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Transit_Ride_Steps_Hide_Bus";
  }

  else
  {
    tripStep2 = [(TransitDirectionsListItemTransitTrip *)self tripStep];
    isRail = [tripStep2 isRail];

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (isRail)
    {
      v7 = @"Transit_Ride_Steps_Hide_Rail";
    }

    else
    {
      v7 = @"Transit_Ride_Steps_Hide_Other";
    }
  }

  v10 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];
  expandedItems = [(TransitDirectionsListItemTransitTrip *)self expandedItems];
  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v10, [expandedItems count]);

  return v12;
}

- (id)expandingButtonTitleForExpandedState:(BOOL)state
{
  if (state && (-[TransitDirectionsListItemTransitTrip expandedItems](self, "expandedItems"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    _collapseButtonTitleByVehicleType = [(TransitDirectionsListItemTransitTrip *)self _collapseButtonTitleByVehicleType];
  }

  else
  {
    _collapseButtonTitleByVehicleType = [(TransitDirectionsListItemTransitTrip *)self _expandButtonTitleFromServer];
    if (![_collapseButtonTitleByVehicleType length])
    {
      _countStopsStringFromServer = [(TransitDirectionsListItemTransitTrip *)self _countStopsStringFromServer];

      _collapseButtonTitleByVehicleType = _countStopsStringFromServer;
    }

    if (![_collapseButtonTitleByVehicleType length])
    {
      _countStopsStringClientFallback = [(TransitDirectionsListItemTransitTrip *)self _countStopsStringClientFallback];

      _collapseButtonTitleByVehicleType = _countStopsStringClientFallback;
    }
  }

  return _collapseButtonTitleByVehicleType;
}

@end