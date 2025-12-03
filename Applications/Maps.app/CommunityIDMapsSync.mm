@interface CommunityIDMapsSync
+ (_TtC4Maps19CommunityIDMapsSync)shared;
- (_TtC4Maps19CommunityIDMapsSync)init;
- (void)fetchAllAvailableCommunityIDsWithPredicate:(id)predicate completion:(id)completion;
- (void)fetchCommunityIDWithIdentifier:(id)identifier completion:(id)completion;
- (void)increaseUsedCountWithMsCommunityID:(id)d completion:(id)completion;
- (void)setExpiredWithMsCommunityID:(id)d completion:(id)completion;
- (void)setStore:(id)store;
- (void)storeCommunityIDWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CommunityIDMapsSync

+ (_TtC4Maps19CommunityIDMapsSync)shared
{
  if (qword_101906520 != -1)
  {
    swift_once();
  }

  v3 = qword_10195FA50;

  return v3;
}

- (void)setStore:(id)store
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps19CommunityIDMapsSync_store);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps19CommunityIDMapsSync_store) = store;
  storeCopy = store;
}

- (_TtC4Maps19CommunityIDMapsSync)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps19CommunityIDMapsSync_store) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CommunityIDMapsSync();
  return [(CommunityIDMapsSync *)&v3 init];
}

- (void)fetchAllAvailableCommunityIDsWithPredicate:(id)predicate completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000DAA28;
  }

  else
  {
    v7 = 0;
  }

  predicateCopy = predicate;
  selfCopy = self;
  sub_1000D9CD0(predicateCopy, v6, v7);
  sub_1000588AC(v6);
}

- (void)fetchCommunityIDWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1000DAA28;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1000D9F80(v6, v8, v5, v9);
  sub_1000588AC(v5);
}

- (void)storeCommunityIDWithIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1000DAA28;
  }

  selfCopy = self;
  sub_1000DA198(v6, v8, v5);
  sub_1000588AC(v5);
}

- (void)setExpiredWithMsCommunityID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000DAA28;
  }

  dCopy = d;
  selfCopy = self;
  sub_1000DA318(dCopy, v6);
  sub_1000588AC(v6);
}

- (void)increaseUsedCountWithMsCommunityID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_1000DA614;
  }

  dCopy = d;
  selfCopy = self;
  sub_1000DA4A4(dCopy, v6);
  sub_1000588AC(v6);
}

@end