@interface DownloadButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation DownloadButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(DownloadButtonAccessibility *)self safeIntegerForKey:@"accessibilityState"];
  if (v2 > 6)
  {
    v3 = 0;
  }

  else
  {
    v3 = accessibilityLocalizedString(off_29F2F6820[v2]);
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  if ([(DownloadButtonAccessibility *)self safeIntegerForKey:@"accessibilityState"]== 5)
  {
    v5.receiver = self;
    v5.super_class = DownloadButtonAccessibility;
    return *MEMORY[0x29EDC7F70] | [(DownloadButtonAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7FA8];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = DownloadButtonAccessibility;
    return *MEMORY[0x29EDC7F70] | [(DownloadButtonAccessibility *)&v4 accessibilityTraits];
  }
}

@end