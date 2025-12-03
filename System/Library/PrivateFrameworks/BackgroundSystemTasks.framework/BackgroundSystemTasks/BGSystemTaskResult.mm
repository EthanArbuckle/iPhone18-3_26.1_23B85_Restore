@interface BGSystemTaskResult
- (BGSystemTaskResult)initWithIdentifier:(id)identifier consumptionCount:(unint64_t)count;
- (BGSystemTaskResult)initWithIdentifier:(id)identifier cumulativeProductionCount:(unint64_t)count;
- (id)asDASActivityResult;
@end

@implementation BGSystemTaskResult

- (BGSystemTaskResult)initWithIdentifier:(id)identifier cumulativeProductionCount:(unint64_t)count
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResult;
  v8 = [(BGSystemTaskResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_count = count;
  }

  return v9;
}

- (BGSystemTaskResult)initWithIdentifier:(id)identifier consumptionCount:(unint64_t)count
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResult;
  v8 = [(BGSystemTaskResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_count = count;
  }

  return v9;
}

- (id)asDASActivityResult
{
  v2 = [objc_alloc(MEMORY[0x1E699A490]) initWithIdentifier:self->_identifier count:self->_count];

  return v2;
}

@end