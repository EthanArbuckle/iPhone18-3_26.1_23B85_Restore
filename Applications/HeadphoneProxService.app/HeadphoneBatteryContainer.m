@interface HeadphoneBatteryContainer
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation HeadphoneBatteryContainer

- (void)updateConstraints
{
  v2 = self;
  sub_1000AE24C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000AF228(a3);
}

@end