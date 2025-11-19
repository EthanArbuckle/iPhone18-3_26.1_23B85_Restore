@interface FlagColorMailboxController
- (CGPoint)iconOffset;
- (FlagColorMailboxController)initWithType:(unint64_t)a3 flagColor:(unint64_t)a4;
- (id)criterion;
- (id)iconTintColor;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unscopedCountPredicate;
@end

@implementation FlagColorMailboxController

- (FlagColorMailboxController)initWithType:(unint64_t)a3 flagColor:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = FlagColorMailboxController;
  result = [(SharedMailboxController *)&v6 initWithType:a3];
  if (result)
  {
    result->_flagColor = a4;
  }

  return result;
}

- (id)unscopedCountPredicate
{
  v2 = [(FlagColorMailboxController *)self flagColor];

  return [EMMessageListItemPredicates predicateForFlagColor:v2];
}

- (id)criterion
{
  v2 = [(FlagColorMailboxController *)self flagColor];

  return [MFMessageCriterion criterionForFlagColor:v2];
}

- (id)mailboxTitle
{
  v2 = [(FlagColorMailboxController *)self flagColor];
  if (v2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10064F200[v2];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100662A88 table:@"Main"];
  }

  return v5;
}

- (id)navigationTitle
{
  v2 = [(FlagColorMailboxController *)self flagColor];
  if (v2 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_10064F238[v2];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100662A88 table:@"Main"];
  }

  return v5;
}

- (id)iconTintColor
{
  v2 = [(FlagColorMailboxController *)self flagColor];

  return [UIColor mf_colorFromFlagColor:v2];
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