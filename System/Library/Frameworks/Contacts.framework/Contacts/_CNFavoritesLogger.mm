@interface _CNFavoritesLogger
- (_CNFavoritesLogger)init;
- (void)_simulateCrashReportWithMessage:(id)message;
- (void)failedToConvertFavoritesToPropertyList:(id)list;
- (void)failedToReadFavoritesForMatching:(id)matching;
- (void)failedToReadFavoritesFromPath:(id)path error:(id)error simulateCrashReport:(BOOL)report;
- (void)failedToReadRemoteFavorites:(id)favorites willRetry:(BOOL)retry;
- (void)failedToVerifyFavorites:(id)favorites withPropertyListFavorites:(id)listFavorites error:(id)error;
- (void)failedToVerifyWrittenFavoritesExistsAtPath:(id)path;
- (void)failedToWriteFavoritesForMatching:(id)matching;
- (void)failedToWriteFavoritesToPath:(id)path error:(id)error simulateCrashReport:(BOOL)report;
- (void)failedToWriteRemoteFavorites:(id)favorites willRetry:(BOOL)retry;
- (void)finishedReadingFavoritesForMatching;
- (void)finishedReadingFavoritesFromPath:(id)path entriesCount:(unint64_t)count;
- (void)finishedReadingRemoteFavorites;
- (void)finishedWritingFavoritesForMatching;
- (void)finishedWritingFavoritesToPath:(id)path entriesCount:(unint64_t)count;
- (void)finishedWritingRemoteFavorites;
- (void)readingFavorites:(id)favorites;
- (void)rematchingFavorites:(id)favorites;
- (void)reportFavoritesAccessedAfterFirstUnlock;
- (void)reportFavoritesAccessedBeforeFirstUnlock;
- (void)writingFavorites:(id)favorites;
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

- (void)readingFavorites:(id)favorites
{
  favoritesCopy = favorites;
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
  v10 = favoritesCopy;
  v11 = v6;
  v7 = v6;
  v8 = favoritesCopy;
  os_activity_apply(v5, block);
}

- (void)writingFavorites:(id)favorites
{
  favoritesCopy = favorites;
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
  v10 = favoritesCopy;
  v11 = v6;
  v7 = v6;
  v8 = favoritesCopy;
  os_activity_apply(v5, block);
}

- (void)rematchingFavorites:(id)favorites
{
  favoritesCopy = favorites;
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
  v10 = favoritesCopy;
  v11 = v6;
  v7 = v6;
  v8 = favoritesCopy;
  os_activity_apply(v5, block);
}

- (void)finishedReadingFavoritesFromPath:(id)path entriesCount:(unint64_t)count
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = pathCopy;
    v10 = 2048;
    countCopy = count;
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

- (void)finishedWritingFavoritesToPath:(id)path entriesCount:(unint64_t)count
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = pathCopy;
    v10 = 2048;
    countCopy = count;
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

- (void)failedToReadRemoteFavorites:(id)favorites willRetry:(BOOL)retry
{
  favoritesCopy = favorites;
  v6 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToReadRemoteFavorites:willRetry:];
  }
}

- (void)failedToReadFavoritesFromPath:(id)path error:(id)error simulateCrashReport:(BOOL)report
{
  reportCopy = report;
  pathCopy = path;
  errorCopy = error;
  if (reportCopy)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error reading favorites file. Add a favorite as workaround. Please open a radar to Contacts (New Bugs).\n\n%@", errorCopy];
    [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:errorCopy];
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

- (void)failedToConvertFavoritesToPropertyList:(id)list
{
  listCopy = list;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToConvertFavoritesToPropertyList:];
  }
}

- (void)failedToVerifyFavorites:(id)favorites withPropertyListFavorites:(id)listFavorites error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  favoritesCopy = favorites;
  listFavoritesCopy = listFavorites;
  errorCopy = error;
  v11 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v14 = favoritesCopy;
    v15 = 2112;
    v16 = listFavoritesCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_error_impl(&dword_1954A0000, v11, OS_LOG_TYPE_ERROR, "Error converting favorites entries:\n%@\nconvertedEntries:\n%@,\n%@", buf, 0x20u);
  }

  errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error converting favorites entries to property list, not converted correctly. Please open a radar to Contacts (New Bugs).\n\n%@", errorCopy];
  [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:errorCopy];
}

- (void)failedToReadFavoritesForMatching:(id)matching
{
  matchingCopy = matching;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToReadFavoritesForMatching:];
  }
}

- (void)failedToWriteRemoteFavorites:(id)favorites willRetry:(BOOL)retry
{
  favoritesCopy = favorites;
  v6 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToWriteRemoteFavorites:willRetry:];
  }
}

- (void)failedToVerifyWrittenFavoritesExistsAtPath:(id)path
{
  path = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error saving favorites file\x10. File does not exist after saving. Please open a radar to PEP Contacts (New Bugs).\n\nexpected file: %@", path];
  [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:path];
}

- (void)failedToWriteFavoritesToPath:(id)path error:(id)error simulateCrashReport:(BOOL)report
{
  reportCopy = report;
  pathCopy = path;
  errorCopy = error;
  if (reportCopy)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error saving favorites file. Please open a radar to Contacts (New Bugs).\n\n%@", errorCopy];
    [(_CNFavoritesLogger *)self _simulateCrashReportWithMessage:errorCopy];
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

- (void)failedToWriteFavoritesForMatching:(id)matching
{
  matchingCopy = matching;
  v5 = [(_CNFavoritesLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNFavoritesLogger failedToWriteFavoritesForMatching:];
  }
}

- (void)_simulateCrashReportWithMessage:(id)message
{
  messageCopy = message;
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

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