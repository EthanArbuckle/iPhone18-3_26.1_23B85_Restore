@interface HistoryRAPUserSearch
+ (void)loadAllSearchesFromStorage:(id)a3 completion:(id)a4;
- (HistoryRAPUserSearch)initWithHistoryItem:(id)a3 correctedSearchTemplate:(id)a4 auxiliaryControls:(id)a5 originatingIndex:(unint64_t)a6;
- (id)geoMapItemForSearchResultAtIndex:(unint64_t)a3;
- (unint64_t)searchResultsCount;
@end

@implementation HistoryRAPUserSearch

- (id)geoMapItemForSearchResultAtIndex:(unint64_t)a3
{
  v4 = [(GEORPCorrectedSearch *)self->_template placeResponse];
  v5 = [v4 resultsWithResultType:1];

  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 geoMapItem];

  return v7;
}

- (unint64_t)searchResultsCount
{
  v2 = [(GEORPCorrectedSearch *)self->_template placeResponse];
  v3 = [v2 resultsCountWithResultType:1];

  return v3;
}

- (HistoryRAPUserSearch)initWithHistoryItem:(id)a3 correctedSearchTemplate:(id)a4 auxiliaryControls:(id)a5 originatingIndex:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = HistoryRAPUserSearch;
  v14 = [(HistoryRAPUserSearch *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_historyItem, a3);
    objc_storeStrong(&v15->_template, a4);
    v16 = [v13 copy];
    auxiliaryControls = v15->_auxiliaryControls;
    v15->_auxiliaryControls = v16;

    if (a6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15->_hasOriginatingAuxiliaryControlIndex = 1;
      v15->_originatingAuxiliaryControlIndex = a6;
    }

    v18 = [(HistoryRAPUserSearch *)v15 historyItem];
    v19 = [v18 historyEntry];

    if ([v19 conformsToProtocol:&OBJC_PROTOCOL___MSPHistoryEntrySearch])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [v21 query];
    searchText = v15->_searchText;
    v15->_searchText = v22;

    v24 = [v21 locationDisplayString];

    locationDisplayString = v15->_locationDisplayString;
    v15->_locationDisplayString = v24;
  }

  return v15;
}

+ (void)loadAllSearchesFromStorage:(id)a3 completion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CC5D54;
  v6[3] = &unk_1016505C0;
  v7 = a4;
  v5 = v7;
  [a3 loadAllRecordingsWithConcurrentBlock:v6];
}

@end