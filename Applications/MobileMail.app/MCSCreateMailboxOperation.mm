@interface MCSCreateMailboxOperation
- (BOOL)commit;
- (MCSCreateMailboxOperation)initWithName:(id)a3 parentMailbox:(id)a4;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSCreateMailboxOperation

- (MCSCreateMailboxOperation)initWithName:(id)a3 parentMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MCSCreateMailboxOperation;
  v8 = [(MCSCreateMailboxOperation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    pendingName = v8->_pendingName;
    v8->_pendingName = v9;

    objc_storeStrong(&v8->_parentMailbox, a4);
    *(&v8->super.super + 8) |= 1u;
  }

  return v8;
}

- (BOOL)commit
{
  v3 = [(MFMailboxUid *)self->_parentMailbox account];
  if (![v3 canCreateNewMailboxes])
  {
    v6 = 0;
    goto LABEL_5;
  }

  pendingName = self->_pendingName;
  v18 = 0;
  v5 = [v3 newMailboxNameIsAcceptable:pendingName reasonForFailure:&v18];
  v6 = v18;
  if (!v5)
  {
LABEL_5:
    [(MCSCreateMailboxOperation *)self setReasonForFailure:v6];
    v16 = 0;
    goto LABEL_6;
  }

  v7 = [EMCreateMailboxChangeAction alloc];
  v8 = self->_pendingName;
  v9 = [(MFMailboxUid *)self->_parentMailbox objectID];
  v10 = [v7 initWithMailboxName:v8 parentMailboxID:v9];

  v11 = +[UIApplication sharedApplication];
  v12 = [v11 daemonInterface];
  v13 = [v12 mailboxRepository];
  v14 = [v13 performMailboxChangeAction:v10];

  v15 = [v14 result:0];
  v16 = [v15 BOOLValue];

LABEL_6:
  return v16;
}

- (id)localizedErrorDescription
{
  reasonForFailure = self->_reasonForFailure;
  if (reasonForFailure)
  {
    v3 = reasonForFailure;
  }

  else
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"ERROR_CREATING_MAILBOX_DESCRIPTION" value:&stru_100662A88 table:@"Main"];
  }

  return v3;
}

- (id)localizedErrorTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ERROR_CREATING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end