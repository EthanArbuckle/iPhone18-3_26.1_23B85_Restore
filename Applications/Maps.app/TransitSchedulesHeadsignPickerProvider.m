@interface TransitSchedulesHeadsignPickerProvider
- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate;
- (id)collectionView:(id)a3 headsignCellWithIdentifier:(id)a4 indexPath:(id)a5 dataProvider:(id)a6;
- (id)identifiersForDepartureSequences:(id)a3;
- (void)collectionView:(id)a3 selectedHeadsignForDepartureSequence:(id)a4 atIndexPath:(id)a5;
- (void)registerCellsForCollectionView:(id)a3;
@end

@implementation TransitSchedulesHeadsignPickerProvider

- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)identifiersForDepartureSequences:(id)a3
{
  if ([a3 count])
  {
    v3 = +[TransitSchedulesHeadsignPickerCollectionViewCell cellIdentifier];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)collectionView:(id)a3 headsignCellWithIdentifier:(id)a4 indexPath:(id)a5 dataProvider:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = +[TransitSchedulesHeadsignPickerCollectionViewCell cellIdentifier];
  v13 = [v11 dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:v10];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v13 setDelegate:WeakRetained];

  v15 = [v9 departureSequences];
  v16 = [v9 selectedDepartureSequence];

  [v13 setDepartureSequences:v15 withSelectedDepartureSequence:v16];

  return v13;
}

- (void)collectionView:(id)a3 selectedHeadsignForDepartureSequence:(id)a4 atIndexPath:(id)a5
{
  v10 = a4;
  v7 = a3;
  v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [a5 section]);
  v9 = [v7 cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setSelectedDepartureSequence:v10];
  }
}

- (void)registerCellsForCollectionView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[TransitSchedulesHeadsignPickerCollectionViewCell cellIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];
}

@end