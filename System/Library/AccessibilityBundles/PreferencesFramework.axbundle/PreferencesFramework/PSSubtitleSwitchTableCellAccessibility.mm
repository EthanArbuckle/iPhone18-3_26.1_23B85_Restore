@interface PSSubtitleSwitchTableCellAccessibility
- (id)accessibilityValue;
@end

@implementation PSSubtitleSwitchTableCellAccessibility

- (id)accessibilityValue
{
  v3 = [(PSSubtitleSwitchTableCellAccessibility *)self safeValueForKey:@"control"];
  v4 = v3;
  if (v3 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v4, "window"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(PSSubtitleSwitchTableCellAccessibility *)self safeValueForKey:@"control"];
    v7 = [v6 accessibilityValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end