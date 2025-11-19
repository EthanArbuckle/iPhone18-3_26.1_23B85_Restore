@interface NTKKaleidoscopeAssetOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
@end

@implementation NTKKaleidoscopeAssetOption

+ (id)_orderedValuesForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [[NSUUID alloc] initWithUUIDString:@"4CC676F2-E761-4AA8-AE40-1A40F3868BDE"];
  v6 = [v3 supportsCapability:v5];

  if (v6)
  {
    [v4 addObjectsFromArray:&off_266D0];
  }

  v7 = [[NSUUID alloc] initWithUUIDString:@"A19F7B33-B4B5-4859-8FDD-DEDA6FD71895"];
  v8 = [v3 supportsCapability:v7];

  if (v8)
  {
    [v4 addObjectsFromArray:&off_266E8];
  }

  v9 = [[NSUUID alloc] initWithUUIDString:@"2CE80E5D-FA17-4BD4-A48C-DFC3A79FB8ED"];
  v10 = [v3 supportsCapability:v9];

  if (v10)
  {
    [v4 addObjectsFromArray:&off_26700];
  }

  if ([v3 nrDeviceVersion] >= 0x50000)
  {
    [v4 addObjectsFromArray:&off_26718];
  }

  [v4 addObjectsFromArray:&off_26730];

  return v4;
}

+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [a1 _nameLocalizationKeyForValue:a3 forDevice:a4];
  v5 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v4 comment:@"<AssetOption>"];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if ([a4 nrDeviceVersion] < 0x50000)
  {
    v5 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_ASSET_%lu";
  }

  else
  {
    v5 = [@"EDIT_OPTION_LABEL_KALEIDOSCOPE_ASSET_%lu" stringByAppendingString:@"_5_0"];
  }

  v6 = [NSString stringWithFormat:v5, a3 + 1];

  return v6;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_2CE80 != -1)
  {
    sub_150DC();
  }

  v3 = qword_2CE78;

  return v3;
}

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  if ([v4 nrDeviceVersion] >> 16 <= 4 && (-[NTKKaleidoscopeAssetOption device](self, "device"), v5 = objc_claimAutoreleasedReturnValue(), sub_DDDC(v5, v5), v6 = qword_2CEB8, v7 = objc_msgSend(v6, "containsIndex:", -[NTKKaleidoscopeAssetOption _value](self, "_value")), v6, v5, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = [[NSUUID alloc] initWithUUIDString:@"2CE80E5D-FA17-4BD4-A48C-DFC3A79FB8ED"];
    if ([v4 supportsCapability:v9])
    {

      v8 = 1;
    }

    else
    {
      v10 = [(NTKKaleidoscopeAssetOption *)self device];
      sub_DF08(v10, v10);
      v11 = qword_2CED8;
      v12 = [v11 containsIndex:{-[NTKKaleidoscopeAssetOption _value](self, "_value")}];

      v8 = v12 ^ 1;
    }
  }

  return v8 & 1;
}

@end