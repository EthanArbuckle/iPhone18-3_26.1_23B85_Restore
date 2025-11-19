@interface AMSSQLiteConnectionOptions
- (AMSSQLiteConnectionOptions)initWithCoder:(id)a3;
- (AMSSQLiteConnectionOptions)initWithDatabasePath:(id)a3;
- (BOOL)applyToDatabase:(sqlite3 *)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSSQLiteConnectionOptions

- (AMSSQLiteConnectionOptions)initWithDatabasePath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSSQLiteConnectionOptions;
  v5 = [(AMSSQLiteConnectionOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    [(AMSSQLiteConnectionOptions *)v5 setCacheSizeWithNumberOfKilobytes:128];
  }

  return v5;
}

- (BOOL)applyToDatabase:(sqlite3 *)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRAGMA cache_size=%ld", -[AMSSQLiteConnectionOptions cacheSize](self, "cacheSize")];
  v8 = sqlite3_exec(a3, [v7 UTF8String], 0, 0, 0);
  if (v8)
  {
    v9 = AMSSQLiteCreateError(-7703, @"Error Setting Cache Size", v8, 0);
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }
  }

  else if (self->_checkpointingOnCloseDisabled)
  {
    v10 = sqlite3_db_config(a3, 1006, 1, 0);
    if (v10)
    {
      v11 = v10;
      v12 = +[AMSLogConfig sharedConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        v16 = v11;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "Failed to disable checkpointing on close: %{public}d", buf, 8u);
      }
    }
  }

  return v8 == 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = self->_cacheSize;
    v7 = [(NSString *)self->_databasePath copyWithZone:a3];
    v8 = *(v6 + 16);
    *(v6 + 16) = v7;

    v9 = [(NSString *)self->_protectionType copyWithZone:a3];
    v10 = *(v6 + 32);
    *(v6 + 32) = v9;

    *(v6 + 8) = self->_readOnly;
  }

  return v6;
}

- (AMSSQLiteConnectionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSSQLiteConnectionOptions;
  v5 = [(AMSSQLiteConnectionOptions *)&v13 init];
  if (v5)
  {
    v5->_cacheSize = [v4 decodeIntegerForKey:@"c"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
    v7 = [v6 copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pt"];
    v10 = [v9 copy];
    protectionType = v5->_protectionType;
    v5->_protectionType = v10;

    v5->_readOnly = [v4 decodeBoolForKey:@"ro"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cacheSize = self->_cacheSize;
  v5 = a3;
  [v5 encodeInteger:cacheSize forKey:@"c"];
  [v5 encodeObject:self->_databasePath forKey:@"p"];
  [v5 encodeObject:self->_protectionType forKey:@"pt"];
  [v5 encodeBool:self->_readOnly forKey:@"ro"];
}

@end