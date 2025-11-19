@interface MFNotifyTriageInteraction
- (BOOL)flagState;
- (BOOL)isPermitted;
- (id)_iconImageName;
- (id)_previewImageName;
- (id)title;
- (id)triageAction;
@end

@implementation MFNotifyTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSNotifyTriageAction alloc];
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:v5 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), 0, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (BOOL)flagState
{
  v2 = [(MFConversationFlagTriageInteraction *)self referenceMessage];
  v3 = [v2 conversationNotificationLevel] == 2;

  return v3;
}

- (BOOL)isPermitted
{
  v3 = [(MFConversationFlagTriageInteraction *)self referenceMessage];
  if ([v3 conversationNotificationLevel] == 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(MFTriageInteraction *)self messageListItemSelection];
    v4 = [v5 isActingOnSender] ^ 1;
  }

  return v4;
}

- (id)title
{
  v2 = [(MFNotifyTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    [v3 localizedStringForKey:@"NOTIFY_ME_STOP" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"NOTIFY_ME" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)_iconImageName
{
  v2 = [(MFNotifyTriageInteraction *)self flagState];
  v3 = &MFImageGlyphStopNotify;
  if (!v2)
  {
    v3 = &MFImageGlyphNotify;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  v2 = [(MFNotifyTriageInteraction *)self flagState];
  v3 = &MFImageGlyphStopNotify;
  if (!v2)
  {
    v3 = &MFImageGlyphNotify;
  }

  v4 = *v3;

  return v4;
}

@end