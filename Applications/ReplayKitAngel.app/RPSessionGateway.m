@interface RPSessionGateway
+ (_TtC14ReplayKitAngel16RPSessionGateway)shared;
- (_TtC14ReplayKitAngel16RPSessionGateway)init;
- (void)startReadyBanner;
- (void)stopReadyBanner;
@end

@implementation RPSessionGateway

+ (_TtC14ReplayKitAngel16RPSessionGateway)shared
{
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  v3 = qword_10006B980;

  return v3;
}

- (void)startReadyBanner
{
  v2 = self;
  sub_10002BE44();
}

- (void)stopReadyBanner
{
  v2 = self;
  sub_10002C024();
}

- (_TtC14ReplayKitAngel16RPSessionGateway)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType) = 5;
  v2 = (&self->super.isa + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID);
  *v2 = 0;
  v2[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for RPSessionGateway();
  return [(RPSessionGateway *)&v4 init];
}

@end