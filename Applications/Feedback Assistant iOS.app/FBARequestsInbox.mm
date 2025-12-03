@interface FBARequestsInbox
- (id)predicateForTeam:(id)team;
- (unint64_t)unreadCountForTeam:(id)team;
@end

@implementation FBARequestsInbox

- (unint64_t)unreadCountForTeam:(id)team
{
  teamCopy = team;
  selfCopy = self;
  v7 = sub_100085C60(team);

  return v7;
}

- (id)predicateForTeam:(id)team
{
  v3 = sub_1000868BC();

  return v3;
}

@end