@interface EditButtonSolarium
- (_TtC7Measure18EditButtonSolarium)init;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)editBegan;
- (void)editCancelled;
- (void)editEnded;
- (void)setEditEnabled:(BOOL)a3;
- (void)setIsInputEnabled:(BOOL)a3;
@end

@implementation EditButtonSolarium

- (void)setEditEnabled:(BOOL)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled);
  *(&self->super.isa + OBJC_IVAR____TtC7Measure18EditButtonSolarium_editEnabled) = a3;
  if (v4 != a3)
  {
    v5 = a3;
    v7 = self;
    v6 = 0.5;
    if (v5)
    {
      v6 = 1.0;
    }

    sub_10013833C(v6);
  }
}

- (void)setIsInputEnabled:(BOOL)a3
{
  v4 = self;
  sub_1001375FC(a3);
}

- (void)editBegan
{
  v2 = self;
  sub_100137CE4();
}

- (void)editEnded
{
  v2 = self;
  sub_100137ECC();
}

- (void)editCancelled
{
  v2 = self;
  sub_1001380FC();
}

- (_TtC7Measure18EditButtonSolarium)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100138890();

  return v9;
}

@end