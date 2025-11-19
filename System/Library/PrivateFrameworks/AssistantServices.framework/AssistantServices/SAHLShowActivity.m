@interface SAHLShowActivity
- (id)_ad_transformedHealthSuccessResponse;
- (id)_ad_transformedShowActivityRequest;
@end

@implementation SAHLShowActivity

- (id)_ad_transformedHealthSuccessResponse
{
  v2 = objc_alloc_init(SACommandSucceeded);

  return v2;
}

- (id)_ad_transformedShowActivityRequest
{
  v3 = [(SAHLShowActivity *)self activityDataType];
  if ([v3 isEqualToString:SAHLActivityDataTypeExerciseValue])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:SAHLActivityDataTypeMoveValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAHLActivityDataTypeStandValue])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SAHLShowActivity *)self activityView];
  v6 = [[STShowActivityRequest alloc] _initWithDataType:v4 view:{objc_msgSend(v5, "isEqualToString:", SAHLActivityViewDetailValue)}];

  return v6;
}

@end