@interface FBAOutbox
- (id)displayText;
- (id)fetchRequesForInboxItemsInTeam:(id)team;
@end

@implementation FBAOutbox

- (id)displayText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OUTBOX_INBOX" value:&stru_1000E2210 table:0];

  return v3;
}

- (id)fetchRequesForInboxItemsInTeam:(id)team
{
  teamCopy = team;
  v5 = +[FBKContentItem fetchRequest];
  v6 = [(FBAOutbox *)self predicateForTeam:teamCopy];

  [v5 setPredicate:v6];

  return v5;
}

@end