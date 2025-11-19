@interface RKEntityInteractionAccessibilityWrapper
- (NSString)accessibilityDescription;
- (_TtC17RealityFoundation39RKEntityInteractionAccessibilityWrapper)init;
@end

@implementation RKEntityInteractionAccessibilityWrapper

- (NSString)accessibilityDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17RealityFoundation39RKEntityInteractionAccessibilityWrapper_interaction);
  swift_beginAccess();
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = *(v2 + 48);

    v5 = MEMORY[0x1C68F3280](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC17RealityFoundation39RKEntityInteractionAccessibilityWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end