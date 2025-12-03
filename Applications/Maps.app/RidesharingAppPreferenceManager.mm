@interface RidesharingAppPreferenceManager
+ (id)_lastSelectionDates;
+ (id)mostRecentSelectedAppIdentifers;
+ (id)preferredRideChoiceNamesByAppIdentifier;
+ (id)sortedRideOptionStatuses:(id)statuses withStoreOrdering:(id)ordering;
+ (void)recordAppSelection:(id)selection;
+ (void)recordRideChoice:(id)choice;
+ (void)removeRecordedAppSelectionForAppIdentifiers:(id)identifiers;
@end

@implementation RidesharingAppPreferenceManager

+ (id)_lastSelectionDates
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"kLastRidesharingAppSelectionKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

+ (id)mostRecentSelectedAppIdentifers
{
  _lastSelectionDates = [self _lastSelectionDates];
  allKeys = [_lastSelectionDates allKeys];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10085C1BC;
  v7[3] = &unk_10162BED0;
  v8 = _lastSelectionDates;
  v4 = _lastSelectionDates;
  v5 = [allKeys sortedArrayUsingComparator:v7];

  return v5;
}

+ (void)removeRecordedAppSelectionForAppIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _lastSelectionDates = [self _lastSelectionDates];
  v6 = [_lastSelectionDates mutableCopy];

  preferredRideChoiceNamesByAppIdentifier = [self preferredRideChoiceNamesByAppIdentifier];
  v8 = [preferredRideChoiceNamesByAppIdentifier mutableCopy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [v6 removeObjectForKey:{v14, v16}];
        [v8 removeObjectForKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  [v15 setObject:v6 forKey:@"kLastRidesharingAppSelectionKey"];
}

+ (id)preferredRideChoiceNamesByAppIdentifier
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"kRidesharingAppPreferenceRideChoiceKey"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSDictionary0__struct;
  }

  v6 = v5;

  return v5;
}

+ (void)recordRideChoice:(id)choice
{
  choiceCopy = choice;
  application = [choiceCopy application];
  identifier = [application identifier];

  name = [choiceCopy name];

  if (identifier && [name length])
  {
    preferredRideChoiceNamesByAppIdentifier = [self preferredRideChoiceNamesByAppIdentifier];
    v8 = [preferredRideChoiceNamesByAppIdentifier mutableCopy];

    [v8 setObject:name forKeyedSubscript:identifier];
    v9 = +[NSUserDefaults standardUserDefaults];
    [v9 setObject:v8 forKey:@"kRidesharingAppPreferenceRideChoiceKey"];
  }
}

+ (void)recordAppSelection:(id)selection
{
  identifier = [selection identifier];
  if (identifier)
  {
    v9 = identifier;
    _lastSelectionDates = [self _lastSelectionDates];
    v6 = [_lastSelectionDates mutableCopy];

    v7 = +[NSDate date];
    [v6 setObject:v7 forKeyedSubscript:v9];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setObject:v6 forKey:@"kLastRidesharingAppSelectionKey"];

    identifier = v9;
  }
}

+ (id)sortedRideOptionStatuses:(id)statuses withStoreOrdering:(id)ordering
{
  orderingCopy = ordering;
  statusesCopy = statuses;
  _lastSelectionDates = [self _lastSelectionDates];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10085C754;
  v18[3] = &unk_10162BE80;
  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = orderingCopy;
  v9 = orderingCopy;
  v10 = v19;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10085C89C;
  v15[3] = &unk_10162BEA8;
  v16 = _lastSelectionDates;
  v17 = objc_retainBlock(v18);
  v11 = v17;
  v12 = _lastSelectionDates;
  v13 = [statusesCopy sortedArrayUsingComparator:v15];

  return v13;
}

@end