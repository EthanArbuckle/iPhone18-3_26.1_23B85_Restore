@interface MFReadTriageInteraction
- (BOOL)overrideFlagStateForTriageAction:(id)action;
- (BOOL)shouldOverrideFlageStateForTriageAction:(id)action;
- (id)_iconImageName;
- (id)_previewImageName;
- (id)shortTitle;
- (id)title;
- (id)triageAction;
- (id)undoTitle;
@end

@implementation MFReadTriageInteraction

- (id)triageAction
{
  if (!self->_triageAction)
  {
    query = [(MFTriageInteraction *)self query];

    v4 = [MSReadTriageAction alloc];
    if (query)
    {
      query2 = [(MFTriageInteraction *)self query];
      v6 = [v4 initWithQuery:query2 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    }

    else
    {
      query2 = [(MFTriageInteraction *)self messageListItemSelection];
      v6 = [v4 initWithMessageListSelection:query2 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    }

    triageAction = self->_triageAction;
    self->_triageAction = v6;
  }

  v8 = self->_triageAction;

  return v8;
}

- (id)title
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  messageCount = [(MFTriageInteraction *)self messageCount];
  if (messageCount >= 2 && [(MFTriageInteraction *)self titleIncludesAllMessages])
  {
    v9 = _EFLocalizedString();
  }

  else if ([(MFTriageInteraction *)self isSelectAll]|| ![(MFTriageInteraction *)self titleIncludesCount]|| messageCount == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (flagState)
    {
      [v5 localizedStringForKey:@"MARK_EMAIL_UNREAD" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"MARK_EMAIL_READ" value:&stru_100662A88 table:@"Main"];
    }
    v9 = ;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v8 = v7;
    if (flagState)
    {
      [v7 localizedStringForKey:@"MARK_EMAIL_UNREAD%1$lu" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v7 localizedStringForKey:@"MARK_EMAIL_READ%1$lu" value:&stru_100662A88 table:@"Main"];
    }
    v10 = ;

    v9 = [NSString localizedStringWithFormat:v10, messageCount];
  }

  return v9;
}

- (id)shortTitle
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"SWIPE_MARK_AS_UNREAD" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"SWIPE_MARK_AS_READ" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)undoTitle
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"OPERATION_UNREAD_DESC" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"OPERATION_READ_DESC" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)_iconImageName
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnread;
  if (!flagState)
  {
    v3 = &MFImageGlyphRead;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  flagState = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnread;
  if (!flagState)
  {
    v3 = &MFImageGlyphRead;
  }

  v4 = *v3;

  return v4;
}

- (BOOL)shouldOverrideFlageStateForTriageAction:(id)action
{
  if ([(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    delegate = [(MFTriageInteraction *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)overrideFlagStateForTriageAction:(id)action
{
  if (![(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    return 0;
  }

  delegate = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate flagStateForFlagChangeTriageInteraction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end