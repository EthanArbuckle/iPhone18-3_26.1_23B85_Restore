@interface FBARequestsInbox
- (id)predicateForTeam:(id)a3;
- (unint64_t)unreadCountForTeam:(id)a3;
@end

@implementation FBARequestsInbox

- (unint64_t)unreadCountForTeam:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_100085C60(a3);

  return v7;
}

- (id)predicateForTeam:(id)a3
{
  v3 = sub_1000868BC();

  return v3;
}

@end