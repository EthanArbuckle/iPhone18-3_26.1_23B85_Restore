@interface NTKKaleidoscopeStyleOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4;
- (id)_valueToFaceBundleStringDict;
- (int64_t)swatchStyle;
@end

@implementation NTKKaleidoscopeStyleOption

+ (int64_t)indexForStyle:(unint64_t)a3 forDevice:(id)a4
{
  v5 = [a1 _orderedValuesForDevice:a4];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  sub_CD1C(a1, a3);
  v3 = qword_2CE48;

  return v3;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_24D50[a3];
  }
}

+ (id)localizedNameForValidValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [a1 _nameLocalizationKeyForValue:a3 forDevice:a4];
  v5 = [NTKKaleidoscopeFaceBundle localizedStringForKey:v4 comment:@"<StyleOption>"];

  return v5;
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 > 1)
  {
    v8 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_FSFACET";
    if (a3 != 3)
    {
      v8 = 0;
    }

    if (a3 == 2)
    {
      v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_LIMIT";
    }

    else
    {
      v7 = v8;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v7 = @"EDIT_OPTION_LABEL_KALEIDOSCOPE_STYLE_RADIAL";
    }

    else
    {
      v7 = 0;
    }
  }

  else if ([v5 deviceCategory] == &dword_0 + 1)
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
  v2 = [(NTKKaleidoscopeStyleOption *)self device];
  v3 = [v2 deviceCategory];

  if (v3 == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

@end