@interface FBAAllInbox
- (id)predicateForTeam:(id)team;
- (uint64_t)unreadCountForTeam:;
@end

@implementation FBAAllInbox

- (id)predicateForTeam:(id)team
{
  v3 = [objc_opt_self() predicateWithValue:1];

  return v3;
}

- (uint64_t)unreadCountForTeam:
{
  sharedInstance = [objc_opt_self() sharedInstance];
  currentUser = [sharedInstance currentUser];

  if (!currentUser)
  {
    return 0;
  }

  contentItems = [currentUser contentItems];

  if (!contentItems)
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