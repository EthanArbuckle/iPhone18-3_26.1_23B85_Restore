@interface MapsSuggestionsPredictor
- (void)storeSignalPackData:(id)data forEntryData:(id)entryData;
- (void)storeSignalPackData:(id)data forMapItemData:(id)itemData;
@end

@implementation MapsSuggestionsPredictor

- (void)storeSignalPackData:(id)data forMapItemData:(id)itemData
{
  itemDataCopy = itemData;
  v8 = [MapsSuggestionsSignalPack signalPackFromData:data];
  v7 = [[GEOMapItemStorage alloc] initWithData:itemDataCopy];

  [(MapsSuggestionsPredictor *)self storeSignalPack:v8 forMapItem:v7 andEntry:0];
}

- (void)storeSignalPackData:(id)data forEntryData:(id)entryData
{
  entryDataCopy = entryData;
  v9 = [MapsSuggestionsSignalPack signalPackFromData:data];
  v7 = [MapsSuggestionsEntry entryWithData:entryDataCopy];

  geoMapItem = [v7 geoMapItem];
  [(MapsSuggestionsPredictor *)self storeSignalPack:v9 forMapItem:geoMapItem andEntry:v7];
}

@end