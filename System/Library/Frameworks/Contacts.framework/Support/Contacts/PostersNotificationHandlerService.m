@interface PostersNotificationHandlerService
- (_TtC18ContactsPosterSync33PostersNotificationHandlerService)init;
- (void)dealloc;
@end

@implementation PostersNotificationHandlerService

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for PostersNotificationHandlerService();
  [(PostersNotificationHandlerService *)&v6 dealloc];
}

- (_TtC18ContactsPosterSync33PostersNotificationHandlerService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end