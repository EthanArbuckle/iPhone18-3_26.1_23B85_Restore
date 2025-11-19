@interface SinglePageViewController
- (NSString)description;
- (_TtC5Books24SinglePageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation SinglePageViewController

- (NSString)description
{
  v2 = self;
  sub_10053B4D4();

  v3 = sub_1007A2214();

  return v3;
}

- (void)loadView
{
  type metadata accessor for AlwaysPassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(SinglePageViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10053B6A4();
}

- (_TtC5Books24SinglePageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end