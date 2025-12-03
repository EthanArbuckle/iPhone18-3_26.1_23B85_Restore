@interface NTKFireWaterColorEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKFireWaterColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_8238 + value);
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value >= 3)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___NTKFireWaterColorEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", value, deviceCopy);
    v8 = @"FireWater";
  }

  else
  {
    v7 = *(&off_8250 + value);
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