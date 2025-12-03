@interface AMSSQLiteConnectionOptions
- (AMSSQLiteConnectionOptions)initWithCoder:(id)coder;
- (AMSSQLiteConnectionOptions)initWithDatabasePath:(id)path;
- (BOOL)applyToDatabase:(sqlite3 *)database error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSSQLiteConnectionOptions

- (AMSSQLiteConnectionOptions)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = AMSSQLiteConnectionOptions;
  v5 = [(AMSSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(AMSSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:128];
  }

  return v5;
}

- (BOOL)applyToDatabase:(sqlite3 *)database error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA cache_size=%ld", -[AMSSQLiteConnectionOptions cacheSize](self, "cacheSize")];
  v8 = sqlite3_exec(database, [v7 UTF8String], 0, 0, 0);
  if (v8)
  {
    v9 = AMSSQLiteCreateError(-7703, @"Error Setting Cache Size", v8, 0);
    if (error)
    {
      v9 = v9;
      *error = v9;
    }
  }

  else if (self->_checkpointingOnCloseDisabled)
  {
    v10 = sqlite3_db_config(database, 1006, 1, 0);
    if (v10)
    {
      v11 = v10;
      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v16 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "Failed to disable checkpointing on close: %{public}d", buf, 8u);
      }
    }
  }

  return v8 == 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:zone];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    v9 = [(NSString *)self->_protectionType copyWithZone:zone];
    v10 = *(v6 + 32);
    *(v6 + 32) = v9;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

- (AMSSQLiteConnectionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AMSSQLiteConnectionOptions;
  v5 = [(AMSSQLiteConnectionOptions *)&v13 init];
  if (v5)
  {
    v5->_cacheSize = [coderCopy decodeIntegerForKey:@"c"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    v7 = [v6 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pt"];
    v10 = [v9 copy];
    protectionType = v5->_protectionType;
    v5->_protectionType = v10;

    v5->_readOnly = [coderCopy decodeBoolForKey:@"ro"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  cacheSize = self->_cacheSize;
  coderCopy = coder;
  [coderCopy encodeInteger:cacheSize forKey:@"c"];
  [coderCopy encodeObject:self->_databasePath forKey:@"p"];
  [coderCopy encodeObject:self->_protectionType forKey:@"pt"];
  [coderCopy encodeBool:self->_readOnly forKey:@"ro"];
}

@end