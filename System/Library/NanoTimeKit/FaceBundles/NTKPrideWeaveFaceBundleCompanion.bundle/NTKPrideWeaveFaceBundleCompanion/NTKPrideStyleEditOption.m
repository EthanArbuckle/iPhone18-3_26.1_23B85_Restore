@interface NTKPrideStyleEditOption
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKPrideStyleEditOption

+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _orderedValuesForDevice:a4];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_247E0[a3];
  }
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NTKPrideDigitalFaceBundle localizedStringForKey:off_247F8[a3] table:@"PrideDigital" comment:@"Style", v4];
  }

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_2CCE8 != -1)
  {
    sub_15228();
  }

  v3 = qword_2CCE0;

  return v3;
}

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 pdrDeviceVersion];
  v6 = [(NTKPrideStyleEditOption *)self style];
  if (v6 == 2)
  {
    v7 = [v4 supportsPDRCapability:3503302961];
  }

  else
  {
    v7 = v6 != 1 || v5 > 0x50200;
  }

  return v7;
}

@end