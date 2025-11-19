@interface SharedTripSummary
+ (id)summaryWithSharedTrips:(id)a3;
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)subtitle;
- (NSString)subtitleForCarPlay;
- (NSString)title;
- (NSString)titleForCarPlay;
- (id)_transportTypeStringForAnalytics;
- (void)updateModel:(id)a3;
@end

@implementation SharedTripSummary

- (void)updateModel:(id)a3
{
  v4 = a3;
  v5 = [(SharedTripSummary *)self title];
  [v4 setFirstLine:v5];

  v6 = [(SharedTripSummary *)self subtitle];
  [v4 setSecondLine:v6];
}

+ (id)summaryWithSharedTrips:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setSharedTrips:v4];

  return v5;
}

- (NSString)subtitleForCarPlay
{
  v3 = [(SharedTripSummary *)self sharedTrips];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SharedTripSummary *)self sharedTrips];
    v6 = [v5 firstObject];

    v7 = [v6 carPlayListCellSubtitle];
  }

  else
  {
    v7 = [(SharedTripSummary *)self subtitle];
  }

  return v7;
}

- (NSString)subtitle
{
  v3 = [(SharedTripSummary *)self sharedTrips];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SharedTripSummary *)self sharedTrips];
    v6 = [v5 firstObject];

    v7 = [v6 homeCellSubtitle];
  }

  else
  {
    v8 = [NSMutableArray alloc];
    v9 = [(SharedTripSummary *)self sharedTrips];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v11 = [NSMutableSet alloc];
    v12 = [(SharedTripSummary *)self sharedTrips];
    v13 = [v11 initWithCapacity:{objc_msgSend(v12, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(SharedTripSummary *)self sharedTrips];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v19 senderInfo];
          v21 = [v20 fromIdentifier];

          if (([v13 containsObject:v21] & 1) == 0)
          {
            [v13 addObject:v21];
            v22 = [v19 senderInfo];
            v23 = [v22 localName];
            [v10 addObject:v23];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }

    v24 = [v10 count];
    v25 = +[NSBundle mainBundle];
    v26 = v25;
    if (v24 == 1)
    {
      v27 = [v25 localizedStringForKey:@"Shared Trips Cell Subtitle Format String (one sender value:multiple routes)" table:{@"localized string not found", 0}];

      v28 = [v10 firstObject];
      [NSString localizedStringWithFormat:v27, v4, v28];
    }

    else
    {
      v27 = [v25 localizedStringForKey:@"Shared Trips Cell Subtitle Format String (multiple sender value:multiple routes)" table:{@"localized string not found", 0}];

      v29 = [v10 count] - 1;
      v28 = [v10 firstObject];
      [NSString localizedStringWithFormat:v27, v29, v28];
    }
    v7 = ;
  }

  return v7;
}

- (NSString)titleForCarPlay
{
  v3 = [(SharedTripSummary *)self sharedTrips];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SharedTripSummary *)self sharedTrips];
    v6 = [v5 firstObject];

    v7 = [v6 carPlayListCellTitle];
  }

  else
  {
    v7 = [(SharedTripSummary *)self title];
  }

  return v7;
}

- (NSString)title
{
  v3 = [(SharedTripSummary *)self sharedTrips];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(SharedTripSummary *)self sharedTrips];
    v6 = [v5 firstObject];

    v7 = [v6 homeCellTitle];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"Shared Trip Format [Cell value:Title]" table:{@"localized string not found", 0}];

    v9 = [(SharedTripSummary *)self sharedTrips];
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v9 count]);
  }

  return v7;
}

- (id)_transportTypeStringForAnalytics
{
  v2 = [(SharedTripSummary *)self sharedTrips];
  v3 = sub_100021DB0(v2, &stru_101630BE8);

  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v2 = [(SharedTripSummary *)self sharedTrips];
  v3 = [v2 valueForKey:@"groupIdentifier"];
  v4 = [NSString stringWithFormat:@"SharedTripSummary-%@", v3];

  return v4;
}

@end