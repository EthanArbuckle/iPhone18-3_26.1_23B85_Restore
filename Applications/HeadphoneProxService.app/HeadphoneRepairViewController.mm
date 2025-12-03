@interface HeadphoneRepairViewController
- (_TtC20HeadphoneProxService29HeadphoneRepairViewController)initWithContentView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000A81EC(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000A8604(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1000A98E8();
}

- (_TtC20HeadphoneProxService29HeadphoneRepairViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_1000A9C54(view);

  return v5;
}

@end