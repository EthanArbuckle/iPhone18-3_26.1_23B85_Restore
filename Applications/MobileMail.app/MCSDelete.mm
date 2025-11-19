@interface MCSDelete
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
- (MCSDelete)initWithDeleteInPlace:(BOOL)a3;
- (MCSDelete)initWithStore:(id)a3;
- (id)applyPendingChangeToObjects:(id)a3;
- (id)localizedShortOperationDescription;
@end

@implementation MCSDelete

- (MCSDelete)initWithStore:(id)a3
{
  v4 = a3;
  v5 = -[MCSDelete initWithDeleteInPlace:](self, "initWithDeleteInPlace:", [v4 shouldDeleteInPlace]);

  return v5;
}

- (MCSDelete)initWithDeleteInPlace:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = MCSDelete;
  v4 = [(MCSDelete *)&v10 init];
  if (v4)
  {
    if (a3)
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

- (id)applyPendingChangeToObjects:(id)a3
{
  v3 = [(MCSOperation *)self->_operation applyPendingChangeToObjects:a3];

  return v3;
}

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonDeleting];

  LOBYTE(self) = [(MCSMessageOperation *)self->_operation commitToMessages:v8 failures:v9 newMessages:v10];
  return self;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_DELETE_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end