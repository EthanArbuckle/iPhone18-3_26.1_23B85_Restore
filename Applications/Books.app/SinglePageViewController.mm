@interface SinglePageViewController
- (NSString)description;
- (_TtC5Books24SinglePageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation SinglePageViewController

- (NSString)description
{
  selfCopy = self;
  sub_10053B4D4();

  v3 = sub_1007A2214();

  return v3;
}

- (void)loadView
{
  type metadata accessor for AlwaysPassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(SinglePageViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10053B6A4();
}

- (_TtC5Books24SinglePageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end