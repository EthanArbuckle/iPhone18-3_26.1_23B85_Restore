@interface MCSDelete
- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages;
- (MCSDelete)initWithDeleteInPlace:(BOOL)place;
- (MCSDelete)initWithStore:(id)store;
- (id)applyPendingChangeToObjects:(id)objects;
- (id)localizedShortOperationDescription;
@end

@implementation MCSDelete

- (MCSDelete)initWithStore:(id)store
{
  storeCopy = store;
  v5 = -[MCSDelete initWithDeleteInPlace:](self, "initWithDeleteInPlace:", [storeCopy shouldDeleteInPlace]);

  return v5;
}

- (MCSDelete)initWithDeleteInPlace:(BOOL)place
{
  v10.receiver = self;
  v10.super_class = MCSDelete;
  v4 = [(MCSDelete *)&v10 init];
  if (v4)
  {
    if (place)
    {
      v5 = [MCSFlagChange alloc];
      v6 = [NSSet setWithObjects:MessageIsDeleted, MessageIsRead, 0];
      v7 = [(MCSFlagChange *)v5 initWithFlagsToSet:v6 flagsToClear:0 reason:4];
    }

    else
    {
      v7 = [[MCSTransfer alloc] initWithSpecialDestination:3 markAsRead:1 deleteIfSame:1];
    }

    [(MCSTransfer *)v7 setIsDeletion:1];
    operation = v4->_operation;
    v4->_operation = &v7->super;
  }

  return v4;
}

- (id)applyPendingChangeToObjects:(id)objects
{
  v3 = [(MCSOperation *)self->_operation applyPendingChangeToObjects:objects];

  return v3;
}

- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages
{
  messagesCopy = messages;
  failuresCopy = failures;
  newMessagesCopy = newMessages;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonDeleting];

  LOBYTE(self) = [(MCSMessageOperation *)self->_operation commitToMessages:messagesCopy failures:failuresCopy newMessages:newMessagesCopy];
  return self;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_DELETE_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end