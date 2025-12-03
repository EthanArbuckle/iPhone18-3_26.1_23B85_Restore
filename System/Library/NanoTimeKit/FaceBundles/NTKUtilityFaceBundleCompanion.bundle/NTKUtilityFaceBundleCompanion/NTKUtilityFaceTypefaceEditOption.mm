@interface NTKUtilityFaceTypefaceEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device;
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForLocale:(id)locale device:(id)device;
+ (id)localeForTypeface:(unint64_t)typeface;
- (id)_valueToFaceBundleStringDict;
- (id)locale;
@end

@implementation NTKUtilityFaceTypefaceEditOption

+ (id)defaultOptionForLocale:(id)locale device:(id)device
{
  deviceCopy = device;
  v6 = CLKLocaleCurrentNumberSystem();
  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 1;
  }

  v8 = [self optionWithTypeface:v7 forDevice:deviceCopy];

  return v8;
}

+ (id)_localizedNameForValue:(unint64_t)value forDevice:(id)device
{
  v4 = [NTKUtilityFaceTypefaceEditOption _nameLocalizationKeyForValue:value forDevice:device];
  v5 = [NTKUtilityFaceTypefaceEditOption localizedStringForKey:v4];

  return v5;
}

+ (id)localeForTypeface:(unint64_t)typeface
{
  if (typeface <= 0xE)
  {
    self = [NSLocale localeWithLocaleIdentifier:off_10640[typeface], v3];
  }

  return self;
}

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6168;
  v5[3] = &unk_10600;
  v5[4] = self;
  v3 = sub_6168(v5, device);

  return v3;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v4 = _EnumValueRange();
  if (NTKShowIndicScriptNumerals())
  {
    v5 = [NTKUtilityFaceTypefaceEditOption _orderedIndicNumeralsEditOptionsForDevice:deviceCopy];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v4 = v6;
  }

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 0xE)
  {
    return 0;
  }

  else
  {
    return off_106B8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  v6 = _os_feature_enabled_impl();
  if (v6)
  {
    v6 = [deviceCopy supportsPDRCapability:270936181];
  }

  switch(value)
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
  typeface = [(NTKUtilityFaceTypefaceEditOption *)self typeface];

  return [NTKUtilityFaceTypefaceEditOption localeForTypeface:typeface];
}

@end