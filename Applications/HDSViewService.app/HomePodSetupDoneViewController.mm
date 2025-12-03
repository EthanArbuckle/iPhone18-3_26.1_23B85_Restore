@interface HomePodSetupDoneViewController
- (_TtC14HDSViewService30HomePodSetupDoneViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation HomePodSetupDoneViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomePodSetupDoneViewController();
  v2 = v3.receiver;
  [(HomePodSetupStereoViewController *)&v3 viewDidLoad];
  [v2 setDismissButtonAction:{0, v3.receiver, v3.super_class}];
}

- (_TtC14HDSViewService30HomePodSetupDoneViewController)initWithContentView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupDoneViewController();
  return [(HomePodSetupStereoViewController *)&v5 initWithContentView:view];
}

@end