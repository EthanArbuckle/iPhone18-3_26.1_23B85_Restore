@interface BGSystemTaskResult
- (BGSystemTaskResult)initWithIdentifier:(id)a3 consumptionCount:(unint64_t)a4;
- (BGSystemTaskResult)initWithIdentifier:(id)a3 cumulativeProductionCount:(unint64_t)a4;
- (id)asDASActivityResult;
@end

@implementation BGSystemTaskResult

- (BGSystemTaskResult)initWithIdentifier:(id)a3 cumulativeProductionCount:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResult;
  v8 = [(BGSystemTaskResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_count = a4;
  }

  return v9;
}

- (BGSystemTaskResult)initWithIdentifier:(id)a3 consumptionCount:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BGSystemTaskResult;
  v8 = [(BGSystemTaskResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_count = a4;
  }

  return v9;
}

- (id)asDASActivityResult
{
  v2 = [objc_alloc(MEMORY[0x1E699A490]) initWithIdentifier:self->_identifier count:self->_count];

  return v2;
}

@end