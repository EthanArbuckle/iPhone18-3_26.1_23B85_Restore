@interface ARGeoTrackingStatus
+ (id)initialStatus;
- (ARGeoTrackingStatus)initWithCoder:(id)a3;
- (ARGeoTrackingStatus)initWithGeoTrackingState:(int64_t)a3 accuracy:(int64_t)a4 stateReason:(int64_t)a5 failureReasons:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualPrivate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARGeoTrackingStatus

+ (id)initialStatus
{
  v2 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:1 accuracy:0 stateReason:0 failureReasons:0];

  return v2;
}

- (ARGeoTrackingStatus)initWithGeoTrackingState:(int64_t)a3 accuracy:(int64_t)a4 stateReason:(int64_t)a5 failureReasons:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = ARGeoTrackingStatus;
  result = [(ARGeoTrackingStatus *)&v11 init];
  if (result)
  {
    result->_state = a3;
    result->_accuracy = a4;
    result->_stateReason = a5;
    result->_failureReasons = a6;
  }

  return result;
}

- (BOOL)isEqualPrivate:(id)a3
{
  v4 = a3;
  if ([(ARGeoTrackingStatus *)self isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARGeoTrackingStatus *)self failureReasons];
    v7 = [v5 failureReasons];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  if (result)
  {
    v5 = result;
    v6 = [v5 initWithGeoTrackingState:-[ARGeoTrackingStatus state](self accuracy:"state") stateReason:-[ARGeoTrackingStatus accuracy](self failureReasons:{"accuracy"), -[ARGeoTrackingStatus stateReason](self, "stateReason"), -[ARGeoTrackingStatus failureReasons](self, "failureReasons")}];

    return v6;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v10 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(ARGeoTrackingStatus *)self state];
    if (v7 == [(ARGeoTrackingStatus *)v6 state]&& (v8 = [(ARGeoTrackingStatus *)self accuracy], v8 == [(ARGeoTrackingStatus *)v6 accuracy]))
    {
      v9 = [(ARGeoTrackingStatus *)self stateReason];
      v10 = v9 == [(ARGeoTrackingStatus *)v6 stateReason];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (ARGeoTrackingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ARGeoTrackingStatus_state"];
  v6 = [v4 decodeIntegerForKey:@"ARGeoTrackingStatus_accuracy"];
  v7 = [v4 decodeIntegerForKey:@"ARGeoTrackingStatus_stateReason"];
  v8 = [v4 decodeIntForKey:@"ARGeoTrackingStatus_failureReasons"];

  v9 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:v5 accuracy:v6 stateReason:v7 failureReasons:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ARGeoTrackingStatus state](self forKey:{"state"), @"ARGeoTrackingStatus_state"}];
  [v4 encodeInteger:-[ARGeoTrackingStatus accuracy](self forKey:{"accuracy"), @"ARGeoTrackingStatus_accuracy"}];
  [v4 encodeInteger:-[ARGeoTrackingStatus stateReason](self forKey:{"stateReason"), @"ARGeoTrackingStatus_stateReason"}];
  [v4 encodeInteger:-[ARGeoTrackingStatus failureReasons](self forKey:{"failureReasons"), @"ARGeoTrackingStatus_failureReasons"}];
}

@end