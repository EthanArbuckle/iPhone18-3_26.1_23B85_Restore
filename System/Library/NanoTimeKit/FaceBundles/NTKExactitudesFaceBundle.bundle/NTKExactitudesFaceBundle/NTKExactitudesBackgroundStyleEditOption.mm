@interface NTKExactitudesBackgroundStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKExactitudesBackgroundStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  v4 = @"backgroundOff";
  if (value != 1)
  {
    v4 = 0;
  }

  if (value)
  {
    return v4;
  }

  else
  {
    return @"backgroundOn";
  }
}

- (id)localizedName
{
  if ([(NTKExactitudesBackgroundStyleEditOption *)self background]== &dword_0 + 1)
  {
    v2 = @"EDIT_OPTION_LABEL_BACKGROUND_OFF";
  }

  else
  {
    v2 = @"EDIT_OPTION_LABEL_BACKGROUND_ON";
  }

  return [NTKExactitudesFaceBundle localizedStringForKey:v2 comment:@"style"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_381B8 != -1)
  {
    sub_20D2C();
  }

  v3 = qword_381B0;

  return v3;
}

@end