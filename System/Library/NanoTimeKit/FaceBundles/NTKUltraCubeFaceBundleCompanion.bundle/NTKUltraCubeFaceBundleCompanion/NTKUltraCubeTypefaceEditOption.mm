@interface NTKUltraCubeTypefaceEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKUltraCubeTypefaceEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"new-york";
  if (value == 1)
  {
    v4 = @"san-francisco";
  }

  if (value == 2)
  {
    return @"tokyo";
  }

  else
  {
    return v4;
  }
}

- (id)_valueToFaceBundleStringDict
{
  v4[0] = &off_4B660;
  v4[1] = &off_4B678;
  v5[0] = NTKFaceBundleStyle1;
  v5[1] = NTKFaceBundleStyle2;
  v4[2] = &off_4B690;
  v5[2] = NTKFaceBundleStyle3;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (id)localizedName
{
  typeface = [(NTKUltraCubeTypefaceEditOption *)self typeface];
  v3 = @"EDIT_OPTION_LABEL_TYPEFACE_NEW_YORK";
  if (typeface == 1)
  {
    v3 = @"EDIT_OPTION_LABEL_TYPEFACE_SAN_FRANCISCO";
  }

  if (typeface == 2)
  {
    v4 = @"EDIT_OPTION_LABEL_TYPEFACE_TOKYO";
  }

  else
  {
    v4 = v3;
  }

  v5 = [(__CFString *)v4 stringByAppendingString:@"_COMPANION"];
  v6 = [NTKUltraCubeFaceBundle localizedStringForKey:v5 comment:@"typeface"];

  return v6;
}

@end