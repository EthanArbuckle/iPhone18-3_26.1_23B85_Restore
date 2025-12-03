@interface PageButtonsControl
- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)scrollByButton:(id)button;
@end

@implementation PageButtonsControl

- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithCoder:(id)coder
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

- (void)scrollByButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_29960C();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(PageButtonsControl *)&v13 hitTest:eventCopy withEvent:x, y];
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

- (_TtC23ShelfKitCollectionViews18PageButtonsControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end