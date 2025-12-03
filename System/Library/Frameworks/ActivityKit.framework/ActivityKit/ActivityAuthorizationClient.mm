@interface ActivityAuthorizationClient
- (void)activityAuthorizationDidChangeWithOptions:(id)options;
- (void)activityAuthorizationLevelDidChangeForBundleIdentifier:(id)identifier authorizationCount:(id)count;
- (void)frequentUpdatesAuthorizationDidChangeWithOptions:(id)options;
@end

@implementation ActivityAuthorizationClient

- (void)activityAuthorizationLevelDidChangeForBundleIdentifier:(id)identifier authorizationCount:(id)count
{
  v6 = sub_1A2D08444();
  v8 = v7;
  countCopy = count;
  selfCopy = self;
  sub_1A2CBA2E8(v6, v8, countCopy);
}

- (void)activityAuthorizationDidChangeWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  v6 = sub_1A2D07F44();
  v8 = v7;

  v9 = sub_1A2D07F24();
  sub_1A2CB57EC(v9, v11);

  v10[0] = v11[0];
  v10[1] = v11[1];
  sub_1A2CBA8CC(v10);

  sub_1A2C55840(v6, v8);
}

- (void)frequentUpdatesAuthorizationDidChangeWithOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  v5 = sub_1A2D07F44();
  v7 = v6;

  sub_1A2CBAA88();
  sub_1A2C55840(v5, v7);
}

@end