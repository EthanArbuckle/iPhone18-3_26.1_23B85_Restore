@interface MFDeleteTriageInteraction
- (BOOL)_movesToTrash;
- (BOOL)_requiresConfirmationPrompt;
- (id)shortTitle;
- (id)swipeTitle;
- (id)title;
- (id)undoTitle;
@end

@implementation MFDeleteTriageInteraction

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

  v6 = [(MFTriageInteraction *)self messageListItemSelection];
  v7 = [v6 messageListItems];
  v5 = [v7 em_messageListItemTotalCount] > 1;

  return v5;
}

- (BOOL)_movesToTrash
{
  v2 = [(MFTriageInteraction *)self messageListItemSelection];
  v3 = [v2 messageListItems];
  v4 = [v3 ef_any:&stru_100653E60];

  return v4;
}

- (id)title
{
  v3 = [(MFDeleteTriageInteraction *)self _movesToTrash];
  if ([(MFTriageInteraction *)self titleIncludesCount])
  {
    if ([(MFTriageInteraction *)self messageCount]< 2)
    {
      v9 = +[NSBundle mainBundle];
      v5 = v9;
      if (v3)
      {
        [(__CFString *)v9 localizedStringForKey:@"TRASH_EMAIL" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        [(__CFString *)v9 localizedStringForKey:@"DELETE_EMAIL" value:&stru_100662A88 table:@"Main"];
      }
      v8 = ;
    }

    else
    {
      v4 = @"DELETE_FORMAT%1$lu";
      if (v3)
      {
        v4 = @"TRASH_FORMAT%1$lu";
      }

      v5 = v4;
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:v5 value:&stru_100662A88 table:@"Main"];
      v8 = [NSString localizedStringWithFormat:v7, [(MFTriageInteraction *)self messageCount]];
    }
  }

  else
  {
    v8 = _EFLocalizedString();
  }

  return v8;
}

- (id)shortTitle
{
  v3 = [(MFDeleteTriageInteraction *)self _movesToTrash];
  v4 = [(MFTriageInteraction *)self messageCount];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4 < 2)
  {
    if (v3)
    {
      [v5 localizedStringForKey:@"TRASH" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"DELETE" value:&stru_100662A88 table:@"Main"];
    }
    v8 = ;
    v7 = v6;
  }

  else
  {
    if (v3)
    {
      [v5 localizedStringForKey:@"TRASH_COUNT" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"DELETE_COUNT" value:&stru_100662A88 table:@"Main"];
    }
    v7 = ;

    v8 = [NSString localizedStringWithFormat:v7, [(MFTriageInteraction *)self messageCount]];
  }

  return v8;
}

- (id)swipeTitle
{
  v3 = [(MFDeleteTriageInteraction *)self _movesToTrash];
  v4 = [(MFTriageInteraction *)self messageCount];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4 < 2)
  {
    if (v3)
    {
      [v5 localizedStringForKey:@"SWIPE_TRASH" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"SWIPE_DELETE" value:&stru_100662A88 table:@"Main"];
    }
    v8 = ;
    v7 = v6;
  }

  else
  {
    if (v3)
    {
      [v5 localizedStringForKey:@"SWIPE_TRASH_COUNT" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"SWIPE_DELETE_COUNT" value:&stru_100662A88 table:@"Main"];
    }
    v7 = ;

    v8 = [NSString localizedStringWithFormat:v7, [(MFTriageInteraction *)self messageCount]];
  }

  return v8;
}

- (id)undoTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_DELETE_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end