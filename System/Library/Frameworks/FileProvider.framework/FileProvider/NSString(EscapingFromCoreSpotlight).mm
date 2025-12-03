@interface NSString(EscapingFromCoreSpotlight)
- (id)_fp_escapedStringForSearchQuery;
@end

@implementation NSString(EscapingFromCoreSpotlight)

- (id)_fp_escapedStringForSearchQuery
{
  decomposedStringWithCanonicalMapping = [self decomposedStringWithCanonicalMapping];
  v2 = [decomposedStringWithCanonicalMapping mutableCopy];

  [v2 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

@end