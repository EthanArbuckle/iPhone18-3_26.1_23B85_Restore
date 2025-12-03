@interface MPSpotlightIndexExtensionHandler
- (MPSpotlightIndexExtensionHandler)init;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
- (void)searchableItemsDidUpdate:(id)update;
@end

@implementation MPSpotlightIndexExtensionHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  indexCopy = index;
  selfCopy = self;
  sub_10000338C(selfCopy, v6, "Asked to reindex all items. Setting needsReindexing to true");
  _Block_release(v6);
  _Block_release(v6);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  _Block_copy(v7);
  indexCopy = index;
  selfCopy = self;
  sub_10000338C(selfCopy, v7, "Asked to reindex items with identifiers. Setting needsReindexing to true");
  _Block_release(v7);
  _Block_release(v7);
}

- (void)searchableItemsDidUpdate:(id)update
{
  sub_100002A0C();
  v4 = sub_1000036BC();
  selfCopy = self;
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