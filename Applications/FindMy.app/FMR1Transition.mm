@interface FMR1Transition
- (_TtC6FindMy14FMR1Transition)init;
@end

@implementation FMR1Transition

- (_TtC6FindMy14FMR1Transition)init
{
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_duration) = 0x3FE0000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_delay) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_springDamping) = 0x407F400000000000;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_initialSpringVelocity) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_animationOptions) = 0x20000;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_mass) = 0x4008000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC6FindMy14FMR1Transition_stiffness) = 0x408F400000000000;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMR1Transition();
  return [(FMR1Transition *)&v3 init];
}

@end