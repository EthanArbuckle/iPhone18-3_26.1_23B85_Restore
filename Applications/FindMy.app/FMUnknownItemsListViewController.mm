@interface FMUnknownItemsListViewController
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMUnknownItemsListViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FMUnknownItemsListViewController();
  [(FMBaseContentViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004E72B8(appear);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004E7470(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUnknownItemsListViewController();
  v4 = v5.receiver;
  [(FMUnknownItemsListViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_1002393B0();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMUnknownItemsListViewController();
  v2 = v3.receiver;
  [(FMBaseContentViewController *)&v3 viewDidLayoutSubviews];
  sub_1004E6754();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1004E7888(scrollCopy);
}

@end