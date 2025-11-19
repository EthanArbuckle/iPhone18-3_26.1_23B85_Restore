@interface MPAssistantSyncHandler
+ (id)_widthLimitedOperationQueue;
- (MPAssistantSyncHandler)init;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation MPAssistantSyncHandler

- (void)syncDidEnd
{
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "Sync Handler (end): sync ended", v4, 2u);
  }

  *&self->_resetSync = 256;
  dispatch_semaphore_signal(self->_resultProcessingSemaphore);
  dispatch_semaphore_signal(self->_changeEnumerationSemaphore);
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_abortSync)
  {
    v8 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_ERROR, "Sync Handler (get): sync already ended", buf, 2u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CEF368] sharedPreferences];
    v10 = [v9 isMediaEntitySyncDisabled];

    if (v10)
    {
      v12 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): media entity sync disabled - resetting anchor", buf, 2u);
      }

      [v7 setObject:0];
      [v7 setPostAnchor:@"0"];
    }

    else
    {
      *&v11 = 138543362;
      v27 = v11;
      while (1)
      {
        v13 = objc_autoreleasePoolPush();
        dispatch_semaphore_signal(self->_changeEnumerationSemaphore);
        dispatch_semaphore_wait(self->_resultProcessingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        if (self->_abortSync)
        {
          break;
        }

        nextChange = self->_nextChange;
        if (nextChange)
        {
          v15 = nextChange;
          v16 = [v15 entity];
          v17 = [v15 anchor];
          v18 = [v15 deletionType];
          if (self->_deleteNextChange)
          {
            self->_deleteNextChange = 0;
LABEL_27:
            v23 = 1;
            v19 = [v16 SAMPMediaEntityRepresentationUsingIdentifierType:1, v27];
LABEL_28:
            [v7 setPostAnchor:{v17, v27}];
            [v7 setIsDelete:v23];
            [v7 setObject:v19];
            v24 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v16 persistentID];
              *buf = 138543618;
              v29 = v17;
              v30 = 2048;
              v31 = v25;
              _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEBUG, "Sync Handler (get): revision %{public}@, pid %lld", buf, 0x16u);
            }

            goto LABEL_31;
          }

          if (v18)
          {
            goto LABEL_27;
          }

          if (sub_2335046B4(v16))
          {
            v19 = [v16 SAMPMediaEntityRepresentationUsingIdentifierType:1];
            v20 = [v19 title];
            v21 = [v20 length];

            if (v21)
            {
              v23 = 0;
              goto LABEL_28;
            }

            v22 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v27;
              v29 = v19;
              _os_log_impl(&dword_2334D9000, v22, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): no title %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v19 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v27;
              v29 = v16;
              _os_log_impl(&dword_2334D9000, v19, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): not for Assistant %{public}@", buf, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v13);
        if (!self->_nextChange)
        {
          goto LABEL_32;
        }
      }

      v15 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v15, OS_LOG_TYPE_ERROR, "Sync Handler (get): aborted", buf, 2u);
      }

LABEL_31:

      objc_autoreleasePoolPop(v13);
    }
  }

LABEL_32:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v38 = v9;
    v39 = 2114;
    v40 = v10;
    _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Sync Handler (begin): anchor: %{private}@, validity: %{public}@", buf, 0x16u);
  }

  if (self->_abortSync)
  {
    v13 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v13, OS_LOG_TYPE_ERROR, "Sync Handler (enumeration): sync already ended", buf, 2u);
    }

    goto LABEL_28;
  }

  v13 = [(MPMediaLibrary *)self->_library _syncValidity];
  v14 = [(MPMediaLibrary *)self->_library currentEntityRevision];
  v15 = [(MPMediaLibrary *)self->_library valueForDatabaseProperty:@"ForceSiriResetSync"];
  v16 = [v15 BOOLValue];

  if (([v13 isEqualToString:v10]& 1) != 0)
  {
    if (v14 >= [(__CFString *)v9 longLongValue])
    {
      if (!v16)
      {
        p_resetSync = &self->_resetSync;
        if (!self->_resetSync)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v17 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Sync Handler (validity): forced reset";
        v20 = v17;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      v17 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [(__CFString *)v9 longLongValue];
        *buf = 134218240;
        v38 = v14;
        v39 = 2048;
        v40 = v18;
        v19 = "Sync Handler (validity): (db revision = %lli, anchor = %lli)";
LABEL_12:
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        v22 = 22;
LABEL_13:
        _os_log_impl(&dword_2334D9000, v20, v21, v19, buf, v22);
      }
    }
  }

  else
  {
    v17 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v38 = v13;
      v39 = 2114;
      v40 = v10;
      v19 = "Sync Handler (validity): (libraryValidity:%{public}@ != siriValidity:%{public}@)";
      goto LABEL_12;
    }
  }

  [v11 resetWithValidity:v13];
  self->_resetSync = 1;
  p_resetSync = &self->_resetSync;
  v9 = @"0";
LABEL_15:
  [(MPMediaLibrary *)self->_library deleteDatabaseProperty:@"ForceSiriResetSync"];
LABEL_16:
  v24 = [MEMORY[0x277CEF368] sharedPreferences];
  v25 = [v24 isMediaEntitySyncDisabled];

  if (v25)
  {
    v26 = [(__CFString *)v9 intValue];
    v27 = _MPLogCategoryAssistant();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Sync Handler (validity): media entity sync disabled - resetting", buf, 2u);
      }

      *p_resetSync = 1;
      [v11 resetWithValidity:v13];

      v9 = @"0";
    }

    else
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Sync Handler (validity): media entity sync disabled - ignoring sync", buf, 2u);
      }

      self->_abortSync = 1;
    }
  }

  v29 = dispatch_semaphore_create(0);
  changeEnumerationSemaphore = self->_changeEnumerationSemaphore;
  self->_changeEnumerationSemaphore = v29;

  v31 = dispatch_semaphore_create(0);
  resultProcessingSemaphore = self->_resultProcessingSemaphore;
  self->_resultProcessingSemaphore = v31;

  v33 = [objc_opt_class() _widthLimitedOperationQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_233504D4C;
  v35[3] = &unk_2789DBCF0;
  v35[4] = self;
  v9 = v9;
  v36 = v9;
  [v33 addOperationWithBlock:v35];

LABEL_28:
  v34 = *MEMORY[0x277D85DE8];
}

- (MPAssistantSyncHandler)init
{
  v6.receiver = self;
  v6.super_class = MPAssistantSyncHandler;
  v2 = [(MPAssistantSyncHandler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    library = v2->_library;
    v2->_library = v3;

    [MEMORY[0x277CD5E38] setFilteringDisabled:1];
  }

  return v2;
}

+ (id)_widthLimitedOperationQueue
{
  if (qword_2814EE820 != -1)
  {
    dispatch_once(&qword_2814EE820, &unk_2848D4440);
  }

  v3 = qword_2814EE818;

  return v3;
}

@end