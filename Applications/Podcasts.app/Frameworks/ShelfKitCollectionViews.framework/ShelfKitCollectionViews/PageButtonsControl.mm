@interface PageButtonsControl
- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)scrollByButton:(id)a3;
@end

@implementation PageButtonsControl

- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_scrollHandle);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews18PageButtonsControl_availableScrollDirections;
  *(&self->super.super.super.super.isa + v4) = sub_177210(&off_3B4BF0);
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)scrollByButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29960C();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(PageButtonsControl *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_124C4(0, &qword_3FBD90);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_30D098();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end