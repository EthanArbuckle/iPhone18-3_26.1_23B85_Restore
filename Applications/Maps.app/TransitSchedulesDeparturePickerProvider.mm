@interface TransitSchedulesDeparturePickerProvider
- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate;
- (id)collectionView:(id)view departureCellWithIdentifier:(id)identifier indexPath:(id)path referenceDate:(id)date dataProvider:(id)provider;
- (id)identifiersForDepartures:(id)departures;
- (void)collectionView:(id)view selectedDeparture:(id)departure atIndexPath:(id)path;
- (void)registerCellsForCollectionView:(id)view;
@end

@implementation TransitSchedulesDeparturePickerProvider

- (TransitSchedulesDeparturePickerCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)collectionView:(id)view departureCellWithIdentifier:(id)identifier indexPath:(id)path referenceDate:(id)date dataProvider:(id)provider
{
  providerCopy = provider;
  dateCopy = date;
  v13 = [view dequeueReusableCellWithReuseIdentifier:@"TransitDeparturePickerCellIdentifier" forIndexPath:path];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v13 setDelegate:WeakRetained];

  departures = [providerCopy departures];
  selectedDeparture = [providerCopy selectedDeparture];
  timeZone = [providerCopy timeZone];
  timeDisplayStyle = [providerCopy timeDisplayStyle];

  [v13 setDepartures:departures withSelectedDeparture:selectedDeparture referenceDate:dateCopy timeZone:timeZone timeDisplayStyle:timeDisplayStyle];

  return v13;
}

- (void)collectionView:(id)view selectedDeparture:(id)departure atIndexPath:(id)path
{
  departureCopy = departure;
  viewCopy = view;
  v8 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [path section]);
  v9 = [viewCopy cellForItemAtIndexPath:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setSelectedDeparture:departureCopy];
  }
}

- (id)identifiersForDepartures:(id)departures
{
  if ([departures count])
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

- (void)registerCellsForCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"TransitDeparturePickerCellIdentifier"];
}

@end