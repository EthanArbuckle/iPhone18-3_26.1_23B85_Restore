@interface MFReadTriageInteraction
- (BOOL)overrideFlagStateForTriageAction:(id)a3;
- (BOOL)shouldOverrideFlageStateForTriageAction:(id)a3;
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
    v3 = [(MFTriageInteraction *)self query];

    v4 = [MSReadTriageAction alloc];
    if (v3)
    {
      v5 = [(MFTriageInteraction *)self query];
      v6 = [v4 initWithQuery:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    }

    else
    {
      v5 = [(MFTriageInteraction *)self messageListItemSelection];
      v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), self, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    }

    triageAction = self->_triageAction;
    self->_triageAction = v6;
  }

  v8 = self->_triageAction;

  return v8;
}

- (id)title
{
  v3 = [(MFFlagChangeTriageInteraction *)self flagState];
  v4 = [(MFTriageInteraction *)self messageCount];
  if (v4 >= 2 && [(MFTriageInteraction *)self titleIncludesAllMessages])
  {
    v9 = _EFLocalizedString();
  }

  else if ([(MFTriageInteraction *)self isSelectAll]|| ![(MFTriageInteraction *)self titleIncludesCount]|| v4 == 1)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    if (v3)
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
    if (v3)
    {
      [v7 localizedStringForKey:@"MARK_EMAIL_UNREAD%1$lu" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v7 localizedStringForKey:@"MARK_EMAIL_READ%1$lu" value:&stru_100662A88 table:@"Main"];
    }
    v10 = ;

    v9 = [NSString localizedStringWithFormat:v10, v4];
  }

  return v9;
}

- (id)shortTitle
{
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
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
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
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
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnread;
  if (!v2)
  {
    v3 = &MFImageGlyphRead;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  v2 = [(MFFlagChangeTriageInteraction *)self flagState];
  v3 = &MFImageGlyphUnread;
  if (!v2)
  {
    v3 = &MFImageGlyphRead;
  }

  v4 = *v3;

  return v4;
}

- (BOOL)shouldOverrideFlageStateForTriageAction:(id)a3
{
  if ([(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    v4 = [(MFTriageInteraction *)self delegate];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)overrideFlagStateForTriageAction:(id)a3
{
  if (![(MFTriageInteraction *)self shouldOverrideFlagState])
  {
    return 0;
  }

  v4 = [(MFTriageInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 flagStateForFlagChangeTriageInteraction:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end