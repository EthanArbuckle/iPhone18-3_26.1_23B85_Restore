@interface NotesDataclassOwner
+ (id)dataclasses;
- (BOOL)_drainLocalStore;
- (BOOL)_removeNoteAccountForACAccount:(id)account withChildren:(id)children;
- (BOOL)accountHasLocalUnsyncedData:(id)data;
- (BOOL)htmlAccountHasLocalUnsyncedData:(id)data;
- (BOOL)modernAccountHasLocalUnsyncedData:(id)data;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (NotesDataclassOwner)init;
- (id)_accountStore;
- (id)_noteContext;
- (id)_syncingAccountForParentAccount:(id)account withChildren:(id)children;
- (id)actionsForDisablingDataclassOnAccount:(id)account forDataclass:(id)dataclass;
- (id)actionsForEnablingDataclassOnAccount:(id)account forDataclass:(id)dataclass;
- (void)setUpSharedContextIfNecessary;
@end

@implementation NotesDataclassOwner

+ (id)dataclasses
{
  v4 = ACAccountDataclassNotes;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NotesDataclassOwner)init
{
  v7.receiver = self;
  v7.super_class = NotesDataclassOwner;
  v2 = [(NotesDataclassOwner *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dco.notes", v3);
    noteContextQueue = v2->_noteContextQueue;
    v2->_noteContextQueue = v4;
  }

  return v2;
}

- (void)setUpSharedContextIfNecessary
{
  if (qword_C680 != -1)
  {
    sub_25D8();
  }
}

- (id)actionsForEnablingDataclassOnAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  v6 = ACAccountDataclassNotes;
  if ([dataclass isEqualToString:ACAccountDataclassNotes] && objc_msgSend(accountCopy, "isProvisionedForDataclass:", v6))
  {
    v7 = [ACDataclassAction actionWithType:1];
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)actionsForDisablingDataclassOnAccount:(id)account forDataclass:(id)dataclass
{
  accountCopy = account;
  if ([accountCopy isProvisionedForDataclass:ACAccountDataclassNotes])
  {
    [(NotesDataclassOwner *)self setUpSharedContextIfNecessary];
    if ([(NotesDataclassOwner *)self accountHasLocalUnsyncedData:accountCopy])
    {
      v6 = 8;
    }

    else
    {
      v6 = 3;
    }

    v7 = [ACDataclassAction destructiveActionWithType:v6];
    v11[0] = v7;
    v8 = [ACDataclassAction actionWithType:0];
    v11[1] = v8;
    v9 = [NSArray arrayWithObjects:v11 count:2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)accountHasLocalUnsyncedData:(id)data
{
  v45 = 0;
  v46[0] = &v45;
  v46[1] = 0x2020000000;
  v47 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_14C4;
  v43 = sub_14D4;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_14C4;
  v37 = sub_14D4;
  v38 = 0;
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_25EC();
  }

  parentAccount = [dataCopy parentAccount];

  parentAccount2 = dataCopy;
  if (parentAccount)
  {
    parentAccount2 = [dataCopy parentAccount];
  }

  v8 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v8 workerManagedObjectContext];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_14DC;
  v29[3] = &unk_8210;
  v32 = &v39;
  v10 = parentAccount2;
  v30 = v10;
  v11 = workerManagedObjectContext;
  v31 = v11;
  [v11 performBlockAndWait:v29];
  v12 = v40[5];
  if (v12 && [v12 didChooseToMigrate])
  {
    v13 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      ic_loggingDescription = [v40[5] ic_loggingDescription];
      sub_2658(ic_loggingDescription, buf, v13);
    }

    v15 = [(NotesDataclassOwner *)self modernAccountHasLocalUnsyncedData:v40[5]];
    *(v46[0] + 24) = v15;
  }

  else
  {
    noteContextQueue = self->_noteContextQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1558;
    block[3] = &unk_8238;
    block[4] = self;
    v17 = dataCopy;
    v26 = v17;
    v27 = &v33;
    v28 = &v45;
    dispatch_sync(noteContextQueue, block);
    if (!v40[5] && !v34[5])
    {
      v18 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v17 description];
        v23 = v22;
        uTF8String = [v22 UTF8String];
        *buf = 136315138;
        v49 = uTF8String;
        _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "unable to find a modern or HTML account for %s", buf, 0xCu);
      }
    }
  }

  v19 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_26A8(v46, v19);
  }

  v20 = *(v46[0] + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v20 & 1;
}

