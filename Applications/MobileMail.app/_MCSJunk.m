@interface _MCSJunk
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
- (BOOL)willFlag;
- (BOOL)willMarkRead;
- (BOOL)willMarkUnread;
- (BOOL)willUnflag;
- (_MCSJunk)initWithSpecialDestination:(int64_t)a3 markAsRead:(BOOL)a4 flagsToSet:(id)a5 flagsToClear:(id)a6;
- (id)applyPendingChangeToObjects:(id)a3;
@end

@implementation _MCSJunk

- (_MCSJunk)initWithSpecialDestination:(int64_t)a3 markAsRead:(BOOL)a4 flagsToSet:(id)a5 flagsToClear:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = _MCSJunk;
  v12 = [(_MCSJunk *)&v22 init];
  if (v12)
  {
    v13 = objc_alloc_init(NSMutableArray);
    v14 = [MCSFlagChange alloc];
    v15 = [NSSet setWithArray:v10];
    v16 = [NSSet setWithArray:v11];
    v17 = [(MCSFlagChange *)v14 initWithFlagsToSet:v15 flagsToClear:v16 reason:4];

    [(NSArray *)v13 addObject:v17];
    if (a3 != -500)
    {
      v18 = [[MCSTransfer alloc] initWithSpecialDestination:a3 markAsRead:v7 deleteIfSame:0];
      [(MCSTransfer *)v18 setIsDeletion:0];
      [(NSArray *)v13 addObject:v18];
    }

    operations = v12->_operations;
    v12->_operations = v13;

    v20 = v12;
  }

  return v12;
}

- (id)applyPendingChangeToObjects:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_operations;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) applyPendingChangeToObjects:{v4, v12}];
        [v5 addEntriesFromDictionary:v10];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MFActivityMonitor currentMonitor];
  [v11 addReason:MonitoredActivityReasonJunking];

  v12 = [(_MCSJunk *)self mf_andOperations:self->_operations];
  LOBYTE(v11) = [v12 commitToMessages:v8 failures:v9 newMessages:v10];

  return v11;
}

- (BOOL)willMarkRead
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  v3 = [v2 willMarkRead];

  return v3;
}

- (BOOL)willMarkUnread
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  v3 = [v2 willMarkUnread];

  return v3;
}

- (BOOL)willFlag
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  v3 = [v2 willFlag];

  return v3;
}

- (BOOL)willUnflag
{
  v2 = [(_MCSJunk *)self mf_orOperations:self->_operations];
  v3 = [v2 willUnflag];

  return v3;
}

@end