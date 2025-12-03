@interface _AXUIRootWindow
- (id)_accessibilityElementCommunityIdentifier;
- (id)accessibilityLabel;
- (id)description;
@end

@implementation _AXUIRootWindow

- (id)_accessibilityElementCommunityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  [(_AXUIRootWindow *)self windowLevel];
  return [v2 stringWithFormat:@"AXUIServer-%f", v3];
}

- (id)accessibilityLabel
{
  rootViewController = [(_AXUIRootWindow *)self rootViewController];
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
  v7.super_class = _AXUIRootWindow;
  v3 = [(_AXUIRootWindow *)&v7 description];
  accessibilityIdentifier = [(_AXUIRootWindow *)self accessibilityIdentifier];
  v5 = [v3 stringByAppendingFormat:@" AXID: %@", accessibilityIdentifier];

  return v5;
}

@end