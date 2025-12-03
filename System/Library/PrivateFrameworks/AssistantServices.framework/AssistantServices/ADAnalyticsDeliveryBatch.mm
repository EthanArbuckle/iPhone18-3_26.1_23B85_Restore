@interface ADAnalyticsDeliveryBatch
- (ADAnalyticsDeliveryBatch)initWithDeliveryStream:(unint64_t)stream;
- (id)analyticsDictionary;
- (void)markEndTime;
- (void)markStartTime;
@end

@implementation ADAnalyticsDeliveryBatch

- (id)analyticsDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  serverEnvironment = self->_serverEnvironment;
  if (serverEnvironment)
  {
    [v3 setObject:serverEnvironment forKey:@"serverEnvironment"];
  }

  v6 = [NSNumber numberWithUnsignedInteger:self->_deliveryStream];
  [v4 setObject:v6 forKey:@"deliveryStream"];

  v7 = [NSNumber numberWithUnsignedInteger:self->_processedCount];
  [v4 setObject:v7 forKey:@"processed"];

  v8 = [NSNumber numberWithUnsignedInteger:self->_outstandingCount];
  [v4 setObject:v8 forKey:@"outstanding"];

  if (self->_scheduledActivity)
  {
    v9 = @"scheduled";
  }

  else
  {
    v9 = @"opportunistic";
  }

  [v4 setObject:v9 forKey:@"type"];
  endTime = self->_endTime;
  if (endTime && self->_startTime)
  {
    [(NSDate *)endTime timeIntervalSinceDate:?];
    v11 = [NSNumber numberWithDouble:?];
    [v4 setObject:v11 forKey:@"elapsed"];
  }

  v12 = [NSNumber numberWithBool:self->_succeeded];
  [v4 setObject:v12 forKey:@"succeeded"];

  if (!self->_succeeded && [(ADAnalyticsDeliveryBatch *)self hasFailureType])
  {
    v13 = [NSNumber numberWithUnsignedInteger:self->_failureType];
    [v4 setObject:v13 forKey:@"error"];
  }

  if (self->_hasPayloadSize)
  {
    v14 = [NSNumber numberWithUnsignedInteger:self->_payloadSize];
    [v4 setObject:v14 forKey:@"payloadSize"];
  }

  return v4;
}

- (void)markEndTime
{
  v3 = +[NSDate date];
  endTime = self->_endTime;
  self->_endTime = v3;

  _objc_release_x1(v3, endTime);
}

- (void)markStartTime
{
  v3 = +[NSDate date];
  startTime = self->_startTime;
  self->_startTime = v3;

  _objc_release_x1(v3, startTime);
}

- (ADAnalyticsDeliveryBatch)initWithDeliveryStream:(unint64_t)stream
{
  v8.receiver = self;
  v8.super_class = ADAnalyticsDeliveryBatch;
  v4 = [(ADAnalyticsDeliveryBatch *)&v8 init];
  if (v4)
  {
    v5 = +[NSUUID UUID];
    batchIdentifier = v4->_batchIdentifier;
    v4->_batchIdentifier = v5;

    v4->_deliveryStream = stream;
  }

  return v4;
}

@end