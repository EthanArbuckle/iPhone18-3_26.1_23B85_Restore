@interface MFRemoveHighImpactTriageInteraction
- (BOOL)isPermitted;
- (id)triageAction;
@end

@implementation MFRemoveHighImpactTriageInteraction

- (id)triageAction
{
  triageAction = self->_triageAction;
  if (!triageAction)
  {
    v4 = [MSRemoveHighImpactTriageAction alloc];
    messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
    v6 = [v4 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self highImpactChange:{"actor"), 0, 0}];
    v7 = self->_triageAction;
    self->_triageAction = v6;

    triageAction = self->_triageAction;
  }

  return triageAction;
}

- (BOOL)isPermitted
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];

  v4 = [messageListItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(messageListItems);
        }

        category = [*(*(&v10 + 1) + 8 * i) category];
        isHighImpact = [category isHighImpact];

        if (isHighImpact)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [messageListItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end