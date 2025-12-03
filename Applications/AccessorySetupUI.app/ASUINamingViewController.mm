@interface ASUINamingViewController
- (_TtC16AccessorySetupUI24ASUINamingViewController)initWithContentView:(id)view;
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
  selfCopy = self;
  sub_10002B464();
}

- (_TtC16AccessorySetupUI24ASUINamingViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_10002B8AC(view);

  return v5;
}

@end