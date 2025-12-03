@interface PinnedItemsController
- (void)homeDataProvidingObjectDidUpdate:(id)update;
@end

@implementation PinnedItemsController

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = selfCopy;
  sub_10020AAE4(0, 0, v6, &unk_10120F000, v10);
}

@end