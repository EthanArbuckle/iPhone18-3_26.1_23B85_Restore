@interface TransitSchedulesHeadsignCellProvider
- (id)collectionView:(id)a3 headsignCellWithIdentifier:(id)a4 indexPath:(id)a5 dataProvider:(id)a6;
- (id)identifiersForDepartureSequences:(id)a3;
- (void)collectionView:(id)a3 selectedHeadsignForDepartureSequence:(id)a4 atIndexPath:(id)a5;
- (void)registerCellsForCollectionView:(id)a3;
@end

@implementation TransitSchedulesHeadsignCellProvider

- (id)collectionView:(id)a3 headsignCellWithIdentifier:(id)a4 indexPath:(id)a5 dataProvider:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v11 = +[TransitSchedulesHeadsignCollectionViewCell cellIdentifier];
  v12 = [v10 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v9];

  v13 = [v9 row];
  v14 = [v8 departureSequences];
  v15 = [v14 count];

  if (v13 < v15)
  {
    v16 = [v8 departureSequences];
    v17 = [v16 objectAtIndexedSubscript:v13];

    v18 = [v17 headsign];
    [v12 setHeadsign:v18];
  }

  return v12;
}

- (void)collectionView:(id)a3 selectedHeadsignForDepartureSequence:(id)a4 atIndexPath:(id)a5
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

  [v6 selectItemAtIndexPath:v7 animated:0 scrollPosition:16];
}

- (void)registerCellsForCollectionView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[TransitSchedulesHeadsignCollectionViewCell cellIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];
}

- (id)identifiersForDepartureSequences:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) uniqueId];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end