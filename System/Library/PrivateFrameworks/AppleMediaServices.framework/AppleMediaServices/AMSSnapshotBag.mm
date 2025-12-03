@interface AMSSnapshotBag
- (AMSSnapshotBag)init;
- (AMSSnapshotBag)initWithCoder:(id)coder;
- (AMSSnapshotBag)initWithData:(id)data;
- (BOOL)isExpired;
- (BOOL)isLoaded;
- (NSDate)expirationDate;
- (NSDictionary)dictionary;
- (NSString)profile;
- (NSString)profileVersion;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)URLForKey:(id)key account:(id)account;
- (id)_initWithDataSource:(id)source;
- (id)_initWithSnapshotBag:(id)bag;
- (id)arrayForKey:(id)key;
- (id)compile;
- (id)dictionaryForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (void)createSnapshotWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSSnapshotBag

- (NSDate)expirationDate
{
  dataSource = [(AMSSnapshotBag *)self dataSource];
  expirationDate = [dataSource expirationDate];

  return expirationDate;
}

- (NSString)profile
{
  dataSource = [(AMSSnapshotBag *)self dataSource];
  profile = [dataSource profile];

  return profile;
}

- (NSString)profileVersion
{
  dataSource = [(AMSSnapshotBag *)self dataSource];
  profileVersion = [dataSource profileVersion];

  return profileVersion;
}

- (AMSSnapshotBag)init
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedBagConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v8 = objc_opt_class();
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: The default initializer is deprecated and should not be used", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = AMSSnapshotBag;
  return [(AMSSnapshotBag *)&v6 init];
}

- (AMSSnapshotBag)initWithData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v13 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v13];

  v7 = v13;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedBagConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchived snapshot bag. Error: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v11 = v6;
  }

  return v11;
}

- (id)_initWithDataSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = AMSSnapshotBag;
  v6 = [(AMSSnapshotBag *)&v10 init];
  if (v6)
  {
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v6->_creationDate;
    v6->_creationDate = date;

    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

- (id)_initWithSnapshotBag:(id)bag
{
  bagCopy = bag;
  v13.receiver = self;
  v13.super_class = AMSSnapshotBag;
  v5 = [(AMSSnapshotBag *)&v13 init];
  if (v5)
  {
    dataSource = [bagCopy dataSource];
    v7 = [dataSource copy];
    dataSource = v5->_dataSource;
    v5->_dataSource = v7;

    creationDate = [bagCopy creationDate];
    v10 = [creationDate copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
  }

  return v5;
}

- (BOOL)isExpired
{
  expirationDate = [(AMSSnapshotBag *)self expirationDate];
  if (expirationDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = [date compare:expirationDate] == 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isLoaded
{
  dataSource = [(AMSSnapshotBag *)self dataSource];
  isLoaded = [dataSource isLoaded];

  return isLoaded;
}

- (id)compile
{
  v3 = objc_alloc_init(AMSMutablePromise);
  dataSource = [(AMSSnapshotBag *)self dataSource];

  if (dataSource)
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
    profile = [(AMSSnapshotBag *)self profile];
    profileVersion = [(AMSSnapshotBag *)self profileVersion];
    v7 = [AMSBag bagForProfile:profile profileVersion:profileVersion];

    completionHandlerAdapter = [(AMSPromise *)v3 completionHandlerAdapter];
    [v7 createSnapshotWithCompletion:completionHandlerAdapter];
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

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:0];

  return v7;
}

- (id)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:1];

  return v7;
}

- (void)createSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__AMSSnapshotBag_createSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E73B36D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (id)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:2];

  return v7;
}

- (id)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:3];

  return v7;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:4];

  return v7;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:5];

  return v7;
}

- (id)URLForKey:(id)key account:(id)account
{
  accountCopy = account;
  keyCopy = key;
  v8 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v10 = [(AMSBagValue *)v8 initWithDataSource:dataSource key:keyCopy valueType:5 account:accountCopy];

  return v10;
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [AMSBagValue alloc];
  dataSource = [(AMSSnapshotBag *)self dataSource];
  v7 = [(AMSBagValue *)v5 initWithDataSource:dataSource key:keyCopy valueType:6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  creationDate = [(AMSSnapshotBag *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationData"];

  dataSource = [(AMSSnapshotBag *)self dataSource];
  [coderCopy encodeObject:dataSource forKey:@"dataSource"];
}

- (AMSSnapshotBag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSSnapshotBag;
  v5 = [(AMSSnapshotBag *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationData"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    dataSource = v5->_dataSource;
    v5->_dataSource = v8;
  }

  return v5;
}

- (NSDictionary)dictionary
{
  dataSource = [(AMSSnapshotBag *)self dataSource];
  dictionary = [dataSource dictionary];

  return dictionary;
}

@end