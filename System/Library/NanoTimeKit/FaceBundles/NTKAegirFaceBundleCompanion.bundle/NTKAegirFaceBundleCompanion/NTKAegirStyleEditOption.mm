@interface NTKAegirStyleEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKAegirStyleEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  sub_9448(self, device);
  v3 = qword_1A308;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_14848 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A330 != -1)
  {
    sub_9B64();
  }

  v3 = qword_1A328;

  return v3;
}

- (id)localizedName
{
  style = [(NTKAegirStyleEditOption *)self style];
  if (style > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(__CFString *)*(&off_14888 + style) stringByAppendingString:@"_COMPANION"];
  }

  v4 = [NTKAegirFaceBundle localizedStringForKey:v3 comment:@"style"];

  return v4;
}

@end