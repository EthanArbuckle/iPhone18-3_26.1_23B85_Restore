@interface CompositeCollectionViewLayout.InvalidationContext
- (_TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext)init;
@end

@implementation CompositeCollectionViewLayout.InvalidationContext

- (_TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_componentInvalidationReferences) = _swiftEmptyArrayStorage;
  v3 = self + OBJC_IVAR____TtCC12NowPlayingUI29CompositeCollectionViewLayout19InvalidationContext_sourceComponentItem;
  v4 = type metadata accessor for CompositeCollectionViewLayout.InvalidationContext();
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CompositeCollectionViewLayout.InvalidationContext *)&v6 init];
}

@end