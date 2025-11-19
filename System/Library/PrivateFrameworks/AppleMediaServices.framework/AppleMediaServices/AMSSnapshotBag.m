@interface AMSSnapshotBag
- (AMSSnapshotBag)init;
- (AMSSnapshotBag)initWithCoder:(id)a3;
- (AMSSnapshotBag)initWithData:(id)a3;
- (BOOL)isExpired;
- (BOOL)isLoaded;
- (NSDate)expirationDate;
- (NSDictionary)dictionary;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)URLForKey:(id)a3 account:(id)a4;
- (id)_initWithDataSource:(id)a3;
- (id)_initWithSnapshotBag:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)compile;
- (id)dictionaryForKey:(id)a3;
- (id)doubleForKey:(id)a3;
- (id)integerForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)createSnapshotWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSSnapshotBag

- (NSDate)expirationDate
{
  v2 = [(AMSSnapshotBag *)self dataSource];
  v3 = [v2 expirationDate];

  return v3;
}

- (NSString)profile
{
  v2 = [(AMSSnapshotBag *)self dataSource];
  v3 = [v2 profile];

  return v3;
}

- (NSString)profileVersion
{
  v2 = [(AMSSnapshotBag *)self dataSource];
  v3 = [v2 profileVersion];

  return v3;
}

- (AMSSnapshotBag)init
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBagConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: The default initializer is deprecated and should not be used", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AMSSnapshotBag;
  return [(AMSSnapshotBag *)&v6 init];
}

- (AMSSnapshotBag)initWithData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  v5 = a3;
  v13 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];

  v7 = v13;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedBagConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchived snapshot bag. Error: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_initWithDataSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AMSSnapshotBag;
  v6 = [(AMSSnapshotBag *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    creationDate = v6->_creationDate;
    v6->_creationDate = v7;

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (id)_initWithSnapshotBag:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSSnapshotBag;
  v5 = [(AMSSnapshotBag *)&v13 init];
  if (v5)
  {
    v6 = [v4 dataSource];
    v7 = [v6 copy];
    dataSource = v5->_dataSource;
    v5->_dataSource = v7;

    v9 = [v4 creationDate];
    v10 = [v9 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
  }

  return v5;
}

- (BOOL)isExpired
{
  v2 = [(AMSSnapshotBag *)self expirationDate];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = [v3 compare:v2] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isLoaded
{
  v2 = [(AMSSnapshotBag *)self dataSource];
  v3 = [v2 isLoaded];

  return v3;
}

- (id)compile
{
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = [(AMSSnapshotBag *)self dataSource];

  if (v4)
  {
    if ([(AMSSnapshotBag *)self isMemberOfClass:objc_opt_class()])
    {
      [(AMSMutablePromise *)v3 finishWithResult:self];
      goto LABEL_7;
    }

    v7 = [[AMSSnapshotBag alloc] _initWithSnapshotBag:self];
    [(AMSMutablePromise *)v3 finishWithResult:v7];
  }

  else
  {
    v5 = [(AMSSnapshotBag *)self profile];
    v6 = [(AMSSnapshotBag *)self profileVersion];
    v7 = [AMSBag bagForProfile:v5 profileVersion:v6];

    v8 = [(AMSPromise *)v3 completionHandlerAdapter];
    [v7 createSnapshotWithCompletion:v8];
  }

LABEL_7:
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __25__AMSSnapshotBag_compile__block_invoke;
  v11[3] = &unk_1E73BBEF8;
  v11[4] = self;
  v9 = [(AMSMutablePromise *)v3 thenWithBlock:v11];

  return v9;
}

AMSMutablePromise *__25__AMSSnapshotBag_compile__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v9];
  v3 = v9;
  if (v3)
  {
    v4 = +[AMSLogConfig sharedBagConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      *buf = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive snapshot bag. Error: %{public}@", buf, 0x16u);
    }

    v7 = [AMSPromise promiseWithError:v3];
  }

  else
  {
    v7 = objc_alloc_init(AMSMutablePromise);
    [(AMSMutablePromise *)v7 finishWithResult:v2 error:0];
  }

  return v7;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:1];

  return v7;
}

- (void)createSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSSnapshotBag_createSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__AMSSnapshotBag_createSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [AMSBagFrozenDataSourceBuilder alloc];
  v3 = [*(a1 + 32) dataSource];
  v7 = [(AMSBagFrozenDataSourceBuilder *)v2 initWithFrozenDataSource:v3];

  v4 = [AMSSnapshotBag alloc];
  v5 = [(AMSBagFrozenDataSourceBuilder *)v7 createFrozenDataSource];
  v6 = [(AMSSnapshotBag *)v4 _initWithDataSource:v5];

  (*(*(a1 + 40) + 16))();
}

- (id)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:2];

  return v7;
}

- (id)integerForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:3];

  return v7;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:4];

  return v7;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:5];

  return v7;
}

- (id)URLForKey:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [AMSBagValue alloc];
  v9 = [(AMSSnapshotBag *)self dataSource];
  v10 = [(AMSBagValue *)v8 initWithDataSource:v9 key:v7 valueType:5 account:v6];

  return v10;
}

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [AMSBagValue alloc];
  v6 = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:v6 key:v4 valueType:6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSSnapshotBag *)self creationDate];
  [v4 encodeObject:v5 forKey:@"creationData"];

  v6 = [(AMSSnapshotBag *)self dataSource];
  [v4 encodeObject:v6 forKey:@"dataSource"];
}

- (AMSSnapshotBag)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSSnapshotBag;
  v5 = [(AMSSnapshotBag *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationData"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    dataSource = v5->_dataSource;
    v5->_dataSource = v8;
  }

  return v5;
}

- (NSDictionary)dictionary
{
  v2 = [(AMSSnapshotBag *)self dataSource];
  v3 = [v2 dictionary];

  return v3;
}

@end