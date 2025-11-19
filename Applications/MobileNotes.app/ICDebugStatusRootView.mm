@interface ICDebugStatusRootView
- (_TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView)initWithCoder:(id)a3;
- (_TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handlePanGesture:(id)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)updateColors;
- (void)updateInitialPosition;
@end

@implementation ICDebugStatusRootView

- (_TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(ICDebugStatusRootView *)&v13 hitTest:v8 withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    if ([v9 isDescendantOfView:{*&v7[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container], v13.receiver, v13.super_class}])
    {
      goto LABEL_5;
    }
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = [Strong hitTest:v8 withEvent:{x, y}];

LABEL_5:

  return v10;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ICDebugStatusRootView *)&v3 layoutSubviews];
  sub_100234AFC();
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ICDebugStatusRootView *)&v3 safeAreaInsetsDidChange];
  if (v2[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart + 16] == 1)
  {
    sub_10023480C();
  }
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100234E48(v4);
}

- (void)updateColors
{
  v2 = self;
  sub_1002349FC();
}

- (void)updateInitialPosition
{
  v2 = self;
  sub_10023480C();
}

- (_TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end