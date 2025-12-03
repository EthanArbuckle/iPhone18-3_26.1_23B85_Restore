@interface Analytics
- (_TtC8RoomPlan9Analytics)init;
@end

@implementation Analytics

- (_TtC8RoomPlan9Analytics)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8RoomPlan9Analytics_roomPlanStats) = MEMORY[0x277D84F98];
  v3 = OBJC_IVAR____TtC8RoomPlan9Analytics_bOptInApple;
  sharedInstance = [objc_opt_self() sharedInstance];
  optInApple = [sharedInstance optInApple];

  *(&self->super.isa + v3) = optInApple;
  v7.receiver = self;
  v7.super_class = type metadata accessor for Analytics();
  return [(Analytics *)&v7 init];
}

@end