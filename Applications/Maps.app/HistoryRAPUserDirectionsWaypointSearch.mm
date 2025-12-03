@interface HistoryRAPUserDirectionsWaypointSearch
+ (void)loadAllRequestsFromStorage:(id)storage completion:(id)completion;
- (HistoryRAPUserDirectionsWaypointSearch)initWithHistoryItem:(id)item recording:(id)recording waypointIndex:(unint64_t)index;
- (NSString)locationDisplayString;
- (NSString)searchText;
- (SearchResult)searchResult;
- (id)correctedSearchTemplate;
- (id)geoMapItemForSearchResultAtIndex:(unint64_t)index;
- (unint64_t)searchResultsCount;
- (void)applyToCorrectedSearch:(id)search;
@end

@implementation HistoryRAPUserDirectionsWaypointSearch

- (id)geoMapItemForSearchResultAtIndex:(unint64_t)index
{
  correctedSearchTemplate = [(HistoryRAPUserDirectionsWaypointSearch *)self correctedSearchTemplate];
  placeResponse = [correctedSearchTemplate placeResponse];
  v6 = [placeResponse resultsWithResultType:1];

  v7 = [v6 objectAtIndexedSubscript:index];
  geoMapItem = [v7 geoMapItem];

  return geoMapItem;
}

- (void)applyToCorrectedSearch:(id)search
{
  searchCopy = search;
  correctedSearchTemplate = [(HistoryRAPUserDirectionsWaypointSearch *)self correctedSearchTemplate];
  [correctedSearchTemplate copyTo:searchCopy];
}

- (unint64_t)searchResultsCount
{
  searchResult = [(HistoryRAPUserDirectionsWaypointSearch *)self searchResult];
  v3 = searchResult != 0;

  return v3;
}

- (NSString)locationDisplayString
{
  searchResult = [(HistoryRAPUserDirectionsWaypointSearch *)self searchResult];
  locationTitle = [searchResult locationTitle];

  return locationTitle;
}

- (NSString)searchText
{
  waypointIndex = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (waypointIndex == 1)
  {
    endWaypoint = [(RAPDirectionsRecording *)self->_recording endWaypoint];
    goto LABEL_5;
  }

  if (!waypointIndex)
  {
    endWaypoint = [(RAPDirectionsRecording *)self->_recording startWaypoint];
LABEL_5:
    v5 = endWaypoint;
    searchString = [endWaypoint searchString];

    goto LABEL_7;
  }

  searchString = 0;
LABEL_7:

  return searchString;
}

- (id)correctedSearchTemplate
{
  waypointIndex = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (waypointIndex == 1)
  {
    endWaypointCorrectedSearchTemplate = [(RAPDirectionsRecording *)self->_recording endWaypointCorrectedSearchTemplate];
  }

  else if (waypointIndex)
  {
    endWaypointCorrectedSearchTemplate = 0;
  }

  else
  {
    endWaypointCorrectedSearchTemplate = [(RAPDirectionsRecording *)self->_recording startWaypointCorrectedSearchTemplate];
  }

  return endWaypointCorrectedSearchTemplate;
}

- (SearchResult)searchResult
{
  waypointIndex = [(HistoryRAPUserDirectionsWaypointSearch *)self waypointIndex];
  if (waypointIndex == 1)
  {
    historyItem = [(HistoryRAPUserDirectionsWaypointSearch *)self historyItem];
    historyEntry = [historyItem historyEntry];
    v6 = &v11;
    v8 = &v11;
    v7 = 0;
    goto LABEL_5;
  }

  if (!waypointIndex)
  {
    v12 = 0;
    historyItem = [(HistoryRAPUserDirectionsWaypointSearch *)self historyItem];
    historyEntry = [historyItem historyEntry];
    v6 = &v12;
    v7 = &v12;
    v8 = 0;
LABEL_5:
    [SearchResult newStartWaypointSearchResult:v7 endWaypointSearchResult:v8 forRouteHistoryEntry:historyEntry];
    v9 = *v6;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (HistoryRAPUserDirectionsWaypointSearch)initWithHistoryItem:(id)item recording:(id)recording waypointIndex:(unint64_t)index
{
  itemCopy = item;
  recordingCopy = recording;
  v17.receiver = self;
  v17.super_class = HistoryRAPUserDirectionsWaypointSearch;
  v11 = [(HistoryRAPUserDirectionsWaypointSearch *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_historyItem, item);
    v12->_waypointIndex = index;
    objc_storeStrong(&v12->_recording, recording);
    auxiliaryControls = [recordingCopy auxiliaryControls];
    v14 = [auxiliaryControls copy];
    auxiliaryControls = v12->_auxiliaryControls;
    v12->_auxiliaryControls = v14;

    if ([recordingCopy hasOriginatingAuxiliaryControlIndex])
    {
      v12->_hasOriginatingAuxiliaryControlIndex = 1;
      v12->_originatingAuxiliaryControlIndex = [recordingCopy originatingAuxiliaryControlIndex];
    }
  }

  return v12;
}

+ (void)loadAllRequestsFromStorage:(id)storage completion:(id)completion
{
  completionCopy = completion;
  v5 = +[RAPStorageHistoryContainer directionsRecordingStorage];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100CC5790;
  v7[3] = &unk_1016505C0;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 loadAllRecordingsWithConcurrentBlock:v7];
}

@end