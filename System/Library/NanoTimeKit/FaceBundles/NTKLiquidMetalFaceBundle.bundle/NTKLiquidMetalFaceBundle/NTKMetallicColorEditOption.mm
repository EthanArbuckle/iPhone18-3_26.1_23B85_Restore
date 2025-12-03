@interface NTKMetallicColorEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKMetallicColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_8248 + value);
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value >= 4)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___NTKMetallicColorEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", value, deviceCopy);
    v8 = @"LiquidMetal";
  }

  else
  {
    v7 = *(&off_8268 + value);
    v8 = [@"LiquidMetal" stringByAppendingString:@"-Companion"];
    v9 = [v7 stringByAppendingString:@"_COMPANION"];
    v10 = [NTKLiquidMetalFaceBundle localizedStringForKey:v9 table:v8 comment:@"Color"];
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_CB18 != -1)
  {
    sub_3044();
  }

  v3 = qword_CB10;

  return v3;
}

@end