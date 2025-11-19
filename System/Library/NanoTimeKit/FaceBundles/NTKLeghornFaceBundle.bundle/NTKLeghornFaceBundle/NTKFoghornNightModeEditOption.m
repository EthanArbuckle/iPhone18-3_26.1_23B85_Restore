@interface NTKFoghornNightModeEditOption
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (id)analyticsKey;
- (id)localizedName;
@end

@implementation NTKFoghornNightModeEditOption

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278BA15F0[a3];
  }
}

- (id)localizedName
{
  v3 = objc_msgSend_nightMode(self, a2, v2);
  if (v3 > 2)
  {
    objc_msgSend_stringByAppendingString_(0, v4, v5, @"_COMPANION");
  }

  else
  {
    objc_msgSend_stringByAppendingString_(off_278BA15D8[v3], v4, v5, @"_COMPANION");
  }
  v6 = ;
  v7 = NTKCompanionClockFaceLocalizedString();

  return v7;
}

- (id)analyticsKey
{
  v3 = objc_msgSend_nightMode(self, a2, v2);
  if (v3 > 2)
  {
    return 0;
  }

  else
  {
    return off_278BA15F0[v3];
  }
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DF630 != -1)
  {
    sub_23BEE7380();
  }

  v3 = qword_27E1DF628;

  return v3;
}

@end