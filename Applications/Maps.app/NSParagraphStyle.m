@interface NSParagraphStyle
+ (id)_maps_paragraphStyleForHandlingExcessiveHeightString:(id)a3 lineHeightMultiplier:(double)a4 withHyphenationFactor:(float)a5;
@end

@implementation NSParagraphStyle

+ (id)_maps_paragraphStyleForHandlingExcessiveHeightString:(id)a3 lineHeightMultiplier:(double)a4 withHyphenationFactor:(float)a5
{
  v7 = a3;
  v8 = +[NSMutableParagraphStyle defaultParagraphStyle];
  v9 = [v8 mutableCopy];

  LODWORD(v8) = [v7 _maps_containsExcessiveHeightCharacters];
  if (v8)
  {
    [v9 setLineHeightMultiple:a4];
  }

  [v9 setLineBreakMode:4];
  *&v10 = a5;
  [v9 setHyphenationFactor:v10];
  v11 = [v9 copy];

  return v11;
}

@end