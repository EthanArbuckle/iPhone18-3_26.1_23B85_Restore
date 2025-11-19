@interface FBAAllInbox
- (id)predicateForTeam:(id)a3;
- (uint64_t)unreadCountForTeam:;
@end

@implementation FBAAllInbox

- (id)predicateForTeam:(id)a3
{
  v3 = [objc_opt_self() predicateWithValue:1];

  return v3;
}

- (uint64_t)unreadCountForTeam:
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentUser];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 contentItems];

  if (!v2)
  {
    return 0;
  }

  sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
  sub_1000869B8();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) == 0)
  {
    v6 = *(v3 + 16);

    return v6;
  }

  v4 = __CocoaSet.count.getter();

  result = v4;
  if (v4 < 0)
  {
    __break(1u);
    return 0;
  }

  return result;
}

@end