@interface NotesRefreshController
+ (NotesRefreshController)sharedInstance;
- (BOOL)notesNeedRefresh;
- (BOOL)notesNeedRefreshForCollectionWithID:(id)d;
- (BOOL)storesListNeedsRefresh;
- (id)_accountStore;
- (void)refreshAllNotesIfNeeded;
- (void)refreshNotesForCollectionWithID:(id)d;
- (void)refreshOrphanedAccounts;
- (void)refreshStoresList;
@end

@implementation NotesRefreshController

+ (NotesRefreshController)sharedInstance
{
  v3 = qword_1006CB460;
  if (!qword_1006CB460)
  {
    v4 = objc_alloc_init(self);
    v5 = qword_1006CB460;
    qword_1006CB460 = v4;

    v3 = qword_1006CB460;
  }

  return v3;
}

- (id)_accountStore
{
  v2 = +[AccountUtilities sharedAccountUtilities];
  accountStore = [v2 accountStore];

  return accountStore;
}

- (BOOL)storesListNeedsRefresh
{
  lastStoresListRefreshDate = self->_lastStoresListRefreshDate;
  if (!lastStoresListRefreshDate)
  {
    return 1;
  }

  [(NSDate *)lastStoresListRefreshDate timeIntervalSinceNow];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  return v3 >= 10.0;
}

- (void)refreshOrphanedAccounts
{
  v3 = [NSMutableSet alloc];
  v4 = +[AccountUtilities sharedAccountUtilities];
  accountIDsEnabledForNotes = [v4 accountIDsEnabledForNotes];
  v6 = [v3 initWithArray:accountIDsEnabledForNotes];

  v7 = +[NotesApp sharedNotesApp];
  noteContext = [v7 noteContext];
  allAccounts = [noteContext allAccounts];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = allAccounts;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = *v28;
    v13 = kLocalAccountIdentifier;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v10);
        }

        accountIdentifier = [*(*(&v27 + 1) + 8 * v14) accountIdentifier];
        if (([accountIdentifier isEqualToString:v13] & 1) == 0)
        {
          [v6 removeObject:accountIdentifier];
        }

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v19 = *v24;
    sub_1004E9F14(v18);
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        sharedConnection = [*(v2 + 4048) sharedConnection];
        [sharedConnection updateFolderListForAccountID:v21 andDataclasses:32];

        v20 = v20 + 1;
      }

      while (v17 != v20);
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

