@interface SharedTripSummary
+ (id)summaryWithSharedTrips:(id)trips;
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)subtitle;
- (NSString)subtitleForCarPlay;
- (NSString)title;
- (NSString)titleForCarPlay;
- (id)_transportTypeStringForAnalytics;
- (void)updateModel:(id)model;
@end

@implementation SharedTripSummary

- (void)updateModel:(id)model
{
  modelCopy = model;
  title = [(SharedTripSummary *)self title];
  [modelCopy setFirstLine:title];

  subtitle = [(SharedTripSummary *)self subtitle];
  [modelCopy setSecondLine:subtitle];
}

+ (id)summaryWithSharedTrips:(id)trips
{
  tripsCopy = trips;
  v5 = objc_alloc_init(self);
  [v5 setSharedTrips:tripsCopy];

  return v5;
}

- (NSString)subtitleForCarPlay
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v4 = [sharedTrips count];

  if (v4 == 1)
  {
    sharedTrips2 = [(SharedTripSummary *)self sharedTrips];
    firstObject = [sharedTrips2 firstObject];

    carPlayListCellSubtitle = [firstObject carPlayListCellSubtitle];
  }

  else
  {
    carPlayListCellSubtitle = [(SharedTripSummary *)self subtitle];
  }

  return carPlayListCellSubtitle;
}

- (NSString)subtitle
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v4 = [sharedTrips count];

  if (v4 == 1)
  {
    sharedTrips2 = [(SharedTripSummary *)self sharedTrips];
    firstObject = [sharedTrips2 firstObject];

    homeCellSubtitle = [firstObject homeCellSubtitle];
  }

  else
  {
    v8 = [NSMutableArray alloc];
    sharedTrips3 = [(SharedTripSummary *)self sharedTrips];
    v10 = [v8 initWithCapacity:{objc_msgSend(sharedTrips3, "count")}];

    v11 = [NSMutableSet alloc];
    sharedTrips4 = [(SharedTripSummary *)self sharedTrips];
    v13 = [v11 initWithCapacity:{objc_msgSend(sharedTrips4, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    sharedTrips5 = [(SharedTripSummary *)self sharedTrips];
    v15 = [sharedTrips5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(sharedTrips5);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          senderInfo = [v19 senderInfo];
          fromIdentifier = [senderInfo fromIdentifier];

          if (([v13 containsObject:fromIdentifier] & 1) == 0)
          {
            [v13 addObject:fromIdentifier];
            senderInfo2 = [v19 senderInfo];
            localName = [senderInfo2 localName];
            [v10 addObject:localName];
          }
        }

        v16 = [sharedTrips5 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    v24 = [v10 count];
    v25 = +[NSBundle mainBundle];
    v26 = v25;
    if (v24 == 1)
    {
      v27 = [v25 localizedStringForKey:@"Shared Trips Cell Subtitle Format String (one sender value:multiple routes)" table:{@"localized string not found", 0}];

      firstObject2 = [v10 firstObject];
      [NSString localizedStringWithFormat:v27, v4, firstObject2];
    }

    else
    {
      v27 = [v25 localizedStringForKey:@"Shared Trips Cell Subtitle Format String (multiple sender value:multiple routes)" table:{@"localized string not found", 0}];

      v29 = [v10 count] - 1;
      firstObject2 = [v10 firstObject];
      [NSString localizedStringWithFormat:v27, v29, firstObject2];
    }
    homeCellSubtitle = ;
  }

  return homeCellSubtitle;
}

- (NSString)titleForCarPlay
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v4 = [sharedTrips count];

  if (v4 == 1)
  {
    sharedTrips2 = [(SharedTripSummary *)self sharedTrips];
    firstObject = [sharedTrips2 firstObject];

    carPlayListCellTitle = [firstObject carPlayListCellTitle];
  }

  else
  {
    carPlayListCellTitle = [(SharedTripSummary *)self title];
  }

  return carPlayListCellTitle;
}

- (NSString)title
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v4 = [sharedTrips count];

  if (v4 == 1)
  {
    sharedTrips2 = [(SharedTripSummary *)self sharedTrips];
    firstObject = [sharedTrips2 firstObject];

    homeCellTitle = [firstObject homeCellTitle];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    firstObject = [v8 localizedStringForKey:@"Shared Trip Format [Cell value:Title]" table:{@"localized string not found", 0}];

    sharedTrips3 = [(SharedTripSummary *)self sharedTrips];
    homeCellTitle = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", firstObject, [sharedTrips3 count]);
  }

  return homeCellTitle;
}

- (id)_transportTypeStringForAnalytics
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v3 = sub_100021DB0(sharedTrips, &stru_101630BE8);

  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  sharedTrips = [(SharedTripSummary *)self sharedTrips];
  v3 = [sharedTrips valueForKey:@"groupIdentifier"];
  v4 = [NSString stringWithFormat:@"SharedTripSummary-%@", v3];

  return v4;
}

@end