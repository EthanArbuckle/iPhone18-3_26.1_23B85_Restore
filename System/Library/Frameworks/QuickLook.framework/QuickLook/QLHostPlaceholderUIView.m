@interface QLHostPlaceholderUIView
- (_TtC9QuickLook23QLHostPlaceholderUIView)initWithCoder:(id)a3;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation QLHostPlaceholderUIView

- (_TtC9QuickLook23QLHostPlaceholderUIView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9QuickLook23QLHostPlaceholderUIView_hostingState;
  v5 = type metadata accessor for HostingState();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_23A7EE044();
  *(&self->super.super.super.isa + v4) = v8;
  result = sub_23A7EED64();
  __break(1u);
  return result;
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23A7AA0CC();
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_23A7AA1C4(a4);
}

@end