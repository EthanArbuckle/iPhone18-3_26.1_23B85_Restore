@interface AXUIWindow
- (id)_accessibilityElementCommunityIdentifier;
- (id)accessibilityLabel;
- (id)description;
@end

@implementation AXUIWindow

- (id)_accessibilityElementCommunityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  [(AXUIWindow *)self windowLevel];
  return [v2 stringWithFormat:@"AXUIServer-%f", v3];
}

- (id)accessibilityLabel
{
  rootViewController = [(AXUIWindow *)self rootViewController];
  childViewControllers = [rootViewController childViewControllers];

  if ([childViewControllers count] <= 1 && objc_msgSend(childViewControllers, "count") == 1)
  {
    firstObject = [childViewControllers firstObject];
    title = [firstObject title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AXUIWindow;
  v3 = [(AXUIWindow *)&v7 description];
  accessibilityIdentifier = [(AXUIWindow *)self accessibilityIdentifier];
  v5 = [v3 stringByAppendingFormat:@" AXID: %@", accessibilityIdentifier];

  return v5;
}

@end