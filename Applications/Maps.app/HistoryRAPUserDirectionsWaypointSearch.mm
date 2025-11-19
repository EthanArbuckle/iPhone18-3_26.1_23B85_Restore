@interface HistoryRAPUserDirectionsWaypointSearch
+ (void)loadAllRequestsFromStorage:(id)a3 completion:(id)a4;
- (HistoryRAPUserDirectionsWaypointSearch)initWithHistoryItem:(id)a3 recording:(id)a4 waypointIndex:(unint64_t)a5;
- (NSString)locationDisplayString;
- (NSString)searchText;
- (SearchResult)searchResult;
- (id)correctedSearchTemplate;
- (id)geoMapItemForSearchResultAtIndex:(unint64_t)a3;
- (unint64_t)searchResultsCount;
- (void)applyToCorrectedSearch:(id)a3;
@end

@implementation HistoryRAPUserDirectionsWaypointSearch

- (id)geoMapItemForSearchResultAtIndex:(unint64_t)a3
{
  v4 = [(HistoryRAPUserDirectionsWaypointSearch *)self correctedSearchTemplate];
  v5 = [v4 placeResponse];
  v6 = [v5 resultsWithResultType:1];

  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 geoMapItem];

  return v8;
}

- (void)applyToCorrectedSearch:(id)a3
{
  v4 = a3;
  v5 = [(HistoryRAPUserDirectionsWaypointSearch *)self correctedSearchTemplate];
  [v5 copyTo:v4];
}

- (unint64_t)searchResultsCount
{
  v2 = [(HistoryRAPUserDirectionsWaypointSearch *)self searchResult];
  v3 = v2 != 0;

  return v3;
}

- (NSString)locationDisplayString
{
  v2 = [(HistoryRAPUserDirectionsWaypointSearch *)self searchResult];
  v3 = [v2 locationTitle];

  return v3;
}

- (NSString)searchText
{
  v3 = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (v3 == 1)
  {
    v4 = [(RAPDirectionsRecording *)self->_recording endWaypoint];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(RAPDirectionsRecording *)self->_recording startWaypoint];
LABEL_5:
    v5 = v4;
    v6 = [v4 searchString];

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)correctedSearchTemplate
{
  v3 = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (v3 == 1)
  {
    v4 = [(RAPDirectionsRecording *)self->_recording endWaypointCorrectedSearchTemplate];
  }

  else if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(RAPDirectionsRecording *)self->_recording startWaypointCorrectedSearchTemplate];
  }

  return v4;
}

- (SearchResult)searchResult
{
  v3 = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (v3 == 1)
  {
    v4 = [(HistoryRAPUserDirectionsWaypointSearch *)self historyItem];
    v5 = [v4 historyEntry];
    v6 = &v11;
    v8 = &v11;
    v7 = 0;
    goto LABEL_5;
  }

  if (!v3)
  {
    v12 = 0;
    v4 = [(HistoryRAPUserDirectionsWaypointSearch *)self historyItem];
    v5 = [v4 historyEntry];
    v6 = &v12;
    v7 = &v12;
    v8 = 0;
LABEL_5:
    [SearchResult newStartWaypointSearchResult:v7 endWaypointSearchResult:v8 forRouteHistoryEntry:v5];
    v9 = *v6;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (HistoryRAPUserDirectionsWaypointSearch)initWithHistoryItem:(id)a3 recording:(id)a4 waypointIndex:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HistoryRAPUserDirectionsWaypointSearch;
  v11 = [(HistoryRAPUserDirectionsWaypointSearch *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_historyItem, a3);
    v12->_waypointIndex = a5;
    objc_storeStrong(&v12->_recording, a4);
    v13 = [v10 auxiliaryControls];
    v14 = [v13 copy];
    auxiliaryControls = v12->_auxiliaryControls;
    v12->_auxiliaryControls = v14;

    if ([v10 hasOriginatingAuxiliaryControlIndex])
    {
      v12->_hasOriginatingAuxiliaryControlIndex = 1;
      v12->_originatingAuxiliaryControlIndex = [v10 originatingAuxiliaryControlIndex];
    }
  }

  return v12;
}

+ (void)loadAllRequestsFromStorage:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CC5790;
  v7[3] = &unk_1016505C0;
  v8 = v4;
  v6 = v4;
  [v5 loadAllRecordingsWithConcurrentBlock:v7];
}

@end