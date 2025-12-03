@interface NSParagraphStyle
+ (id)_maps_paragraphStyleForHandlingExcessiveHeightString:(id)string lineHeightMultiplier:(double)multiplier withHyphenationFactor:(float)factor;
@end

@implementation NSParagraphStyle

+ (id)_maps_paragraphStyleForHandlingExcessiveHeightString:(id)string lineHeightMultiplier:(double)multiplier withHyphenationFactor:(float)factor
{
  stringCopy = string;
  v8 = +[NSMutableParagraphStyle defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  LODWORD(v8) = [stringCopy _maps_containsExcessiveHeightCharacters];
  if (v8)
  {
    [v9 setLineHeightMultiple:multiplier];
  }

  [v9 setLineBreakMode:4];
  *&v10 = factor;
  [v9 setHyphenationFactor:v10];
  v11 = [v9 copy];

  return v11;
}

@end