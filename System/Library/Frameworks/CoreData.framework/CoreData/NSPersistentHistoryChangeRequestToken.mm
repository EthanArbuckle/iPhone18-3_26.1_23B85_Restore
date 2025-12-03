@interface NSPersistentHistoryChangeRequestToken
- (NSPersistentHistoryChangeRequestToken)initWithCoder:(id)coder;
- (id)initForRequest:(id)request;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSPersistentHistoryChangeRequestToken

- (id)initForRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = NSPersistentHistoryChangeRequestToken;
  v4 = [(NSPersistentHistoryChangeRequestToken *)&v6 init];
  if (v4)
  {
    v4->_fetchData = [objc_msgSend(request "fetchRequest")];
    v4->_token = [objc_msgSend(request "token")];
    v4->_date = [request date];
    v4->_resultType = [request resultType];
    v4->_delete = [request isDelete];
    v4->_transactionFromToken = [request isFetchTransactionForToken];
    v4->_fetchLimit = [request fetchLimit];
    v4->_fetchOffset = [request fetchOffset];
    v4->_fetchBatchSize = [request fetchBatchSize];
    v4->_percentageOfDB = [request percentageOfDB];
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

- (NSPersistentHistoryChangeRequestToken)initWithCoder:(id)coder
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
    v4->_fetchData = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"fetch"}];
    v4->_token = [coder decodeObjectOfClasses:v9 forKey:@"token"];
    v4->_date = [coder decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    v4->_resultType = [coder decodeIntegerForKey:@"resultType"];
    v4->_delete = [coder decodeBoolForKey:@"delete"];
    v4->_transactionFromToken = [coder decodeBoolForKey:@"transactionFromToken"];
    v4->_fetchLimit = [coder decodeIntegerForKey:@"fetchLimit"];
    v4->_fetchOffset = [coder decodeIntegerForKey:@"fetchOffset"];
    v4->_fetchBatchSize = [coder decodeIntegerForKey:@"fetchBatchSize"];
    v4->_percentageOfDB = [coder decodeInt64ForKey:@"percentageOfDB"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_fetchData forKey:@"fetch"];
  [coder encodeObject:self->_token forKey:@"token"];
  [coder encodeObject:self->_date forKey:@"date"];
  [coder encodeInteger:self->_resultType forKey:@"resultType"];
  [coder encodeBool:self->_delete forKey:@"delete"];
  [coder encodeBool:self->_transactionFromToken forKey:@"transactionFromToken"];
  [coder encodeInteger:self->_fetchLimit forKey:@"fetchLimit"];
  [coder encodeInteger:self->_fetchOffset forKey:@"fetchOffset"];
  [coder encodeInteger:self->_fetchBatchSize forKey:@"fetchBatchSize"];
  percentageOfDB = self->_percentageOfDB;

  [coder encodeInt64:percentageOfDB forKey:@"percentageOfDB"];
}

@end