@interface NTKFireWaterColorEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKFireWaterColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_8238 + a3);
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 >= 3)
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___NTKFireWaterColorEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", a3, v6);
    v8 = @"FireWater";
  }

  else
  {
    v7 = *(&off_8250 + a3);
    v8 = [@"FireWater" stringByAppendingString:@"-Companion"];
    v9 = [v7 stringByAppendingString:@"_COMPANION"];
    v10 = [NTKFireWaterFaceBundle localizedStringForKey:v9 table:v8 comment:@"Color"];
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_CB18 != -1)
  {
    sub_3060();
  }

  v3 = qword_CB10;

  return v3;
}

@end