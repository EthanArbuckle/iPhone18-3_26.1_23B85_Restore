@interface SCATActionItem
+ (id)fromAction:(int64_t)action;
+ (id)fromSwitch:(id)switch longPress:(BOOL)press;
- (id)description;
@end

@implementation SCATActionItem

+ (id)fromAction:(int64_t)action
{
  v4 = objc_opt_new();
  [v4 setAction:action];

  return v4;
}

+ (id)fromSwitch:(id)switch longPress:(BOOL)press
{
  pressCopy = press;
  switchCopy = switch;
  v6 = objc_opt_new();
  if (pressCopy)
  {
    [v6 setAction:{objc_msgSend(switchCopy, "longPressAction")}];
    [switchCopy longPressShortcutIdentifier];
  }

  else
  {
    [v6 setAction:{objc_msgSend(switchCopy, "action")}];
    [switchCopy shortcutIdentifier];
  }
  v7 = ;

  [v6 setShortcutIdentifier:v7];

  return v6;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SCATActionItem;
  v3 = [(SCATActionItem *)&v8 description];
  v4 = [NSNumber numberWithInteger:[(SCATActionItem *)self action]];
  shortcutIdentifier = [(SCATActionItem *)self shortcutIdentifier];
  v6 = [NSString stringWithFormat:@"%@ action: %@, shortcut: %@", v3, v4, shortcutIdentifier];

  return v6;
}

@end