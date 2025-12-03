@interface TransitSchedulesDepartureCellProvider
- (id)_identifierForDeparture:(id)departure;
- (id)collectionView:(id)view departureCellWithIdentifier:(id)identifier indexPath:(id)path referenceDate:(id)date dataProvider:(id)provider;
- (id)identifiersForDepartures:(id)departures;
- (void)collectionView:(id)view selectedDeparture:(id)departure atIndexPath:(id)path;
- (void)registerCellsForCollectionView:(id)view;
@end

@implementation TransitSchedulesDepartureCellProvider

- (id)collectionView:(id)view departureCellWithIdentifier:(id)identifier indexPath:(id)path referenceDate:(id)date dataProvider:(id)provider
{
  dateCopy = date;
  providerCopy = provider;
  pathCopy = path;
  v13 = [view dequeueReusableCellWithReuseIdentifier:@"TransitSchedulesDepartureCollectionCellIdentifier" forIndexPath:pathCopy];
  v14 = [pathCopy row];

  departures = [providerCopy departures];
  v16 = [departures count];

  if (v14 < v16)
  {
    departures2 = [providerCopy departures];
    v18 = [departures2 objectAtIndexedSubscript:v14];

    timeZone = [providerCopy timeZone];
    [v13 setDeparture:v18 withReferenceDate:dateCopy timeZone:timeZone timeDisplayStyle:{objc_msgSend(providerCopy, "timeDisplayStyle")}];
  }

  return v13;
}

- (void)collectionView:(id)view selectedDeparture:(id)departure atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v10 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([v14 section] == section)
        {
          [viewCopy deselectItemAtIndexPath:v14 animated:0];
        }
      }

      v11 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [viewCopy selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
}

- (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitSchedulesDepartureCollectionCellIdentifier"];
}

- (id)_identifierForDeparture:(id)departure
{
  departureCopy = departure;
  if ([departureCopy liveStatus] - 1 > 1)
  {
    [departureCopy scheduledDepartureDate];
  }

  else
  {
    [departureCopy liveDepartureDate];
  }
  v4 = ;
  tripIdentifier = [departureCopy tripIdentifier];

  v6 = @"NA";
  if (v4)
  {
    v6 = v4;
  }

  v7 = [NSString stringWithFormat:@"%llu_%@", tripIdentifier, v6];

  return v7;
}

- (id)identifiersForDepartures:(id)departures
{
  departuresCopy = departures;
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = departuresCopy;
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