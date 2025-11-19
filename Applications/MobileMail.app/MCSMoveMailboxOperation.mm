@interface MCSMoveMailboxOperation
- (BOOL)commit;
- (MCSMoveMailboxOperation)initWithMailboxToMove:(id)a3 toParent:(id)a4;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSMoveMailboxOperation

- (MCSMoveMailboxOperation)initWithMailboxToMove:(id)a3 toParent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MCSMoveMailboxOperation;
  v9 = [(MCSMoveMailboxOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxToMove, a3);
    objc_storeStrong(&v10->_parentMailbox, a4);
    *(&v10->super.super + 8) |= 1u;
  }

  return v10;
}

- (BOOL)commit
{
  v3 = [(MFMailboxUid *)self->_mailboxToMove account];
  v4 = [(MFMailboxUid *)self->_parentMailbox account];
  if (v3 == v4)
  {
    v6 = [EMMoveMailboxChangeAction alloc];
    v7 = [(MFMailboxUid *)self->_mailboxToMove objectID];
    v8 = [(MFMailboxUid *)self->_parentMailbox objectID];
    v9 = [v6 initWithMailboxObjectID:v7 newParentMailboxID:v8];

    v10 = +[UIApplication sharedApplication];
    v11 = [v10 daemonInterface];
    v12 = [v11 mailboxRepository];
    v13 = [v12 performMailboxChangeAction:v9];

    v14 = [v13 result:0];
    v5 = [v14 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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