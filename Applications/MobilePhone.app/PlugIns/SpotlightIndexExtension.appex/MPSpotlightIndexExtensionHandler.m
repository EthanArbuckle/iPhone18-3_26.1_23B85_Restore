@interface MPSpotlightIndexExtensionHandler
- (MPSpotlightIndexExtensionHandler)init;
- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4;
- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5;
- (void)searchableItemsDidUpdate:(id)a3;
@end

@implementation MPSpotlightIndexExtensionHandler

- (void)searchableIndex:(id)a3 reindexAllSearchableItemsWithAcknowledgementHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000338C(v8, v6, "Asked to reindex all items. Setting needsReindexing to true");
  _Block_release(v6);
  _Block_release(v6);
}

- (void)searchableIndex:(id)a3 reindexSearchableItemsWithIdentifiers:(id)a4 acknowledgementHandler:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  sub_10000338C(v9, v7, "Asked to reindex items with identifiers. Setting needsReindexing to true");
  _Block_release(v7);
  _Block_release(v7);
}

- (void)searchableItemsDidUpdate:(id)a3
{
  sub_100002A0C();
  v4 = sub_1000036BC();
  v5 = self;
  sub_1000015B8(v4);
}

- (MPSpotlightIndexExtensionHandler)init
{
  sub_10000365C();
  v3 = OBJC_IVAR___MPSpotlightIndexExtensionHandler_featureFlags;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(TUFeatureFlags) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for MPSpotlightIndexExtensionHandler();
  return [(MPSpotlightIndexExtensionHandler *)&v5 init];
}

@end