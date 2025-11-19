@interface NSString(MKServerFormattedString_Convenience)
- (MKServerFormattedString)mkServerFormattedString;
@end

@implementation NSString(MKServerFormattedString_Convenience)

- (MKServerFormattedString)mkServerFormattedString
{
  if ([a1 length])
  {
    v2 = [a1 _geo_serverFormattedString];
    v3 = [MKServerFormattedString alloc];
    v4 = objc_alloc_init(MKServerFormattedStringParameters);
    v5 = [(MKServerFormattedString *)v3 initWithGeoServerString:v2 parameters:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end