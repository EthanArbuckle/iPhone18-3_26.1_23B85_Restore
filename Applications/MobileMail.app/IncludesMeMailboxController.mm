@interface IncludesMeMailboxController
- (CGPoint)iconOffset;
- (id)_iconImageWithBackgroundColor:(id)color;
- (id)applicationShortcutIconImage;
- (id)iconImage;
- (id)mailboxTitle;
- (id)navigationTitle;
- (id)unscopedCountPredicate;
- (void)invalidateIcon;
@end

@implementation IncludesMeMailboxController

- (id)unscopedCountPredicate
{
  v2 = +[EMMessageListItemPredicates predicateForIncludesMeMessages];
  v3 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  return v5;
}

- (id)mailboxTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INCLUDES_ME_MAILBOX" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)navigationTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INCLUDES_ME_NAVIGATION_TITLE" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (id)iconImage
{
  v3 = qword_1006DCF20;
  if (!qword_1006DCF20)
  {
    v4 = +[UIColor labelColor];
    v5 = [(IncludesMeMailboxController *)self _iconImageWithBackgroundColor:v4];
    v6 = qword_1006DCF20;
    qword_1006DCF20 = v5;

    v3 = qword_1006DCF20;
  }

  return v3;
}

- (id)applicationShortcutIconImage
{
  v3 = qword_1006DCF28;
  if (!qword_1006DCF28)
  {
    v4 = +[UIColor labelColor];
    v5 = [(IncludesMeMailboxController *)self _iconImageWithBackgroundColor:v4];
    v6 = qword_1006DCF28;
    qword_1006DCF28 = v5;

    v3 = qword_1006DCF28;
  }

  return v3;
}

- (id)_iconImageWithBackgroundColor:(id)color
{
  colorCopy = color;
  v4 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];

  v6 = sub_10014A0BC(2, preferredContentSizeCategory, 36.0);
  v7 = sub_10014A0BC(3, preferredContentSizeCategory, 36.0);
  if (v6 < v7)
  {
    v6 = v7;
  }

  v8 = +[NSBundle mainBundle];
  v9 = sub_100149B0C(2, preferredContentSizeCategory, v8, colorCopy, 0, v6);

  v10 = +[NSBundle mainBundle];
  v11 = sub_100149B0C(3, preferredContentSizeCategory, v10, colorCopy, 0, v6);

  [v9 size];
  v13 = v12;
  [v11 size];
  v24.height = v13 + v14 + 2.0;
  v24.width = v6;
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  [v9 size];
  v16 = v15;
  v18 = v17;
  y = CGRectZero.origin.y;
  [v9 drawInRect:{CGRectZero.origin.x, y, v15, v17}];
  [v9 size];
  [v11 drawInRect:{CGRectZero.origin.x, y + v20 + 2.0, v16, v18}];
  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

- (CGPoint)iconOffset
{
  v2 = 0.0;
  v3 = -2.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)invalidateIcon
{
  v4.receiver = self;
  v4.super_class = IncludesMeMailboxController;
  [(SharedMailboxController *)&v4 invalidateIcon];
  v2 = qword_1006DCF20;
  qword_1006DCF20 = 0;

  v3 = qword_1006DCF28;
  qword_1006DCF28 = 0;
}

@end