@interface EditButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC7Measure10EditButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)editBegan;
- (void)editCancelled;
- (void)editEnded;
- (void)setEditEnabled:(BOOL)enabled;
- (void)setIsInputEnabled:(BOOL)enabled;
@end

@implementation EditButton

- (void)setEditEnabled:(BOOL)enabled
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) = enabled;
  if (v4 != enabled)
  {
    enabledCopy = enabled;
    selfCopy = self;
    v6 = 0.5;
    if (enabledCopy)
    {
      v6 = 1.0;
    }

    sub_1000838A8(v6);
  }
}

- (void)setIsInputEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_10008321C(enabled);
}

- (void)editBegan
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1)
  {
    selfCopy = self;
    sub_100083288();
  }
}

- (void)editEnded
{
  selfCopy = self;
  sub_100083468();
}

- (void)editCancelled
{
  selfCopy = self;
  sub_100083730();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(EditButton *)selfCopy bounds];
  v11 = CGRectInset(v10, -30.0, -30.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (_TtC7Measure10EditButton)initWithFrame:(CGRect)frame
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
  v9 = sub_100083CAC();

  return v9;
}

@end