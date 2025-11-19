@interface NTKZeusAnalogStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKZeusAnalogStyleEditOption

- (BOOL)optionExistsInDevice:(id)a3
{
  if ([a3 pdrDeviceVersion] >> 18)
  {
    return 1;
  }

  v4 = [(NTKZeusAnalogStyleEditOption *)self device];
  v5 = sub_7534(v4, v4);
  v6 = [v5 containsIndex:{-[NTKZeusAnalogStyleEditOption _value](self, "_value")}];

  return v6 ^ 1;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_44B88[a3];
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_44BA8[a3];
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"_COMPANION", a4, v5, v4, v6];
  if (v9)
  {
    v10 = [NTKZeusAnalogFaceBundle localizedStringForKey:v9 comment:&stru_45510];
  }

  else
  {
    v10 = &stru_45510;
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_585F8 != -1)
  {
    sub_2ECFC();
  }

  v3 = qword_585F0;

  return v3;
}

@end