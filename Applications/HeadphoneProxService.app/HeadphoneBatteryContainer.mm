@interface HeadphoneBatteryContainer
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HeadphoneBatteryContainer

- (void)updateConstraints
{
  selfCopy = self;
  sub_1000AE24C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1000AF228(change);
}

@end