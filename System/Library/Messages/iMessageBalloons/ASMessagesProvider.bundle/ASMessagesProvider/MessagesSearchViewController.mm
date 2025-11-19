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
  [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] setObscuresBackgroundDuringPresentation:{0, v5.receiver, v5.super_class}];
  v3 = [v2 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [v2 navigationItem];
  [v4 setHidesBackButton:1];
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_5CF00C();
}

@end