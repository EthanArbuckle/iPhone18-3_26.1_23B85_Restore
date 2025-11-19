@interface MTRSubscribeParams
- (MTRSubscribeParams)init;
- (MTRSubscribeParams)initWithCoder:(id)a3;
- (MTRSubscribeParams)initWithMinInterval:(NSNumber *)minInterval maxInterval:(NSNumber *)maxInterval;
- (NSNumber)autoResubscribe;
- (NSNumber)keepPreviousSubscriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAutoResubscribe:(NSNumber *)autoResubscribe;
- (void)setKeepPreviousSubscriptions:(NSNumber *)keepPreviousSubscriptions;
- (void)toReadPrepareParams:(void *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MTRSubscribeParams alloc];
  v5 = [(MTRSubscribeParams *)self minInterval];
  v6 = [(MTRSubscribeParams *)self maxInterval];
  v7 = [(MTRSubscribeParams *)v4 initWithMinInterval:v5 maxInterval:v6];

  [(MTRReadParams *)v7 setFilterByFabric:[(MTRReadParams *)self shouldFilterByFabric]];
  v8 = [(MTRReadParams *)self minEventNumber];
  [(MTRReadParams *)v7 setMinEventNumber:v8];

  [(MTRReadParams *)v7 setAssumeUnknownAttributesReportable:[(MTRReadParams *)self shouldAssumeUnknownAttributesReportable]];
  [(MTRSubscribeParams *)v7 setReplaceExistingSubscriptions:[(MTRSubscribeParams *)self shouldReplaceExistingSubscriptions]];
  [(MTRSubscribeParams *)v7 setReportEventsUrgently:[(MTRSubscribeParams *)self shouldReportEventsUrgently]];
  [(MTRSubscribeParams *)v7 setResubscribeAutomatically:[(MTRSubscribeParams *)self shouldResubscribeAutomatically]];
  v9 = [(MTRSubscribeParams *)self minInterval];
  [(MTRSubscribeParams *)v7 setMinInterval:v9];

  v10 = [(MTRSubscribeParams *)self maxInterval];
  [(MTRSubscribeParams *)v7 setMaxInterval:v10];

  return v7;
}

- (MTRSubscribeParams)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MTRSubscribeParams;
  v5 = [(MTRReadParams *)&v10 initWithCoder:v4];
  if (v5)
  {
    -[MTRSubscribeParams setReplaceExistingSubscriptions:](v5, "setReplaceExistingSubscriptions:", [v4 decodeBoolForKey:@"sFilterByFabricKey"]);
    -[MTRSubscribeParams setReportEventsUrgently:](v5, "setReportEventsUrgently:", [v4 decodeBoolForKey:@"sMinEventNumberKey"]);
    -[MTRSubscribeParams setResubscribeAutomatically:](v5, "setResubscribeAutomatically:", [v4 decodeBoolForKey:@"sAssumeUnknownAttributesReportableKey"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sMinIntervalKeyKey"];
    [(MTRSubscribeParams *)v5 setMinInterval:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sMaxIntervalKeyKey"];
    [(MTRSubscribeParams *)v5 setMaxInterval:v7];

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTRSubscribeParams;
  [(MTRReadParams *)&v9 encodeWithCoder:v4];
  [v4 encodeBool:-[MTRSubscribeParams shouldReplaceExistingSubscriptions](self forKey:{"shouldReplaceExistingSubscriptions"), @"sFilterByFabricKey"}];
  [v4 encodeBool:-[MTRSubscribeParams shouldReportEventsUrgently](self forKey:{"shouldReportEventsUrgently"), @"sMinEventNumberKey"}];
  [v4 encodeBool:-[MTRSubscribeParams shouldResubscribeAutomatically](self forKey:{"shouldResubscribeAutomatically"), @"sAssumeUnknownAttributesReportableKey"}];
  v5 = [(MTRSubscribeParams *)self minInterval];

  if (v5)
  {
    v6 = [(MTRSubscribeParams *)self minInterval];
    [v4 encodeObject:v6 forKey:@"sMinIntervalKeyKey"];
  }

  v7 = [(MTRSubscribeParams *)self maxInterval];

  if (v7)
  {
    v8 = [(MTRSubscribeParams *)self maxInterval];
    [v4 encodeObject:v8 forKey:@"sMaxIntervalKeyKey"];
  }
}

- (void)toReadPrepareParams:(void *)a3
{
  v7.receiver = self;
  v7.super_class = MTRSubscribeParams;
  [(MTRReadParams *)&v7 toReadPrepareParams:?];
  v5 = [(MTRSubscribeParams *)self minInterval];
  *(a3 + 54) = [v5 unsignedShortValue];

  v6 = [(MTRSubscribeParams *)self maxInterval];
  *(a3 + 55) = [v6 unsignedShortValue];

  *(a3 + 112) = ![(MTRSubscribeParams *)self shouldReplaceExistingSubscriptions];
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
    v5 = [(NSNumber *)v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  [(MTRSubscribeParams *)self setResubscribeAutomatically:v5];
}

- (NSNumber)autoResubscribe
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(MTRSubscribeParams *)self shouldResubscribeAutomatically];

  return [v2 numberWithBool:v3];
}

@end