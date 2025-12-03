@interface MFJunkTriageInteraction
- (BOOL)flagState;
- (id)cardTitle;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)undoTitle;
@end

@implementation MFJunkTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSJunkTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (BOOL)flagState
{
  triageAction = [(MFJunkTriageInteraction *)self triageAction];
  hasNonJunkMessages = [triageAction hasNonJunkMessages];

  return hasNonJunkMessages ^ 1;
}

- (id)title
{
  flagState = [(MFJunkTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"MARK_EMAIL_NOT_JUNK" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"MARK_EMAIL_JUNK" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)shortTitle
{
  flagState = [(MFJunkTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"SWIPE_NOT_JUNK" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"SWIPE_JUNK" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)undoTitle
{
  flagState = [(MFJunkTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"OPERATION_NOT_JUNK_DESC" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"OPERATION_JUNK_DESC" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)cardTitle
{
  messageCount = [(MFTriageInteraction *)self messageCount];
  if (messageCount >= 2 && (v4 = messageCount, [(MFTriageInteraction *)self titleIncludesCount]))
  {
    flagState = [(MFJunkTriageInteraction *)self flagState];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (flagState)
    {
      [v6 localizedStringForKey:@"MARK_NOT_JUNK_FORMAT%1$ld" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v6 localizedStringForKey:@"MARK_JUNK_FORMAT%1$ld" value:&stru_100662A88 table:@"Main"];
    }
    v10 = ;

    v11 = [NSString localizedStringWithFormat:v10, v4];
  }

  else
  {
    flagState2 = [(MFJunkTriageInteraction *)self flagState];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (flagState2)
    {
      [v9 localizedStringForKey:@"MARK_EMAIL_NOT_JUNK" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v9 localizedStringForKey:@"MARK_EMAIL_JUNK" value:&stru_100662A88 table:@"Main"];
    }
    v11 = ;
  }

  v12 = v11;

  return v12;
}

@end