@interface _LSInstallNotificationJournaller
+ (void)createInstallJournalDirectoryIfRequired;
- (BOOL)applicableForCurrentDatabase;
- (BOOL)entityExists;
- (BOOL)isApplicationRegisteredWithbundleID:(id)d placeholder:(BOOL)placeholder;
- (BOOL)shouldExpectEntityToExist;
- (_LSInstallNotificationJournaller)initWithCoder:(id)coder;
- (_LSInstallNotificationJournaller)initWithPrimaryBundleID:(id)d operation:(unint64_t)operation;
- (id)journalURL;
- (id)journalledNotifications;
- (id)synthesizedPreliminaryJournalledNotifications;
- (void)_writeJournalUnconditionally;
- (void)applicableForCurrentDatabase;
- (void)encodeWithCoder:(id)coder;
- (void)removeJournalAfterNotificationFence;
- (void)removeJournalFile;
- (void)setPrimaryBundleID:(id)d;
- (void)shouldExpectEntityToExist;
- (void)writeFinalJournal;
- (void)writePreliminaryJournal;
@end

@implementation _LSInstallNotificationJournaller

+ (void)createInstallJournalDirectoryIfRequired
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (_LSInstallNotificationJournaller)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _LSInstallNotificationJournaller;
  v5 = [(_LSInstallNotificationJournaller *)&v15 init];
  if (v5)
  {
    v5->_preliminary = [coderCopy decodeBoolForKey:@"_preliminary"];
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"_primaryBundleID"];
    primaryBundleID = v5->_primaryBundleID;
    v5->_primaryBundleID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy ls_decodeObjectOfClasses:v10 forKey:@"_journalledNotifications"];
    journalledNotifications = v5->_journalledNotifications;
    v5->_journalledNotifications = v11;

    v5->_operationType = [coderCopy decodeIntegerForKey:@"_operationType"];
    [coderCopy decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  preliminary = self->_preliminary;
  coderCopy = coder;
  [coderCopy encodeBool:preliminary forKey:@"_preliminary"];
  [coderCopy encodeObject:self->_primaryBundleID forKey:@"_primaryBundleID"];
  [coderCopy encodeObject:self->_journalledNotifications forKey:@"_journalledNotifications"];
  [coderCopy encodeInteger:self->_operationType forKey:@"_operationType"];
  [coderCopy encodeDouble:@"_timestamp" forKey:self->_timestamp];
}

- (_LSInstallNotificationJournaller)initWithPrimaryBundleID:(id)d operation:(unint64_t)operation
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = _LSInstallNotificationJournaller;
  v7 = [(_LSInstallNotificationJournaller *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_preliminary = 1;
    array = [MEMORY[0x1E695DF70] array];
    journalledNotifications = v8->_journalledNotifications;
    v8->_journalledNotifications = array;

    v11 = [dCopy copy];
    primaryBundleID = v8->_primaryBundleID;
    v8->_primaryBundleID = v11;

    v8->_operationType = operation;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8->_timestamp = v13;
  }

  return v8;
}

- (BOOL)isApplicationRegisteredWithbundleID:(id)d placeholder:(BOOL)placeholder
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = _LSServer_DatabaseExecutionContext();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke;
  v10[3] = &unk_1E6A1F430;
  v7 = dCopy;
  placeholderCopy = placeholder;
  v11 = v7;
  v12 = &v14;
  [(LSDBExecutionContext *)v6 syncRead:v10];

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)shouldExpectEntityToExist
{
  installOperation = [(_LSInstallNotificationJournaller *)self installOperation];
  if (installOperation >= 9)
  {
    v5 = _LSInstallLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(_LSInstallNotificationJournaller *)self shouldExpectEntityToExist];
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x7Fu >> installOperation;
  }

  return v4 & 1;
}

- (BOOL)entityExists
{
  selfCopy = self;
  v3 = (([(_LSInstallNotificationJournaller *)self installOperation]- 2) & 0xFFFFFFFFFFFFFFFALL) == 0;
  primaryBundleID = [(_LSInstallNotificationJournaller *)selfCopy primaryBundleID];
  LOBYTE(selfCopy) = [(_LSInstallNotificationJournaller *)selfCopy isApplicationRegisteredWithbundleID:primaryBundleID placeholder:v3];

  return selfCopy;
}

