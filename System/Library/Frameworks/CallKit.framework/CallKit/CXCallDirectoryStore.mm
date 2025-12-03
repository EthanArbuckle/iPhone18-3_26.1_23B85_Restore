@interface CXCallDirectoryStore
+ (BOOL)initializeDatabaseIfNecessaryAtURL:(id)l usingTemplateAtURL:(id)rL error:(id *)error;
+ (NSURL)databaseTemplateURL;
+ (id)databaseURLUsingTemporaryDirectory:(BOOL)directory error:(id *)error;
- (BOOL)_addBlockingEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error;
- (BOOL)_addIdentificationEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error;
- (BOOL)_addPhoneNumbersWithEntryData:(id)data startIndex:(unint64_t)index count:(unint64_t)count error:(id *)error;
- (BOOL)_containsBlockingEntryWithSQL:(id)l bindings:(id)bindings error:(id *)error;
- (BOOL)_parseFirstIdentificationEntriesForSQL:(id)l bindings:(id)bindings handler:(id)handler error:(id *)error;
- (BOOL)_parseIdentificationEntriesForSQL:(id)l bindings:(id)bindings handler:(id)handler error:(id *)error;
- (BOOL)_removeBlockingEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error;
- (BOOL)_removeIdentificationEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error;
- (BOOL)_removeUnreferencedLabelsWithError:(id *)error;
- (BOOL)_removeUnreferencedPhoneNumbersWithError:(id *)error;
- (BOOL)addBlockingEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error;
- (BOOL)addBlockingEntryWithPhoneNumber:(int64_t)number extensionID:(int64_t)d error:(id *)error;
- (BOOL)addIdentificationEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error;
- (BOOL)addIdentificationEntryWithPhoneNumber:(int64_t)number labelID:(int64_t)d extensionID:(int64_t)iD error:(id *)error;
- (BOOL)containsBlockingEntryForEnabledExtensionWithPhoneNumber:(id)number error:(id *)error;
- (BOOL)containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:(id)array error:(id *)error;
- (BOOL)containsBlockingEntryWithPhoneNumber:(id)number error:(id *)error;
- (BOOL)containsBlockingEntryWithPhoneNumberInArray:(id)array error:(id *)error;
- (BOOL)containsExtensionWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)isCorrupt;
- (BOOL)performTransactionWithBlock:(id)block error:(id *)error;
- (BOOL)removeBlockingEntriesForExtensionWithID:(int64_t)d error:(id *)error;
- (BOOL)removeBlockingEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error;
- (BOOL)removeExtensionWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeIdentificationEntriesForExtensionWithID:(int64_t)d error:(id *)error;
- (BOOL)removeIdentificationEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error;
- (BOOL)removeUnreferencedRecordsWithError:(id *)error;
- (BOOL)setPrioritizedExtensionIdentifiers:(id)identifiers error:(id *)error;
- (BOOL)setState:(int64_t)state forExtensionWithID:(int64_t)d error:(id *)error;
- (BOOL)setState:(int64_t)state forExtensionWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)setStateForAllExtensions:(int64_t)extensions error:(id *)error;
- (BOOL)setStateLastModifiedDate:(id)date forExtensionWithID:(int64_t)d error:(id *)error;
- (BOOL)vacuumWithError:(id *)error;
- (NSURL)url;
- (id)_firstIdentificationEntriesForSQL:(id)l bindings:(id)bindings error:(id *)error;
- (id)_firstIdentificationEntryForSQL:(id)l bindings:(id)bindings error:(id *)error;
- (id)_sqlBindingsForPrioritizedExtensionIdentifiers:(id)identifiers withPriorityOffset:(int64_t)offset;
- (id)_sqlCaseMappingPlaceholderStringWithKeyColumnName:(id)name defaultValue:(id)value numberOfPairs:(unint64_t)pairs;
- (id)_sqlStringListPlaceholderStringWithNumberOfEntries:(int64_t)entries;
- (id)_sqlValuesListPlaceholderStringWithNumberOfEntries:(int64_t)entries entryString:(id)string;
- (id)_storeIdentificationEntryWithExtensionBundleID:(id)d localizedLabel:(id)label;
- (id)description;
- (id)extensionWithIdentifier:(id)identifier error:(id *)error;
- (id)firstEnabledBlockingExtensionIdentifierForPhoneNumber:(id)number error:(id *)error;
- (id)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers error:(id *)error;
- (id)firstIdentificationEntriesForPhoneNumbers:(id)numbers error:(id *)error;
- (id)firstIdentificationEntryForEnabledExtensionWithPhoneNumber:(id)number error:(id *)error;
- (id)firstIdentificationEntryForPhoneNumber:(id)number error:(id *)error;
- (id)prioritizedExtensionIdentifiersWithError:(id *)error;
- (id)prioritizedExtensionsWithError:(id *)error;
- (int64_t)_findOrCreateIDForPhoneNumber:(int64_t)number error:(id *)error;
- (int64_t)addExtensionWithIdentifier:(id)identifier error:(id *)error;
- (int64_t)addExtensionWithIdentifier:(id)identifier priority:(int64_t)priority error:(id *)error;
- (int64_t)addLabel:(id)label error:(id *)error;
- (int64_t)idForExtensionWithIdentifier:(id)identifier error:(id *)error;
- (int64_t)idForLabel:(id)label error:(id *)error;
- (int64_t)idForPhoneNumber:(int64_t)number error:(id *)error;
- (int64_t)schemaVersion;
- (int64_t)schemaVersionWithError:(id *)error;
- (void)dealloc;
@end

@implementation CXCallDirectoryStore

+ (NSURL)databaseTemplateURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"CallDirectoryTemplate.db" withExtension:0];

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [self url];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1(&dword_1B47F3000, v2, v3, "Error removing temporary database at URL %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  database = [(CXCallDirectoryStore *)self database];
  v6 = [v3 stringWithFormat:@"<%@ %p database=%@>", v4, self, database];

  return v6;
}

- (NSURL)url
{
  database = [(CXCallDirectoryStore *)self database];
  v3 = [database url];

  return v3;
}

