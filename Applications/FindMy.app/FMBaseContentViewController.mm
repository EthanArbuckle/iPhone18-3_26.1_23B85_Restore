@interface FMBaseContentViewController
- (_TtC6FindMy27FMBaseContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMBaseContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10027D2F4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10027D518();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_10027C124(scrollCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10027D6EC(change);
}

- (_TtC6FindMy27FMBaseContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end