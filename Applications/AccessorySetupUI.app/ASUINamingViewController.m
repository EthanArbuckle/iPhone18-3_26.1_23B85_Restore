@interface ASUINamingViewController
- (_TtC16AccessorySetupUI24ASUINamingViewController)initWithContentView:(id)a3;
- (void)textFieldDidChange;
- (void)viewDidLoad;
@end

@implementation ASUINamingViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ASUINamingViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)textFieldDidChange
{
  v2 = self;
  sub_10002B464();
}

- (_TtC16AccessorySetupUI24ASUINamingViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_10002B8AC(a3);

  return v5;
}

@end