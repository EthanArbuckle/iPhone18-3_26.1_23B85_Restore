@interface ATXPredictionRequest
- (ATXPredictionRequest)initWithLimit:(unint64_t)a3 scope:(id)a4;
@end

@implementation ATXPredictionRequest

- (ATXPredictionRequest)initWithLimit:(unint64_t)a3 scope:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXPredictionRequest;
  v8 = [(ATXPredictionRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_limit = a3;
    objc_storeStrong(&v8->_scope, a4);
  }

  return v9;
}

@end