@interface QLAccessoryContainerView
- (_TtC9QuickLook24QLAccessoryContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation QLAccessoryContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_23A7A6FA8();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for QLAccessoryContainerView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(QLAccessoryContainerView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_23A7A3798(0, &qword_27DFA9450, 0x277D75D18);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_23A7EEC24();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC9QuickLook24QLAccessoryContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_leftConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_rightConstraint) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QLAccessoryContainerView();
  return [(QLAccessoryContainerView *)&v8 initWithFrame:x, y, width, height];
}

@end