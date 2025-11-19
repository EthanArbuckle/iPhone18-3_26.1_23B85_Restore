@interface HeadphoneRepairViewController
- (_TtC20HeadphoneProxService29HeadphoneRepairViewController)initWithContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HeadphoneRepairViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneRepairViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000A81EC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000A8604(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1000A98E8();
}

- (_TtC20HeadphoneProxService29HeadphoneRepairViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_1000A9C54(a3);

  return v5;
}

@end