@interface NTKEsterbrookDensityEditOption
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKEsterbrookDensityEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return off_278B9A8B8[value];
  }
}

- (id)localizedName
{
  v4 = objc_msgSend_density(self, a2, v2, v3);
  if (v4 > 3)
  {
    objc_msgSend_stringByAppendingString_(0, v5, @"_COMPANION", v6);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(off_278B9A8D8[v4], v5, @"_COMPANION", v6);
  }
  v7 = ;
  v9 = objc_msgSend_localizedStringForKey_comment_(NTKEsterbrookFaceBundle, v8, v7, &stru_284E95F18);

  return v9;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1C97F8 != -1)
  {
    sub_23BE325B4();
  }

  v3 = qword_27E1C97F0;

  return v3;
}

@end