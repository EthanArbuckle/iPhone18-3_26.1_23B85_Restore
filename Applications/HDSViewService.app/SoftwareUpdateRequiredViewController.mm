@interface SoftwareUpdateRequiredViewController
- (_TtC14HDSViewService36SoftwareUpdateRequiredViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation SoftwareUpdateRequiredViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10005F7C4();
}

- (_TtC14HDSViewService36SoftwareUpdateRequiredViewController)initWithContentView:(id)a3
{
  ObjectType = swift_getObjectType();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService36SoftwareUpdateRequiredViewController_offsetIcon] = 1;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SoftwareUpdateRequiredViewController *)&v7 initWithContentView:a3];
}

@end