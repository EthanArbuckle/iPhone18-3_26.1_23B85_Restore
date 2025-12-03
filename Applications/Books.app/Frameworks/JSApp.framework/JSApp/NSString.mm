@interface NSString
- (id)jsa_normalizedArtworkURLOfSize:(CGSize)size withFormat:(id)format;
@end

@implementation NSString

- (id)jsa_normalizedArtworkURLOfSize:(CGSize)size withFormat:(id)format
{
  height = size.height;
  width = size.width;
  formatCopy = format;
  v8 = [(NSString *)self mutableCopy];
  v9 = [NSNumber numberWithInteger:llround(width)];
  stringValue = [v9 stringValue];
  [v8 replaceOccurrencesOfString:@"{w}" withString:stringValue options:2 range:{0, objc_msgSend(v8, "length")}];

  v11 = [NSNumber numberWithInteger:llround(height)];
  stringValue2 = [v11 stringValue];
  [v8 replaceOccurrencesOfString:@"{h}" withString:stringValue2 options:2 range:{0, objc_msgSend(v8, "length")}];

  [v8 replaceOccurrencesOfString:@"{c}" withString:&stru_B7300 options:2 range:{0, objc_msgSend(v8, "length")}];
  [v8 replaceOccurrencesOfString:@"{f}" withString:formatCopy options:2 range:{0, objc_msgSend(v8, "length")}];

  v13 = [v8 copy];

  return v13;
}

@end