@interface NTKSmokeColorEditOption
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKSmokeColorEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_8240 + value);
  }
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  if (value >= 4)
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___NTKSmokeColorEditOption;
    v10 = objc_msgSendSuper2(&v12, "_localizedNameForValue:forDevice:", value, deviceCopy);
    v8 = @"Vapor";
  }

  else
  {
    v7 = *(&off_8260 + value);
    v8 = [@"Vapor" stringByAppendingString:@"-Companion"];
    v9 = [v7 stringByAppendingString:@"_COMPANION"];
    v10 = [NTKVaporFaceBundle localizedStringForKey:v9 table:v8 comment:@"Color"];
  }

  return v10;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_CB40 != -1)
  {
    sub_31EC();
  }

  v3 = qword_CB38;

  return v3;
}

@end