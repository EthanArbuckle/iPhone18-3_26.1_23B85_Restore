@interface RadioSourcesButton
- (_TtC5Media18RadioSourcesButton)initWithCoder:(id)a3;
- (_TtC5Media18RadioSourcesButton)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)updateConfiguration;
@end

@implementation RadioSourcesButton

- (_TtC5Media18RadioSourcesButton)initWithCoder:(id)a3
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000043D0(v6, v7);
}

- (void)updateConfiguration
{
  v2 = self;
  sub_100004574();
}

- (_TtC5Media18RadioSourcesButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end