@interface FMBaseContentViewController
- (_TtC6FindMy27FMBaseContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation FMBaseContentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10027D2F4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10027D518();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10027C124(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10027D6EC(a3);
}

- (_TtC6FindMy27FMBaseContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end