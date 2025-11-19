@interface EntryMapSheetNavigationController
- (_TtC7Journal33EntryMapSheetNavigationController)initWithCoder:(id)a3;
- (_TtC7Journal33EntryMapSheetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC7Journal33EntryMapSheetNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation EntryMapSheetNavigationController

- (_TtC7Journal33EntryMapSheetNavigationController)initWithCoder:(id)a3
{
  type metadata accessor for EntryMapSheetNavigationController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (_TtC7Journal33EntryMapSheetNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal33EntryMapSheetNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = objc_allocWithZone(type metadata accessor for EntryMapSheetNavigationController.PresentationController());
  v9 = a3;
  v10 = a4;
  v11 = sub_10081172C(v9, a4, a5);

  return v11;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v6 = a3;
  v7 = [v6 traitCollection];
  v8 = sub_1007CF878(v7);

  return v8;
}

@end