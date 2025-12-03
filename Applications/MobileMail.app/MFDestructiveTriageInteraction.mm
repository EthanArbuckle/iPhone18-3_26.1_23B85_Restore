@interface MFDestructiveTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor;
- (BOOL)isMessageListItemSelectionSourceTrash;
- (id)triageAction;
@end

@implementation MFDestructiveTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)selection undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  selectionCopy = selection;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___MFDestructiveTriageInteraction;
  v11 = objc_msgSendSuper2(&v14, "interactionWithMessageListItemSelection:undoManager:origin:actor:", selectionCopy, manager, origin, actor);
  if ([selectionCopy isSelectAll])
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [v11 setType:v12];

  return v11;
}

+ (id)interactionWithMessageListItems:(id)items undoManager:(id)manager origin:(int64_t)origin actor:(int64_t)actor
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___MFDestructiveTriageInteraction;
  v6 = objc_msgSendSuper2(&v8, "interactionWithMessageListItems:undoManager:origin:actor:", items, manager, origin, actor);
  [v6 setType:0];

  return v6;
}

- (id)triageAction
{
  if (!self->_triageAction)
  {
    deleteOrArchive = [objc_opt_class() deleteOrArchive];
    if (deleteOrArchive == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if (deleteOrArchive == 1 && [(MFDestructiveTriageInteraction *)self isMessageListItemSelectionSourceTrash])
    {
      v5 = [MSDeleteTriageAction alloc];
      messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
      v7 = [v5 initWithMessageListSelection:messageListItemSelection origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
      triageAction = self->_triageAction;
      self->_triageAction = v7;
    }

    else
    {
      messageListItemSelection = +[ECMessageFlagChange setRead];
      query = [(MFTriageInteraction *)self query];

      v10 = [MSMoveTriageAction alloc];
      if (query)
      {
        triageAction = [(MFTriageInteraction *)self query];
        LOBYTE(v15) = 0;
        v11 = [v10 initWithQuery:triageAction origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{v4, messageListItemSelection, v15}];
      }

      else
      {
        triageAction = [(MFTriageInteraction *)self messageListItemSelection];
        LOBYTE(v15) = 0;
        v11 = [v10 initWithMessageListSelection:triageAction origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{v4, messageListItemSelection, v15}];
      }

      v12 = self->_triageAction;
      self->_triageAction = v11;
    }
  }

  v13 = self->_triageAction;

  return v13;
}

- (BOOL)isMessageListItemSelectionSourceTrash
{
  messageListItemSelection = [(MFTriageInteraction *)self messageListItemSelection];
  isSelectAll = [messageListItemSelection isSelectAll];

  messageListItemSelection2 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = messageListItemSelection2;
  if (isSelectAll)
  {
    mailboxes = [messageListItemSelection2 mailboxes];
    v8 = [mailboxes ef_all:&stru_100653EA0];
  }

  else
  {
    messageListItems = [messageListItemSelection2 messageListItems];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C5CB8;
    v11[3] = &unk_100653300;
    v12 = &stru_100653E80;
    v8 = [messageListItems ef_all:v11];
  }

  return v8;
}

@end