@interface NTKUtilityFaceTypefaceEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)defaultOptionForLocale:(id)a3 device:(id)a4;
+ (id)localeForTypeface:(unint64_t)a3;
- (id)_valueToFaceBundleStringDict;
- (id)locale;
@end

@implementation NTKUtilityFaceTypefaceEditOption

+ (id)defaultOptionForLocale:(id)a3 device:(id)a4
{
  v5 = a4;
  v6 = CLKLocaleCurrentNumberSystem();
  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 1;
  }

  v8 = [a1 optionWithTypeface:v7 forDevice:v5];

  return v8;
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
{
  v4 = [NTKUtilityFaceTypefaceEditOption _nameLocalizationKeyForValue:a3 forDevice:a4];
  v5 = [NTKUtilityFaceTypefaceEditOption localizedStringForKey:v4];

  return v5;
}

+ (id)localeForTypeface:(unint64_t)a3
{
  if (a3 <= 0xE)
  {
    a1 = [NSLocale localeWithLocaleIdentifier:off_10640[a3], v3];
  }

  return a1;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6168;
  v5[3] = &unk_10600;
  v5[4] = a1;
  v3 = sub_6168(v5, a3);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = a3;
  v4 = _EnumValueRange();
  if (NTKShowIndicScriptNumerals())
  {
    v5 = [NTKUtilityFaceTypefaceEditOption _orderedIndicNumeralsEditOptionsForDevice:v3];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v4 = v6;
  }

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 > 0xE)
  {
    return 0;
  }

  else
  {
    return off_106B8[a3];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v6 = [v5 supportsPDRCapability:270936181];
  }

  switch(a3)
  {
    case 0uLL:
      v7 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_WESTERN_ARABIC_COMPATIBILITY";
      v8 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_WESTERN_ARABIC";
      goto LABEL_15;
    case 1uLL:
      v7 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_EASTERN_ARABIC_COMPATIBILITY";
      v8 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_EASTERN_ARABIC";
LABEL_15:
      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      break;
    case 2uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_DEVANAGARI";
      break;
    case 3uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_BENGALI";
      break;
    case 4uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_GURMUKHI";
      break;
    case 5uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_GUJARATI";
      break;
    case 6uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_TELUGU";
      break;
    case 7uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_MALAYALAM";
      break;
    case 8uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_KANNADA";
      break;
    case 9uLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_ODIA";
      break;
    case 0xAuLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_OL_CHIKI";
      break;
    case 0xBuLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_URDU";
      break;
    case 0xCuLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_MEITEI";
      break;
    case 0xDuLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_BURMESE";
      break;
    case 0xEuLL:
      v9 = @"EDIT_OPTION_LABEL_UTILITY_TYPEFACE_KHMER";
      break;
    default:
      v9 = 0;
      break;
  }

  return v9;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_165B0 != -1)
  {
    sub_736C();
  }

  v3 = qword_165A8;

  return v3;
}

- (id)locale
{
  v2 = [(NTKUtilityFaceTypefaceEditOption *)self typeface];

  return [NTKUtilityFaceTypefaceEditOption localeForTypeface:v2];
}

@end