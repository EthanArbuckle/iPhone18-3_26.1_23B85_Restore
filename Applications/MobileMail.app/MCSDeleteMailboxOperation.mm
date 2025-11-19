@interface MCSDeleteMailboxOperation
- (BOOL)commit;
- (MCSDeleteMailboxOperation)initWithMailboxToDelete:(id)a3;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSDeleteMailboxOperation

- (MCSDeleteMailboxOperation)initWithMailboxToDelete:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCSDeleteMailboxOperation;
  v6 = [(MCSDeleteMailboxOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxToDelete, a3);
    *(&v7->super.super + 8) |= 1u;
  }

  return v7;
}

- (BOOL)commit
{
  v3 = [(MFMailboxUid *)self->_mailboxToDelete account];
  if ([v3 canMailboxBeDeleted:self->_mailboxToDelete])
  {
    v4 = [EMDeleteMailboxChangeAction alloc];
    v5 = [(MFMailboxUid *)self->_mailboxToDelete objectID];
    v6 = [v4 initWithMailboxObjectID:v5];

    v7 = +[UIApplication sharedApplication];
    v8 = [v7 daemonInterface];
    v9 = [v8 mailboxRepository];
    v10 = [v9 performMailboxChangeAction:v6];

    v11 = [v10 result:0];
    v12 = [v11 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  return v12;
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