+ (id)databaseURLUsingTemporaryDirectory:(BOOL)directory error:(id *)error
{
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = MEMORY[0x1E695DFF8];
  if (directoryCopy)
  {
    v8 = NSTemporaryDirectory();
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    v11 = [v8 stringByAppendingPathComponent:globallyUniqueString];
    v12 = [v7 fileURLWithPath:v11 isDirectory:1];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library"];
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = [v12 URLByAppendingPathComponent:@"CallDirectory" isDirectory:1];
  path = [v13 path];
  v15 = [defaultManager fileExistsAtPath:path];

  if ((v15 & 1) != 0 || (v16 = [defaultManager createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:error], v17 = 0, v16))
  {
    v17 = [v13 URLByAppendingPathComponent:@"CallDirectory.db"];
  }

LABEL_9:

  return v17;
}

+ (BOOL)initializeDatabaseIfNecessaryAtURL:(id)l usingTemplateAtURL:(id)rL error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v11 = [defaultManager fileExistsAtPath:path];

  if ((v11 & 1) == 0)
  {
    path2 = [rLCopy path];
    v14 = [defaultManager fileExistsAtPath:path2];

    if (v14)
    {
      v15 = [defaultManager copyItemAtURL:rLCopy toURL:lCopy error:error];
      v16 = CXDefaultLog();
      v17 = v16;
      if (v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412546;
          v21 = rLCopy;
          v22 = 2112;
          v23 = lCopy;
          _os_log_impl(&dword_1B47F3000, v17, OS_LOG_TYPE_DEFAULT, "Copied database template from URL %@ to URL %@", &v20, 0x16u);
        }

        goto LABEL_2;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CXCallDirectoryStore initializeDatabaseIfNecessaryAtURL:usingTemplateAtURL:error:];
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] cx_callDirectoryStoreErrorWithCode:1];
      *error = v12 = 0;
      goto LABEL_14;
    }

    v12 = 0;
    goto LABEL_14;
  }

LABEL_2:
  v12 = 1;
LABEL_14:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int64_t)schemaVersion
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = [(CXCallDirectoryStore *)self schemaVersionWithError:&v7];
  v3 = v7;
  if (v2 == -1)
  {
    v4 = CXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Error querying schema version, possibly because the schema is too old. Error: %@", buf, 0xCu);
    }

    v2 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (int64_t)schemaVersionWithError:(id *)error
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CXCallDirectoryStore_schemaVersionWithError___block_invoke;
  v9[3] = &unk_1E7C070C8;
  v9[4] = &v10;
  v5 = MEMORY[0x1B8C78C60](v9, a2);
  database = [(CXCallDirectoryStore *)self database];
  [database selectSQL:@"SELECT MAX(version) FROM SchemaVersion" withBindings:MEMORY[0x1E695E0F0] expectedColumnCount:1 resultRowHandler:v5 error:error];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __47__CXCallDirectoryStore_schemaVersionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

- (BOOL)isCorrupt
{
  v8 = 0;
  v2 = [(CXCallDirectoryStore *)self schemaVersionWithError:&v8];
  v3 = v8;
  v4 = v3;
  if (v2 == -1)
  {
    domain = [v3 domain];
    if ([domain isEqualToString:@"com.apple.callkit.database.sqlite"])
    {
      v5 = [v4 code] == 11;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  database = [(CXCallDirectoryStore *)self database];
  v16[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CXCallDirectoryStore_containsExtensionWithIdentifier_error___block_invoke;
  v11[3] = &unk_1E7C070C8;
  v11[4] = &v12;
  [database selectSQL:@"SELECT EXISTS (SELECT 1 FROM Extension WHERE bundle_id = ?)" withBindings:v8 expectedColumnCount:1 resultRowHandler:v11 error:error];

  LOBYTE(error) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  v9 = *MEMORY[0x1E69E9840];
  return error & 1;
}

void __62__CXCallDirectoryStore_containsExtensionWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

- (id)extensionWithIdentifier:(id)identifier error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CXCallDirectoryStore_extensionWithIdentifier_error___block_invoke;
  v14[3] = &unk_1E7C070C8;
  v14[4] = &v15;
  v7 = MEMORY[0x1B8C78C60](v14);
  database = [(CXCallDirectoryStore *)self database];
  v21[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  LODWORD(error) = [database selectSQL:@"SELECT id withBindings:bundle_id expectedColumnCount:priority resultRowHandler:state error:{state_last_modified FROM Extension WHERE bundle_id = ?", v9, 5, v7, error}];

  if (error)
  {
    v10 = v16[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __54__CXCallDirectoryStore_extensionWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CXCallDirectoryStoreExtension);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 objectAtIndexedSubscript:0];
  [*(*(*(a1 + 32) + 8) + 40) setPrimaryKey:{objc_msgSend(v7, "longLongValue")}];

  v8 = [v3 objectAtIndexedSubscript:1];
  [*(*(*(a1 + 32) + 8) + 40) setIdentifier:v8];

  v9 = [v3 objectAtIndexedSubscript:2];
  [*(*(*(a1 + 32) + 8) + 40) setPriority:{objc_msgSend(v9, "longLongValue")}];

  v10 = [v3 objectAtIndexedSubscript:3];
  [*(*(*(a1 + 32) + 8) + 40) setState:{objc_msgSend(v10, "longLongValue")}];

  v11 = MEMORY[0x1E695DF00];
  v13 = [v3 objectAtIndexedSubscript:4];

  [v13 doubleValue];
  v12 = [v11 dateWithTimeIntervalSince1970:?];
  [*(*(*(a1 + 32) + 8) + 40) setStateLastModified:v12];
}

- (int64_t)addExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  database = [(CXCallDirectoryStore *)self database];
  v13[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  LODWORD(error) = [database executeSQL:@"INSERT INTO Extension (bundle_id withBindings:priority error:{state_last_modified) VALUES (?, (SELECT IFNULL(MAX(priority), 0) + 1 FROM Extension), ((julianday('now') - 2440587.5)*86400.0))", v8, error}];
  if (error)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    lastInsertedRowID = [database2 lastInsertedRowID];

    notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
  }

  else
  {
    lastInsertedRowID = -1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return lastInsertedRowID;
}

- (int64_t)addExtensionWithIdentifier:(id)identifier priority:(int64_t)priority error:(id *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  database = [(CXCallDirectoryStore *)self database];
  v16[0] = identifierCopy;
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:priority];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  LODWORD(error) = [database executeSQL:@"INSERT INTO Extension (bundle_id withBindings:priority error:{state_last_modified) VALUES (?, ?, ((julianday('now') - 2440587.5)*86400.0))", v11, error}];
  if (error)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    lastInsertedRowID = [database2 lastInsertedRowID];

    notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
  }

  else
  {
    lastInsertedRowID = -1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return lastInsertedRowID;
}

