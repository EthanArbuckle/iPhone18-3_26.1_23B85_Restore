@interface FMNoLocationViewController
- (_TtC6FindMy26FMNoLocationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)previousSelection;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMNoLocationViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100022610();
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004C338();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100053310();
}

- (void)previousSelection
{
  v2 = self;
  sub_1001459B4();
}

- (_TtC6FindMy26FMNoLocationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end