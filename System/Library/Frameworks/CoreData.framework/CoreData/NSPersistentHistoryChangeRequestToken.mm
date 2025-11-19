@interface NSPersistentHistoryChangeRequestToken
- (NSPersistentHistoryChangeRequestToken)initWithCoder:(id)a3;
- (id)initForRequest:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPersistentHistoryChangeRequestToken

- (id)initForRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSPersistentHistoryChangeRequestToken;
  v4 = [(NSPersistentHistoryChangeRequestToken *)&v6 init];
  if (v4)
  {
    v4->_fetchData = [objc_msgSend(a3 "fetchRequest")];
    v4->_token = [objc_msgSend(a3 "token")];
    v4->_date = [a3 date];
    v4->_resultType = [a3 resultType];
    v4->_delete = [a3 isDelete];
    v4->_transactionFromToken = [a3 isFetchTransactionForToken];
    v4->_fetchLimit = [a3 fetchLimit];
    v4->_fetchOffset = [a3 fetchOffset];
    v4->_fetchBatchSize = [a3 fetchBatchSize];
    v4->_percentageOfDB = [a3 percentageOfDB];
  }

  return v4;
}

- (void)dealloc
{
  self->_fetchData = 0;

  self->_token = 0;
  self->_date = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentHistoryChangeRequestToken;
  [(NSPersistentHistoryChangeRequestToken *)&v3 dealloc];
}

- (NSPersistentHistoryChangeRequestToken)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = NSPersistentHistoryChangeRequestToken;
  v4 = [(NSPersistentHistoryChangeRequestToken *)&v13 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v4->_fetchData = [a3 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"fetch"}];
    v4->_token = [a3 decodeObjectOfClasses:v9 forKey:@"token"];
    v4->_date = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v4->_resultType = [a3 decodeIntegerForKey:@"resultType"];
    v4->_delete = [a3 decodeBoolForKey:@"delete"];
    v4->_transactionFromToken = [a3 decodeBoolForKey:@"transactionFromToken"];
    v4->_fetchLimit = [a3 decodeIntegerForKey:@"fetchLimit"];
    v4->_fetchOffset = [a3 decodeIntegerForKey:@"fetchOffset"];
    v4->_fetchBatchSize = [a3 decodeIntegerForKey:@"fetchBatchSize"];
    v4->_percentageOfDB = [a3 decodeInt64ForKey:@"percentageOfDB"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_fetchData forKey:@"fetch"];
  [a3 encodeObject:self->_token forKey:@"token"];
  [a3 encodeObject:self->_date forKey:@"date"];
  [a3 encodeInteger:self->_resultType forKey:@"resultType"];
  [a3 encodeBool:self->_delete forKey:@"delete"];
  [a3 encodeBool:self->_transactionFromToken forKey:@"transactionFromToken"];
  [a3 encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [a3 encodeInteger:self->_fetchOffset forKey:@"fetchOffset"];
  [a3 encodeInteger:self->_fetchBatchSize forKey:@"fetchBatchSize"];
  percentageOfDB = self->_percentageOfDB;

  [a3 encodeInt64:percentageOfDB forKey:@"percentageOfDB"];
}

@end