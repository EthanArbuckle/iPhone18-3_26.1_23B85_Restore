@interface HistoryRAPUserSearch
+ (void)loadAllSearchesFromStorage:(id)storage completion:(id)completion;
- (HistoryRAPUserSearch)initWithHistoryItem:(id)item correctedSearchTemplate:(id)template auxiliaryControls:(id)controls originatingIndex:(unint64_t)index;
- (id)geoMapItemForSearchResultAtIndex:(unint64_t)index;
- (unint64_t)searchResultsCount;
@end

@implementation HistoryRAPUserSearch

- (id)geoMapItemForSearchResultAtIndex:(unint64_t)index
{
  placeResponse = [(GEORPCorrectedSearch *)self->_template placeResponse];
  v5 = [placeResponse resultsWithResultType:1];

  v6 = [v5 objectAtIndexedSubscript:index];
  geoMapItem = [v6 geoMapItem];

  return geoMapItem;
}

- (unint64_t)searchResultsCount
{
  placeResponse = [(GEORPCorrectedSearch *)self->_template placeResponse];
  v3 = [placeResponse resultsCountWithResultType:1];

  return v3;
}

- (HistoryRAPUserSearch)initWithHistoryItem:(id)item correctedSearchTemplate:(id)template auxiliaryControls:(id)controls originatingIndex:(unint64_t)index
{
  itemCopy = item;
  templateCopy = template;
  controlsCopy = controls;
  v27.receiver = self;
  v27.super_class = HistoryRAPUserSearch;
  v14 = [(HistoryRAPUserSearch *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_historyItem, item);
    objc_storeStrong(&v15->_template, template);
    v16 = [controlsCopy copy];
    auxiliaryControls = v15->_auxiliaryControls;
    v15->_auxiliaryControls = v16;

    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15->_hasOriginatingAuxiliaryControlIndex = 1;
      v15->_originatingAuxiliaryControlIndex = index;
    }

    historyItem = [(HistoryRAPUserSearch *)v15 historyItem];
    historyEntry = [historyItem historyEntry];

    if ([historyEntry conformsToProtocol:&OBJC_PROTOCOL___MSPHistoryEntrySearch])
    {
      v20 = historyEntry;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    query = [v21 query];
    searchText = v15->_searchText;
    v15->_searchText = query;

    locationDisplayString = [v21 locationDisplayString];

    locationDisplayString = v15->_locationDisplayString;
    v15->_locationDisplayString = locationDisplayString;
  }

  return v15;
}

+ (void)loadAllSearchesFromStorage:(id)storage completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CC5D54;
  v6[3] = &unk_1016505C0;
  completionCopy = completion;
  v5 = completionCopy;
  [storage loadAllRecordingsWithConcurrentBlock:v6];
}

@end