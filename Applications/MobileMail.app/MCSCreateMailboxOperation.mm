@interface MCSCreateMailboxOperation
- (BOOL)commit;
- (MCSCreateMailboxOperation)initWithName:(id)name parentMailbox:(id)mailbox;
- (id)localizedErrorDescription;
- (id)localizedErrorTitle;
@end

@implementation MCSCreateMailboxOperation

- (MCSCreateMailboxOperation)initWithName:(id)name parentMailbox:(id)mailbox
{
  nameCopy = name;
  mailboxCopy = mailbox;
  v12.receiver = self;
  v12.super_class = MCSCreateMailboxOperation;
  v8 = [(MCSCreateMailboxOperation *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    pendingName = v8->_pendingName;
    v8->_pendingName = v9;

    objc_storeStrong(&v8->_parentMailbox, mailbox);
    *(&v8->super.super + 8) |= 1u;
  }

  return v8;
}

- (BOOL)commit
{
  account = [(MFMailboxUid *)self->_parentMailbox account];
  if (![account canCreateNewMailboxes])
  {
    v6 = 0;
    goto LABEL_5;
  }

  pendingName = self->_pendingName;
  v18 = 0;
  v5 = [account newMailboxNameIsAcceptable:pendingName reasonForFailure:&v18];
  v6 = v18;
  if (!v5)
  {
LABEL_5:
    [(MCSCreateMailboxOperation *)self setReasonForFailure:v6];
    bOOLValue = 0;
    goto LABEL_6;
  }

  v7 = [EMCreateMailboxChangeAction alloc];
  v8 = self->_pendingName;
  objectID = [(MFMailboxUid *)self->_parentMailbox objectID];
  v10 = [v7 initWithMailboxName:v8 parentMailboxID:objectID];

  v11 = +[UIApplication sharedApplication];
  daemonInterface = [v11 daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];
  v14 = [mailboxRepository performMailboxChangeAction:v10];

  v15 = [v14 result:0];
  bOOLValue = [v15 BOOLValue];

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