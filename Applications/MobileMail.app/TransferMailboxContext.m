@interface TransferMailboxContext
- (TransferMailboxContext)initWithMailbox:(id)a3 mailboxURLString:(id)a4 messageListItems:(id)a5;
@end

@implementation TransferMailboxContext

- (TransferMailboxContext)initWithMailbox:(id)a3 mailboxURLString:(id)a4 messageListItems:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TransferMailboxContext;
  v12 = [(TransferMailboxContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailbox, a3);
    objc_storeStrong(&v13->_mailboxURLString, a4);
    objc_storeStrong(&v13->_messageListItems, a5);
  }

  return v13;
}

@end