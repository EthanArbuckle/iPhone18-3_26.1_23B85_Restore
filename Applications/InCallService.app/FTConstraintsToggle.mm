@interface FTConstraintsToggle
- (UIView)view;
- (void)setUsingSecondaryConstraints:(BOOL)constraints;
- (void)setView:(id)view;
- (void)toggle;
- (void)updateConstraints;
@end

@implementation FTConstraintsToggle

- (UIView)view
{
  v2 = sub_1001D6D7C();

  return v2;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1001D6DE8(view);
}

- (void)setUsingSecondaryConstraints:(BOOL)constraints
{
  selfCopy = self;
  sub_1001D71D4(constraints);
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_1001D721C();
}

- (void)toggle
{
  selfCopy = self;
  sub_1001D73F0();
}

@end