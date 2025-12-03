@interface MTRSubscribeParams
- (MTRSubscribeParams)init;
- (MTRSubscribeParams)initWithCoder:(id)coder;
- (MTRSubscribeParams)initWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval;
- (NSNumber)autoResubscribe;
- (NSNumber)keepPreviousSubscriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoResubscribe:(NSNumber *)autoResubscribe;
- (void)setKeepPreviousSubscriptions:(NSNumber *)keepPreviousSubscriptions;
- (void)toReadPrepareParams:(void *)params;
@end

@implementation MTRSubscribeParams

- (MTRSubscribeParams)initWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval
{
  v6 = minInterval;
  v7 = maxInterval;
  v15.receiver = self;
  v15.super_class = MTRSubscribeParams;
  v8 = [(MTRReadParams *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_reportEventsUrgently = 1;
    v8->_replaceExistingSubscriptions = 1;
    v8->_resubscribeAutomatically = 1;
    v10 = [(NSNumber *)v6 copy];
    v11 = v9->_minInterval;
    v9->_minInterval = v10;

    v12 = [(NSNumber *)v7 copy];
    v13 = v9->_maxInterval;
    v9->_maxInterval = v12;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTRSubscribeParams alloc];
  minInterval = [(MTRSubscribeParams *)self minInterval];
  maxInterval = [(MTRSubscribeParams *)self maxInterval];
  v7 = [(MTRSubscribeParams *)v4 initWithMinInterval:minInterval maxInterval:maxInterval];

  [(MTRReadParams *)v7 setFilterByFabric:[(MTRReadParams *)self shouldFilterByFabric]];
  minEventNumber = [(MTRReadParams *)self minEventNumber];
  [(MTRReadParams *)v7 setMinEventNumber:minEventNumber];

  [(MTRReadParams *)v7 setAssumeUnknownAttributesReportable:[(MTRReadParams *)self shouldAssumeUnknownAttributesReportable]];
  [(MTRSubscribeParams *)v7 setReplaceExistingSubscriptions:[(MTRSubscribeParams *)self shouldReplaceExistingSubscriptions]];
  [(MTRSubscribeParams *)v7 setReportEventsUrgently:[(MTRSubscribeParams *)self shouldReportEventsUrgently]];
  [(MTRSubscribeParams *)v7 setResubscribeAutomatically:[(MTRSubscribeParams *)self shouldResubscribeAutomatically]];
  minInterval2 = [(MTRSubscribeParams *)self minInterval];
  [(MTRSubscribeParams *)v7 setMinInterval:minInterval2];

  maxInterval2 = [(MTRSubscribeParams *)self maxInterval];
  [(MTRSubscribeParams *)v7 setMaxInterval:maxInterval2];

  return v7;
}

- (MTRSubscribeParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MTRSubscribeParams;
  v5 = [(MTRReadParams *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    -[MTRSubscribeParams setReplaceExistingSubscriptions:](v5, "setReplaceExistingSubscriptions:", [coderCopy decodeBoolForKey:@"sFilterByFabricKey"]);
    -[MTRSubscribeParams setReportEventsUrgently:](v5, "setReportEventsUrgently:", [coderCopy decodeBoolForKey:@"sMinEventNumberKey"]);
    -[MTRSubscribeParams setResubscribeAutomatically:](v5, "setResubscribeAutomatically:", [coderCopy decodeBoolForKey:@"sAssumeUnknownAttributesReportableKey"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sMinIntervalKeyKey"];
    [(MTRSubscribeParams *)v5 setMinInterval:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sMaxIntervalKeyKey"];
    [(MTRSubscribeParams *)v5 setMaxInterval:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MTRSubscribeParams;
  [(MTRReadParams *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[MTRSubscribeParams shouldReplaceExistingSubscriptions](self forKey:{"shouldReplaceExistingSubscriptions"), @"sFilterByFabricKey"}];
  [coderCopy encodeBool:-[MTRSubscribeParams shouldReportEventsUrgently](self forKey:{"shouldReportEventsUrgently"), @"sMinEventNumberKey"}];
  [coderCopy encodeBool:-[MTRSubscribeParams shouldResubscribeAutomatically](self forKey:{"shouldResubscribeAutomatically"), @"sAssumeUnknownAttributesReportableKey"}];
  minInterval = [(MTRSubscribeParams *)self minInterval];

  if (minInterval)
  {
    minInterval2 = [(MTRSubscribeParams *)self minInterval];
    [coderCopy encodeObject:minInterval2 forKey:@"sMinIntervalKeyKey"];
  }

  maxInterval = [(MTRSubscribeParams *)self maxInterval];

  if (maxInterval)
  {
    maxInterval2 = [(MTRSubscribeParams *)self maxInterval];
    [coderCopy encodeObject:maxInterval2 forKey:@"sMaxIntervalKeyKey"];
  }
}

- (void)toReadPrepareParams:(void *)params
{
  v7.receiver = self;
  v7.super_class = MTRSubscribeParams;
  [(MTRReadParams *)&v7 toReadPrepareParams:?];
  minInterval = [(MTRSubscribeParams *)self minInterval];
  *(params + 54) = [minInterval unsignedShortValue];

  maxInterval = [(MTRSubscribeParams *)self maxInterval];
  *(params + 55) = [maxInterval unsignedShortValue];

  *(params + 112) = ![(MTRSubscribeParams *)self shouldReplaceExistingSubscriptions];
}

- (MTRSubscribeParams)init
{
  v7.receiver = self;
  v7.super_class = MTRSubscribeParams;
  v2 = [(MTRReadParams *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_replaceExistingSubscriptions = 1;
    v2->_resubscribeAutomatically = 1;
    minInterval = v2->_minInterval;
    v2->_minInterval = &unk_284C40670;

    maxInterval = v3->_maxInterval;
    v3->_maxInterval = &unk_284C40688;
  }

  return v3;
}

- (void)setKeepPreviousSubscriptions:(NSNumber *)keepPreviousSubscriptions
{
  v4 = keepPreviousSubscriptions;
  v6 = v4;
  if (v4)
  {
    v5 = [(NSNumber *)v4 BOOLValue]^ 1;
  }

  else
  {
    v5 = 1;
  }

  [(MTRSubscribeParams *)self setReplaceExistingSubscriptions:v5];
}

- (NSNumber)keepPreviousSubscriptions
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(MTRSubscribeParams *)self shouldReplaceExistingSubscriptions]^ 1;

  return [v2 numberWithBool:v3];
}

- (void)setAutoResubscribe:(NSNumber *)autoResubscribe
{
  v4 = autoResubscribe;
  v6 = v4;
  if (v4)
  {
    bOOLValue = [(NSNumber *)v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(MTRSubscribeParams *)self setResubscribeAutomatically:bOOLValue];
}

- (NSNumber)autoResubscribe
{
  v2 = MEMORY[0x277CCABB0];
  shouldResubscribeAutomatically = [(MTRSubscribeParams *)self shouldResubscribeAutomatically];

  return [v2 numberWithBool:shouldResubscribeAutomatically];
}

@end