- (BOOL)removeExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  database = [(CXCallDirectoryStore *)self database];
  v14[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v9 = [database executeSQL:@"DELETE FROM Extension WHERE (bundle_id = ?)" withBindings:v8 transient:1 error:error];
  if (v9)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    countOfRecordsModifiedByLastQuery = [database2 countOfRecordsModifiedByLastQuery];

    if (countOfRecordsModifiedByLastQuery >= 1)
    {
      notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setState:(int64_t)state forExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v17[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  database = [(CXCallDirectoryStore *)self database];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v17[0] = v10;
  v17[1] = identifierCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

  v12 = [database executeSQL:@"UPDATE Extension SET state = ? withBindings:state_last_modified = ((julianday('now') - 2440587.5)*86400.0) WHERE (bundle_id = ?)" error:{v11, error}];
  if (v12)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    countOfRecordsModifiedByLastQuery = [database2 countOfRecordsModifiedByLastQuery];

    if (countOfRecordsModifiedByLastQuery >= 1)
    {
      notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)setState:(int64_t)state forExtensionWithID:(int64_t)d error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  database = [(CXCallDirectoryStore *)self database];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v18[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v13 = [database executeSQL:@"UPDATE Extension SET state = ? withBindings:state_last_modified = ((julianday('now') - 2440587.5)*86400.0) WHERE (id = ?)" error:{v12, error}];

  if (v13)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    countOfRecordsModifiedByLastQuery = [database2 countOfRecordsModifiedByLastQuery];

    if (countOfRecordsModifiedByLastQuery >= 1)
    {
      notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)setStateLastModifiedDate:(id)date forExtensionWithID:(int64_t)d error:(id *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  database = [(CXCallDirectoryStore *)self database];
  v10 = MEMORY[0x1E696AD98];
  [dateCopy timeIntervalSince1970];
  v12 = v11;

  v13 = [v10 numberWithDouble:v12];
  v21[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v16 = [database executeSQL:@"UPDATE Extension SET state_last_modified = ? WHERE (id = ?)" withBindings:v15 error:error];

  if (v16)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    countOfRecordsModifiedByLastQuery = [database2 countOfRecordsModifiedByLastQuery];

    if (countOfRecordsModifiedByLastQuery >= 1)
    {
      notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)setStateForAllExtensions:(int64_t)extensions error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  database = [(CXCallDirectoryStore *)self database];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:extensions];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [database executeSQL:@"UPDATE Extension SET state = ? withBindings:state_last_modified = ((julianday('now') - 2440587.5)*86400.0)" error:{v9, error}];

  if (v10)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    countOfRecordsModifiedByLastQuery = [database2 countOfRecordsModifiedByLastQuery];

    if (countOfRecordsModifiedByLastQuery >= 1)
    {
      notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)removeUnreferencedRecordsWithError:(id *)error
{
  v5 = [(CXCallDirectoryStore *)self _removeUnreferencedPhoneNumbersWithError:?];
  if (v5)
  {

    LOBYTE(v5) = [(CXCallDirectoryStore *)self _removeUnreferencedLabelsWithError:error];
  }

  return v5;
}

- (BOOL)_removeUnreferencedPhoneNumbersWithError:(id *)error
{
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database executeSQL:@"DELETE FROM PhoneNumber WHERE id NOT IN (SELECT DISTINCT phone_number_id FROM PhoneNumberIdentificationEntry UNION SELECT DISTINCT phone_number_id FROM PhoneNumberBlockingEntry)" error:error];

  return error;
}

- (BOOL)_removeUnreferencedLabelsWithError:(id *)error
{
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database executeSQL:@"DELETE FROM Label WHERE id NOT IN (SELECT DISTINCT label_id FROM PhoneNumberIdentificationEntry)" error:error];

  return error;
}

- (id)prioritizedExtensionsWithError:(id *)error
{
  array = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CXCallDirectoryStore_prioritizedExtensionsWithError___block_invoke;
  v11[3] = &unk_1E7C070F0;
  v6 = array;
  v12 = v6;
  v7 = MEMORY[0x1B8C78C60](v11);
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database selectSQL:@"SELECT id withBindings:bundle_id expectedColumnCount:priority resultRowHandler:state error:{state_last_modified FROM Extension ORDER BY priority", MEMORY[0x1E695E0F0], 5, v7, error}];

  if ((error & 1) == 0)
  {

    v6 = 0;
  }

  v9 = [v6 copy];

  return v9;
}

void __55__CXCallDirectoryStore_prioritizedExtensionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = objc_alloc_init(CXCallDirectoryStoreExtension);
  v4 = [v3 objectAtIndexedSubscript:0];
  -[CXCallDirectoryStoreExtension setPrimaryKey:](v11, "setPrimaryKey:", [v4 longLongValue]);

  v5 = [v3 objectAtIndexedSubscript:1];
  [(CXCallDirectoryStoreExtension *)v11 setIdentifier:v5];

  v6 = [v3 objectAtIndexedSubscript:2];
  -[CXCallDirectoryStoreExtension setPriority:](v11, "setPriority:", [v6 longLongValue]);

  v7 = [v3 objectAtIndexedSubscript:3];
  -[CXCallDirectoryStoreExtension setState:](v11, "setState:", [v7 longLongValue]);

  v8 = MEMORY[0x1E695DF00];
  v9 = [v3 objectAtIndexedSubscript:4];

  [v9 doubleValue];
  v10 = [v8 dateWithTimeIntervalSince1970:?];
  [(CXCallDirectoryStoreExtension *)v11 setStateLastModified:v10];

  [*(a1 + 32) addObject:v11];
}

- (id)prioritizedExtensionIdentifiersWithError:(id *)error
{
  array = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CXCallDirectoryStore_prioritizedExtensionIdentifiersWithError___block_invoke;
  v11[3] = &unk_1E7C070F0;
  v6 = array;
  v12 = v6;
  v7 = MEMORY[0x1B8C78C60](v11);
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database selectSQL:@"SELECT bundle_id FROM Extension ORDER BY priority" withBindings:MEMORY[0x1E695E0F0] expectedColumnCount:1 resultRowHandler:v7 error:error];

  if ((error & 1) == 0)
  {

    v6 = 0;
  }

  v9 = [v6 copy];

  return v9;
}

void __65__CXCallDirectoryStore_prioritizedExtensionIdentifiersWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) addObject:v3];
}

- (BOOL)setPrioritizedExtensionIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v7 = -[CXCallDirectoryStore _sqlCaseMappingPlaceholderStringWithKeyColumnName:defaultValue:numberOfPairs:](self, "_sqlCaseMappingPlaceholderStringWithKeyColumnName:defaultValue:numberOfPairs:", @"bundle_id", @"priority", [identifiersCopy count]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Extension SET priority = %@", v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__CXCallDirectoryStore_setPrioritizedExtensionIdentifiers_error___block_invoke;
    v12[3] = &unk_1E7C07118;
    v12[4] = self;
    v13 = identifiersCopy;
    v14 = v8;
    v9 = v8;
    v10 = [(CXCallDirectoryStore *)self performTransactionWithBlock:v12 error:error];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __65__CXCallDirectoryStore_setPrioritizedExtensionIdentifiers_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _sqlBindingsForPrioritizedExtensionIdentifiers:*(a1 + 40) withPriorityOffset:0x3FFFFFFFFFFFFFFFLL];
  v7 = [*(a1 + 32) database];
  v8 = *(a1 + 48);
  v9 = [v6 copy];
  LODWORD(v8) = [v7 executeSQL:v8 withBindings:v9 error:a3];

  if (!v8)
  {
    goto LABEL_4;
  }

  v10 = [*(a1 + 32) _sqlBindingsForPrioritizedExtensionIdentifiers:*(a1 + 40) withPriorityOffset:0];
  v11 = [*(a1 + 32) database];
  v12 = *(a1 + 48);
  v13 = [v10 copy];
  v14 = [v11 executeSQL:v12 withBindings:v13 error:a3];

  if (v14)
  {
    notify_post("com.apple.callkit.calldirectorystore.extensionschanged");
    v15 = 1;
  }

  else
  {
LABEL_4:
    v20 = 0;
    v16 = v5[2](v5, &v20);
    v17 = v20;
    if ((v16 & 1) == 0)
    {
      v18 = CXDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __65__CXCallDirectoryStore_setPrioritizedExtensionIdentifiers_error___block_invoke_cold_1();
      }
    }

    v15 = 0;
  }

  return v15;
}

