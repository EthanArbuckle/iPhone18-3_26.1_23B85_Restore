@interface NSString(EscapingFromCoreSpotlight)
- (id)_fp_escapedStringForSearchQuery;
@end

@implementation NSString(EscapingFromCoreSpotlight)

- (id)_fp_escapedStringForSearchQuery
{
  v1 = [a1 decomposedStringWithCanonicalMapping];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

@end