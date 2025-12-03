@interface FMChooseMapViewController
- (_TtC6FindMy25FMChooseMapViewController)initWithCoder:(id)coder;
- (void)traitCollectionDidChange:(id)change;
- (void)viewLayoutMarginsDidChange;
@end

@implementation FMChooseMapViewController

- (_TtC6FindMy25FMChooseMapViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  changeCopy = change;
  [(FMBaseContentViewController *)&v8 traitCollectionDidChange:changeCopy];
  view = [*&v4[OBJC_IVAR____TtC6FindMy25FMChooseMapViewController_hostingViewController] view];
  if (view)
  {
    v7 = view;
    [view invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(FMChooseMapViewController *)&v3 viewLayoutMarginsDidChange];
  [*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] layoutIfNeeded];
}

@end