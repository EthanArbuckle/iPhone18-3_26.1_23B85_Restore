@interface CoreRoutineHistoryItem
- (CoreRoutineHistoryItem)initWithSearchResult:(id)a3 andLocationOfInterestType:(int64_t)a4;
- (double)timestamp;
- (id)entryWithTicket:(id)a3;
- (void)updateModel:(id)a3;
@end

@implementation CoreRoutineHistoryItem

- (double)timestamp
{
  v2 = [(CoreRoutineHistoryItem *)self searchResult];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

- (CoreRoutineHistoryItem)initWithSearchResult:(id)a3 andLocationOfInterestType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CoreRoutineHistoryItem;
  v7 = [(CoreRoutineHistoryItem *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    [(CoreRoutineHistoryItem *)v7 setSearchResult:v8];
    [(CoreRoutineHistoryItem *)v7 setLocationOfInterestType:a4];
    v9 = v7;
  }

  return v7;
}

- (void)updateModel:(id)a3
{
  v4 = a3;
  v5 = [(CoreRoutineHistoryItem *)self searchResult];
  [v5 updateModel:v4];

  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [NSString stringWithFormat:@"[%@]", v8];
  [v4 setDebugSubtitle:v7];
}

- (id)entryWithTicket:(id)a3
{
  v4 = [[GEORPSuggestionEntry alloc] initWithType:3];
  v5 = [(CoreRoutineHistoryItem *)self searchResult];
  v6 = [v5 title];
  v7 = [v5 mapItem];
  v8 = [v7 _geoMapItem];

  v9 = [v8 eventName];
  v10 = [v9 length];

  if (!v10)
  {
    v17 = [v5 singleLineAddress];

    if (!v17)
    {
      v16 = 0;
      goto LABEL_20;
    }

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"CoreRoutine Non Event PLOI" value:@"localized string not found" table:0];
    v20 = [v5 singleLineAddress];
    v16 = [NSString stringWithFormat:v19, v20];

    goto LABEL_18;
  }

  if ([v8 isEventAllDay])
  {
    v30 = v4;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Source of All Day CoreRoutine Event" value:@"localized string not found" table:0];
    v13 = [v5 mapItem];
    v14 = [v13 _geoMapItem];
    v15 = [v14 eventName];
    v16 = [NSString stringWithFormat:v12, v15];
  }

  else
  {
    v21 = [v8 eventDate];

    if (!v21)
    {
      v16 = 0;
      goto LABEL_16;
    }

    if (qword_10195F398 != -1)
    {
      dispatch_once(&qword_10195F398, &stru_101656278);
    }

    v30 = v4;
    v22 = qword_10195F390;
    v23 = [v8 eventDate];
    v24 = [v22 stringFromDate:v23];

    v25 = [v24 length];
    v26 = +[NSBundle mainBundle];
    if (v25)
    {
      v12 = v26;
      v13 = [v26 localizedStringForKey:@"Source of CoreRoutine Item With Time" value:@"localized string not found" table:0];
      v14 = [v5 mapItem];
      v15 = [v14 _geoMapItem];
      v27 = [v15 eventName];
      v11 = v24;
      [NSString stringWithFormat:v13, v27, v24];
    }

    else
    {
      v11 = v24;
      v12 = v26;
      v13 = [v26 localizedStringForKey:@"Source of CoreRoutine Item" value:@"localized string not found" table:0];
      v14 = [v5 mapItem];
      v15 = [v14 _geoMapItem];
      v27 = [v15 eventName];
      [NSString stringWithFormat:v13, v27, v29];
    }
    v16 = ;
  }

  v4 = v30;
LABEL_16:
  v18 = [v8 eventName];
  if ([v18 isEqualToString:v6])
  {
    [v5 singleLineAddress];
    v6 = v19 = v6;
LABEL_18:
  }

LABEL_20:
  [v4 safeAddDisplayLine:v6];
  [v4 safeAddDisplayLine:v16];

  return v4;
}

@end