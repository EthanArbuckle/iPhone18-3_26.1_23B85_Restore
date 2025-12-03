@interface MCSRenameMailboxOperation
- (BOOL)allowOtherMailboxOperation:(id)operation;
- (BOOL)commit;
- (MCSRenameMailboxOperation)initWithMailboxToRename:(id)rename toName:(id)name;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSRenameMailboxOperation

- (MCSRenameMailboxOperation)initWithMailboxToRename:(id)rename toName:(id)name
{
  renameCopy = rename;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MCSRenameMailboxOperation;
  v9 = [(MCSRenameMailboxOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxToRename, rename);
    objc_storeStrong(&v10->_pendingName, name);
    *(&v10->super.super + 8) |= 1u;
  }

  return v10;
}

- (BOOL)commit
{
  account = [(MFMailboxUid *)self->_mailboxToRename account];
  if (![account canMailboxBeRenamed:self->_mailboxToRename])
  {
    v6 = 0;
    goto LABEL_5;
  }

  pendingName = self->_pendingName;
  v17 = 0;
  v5 = [account newMailboxNameIsAcceptable:pendingName reasonForFailure:&v17];
  v6 = v17;
  if (!v5)
  {
LABEL_5:
    [(MCSRenameMailboxOperation *)self setReasonForFailure:v6];
    bOOLValue = 0;
    goto LABEL_6;
  }

  v7 = [EMRenameMailboxChangeAction alloc];
  objectID = [(MFMailboxUid *)self->_mailboxToRename objectID];
  v9 = [v7 initWithMailboxObjectID:objectID newName:self->_pendingName];

  v10 = +[UIApplication sharedApplication];
  daemonInterface = [v10 daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];
  v13 = [mailboxRepository performMailboxChangeAction:v9];

  v14 = [v13 result:0];
  bOOLValue = [v14 BOOLValue];

LABEL_6:
  return bOOLValue;
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

- (BOOL)allowOtherMailboxOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end