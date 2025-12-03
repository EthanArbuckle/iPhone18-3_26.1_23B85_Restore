@interface HOSCloudDownloadControl
+ (id)controlTitleFontForControlStatusType:(int64_t)type;
- (CGSize)intrinsicContentSize;
@end

@implementation HOSCloudDownloadControl

+ (id)controlTitleFontForControlStatusType:(int64_t)type
{
  if (type == 5)
  {
    v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
    [v3 scaledValueForValue:11.0];
    [UIFont boldSystemFontOfSize:?];
  }

  else
  {
    v3 = [MPUFontDescriptor fontDescriptorWithTextStyle:1 weight:2];
    [v3 preferredFont];
  }
  v4 = ;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  [(HOSCloudDownloadControl *)self maximumSizeWithPreferredHeight:28.0];
  result.height = v3;
  result.width = v2;
  return result;
}

@end