@interface APSPayloadMessageStatsCounts
- (APSPayloadMessageStatsCounts)init;
- (void)_appendPrettyStatusToStatusPrinter:(id)printer time:(double)time type:(id)type direction:(id)direction;
- (void)appendPrettyStatusToStatusPrinter:(id)printer total:(BOOL)total direction:(id)direction;
- (void)countTopic:(id)topic now:(double)now;
- (void)prepareForDarkWake;
- (void)prepareForFullWake;
@end

@implementation APSPayloadMessageStatsCounts

- (APSPayloadMessageStatsCounts)init
{
  v8.receiver = self;
  v8.super_class = APSPayloadMessageStatsCounts;
  v2 = [(APSPayloadMessageStatsCounts *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(APSPayloadMessageStatsCount);
    total = v2->_total;
    v2->_total = v3;

    v5 = objc_alloc_init(APSPayloadMessageStatsCountsByWakeState);
    byWakeState = v2->_byWakeState;
    v2->_byWakeState = v5;
  }

  return v2;
}

- (void)countTopic:(id)topic now:(double)now
{
  total = self->_total;
  topicCopy = topic;
  [(APSPayloadMessageStatsCount *)total countTopic:topicCopy now:now];
  [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState countTopic:topicCopy now:now];
}

- (void)_appendPrettyStatusToStatusPrinter:(id)printer time:(double)time type:(id)type direction:(id)direction
{
  if (time != 0.0)
  {
    printerCopy = printer;
    direction = [NSString stringWithFormat:@"last %@ wake %@ push", type, direction];
    [printerCopy appendDescription:direction timeIntervalValue:time];
  }
}

- (void)appendPrettyStatusToStatusPrinter:(id)printer total:(BOOL)total direction:(id)direction
{
  totalCopy = total;
  printerCopy = printer;
  directionCopy = direction;
  if ([(APSPayloadMessageStatsCount *)self->_total count])
  {
    if (totalCopy)
    {
      v9 = @"total %@ push notifications";
    }

    else
    {
      v9 = @"%@ push notifications";
    }

    directionCopy = [NSString stringWithFormat:v9, directionCopy];
    [printerCopy appendDescription:directionCopy unsignedIntegerValue:{-[APSPayloadMessageStatsCount count](self->_total, "count")}];
    fullWake = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState fullWake];
    v12 = [fullWake count];

    darkWake = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState darkWake];
    v14 = [darkWake count];

    unknown = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState unknown];
    v16 = [unknown count];

    [printerCopy pushIndent];
    [printerCopy appendDescription:@"previous hour" unsignedIntegerValue:{-[APSPayloadMessageStatsCount sumOfBucketType:](self->_total, "sumOfBucketType:", 0)}];
    [printerCopy appendDescription:@"previous day" unsignedIntegerValue:{-[APSPayloadMessageStatsCount sumOfBucketType:](self->_total, "sumOfBucketType:", 1)}];
    if (v14 | v16)
    {
      if (v16)
      {
        v17 = [NSString stringWithFormat:@"%llu/%llu/%llu", v12, v14, v16];
        v18 = @"full/dark/unknown";
      }

      else
      {
        v17 = [NSString stringWithFormat:@"%llu/%llu", v12, v14];
        v18 = @"full/dark";
      }

      [printerCopy appendDescription:v18 stringValue:v17];

      fullWake2 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState fullWake];
      [fullWake2 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:printerCopy time:@"full" type:directionCopy direction:?];

      darkWake2 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState darkWake];
      [darkWake2 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:printerCopy time:@"dark" type:directionCopy direction:?];

      unknown2 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState unknown];
      [unknown2 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:printerCopy time:@"unknown" type:directionCopy direction:?];
    }

    else
    {
      if (totalCopy)
      {
        [NSString stringWithFormat:@"last %@ push notification", directionCopy];
      }

      else
      {
        [NSString stringWithFormat:@"last %@ push", directionCopy];
      }
      v19 = ;

      [(APSPayloadMessageStatsCount *)self->_total lastMessageTime];
      [printerCopy appendDescription:v19 timeIntervalValue:?];
      directionCopy = v19;
    }

    [printerCopy popIndent];
  }
}

- (void)prepareForDarkWake
{
  byWakeState = self->_byWakeState;
  darkWake = [(APSPayloadMessageStatsCountsByWakeState *)byWakeState darkWake];
  [(APSPayloadMessageStatsCountsByWakeState *)byWakeState moveUnknownToDestination:darkWake];
}

- (void)prepareForFullWake
{
  byWakeState = self->_byWakeState;
  fullWake = [(APSPayloadMessageStatsCountsByWakeState *)byWakeState fullWake];
  [(APSPayloadMessageStatsCountsByWakeState *)byWakeState moveUnknownToDestination:fullWake];
}

@end