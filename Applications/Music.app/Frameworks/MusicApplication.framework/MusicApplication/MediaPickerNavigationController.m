@interface MediaPickerNavigationController
- (NSArray)viewControllers;
- (NSString)playActivityFeatureName;
- (_TtC16MusicApplication31MediaPickerNavigationController)init;
- (_TtC16MusicApplication31MediaPickerNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)cancelTapped;
- (void)doneTapped;
- (void)pushViewController:(id)a3 overrideTraitCollection:(id)a4 animated:(BOOL)a5;
- (void)setPlayActivityFeatureName:(id)a3;
- (void)setViewControllers:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)pushViewController:(id)a3 overrideTraitCollection:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_42308C(v8, a4, a5);
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  v5 = [(MediaPickerNavigationController *)&v9 popViewControllerAnimated:v3];
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
  v2 = [(NavigationController *)&v4 viewControllers];

  return v2;
}

- (void)setViewControllers:(id)a3
{
  sub_13C80(0, &qword_DE7500);
  sub_AB9760();
  v5 = a3;
  v6 = self;
  sub_429608();
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(NavigationController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MediaPickerNavigationController *)&v5 viewWillAppear:v3];
  sub_423B2C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_424280();
}

- (NSString)playActivityFeatureName
{
  v2 = self;
  sub_4244A4();

  v3 = sub_AB9260();

  return v3;
}

- (void)setPlayActivityFeatureName:(id)a3
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(MediaPickerNavigationController *)&v4 setPlayActivityFeatureName:a3];
}

- (void)cancelTapped
{
  v2 = self;
  sub_424720();
}

- (void)doneTapped
{
  v2 = self;
  sub_4249C0();
}

- (_TtC16MusicApplication31MediaPickerNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end