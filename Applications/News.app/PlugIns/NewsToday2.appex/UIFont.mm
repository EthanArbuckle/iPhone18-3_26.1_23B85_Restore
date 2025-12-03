@interface UIFont
+ (id)nt_preferredFontForCondensedTextStyle:(unint64_t)style contentSizeCategory:(id)category;
- (CGRect)nt_boundingBoxForString:(id)string;
@end

@implementation UIFont

+ (id)nt_preferredFontForCondensedTextStyle:(unint64_t)style contentSizeCategory:(id)category
{
  v5 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:category];
  if (style > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = **(&off_10010C0F8 + style);
  }

  v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:v5];
  v8 = [v7 fontDescriptorWithSymbolicTraits:64];

  v17 = UIFontWeightTrait;
  v9 = [NSNumber numberWithDouble:UIFontWeightMedium];
  v18 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  v15 = UIFontDescriptorTraitsAttribute;
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v8 fontDescriptorByAddingAttributes:v11];

  v13 = [UIFont fontWithDescriptor:v12 size:0.0];

  return v13;
}

- (CGRect)nt_boundingBoxForString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy length];
  __chkstk_darwin();
  v6 = (2 * v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  [stringCopy getCharacters:&v7 - v6 range:{0, v5}];

  __chkstk_darwin();
  if (CTFontGetGlyphsForCharacters(self, (&v7 - v6), (&v7 - v6), v5))
  {
    return CTFontGetBoundingRectsForGlyphs(self, kCTFontOrientationDefault, (&v7 - v6), 0, v5);
  }

  else
  {
    result.origin.x = CGRectZero.origin.x;
    result.origin.y = CGRectZero.origin.y;
    result.size.width = CGRectZero.size.width;
    result.size.height = CGRectZero.size.height;
  }

  return result;
}

@end