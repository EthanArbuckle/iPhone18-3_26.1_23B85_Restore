@interface TransitSchedulesHeadsignPickerProvider
- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate;
- (id)collectionView:(id)view headsignCellWithIdentifier:(id)identifier indexPath:(id)path dataProvider:(id)provider;
- (id)identifiersForDepartureSequences:(id)sequences;
- (void)collectionView:(id)view selectedHeadsignForDepartureSequence:(id)sequence atIndexPath:(id)path;
- (void)registerCellsForCollectionView:(id)view;
@end

@implementation TransitSchedulesHeadsignPickerProvider

- (TransitSchedulesHeadsignPickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)identifiersForDepartureSequences:(id)sequences
{
  if ([sequences count])
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

- (id)collectionView:(id)view headsignCellWithIdentifier:(id)identifier indexPath:(id)path dataProvider:(id)provider
{
  providerCopy = provider;
  pathCopy = path;
  viewCopy = view;
  v12 = +[TransitSchedulesHeadsignPickerCollectionViewCell cellIdentifier];
  v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v12 forIndexPath:pathCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v13 setDelegate:WeakRetained];

  departureSequences = [providerCopy departureSequences];
  selectedDepartureSequence = [providerCopy selectedDepartureSequence];

  [v13 setDepartureSequences:departureSequences withSelectedDepartureSequence:selectedDepartureSequence];

  return v13;
}

- (void)collectionView:(id)view selectedHeadsignForDepartureSequence:(id)sequence atIndexPath:(id)path
{
  sequenceCopy = sequence;
  viewCopy = view;
  v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [path section]);
  v9 = [viewCopy cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setSelectedDepartureSequence:sequenceCopy];
  }
}

- (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = +[TransitSchedulesHeadsignPickerCollectionViewCell cellIdentifier];
  [viewCopy registerClass:v4 forCellWithReuseIdentifier:v5];
}

@end