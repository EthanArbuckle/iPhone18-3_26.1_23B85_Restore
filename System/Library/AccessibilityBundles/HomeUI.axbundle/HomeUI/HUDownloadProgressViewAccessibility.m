@interface HUDownloadProgressViewAccessibility
- (id)accessibilityValue;
@end

@implementation HUDownloadProgressViewAccessibility

- (id)accessibilityValue
{
  [(HUDownloadProgressViewAccessibility *)self safeCGFloatForKey:@"downloadProgress"];

  return AXFormatFloatWithPercentage();
}

@end