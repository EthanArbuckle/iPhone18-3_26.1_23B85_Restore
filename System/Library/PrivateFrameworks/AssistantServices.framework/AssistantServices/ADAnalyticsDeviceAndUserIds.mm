@interface ADAnalyticsDeviceAndUserIds
+ (id)_deviceAggregationIdNamespace;
+ (id)deviceAggregationIdWithDeviceId:(id)a3 forUserAggregationId:(id)a4;
- (ADAnalyticsDeviceAndUserIds)initWithFixedDeviceId:(id)a3 withUserEphemeralId:(id)a4 withUserAggregationId:(id)a5 withUserAggregationIdEffectiveFrom:(id)a6 withUserAggregationIdExpiration:(id)a7;
@end

@implementation ADAnalyticsDeviceAndUserIds

- (ADAnalyticsDeviceAndUserIds)initWithFixedDeviceId:(id)a3 withUserEphemeralId:(id)a4 withUserAggregationId:(id)a5 withUserAggregationIdEffectiveFrom:(id)a6 withUserAggregationIdExpiration:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ADAnalyticsDeviceAndUserIds;
  v17 = [(ADAnalyticsDeviceAndUserIds *)&v21 init];
  if (v17)
  {
    v18 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:v12 forUserAggregationId:v14];
    deviceAggregationId = v17->_deviceAggregationId;
    v17->_deviceAggregationId = v18;

    objc_storeStrong(&v17->_userEphemeralId, a4);
    objc_storeStrong(&v17->_userAggregationId, a5);
    objc_storeStrong(&v17->_userAggregationIdEffectiveFrom, a6);
    objc_storeStrong(&v17->_userAggregationIdExpiration, a7);
  }

  return v17;
}

+ (id)deviceAggregationIdWithDeviceId:(id)a3 forUserAggregationId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _deviceAggregationIdNamespace];
  v9 = [NSUUID ad_createV5UUIDWithNamespace:v8, v6, v7, 0];

  return v9;
}

+ (id)_deviceAggregationIdNamespace
{
  if (qword_1005903F8 != -1)
  {
    dispatch_once(&qword_1005903F8, &stru_100513EA0);
  }

  v3 = qword_1005903F0;

  return v3;
}

@end