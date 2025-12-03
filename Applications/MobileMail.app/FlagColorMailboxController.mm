@interface FlagColorMailboxController
- (CGPoint)iconOffset;
- (FlagColorMailboxController)initWithType:(unint64_t)type flagColor:(unint64_t)color;
- (id)criterion;
- (id)iconTintColor;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unscopedCountPredicate;
@end

@implementation FlagColorMailboxController

- (FlagColorMailboxController)initWithType:(unint64_t)type flagColor:(unint64_t)color
{
  v6.receiver = self;
  v6.super_class = FlagColorMailboxController;
  result = [(SharedMailboxController *)&v6 initWithType:type];
  if (result)
  {
    result->_flagColor = color;
  }

  return result;
}

- (id)unscopedCountPredicate
{
  flagColor = [(FlagColorMailboxController *)self flagColor];

  return [EMMessageListItemPredicates predicateForFlagColor:flagColor];
}

- (id)criterion
{
  flagColor = [(FlagColorMailboxController *)self flagColor];

  return [MFMessageCriterion criterionForFlagColor:flagColor];
}

- (id)mailboxTitle
{
  flagColor = [(FlagColorMailboxController *)self flagColor];
  if (flagColor > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10064F200[flagColor];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100662A88 table:@"Main"];
  }

  return v5;
}

- (id)navigationTitle
{
  flagColor = [(FlagColorMailboxController *)self flagColor];
  if (flagColor > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10064F238[flagColor];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100662A88 table:@"Main"];
  }

  return v5;
}

- (id)iconTintColor
{
  flagColor = [(FlagColorMailboxController *)self flagColor];

  return [UIColor mf_colorFromFlagColor:flagColor];
}

- (CGPoint)iconOffset
{
  v2 = 3.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end