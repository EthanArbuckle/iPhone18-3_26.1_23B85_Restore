@interface FMMeViewController
- (void)handleClearTags;
- (void)handleLocationLabel;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)update;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMMeViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100083648(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100085074(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100085A20(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100085EA4(a3);
}

- (void)update
{
  v2 = self;
  sub_100083A2C();
}

- (void)handleLocationLabel
{
  v2 = self;
  sub_100087AE8();
}

- (void)handleClearTags
{
  v2 = self;
  sub_10008893C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v9 = &type metadata for SolariumFeatureFlag;
  v10 = sub_10000BD04();
  v5 = a3;
  v6 = self;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if (v7)
  {
    sub_10027C124(v5);
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10008A010();
}

@end