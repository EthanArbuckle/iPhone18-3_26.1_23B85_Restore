@interface NTKKaleidoscopeStyleOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device;
+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (int64_t)swatchStyle;
@end

@implementation NTKKaleidoscopeStyleOption

+ (int64_t)indexForStyle:(unint64_t)style forDevice:(id)device
{
  v5 = [self _orderedValuesForDevice:device];
  v6 = [NSNumber numberWithUnsignedInteger:style];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_orderedValuesForDevice:(id)device
{
  sub_CD1C(self, device);
  v3 = qword_2CE48;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 3)
  {
    return 0;
  }

  else
  {
    return off_24D50[value];
  }
}

+ (id)localizedNameForValidValue:(unint64_t)value forDevice:(id)device
{
  v4 = [self _nameLocalizationKeyForValue:value forDevice:device];
  v5 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v4 comment:@"<StyleOption>"];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (value > 1)
  {
    v8 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_FSFACET";
    if (value != 3)
    {
      v8 = 0;
    }

    if (value == 2)
    {
      v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_LIMIT";
    }

    else
    {
      v7 = v8;
    }
  }

  else if (value)
  {
    if (value == 1)
    {
      v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_RADIAL";
    }

    else
    {
      v7 = 0;
    }
  }

  else if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_FACETED_CLASSIC";
  }

  else
  {
    v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_FACETED";
  }

  return v7;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_2CE70 != -1)
  {
    sub_150C8();
  }

  v3 = qword_2CE68;

  return v3;
}

- (int64_t)swatchStyle
{
  device = [(NTKKaleidoscopeStyleOption *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end