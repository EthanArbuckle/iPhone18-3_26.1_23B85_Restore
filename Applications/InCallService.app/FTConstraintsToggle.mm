@interface FTConstraintsToggle
- (UIView)view;
- (void)setUsingSecondaryConstraints:(BOOL)a3;
- (void)setView:(id)a3;
- (void)toggle;
- (void)updateConstraints;
@end

@implementation FTConstraintsToggle

- (UIView)view
{
  v2 = sub_1001D6D7C();

  return v2;
}

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1001D6DE8(a3);
}

- (void)setUsingSecondaryConstraints:(BOOL)a3
{
  v4 = self;
  sub_1001D71D4(a3);
}

- (void)updateConstraints
{
  v2 = self;
  sub_1001D721C();
}

- (void)toggle
{
  v2 = self;
  sub_1001D73F0();
}

@end