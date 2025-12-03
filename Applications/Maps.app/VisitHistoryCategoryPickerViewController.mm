@interface VisitHistoryCategoryPickerViewController
- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithCoder:(id)coder;
- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation VisitHistoryCategoryPickerViewController

- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithCoder:(id)coder
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
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [v2 cardPresentationController];
    if (cardPresentationController2)
    {
      v6 = cardPresentationController2;
      [cardPresentationController2 setTakesAvailableHeight:1];

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

- (_TtC4Maps40VisitHistoryCategoryPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end