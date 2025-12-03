@interface IndexRequestHandler
- (_TtC18TipsSpotlightIndex19IndexRequestHandler)init;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation IndexRequestHandler

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  indexCopy = index;
  selfCopy = self;
  sub_1000013C8(sub_1000019EC, v7);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_100001A64();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  indexCopy = index;
  selfCopy = self;
  sub_100001580(v8, sub_1000013B8, v9);
}

- (_TtC18TipsSpotlightIndex19IndexRequestHandler)init
{
  v3 = OBJC_IVAR____TtC18TipsSpotlightIndex19IndexRequestHandler_searchQueryClient;
  *(&self->super.super.isa + v3) = [objc_allocWithZone(TPSSearchQueryClient) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for IndexRequestHandler();
  return [(IndexRequestHandler *)&v5 init];
}

@end