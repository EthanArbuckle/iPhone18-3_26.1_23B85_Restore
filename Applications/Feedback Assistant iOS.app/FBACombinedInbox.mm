@interface FBACombinedInbox
- (id)displayText;
- (unint64_t)unreadCountForTeam:(id)team;
@end

@implementation FBACombinedInbox

- (id)displayText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"COMBINED_INBOX" value:&stru_1000E2210 table:0];

  return v3;
}

- (unint64_t)unreadCountForTeam:(id)team
{
  teamCopy = team;
  managedObjectContext = [teamCopy managedObjectContext];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002B1DC;
  v9[3] = &unk_1000DF4F0;
  v5 = teamCopy;
  v10 = v5;
  v12 = &v13;
  v6 = managedObjectContext;
  v11 = v6;
  [v6 performBlockAndWait:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

@end