- (id)_sqlCaseMappingPlaceholderStringWithKeyColumnName:(id)name defaultValue:(id)value numberOfPairs:(unint64_t)pairs
{
  valueCopy = value;
  for (i = [MEMORY[0x1E696AD60] stringWithFormat:@"CASE %@ ", name];
  {
    [i appendFormat:@"WHEN ? THEN ? "];
  }

  [i appendFormat:@"ELSE %@ END", valueCopy];
  v9 = [i copy];

  return v9;
}

- (id)_sqlBindingsForPrioritizedExtensionIdentifiers:(id)identifiers withPriorityOffset:(int64_t)offset
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        ++offset;
        [array addObject:{*(*(&v16 + 1) + 8 * i), v16}];
        v12 = [MEMORY[0x1E696AD98] numberWithLongLong:offset];
        [array addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [array copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)addBlockingEntryWithPhoneNumber:(int64_t)number extensionID:(int64_t)d error:(id *)error
{
  v9 = objc_alloc_init(CXCallDirectoryMutablePhoneNumberEntryData);
  [(CXCallDirectoryMutablePhoneNumberEntryData *)v9 appendPhoneNumber:number];
  LOBYTE(error) = [(CXCallDirectoryStore *)self addBlockingEntriesWithData:v9 extensionID:d error:error];

  return error;
}

- (BOOL)addBlockingEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke;
  v12[3] = &unk_1E7C07140;
  v13 = dataCopy;
  selfCopy = self;
  dCopy = d;
  v10 = dataCopy;
  LOBYTE(error) = [database performTransactionWithBlock:v12 error:error];

  return error;
}

uint64_t __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = v7 - v6 >= 0x1F4 ? 500 : v7 - v6;
      if (([*(a1 + 40) _addBlockingEntriesWithData:*(a1 + 32) startIndex:v6 count:v8 extensionID:*(a1 + 48) error:a3] & 1) == 0)
      {
        break;
      }

      v6 += v8;
      if (v6 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    v10 = v5[2](v5, &v14);
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke_cold_1();
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  return v9;
}

- (BOOL)_addBlockingEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  if (count)
  {
    if ([(CXCallDirectoryStore *)self lastAddBlockingEntriesCount]!= count)
    {
      v13 = [(CXCallDirectoryStore *)self _sqlValuesListPlaceholderStringWithNumberOfEntries:count entryString:@"(?, (SELECT id FROM PhoneNumber WHERE (number = ?)))"];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO PhoneNumberBlockingEntry (extension_id, phone_number_id) VALUES %@", v13];
      [(CXCallDirectoryStore *)self setAddBlockingEntriesInsertPhoneNumberBlockingEntrySQL:v14];

      [(CXCallDirectoryStore *)self setLastAddBlockingEntriesCount:count];
    }

    if ([(CXCallDirectoryStore *)self _addPhoneNumbersWithEntryData:dataCopy startIndex:index count:count error:error])
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __87__CXCallDirectoryStore__addBlockingEntriesWithData_startIndex_count_extensionID_error___block_invoke;
      v20[3] = &unk_1E7C07168;
      countCopy = count;
      indexCopy = index;
      dCopy = d;
      v21 = dataCopy;
      v15 = MEMORY[0x1B8C78C60](v20);
      database = [(CXCallDirectoryStore *)self database];
      addBlockingEntriesInsertPhoneNumberBlockingEntrySQL = [(CXCallDirectoryStore *)self addBlockingEntriesInsertPhoneNumberBlockingEntrySQL];
      v18 = [database executeSQL:addBlockingEntriesInsertPhoneNumberBlockingEntrySQL withStatementPreparationBlock:v15 error:error];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

BOOL __87__CXCallDirectoryStore__addBlockingEntriesWithData_startIndex_count_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = *(a1 + 40);
    if (v9 <= v6)
    {
      break;
    }

    v10 = *(a1 + 48);
    if (![v5 bindInt64:*(a1 + 56) atIndex:v7 error:a3])
    {
      break;
    }

    v11 = [v5 bindInt64:objc_msgSend(*(a1 + 32) atIndex:"phoneNumberAtIndex:" error:{v8 + v10), (v7 + 1), a3}];
    v6 = v8 + 1;
    v7 = (v7 + 2);
  }

  while ((v11 & 1) != 0);

  return v9 <= v8;
}

- (BOOL)removeBlockingEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CXCallDirectoryStore_removeBlockingEntriesWithData_extensionID_error___block_invoke;
  v12[3] = &unk_1E7C07140;
  v13 = dataCopy;
  selfCopy = self;
  dCopy = d;
  v10 = dataCopy;
  LOBYTE(error) = [database performTransactionWithBlock:v12 error:error];

  return error;
}

uint64_t __72__CXCallDirectoryStore_removeBlockingEntriesWithData_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = v7 - v6 >= 0x1F4 ? 500 : v7 - v6;
      if (([*(a1 + 40) _removeBlockingEntriesWithData:*(a1 + 32) startIndex:v6 count:v8 extensionID:*(a1 + 48) error:a3] & 1) == 0)
      {
        break;
      }

      v6 += v8;
      if (v6 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    v10 = v5[2](v5, &v14);
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke_cold_1();
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  return v9;
}

