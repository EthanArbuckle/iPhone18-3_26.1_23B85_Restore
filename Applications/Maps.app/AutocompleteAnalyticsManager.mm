@interface AutocompleteAnalyticsManager
- (AutocompleteAnalyticsManager)init;
- (void)addAPlaceTappedWithNumberOfResults:(unint64_t)a3;
- (void)cleanupCuratedCollectionsEvent;
- (void)containmentParentUnitTappedWithMuid:(unint64_t)a3;
- (void)curatedCollectionTappedWithMUID:(unint64_t)a3 isCurrentlySaved:(BOOL)a4 verticalIndex:(int64_t)a5;
- (void)guidesHomeChildItemButtonTappedWithVerticalIndex:(int64_t)a3;
- (void)placeContextMultipleCollectionsTappedWithMuids:(id)a3 verticalIndex:(int64_t)a4;
- (void)placeContextSingleCollectionTappedWithMuid:(unint64_t)a3 isCurrentlySaved:(BOOL)a4 verticalIndex:(int64_t)a5;
- (void)publisherChildItemButtonTappedWithPublisherMuid:(unint64_t)a3 verticalIndex:(int64_t)a4;
- (void)publisherTappedWithMuid:(unint64_t)a3 verticalIndex:(int64_t)a4;
- (void)resultRefinementTappedWithKey:(id)a3;
- (void)tappableEntryUnitTappedWithMuid:(unint64_t)a3;
- (void)userGeneratedGuideUnitTapped;
@end

@implementation AutocompleteAnalyticsManager

- (void)addAPlaceTappedWithNumberOfResults:(unint64_t)a3
{
  v4 = [NSString stringWithFormat:@"%lu", a3];
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:222 onTarget:11 eventValue:v4];
}

- (void)resultRefinementTappedWithKey:(id)a3
{
  v3 = a3;
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:200 onTarget:11 eventValue:v3];
}

- (void)tappableEntryUnitTappedWithMuid:(unint64_t)a3
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:a3];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:198 onTarget:11 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_STRING" placeActionDetails:v5];
}

- (void)containmentParentUnitTappedWithMuid:(unint64_t)a3
{
  v5 = objc_alloc_init(GEOPlaceActionDetails);
  [v5 setBusinessID:a3];
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:198 onTarget:11 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_CONTAINMENT" placeActionDetails:v5];
}

- (void)userGeneratedGuideUnitTapped
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:73 onTarget:11 eventValue:0];

  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:198 onTarget:11 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_USER_GENERATED_GUIDES"];
}

- (void)cleanupCuratedCollectionsEvent
{
  self->_curatedCollectionsEvent.action = 17099;
  value = self->_curatedCollectionsEvent.value;
  self->_curatedCollectionsEvent.value = 0;

  collectionId = self->_curatedCollectionsEvent.collectionId;
  self->_curatedCollectionsEvent.collectionId = 0;

  publisherIds = self->_curatedCollectionsEvent.publisherIds;
  self->_curatedCollectionsEvent.publisherIds = 0;

  collectionCurrentlySaved = self->_curatedCollectionsEvent.collectionCurrentlySaved;
  self->_curatedCollectionsEvent.collectionCurrentlySaved = 0;

  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = 0;
}

- (void)guidesHomeChildItemButtonTappedWithVerticalIndex:(int64_t)a3
{
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 258;
  v5 = [NSNumber numberWithInteger:a3];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v5;

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
}

- (void)placeContextMultipleCollectionsTappedWithMuids:(id)a3 verticalIndex:(int64_t)a4
{
  v6 = a3;
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 2100;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v19 + 1) + 8 * v12) stringValue];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:{@", "}];
  value = self->_curatedCollectionsEvent.value;
  self->_curatedCollectionsEvent.value = v14;

  v16 = [NSNumber numberWithInteger:a4];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v16;

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
  v18 = +[MKMapService sharedService];
  [v18 captureUserAction:198 onTarget:11 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_CURATED_GUIDES"];
}

- (void)placeContextSingleCollectionTappedWithMuid:(unint64_t)a3 isCurrentlySaved:(BOOL)a4 verticalIndex:(int64_t)a5
{
  v6 = a4;
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 2099;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  collectionId = self->_curatedCollectionsEvent.collectionId;
  self->_curatedCollectionsEvent.collectionId = v9;

  v11 = [NSNumber numberWithBool:v6];
  collectionCurrentlySaved = self->_curatedCollectionsEvent.collectionCurrentlySaved;
  self->_curatedCollectionsEvent.collectionCurrentlySaved = v11;

  v13 = [NSNumber numberWithInteger:a5];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v13;

  value = self->_curatedCollectionsEvent.value;
  self->_curatedCollectionsEvent.value = @"Hyperlink";

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
  v16 = +[MKMapService sharedService];
  [v16 captureUserAction:198 onTarget:11 eventValue:@"PLACE_SUMMARY_LAYOUT_UNIT_TYPE_CURATED_GUIDES"];
}

- (void)publisherChildItemButtonTappedWithPublisherMuid:(unint64_t)a3 verticalIndex:(int64_t)a4
{
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 2195;
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  publisherIds = self->_curatedCollectionsEvent.publisherIds;
  self->_curatedCollectionsEvent.publisherIds = v8;

  v10 = [NSNumber numberWithInteger:a4];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v10;

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
}

- (void)publisherTappedWithMuid:(unint64_t)a3 verticalIndex:(int64_t)a4
{
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 2102;
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = v7;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  publisherIds = self->_curatedCollectionsEvent.publisherIds;
  self->_curatedCollectionsEvent.publisherIds = v8;

  v10 = [NSNumber numberWithInteger:a4];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v10;

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
}

- (void)curatedCollectionTappedWithMUID:(unint64_t)a3 isCurrentlySaved:(BOOL)a4 verticalIndex:(int64_t)a5
{
  v6 = a4;
  [(AutocompleteAnalyticsManager *)self cleanupCuratedCollectionsEvent];
  self->_curatedCollectionsEvent.action = 2099;
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  collectionId = self->_curatedCollectionsEvent.collectionId;
  self->_curatedCollectionsEvent.collectionId = v9;

  v11 = [NSNumber numberWithBool:v6];
  collectionCurrentlySaved = self->_curatedCollectionsEvent.collectionCurrentlySaved;
  self->_curatedCollectionsEvent.collectionCurrentlySaved = v11;

  v13 = [NSNumber numberWithInteger:a5];
  verticalIndex = self->_curatedCollectionsEvent.verticalIndex;
  self->_curatedCollectionsEvent.verticalIndex = v13;

  [(AutocompleteAnalyticsManager *)self logCuratedCollectionsEvent];
}

- (AutocompleteAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = AutocompleteAnalyticsManager;
  result = [(AutocompleteAnalyticsManager *)&v3 init];
  if (result)
  {
    result->_curatedCollectionsEvent.target = 11;
  }

  return result;
}

@end