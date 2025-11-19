@interface WFPublicEventsHelper
+ (_TtC9ActionKit20WFPublicEventsHelper)shared;
- (BOOL)eventsEnabled;
- (id)getAllEvents;
- (id)getNSDateComponentsForEvent:(id)a3;
- (id)getNSDateComponentsForEvent:(id)a3 year:(int64_t)a4;
- (id)getYearsFor:(id)a3;
@end

@implementation WFPublicEventsHelper

+ (_TtC9ActionKit20WFPublicEventsHelper)shared
{
  v2 = sub_23DF19BE8();

  return v2;
}

- (id)getAllEvents
{
  v2 = self;
  sub_23DF1AA7C();

  type metadata accessor for WFPublicEvent();
  v3 = sub_23E1FDDCC();

  return v3;
}

- (id)getNSDateComponentsForEvent:(id)a3 year:(int64_t)a4
{
  v6 = sub_23E1FDC1C();
  v8 = v7;
  v9 = self;
  v10 = sub_23DF1C4A4(v6, v8, a4);

  return v10;
}

- (id)getNSDateComponentsForEvent:(id)a3
{
  v4 = sub_23E1FDC1C();
  v6 = v5;
  v7 = self;
  v8 = sub_23DF1C5F0(v4, v6);

  return v8;
}

- (id)getYearsFor:(id)a3
{
  sub_23E1FDC1C();
  v4 = self;
  sub_23DF1C730();

  v5 = sub_23E1FDDCC();

  return v5;
}

- (BOOL)eventsEnabled
{
  v2 = self;
  v3 = sub_23DF1D1B4();

  return v3;
}

@end