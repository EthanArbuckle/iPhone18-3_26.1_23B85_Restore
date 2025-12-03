@interface NTKFoghornNightModeEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)analyticsKey;
- (id)localizedName;
@end

@implementation NTKFoghornNightModeEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278B9C878[value];
  }
}

- (id)localizedName
{
  v4 = objc_msgSend_nightMode(self, a2, v2, v3);
  if (v4 > 2)
  {
    objc_msgSend_stringByAppendingString_(0, v5, @"_COMPANION", v6);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(off_278B9C860[v4], v5, @"_COMPANION", v6);
  }
  v7 = ;
  v8 = NTKCompanionClockFaceLocalizedString();

  return v8;
}

- (id)analyticsKey
{
  v4 = objc_msgSend_nightMode(self, a2, v2, v3);
  if (v4 > 2)
  {
    return 0;
  }

  else
  {
    return off_278B9C878[v4];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DCAC8 != -1)
  {
    sub_23BE7D2F8();
  }

  v3 = qword_27E1DCAC0;

  return v3;
}

@end