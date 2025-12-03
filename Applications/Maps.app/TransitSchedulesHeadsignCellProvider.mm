@interface TransitSchedulesHeadsignCellProvider
- (id)collectionView:(id)view headsignCellWithIdentifier:(id)identifier indexPath:(id)path dataProvider:(id)provider;
- (id)identifiersForDepartureSequences:(id)sequences;
- (void)collectionView:(id)view selectedHeadsignForDepartureSequence:(id)sequence atIndexPath:(id)path;
- (void)registerCellsForCollectionView:(id)view;
@end

@implementation TransitSchedulesHeadsignCellProvider

- (id)collectionView:(id)view headsignCellWithIdentifier:(id)identifier indexPath:(id)path dataProvider:(id)provider
{
  providerCopy = provider;
  pathCopy = path;
  viewCopy = view;
  v11 = +[TransitSchedulesHeadsignCollectionViewCell cellIdentifier];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  v13 = [pathCopy row];
  departureSequences = [providerCopy departureSequences];
  v15 = [departureSequences count];

  if (v13 < v15)
  {
    departureSequences2 = [providerCopy departureSequences];
    v17 = [departureSequences2 objectAtIndexedSubscript:v13];

    headsign = [v17 headsign];
    [v12 setHeadsign:headsign];
  }

  return v12;
}

- (void)collectionView:(id)view selectedHeadsignForDepartureSequence:(id)sequence atIndexPath:(id)path
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

  [viewCopy selectItemAtIndexPath:pathCopy animated:0 scrollPosition:16];
}

- (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[TransitSchedulesHeadsignCollectionViewCell cellIdentifier];
  [viewCopy registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (id)identifiersForDepartureSequences:(id)sequences
{
  sequencesCopy = sequences;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = sequencesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uniqueId = [*(*(&v13 + 1) + 8 * i) uniqueId];
        [v4 addObject:uniqueId];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end