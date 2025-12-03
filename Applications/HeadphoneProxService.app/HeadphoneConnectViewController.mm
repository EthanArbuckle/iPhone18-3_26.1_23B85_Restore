@interface HeadphoneConnectViewController
- (_TtC20HeadphoneProxService30HeadphoneConnectViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HeadphoneConnectViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneConnectViewController();
  v2 = v3.receiver;
  [(HeadphoneConnectViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005733C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10005773C(disappear);
}

- (_TtC20HeadphoneProxService30HeadphoneConnectViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_1000620D8(view);

  return v5;
}

@end