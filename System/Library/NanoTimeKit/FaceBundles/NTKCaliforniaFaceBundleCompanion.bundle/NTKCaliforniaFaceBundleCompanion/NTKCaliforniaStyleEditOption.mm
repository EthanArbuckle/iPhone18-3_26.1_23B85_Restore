@interface NTKCaliforniaStyleEditOption
+ (BOOL)_valueIsValid:(unint64_t)a3 forDevice:(id)a4;
+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)_orderedIndicNumeralsEditOptionsForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (unint64_t)resolvedAutomaticStyleForCurrentLocale;
+ (unint64_t)resolvedNumeralSystemOfFirstLanguage;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKCaliforniaStyleEditOption

+ (unint64_t)resolvedNumeralSystemOfFirstLanguage
{
  Language = CLKLocaleNumberSystemForFirstLanguage();
  if ((Language - 1) > 0xD)
  {
    return 3;
  }

  else
  {
    return qword_174B0[Language - 1];
  }
}

+ (unint64_t)resolvedAutomaticStyleForCurrentLocale
{
  v2 = CLKLocaleCurrentNumberSystem();
  v3 = 3;
  if (v2 == 2)
  {
    v3 = 5;
  }

  if (v2 == 1)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

+ (BOOL)_valueIsValid:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 == -1)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NTKCaliforniaStyleEditOption;
  return objc_msgSendSuper2(&v7, "_valueIsValid:forDevice:", a3, a4);
}

+ (id)_orderedIndicNumeralsEditOptionsForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = _EnumValueRange();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = +[NTKCaliforniaStyleEditOption _localizedNameForValue:forDevice:](NTKCaliforniaStyleEditOption, "_localizedNameForValue:forDevice:", [v10 unsignedIntegerValue], v3);
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v12 = [v4 allKeys];
  v13 = [v12 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

  v14 = objc_alloc_init(NSMutableArray);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v4 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * j), v23}];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [v14 copy];

  return v21;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  if (a3 + 1 > 0x13)
  {
    return 0;
  }

  else
  {
    return *(&off_1C560 + a3 + 1);
  }
}

- (id)localizedName
{
  v3 = [(NTKCaliforniaStyleEditOption *)self style];
  v4 = [(NTKCaliforniaStyleEditOption *)self device];
  v5 = [NTKCaliforniaStyleEditOption _localizedNameForValue:v3 forDevice:v4];

  return v5;
}

+ (id)_localizedNameForValue:(unint64_t)a3 forDevice:(id)a4
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
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_PILLS";
      break;
    case 1uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_ROMAN";
      break;
    case 2uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_CALIFORNIA";
      break;
    case 3uLL:
      v8 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_NUMERALS_COMPATIBILITY";
      v9 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_NUMERALS";
      goto LABEL_14;
    case 4uLL:
      v8 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_ARABIC_COMPATIBILITY";
      v9 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_ARABIC";
LABEL_14:
      if (v6)
      {
        v7 = v9;
      }

      else
      {
        v7 = v8;
      }

      break;
    case 5uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_HINDI";
      break;
    case 6uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_CHINESE";
      break;
    case 7uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_BENGALI";
      break;
    case 8uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_GURMUKHI";
      break;
    case 9uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_GUJARATI";
      break;
    case 0xAuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_TELUGU";
      break;
    case 0xBuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_MALAYALAM";
      break;
    case 0xCuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_KANNADA";
      break;
    case 0xDuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_ODIA";
      break;
    case 0xEuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_OL_CHIKI";
      break;
    case 0xFuLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_URDU";
      break;
    case 0x10uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_MEITEI";
      break;
    case 0x11uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_BURMESE";
      break;
    case 0x12uLL:
      v7 = @"EDIT_OPTION_LABEL_CALIFORNIA_STYLE_KHMER";
      break;
    default:
      v7 = 0;
      break;
  }

  v10 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
  if (v10)
  {
    v11 = [NTKCaliforniaFaceBundle localizedStringForKey:v10 comment:@"style"];
  }

  else
  {
    v11 = &stru_1CEB8;
  }

  return v11;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_229D8 != -1)
  {
    sub_F624();
  }

  v3 = qword_229D0;

  return v3;
}

@end