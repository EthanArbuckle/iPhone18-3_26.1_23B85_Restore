@interface TransferMailboxContext
- (TransferMailboxContext)initWithMailbox:(id)mailbox mailboxURLString:(id)string messageListItems:(id)items;
@end

@implementation TransferMailboxContext

- (TransferMailboxContext)initWithMailbox:(id)mailbox mailboxURLString:(id)string messageListItems:(id)items
{
  mailboxCopy = mailbox;
  stringCopy = string;
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = TransferMailboxContext;
  v12 = [(TransferMailboxContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailbox, mailbox);
    objc_storeStrong(&v13->_mailboxURLString, string);
    objc_storeStrong(&v13->_messageListItems, items);
  }

  return v13;
}

@end