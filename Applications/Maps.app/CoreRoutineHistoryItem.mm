@interface CoreRoutineHistoryItem
- (CoreRoutineHistoryItem)initWithSearchResult:(id)result andLocationOfInterestType:(int64_t)type;
- (double)timestamp;
- (id)entryWithTicket:(id)ticket;
- (void)updateModel:(id)model;
@end

@implementation CoreRoutineHistoryItem

- (double)timestamp
{
  searchResult = [(CoreRoutineHistoryItem *)self searchResult];
  [searchResult timestamp];
  v4 = v3;

  return v4;
}

- (CoreRoutineHistoryItem)initWithSearchResult:(id)result andLocationOfInterestType:(int64_t)type
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = CoreRoutineHistoryItem;
  v7 = [(CoreRoutineHistoryItem *)&v11 init];
  if (v7)
  {
    v8 = [resultCopy copy];
    [(CoreRoutineHistoryItem *)v7 setSearchResult:v8];
    [(CoreRoutineHistoryItem *)v7 setLocationOfInterestType:type];
    v9 = v7;
  }

  return v7;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  searchResult = [(CoreRoutineHistoryItem *)self searchResult];
  [searchResult updateModel:modelCopy];

  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = [NSString stringWithFormat:@"[%@]", v8];
  [modelCopy setDebugSubtitle:v7];
}

- (id)entryWithTicket:(id)ticket
{
  v4 = [[GEORPSuggestionEntry alloc] initWithType:3];
  searchResult = [(CoreRoutineHistoryItem *)self searchResult];
  title = [searchResult title];
  mapItem = [searchResult mapItem];
  _geoMapItem = [mapItem _geoMapItem];

  eventName = [_geoMapItem eventName];
  v10 = [eventName length];

  if (!v10)
  {
    singleLineAddress = [searchResult singleLineAddress];

    if (!singleLineAddress)
    {
      v16 = 0;
      goto LABEL_20;
    }

    eventName3 = +[NSBundle mainBundle];
    v19 = [eventName3 localizedStringForKey:@"CoreRoutine Non Event PLOI" value:@"localized string not found" table:0];
    singleLineAddress2 = [searchResult singleLineAddress];
    v16 = [NSString stringWithFormat:v19, singleLineAddress2];

    goto LABEL_18;
  }

  if ([_geoMapItem isEventAllDay])
  {
    v30 = v4;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Source of All Day CoreRoutine Event" value:@"localized string not found" table:0];
    mapItem2 = [searchResult mapItem];
    _geoMapItem2 = [mapItem2 _geoMapItem];
    eventName2 = [_geoMapItem2 eventName];
    v16 = [NSString stringWithFormat:v12, eventName2];
  }

  else
  {
    eventDate = [_geoMapItem eventDate];

    if (!eventDate)
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
    eventDate2 = [_geoMapItem eventDate];
    v24 = [v22 stringFromDate:eventDate2];

    v25 = [v24 length];
    v26 = +[NSBundle mainBundle];
    if (v25)
    {
      v12 = v26;
      mapItem2 = [v26 localizedStringForKey:@"Source of CoreRoutine Item With Time" value:@"localized string not found" table:0];
      _geoMapItem2 = [searchResult mapItem];
      eventName2 = [_geoMapItem2 _geoMapItem];
      v15EventName = [eventName2 eventName];
      v11 = v24;
      [NSString stringWithFormat:mapItem2, v15EventName, v24];
    }

    else
    {
      v11 = v24;
      v12 = v26;
      mapItem2 = [v26 localizedStringForKey:@"Source of CoreRoutine Item" value:@"localized string not found" table:0];
      _geoMapItem2 = [searchResult mapItem];
      eventName2 = [_geoMapItem2 _geoMapItem];
      v15EventName = [eventName2 eventName];
      [NSString stringWithFormat:mapItem2, v15EventName, v29];
    }
    v16 = ;
  }

  v4 = v30;
LABEL_16:
  eventName3 = [_geoMapItem eventName];
  if ([eventName3 isEqualToString:title])
  {
    [searchResult singleLineAddress];
    title = v19 = title;
LABEL_18:
  }

LABEL_20:
  [v4 safeAddDisplayLine:title];
  [v4 safeAddDisplayLine:v16];

  return v4;
}

@end