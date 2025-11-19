@interface TransitSchedulesDeparturePickerProvider
- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate;
- (id)collectionView:(id)a3 departureCellWithIdentifier:(id)a4 indexPath:(id)a5 referenceDate:(id)a6 dataProvider:(id)a7;
- (id)identifiersForDepartures:(id)a3;
- (void)collectionView:(id)a3 selectedDeparture:(id)a4 atIndexPath:(id)a5;
- (void)registerCellsForCollectionView:(id)a3;
@end

@implementation TransitSchedulesDeparturePickerProvider

- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)collectionView:(id)a3 departureCellWithIdentifier:(id)a4 indexPath:(id)a5 referenceDate:(id)a6 dataProvider:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = [a3 dequeueReusableCellWithReuseIdentifier:@"TransitDeparturePickerCellIdentifier" forIndexPath:a5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v13 setDelegate:WeakRetained];

  v15 = [v11 departures];
  v16 = [v11 selectedDeparture];
  v17 = [v11 timeZone];
  v18 = [v11 timeDisplayStyle];

  [v13 setDepartures:v15 withSelectedDeparture:v16 referenceDate:v12 timeZone:v17 timeDisplayStyle:v18];

  return v13;
}

- (void)collectionView:(id)a3 selectedDeparture:(id)a4 atIndexPath:(id)a5
{
  v10 = a4;
  v7 = a3;
  v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [a5 section]);
  v9 = [v7 cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setSelectedDeparture:v10];
  }
}

- (id)identifiersForDepartures:(id)a3
{
  if ([a3 count])
  {
    v5 = @"TransitDeparturePickerCellIdentifier";
    v3 = [NSArray arrayWithObjects:&v5 count:1];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)registerCellsForCollectionView:(id)a3
{
  v3 = a3;
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitDeparturePickerCellIdentifier"];
}

@end