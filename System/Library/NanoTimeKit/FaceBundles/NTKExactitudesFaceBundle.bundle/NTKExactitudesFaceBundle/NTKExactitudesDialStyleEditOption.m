@interface NTKExactitudesDialStyleEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKExactitudesDialStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_30A60[a3];
  }
}

- (id)localizedName
{
  v2 = [(NTKExactitudesDialStyleEditOption *)self style];
  v3 = @"EDIT_OPTION_LABEL_DIAL_CLOSED";
  if (v2 == 1)
  {
    v3 = @"EDIT_OPTION_LABEL_DIAL_OPEN_I";
  }

  if (v2 == 2)
  {
    v4 = @"EDIT_OPTION_LABEL_DIAL_OPEN_II";
  }

  else
  {
    v4 = v3;
  }

  return [NTKExactitudesFaceBundle localizedStringForKey:v4 comment:@"style"];
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_381E8 != -1)
  {
    sub_20D40();
  }

  v3 = qword_381E0;

  return v3;
}

@end