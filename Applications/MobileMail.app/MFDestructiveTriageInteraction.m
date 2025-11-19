@interface MFDestructiveTriageInteraction
+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6;
- (BOOL)isMessageListItemSelectionSourceTrash;
- (id)triageAction;
@end

@implementation MFDestructiveTriageInteraction

+ (id)interactionWithMessageListItemSelection:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v10 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___MFDestructiveTriageInteraction;
  v11 = objc_msgSendSuper2(&v14, "interactionWithMessageListItemSelection:undoManager:origin:actor:", v10, a4, a5, a6);
  if ([v10 isSelectAll])
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

+ (id)interactionWithMessageListItems:(id)a3 undoManager:(id)a4 origin:(int64_t)a5 actor:(int64_t)a6
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___MFDestructiveTriageInteraction;
  v6 = objc_msgSendSuper2(&v8, "interactionWithMessageListItems:undoManager:origin:actor:", a3, a4, a5, a6);
  [v6 setType:0];

  return v6;
}

- (id)triageAction
{
  if (!self->_triageAction)
  {
    v3 = [objc_opt_class() deleteOrArchive];
    if (v3 == 1)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    if (v3 == 1 && [(MFDestructiveTriageInteraction *)self isMessageListItemSelectionSourceTrash])
    {
      v5 = [MSDeleteTriageAction alloc];
      v6 = [(MFTriageInteraction *)self messageListItemSelection];
      v7 = [v5 initWithMessageListSelection:v6 origin:-[MFTriageInteraction origin](self actor:"origin") delegate:{-[MFTriageInteraction actor](self, "actor"), self}];
      triageAction = self->_triageAction;
      self->_triageAction = v7;
    }

    else
    {
      v6 = +[ECMessageFlagChange setRead];
      v9 = [(MFTriageInteraction *)self query];

      v10 = [MSMoveTriageAction alloc];
      if (v9)
      {
        triageAction = [(MFTriageInteraction *)self query];
        LOBYTE(v15) = 0;
        v11 = [v10 initWithQuery:triageAction origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{v4, v6, v15}];
      }

      else
      {
        triageAction = [(MFTriageInteraction *)self messageListItemSelection];
        LOBYTE(v15) = 0;
        v11 = [v10 initWithMessageListSelection:triageAction origin:-[MFTriageInteraction origin](self actor:"origin") delegate:-[MFTriageInteraction actor](self destinationMailboxType:"actor") flagChange:self copyMessages:{v4, v6, v15}];
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
  v3 = [(MFTriageInteraction *)self messageListItemSelection];
  v4 = [v3 isSelectAll];

  v5 = [(MFTriageInteraction *)self messageListItemSelection];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 mailboxes];
    v8 = [v7 ef_all:&stru_100653EA0];
  }

  else
  {
    v9 = [v5 messageListItems];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001C5CB8;
    v11[3] = &unk_100653300;
    v12 = &stru_100653E80;
    v8 = [v9 ef_all:v11];
  }

  return v8;
}

@end