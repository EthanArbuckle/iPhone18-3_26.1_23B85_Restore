@interface NTKExactitudesFontLoader
+ (id)_fontVariationAttributesFromDictionary:(id)dictionary;
+ (id)fontWithAttributes:(id)attributes size:(double)size;
@end

@implementation NTKExactitudesFontLoader

+ (id)fontWithAttributes:(id)attributes size:(double)size
{
  attributesCopy = attributes;
  v7 = [CLKFont systemFontOfSize:size weight:UIFontWeightRegular];
  v8 = [self _fontVariationAttributesFromDictionary:attributesCopy];

  v9 = [NSDictionary dictionaryWithObject:v8 forKey:kCTFontVariationAttribute];
  v24[0] = v9;
  v22[0] = UIFontFeatureTypeIdentifierKey;
  v22[1] = UIFontFeatureSelectorIdentifierKey;
  v23[0] = &off_31FF0;
  v23[1] = &off_32008;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24[1] = v10;
  v20[0] = UIFontFeatureTypeIdentifierKey;
  v20[1] = UIFontFeatureSelectorIdentifierKey;
  v21[0] = &off_31FF0;
  v21[1] = &off_32020;
  v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v24[2] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:3];

  fontDescriptor = [v7 fontDescriptor];
  v18 = UIFontDescriptorFeatureSettingsAttribute;
  v19 = v12;
  v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v15 = [fontDescriptor fontDescriptorByAddingAttributes:v14];

  v16 = [CLKFont fontWithDescriptor:v15 size:size];

  return v16;
}

+ (id)_fontVariationAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_2FB0;
  v11 = sub_2FC0;
  v12 = objc_opt_new();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2FC8;
  v6[3] = &unk_30990;
  v6[4] = &v7;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end