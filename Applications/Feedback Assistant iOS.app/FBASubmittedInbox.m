@interface FBASubmittedInbox
- (id)displayText;
- (id)fetchRequesForInboxItemsInTeam:(id)a3;
@end

@implementation FBASubmittedInbox

- (id)displayText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SUBMITTED_INBOX" value:&stru_1000E2210 table:0];

  return v3;
}

- (id)fetchRequesForInboxItemsInTeam:(id)a3
{
  v4 = a3;
  v5 = +[FBKContentItem fetchRequest];
  v6 = [(FBASubmittedInbox *)self predicateForTeam:v4];

  [v5 setPredicate:v6];

  return v5;
}

@end