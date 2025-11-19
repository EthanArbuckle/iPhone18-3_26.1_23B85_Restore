@interface TransitSchedulesDepartureCellProvider
- (id)_identifierForDeparture:(id)a3;
- (id)collectionView:(id)a3 departureCellWithIdentifier:(id)a4 indexPath:(id)a5 referenceDate:(id)a6 dataProvider:(id)a7;
- (id)identifiersForDepartures:(id)a3;
- (void)collectionView:(id)a3 selectedDeparture:(id)a4 atIndexPath:(id)a5;
- (void)registerCellsForCollectionView:(id)a3;
@end

@implementation TransitSchedulesDepartureCellProvider

- (id)collectionView:(id)a3 departureCellWithIdentifier:(id)a4 indexPath:(id)a5 referenceDate:(id)a6 dataProvider:(id)a7
{
  v10 = a6;
  v11 = a7;
  v12 = a5;
  v13 = [a3 dequeueReusableCellWithReuseIdentifier:@"TransitSchedulesDepartureCollectionCellIdentifier" forIndexPath:v12];
  v14 = [v12 row];

  v15 = [v11 departures];
  v16 = [v15 count];

  if (v14 < v16)
  {
    v17 = [v11 departures];
    v18 = [v17 objectAtIndexedSubscript:v14];

    v19 = [v11 timeZone];
    [v13 setDeparture:v18 withReferenceDate:v10 timeZone:v19 timeDisplayStyle:{objc_msgSend(v11, "timeDisplayStyle")}];
  }

  return v13;
}

- (void)collectionView:(id)a3 selectedDeparture:(id)a4 atIndexPath:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v7 section];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v6 indexPathsForSelectedItems];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 section] == v8)
        {
          [v6 deselectItemAtIndexPath:v14 animated:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
}

- (void)registerCellsForCollectionView:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitSchedulesDepartureCollectionCellIdentifier"];
}

- (id)_identifierForDeparture:(id)a3
{
  v3 = a3;
  if ([v3 liveStatus] - 1 > 1)
  {
    [v3 scheduledDepartureDate];
  }

  else
  {
    [v3 liveDepartureDate];
  }
  v4 = ;
  v5 = [v3 tripIdentifier];

  v6 = @"NA";
  if (v4)
  {
    v6 = v4;
  }

  v7 = [NSString stringWithFormat:@"%llu_%@", v5, v6];

  return v7;
}

- (id)identifiersForDepartures:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(TransitSchedulesDepartureCellProvider *)self _identifierForDeparture:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end