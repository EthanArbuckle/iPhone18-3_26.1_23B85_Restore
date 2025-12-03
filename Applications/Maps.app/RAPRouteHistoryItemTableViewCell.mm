@interface RAPRouteHistoryItemTableViewCell
- (id)_formattedTimeStringSinceDirectionsWereTaken:(id)taken;
- (void)setHistoryItem:(id)item;
@end

@implementation RAPRouteHistoryItemTableViewCell

- (id)_formattedTimeStringSinceDirectionsWereTaken:(id)taken
{
  takenCopy = taken;
  Current = CFAbsoluteTimeGetCurrent();
  [takenCopy timestamp];
  v6 = v5;

  v7 = Current - v6;
  if (Current - v6 < 60.0)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Just now [DirectionsHistoryItemCell]" value:@"localized string not found" table:0];
LABEL_3:
    v10 = v9;
    goto LABEL_9;
  }

  if (v7 < 86400.0)
  {
    v8 = [NSDateComponentsFormatter _maps_stringLongFromTimeInterval:?];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"%@ ago [DirectionsHistoryItemCell]";
LABEL_8:
    v15 = [v11 localizedStringForKey:v13 value:@"localized string not found" table:0];
    v10 = [NSString stringWithFormat:v15, v8];

    goto LABEL_9;
  }

  if (v7 < 172800.0)
  {
    v14 = [NSDate dateWithTimeIntervalSinceNow:-v7];
    v8 = [NSDateFormatter _maps_timeForDate:v14];

    v11 = +[NSBundle mainBundle];
    v12 = v11;
    v13 = @"Yesterday %@ [DirectionsHistoryItemCell]";
    goto LABEL_8;
  }

  if (v7 >= 604800.0)
  {
    v8 = [NSDate dateWithTimeIntervalSinceNow:-v7];
    v9 = [NSDateFormatter _maps_dateStringWithoutYearForDate:v8];
    goto LABEL_3;
  }

  v17 = -v7;
  v18 = [NSDate dateWithTimeIntervalSinceNow:-v7];
  v8 = [NSDateFormatter _maps_weekdayForDate:v18];

  v19 = [NSDate dateWithTimeIntervalSinceNow:v17];
  v20 = [NSDateFormatter _maps_timeForDate:v19];

  v10 = [NSString stringWithFormat:@"%@ %@", v8, v20];

LABEL_9:

  return v10;
}

- (void)setHistoryItem:(id)item
{
  itemCopy = item;
  v5 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
  objc_opt_class();
  v6 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && ([v8 historyEntry], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "conformsToProtocol:", v5), v9, v10))
  {
    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v24 = 0;
    v25 = 0;
    historyEntry = [v11 historyEntry];
    [SearchResult newStartWaypointSearchResult:&v25 endWaypointSearchResult:&v24 forRouteHistoryEntry:historyEntry];
    v13 = v25;
    v14 = v24;

    v15 = objc_alloc_init(RAPTwoLinesViewModelImpl);
    v16 = [(RAPRouteHistoryItemTableViewCell *)self _destinationTextForEndSearchResult:v14];

    [(RAPTwoLinesViewModelImpl *)v15 setTitle:v16];
    v17 = [(RAPRouteHistoryItemTableViewCell *)self _formattedTimeStringSinceDirectionsWereTaken:v6];
    [(RAPTwoLinesViewModelImpl *)v15 setSubtitle:v17];

    historyEntry2 = [v11 historyEntry];
    transportType = [historyEntry2 transportType];

    if ((transportType - 2) > 3)
    {
      v20 = @"rp_drive";
    }

    else
    {
      v20 = *(&off_10162DAC8 + (transportType - 2));
    }

    v21 = [UIImage imageNamed:v20];
    [(RAPTwoLinesViewModelImpl *)v15 setImage:v21];

    v22 = +[UIColor labelColor];
    leftImageView = [(RAPTwoLinesMenuTableViewCell *)self leftImageView];
    [leftImageView setTintColor:v22];

    [(RAPTwoLinesMenuTableViewCell *)self setViewModel:v15];
  }
}

@end