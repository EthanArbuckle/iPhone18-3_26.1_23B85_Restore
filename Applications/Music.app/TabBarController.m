@interface TabBarController
- (NSArray)tabs;
- (_TtC5Music16TabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Music16TabBarController)initWithTabs:(id)a3;
- (void)setTabs:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TabBarController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000310C8();
}

- (NSArray)tabs
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  isa = [(TabBarController *)&v5 tabs];
  if (!isa)
  {
    sub_100009F78(0, &qword_101181F70);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100062670();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1006BC1DC(v3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1006BC2E4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1006BC3E8(v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1006BC4F8(a3);
}

- (void)setTabs:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TabBarController *)&v5 setTabs:a3];
  sub_10003F5A0();
  sub_10003F950();
}

- (_TtC5Music16TabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music16TabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end