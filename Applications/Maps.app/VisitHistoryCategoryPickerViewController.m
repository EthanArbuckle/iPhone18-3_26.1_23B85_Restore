@interface VisitHistoryCategoryPickerViewController
- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithCoder:(id)a3;
- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation VisitHistoryCategoryPickerViewController

- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithCoder:(id)a3
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps40VisitHistoryCategoryPickerViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidLoad];
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setPresentedModally:1];

    v5 = [v2 cardPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setTakesAvailableHeight:1];

      sub_100565AE0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end