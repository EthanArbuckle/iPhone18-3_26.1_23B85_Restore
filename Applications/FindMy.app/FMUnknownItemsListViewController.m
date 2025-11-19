@interface FMUnknownItemsListViewController
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMUnknownItemsListViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FMUnknownItemsListViewController();
  [(FMBaseContentViewController *)&v2 viewDidLoad];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1004E72B8(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1004E7470(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMUnknownItemsListViewController();
  v4 = v5.receiver;
  [(FMUnknownItemsListViewController *)&v5 viewDidDisappear:v3];
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

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004E7888(v4);
}

@end