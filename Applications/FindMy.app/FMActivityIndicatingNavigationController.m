@interface FMActivityIndicatingNavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMActivityIndicatingNavigationController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v4 = v5.receiver;
  [(FMActivityIndicatingNavigationController *)&v5 viewWillAppear:v3];
  sub_1000CCE4C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v4 = a3;
  v5 = v6.receiver;
  [(FMActivityIndicatingNavigationController *)&v6 traitCollectionDidChange:v4];
  sub_1000CCE4C();
}

- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(FMActivityIndicatingNavigationController *)v5 interactivePopGestureRecognizer];
  if (!v6)
  {

LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  v7 = v6;
  sub_10000905C(0, &qword_1006B0A00);
  v8 = v4;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = *(&v5->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress);

  v11 = v10 ^ 1;
  return v11 & 1;
}

@end