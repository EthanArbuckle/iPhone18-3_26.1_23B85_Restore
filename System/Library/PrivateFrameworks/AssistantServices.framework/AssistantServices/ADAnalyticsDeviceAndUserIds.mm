@interface ADAnalyticsDeviceAndUserIds
+ (id)_deviceAggregationIdNamespace;
+ (id)deviceAggregationIdWithDeviceId:(id)id forUserAggregationId:(id)aggregationId;
- (ADAnalyticsDeviceAndUserIds)initWithFixedDeviceId:(id)id withUserEphemeralId:(id)ephemeralId withUserAggregationId:(id)aggregationId withUserAggregationIdEffectiveFrom:(id)from withUserAggregationIdExpiration:(id)expiration;
@end

@implementation ADAnalyticsDeviceAndUserIds

- (ADAnalyticsDeviceAndUserIds)initWithFixedDeviceId:(id)id withUserEphemeralId:(id)ephemeralId withUserAggregationId:(id)aggregationId withUserAggregationIdEffectiveFrom:(id)from withUserAggregationIdExpiration:(id)expiration
{
  idCopy = id;
  ephemeralIdCopy = ephemeralId;
  aggregationIdCopy = aggregationId;
  fromCopy = from;
  expirationCopy = expiration;
  v21.receiver = self;
  v21.super_class = ADAnalyticsDeviceAndUserIds;
  v17 = [(ADAnalyticsDeviceAndUserIds *)&v21 init];
  if (v17)
  {
    v18 = [ADAnalyticsDeviceAndUserIds deviceAggregationIdWithDeviceId:idCopy forUserAggregationId:aggregationIdCopy];
    deviceAggregationId = v17->_deviceAggregationId;
    v17->_deviceAggregationId = v18;

    objc_storeStrong(&v17->_userEphemeralId, ephemeralId);
    objc_storeStrong(&v17->_userAggregationId, aggregationId);
    objc_storeStrong(&v17->_userAggregationIdEffectiveFrom, from);
    objc_storeStrong(&v17->_userAggregationIdExpiration, expiration);
  }

  return v17;
}

+ (id)deviceAggregationIdWithDeviceId:(id)id forUserAggregationId:(id)aggregationId
{
  aggregationIdCopy = aggregationId;
  idCopy = id;
  _deviceAggregationIdNamespace = [self _deviceAggregationIdNamespace];
  v9 = [NSUUID ad_createV5UUIDWithNamespace:_deviceAggregationIdNamespace, aggregationIdCopy, idCopy, 0];

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