- (void)refreshStoresList
{
  v4 = +[NotesApp sharedNotesApp];
  noteContext = [v4 noteContext];
  allAccounts = [noteContext allAccounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = allAccounts;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v10 = *v18;
    v11 = kLocalAccountIdentifier;
    sub_1004E9F38(v9);
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        accountIdentifier = [*(*(&v17 + 1) + 8 * v12) accountIdentifier];
        if (([accountIdentifier isEqualToString:v11] & 1) == 0)
        {
          sharedConnection = [*(v2 + 4048) sharedConnection];
          [sharedConnection updateFolderListForAccountID:accountIdentifier andDataclasses:32];
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = +[NSDate date];
  lastStoresListRefreshDate = self->_lastStoresListRefreshDate;
  self->_lastStoresListRefreshDate = v15;
}

- (BOOL)notesNeedRefresh
{
  v3 = +[NotesApp sharedNotesApp];
  noteContext = [v3 noteContext];
  allAccounts = [noteContext allAccounts];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allAccounts;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objectID = [*(*(&v15 + 1) + 8 * i) objectID];
        v12 = [(NotesRefreshController *)self notesNeedRefreshForCollectionWithID:objectID];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)notesNeedRefreshForCollectionWithID:(id)d
{
  dCopy = d;
  v5 = +[NotesApp sharedNotesApp];
  noteContext = [v5 noteContext];
  v7 = [noteContext collectionForObjectID:dCopy];

  if (v7)
  {
    basicAccountIdentifier = [v7 basicAccountIdentifier];
    if ([basicAccountIdentifier isEqualToString:kLocalAccountIdentifier])
    {
      v9 = 0;
LABEL_26:

      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(NSMutableDictionary *)self->_lastNotesRefreshDates objectForKey:dCopy];
      if (v10)
      {
LABEL_7:
        [v10 timeIntervalSinceNow];
        if (v11 < 0.0)
        {
          v11 = -v11;
        }

        v9 = v11 >= 10.0;
        goto LABEL_25;
      }
    }

    else
    {
      v23 = basicAccountIdentifier;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = v7;
      stores = [v22 stores];
      v13 = [stores countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v10 = 0;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(stores);
            }

            lastNotesRefreshDates = self->_lastNotesRefreshDates;
            objectID = [*(*(&v24 + 1) + 8 * i) objectID];
            v19 = [(NSMutableDictionary *)lastNotesRefreshDates objectForKey:objectID];

            if (v19)
            {
              if (!v10)
              {
                v10 = v19;
              }

              v20 = [v10 earlierDate:v19];

              v10 = v20;
            }
          }

          v14 = [stores countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v14);
      }

      else
      {
        v10 = 0;
      }

      basicAccountIdentifier = v23;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    v9 = 1;
LABEL_25:

    goto LABEL_26;
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (void)refreshAllNotesIfNeeded
{
  v3 = +[NotesApp sharedNotesApp];
  noteContext = [v3 noteContext];
  allAccounts = [noteContext allAccounts];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allAccounts;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objectID = [*(*(&v12 + 1) + 8 * v10) objectID];
        if ([(NotesRefreshController *)self notesNeedRefreshForCollectionWithID:objectID])
        {
          [(NotesRefreshController *)self refreshNotesForCollectionWithID:objectID];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)refreshNotesForCollectionWithID:(id)d
{
  dCopy = d;
  v4 = +[NotesApp sharedNotesApp];
  noteContext = [v4 noteContext];
  v6 = [noteContext collectionForObjectID:dCopy];

  basicAccountIdentifier = [v6 basicAccountIdentifier];
  if (([basicAccountIdentifier isEqualToString:kLocalAccountIdentifier] & 1) == 0)
  {
    if (!self->_lastNotesRefreshDates)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      lastNotesRefreshDates = self->_lastNotesRefreshDates;
      self->_lastNotesRefreshDates = v8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      v12 = sub_1004E9EF0(v11);
      sharedConnection = [*(v13 + 4048) sharedConnection];
      v15 = [sharedConnection updateContentsOfAllFoldersForAccountID:basicAccountIdentifier andDataclass:32];

      if (v15)
      {
        v16 = +[NSDate date];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        stores = [v10 stores];
        v18 = [stores countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v18)
        {
          v19 = *v35;
          do
          {
            v20 = 0;
            do
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(stores);
              }

              v21 = self->_lastNotesRefreshDates;
              objectID = [*(*(&v34 + 1) + 8 * v20) objectID];
              [(NSMutableDictionary *)v21 setObject:v16 forKey:objectID];

              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [stores countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v18);
        }
      }

LABEL_17:

      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v6;
      v25 = sub_1004E9EF0(v24);
      sharedConnection2 = [*(v26 + 4048) sharedConnection];
      externalIdentifier = [v23 externalIdentifier];
      v38 = externalIdentifier;
      v29 = [NSArray arrayWithObjects:&v38 count:1];
      v30 = [sharedConnection2 updateContentsOfFoldersWithKeys:v29 forAccountID:basicAccountIdentifier andDataclass:32];

      if (v30)
      {
        v31 = self->_lastNotesRefreshDates;
        v32 = +[NSDate date];
        [(NSMutableDictionary *)v31 setObject:v32 forKey:dCopy];
      }

      goto LABEL_17;
    }
  }

LABEL_18:
}

@end