@interface MCSArchive
- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages;
- (BOOL)willFlag;
- (BOOL)willMarkRead;
- (BOOL)willMarkUnread;
- (BOOL)willUnflag;
- (MCSArchive)initWithStore:(id)store;
- (id)applyPendingChangeToObjects:(id)objects;
- (id)localizedShortOperationDescription;
@end

@implementation MCSArchive

- (MCSArchive)initWithStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = MCSArchive;
  v5 = [(MCSArchive *)&v17 init];
  if (v5)
  {
    archiveDestination = [storeCopy archiveDestination];
    if (archiveDestination == -500)
    {
      v7 = [MCSFlagChange alloc];
      v8 = [NSSet setWithObjects:MessageIsRead, 0];
      v9 = [(MCSFlagChange *)v7 initWithFlagsToSet:v8 flagsToClear:0 reason:4];

      objc_storeStrong(&v5->_seenOrTransferOperation, v9);
      v10 = [MCSFlagChange alloc];
      v11 = [NSSet setWithObjects:MessageIsDeleted, 0];
      v12 = [(MCSFlagChange *)v10 initWithFlagsToSet:v11 flagsToClear:0 reason:4];

      [(MCSFlagChange *)v12 setIsDeletion:1];
      deleteOperation = v5->_deleteOperation;
      v5->_deleteOperation = &v12->super;

      v5->_isDeleteInPlace = 1;
    }

    else
    {
      v14 = [[MCSTransfer alloc] initWithSpecialDestination:archiveDestination markAsRead:1 deleteIfSame:1];
      [(MCSTransfer *)v14 setIsDeletion:0];
      seenOrTransferOperation = v5->_seenOrTransferOperation;
      v5->_seenOrTransferOperation = &v14->super;

      v5->_isDeleteInPlace = 0;
    }
  }

  return v5;
}

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v6 = [(MCSOperation *)self->_seenOrTransferOperation applyPendingChangeToObjects:objectsCopy];
  [v5 addEntriesFromDictionary:v6];

  v7 = [(MCSOperation *)self->_deleteOperation applyPendingChangeToObjects:objectsCopy];
  [v5 addEntriesFromDictionary:v7];

  return v5;
}

- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages
{
  messagesCopy = messages;
  failuresCopy = failures;
  newMessagesCopy = newMessages;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonArchiving];

  LOBYTE(v11) = [(MCSMessageOperation *)self->_seenOrTransferOperation commitToMessages:messagesCopy failures:failuresCopy newMessages:newMessagesCopy];
  LOBYTE(self) = v11 | [(MCSMessageOperation *)self->_deleteOperation commitToMessages:messagesCopy failures:failuresCopy newMessages:newMessagesCopy];

  return self & 1;
}

- (BOOL)willMarkRead
{
  willMarkRead = [(MCSMessageOperation *)self->_seenOrTransferOperation willMarkRead];
  if (self->_isDeleteInPlace)
  {
    willMarkRead |= [(MCSMessageOperation *)self->_deleteOperation willMarkRead];
  }

  return willMarkRead;
}

- (BOOL)willMarkUnread
{
  willMarkUnread = [(MCSMessageOperation *)self->_seenOrTransferOperation willMarkUnread];
  if (self->_isDeleteInPlace)
  {
    willMarkUnread |= [(MCSMessageOperation *)self->_deleteOperation willMarkUnread];
  }

  return willMarkUnread;
}

- (BOOL)willUnflag
{
  willUnflag = [(MCSMessageOperation *)self->_seenOrTransferOperation willUnflag];
  if (self->_isDeleteInPlace)
  {
    willUnflag |= [(MCSMessageOperation *)self->_deleteOperation willUnflag];
  }

  return willUnflag;
}

- (BOOL)willFlag
{
  willFlag = [(MCSMessageOperation *)self->_seenOrTransferOperation willFlag];
  if (self->_isDeleteInPlace)
  {
    willFlag |= [(MCSMessageOperation *)self->_deleteOperation willFlag];
  }

  return willFlag;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_ARCHIVE_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end