- (BOOL)_removeBlockingEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  if (count)
  {
    if ([(CXCallDirectoryStore *)self lastRemoveBlockingEntriesCount]!= count)
    {
      v13 = [(CXCallDirectoryStore *)self _sqlStringListPlaceholderStringWithNumberOfEntries:count];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM PhoneNumberBlockingEntry WHERE extension_id = ? AND phone_number_id IN (SELECT id FROM PhoneNumber WHERE number IN %@)", v13];
      [(CXCallDirectoryStore *)self setRemoveBlockingEntriesSQL:v14];

      [(CXCallDirectoryStore *)self setLastRemoveBlockingEntriesCount:count];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__CXCallDirectoryStore__removeBlockingEntriesWithData_startIndex_count_extensionID_error___block_invoke;
    v20[3] = &unk_1E7C07168;
    dCopy = d;
    countCopy = count;
    indexCopy = index;
    v21 = dataCopy;
    v15 = MEMORY[0x1B8C78C60](v20);
    database = [(CXCallDirectoryStore *)self database];
    removeBlockingEntriesSQL = [(CXCallDirectoryStore *)self removeBlockingEntriesSQL];
    v18 = [database executeSQL:removeBlockingEntriesSQL withStatementPreparationBlock:v15 error:error];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

BOOL __90__CXCallDirectoryStore__removeBlockingEntriesWithData_startIndex_count_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 bindInt64:*(a1 + 40) atIndex:1 error:a3])
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 48);
      v8 = v7 <= v6;
      if (v7 <= v6)
      {
        break;
      }

      v9 = [v5 bindInt64:objc_msgSend(*(a1 + 32) atIndex:"phoneNumberAtIndex:" error:{v6 + *(a1 + 56)), (v6 + 2), a3}];
      ++v6;
    }

    while ((v9 & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeBlockingEntriesForExtensionWithID:(int64_t)d error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  database = [(CXCallDirectoryStore *)self database];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  LOBYTE(error) = [database executeSQL:@"DELETE FROM PhoneNumberBlockingEntry WHERE extension_id = ?" withBindings:v8 error:error];

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)addIdentificationEntryWithPhoneNumber:(int64_t)number labelID:(int64_t)d extensionID:(int64_t)iD error:(id *)error
{
  v20[3] = *MEMORY[0x1E69E9840];
  v10 = [(CXCallDirectoryStore *)self _findOrCreateIDForPhoneNumber:number error:error];
  if (v10 == -1)
  {
    v17 = 0;
  }

  else
  {
    v11 = v10;
    database = [(CXCallDirectoryStore *)self database];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:iD];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{v11, v13}];
    v20[1] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    v20[2] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v17 = [database executeSQL:@"INSERT INTO PhoneNumberIdentificationEntry (extension_id withBindings:phone_number_id error:{label_id) VALUES (?, ?, ?)", v16, error}];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (int64_t)_findOrCreateIDForPhoneNumber:(int64_t)number error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
  v19[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

  database = [(CXCallDirectoryStore *)self database];
  v9 = [database executeSQL:@"INSERT OR IGNORE INTO PhoneNumber (number) VALUES (?)" withBindings:v7 error:error];

  if (v9)
  {
    database2 = [(CXCallDirectoryStore *)self database];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__CXCallDirectoryStore__findOrCreateIDForPhoneNumber_error___block_invoke;
    v14[3] = &unk_1E7C070C8;
    v14[4] = &v15;
    [database2 selectSQL:@"SELECT id FROM PhoneNumber WHERE (number = ?)" withBindings:v7 expectedColumnCount:1 resultRowHandler:v14 error:error];
  }

  v11 = v16[3];

  _Block_object_dispose(&v15, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __60__CXCallDirectoryStore__findOrCreateIDForPhoneNumber_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

- (int64_t)idForExtensionWithIdentifier:(id)identifier error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v17[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CXCallDirectoryStore_idForExtensionWithIdentifier_error___block_invoke;
  v12[3] = &unk_1E7C070C8;
  v12[4] = &v13;
  [database selectSQL:@"SELECT id FROM Extension WHERE (bundle_id = ?)" withBindings:v7 expectedColumnCount:1 resultRowHandler:v12 error:error];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __59__CXCallDirectoryStore_idForExtensionWithIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

- (int64_t)idForPhoneNumber:(int64_t)number error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
  v17[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__CXCallDirectoryStore_idForPhoneNumber_error___block_invoke;
  v12[3] = &unk_1E7C070C8;
  v12[4] = &v13;
  [database selectSQL:@"SELECT id FROM PhoneNumber WHERE (number = ?)" withBindings:v7 expectedColumnCount:1 resultRowHandler:v12 error:error];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __47__CXCallDirectoryStore_idForPhoneNumber_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

- (int64_t)idForLabel:(id)label error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v17[0] = labelCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__CXCallDirectoryStore_idForLabel_error___block_invoke;
  v12[3] = &unk_1E7C070C8;
  v12[4] = &v13;
  [database selectSQL:@"SELECT id FROM Label WHERE (localized_label = ?)" withBindings:v7 expectedColumnCount:1 resultRowHandler:v12 error:error];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __41__CXCallDirectoryStore_idForLabel_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 longLongValue];
}

- (int64_t)addLabel:(id)label error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v6 = MEMORY[0x1E695DEC8];
  labelCopy2 = label;
  v8 = [v6 arrayWithObjects:&labelCopy count:1];

  v9 = [(CXCallDirectoryStore *)self database:labelCopy];
  LODWORD(error) = [v9 executeSQL:@"INSERT INTO Label (localized_label) VALUES (?)" withBindings:v8 error:error];

  if (error)
  {
    database = [(CXCallDirectoryStore *)self database];
    lastInsertedRowID = [database lastInsertedRowID];
  }

  else
  {
    lastInsertedRowID = -1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return lastInsertedRowID;
}

- (BOOL)addIdentificationEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CXCallDirectoryStore_addIdentificationEntriesWithData_extensionID_error___block_invoke;
  v12[3] = &unk_1E7C07140;
  v13 = dataCopy;
  selfCopy = self;
  dCopy = d;
  v10 = dataCopy;
  LOBYTE(error) = [database performTransactionWithBlock:v12 error:error];

  return error;
}

uint64_t __75__CXCallDirectoryStore_addIdentificationEntriesWithData_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = v7 - v6 >= 0x1F4 ? 500 : v7 - v6;
      if (([*(a1 + 40) _addIdentificationEntriesWithData:*(a1 + 32) startIndex:v6 count:v8 extensionID:*(a1 + 48) error:a3] & 1) == 0)
      {
        break;
      }

      v6 += v8;
      if (v6 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    v10 = v5[2](v5, &v14);
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke_cold_1();
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  return v9;
}

- (BOOL)_addIdentificationEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  if (count)
  {
    if ([(CXCallDirectoryStore *)self lastAddIdentificationEntriesCount]!= count)
    {
      v13 = [(CXCallDirectoryStore *)self _sqlValuesListPlaceholderStringWithNumberOfEntries:count entryString:@"(?)"];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR IGNORE INTO Label (localized_label) VALUES %@", v13];
      [(CXCallDirectoryStore *)self setAddIdentificationEntriesInsertLabelsSQL:v14];

      v15 = [(CXCallDirectoryStore *)self _sqlValuesListPlaceholderStringWithNumberOfEntries:count entryString:@"(?, (SELECT id FROM PhoneNumber WHERE (number = ?)), (SELECT id FROM Label WHERE (localized_label = ?)))"];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO PhoneNumberIdentificationEntry (extension_id, phone_number_id, label_id) VALUES %@", v15];
      [(CXCallDirectoryStore *)self setAddIdentificationEntriesInsertPhoneNumberIdentificationEntrySQL:v16];

      [(CXCallDirectoryStore *)self setLastAddIdentificationEntriesCount:count];
    }

    if ([(CXCallDirectoryStore *)self _addPhoneNumbersWithEntryData:dataCopy startIndex:index count:count error:error])
    {
      dCopy = d;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __93__CXCallDirectoryStore__addIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke;
      v33[3] = &unk_1E7C07190;
      countCopy = count;
      indexCopy = index;
      v17 = dataCopy;
      v34 = v17;
      v18 = MEMORY[0x1B8C78C60](v33);
      database = [(CXCallDirectoryStore *)self database];
      addIdentificationEntriesInsertLabelsSQL = [(CXCallDirectoryStore *)self addIdentificationEntriesInsertLabelsSQL];
      v21 = [database executeSQL:addIdentificationEntriesInsertLabelsSQL withStatementPreparationBlock:v18 error:error];

      if (v21)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __93__CXCallDirectoryStore__addIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke_2;
        v28[3] = &unk_1E7C07168;
        countCopy2 = count;
        indexCopy2 = index;
        v29 = v17;
        v32 = dCopy;
        v22 = MEMORY[0x1B8C78C60](v28);
        database2 = [(CXCallDirectoryStore *)self database];
        addIdentificationEntriesInsertPhoneNumberIdentificationEntrySQL = [(CXCallDirectoryStore *)self addIdentificationEntriesInsertPhoneNumberIdentificationEntrySQL];
        v25 = [database2 executeSQL:addIdentificationEntriesInsertPhoneNumberIdentificationEntrySQL withStatementPreparationBlock:v22 error:error];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  return v25;
}

uint64_t __93__CXCallDirectoryStore__addIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40))
  {
    v6 = 0;
    while (1)
    {
      v7 = v6 + *(a1 + 48);
      v11 = 0;
      v8 = [*(a1 + 32) utf8LabelAtIndex:v7 length:&v11];
      if (!v8)
      {
        break;
      }

      v9 = [v5 bindText:v8 ofLength:v11 atIndex:++v6 error:a3];
      if ((v9 & 1) == 0 || *(a1 + 40) <= v6)
      {
        goto LABEL_9;
      }
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

LABEL_9:

  return v9;
}

uint64_t __93__CXCallDirectoryStore__addIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40))
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = v6 + *(a1 + 48);
      v9 = [*(a1 + 32) phoneNumberAtIndex:v8];
      v13 = 0;
      v10 = [*(a1 + 32) utf8LabelAtIndex:v8 length:&v13];
      if (![v5 bindInt64:*(a1 + 56) atIndex:v7 error:a3] || (objc_msgSend(v5, "bindInt64:atIndex:error:", v9, (v7 + 1), a3) & 1) == 0)
      {
        break;
      }

      v11 = [v5 bindText:v10 ofLength:v13 atIndex:(v7 + 2) error:a3];
      if (v11)
      {
        ++v6;
        v7 = (v7 + 3);
        if (*(a1 + 40) > v6)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:

  return v11;
}

