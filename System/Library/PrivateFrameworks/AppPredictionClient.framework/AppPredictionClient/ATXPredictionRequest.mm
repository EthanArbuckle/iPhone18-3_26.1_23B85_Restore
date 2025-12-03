@interface ATXPredictionRequest
- (ATXPredictionRequest)initWithLimit:(unint64_t)limit scope:(id)scope;
@end

@implementation ATXPredictionRequest

- (ATXPredictionRequest)initWithLimit:(unint64_t)limit scope:(id)scope
{
  scopeCopy = scope;
  v11.receiver = self;
  v11.super_class = ATXPredictionRequest;
  v8 = [(ATXPredictionRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = limit;
    objc_storeStrong(&v8->_scope, scope);
  }

  return v9;
}

@end