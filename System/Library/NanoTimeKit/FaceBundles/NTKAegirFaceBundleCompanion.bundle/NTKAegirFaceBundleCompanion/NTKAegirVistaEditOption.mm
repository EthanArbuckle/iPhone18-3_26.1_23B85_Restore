@interface NTKAegirVistaEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKAegirVistaEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  sub_9788(self, device);
  v3 = qword_1A338;

  return v3;
}

- (id)localizedName
{
  v2 = [(NTKAegirVistaEditOption *)self vista]- 1;
  if (v2 > 9)
  {
    v3 = @"EDIT_OPTION_LABEL_CONTENT_EARTH";
  }

  else
  {
    v3 = *(&off_148E8 + v2);
  }

  v4 = [(__CFString *)v3 stringByAppendingString:@"_COMPANION"];
  v5 = [NTKAegirFaceBundle localizedStringForKey:v4 comment:v4];

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 0xA)
  {
    return 0;
  }

  else
  {
    return *(&off_14938 + value);
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_1A360 != -1)
  {
    sub_9B78();
  }

  v3 = qword_1A358;

  return v3;
}

@end