@interface EditButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC7Measure10EditButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)editBegan;
- (void)editCancelled;
- (void)editEnded;
- (void)setEditEnabled:(BOOL)a3;
- (void)setIsInputEnabled:(BOOL)a3;
@end

@implementation EditButton

- (void)setEditEnabled:(BOOL)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) = a3;
  if (v4 != a3)
  {
    v5 = a3;
    v7 = self;
    v6 = 0.5;
    if (v5)
    {
      v6 = 1.0;
    }

    sub_1000838A8(v6);
  }
}

- (void)setIsInputEnabled:(BOOL)a3
{
  v4 = self;
  sub_10008321C(a3);
}

- (void)editBegan
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_editEnabled) == 1 && *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure10EditButton_isInputEnabled) == 1)
  {
    v3 = self;
    sub_100083288();
  }
}

- (void)editEnded
{
  v2 = self;
  sub_100083468();
}

- (void)editCancelled
{
  v2 = self;
  sub_100083730();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(EditButton *)v6 bounds];
  v11 = CGRectInset(v10, -30.0, -30.0);
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v11, v9);

  return v7;
}

- (_TtC7Measure10EditButton)initWithFrame:(CGRect)a3
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
  v9 = sub_100083CAC();

  return v9;
}

@end