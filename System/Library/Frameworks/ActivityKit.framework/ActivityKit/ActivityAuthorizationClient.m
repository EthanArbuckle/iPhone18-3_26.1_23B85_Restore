@interface ActivityAuthorizationClient
- (void)activityAuthorizationDidChangeWithOptions:(id)a3;
- (void)activityAuthorizationLevelDidChangeForBundleIdentifier:(id)a3 authorizationCount:(id)a4;
- (void)frequentUpdatesAuthorizationDidChangeWithOptions:(id)a3;
@end

@implementation ActivityAuthorizationClient

- (void)activityAuthorizationLevelDidChangeForBundleIdentifier:(id)a3 authorizationCount:(id)a4
{
  v6 = sub_1A2D08444();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_1A2CBA2E8(v6, v8, v9);
}

- (void)activityAuthorizationDidChangeWithOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A2D07F44();
  v8 = v7;

  v9 = sub_1A2D07F24();
  sub_1A2CB57EC(v9, v11);

  v10[0] = v11[0];
  v10[1] = v11[1];
  sub_1A2CBA8CC(v10);

  sub_1A2C55840(v6, v8);
}

- (void)frequentUpdatesAuthorizationDidChangeWithOptions:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1A2D07F44();
  v7 = v6;

  sub_1A2CBAA88();
  sub_1A2C55840(v5, v7);
}

@end