- (BOOL)_addPhoneNumbersWithEntryData:(id)data startIndex:(unint64_t)index count:(unint64_t)count error:(id *)error
{
  dataCopy = data;
  if (count)
  {
    if ([(CXCallDirectoryStore *)self lastAddPhoneNumbersCount]!= count)
    {
      v11 = [(CXCallDirectoryStore *)self _sqlValuesListPlaceholderStringWithNumberOfEntries:count entryString:@"(?)"];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT OR IGNORE INTO PhoneNumber (number) VALUES %@", v11];
      [(CXCallDirectoryStore *)self setAddPhoneNumbersSQL:v12];

      [(CXCallDirectoryStore *)self setLastAddPhoneNumbersCount:count];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__CXCallDirectoryStore__addPhoneNumbersWithEntryData_startIndex_count_error___block_invoke;
    v18[3] = &unk_1E7C07190;
    countCopy = count;
    indexCopy = index;
    v19 = dataCopy;
    v13 = MEMORY[0x1B8C78C60](v18);
    database = [(CXCallDirectoryStore *)self database];
    addPhoneNumbersSQL = [(CXCallDirectoryStore *)self addPhoneNumbersSQL];
    v16 = [database executeSQL:addPhoneNumbersSQL withStatementPreparationBlock:v13 error:error];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

BOOL __77__CXCallDirectoryStore__addPhoneNumbersWithEntryData_startIndex_count_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0;
  do
  {
    v7 = v6;
    v8 = *(a1 + 40);
    if (v8 <= v6)
    {
      break;
    }

    v9 = [*(a1 + 32) phoneNumberAtIndex:v6++ + *(a1 + 48)];
  }

  while (([v5 bindInt64:v9 atIndex:v7 + 1 error:a3] & 1) != 0);

  return v8 <= v7;
}

- (BOOL)removeIdentificationEntriesWithData:(id)data extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CXCallDirectoryStore_removeIdentificationEntriesWithData_extensionID_error___block_invoke;
  v12[3] = &unk_1E7C07140;
  v13 = dataCopy;
  selfCopy = self;
  dCopy = d;
  v10 = dataCopy;
  LOBYTE(error) = [database performTransactionWithBlock:v12 error:error];

  return error;
}

uint64_t __78__CXCallDirectoryStore_removeIdentificationEntriesWithData_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 32) count];
      v8 = v7 - v6 >= 0x1F4 ? 500 : v7 - v6;
      if (([*(a1 + 40) _removeIdentificationEntriesWithData:*(a1 + 32) startIndex:v6 count:v8 extensionID:*(a1 + 48) error:a3] & 1) == 0)
      {
        break;
      }

      v6 += v8;
      if (v6 >= [*(a1 + 32) count])
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    v10 = v5[2](v5, &v14);
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      v12 = CXDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke_cold_1();
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  return v9;
}

- (BOOL)_removeIdentificationEntriesWithData:(id)data startIndex:(unint64_t)index count:(unint64_t)count extensionID:(int64_t)d error:(id *)error
{
  dataCopy = data;
  if (count)
  {
    if ([(CXCallDirectoryStore *)self lastRemoveIdentificationEntriesCount]!= count)
    {
      v13 = [(CXCallDirectoryStore *)self _sqlStringListPlaceholderStringWithNumberOfEntries:count];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM PhoneNumberIdentificationEntry WHERE extension_id = ? AND phone_number_id IN (SELECT id FROM PhoneNumber WHERE number IN %@)", v13];
      [(CXCallDirectoryStore *)self setRemoveIdentificationEntriesSQL:v14];

      [(CXCallDirectoryStore *)self setLastRemoveIdentificationEntriesCount:count];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __96__CXCallDirectoryStore__removeIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke;
    v20[3] = &unk_1E7C07168;
    dCopy = d;
    countCopy = count;
    indexCopy = index;
    v21 = dataCopy;
    v15 = MEMORY[0x1B8C78C60](v20);
    database = [(CXCallDirectoryStore *)self database];
    removeIdentificationEntriesSQL = [(CXCallDirectoryStore *)self removeIdentificationEntriesSQL];
    v18 = [database executeSQL:removeIdentificationEntriesSQL withStatementPreparationBlock:v15 error:error];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

BOOL __96__CXCallDirectoryStore__removeIdentificationEntriesWithData_startIndex_count_extensionID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 bindInt64:*(a1 + 40) atIndex:1 error:a3])
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 48);
      v8 = v7 <= v6;
      if (v7 <= v6)
      {
        break;
      }

      v9 = [v5 bindInt64:objc_msgSend(*(a1 + 32) atIndex:"phoneNumberAtIndex:" error:{v6 + *(a1 + 56)), (v6 + 2), a3}];
      ++v6;
    }

    while ((v9 & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)removeIdentificationEntriesForExtensionWithID:(int64_t)d error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  database = [(CXCallDirectoryStore *)self database];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  LOBYTE(error) = [database executeSQL:@"DELETE FROM PhoneNumberIdentificationEntry WHERE extension_id = ?" withBindings:v8 error:error];

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)performTransactionWithBlock:(id)block error:(id *)error
{
  blockCopy = block;
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database performTransactionWithBlock:blockCopy error:error];

  return error;
}

