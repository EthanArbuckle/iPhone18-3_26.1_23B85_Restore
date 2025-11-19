@interface HeadphoneConnectViewController
- (_TtC20HeadphoneProxService30HeadphoneConnectViewController)initWithContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005733C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10005773C(a3);
}

- (_TtC20HeadphoneProxService30HeadphoneConnectViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_1000620D8(a3);

  return v5;
}

@end