@interface RadioSourcesButton
- (_TtC5Media18RadioSourcesButton)initWithCoder:(id)coder;
- (_TtC5Media18RadioSourcesButton)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateConfiguration;
@end

@implementation RadioSourcesButton

- (_TtC5Media18RadioSourcesButton)initWithCoder:(id)coder
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_100003210(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC5Media18RadioSourcesButton_subscriptions) = v4;
  swift_weakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1000043D0(contextCopy, coordinatorCopy);
}

- (void)updateConfiguration
{
  selfCopy = self;
  sub_100004574();
}

- (_TtC5Media18RadioSourcesButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end