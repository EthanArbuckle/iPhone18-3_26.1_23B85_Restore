@interface _CNFavoritesLogger
- (_CNFavoritesLogger)init;
- (void)_simulateCrashReportWithMessage:(id)a3;
- (void)failedToConvertFavoritesToPropertyList:(id)a3;
- (void)failedToReadFavoritesForMatching:(id)a3;
- (void)failedToReadFavoritesFromPath:(id)a3 error:(id)a4 simulateCrashReport:(BOOL)a5;
- (void)failedToReadRemoteFavorites:(id)a3 willRetry:(BOOL)a4;
- (void)failedToVerifyFavorites:(id)a3 withPropertyListFavorites:(id)a4 error:(id)a5;
- (void)failedToVerifyWrittenFavoritesExistsAtPath:(id)a3;
- (void)failedToWriteFavoritesForMatching:(id)a3;
- (void)failedToWriteFavoritesToPath:(id)a3 error:(id)a4 simulateCrashReport:(BOOL)a5;
- (void)failedToWriteRemoteFavorites:(id)a3 willRetry:(BOOL)a4;
- (void)finishedReadingFavoritesForMatching;
- (void)finishedReadingFavoritesFromPath:(id)a3 entriesCount:(unint64_t)a4;
- (void)finishedReadingRemoteFavorites;
- (void)finishedWritingFavoritesForMatching;
- (void)finishedWritingFavoritesToPath:(id)a3 entriesCount:(unint64_t)a4;
- (void)finishedWritingRemoteFavorites;
- (void)readingFavorites:(id)a3;
- (void)rematchingFavorites:(id)a3;
- (void)reportFavoritesAccessedAfterFirstUnlock;
- (void)reportFavoritesAccessedBeforeFirstUnlock;
- (void)writingFavorites:(id)a3;
@end

@implementation _CNFavoritesLogger

- (_CNFavoritesLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNFavoritesLogger;
  v2 = [(_CNFavoritesLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts", "CNFavorites");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2;
  }

  return v2;
}

- (void)finishedReadingRemoteFavorites
{
  v2 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Read remote favorites with contactsd", v3, 2u);
  }
}

- (void)readingFavorites:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "ReadingFavorites", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___CNFavoritesLogger_readingFavorites___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___CNFavoritesLogger_readingFavorites___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)writingFavorites:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "WritingFavorites", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___CNFavoritesLogger_writingFavorites___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___CNFavoritesLogger_writingFavorites___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)rematchingFavorites:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "rematchingFavorites", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42___CNFavoritesLogger_rematchingFavorites___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___CNFavoritesLogger_rematchingFavorites___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)finishedReadingFavoritesFromPath:(id)a3 entriesCount:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Read favorites file %{public}@, count = %ld", &v8, 0x16u);
  }
}

- (void)finishedReadingFavoritesForMatching
{
  v2 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Read favorites for matching service", v3, 2u);
  }
}

- (void)finishedWritingRemoteFavorites
{
  v2 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Saved remote favorites with contactsd", v3, 2u);
  }
}

- (void)finishedWritingFavoritesToPath:(id)a3 entriesCount:(unint64_t)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Saved favorites to file %{public}@, count = %ld", &v8, 0x16u);
  }
}

- (void)finishedWritingFavoritesForMatching
{
  v2 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "Saved favorites for matching service", v3, 2u);
  }
}

- (void)failedToReadRemoteFavorites:(id)a3 willRetry:(BOOL)a4
{
  v5 = a3;
  v6 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToReadRemoteFavorites:willRetry:];
  }
}

- (void)failedToReadFavoritesFromPath:(id)a3 error:(id)a4 simulateCrashReport:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error reading favorites file. Add a favorite as workaround. Please open a radar to Contacts (New Bugs).\n\n%@", v9];
    [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:v10];
  }

  else
  {
    v11 = [(_CNFavoritesLogger *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_CNFavoritesLogger failedToReadFavoritesFromPath:error:simulateCrashReport:];
    }
  }
}

- (void)failedToConvertFavoritesToPropertyList:(id)a3
{
  v4 = a3;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToConvertFavoritesToPropertyList:];
  }
}

- (void)failedToVerifyFavorites:(id)a3 withPropertyListFavorites:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_error_impl(&dword_1954A0000, v11, OS_LOG_TYPE_ERROR, "Error converting favorites entries:\n%@\nconvertedEntries:\n%@,\n%@", buf, 0x20u);
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error converting favorites entries to property list, not converted correctly. Please open a radar to Contacts (New Bugs).\n\n%@", v10];
  [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:v12];
}

- (void)failedToReadFavoritesForMatching:(id)a3
{
  v4 = a3;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToReadFavoritesForMatching:];
  }
}

- (void)failedToWriteRemoteFavorites:(id)a3 willRetry:(BOOL)a4
{
  v5 = a3;
  v6 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToWriteRemoteFavorites:willRetry:];
  }
}

- (void)failedToVerifyWrittenFavoritesExistsAtPath:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error saving favorites file\x10. File does not exist after saving. Please open a radar to PEP Contacts (New Bugs).\n\nexpected file: %@", a3];
  [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:v4];
}

- (void)failedToWriteFavoritesToPath:(id)a3 error:(id)a4 simulateCrashReport:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error saving favorites file. Please open a radar to Contacts (New Bugs).\n\n%@", v9];
    [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:v10];
  }

  else
  {
    v11 = [(_CNFavoritesLogger *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_CNFavoritesLogger failedToWriteFavoritesToPath:error:simulateCrashReport:];
    }
  }
}

- (void)failedToWriteFavoritesForMatching:(id)a3
{
  v4 = a3;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToWriteFavoritesForMatching:];
  }
}

- (void)_simulateCrashReportWithMessage:(id)a3
{
  v4 = a3;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger _simulateCrashReportWithMessage:];
  }

  ABLogSimulateCrashReport();
  ABLogDisplayInternalAlert();
}

- (void)reportFavoritesAccessedBeforeFirstUnlock
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger reportFavoritesAccessedBeforeFirstUnlock];
  }
}

- (void)reportFavoritesAccessedAfterFirstUnlock
{
  v2 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "FavoritesPersistenceService will use favorites after device first unlock.", v3, 2u);
  }
}

- (void)failedToReadRemoteFavorites:willRetry:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)failedToReadFavoritesFromPath:error:simulateCrashReport:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)failedToWriteRemoteFavorites:willRetry:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)failedToWriteFavoritesToPath:error:simulateCrashReport:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end