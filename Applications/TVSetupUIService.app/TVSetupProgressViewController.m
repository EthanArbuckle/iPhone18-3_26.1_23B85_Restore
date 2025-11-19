@interface TVSetupProgressViewController
- (_TtC16TVSetupUIService29TVSetupProgressViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation TVSetupProgressViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100006730();
}

- (_TtC16TVSetupUIService29TVSetupProgressViewController)initWithContentView:(id)a3
{
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC16TVSetupUIService29TVSetupProgressViewController_deviceModelCode] = 256;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVSetupProgressViewController();
  return [(TVSetupProgressViewController *)&v5 initWithContentView:a3];
}

@end