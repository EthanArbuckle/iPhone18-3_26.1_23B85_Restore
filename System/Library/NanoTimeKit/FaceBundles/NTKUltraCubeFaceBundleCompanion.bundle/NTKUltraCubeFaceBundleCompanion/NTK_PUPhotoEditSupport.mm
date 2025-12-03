@interface NTK_PUPhotoEditSupport
+ (BOOL)photoWasTakenWithoutFlashWithImageProperties:(id)properties;
+ (double)changeValueOfSlider:(id)slider reverse:(BOOL)reverse coarse:(BOOL)coarse;
+ (id)photoEditStylisticFontForSize:(double)size;
@end

@implementation NTK_PUPhotoEditSupport

+ (BOOL)photoWasTakenWithoutFlashWithImageProperties:(id)properties
{
  metadata = [properties metadata];
  v4 = [metadata objectForKeyedSubscript:kCGImagePropertyExifDictionary];

  v5 = [v4 objectForKeyedSubscript:kCGImagePropertyExifFlash];
  v7 = ([v5 integerValue] & 1) == 0 && v5 != 0;

  return v7;
}

+ (double)changeValueOfSlider:(id)slider reverse:(BOOL)reverse coarse:(BOOL)coarse
{
  coarseCopy = coarse;
  reverseCopy = reverse;
  sliderCopy = slider;
  [sliderCopy maximumValue];
  v9 = v8;
  [sliderCopy minimumValue];
  v11 = (v9 - v10) / fmax(([sliderCopy tickMarkCount] - 1), 1.0);
  if (reverseCopy)
  {
    v11 = -v11;
  }

  if (coarseCopy)
  {
    v12 = v11 * 5.0;
  }

  else
  {
    v12 = v11;
  }

  [sliderCopy value];
  [sliderCopy setValue:v13 + v12];

  return v12;
}

+ (id)photoEditStylisticFontForSize:(double)size
{
  v4 = [UIFont systemFontOfSize:UIFontSystemFontDesignAlternate weight:size design:UIFontWeightRegular];
  fontDescriptor = [v4 fontDescriptor];
  v20[0] = UIFontFeatureTypeIdentifierKey;
  v20[1] = UIFontFeatureSelectorIdentifierKey;
  v21[0] = &off_4B870;
  v21[1] = &off_4B888;
  v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[0] = v6;
  v18[0] = UIFontFeatureTypeIdentifierKey;
  v18[1] = UIFontFeatureSelectorIdentifierKey;
  v19[0] = &off_4B8A0;
  v19[1] = &off_4B8B8;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v22[1] = v7;
  v16[0] = UIFontFeatureTypeIdentifierKey;
  v16[1] = UIFontFeatureSelectorIdentifierKey;
  v17[0] = &off_4B8A0;
  v17[1] = &off_4B8D0;
  v8 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v22[2] = v8;
  v9 = [NSArray arrayWithObjects:v22 count:3];

  v14 = UIFontDescriptorFeatureSettingsAttribute;
  v15 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v11 = [fontDescriptor fontDescriptorByAddingAttributes:v10];

  v12 = [UIFont fontWithDescriptor:v11 size:size];

  return v12;
}

@end