@interface APSPayloadMessageStatsCounts
- (APSPayloadMessageStatsCounts)init;
- (void)_appendPrettyStatusToStatusPrinter:(id)a3 time:(double)a4 type:(id)a5 direction:(id)a6;
- (void)appendPrettyStatusToStatusPrinter:(id)a3 total:(BOOL)a4 direction:(id)a5;
- (void)countTopic:(id)a3 now:(double)a4;
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

- (void)countTopic:(id)a3 now:(double)a4
{
  total = self->_total;
  v7 = a3;
  [(APSPayloadMessageStatsCount *)total countTopic:v7 now:a4];
  [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState countTopic:v7 now:a4];
}

- (void)_appendPrettyStatusToStatusPrinter:(id)a3 time:(double)a4 type:(id)a5 direction:(id)a6
{
  if (a4 != 0.0)
  {
    v10 = a3;
    v11 = [NSString stringWithFormat:@"last %@ wake %@ push", a5, a6];
    [v10 appendDescription:v11 timeIntervalValue:a4];
  }
}

- (void)appendPrettyStatusToStatusPrinter:(id)a3 total:(BOOL)a4 direction:(id)a5
{
  v6 = a4;
  v23 = a3;
  v8 = a5;
  if ([(APSPayloadMessageStatsCount *)self->_total count])
  {
    if (v6)
    {
      v9 = @"total %@ push notifications";
    }

    else
    {
      v9 = @"%@ push notifications";
    }

    v10 = [NSString stringWithFormat:v9, v8];
    [v23 appendDescription:v10 unsignedIntegerValue:{-[APSPayloadMessageStatsCount count](self->_total, "count")}];
    v11 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState fullWake];
    v12 = [v11 count];

    v13 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState darkWake];
    v14 = [v13 count];

    v15 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState unknown];
    v16 = [v15 count];

    [v23 pushIndent];
    [v23 appendDescription:@"previous hour" unsignedIntegerValue:{-[APSPayloadMessageStatsCount sumOfBucketType:](self->_total, "sumOfBucketType:", 0)}];
    [v23 appendDescription:@"previous day" unsignedIntegerValue:{-[APSPayloadMessageStatsCount sumOfBucketType:](self->_total, "sumOfBucketType:", 1)}];
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

      [v23 appendDescription:v18 stringValue:v17];

      v20 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState fullWake];
      [v20 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:v23 time:@"full" type:v8 direction:?];

      v21 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState darkWake];
      [v21 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:v23 time:@"dark" type:v8 direction:?];

      v22 = [(APSPayloadMessageStatsCountsByWakeState *)self->_byWakeState unknown];
      [v22 lastMessageTime];
      [(APSPayloadMessageStatsCounts *)self _appendPrettyStatusToStatusPrinter:v23 time:@"unknown" type:v8 direction:?];
    }

    else
    {
      if (v6)
      {
        [NSString stringWithFormat:@"last %@ push notification", v8];
      }

      else
      {
        [NSString stringWithFormat:@"last %@ push", v8];
      }
      v19 = ;

      [(APSPayloadMessageStatsCount *)self->_total lastMessageTime];
      [v23 appendDescription:v19 timeIntervalValue:?];
      v10 = v19;
    }

    [v23 popIndent];
  }
}

- (void)prepareForDarkWake
{
  byWakeState = self->_byWakeState;
  v3 = [(APSPayloadMessageStatsCountsByWakeState *)byWakeState darkWake];
  [(APSPayloadMessageStatsCountsByWakeState *)byWakeState moveUnknownToDestination:v3];
}

- (void)prepareForFullWake
{
  byWakeState = self->_byWakeState;
  v3 = [(APSPayloadMessageStatsCountsByWakeState *)byWakeState fullWake];
  [(APSPayloadMessageStatsCountsByWakeState *)byWakeState moveUnknownToDestination:v3];
}

@end