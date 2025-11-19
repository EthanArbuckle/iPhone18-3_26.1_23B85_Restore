@interface MCSFlagChange
- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5;
- (BOOL)willMarkUnread;
- (BOOL)willUnflag;
- (MCSFlagChange)initWithFlagsToSet:(id)a3 flagsToClear:(id)a4 reason:(int64_t)a5;
- (id)_applyFlagChange:(id)a3 toObjects:(id)a4;
- (id)applyPendingChangeToObjects:(id)a3;
- (id)localizedShortOperationDescription;
- (void)_sortMessages:(id)a3 intoLibraryMesages:(id)a4 nonLibraryMessages:(id)a5;
@end

@implementation MCSFlagChange

- (MCSFlagChange)initWithFlagsToSet:(id)a3 flagsToClear:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 intersectsSet:v9];
  if (v10)
  {
    sub_100140318(v10, v11, v12, v13, v14, v15, v16, v17, v8);
    if ([v8 intersectsSet:v9])
    {
      __assert_rtn("[MCSFlagChange initWithFlagsToSet:flagsToClear:reason:]", "MCSFlagChange.m", 43, "[flagsToSet intersectsSet:flagsToClear] == __objc_no");
    }
  }

  v39.receiver = self;
  v39.super_class = MCSFlagChange;
  v18 = [(MCSFlagChange *)&v39 init];
  if (v18)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    flagChanges = v18->_flagChanges;
    v18->_flagChanges = v19;

    v21 = [NSNumber numberWithInteger:a5];
    [(NSMutableDictionary *)v18->_flagChanges setObject:v21 forKeyedSubscript:MFMessageChangeReason];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v23)
    {
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [(NSMutableDictionary *)v18->_flagChanges setObject:@"YES" forKey:*(*(&v35 + 1) + 8 * v25)];
          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v23);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v9;
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v27)
    {
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v26);
          }

          [(NSMutableDictionary *)v18->_flagChanges setObject:@"NO" forKey:*(*(&v31 + 1) + 8 * v29)];
          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v27);
    }

    *(&v18->super.super + 8) |= 1u;
  }

  return v18;
}

- (id)_applyFlagChange:(id)a3 toObjects:(id)a4
{
  v22 = a3;
  v6 = a4;
  if (![(MCSOperation *)self isFinalized])
  {
    __assert_rtn("[MCSFlagChange _applyFlagChange:toObjects:]", "MCSFlagChange.m", 66, "[self isFinalized]");
  }

  v7 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v8 = [v22 objectForKey:MFMessageIsFlagged];
  v9 = [v22 objectForKey:MessageIsRead];
  v21 = [v22 objectForKey:MessageIsDeleted];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if (v9)
        {
          if ([v9 BOOLValue])
          {
            v14 = @"MCSChangeSetReadMessages";
          }

          else
          {
            v14 = @"MCSChangeSetUnreadMessages";
          }

          [v7 addObject:v13 toSetForKey:v14];
        }

        if (v8)
        {
          if ([v8 BOOLValue])
          {
            v15 = @"MCSChangeSetFlaggedMessages";
          }

          else
          {
            v15 = @"MCSChangeSetUnflaggedMessages";
          }

          [v7 addObject:v13 toSetForKey:v15];
        }

        if (v21)
        {
          [v7 addObject:v13 toSetForKey:@"MCSChangeSetDeletedMessages"];
        }

        v16 = [v13 messageFlags];
        v17 = MFMessageFlagsByApplyingDictionary();
        if (v17 != v16)
        {
          [v13 setMessageFlagsWithoutCommitting:v17];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v10);
  }

  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "#ChangeSetActions flags applied to messages: %@", buf, 0xCu);
  }

  return v7;
}

- (id)applyPendingChangeToObjects:(id)a3
{
  v3 = [(MCSFlagChange *)self _applyFlagChange:self->_flagChanges toObjects:a3];

  return v3;
}

- (void)_sortMessages:(id)a3 intoLibraryMesages:(id)a4 nonLibraryMessages:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 isLibraryMessage])
        {
          v15 = v8;
        }

        else
        {
          v15 = v9;
        }

        [v15 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (BOOL)commitToMessages:(id)a3 failures:(id)a4 newMessages:(id)a5
{
  v22 = a3;
  v20 = a4;
  v21 = a5;
  if (![(MCSOperation *)self isFinalized])
  {
    __assert_rtn("[MCSFlagChange commitToMessages:failures:newMessages:]", "MCSFlagChange.m", 125, "[self isFinalized]");
  }

  v23 = objc_alloc_init(NSMutableSet);
  v8 = objc_alloc_init(NSMutableSet);
  [(MCSFlagChange *)self _sortMessages:v22 intoLibraryMesages:v23 nonLibraryMessages:v8];
  if ([v23 count])
  {
    v19 = [v22 allObjects];
    [v19 mf_dictionaryWithMessagesSortedByStore];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v9 = v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          flagChanges = self->_flagChanges;
          v15 = [v9 objectForKey:v13];
          v16 = [v13 setFlagsFromDictionary:flagChanges forMessages:v15];
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  if ([v8 count])
  {
    v17 = [(MCSFlagChange *)self applyPendingChangeToObjects:v8];
  }

  return 1;
}

- (BOOL)willMarkUnread
{
  v3 = MessageIsRead;
  v4 = [(NSMutableDictionary *)self->_flagChanges objectForKey:MessageIsRead];

  if (v4)
  {
    return [(NSMutableDictionary *)self->_flagChanges mf_BOOLForKey:v3]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)willUnflag
{
  v3 = MFMessageIsFlagged;
  v4 = [(NSMutableDictionary *)self->_flagChanges objectForKey:MFMessageIsFlagged];

  if (v4)
  {
    return [(NSMutableDictionary *)self->_flagChanges mf_BOOLForKey:v3]^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_FLAG_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end