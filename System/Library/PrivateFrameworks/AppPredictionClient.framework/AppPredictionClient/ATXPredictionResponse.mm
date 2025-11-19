@interface ATXPredictionResponse
- (ATXPredictionResponse)initWithUUID:(id)a3;
@end

@implementation ATXPredictionResponse

- (ATXPredictionResponse)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXPredictionResponse;
  v6 = [(ATXPredictionResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

@end