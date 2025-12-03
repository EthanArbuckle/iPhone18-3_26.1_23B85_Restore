@interface LoadingPageViewController
- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LoadingPageViewController *)&v5 viewWillAppear:appearCopy];
  sub_270A78();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(LoadingPageViewController *)&v5 viewWillDisappear:disappearCopy];
  if (*&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews25LoadingPageViewController_loadTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FBD88);
    sub_30C478();
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_270E28();
}

- (_TtC23ShelfKitCollectionViews25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end