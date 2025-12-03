@interface WidgetEventListener
- (_TtC27AppStoreComponentsDaemonKit19WidgetEventListener)init;
- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l;
@end

@implementation WidgetEventListener

- (void)eventServiceListener:(id)listener didReceiveOpenEventWithURL:(id)l
{
  v6 = sub_22273731C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227372FC();
  listenerCopy = listener;
  selfCopy = self;
  sub_2227336F0(v10);

  (*(v7 + 8))(v10, v6);
}

- (_TtC27AppStoreComponentsDaemonKit19WidgetEventListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end