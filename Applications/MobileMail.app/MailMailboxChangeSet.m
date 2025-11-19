@interface MailMailboxChangeSet
- (BOOL)allowOtherChange:(id)a3;
- (BOOL)commit;
- (BOOL)revert;
- (MailMailboxChangeSet)initWithOperation:(id)a3;
- (id)accounts;
- (id)description;
@end

@implementation MailMailboxChangeSet

- (MailMailboxChangeSet)initWithOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MailMailboxChangeSet;
  v6 = [(MailMailboxChangeSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxOperation, a3);
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

  v3 = [(MCSMailboxOperation *)self->_mailboxOperation commit];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#ChangeSetActions Committed %@ with result %d", &v6, 0x12u);
  }

  if (!v3)
  {
    [(MailMailboxChangeSet *)self revert];
  }

  return v3;
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
  v4 = [(MCSMailboxOperation *)self->_mailboxOperation accountForErrorHandling];
  if (v4)
  {
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)allowOtherChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((v4 == 0) | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MCSMailboxOperation *)self->_mailboxOperation allowOtherMailboxOperation:v4[3]];
  }

  return v5;
}

@end