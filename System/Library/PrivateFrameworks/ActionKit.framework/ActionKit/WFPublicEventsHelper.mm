@interface WFPublicEventsHelper
+ (_TtC9ActionKit20WFPublicEventsHelper)shared;
- (BOOL)eventsEnabled;
- (id)getAllEvents;
- (id)getNSDateComponentsForEvent:(id)event;
- (id)getNSDateComponentsForEvent:(id)event year:(int64_t)year;
- (id)getYearsFor:(id)for;
@end

@implementation WFPublicEventsHelper

+ (_TtC9ActionKit20WFPublicEventsHelper)shared
{
  v2 = sub_23DF19BE8();

  return v2;
}

- (id)getAllEvents
{
  selfCopy = self;
  sub_23DF1AA7C();

  type metadata accessor for WFPublicEvent();
  v3 = sub_23E1FDDCC();

  return v3;
}

- (id)getNSDateComponentsForEvent:(id)event year:(int64_t)year
{
  v6 = sub_23E1FDC1C();
  v8 = v7;
  selfCopy = self;
  v10 = sub_23DF1C4A4(v6, v8, year);

  return v10;
}

- (id)getNSDateComponentsForEvent:(id)event
{
  v4 = sub_23E1FDC1C();
  v6 = v5;
  selfCopy = self;
  v8 = sub_23DF1C5F0(v4, v6);

  return v8;
}

- (id)getYearsFor:(id)for
{
  sub_23E1FDC1C();
  selfCopy = self;
  sub_23DF1C730();

  v5 = sub_23E1FDDCC();

  return v5;
}

- (BOOL)eventsEnabled
{
  selfCopy = self;
  v3 = sub_23DF1D1B4();

  return v3;
}

@end