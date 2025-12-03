@interface MessagesSearchViewController
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MessagesSearchViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MessagesSearchViewController();
  v2 = v5.receiver;
  [(SearchViewController *)&v5 viewDidLoad];
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController] setObscuresBackgroundDuringPresentation:{0, v5.receiver, v5.super_class}];
  navigationItem = [v2 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  navigationItem2 = [v2 navigationItem];
  [navigationItem2 setHidesBackButton:1];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10038B934();
}

@end