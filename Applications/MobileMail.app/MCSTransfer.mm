@interface MCSTransfer
- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages;
- (MCSTransfer)initWithDestination:(id)destination markAsRead:(BOOL)read;
- (MCSTransfer)initWithSpecialDestination:(int64_t)destination markAsRead:(BOOL)read deleteIfSame:(BOOL)same;
- (id)_storeToMessagesMappingWithMessages:(id)messages;
- (id)applyPendingChangeToObjects:(id)objects;
- (id)description;
- (id)localizedErrorDescriptionForMessageCount:(unint64_t)count;
- (id)localizedErrorTitleForMessageCount:(unint64_t)count;
- (id)localizedShortOperationDescription;
- (void)_notifyStoresOfTransferedMessages:(id)messages failedMessages:(id)failedMessages;
- (void)setIsDeletion:(BOOL)deletion;
@end

@implementation MCSTransfer

- (MCSTransfer)initWithDestination:(id)destination markAsRead:(BOOL)read
{
  readCopy = read;
  destinationCopy = destination;
  v17.receiver = self;
  v17.super_class = MCSTransfer;
  v8 = [(MCSTransfer *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destination, destination);
    v10 = objc_alloc_init(NSDictionary);
    originalLocations = v9->_originalLocations;
    v9->_originalLocations = v10;

    *(v9 + 40) = *(v9 + 40) & 0xFE | readCopy;
    if (readCopy)
    {
      v12 = [NSMutableSet alloc];
      v13 = [v12 initWithObjects:{MessageIsRead, 0}];
      v14 = [[MCSFlagChange alloc] initWithFlagsToSet:v13 flagsToClear:0 reason:4];
      equivalentFlagChange = v9->_equivalentFlagChange;
      v9->_equivalentFlagChange = v14;
    }

    *(&v9->super.super + 8) |= 1u;
  }

  return v9;
}

- (MCSTransfer)initWithSpecialDestination:(int64_t)destination markAsRead:(BOOL)read deleteIfSame:(BOOL)same
{
  sameCopy = same;
  result = [(MCSTransfer *)self initWithDestination:0 markAsRead:read];
  if (result)
  {
    result->_specialType = destination;
    if (sameCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(result + 40) = *(result + 40) & 0xFD | v8;
  }

  return result;
}

- (id)applyPendingChangeToObjects:(id)objects
{
  objectsCopy = objects;
  if (![(MCSOperation *)self isFinalized])
  {
    __assert_rtn("[MCSTransfer applyPendingChangeToObjects:]", "MCSTransfer.m", 78, "[self isFinalized]");
  }

  v5 = [(MCSFlagChange *)self->_equivalentFlagChange applyPendingChangeToObjects:objectsCopy];

  return v5;
}

- (BOOL)commitToMessages:(id)messages failures:(id)failures newMessages:(id)newMessages
{
  messagesCopy = messages;
  failuresCopy = failures;
  newMessagesCopy = newMessages;
  v7 = +[MFActivityMonitor currentMonitor];
  [v7 addReason:MonitoredActivityReasonMoving];

  v8 = +[MFMailMessageLibrary defaultInstance];
  messageChangeManager = [v8 messageChangeManager];

  v9 = [(MCSTransfer *)self _storeToMessagesMappingWithMessages:messagesCopy];
  [(MCSTransfer *)self setOriginalLocations:v9];

  v42 = objc_alloc_init(NSMutableArray);
  if (self->_destination)
  {
    allObjects = [messagesCopy allObjects];
    v11 = [(MFMailboxUid *)self->_destination URL];
    v12 = [messageChangeManager moveMessages:allObjects destinationMailboxURL:v11 userInitiated:1];

    [newMessagesCopy addObjectsFromArray:v12];
  }

  else
  {
    v50 = objc_alloc_init(NSMutableDictionary);
    v46 = objc_alloc_init(NSMutableSet);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    allKeys = [(NSDictionary *)self->_originalLocations allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v14)
    {
      v47 = *v57;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v57 != v47)
          {
            objc_enumerationMutation(allKeys);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          mailbox = [v16 mailbox];
          representedAccount = [mailbox representedAccount];
          v19 = representedAccount;
          if (representedAccount)
          {
            v20 = [representedAccount mailboxUidOfType:self->_specialType createIfNeeded:0];
            if ([v20 isEqual:mailbox])
            {
              uniqueID = [(NSDictionary *)self->_originalLocations objectForKey:v16];
              [v46 unionSet:uniqueID];
            }

            else
            {
              uniqueID = [v19 uniqueID];
              v22 = [v50 objectForKey:uniqueID];
              v23 = v22;
              if (!v22)
              {
                v23 = objc_alloc_init(NSMutableSet);
              }

              v24 = [(NSDictionary *)self->_originalLocations objectForKey:v16];
              [v23 unionSet:v24];

              if (!v22)
              {
                [v50 setObject:v23 forKey:uniqueID];
              }
            }
          }
        }

        v14 = [allKeys countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v14);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    allKeys2 = [v50 allKeys];
    v26 = [allKeys2 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v26)
    {
      v27 = *v53;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(allKeys2);
          }

          v29 = *(*(&v52 + 1) + 8 * j);
          v30 = [MailAccount accountWithUniqueId:v29, v42];
          v31 = [v30 mailboxUidOfType:self->_specialType createIfNeeded:1];
          v32 = [v50 objectForKey:v29];
          allObjects2 = [v32 allObjects];

          v34 = [v31 URL];
          v35 = [messageChangeManager moveMessages:allObjects2 destinationMailboxURL:v34 userInitiated:1];

          [newMessagesCopy addObjectsFromArray:v35];
        }

        v26 = [allKeys2 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v26);
    }

    if ((*(self + 40) & 2) != 0 && [v46 count])
    {
      allObjects3 = [v46 allObjects];
      [messageChangeManager deleteMessages:allObjects3];
    }
  }

  if (*(self + 40))
  {
    v37 = [[ECMessageFlagChange alloc] initWithBuilder:&stru_1006514F8];
    allObjects4 = [newMessagesCopy allObjects];
    v39 = [messageChangeManager applyFlagChange:v37 toMessages:allObjects4];
  }

  [failuresCopy addObjectsFromArray:{v42, v42}];
  [(MCSTransfer *)self _notifyStoresOfTransferedMessages:newMessagesCopy failedMessages:failuresCopy];
  v40 = [messagesCopy count];
  LOBYTE(v40) = v40 > [failuresCopy count];

  return v40;
}

