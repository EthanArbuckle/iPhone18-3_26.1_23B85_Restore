@interface AppleSilicon
- (BOOL)isRosettaAvailable;
- (BOOL)isSupportEnabled;
- (_TtC11AppStoreKit12AppleSilicon)init;
- (void)setIsSupportEnabled:(BOOL)a3;
@end

@implementation AppleSilicon

- (BOOL)isSupportEnabled
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSupportEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC11AppStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isRosettaAvailable
{
  v2 = self;
  v3 = AppleSilicon.isRosettaAvailable.getter();

  return v3 & 1;
}

- (_TtC11AppStoreKit12AppleSilicon)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end