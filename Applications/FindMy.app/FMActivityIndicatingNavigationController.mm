@interface FMActivityIndicatingNavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMActivityIndicatingNavigationController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  v4 = v5.receiver;
  [(FMActivityIndicatingNavigationController *)&v5 viewWillAppear:appearCopy];
  sub_1000CCE4C();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMActivityIndicatingNavigationController();
  changeCopy = change;
  v5 = v6.receiver;
  [(FMActivityIndicatingNavigationController *)&v6 traitCollectionDidChange:changeCopy];
  sub_1000CCE4C();
}

- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC6FindMy40FMActivityIndicatingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  interactivePopGestureRecognizer = [(FMActivityIndicatingNavigationController *)selfCopy interactivePopGestureRecognizer];
  if (!interactivePopGestureRecognizer)
  {

LABEL_6:
    v11 = 1;
    return v11 & 1;
  }

  v7 = interactivePopGestureRecognizer;
  sub_10000905C(0, &qword_1006B0A00);
  v8 = beginCopy;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy40FMActivityIndicatingNavigationController_operationInProgress);

  v11 = v10 ^ 1;
  return v11 & 1;
}

@end