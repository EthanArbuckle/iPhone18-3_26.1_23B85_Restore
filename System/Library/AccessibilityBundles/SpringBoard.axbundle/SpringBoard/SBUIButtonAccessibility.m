@interface SBUIButtonAccessibility
- (CGRect)accessibilityFrame;
@end

@implementation SBUIButtonAccessibility

- (CGRect)accessibilityFrame
{
  v16.receiver = self;
  v16.super_class = SBUIButtonAccessibility;
  [(SBUIButtonAccessibility *)&v16 accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(SBUIButtonAccessibility *)self accessibilityIdentifier];
  if (([v11 isEqualToString:@"AppSwitcherPlay"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"AppSwitcherPrev") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"AppSwitcherNext"))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectInset(v17, 0.0, -10.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

@end