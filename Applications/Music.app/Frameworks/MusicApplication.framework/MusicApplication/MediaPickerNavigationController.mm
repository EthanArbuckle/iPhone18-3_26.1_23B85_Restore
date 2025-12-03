@interface MediaPickerNavigationController
- (NSArray)viewControllers;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication31MediaPickerNavigationController)init;
- (_TtC16MusicApplication31MediaPickerNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)cancelTapped;
- (void)doneTapped;
- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated;
- (void)setPlayActivityFeatureName:(id)name;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MediaPickerNavigationController

- (_TtC16MusicApplication31MediaPickerNavigationController)init
{
  ObjectType = swift_getObjectType();
  v3 = sub_4293F0();
  v4 = objc_allocWithZone(ObjectType);
  v5 = sub_421A38(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)pushViewController:(id)controller overrideTraitCollection:(id)collection animated:(BOOL)animated
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  sub_42308C(controllerCopy, collection, animated);
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = [(MediaPickerNavigationController *)&v9 popViewControllerAnimated:animatedCopy];
  if (v5)
  {
    swift_beginAccess();
    v6 = v5;
    v7 = sub_27B67C(v6);
    swift_endAccess();

    v4 = v7;
  }

  return v5;
}

- (NSArray)viewControllers
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  viewControllers = [(NavigationController *)&v4 viewControllers];

  return viewControllers;
}

- (void)setViewControllers:(id)controllers
{
  sub_13C80(0, &qword_DE7500);
  sub_AB9760();
  controllersCopy = controllers;
  selfCopy = self;
  sub_429608();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(NavigationController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    systemBackgroundColor = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MediaPickerNavigationController *)&v5 viewWillAppear:appearCopy];
  sub_423B2C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_424280();
}

- (NSString)playActivityFeatureName
{
  selfCopy = self;
  sub_4244A4();

  v3 = sub_AB9260();

  return v3;
}

- (void)setPlayActivityFeatureName:(id)name
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(MediaPickerNavigationController *)&v4 setPlayActivityFeatureName:name];
}

- (void)cancelTapped
{
  selfCopy = self;
  sub_424720();
}

- (void)doneTapped
{
  selfCopy = self;
  sub_4249C0();
}

- (_TtC16MusicApplication31MediaPickerNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end