@interface MCSRenameMailboxOperation
- (BOOL)allowOtherMailboxOperation:(id)a3;
- (BOOL)commit;
- (MCSRenameMailboxOperation)initWithMailboxToRename:(id)a3 toName:(id)a4;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSRenameMailboxOperation

- (MCSRenameMailboxOperation)initWithMailboxToRename:(id)a3 toName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MCSRenameMailboxOperation;
  v9 = [(MCSRenameMailboxOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxToRename, a3);
    objc_storeStrong(&v10->_pendingName, a4);
    *(&v10->super.super + 8) |= 1u;
  }

  return v10;
}

- (BOOL)commit
{
  v3 = [(MFMailboxUid *)self->_mailboxToRename account];
  if (![v3 canMailboxBeRenamed:self->_mailboxToRename])
  {
    v6 = 0;
    goto LABEL_5;
  }

  pendingName = self->_pendingName;
  v17 = 0;
  v5 = [v3 newMailboxNameIsAcceptable:pendingName reasonForFailure:&v17];
  v6 = v17;
  if (!v5)
  {
LABEL_5:
    [(MCSRenameMailboxOperation *)self setReasonForFailure:v6];
    v15 = 0;
    goto LABEL_6;
  }

  v7 = [EMRenameMailboxChangeAction alloc];
  v8 = [(MFMailboxUid *)self->_mailboxToRename objectID];
  v9 = [v7 initWithMailboxObjectID:v8 newName:self->_pendingName];

  v10 = +[UIApplication sharedApplication];
  v11 = [v10 daemonInterface];
  v12 = [v11 mailboxRepository];
  v13 = [v12 performMailboxChangeAction:v9];

  v14 = [v13 result:0];
  v15 = [v14 BOOLValue];

LABEL_6:
  return v15;
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
    v3 = [v4 localizedStringForKey:@"ERROR_RENAMING_MAILBOX_DESCRIPTION" value:&stru_100662A88 table:@"Main"];
  }

  return v3;
}

- (id)localizedErrorTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ERROR_RENAMING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (BOOL)allowOtherMailboxOperation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end