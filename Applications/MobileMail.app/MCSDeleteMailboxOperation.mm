@interface MCSDeleteMailboxOperation
- (BOOL)commit;
- (MCSDeleteMailboxOperation)initWithMailboxToDelete:(id)delete;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSDeleteMailboxOperation

- (MCSDeleteMailboxOperation)initWithMailboxToDelete:(id)delete
{
  deleteCopy = delete;
  v9.receiver = self;
  v9.super_class = MCSDeleteMailboxOperation;
  v6 = [(MCSDeleteMailboxOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxToDelete, delete);
    *(&v7->super.super + 8) |= 1u;
  }

  return v7;
}

- (BOOL)commit
{
  account = [(MFMailboxUid *)self->_mailboxToDelete account];
  if ([account canMailboxBeDeleted:self->_mailboxToDelete])
  {
    v4 = [EMDeleteMailboxChangeAction alloc];
    objectID = [(MFMailboxUid *)self->_mailboxToDelete objectID];
    v6 = [v4 initWithMailboxObjectID:objectID];

    v7 = +[UIApplication sharedApplication];
    daemonInterface = [v7 daemonInterface];
    mailboxRepository = [daemonInterface mailboxRepository];
    v10 = [mailboxRepository performMailboxChangeAction:v6];

    v11 = [v10 result:0];
    bOOLValue = [v11 BOOLValue];
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
  v3 = [v2 localizedStringForKey:@"ERROR_DELETING_MAILBOX_DESCRIPTION" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)localizedErrorTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ERROR_DELETING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end