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
  v2 = [(_AXUIRootWindow *)self rootViewController];
  v3 = [v2 childViewControllers];

  if ([v3 count] <= 1 && objc_msgSend(v3, "count") == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 title];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _AXUIRootWindow;
  v3 = [(_AXUIRootWindow *)&v7 description];
  v4 = [(_AXUIRootWindow *)self accessibilityIdentifier];
  v5 = [v3 stringByAppendingFormat:@" AXID: %@", v4];

  return v5;
}

@end