@interface DATestQueueEntry
+ (id)queueEntryWithAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTestQueueEntry:(id)a3;
- (DATestQueueEntry)initWithAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (unint64_t)hash;
@end

@implementation DATestQueueEntry

+ (id)queueEntryWithAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithAttributes:v10 parameters:v9 completion:v8];

  return v11;
}

- (DATestQueueEntry)initWithAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = DATestQueueEntry;
  v12 = [(DATestQueueEntry *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_attributes, a3);
    objc_storeStrong(&v13->_parameters, a4);
    v14 = objc_retainBlock(v11);
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(DATestQueueEntry *)self attributes];
  v3 = [v2 identifier];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqualToTestQueueEntry:(id)a3
{
  v4 = a3;
  v5 = [(DATestQueueEntry *)self attributes];
  v6 = [v5 identifier];
  v7 = [v4 attributes];

  v8 = [v7 identifier];
  v9 = [v6 isEqual:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DATestQueueEntry *)self isEqualToTestQueueEntry:v4];
  }

  return v5;
}

@end