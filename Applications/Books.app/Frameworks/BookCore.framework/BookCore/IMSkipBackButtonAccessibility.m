@interface IMSkipBackButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation IMSkipBackButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(IMSkipBackButtonAccessibility *)self imaxValueForKey:@"_timeInterval"];
  [v2 doubleValue];
  v4 = v3;

  if (v4 == 0.0)
  {
    v4 = 30.0;
  }

  v5 = objc_opt_new();
  [v5 setUnitsStyle:3];
  [v5 setAllowedUnits:128];
  v6 = [v5 stringFromTimeInterval:v4];
  v7 = IMAXLocString(@"skip.back %@");
  v8 = [NSString stringWithFormat:v7, v6];

  return v8;
}

@end