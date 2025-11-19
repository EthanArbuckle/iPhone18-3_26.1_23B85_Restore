@interface SearchPlaceDisplayHistoryRecorder
- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)a3;
- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)a3 placeDisplayHistoryItem:(id)a4;
- (void)recordItemInHistory;
@end

@implementation SearchPlaceDisplayHistoryRecorder

- (void)recordItemInHistory
{
  v2 = [(MSPMutableHistoryEntryPlaceDisplay *)self->_placeDisplayHistoryItem geoMapItem];
  [HistoryEntryRecentsItem saveGeoMapItem:v2];
}

- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)a3 placeDisplayHistoryItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SearchPlaceDisplayHistoryRecorder;
  v8 = [(SearchPlaceDisplayHistoryRecorder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeDisplayHistoryItem, a4);
    [(MSPMutableHistoryEntryPlaceDisplay *)v9->_placeDisplayHistoryItem setGeoMapItem:v6];
  }

  return v9;
}

- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MSPMutableHistoryEntryPlaceDisplay);
  v6 = [(SearchPlaceDisplayHistoryRecorder *)self initWithGEOMapItem:v4 placeDisplayHistoryItem:v5];

  return v6;
}

@end