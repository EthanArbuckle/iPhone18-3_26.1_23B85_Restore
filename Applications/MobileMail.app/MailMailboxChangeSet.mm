@interface MailMailboxChangeSet
- (BOOL)allowOtherChange:(id)change;
- (BOOL)commit;
- (BOOL)revert;
- (MailMailboxChangeSet)initWithOperation:(id)operation;
- (id)accounts;
- (id)description;
@end

@implementation MailMailboxChangeSet

- (MailMailboxChangeSet)initWithOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = MailMailboxChangeSet;
  v6 = [(MailMailboxChangeSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxOperation, operation);
    *(&v7->super + 16) |= 1u;
  }

  return v7;
}

- (BOOL)commit
{
  if (![(MCSChange *)self isFinalized])
  {
    sub_100488B10();
  }

  commit = [(MCSMailboxOperation *)self->_mailboxOperation commit];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 1024;
    v9 = commit;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#ChangeSetActions Committed %@ with result %d", &v6, 0x12u);
  }

  if (!commit)
  {
    [(MailMailboxChangeSet *)self revert];
  }

  return commit;
}

- (BOOL)revert
{
  if (![(MCSChange *)self isFinalized])
  {
    sub_100488B3C();
  }

  mailboxOperation = self->_mailboxOperation;

  return [(MCSMailboxOperation *)mailboxOperation revert];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MailMailboxChangeSet;
  v3 = [(MailMailboxChangeSet *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ %@", v3, self->_mailboxOperation];

  return v4;
}

- (id)accounts
{
  v3 = +[NSMutableSet set];
  accountForErrorHandling = [(MCSMailboxOperation *)self->_mailboxOperation accountForErrorHandling];
  if (accountForErrorHandling)
  {
    [v3 addObject:accountForErrorHandling];
  }

  return v3;
}

- (BOOL)allowOtherChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if ((changeCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MCSMailboxOperation *)self->_mailboxOperation allowOtherMailboxOperation:changeCopy[3]];
  }

  return v5;
}

@end