- (BOOL)applicableForCurrentDatabase
{
  shouldExpectEntityToExist = [(_LSInstallNotificationJournaller *)self shouldExpectEntityToExist];
  entityExists = [(_LSInstallNotificationJournaller *)self entityExists];
  v5 = !entityExists;
  if (shouldExpectEntityToExist)
  {
    v6 = entityExists;
  }

  else
  {
    v6 = !entityExists;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v7 = entityExists;
  result = 1;
  if ((!shouldExpectEntityToExist | v5) == 1 && (shouldExpectEntityToExist || v7))
  {
    v9 = _LSInstallLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_LSInstallNotificationJournaller *)shouldExpectEntityToExist applicableForCurrentDatabase];
    }

    return 0;
  }

  return result;
}

- (id)synthesizedPreliminaryJournalledNotifications
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(_LSInstallNotificationJournaller *)self installOperation]== 8;
  v4 = [_LSInstallProgressService notificationTypeForOperation:[(_LSInstallNotificationJournaller *)self installOperation]];
  v5 = [_LSJournalledNotification alloc];
  primaryBundleID = [(_LSInstallNotificationJournaller *)self primaryBundleID];
  v12 = primaryBundleID;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v8 = [(_LSJournalledNotification *)v5 initWithNotification:v4 bundleIDs:v7 plugins:v3 options:0];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)journalledNotifications
{
  if (self->_preliminary)
  {
    synthesizedPreliminaryJournalledNotifications = [(_LSInstallNotificationJournaller *)self synthesizedPreliminaryJournalledNotifications];
  }

  else
  {
    synthesizedPreliminaryJournalledNotifications = self->_journalledNotifications;
  }

  return synthesizedPreliminaryJournalledNotifications;
}

- (id)journalURL
{
  installJournalDirectoryURL = [__LSDefaultsGetSharedInstance() installJournalDirectoryURL];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%f.%d", self->_primaryBundleID, *&self->_timestamp, self->_operationType];
  v5 = [installJournalDirectoryURL URLByAppendingPathComponent:v4];
  v6 = [v5 URLByAppendingPathExtension:@"notejournal"];

  return v6;
}

- (void)removeJournalFile
{
  v7 = *MEMORY[0x1E69E9840];
  journalURL = [self journalURL];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_writeJournalUnconditionally
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writePreliminaryJournal
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_LSInstallProgressService.m" lineNumber:2236 description:@"writing preliminary journal but more than 0 journalled notifications?"];
}

- (void)writeFinalJournal
{
  v12 = *MEMORY[0x1E69E9840];
  primaryBundleID = self->_primaryBundleID;
  v4 = _LSInstallLog();
  v5 = v4;
  if (primaryBundleID)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = self->_primaryBundleID;
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_INFO, "writing final journal for %@", &v10, 0xCu);
    }

    self->_preliminary = 0;
    if (![(NSMutableArray *)self->_journalledNotifications count])
    {
      v7 = _LSInstallLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_primaryBundleID;
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "journal for %@ had no logs but was the final journal... that's suspicious.", &v10, 0xCu);
      }
    }

    [(_LSInstallNotificationJournaller *)self _writeJournalUnconditionally];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "not writing final journal for install operation with no known bundle ID.", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setPrimaryBundleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  primaryBundleID = self->_primaryBundleID;
  v6 = _LSInstallLog();
  v7 = v6;
  if (primaryBundleID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LSInstallNotificationJournaller setPrimaryBundleID:v7];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = dCopy;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Setting bundleID of journaller to %@", &v10, 0xCu);
    }

    v8 = [dCopy copy];
    v7 = self->_primaryBundleID;
    self->_primaryBundleID = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeJournalAfterNotificationFence
{
  v3 = os_transaction_create();
  v4 = +[_LSInstallProgressService sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___LSInstallNotificationJournaller_removeJournalAfterNotificationFence__block_invoke;
  v6[3] = &unk_1E6A18F50;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 addSendNotificationFenceWithTimeout:v6 fenceBlock:60.0];
}

- (void)shouldExpectEntityToExist
{
  v6 = *MEMORY[0x1E69E9840];
  [self installOperation];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)applicableForCurrentDatabase
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109376;
  v4[1] = self & 1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "Unreachable code reached. This is a bug. %d %d", v4, 0xEu);
  v3 = *MEMORY[0x1E69E9840];
}

@end