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
  activityDataType = [(SAHLShowActivity *)self activityDataType];
  if ([activityDataType isEqualToString:SAHLActivityDataTypeExerciseValue])
  {
    v4 = 2;
  }

  else if ([activityDataType isEqualToString:SAHLActivityDataTypeMoveValue])
  {
    v4 = 1;
  }

  else if ([activityDataType isEqualToString:SAHLActivityDataTypeStandValue])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  activityView = [(SAHLShowActivity *)self activityView];
  v6 = [[STShowActivityRequest alloc] _initWithDataType:v4 view:{objc_msgSend(activityView, "isEqualToString:", SAHLActivityViewDetailValue)}];

  return v6;
}

@end