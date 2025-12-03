@interface _WKWebExtensionSQLiteDatabase
+ (id)_errorWith_WKSQLiteErrorCode:(int)code userInfo:(id)info;
- (BOOL)_openWithFlags:(int)flags vfs:(id)vfs error:(id *)error;
- (BOOL)enableWAL:(id *)l;
- (BOOL)openWithAccessType:(int64_t)type protectionType:(int64_t)protectionType vfs:(id)vfs error:(id *)error;
- (BOOL)reportErrorWithCode:(int)code query:(id)query error:(id *)error;
- (BOOL)reportErrorWithCode:(int)code statement:(sqlite3_stmt *)statement error:(id *)error;
- (_WKWebExtensionSQLiteDatabase)initWithURL:(id)l queue:(id)queue;
- (int)close;
- (void)dealloc;
@end

@implementation _WKWebExtensionSQLiteDatabase

- (_WKWebExtensionSQLiteDatabase)initWithURL:(id)l queue:(id)queue
{
  lCopy = l;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = _WKWebExtensionSQLiteDatabase;
  v8 = [(_WKWebExtensionSQLiteDatabase *)&v13 init];
  if (v8)
  {
    v9 = [lCopy copy];
    url = v8->_url;
    v8->_url = v9;

    objc_storeStrong(&v8->_queue, queue);
    v11 = v8;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _WKWebExtensionSQLiteDatabase;
  [(_WKWebExtensionSQLiteDatabase *)&v2 dealloc];
}

- (int)close
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = sqlite3_close_v2(self->_handle);
  if (v3)
  {
    v4 = qword_1ED640AB8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      lastErrorMessage = [(_WKWebExtensionSQLiteDatabase *)self lastErrorMessage];
      v7 = 138543618;
      v8 = lastErrorMessage;
      v9 = 1024;
      v10 = v3;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Failed to close database: %{public}@ (%d)", &v7, 0x12u);
    }
  }

  else
  {
    self->_handle = 0;
  }

  return v3;
}

- (BOOL)reportErrorWithCode:(int)code query:(id)query error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dispatch_assert_queue_V2(self->_queue);
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  url = self->_url;
  if (url)
  {
    v12 = [(NSURL *)url copy];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A998]];
  }

  if (code)
  {
    v9 = sqlite3_errmsg(self->_handle);
    if (v9)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      [v10 setObject:v13 forKeyedSubscript:@"Message"];
    }
  }

  if (queryCopy)
  {
    v14 = [queryCopy copy];
    [v10 setObject:v14 forKeyedSubscript:@"SQL"];
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.WebKit.SQLite" code:code userInfo:v10];
  v16 = v15;
  if (error)
  {
    v17 = v15;
    *error = v16;
  }

  else
  {
    v18 = qword_1ED640AB8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = WebKit::privacyPreservingDescription(v16, v19);
      v22 = 138543362;
      v23 = v21;
      _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "Unhandled SQLite error: %{public}@", &v22, 0xCu);
    }
  }

  return 0;
}

- (BOOL)reportErrorWithCode:(int)code statement:(sqlite3_stmt *)statement error:(id *)error
{
  v7 = *&code;
  dispatch_assert_queue_V2(self->_queue);
  if (statement && (v9 = sqlite3_expanded_sql(statement)) != 0)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v12 = [(_WKWebExtensionSQLiteDatabase *)self reportErrorWithCode:v7 query:v11 error:error];

    sqlite3_free(v10);
    return v12;
  }

  else
  {

    return [(_WKWebExtensionSQLiteDatabase *)self reportErrorWithCode:v7 query:0 error:error];
  }
}

- (BOOL)enableWAL:(id *)l
{
  v5 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(self, l, @"PRAGMA synchronous = NORMAL");
  if (v5 != 101 && v5 != 0)
  {
    return 0;
  }

  selfCopy = self;
  v8 = @"PRAGMA journal_mode = WAL";
  v9 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:selfCopy query:@"PRAGMA journal_mode = WAL" error:l];
  v10 = v9;
  if (v9)
  {
    handle = [(_WKWebExtensionSQLiteStatement *)v9 handle];
    v12 = selfCopy;
    v13 = sqlite3_step(handle);
    if (v13 == 100 && (v13 = sqlite3_step(handle), v13 == 101))
    {
      v14 = 1;
    }

    else
    {
      [(_WKWebExtensionSQLiteDatabase *)v12 reportErrorWithCode:v13 statement:handle error:l];
      v14 = 0;
    }

    [(_WKWebExtensionSQLiteStatement *)v10 invalidate];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)openWithAccessType:(int64_t)type protectionType:(int64_t)protectionType vfs:(id)vfs error:(id *)error
{
  vfsCopy = vfs;
  if (type > 2)
  {
    v11 = 0x8000;
  }

  else
  {
    v11 = dword_19E702B24[type];
  }

  v12 = v11 | 0x300000;
  v13 = v11 | 0x200000;
  if (protectionType == 3)
  {
    v11 |= 0x100000u;
  }

  if (protectionType == 2)
  {
    v11 = v13;
  }

  if (protectionType >= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = [(_WKWebExtensionSQLiteDatabase *)self _openWithFlags:v14 vfs:vfsCopy error:error];

  return v15;
}

- (BOOL)_openWithFlags:(int)flags vfs:(id)vfs error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  vfsCopy = vfs;
  dispatch_assert_queue_V2(self->_queue);
  url = self->_url;
  v10 = +[_WKWebExtensionSQLiteDatabase inMemoryDatabaseURL];
  LODWORD(url) = [(NSURL *)url isEqual:v10];

  if (url)
  {
    uTF8String = [@"file::memory:" UTF8String];
  }

  else
  {
    v12 = self->_url;
    v13 = +[_WKWebExtensionSQLiteDatabase privateOnDiskDatabaseURL];
    LOBYTE(v12) = [(NSURL *)v12 isEqual:v13];

    if (v12)
    {
      uTF8String = "";
    }

    else
    {
      path = [(NSURL *)self->_url path];
      uTF8String = [path fileSystemRepresentation];

      uRLByDeletingLastPathComponent = [(NSURL *)self->_url URLByDeletingLastPathComponent];
      v17 = WebKit::ensureDirectoryExists(uRLByDeletingLastPathComponent, v16);

      if (!v17)
      {
        if (!error)
        {
          v19 = 0;
          goto LABEL_18;
        }

        v24 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_url;
          v26 = 138477827;
          v27 = v25;
          _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unable to create parent folder for database at path: %{private}@", &v26, 0xCu);
        }

        v22 = [objc_opt_class() _errorWith_WKSQLiteErrorCode:14 userInfo:0];
        goto LABEL_16;
      }
    }
  }

  v18 = sqlite3_open_v2(uTF8String, &self->_handle, flags, [vfsCopy UTF8String]);
  if (!v18)
  {
    v19 = 1;
    goto LABEL_18;
  }

  sqlite3_close_v2(self->_handle);
  v19 = 0;
  self->_handle = 0;
  v21 = (flags & 4) == 0 && v18 == 14;
  if (error && !v21)
  {
    v22 = [objc_opt_class() _errorWith_WKSQLiteErrorCode:v18 userInfo:0];
LABEL_16:
    v19 = 0;
    *error = v22;
  }

LABEL_18:

  return v19;
}

+ (id)_errorWith_WKSQLiteErrorCode:(int)code userInfo:(id)info
{
  infoCopy = info;
  if (code)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(code)];
    v7 = [infoCopy mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:@"Message"];
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.WebKit.SQLite" code:code userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end