- (BOOL)containsBlockingEntryWithPhoneNumber:(id)number error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v6 = MEMORY[0x1E695DEC8];
  numberCopy2 = number;
  v8 = [v6 arrayWithObjects:&numberCopy count:1];

  LOBYTE(error) = [(CXCallDirectoryStore *)self containsBlockingEntryWithPhoneNumberInArray:v8 error:error, numberCopy, v12];
  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)containsBlockingEntryWithPhoneNumberInArray:(id)array error:(id *)error
{
  arrayCopy = array;
  v7 = -[CXCallDirectoryStore _sqlStringListPlaceholderStringWithNumberOfEntries:](self, "_sqlStringListPlaceholderStringWithNumberOfEntries:", [arrayCopy count]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT EXISTS(SELECT 1 FROM PhoneNumberBlockingEntry INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberBlockingEntry.phone_number_id) WHERE (PhoneNumber.number IN %@) LIMIT 1)", v7];
  LOBYTE(error) = [(CXCallDirectoryStore *)self _containsBlockingEntryWithSQL:v8 bindings:arrayCopy error:error];

  return error;
}

- (BOOL)containsBlockingEntryForEnabledExtensionWithPhoneNumber:(id)number error:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v6 = MEMORY[0x1E695DEC8];
  numberCopy2 = number;
  v8 = [v6 arrayWithObjects:&numberCopy count:1];

  LOBYTE(error) = [(CXCallDirectoryStore *)self containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:v8 error:error, numberCopy, v12];
  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:(id)array error:(id *)error
{
  arrayCopy = array;
  v7 = -[CXCallDirectoryStore _sqlStringListPlaceholderStringWithNumberOfEntries:](self, "_sqlStringListPlaceholderStringWithNumberOfEntries:", [arrayCopy count]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT EXISTS(SELECT 1 FROM PhoneNumberBlockingEntry INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberBlockingEntry.phone_number_id) INNER JOIN Extension ON (Extension.id = PhoneNumberBlockingEntry.extension_id) WHERE (Extension.state = %ld AND PhoneNumber.number IN %@) LIMIT 1)", 4, v7];
  LOBYTE(error) = [(CXCallDirectoryStore *)self _containsBlockingEntryWithSQL:v8 bindings:arrayCopy error:error];

  return error;
}

- (BOOL)_containsBlockingEntryWithSQL:(id)l bindings:(id)bindings error:(id *)error
{
  lCopy = l;
  bindingsCopy = bindings;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  database = [(CXCallDirectoryStore *)self database];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CXCallDirectoryStore__containsBlockingEntryWithSQL_bindings_error___block_invoke;
  v12[3] = &unk_1E7C070C8;
  v12[4] = &v13;
  [database selectSQL:lCopy withBindings:bindingsCopy expectedColumnCount:1 resultRowHandler:v12 error:error];

  LOBYTE(error) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return error;
}

void __69__CXCallDirectoryStore__containsBlockingEntryWithSQL_bindings_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

- (id)firstEnabledBlockingExtensionIdentifierForPhoneNumber:(id)number error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT extension.bundle_id FROM Extension INNER JOIN PhoneNumberBlockingEntry ON PhoneNumberBlockingEntry.extension_id = Extension.id INNER JOIN PhoneNumber ON PhoneNumber.id = PhoneNumberBlockingEntry.phone_number_id WHERE (Extension.state = %ld AND PhoneNumber.number = ?) ORDER BY Extension.priority LIMIT 1", 4];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  database = [(CXCallDirectoryStore *)self database];
  v20[0] = numberCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__CXCallDirectoryStore_firstEnabledBlockingExtensionIdentifierForPhoneNumber_error___block_invoke;
  v13[3] = &unk_1E7C070C8;
  v13[4] = &v14;
  [database selectSQL:v7 withBindings:v9 expectedColumnCount:1 resultRowHandler:v13 error:error];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __84__CXCallDirectoryStore_firstEnabledBlockingExtensionIdentifierForPhoneNumber_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 firstObject];
  v3 = [v6 stringValue];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)firstIdentificationEntryForPhoneNumber:(id)number error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v6 = MEMORY[0x1E695DEC8];
  numberCopy2 = number;
  v8 = [v6 arrayWithObjects:&numberCopy count:1];

  v9 = [(CXCallDirectoryStore *)self _firstIdentificationEntryForSQL:@"SELECT Extension.bundle_id bindings:Label.localized_label FROM Label INNER JOIN PhoneNumberIdentificationEntry ON (Label.id = PhoneNumberIdentificationEntry.label_id) INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberIdentificationEntry.phone_number_id) INNER JOIN Extension ON (Extension.id = PhoneNumberIdentificationEntry.extension_id) WHERE (PhoneNumber.number = ?) ORDER BY Extension.priority LIMIT 1" error:v8, error, numberCopy, v13];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)firstIdentificationEntriesForPhoneNumbers:(id)numbers error:(id *)error
{
  numbersCopy = numbers;
  v7 = -[CXCallDirectoryStore _sqlStringListPlaceholderStringWithNumberOfEntries:](self, "_sqlStringListPlaceholderStringWithNumberOfEntries:", [numbersCopy count]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT Extension.bundle_id, Label.localized_label, PhoneNumber.number FROM Label INNER JOIN PhoneNumberIdentificationEntry ON (Label.id = PhoneNumberIdentificationEntry.label_id) INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberIdentificationEntry.phone_number_id) INNER JOIN Extension ON (Extension.id = PhoneNumberIdentificationEntry.extension_id) WHERE (PhoneNumber.number IN %@) GROUP BY PhoneNumber.number HAVING MIN(Extension.priority)", v7];
  v9 = [(CXCallDirectoryStore *)self _firstIdentificationEntriesForSQL:v8 bindings:numbersCopy error:error];

  return v9;
}