- (id)description
{
  if (*(self + 40))
  {
    v2 = @"mark read";
  }

  else
  {
    v2 = @"don't mark read";
  }

  return [NSString stringWithFormat:@"%p Transfer to %@ (%@)", self, self->_destination, v2];
}

- (id)localizedErrorDescriptionForMessageCount:(unint64_t)count
{
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (count == 1)
  {
    [v5 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v5 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT_MANY" value:&stru_100662A88 table:@"Main"];
  }
  v7 = ;

  if (self->_destination)
  {
    v8 = +[MailChangeManager sharedChangeManager];
    v9 = [v8 displayNameUsingSpecialNamesForMailbox:self->_destination];
  }

  else
  {
    v9 = [MFMailboxUid specialNameForType:self->_specialType];
  }

  v10 = [NSString stringWithFormat:v7, v9];

  return v10;
}

- (id)localizedErrorTitleForMessageCount:(unint64_t)count
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (count == 1)
  {
    [v4 localizedStringForKey:@"ERROR_TRANSFERRING_TITLE" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v4 localizedStringForKey:@"ERROR_TRANSFERRING_TITLE_MULTIPLE" value:&stru_100662A88 table:@"Main"];
  }
  v6 = ;

  return v6;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_TRANSFER_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (void)setIsDeletion:(BOOL)deletion
{
  if (deletion)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 40) = *(self + 40) & 0xFB | v3;
}

- (void)_notifyStoresOfTransferedMessages:(id)messages failedMessages:(id)failedMessages
{
  messagesCopy = messages;
  failedMessagesCopy = failedMessages;
  originalLocations = self->_originalLocations;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014367C;
  v11[3] = &unk_100651548;
  v12 = failedMessagesCopy;
  v13 = messagesCopy;
  v9 = messagesCopy;
  v10 = failedMessagesCopy;
  [(NSDictionary *)originalLocations enumerateKeysAndObjectsUsingBlock:v11];
}

- (id)_storeToMessagesMappingWithMessages:(id)messages
{
  messagesCopy = messages;
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        messageStore = [v9 messageStore];
        if (messageStore)
        {
          v11 = [v4 objectForKeyedSubscript:messageStore];
          if (!v11)
          {
            v11 = objc_alloc_init(NSMutableSet);
            [v4 setObject:v11 forKeyedSubscript:messageStore];
          }

          [v11 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

@end