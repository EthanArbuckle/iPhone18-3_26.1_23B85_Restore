@interface QLHostPlaceholderUIView
- (_TtC9QuickLook23QLHostPlaceholderUIView)initWithCoder:(id)coder;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation QLHostPlaceholderUIView

- (_TtC9QuickLook23QLHostPlaceholderUIView)initWithCoder:(id)coder
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

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_23A7AA0CC();
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_23A7AA1C4(error);
}

@end