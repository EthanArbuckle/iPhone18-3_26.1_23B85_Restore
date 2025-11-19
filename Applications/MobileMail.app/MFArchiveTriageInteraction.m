@interface MFArchiveTriageInteraction
- (BOOL)_requiresConfirmationPrompt;
- (BOOL)isMessageListItemSelectionSourceArchive;
- (id)shortTitle;
- (id)title;
- (id)undoTitle;
@end

@implementation MFArchiveTriageInteraction

- (BOOL)_requiresConfirmationPrompt
{
  if ([(MFDestructiveTriageInteraction *)self type]== 2)
  {
    return 1;
  }

  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 BOOLForKey:ShowMessageDeleteConfirmationKey];

  if (v4)
  {
    return 1;
  }

  if ([(MFTriageInteraction *)self messageCount]< 2)
  {
    return 0;
  }

  return [(MFTriageInteraction *)self origin]!= 6;
}

- (id)title
{
  if ([(MFTriageInteraction *)self titleIncludesCount])
  {
    if ([(MFTriageInteraction *)self messageCount]< 2)
    {
      v3 = +[NSBundle mainBundle];
      v5 = [v3 localizedStringForKey:@"ARCHIVE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v3 = +[NSBundle mainBundle];
      v4 = [v3 localizedStringForKey:@"ARCHIVE_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
      v5 = [NSString localizedStringWithFormat:v4, [(MFTriageInteraction *)self messageCount]];
    }
  }

  else
  {
    v5 = _EFLocalizedString();
  }

  return v5;
}

- (id)shortTitle
{
  if ([(MFTriageInteraction *)self messageCount]< 2)
  {
    v3 = +[NSBundle mainBundle];
    v5 = [v3 localizedStringForKey:@"ARCHIVE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"SWIPE_ARCHIVE_COUNT" value:&stru_100662A88 table:@"Main"];
    v5 = [NSString stringWithFormat:v4, [(MFTriageInteraction *)self messageCount]];
  }

  return v5;
}

- (id)undoTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_ARCHIVE_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (BOOL)isMessageListItemSelectionSourceArchive
{
  v3 = [(MFTriageInteraction *)self messageListItemSelection];
  v4 = [v3 isSelectAll];

  v5 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 mailboxes];
    v8 = [v7 ef_all:&stru_1006532D8];
  }

  else
  {
    v9 = [v5 messageListItems];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A537C;
    v11[3] = &unk_100653300;
    v12 = &stru_1006532B8;
    v8 = [v9 ef_all:v11];
  }

  return v8;
}

@end