@interface OnboardingOngoingCycleFactorsDiffableTableViewAdaptor
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation OnboardingOngoingCycleFactorsDiffableTableViewAdaptor

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_29DF3BDDC(0, &qword_2A181CC60, MEMORY[0x29EDC7818]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v10 - v8;
  sub_29E2C0984();

  sub_29DF3BE4C();

  (*(v7 + 8))(v9, v6);
}

@end