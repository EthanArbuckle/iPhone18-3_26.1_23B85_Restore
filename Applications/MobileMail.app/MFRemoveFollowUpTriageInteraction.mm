@interface MFRemoveFollowUpTriageInteraction
- (BOOL)isPermitted;
- (id)triageAction;
@end

@implementation MFRemoveFollowUpTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSRemoveFollowUpTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self followUp:{"actor"), 0, 0}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (BOOL)isPermitted
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v4 = [messageListItems ef_any:&stru_100655590];

  return v4;
}

@end