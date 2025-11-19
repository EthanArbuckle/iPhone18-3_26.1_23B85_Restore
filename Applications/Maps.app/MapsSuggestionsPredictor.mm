@interface MapsSuggestionsPredictor
- (void)storeSignalPackData:(id)a3 forEntryData:(id)a4;
- (void)storeSignalPackData:(id)a3 forMapItemData:(id)a4;
@end

@implementation MapsSuggestionsPredictor

- (void)storeSignalPackData:(id)a3 forMapItemData:(id)a4
{
  v6 = a4;
  v8 = [MapsSuggestionsSignalPack signalPackFromData:a3];
  v7 = [[GEOMapItemStorage alloc] initWithData:v6];

  [(MapsSuggestionsPredictor *)self storeSignalPack:v8 forMapItem:v7 andEntry:0];
}

- (void)storeSignalPackData:(id)a3 forEntryData:(id)a4
{
  v6 = a4;
  v9 = [MapsSuggestionsSignalPack signalPackFromData:a3];
  v7 = [MapsSuggestionsEntry entryWithData:v6];

  v8 = [v7 geoMapItem];
  [(MapsSuggestionsPredictor *)self storeSignalPack:v9 forMapItem:v8 andEntry:v7];
}

@end