- (id)firstIdentificationEntryForEnabledExtensionWithPhoneNumber:(id)number error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  numberCopy = number;
  v8 = [v6 stringWithFormat:@"SELECT Extension.bundle_id, Label.localized_label FROM Label INNER JOIN PhoneNumberIdentificationEntry ON (Label.id = PhoneNumberIdentificationEntry.label_id) INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberIdentificationEntry.phone_number_id) INNER JOIN Extension ON (Extension.id = PhoneNumberIdentificationEntry.extension_id) WHERE (Extension.state = %ld AND PhoneNumber.number = ?) ORDER BY Extension.priority LIMIT 1", 4];
  v13[0] = numberCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = [(CXCallDirectoryStore *)self _firstIdentificationEntryForSQL:v8 bindings:v9 error:error];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers error:(id *)error
{
  numbersCopy = numbers;
  v7 = -[CXCallDirectoryStore _sqlStringListPlaceholderStringWithNumberOfEntries:](self, "_sqlStringListPlaceholderStringWithNumberOfEntries:", [numbersCopy count]);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT Extension.bundle_id, Label.localized_label, PhoneNumber.number FROM Label INNER JOIN PhoneNumberIdentificationEntry ON (Label.id = PhoneNumberIdentificationEntry.label_id) INNER JOIN PhoneNumber ON (PhoneNumber.id = PhoneNumberIdentificationEntry.phone_number_id) INNER JOIN Extension ON (Extension.id = PhoneNumberIdentificationEntry.extension_id) WHERE (Extension.state = %ld AND PhoneNumber.number IN %@) GROUP BY PhoneNumber.number HAVING MIN(Extension.priority)", 4, v7];
  v9 = [(CXCallDirectoryStore *)self _firstIdentificationEntriesForSQL:v8 bindings:numbersCopy error:error];

  return v9;
}

- (id)_firstIdentificationEntryForSQL:(id)l bindings:(id)bindings error:(id *)error
{
  lCopy = l;
  bindingsCopy = bindings;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CXCallDirectoryStore__firstIdentificationEntryForSQL_bindings_error___block_invoke;
  v13[3] = &unk_1E7C071B8;
  v13[4] = &v14;
  v10 = MEMORY[0x1B8C78C60](v13);
  [(CXCallDirectoryStore *)self _parseIdentificationEntriesForSQL:lCopy bindings:bindingsCopy handler:v10 error:error];
  v11 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)_firstIdentificationEntriesForSQL:(id)l bindings:(id)bindings error:(id *)error
{
  v8 = MEMORY[0x1E695DF90];
  bindingsCopy = bindings;
  lCopy = l;
  dictionary = [v8 dictionary];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__CXCallDirectoryStore__firstIdentificationEntriesForSQL_bindings_error___block_invoke;
  v16[3] = &unk_1E7C071E0;
  v12 = dictionary;
  v17 = v12;
  v13 = MEMORY[0x1B8C78C60](v16);
  LOBYTE(error) = [(CXCallDirectoryStore *)self _parseFirstIdentificationEntriesForSQL:lCopy bindings:bindingsCopy handler:v13 error:error];

  if ((error & 1) == 0)
  {

    v12 = 0;
  }

  v14 = [v12 copy];

  return v14;
}

- (BOOL)_parseFirstIdentificationEntriesForSQL:(id)l bindings:(id)bindings handler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __86__CXCallDirectoryStore__parseFirstIdentificationEntriesForSQL_bindings_handler_error___block_invoke;
  v20 = &unk_1E7C07208;
  selfCopy = self;
  v22 = handlerCopy;
  v11 = handlerCopy;
  bindingsCopy = bindings;
  lCopy = l;
  v14 = MEMORY[0x1B8C78C60](&v17);
  v15 = [(CXCallDirectoryStore *)self database:v17];
  LOBYTE(error) = [v15 selectSQL:lCopy withBindings:bindingsCopy expectedColumnCount:3 transient:1 resultRowHandler:v14 error:error];

  return error;
}

void __86__CXCallDirectoryStore__parseFirstIdentificationEntriesForSQL_bindings_handler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v3 objectAtIndexedSubscript:2];

  v6 = [v5 stringValue];

  v7 = [*(a1 + 32) _storeIdentificationEntryWithExtensionBundleID:v8 localizedLabel:v4];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_parseIdentificationEntriesForSQL:(id)l bindings:(id)bindings handler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __81__CXCallDirectoryStore__parseIdentificationEntriesForSQL_bindings_handler_error___block_invoke;
  v20 = &unk_1E7C07208;
  selfCopy = self;
  v22 = handlerCopy;
  v11 = handlerCopy;
  bindingsCopy = bindings;
  lCopy = l;
  v14 = MEMORY[0x1B8C78C60](&v17);
  v15 = [(CXCallDirectoryStore *)self database:v17];
  LOBYTE(error) = [v15 selectSQL:lCopy withBindings:bindingsCopy expectedColumnCount:2 resultRowHandler:v14 error:error];

  return error;
}

void __81__CXCallDirectoryStore__parseIdentificationEntriesForSQL_bindings_handler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];

  v5 = [*(a1 + 32) _storeIdentificationEntryWithExtensionBundleID:v6 localizedLabel:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_storeIdentificationEntryWithExtensionBundleID:(id)d localizedLabel:(id)label
{
  labelCopy = label;
  dCopy = d;
  v7 = objc_alloc_init(CXCallDirectoryStoreIdentificationEntry);
  [(CXCallDirectoryStoreIdentificationEntry *)v7 setExtensionBundleIdentifier:dCopy];

  [(CXCallDirectoryStoreIdentificationEntry *)v7 setLocalizedLabel:labelCopy];

  return v7;
}

- (id)_sqlStringListPlaceholderStringWithNumberOfEntries:(int64_t)entries
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  if (entries >= 1)
  {
    v5 = entries + 1;
    do
    {
      [v4 addObject:@"?"];
      --v5;
    }

    while (v5 > 1);
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"(%@)", v7];

  return v8;
}

- (id)_sqlValuesListPlaceholderStringWithNumberOfEntries:(int64_t)entries entryString:(id)string
{
  stringCopy = string;
  string = [MEMORY[0x1E696AD60] string];
  if (entries < 2)
  {
    if (entries != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = entries + 1;
    do
    {
      [string appendString:stringCopy];
      [string appendString:{@", "}];
      --v7;
    }

    while (v7 > 2);
  }

  [string appendString:stringCopy];
LABEL_7:

  return string;
}

- (BOOL)vacuumWithError:(id *)error
{
  database = [(CXCallDirectoryStore *)self database];
  LOBYTE(error) = [database vacuumWithError:error];

  return error;
}

+ (void)initializeDatabaseIfNecessaryAtURL:usingTemplateAtURL:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  v4 = v0;
  _os_log_error_impl(&dword_1B47F3000, v1, OS_LOG_TYPE_ERROR, "Error copying database template from URL %@ to URL %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __65__CXCallDirectoryStore_setPrioritizedExtensionIdentifiers_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "Error performing rollback: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __69__CXCallDirectoryStore_addBlockingEntriesWithData_extensionID_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0(&dword_1B47F3000, v0, v1, "Error rolling back from previous error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end