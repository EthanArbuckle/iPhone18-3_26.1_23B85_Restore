@interface ARGeoTrackingStatus
+ (id)initialStatus;
- (ARGeoTrackingStatus)initWithCoder:(id)coder;
- (ARGeoTrackingStatus)initWithGeoTrackingState:(int64_t)state accuracy:(int64_t)accuracy stateReason:(int64_t)reason failureReasons:(int64_t)reasons;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualPrivate:(id)private;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARGeoTrackingStatus

+ (id)initialStatus
{
  v2 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:1 accuracy:0 stateReason:0 failureReasons:0];

  return v2;
}

- (ARGeoTrackingStatus)initWithGeoTrackingState:(int64_t)state accuracy:(int64_t)accuracy stateReason:(int64_t)reason failureReasons:(int64_t)reasons
{
  v11.receiver = self;
  v11.super_class = ARGeoTrackingStatus;
  result = [(ARGeoTrackingStatus *)&v11 init];
  if (result)
  {
    result->_state = state;
    result->_accuracy = accuracy;
    result->_stateReason = reason;
    result->_failureReasons = reasons;
  }

  return result;
}

- (BOOL)isEqualPrivate:(id)private
{
  privateCopy = private;
  if ([(ARGeoTrackingStatus *)self isEqual:privateCopy])
  {
    v5 = privateCopy;
    failureReasons = [(ARGeoTrackingStatus *)self failureReasons];
    failureReasons2 = [v5 failureReasons];

    v8 = failureReasons == failureReasons2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  if (result)
  {
    v5 = result;
    v6 = [v5 initWithGeoTrackingState:-[ARGeoTrackingStatus state](self accuracy:"state") stateReason:-[ARGeoTrackingStatus accuracy](self failureReasons:{"accuracy"), -[ARGeoTrackingStatus stateReason](self, "stateReason"), -[ARGeoTrackingStatus failureReasons](self, "failureReasons")}];

    return v6;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    state = [(ARGeoTrackingStatus *)self state];
    if (state == [(ARGeoTrackingStatus *)v6 state]&& (v8 = [(ARGeoTrackingStatus *)self accuracy], v8 == [(ARGeoTrackingStatus *)v6 accuracy]))
    {
      stateReason = [(ARGeoTrackingStatus *)self stateReason];
      v10 = stateReason == [(ARGeoTrackingStatus *)v6 stateReason];
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

- (ARGeoTrackingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"ARGeoTrackingStatus_state"];
  v6 = [coderCopy decodeIntegerForKey:@"ARGeoTrackingStatus_accuracy"];
  v7 = [coderCopy decodeIntegerForKey:@"ARGeoTrackingStatus_stateReason"];
  v8 = [coderCopy decodeIntForKey:@"ARGeoTrackingStatus_failureReasons"];

  v9 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:v5 accuracy:v6 stateReason:v7 failureReasons:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ARGeoTrackingStatus state](self forKey:{"state"), @"ARGeoTrackingStatus_state"}];
  [coderCopy encodeInteger:-[ARGeoTrackingStatus accuracy](self forKey:{"accuracy"), @"ARGeoTrackingStatus_accuracy"}];
  [coderCopy encodeInteger:-[ARGeoTrackingStatus stateReason](self forKey:{"stateReason"), @"ARGeoTrackingStatus_stateReason"}];
  [coderCopy encodeInteger:-[ARGeoTrackingStatus failureReasons](self forKey:{"failureReasons"), @"ARGeoTrackingStatus_failureReasons"}];
}

@end