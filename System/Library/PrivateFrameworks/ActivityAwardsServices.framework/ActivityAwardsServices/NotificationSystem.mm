@interface NotificationSystem
- (_TtC22ActivityAwardsServices18NotificationSystem)init;
- (void)dealloc;
- (void)notificationSuppressionChanged;
@end

@implementation NotificationSystem

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for NotificationSystem();
  [(NotificationSystem *)&v6 dealloc];
}

- (void)notificationSuppressionChanged
{
  selfCopy = self;
  sub_1DB1163BC();
}

- (_TtC22ActivityAwardsServices18NotificationSystem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end