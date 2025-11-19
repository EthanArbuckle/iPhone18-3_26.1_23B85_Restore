@interface FMCardTransition
- (_TtC6FindMy16FMCardTransition)init;
@end

@implementation FMCardTransition

- (_TtC6FindMy16FMCardTransition)init
{
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration) = 0x3FE0000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy16FMCardTransition_delay) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy16FMCardTransition_springDamping) = 0x3FECCCCCCCCCCCCDLL;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy16FMCardTransition_initialSpringVelocity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy16FMCardTransition_animationOptions) = 0x20000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMCardTransition();
  return [(FMCardTransition *)&v3 init];
}

@end