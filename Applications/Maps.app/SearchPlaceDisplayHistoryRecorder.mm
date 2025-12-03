@interface SearchPlaceDisplayHistoryRecorder
- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)item;
- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)item placeDisplayHistoryItem:(id)historyItem;
- (void)recordItemInHistory;
@end

@implementation SearchPlaceDisplayHistoryRecorder

- (void)recordItemInHistory
{
  geoMapItem = [(MSPMutableHistoryEntryPlaceDisplay *)self->_placeDisplayHistoryItem geoMapItem];
  [HistoryEntryRecentsItem saveGeoMapItem:geoMapItem];
}

- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)item placeDisplayHistoryItem:(id)historyItem
{
  itemCopy = item;
  historyItemCopy = historyItem;
  v11.receiver = self;
  v11.super_class = SearchPlaceDisplayHistoryRecorder;
  v8 = [(SearchPlaceDisplayHistoryRecorder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_placeDisplayHistoryItem, historyItem);
    [(MSPMutableHistoryEntryPlaceDisplay *)v9->_placeDisplayHistoryItem setGeoMapItem:itemCopy];
  }

  return v9;
}

- (SearchPlaceDisplayHistoryRecorder)initWithGEOMapItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(MSPMutableHistoryEntryPlaceDisplay);
  v6 = [(SearchPlaceDisplayHistoryRecorder *)self initWithGEOMapItem:itemCopy placeDisplayHistoryItem:v5];

  return v6;
}

@end