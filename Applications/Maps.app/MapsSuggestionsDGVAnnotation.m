@interface MapsSuggestionsDGVAnnotation
- (BOOL)_populateWithDictFromJSONDeserialization:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (MapsSuggestionsDGVAnnotation)initWithDictFromJSONDeserialization:(id)a3;
@end

@implementation MapsSuggestionsDGVAnnotation

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (BOOL)_populateWithDictFromJSONDeserialization:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"likelyLocation"];
  v6 = [v4 objectForKey:@"label"];
  v7 = [v4 objectForKey:@"entries"];

  if (!v5)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVAnnotation.m";
    v22 = 1024;
    v23 = 35;
    v24 = 2082;
    v25 = "[MapsSuggestionsDGVAnnotation _populateWithDictFromJSONDeserialization:]";
    v26 = 2082;
    v27 = "likelyLocationCoordinates == nil";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Destination must have coordinates";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, &v20, 0x26u);
    goto LABEL_15;
  }

  if (!v6)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVAnnotation.m";
    v22 = 1024;
    v23 = 36;
    v24 = 2082;
    v25 = "[MapsSuggestionsDGVAnnotation _populateWithDictFromJSONDeserialization:]";
    v26 = 2082;
    v27 = "nil == (labelValue)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Destination label must have a value";
    goto LABEL_14;
  }

  if (!v7)
  {
    v17 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v20 = 136446978;
    v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVAnnotation.m";
    v22 = 1024;
    v23 = 37;
    v24 = 2082;
    v25 = "[MapsSuggestionsDGVAnnotation _populateWithDictFromJSONDeserialization:]";
    v26 = 2082;
    v27 = "nil == (entriesDicts)";
    v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Entries dictionary cannot be nil";
    goto LABEL_14;
  }

  if ([v5 count] != 2)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/Debug/MapsSuggestionsDGVAnnotation.m";
      v22 = 1024;
      v23 = 38;
      v24 = 2082;
      v25 = "[MapsSuggestionsDGVAnnotation _populateWithDictFromJSONDeserialization:]";
      v26 = 2082;
      v27 = "[likelyLocationCoordinates count] != 2u";
      v18 = "At %{public}s:%d, %{public}s forbids: %{public}s. Coordinates array must have exactly two items";
      goto LABEL_14;
    }

LABEL_15:

    v10 = 0;
    goto LABEL_16;
  }

  v8 = [v5 objectAtIndex:0];
  [v8 doubleValue];
  self->_coordinate.latitude = v9;

  v10 = 1;
  v11 = [v5 objectAtIndex:1];
  [v11 doubleValue];
  self->_coordinate.longitude = v12;

  v13 = [v7 copy];
  entriesDictionaries = self->_entriesDictionaries;
  self->_entriesDictionaries = v13;

  v15 = [v6 copy];
  title = self->_title;
  self->_title = v15;

LABEL_16:
  return v10;
}

- (MapsSuggestionsDGVAnnotation)initWithDictFromJSONDeserialization:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsDGVAnnotation;
  v5 = [(MapsSuggestionsDGVAnnotation *)&v9 init];
  v6 = v5;
  if (v5 && ![(MapsSuggestionsDGVAnnotation *)v5 _populateWithDictFromJSONDeserialization:v4])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

@end