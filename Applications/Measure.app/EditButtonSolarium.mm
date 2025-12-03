@interface EditButtonSolarium
- (_TtC7Measure18EditButtonSolarium)init;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)editBegan;
- (void)editCancelled;
- (void)editEnded;
- (void)setEditEnabled:(BOOL)enabled;
- (void)setIsInputEnabled:(BOOL)enabled;
@end

@implementation EditButtonSolarium

- (void)setEditEnabled:(BOOL)enabled
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled);
  *(&self->super.isa + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) = enabled;
  if (v4 != enabled)
  {
    enabledCopy = enabled;
    selfCopy = self;
    v6 = 0.5;
    if (enabledCopy)
    {
      v6 = 1.0;
    }

    sub_10013833C(v6);
  }
}

- (void)setIsInputEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_1001375FC(enabled);
}

- (void)editBegan
{
  selfCopy = self;
  sub_100137CE4();
}

- (void)editEnded
{
  selfCopy = self;
  sub_100137ECC();
}

- (void)editCancelled
{
  selfCopy = self;
  sub_1001380FC();
}

- (_TtC7Measure18EditButtonSolarium)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_100138890();

  return v9;
}

@end