@interface MCSMoveMailboxOperation
- (BOOL)commit;
- (MCSMoveMailboxOperation)initWithMailboxToMove:(id)move toParent:(id)parent;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSMoveMailboxOperation

- (MCSMoveMailboxOperation)initWithMailboxToMove:(id)move toParent:(id)parent
{
  moveCopy = move;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = MCSMoveMailboxOperation;
  v9 = [(MCSMoveMailboxOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxToMove, move);
    objc_storeStrong(&v10->_parentMailbox, parent);
    *(&v10->super.super + 8) |= 1u;
  }

  return v10;
}

- (BOOL)commit
{
  account = [(MFMailboxUid *)self->_mailboxToMove account];
  account2 = [(MFMailboxUid *)self->_parentMailbox account];
  if (account == account2)
  {
    v6 = [EMMoveMailboxChangeAction alloc];
    objectID = [(MFMailboxUid *)self->_mailboxToMove objectID];
    objectID2 = [(MFMailboxUid *)self->_parentMailbox objectID];
    v9 = [v6 initWithMailboxObjectID:objectID newParentMailboxID:objectID2];

    v10 = +[UIApplication sharedApplication];
    daemonInterface = [v10 daemonInterface];
    mailboxRepository = [daemonInterface mailboxRepository];
    v13 = [mailboxRepository performMailboxChangeAction:v9];

    v14 = [v13 result:0];
    bOOLValue = [v14 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)localizedErrorDescription
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ERROR_MOVING_MAILBOX_DESCRIPTION" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)localizedErrorTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ERROR_MOVING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end