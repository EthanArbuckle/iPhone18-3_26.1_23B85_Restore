@interface MCSTransfer
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
- (MCSTransfer)initWithDestination:(id)a3 markAsRead:(BOOL)a4;
- (MCSTransfer)initWithSpecialDestination:(int64_t)a3 markAsRead:(BOOL)a4 deleteIfSame:(BOOL)a5;
- (id)_storeToMessagesMappingWithMessages:(id)a3;
- (id)applyPendingChangeToObjects:(id)a3;
- (id)description;
- (id)localizedErrorDescriptionForMessageCount:(unint64_t)a3;
- (id)localizedErrorTitleForMessageCount:(unint64_t)a3;
- (id)localizedShortOperationDescription;
- (void)_notifyStoresOfTransferedMessages:(id)a3 failedMessages:(id)a4;
- (void)setIsDeletion:(BOOL)a3;
@end

@implementation MCSTransfer

- (MCSTransfer)initWithDestination:(id)a3 markAsRead:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MCSTransfer;
  v8 = [(MCSTransfer *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destination, a3);
    v10 = objc_alloc_init(NSDictionary);
    originalLocations = v9->_originalLocations;
    v9->_originalLocations = v10;

    *(v9 + 40) = *(v9 + 40) & 0xFE | v4;
    if (v4)
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

- (MCSTransfer)initWithSpecialDestination:(int64_t)a3 markAsRead:(BOOL)a4 deleteIfSame:(BOOL)a5
{
  v5 = a5;
  result = [(MCSTransfer *)self initWithDestination:0 markAsRead:a4];
  if (result)
  {
    result->_specialType = a3;
    if (v5)
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

- (id)applyPendingChangeToObjects:(id)a3
{
  v4 = a3;
  if (![(MCSOperation *)self isFinalized])
  {
    __assert_rtn("[MCSTransfer applyPendingChangeToObjects:]", "MCSTransfer.m", 78, "[self isFinalized]");
  }

  v5 = [(MCSFlagChange *)self->_equivalentFlagChange applyPendingChangeToObjects:v4];

  return v5;
}

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v44 = a3;
  v45 = a4;
  v49 = a5;
  v7 = +[MFActivityMonitor currentMonitor];
  [v7 addReason:MonitoredActivityReasonMoving];

  v8 = +[MFMailMessageLibrary defaultInstance];
  v48 = [v8 messageChangeManager];

  v9 = [(MCSTransfer *)self _storeToMessagesMappingWithMessages:v44];
  [(MCSTransfer *)self setOriginalLocations:v9];

  v42 = objc_alloc_init(NSMutableArray);
  if (self->_destination)
  {
    v10 = [v44 allObjects];
    v11 = [(MFMailboxUid *)self->_destination URL];
    v12 = [v48 moveMessages:v10 destinationMailboxURL:v11 userInitiated:1];

    [v49 addObjectsFromArray:v12];
  }

  else
  {
    v50 = objc_alloc_init(NSMutableDictionary);
    v46 = objc_alloc_init(NSMutableSet);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v13 = [(NSDictionary *)self->_originalLocations allKeys];
    v14 = [v13 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v14)
    {
      v47 = *v57;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v57 != v47)
          {
            objc_enumerationMutation(v13);
          }

          v16 = *(*(&v56 + 1) + 8 * i);
          v17 = [v16 mailbox];
          v18 = [v17 representedAccount];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 mailboxUidOfType:self->_specialType createIfNeeded:0];
            if ([v20 isEqual:v17])
            {
              v21 = [(NSDictionary *)self->_originalLocations objectForKey:v16];
              [v46 unionSet:v21];
            }

            else
            {
              v21 = [v19 uniqueID];
              v22 = [v50 objectForKey:v21];
              v23 = v22;
              if (!v22)
              {
                v23 = objc_alloc_init(NSMutableSet);
              }

              v24 = [(NSDictionary *)self->_originalLocations objectForKey:v16];
              [v23 unionSet:v24];

              if (!v22)
              {
                [v50 setObject:v23 forKey:v21];
              }
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v14);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = [v50 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v26)
    {
      v27 = *v53;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v53 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v52 + 1) + 8 * j);
          v30 = [MailAccount accountWithUniqueId:v29, v42];
          v31 = [v30 mailboxUidOfType:self->_specialType createIfNeeded:1];
          v32 = [v50 objectForKey:v29];
          v33 = [v32 allObjects];

          v34 = [v31 URL];
          v35 = [v48 moveMessages:v33 destinationMailboxURL:v34 userInitiated:1];

          [v49 addObjectsFromArray:v35];
        }

        v26 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v26);
    }

    if ((*(self + 40) & 2) != 0 && [v46 count])
    {
      v36 = [v46 allObjects];
      [v48 deleteMessages:v36];
    }
  }

  if (*(self + 40))
  {
    v37 = [[ECMessageFlagChange alloc] initWithBuilder:&stru_1006514F8];
    v38 = [v49 allObjects];
    v39 = [v48 applyFlagChange:v37 toMessages:v38];
  }

  [v45 addObjectsFromArray:{v42, v42}];
  [(MCSTransfer *)self _notifyStoresOfTransferedMessages:v49 failedMessages:v45];
  v40 = [v44 count];
  LOBYTE(v40) = v40 > [v45 count];

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

- (id)localizedErrorDescriptionForMessageCount:(unint64_t)a3
{
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (a3 == 1)
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

- (id)localizedErrorTitleForMessageCount:(unint64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (a3 == 1)
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

- (void)setIsDeletion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 40) = *(self + 40) & 0xFB | v3;
}

- (void)_notifyStoresOfTransferedMessages:(id)a3 failedMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  originalLocations = self->_originalLocations;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014367C;
  v11[3] = &unk_100651548;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(NSDictionary *)originalLocations enumerateKeysAndObjectsUsingBlock:v11];
}

- (id)_storeToMessagesMappingWithMessages:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
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
        v10 = [v9 messageStore];
        if (v10)
        {
          v11 = [v4 objectForKeyedSubscript:v10];
          if (!v11)
          {
            v11 = objc_alloc_init(NSMutableSet);
            [v4 setObject:v11 forKeyedSubscript:v10];
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