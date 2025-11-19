@interface LoadingPageViewController
- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LoadingPageViewController *)&v5 viewWillAppear:v3];
  sub_270A78();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LoadingPageViewController *)&v5 viewWillDisappear:v3];
  if (*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    sub_30C478();
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_270E28();
}

- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end