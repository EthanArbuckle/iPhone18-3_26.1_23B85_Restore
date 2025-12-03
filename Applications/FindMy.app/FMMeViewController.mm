@interface FMMeViewController
- (void)handleClearTags;
- (void)handleLocationLabel;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)update;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMMeViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100083648(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100085074(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100085A20(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100085EA4(change);
}

- (void)update
{
  selfCopy = self;
  sub_100083A2C();
}

- (void)handleLocationLabel
{
  selfCopy = self;
  sub_100087AE8();
}

- (void)handleClearTags
{
  selfCopy = self;
  sub_10008893C();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v9 = &type metadata for SolariumFeatureFlag;
  v10 = sub_10000BD04();
  scrollCopy = scroll;
  selfCopy = self;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if (v7)
  {
    sub_10027C124(scrollCopy);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10008A010();
}

@end