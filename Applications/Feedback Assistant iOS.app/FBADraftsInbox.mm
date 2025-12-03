@interface FBADraftsInbox
- (id)displayText;
- (id)fetchRequesForInboxItemsInTeam:(id)team;
- (unint64_t)unreadCountForTeam:(id)team;
@end

@implementation FBADraftsInbox

- (id)displayText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DRAFTS_INBOX" value:&stru_1000E2210 table:0];

  return v3;
}

- (id)fetchRequesForInboxItemsInTeam:(id)team
{
  teamCopy = team;
  v5 = +[FBKContentItem fetchRequest];
  v6 = [(FBADraftsInbox *)self predicateForTeam:teamCopy];

  [v5 setPredicate:v6];

  return v5;
}

- (unint64_t)unreadCountForTeam:(id)team
{
  teamCopy = team;
  managedObjectContext = [teamCopy managedObjectContext];
  v6 = [(FBADraftsInbox *)self fetchRequesForInboxItemsInTeam:teamCopy];

  v10 = 0;
  v7 = [managedObjectContext countForFetchRequest:v6 error:&v10];
  v8 = v10;

  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end