- (BOOL)modernAccountHasLocalUnsyncedData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  managedObjectContext = [dataCopy managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_179C;
  v7[3] = &unk_8288;
  v5 = dataCopy;
  v8 = v5;
  v9 = &v10;
  [managedObjectContext performBlockAndWait:v7];

  LOBYTE(managedObjectContext) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return managedObjectContext;
}

- (BOOL)htmlAccountHasLocalUnsyncedData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  managedObjectContext = [dataCopy managedObjectContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A14;
  v7[3] = &unk_82F0;
  v9 = &v10;
  v5 = dataCopy;
  v8 = v5;
  [managedObjectContext performBlockAndWait:v7];

  LOBYTE(managedObjectContext) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return managedObjectContext;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  actionCopy = action;
  accountCopy = account;
  childrenCopy = children;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:ACAccountTypeIdentifierExchange])
  {
  }

  else
  {
    identifier2 = [accountType identifier];
    v15 = [identifier2 isEqualToString:ACAccountTypeIdentifierHotmail];

    if (!v15)
    {
      supportedDataclasses = [accountType supportedDataclasses];
      v19 = [supportedDataclasses containsObject:ACAccountDataclassNotes];

      if (v19)
      {
        if ([actionCopy type] == &dword_0 + 1)
        {
          goto LABEL_13;
        }

        if ([actionCopy type] == &dword_0 + 3)
        {
LABEL_15:
          v20 = [(NotesDataclassOwner *)self _removeNoteAccountForACAccount:accountCopy withChildren:childrenCopy];
          goto LABEL_16;
        }
      }

LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_18;
    }
  }

  if ([actionCopy type] != &dword_4 + 2)
  {
    if ([actionCopy type] != &dword_0 + 1 && objc_msgSend(actionCopy, "type") != &dword_4)
    {
      if ([actionCopy type] != &dword_0 + 3 && objc_msgSend(actionCopy, "type") != &dword_8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    v20 = [(NotesDataclassOwner *)self _createNoteAccountForACAccount:accountCopy withChildren:childrenCopy];
LABEL_16:
    LOBYTE(v17) = v20;
    goto LABEL_18;
  }

  _drainLocalStore = [(NotesDataclassOwner *)self _drainLocalStore];
  v17 = _drainLocalStore & [(NotesDataclassOwner *)self _createNoteAccountForACAccount:accountCopy withChildren:childrenCopy];
LABEL_18:

  return v17;
}

- (BOOL)_removeNoteAccountForACAccount:(id)account withChildren:(id)children
{
  accountCopy = account;
  childrenCopy = children;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(NotesDataclassOwner *)self _syncingAccountForParentAccount:accountCopy withChildren:childrenCopy];
  v9 = v8;
  if (v8)
  {
    noteContextQueue = self->_noteContextQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1E3C;
    block[3] = &unk_8318;
    block[4] = self;
    v16 = v8;
    v17 = &v18;
    dispatch_sync(noteContextQueue, block);
    v11 = *(v19 + 24);
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      username = [accountCopy username];
      sub_27C0(username, buf, v12);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v11 & 1;
}

- (BOOL)_drainLocalStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  noteContextQueue = self->_noteContextQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_20A8;
  v5[3] = &unk_8288;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(noteContextQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_syncingAccountForParentAccount:(id)account withChildren:(id)children
{
  accountCopy = account;
  childrenCopy = children;
  accountType = [accountCopy accountType];
  syncableDataclasses = [accountType syncableDataclasses];
  v9 = ACAccountDataclassNotes;
  v10 = [syncableDataclasses containsObject:ACAccountDataclassNotes];

  if (v10)
  {
    v11 = accountCopy;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = childrenCopy;
    v12 = childrenCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          accountType2 = [v17 accountType];
          syncableDataclasses2 = [accountType2 syncableDataclasses];
          v20 = [syncableDataclasses2 containsObject:v9];

          if (v20)
          {
            v11 = v17;

            goto LABEL_15;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v21 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_2974(accountCopy, v21);
    }

    v11 = 0;
LABEL_15:
    childrenCopy = v23;
  }

  return v11;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = +[ACAccountStore defaultStore];
    v5 = self->_accountStore;
    self->_accountStore = v4;

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (id)_noteContext
{
  noteContext = self->_noteContext;
  if (noteContext)
  {
    [(NoteContext *)noteContext invalidate];
  }

  else
  {
    initWithPrivateQueue = [[NoteContext alloc] initWithPrivateQueue];
    v5 = self->_noteContext;
    self->_noteContext = initWithPrivateQueue;

    [(NoteContext *)self->_noteContext enableChangeLogging:0];
  }

  v6 = self->_noteContext;

  return v6;
}

@end