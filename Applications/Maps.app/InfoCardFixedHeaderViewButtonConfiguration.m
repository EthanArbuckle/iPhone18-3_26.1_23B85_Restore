@interface InfoCardFixedHeaderViewButtonConfiguration
- (_TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration)init;
@end

@implementation InfoCardFixedHeaderViewButtonConfiguration

- (_TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration_leadingCardButtonType) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration_trailingCardButtonType) = 1;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(InfoCardFixedHeaderViewButtonConfiguration *)&v5 init];
}

@end