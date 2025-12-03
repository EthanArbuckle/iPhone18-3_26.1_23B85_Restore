@interface MFMuteTriageInteraction
- (BOOL)flagState;
- (BOOL)isPermitted;
- (id)_iconImageName;
- (id)_previewImageName;
- (id)title;
- (id)triageAction;
@end

@implementation MFMuteTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSMuteTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self reason:{"actor"), 0, -[MFFlagChangeTriageInteraction reason](self, "reason")}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (BOOL)flagState
{
  referenceMessage = [(MFConversationFlagTriageInteraction *)self referenceMessage];
  v3 = [referenceMessage conversationNotificationLevel] == 1;

  return v3;
}

- (BOOL)isPermitted
{
  referenceMessage = [(MFConversationFlagTriageInteraction *)self referenceMessage];
  if ([referenceMessage conversationNotificationLevel] == 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v4 = [messageListItemSelection isActingOnSender] ^ 1;
  }

  return v4;
}

- (id)title
{
  flagState = [(MFMuteTriageInteraction *)self flagState];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (flagState)
  {
    [v3 localizedStringForKey:@"UNMUTE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v3 localizedStringForKey:@"MUTE" value:&stru_100662A88 table:@"Main"];
  }
  v5 = ;

  return v5;
}

- (id)_iconImageName
{
  flagState = [(MFMuteTriageInteraction *)self flagState];
  v3 = &MFImageGlyphMute;
  if (!flagState)
  {
    v3 = &MFImageGlyphUnMute;
  }

  v4 = *v3;

  return v4;
}

- (id)_previewImageName
{
  flagState = [(MFMuteTriageInteraction *)self flagState];
  v3 = &MFImageGlyphMute;
  if (!flagState)
  {
    v3 = &MFImageGlyphUnMute;
  }

  v4 = *v3;

  return v4;
}

@end