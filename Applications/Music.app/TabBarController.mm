@interface TabBarController
- (NSArray)tabs;
- (_TtC5Music16TabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Music16TabBarController)initWithTabs:(id)tabs;
- (void)setTabs:(id)tabs;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TabBarController

- (void)viewDidLoad
{
  selfCopy = self;
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
  selfCopy = self;
  sub_100062670();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1006BC1DC(appearCopy);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1006BC2E4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_1006BC3E8(disappearCopy);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1006BC4F8(disappear);
}

- (void)setTabs:(id)tabs
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TabBarController *)&v5 setTabs:tabs];
  sub_10003F5A0();
  sub_10003F950();
}

- (_TtC5Music16TabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Music16TabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end