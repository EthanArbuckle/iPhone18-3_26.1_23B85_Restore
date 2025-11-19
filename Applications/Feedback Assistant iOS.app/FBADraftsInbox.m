@interface FBADraftsInbox
- (id)displayText;
- (id)fetchRequesForInboxItemsInTeam:(id)a3;
- (unint64_t)unreadCountForTeam:(id)a3;
@end

@implementation FBADraftsInbox

- (id)displayText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DRAFTS_INBOX" value:&stru_1000E2210 table:0];

  return v3;
}

- (id)fetchRequesForInboxItemsInTeam:(id)a3
{
  v4 = a3;
  v5 = +[FBKContentItem fetchRequest];
  v6 = [(FBADraftsInbox *)self predicateForTeam:v4];

  [v5 setPredicate:v6];

  return v5;
}

- (unint64_t)unreadCountForTeam:(id)a3
{
  v4 = a3;
  v5 = [v4 managedObjectContext];
  v6 = [(FBADraftsInbox *)self fetchRequesForInboxItemsInTeam:v4];

  v10 = 0;
  v7 = [v5 countForFetchRequest:v6 error:&v10];
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