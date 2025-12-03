@interface MPAssistantSyncHandler
+ (id)_widthLimitedOperationQueue;
- (MPAssistantSyncHandler)init;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
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

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
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
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    isMediaEntitySyncDisabled = [mEMORY[0x277CEF368] isMediaEntitySyncDisabled];

    if (isMediaEntitySyncDisabled)
    {
      v12 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): media entity sync disabled - resetting anchor", buf, 2u);
      }

      [infoCopy setObject:0];
      [infoCopy setPostAnchor:@"0"];
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
          entity = [v15 entity];
          anchor = [v15 anchor];
          deletionType = [v15 deletionType];
          if (self->_deleteNextChange)
          {
            self->_deleteNextChange = 0;
LABEL_27:
            v23 = 1;
            v19 = [entity SAMPMediaEntityRepresentationUsingIdentifierType:1, v27];
LABEL_28:
            [infoCopy setPostAnchor:{anchor, v27}];
            [infoCopy setIsDelete:v23];
            [infoCopy setObject:v19];
            v24 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              persistentID = [entity persistentID];
              *buf = 138543618;
              v29 = anchor;
              v30 = 2048;
              v31 = persistentID;
              _os_log_impl(&dword_2334D9000, v24, OS_LOG_TYPE_DEBUG, "Sync Handler (get): revision %{public}@, pid %lld", buf, 0x16u);
            }

            goto LABEL_31;
          }

          if (deletionType)
          {
            goto LABEL_27;
          }

          if (sub_2335046B4(entity))
          {
            v19 = [entity SAMPMediaEntityRepresentationUsingIdentifierType:1];
            title = [v19 title];
            v21 = [title length];

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
              v29 = entity;
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

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  v41 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  infoCopy = info;
  v12 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v38 = anchorCopy;
    v39 = 2114;
    v40 = validityCopy;
    _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Sync Handler (begin): anchor: %{private}@, validity: %{public}@", buf, 0x16u);
  }

  if (self->_abortSync)
  {
    _syncValidity = _MPLogCategoryAssistant();
    if (os_log_type_enabled(_syncValidity, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, _syncValidity, OS_LOG_TYPE_ERROR, "Sync Handler (enumeration): sync already ended", buf, 2u);
    }

    goto LABEL_28;
  }

  _syncValidity = [(MPMediaLibrary *)self->_library _syncValidity];
  currentEntityRevision = [(MPMediaLibrary *)self->_library currentEntityRevision];
  v15 = [(MPMediaLibrary *)self->_library valueForDatabaseProperty:@"ForceSiriResetSync"];
  bOOLValue = [v15 BOOLValue];

  if (([_syncValidity isEqualToString:validityCopy]& 1) != 0)
  {
    if (currentEntityRevision >= [(__CFString *)anchorCopy longLongValue])
    {
      if (!bOOLValue)
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
        longLongValue = [(__CFString *)anchorCopy longLongValue];
        *buf = 134218240;
        v38 = currentEntityRevision;
        v39 = 2048;
        v40 = longLongValue;
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
      v38 = _syncValidity;
      v39 = 2114;
      v40 = validityCopy;
      v19 = "Sync Handler (validity): (libraryValidity:%{public}@ != siriValidity:%{public}@)";
      goto LABEL_12;
    }
  }

  [infoCopy resetWithValidity:_syncValidity];
  self->_resetSync = 1;
  p_resetSync = &self->_resetSync;
  anchorCopy = @"0";
LABEL_15:
  [(MPMediaLibrary *)self->_library deleteDatabaseProperty:@"ForceSiriResetSync"];
LABEL_16:
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  isMediaEntitySyncDisabled = [mEMORY[0x277CEF368] isMediaEntitySyncDisabled];

  if (isMediaEntitySyncDisabled)
  {
    intValue = [(__CFString *)anchorCopy intValue];
    v27 = _MPLogCategoryAssistant();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (intValue)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v27, OS_LOG_TYPE_DEFAULT, "Sync Handler (validity): media entity sync disabled - resetting", buf, 2u);
      }

      *p_resetSync = 1;
      [infoCopy resetWithValidity:_syncValidity];

      anchorCopy = @"0";
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

  _widthLimitedOperationQueue = [objc_opt_class() _widthLimitedOperationQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_233504D4C;
  v35[3] = &unk_2789DBCF0;
  v35[4] = self;
  anchorCopy = anchorCopy;
  v36 = anchorCopy;
  [_widthLimitedOperationQueue addOperationWithBlock:v35];

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
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    library = v2->_library;
    v2->_library = defaultMediaLibrary;

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