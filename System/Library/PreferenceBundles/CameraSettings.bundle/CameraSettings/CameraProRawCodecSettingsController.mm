@interface CameraProRawCodecSettingsController
+ (id)_fileEstimatesFooterForValues:(id)values rawFileFormatBehavior:(int64_t)behavior;
+ (id)_localizationKeyForFormatPreference:(int64_t)preference;
+ (id)_localizationKeyForRawEncodingFormatPreference:(int64_t)preference;
+ (id)_proRawFileFormatFooterForValues:(id)values selectedProRawFileFormatFormat:(id)format;
+ (id)proRawFileFormatPreferenceTitleForValue:(id)value;
+ (id)selectedProRawFileFormat;
- (id)specifiers;
- (void)_setSelectedProRawFileFormat:(id)format;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CameraProRawCodecSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[CameraSettingsBaseController capabilities];
    isProRawJpegXLSupported = [v6 isProRawJpegXLSupported];
    selectedProRawFileFormat = [objc_opt_class() selectedProRawFileFormat];
    if (isProRawJpegXLSupported)
    {
      v26 = v6;
      v27 = v3;
      v9 = [PSSpecifier groupSpecifierWithID:@"ProRawFileFormatGroupSpecifierID"];
      _proRawFileFormatPreferenceTitle = [objc_opt_class() _proRawFileFormatPreferenceTitle];
      [v9 setName:_proRawFileFormatPreferenceTitle];

      v28 = selectedProRawFileFormat;
      v11 = [objc_opt_class() _proRawFileFormatFooterForValues:&off_32188 selectedProRawFileFormatFormat:selectedProRawFileFormat];
      [v9 setObject:v11 forKeyedSubscript:PSFooterTextGroupKey];

      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
      v12 = v5;
      v25 = v9;
      [v5 addObject:v9];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = [&off_321A0 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v30;
        v17 = PSValueKey;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(&off_321A0);
            }

            v19 = *(*(&v29 + 1) + 8 * i);
            v20 = [objc_opt_class() proRawFileFormatPreferenceTitleForValue:v19];
            v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:0 cell:3 edit:0];
            [v21 setObject:v19 forKeyedSubscript:v17];
            [v12 addObject:v21];
            if ([v28 isEqualToNumber:v19])
            {
              v22 = v21;

              v15 = v22;
            }
          }

          v14 = [&off_321A0 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      [v25 setProperty:v15 forKey:PSRadioGroupCheckedSpecifierKey];

      v6 = v26;
      v3 = v27;
      v5 = v12;
      selectedProRawFileFormat = v28;
    }

    v23 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = CameraProRawCodecSettingsController;
  [(CameraProRawCodecSettingsController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraProRawCodecSettingsController *)self specifierForID:@"ProRawFileFormatGroupSpecifierID"];
  if (v7)
  {
    v8 = [(CameraProRawCodecSettingsController *)self indexPathForSpecifier:v7];
    section = [v8 section];
  }

  else
  {
    section = -1;
  }

  if ([pathCopy section] == section)
  {
    v10 = [(CameraProRawCodecSettingsController *)self specifierAtIndexPath:pathCopy];
    v11 = [v10 propertyForKey:PSValueKey];
    [(CameraProRawCodecSettingsController *)self _setSelectedProRawFileFormat:v11];
  }

  [(CameraProRawCodecSettingsController *)self reloadSpecifiers];
}

+ (id)selectedProRawFileFormat
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(CAMUserPreferenceProRawFileFormatFormat, @"com.apple.camera", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = [NSNumber numberWithInteger:AppIntegerValue];
  }

  else
  {
    v3 = &off_32500;
  }

  return v3;
}

- (void)_setSelectedProRawFileFormat:(id)format
{
  CFPreferencesSetAppValue(CAMUserPreferenceProRawFileFormatFormat, format, @"com.apple.camera");

  CFPreferencesAppSynchronize(@"com.apple.camera");
}

+ (id)_fileEstimatesFooterForValues:(id)values rawFileFormatBehavior:(int64_t)behavior
{
  valuesCopy = values;
  v7 = [[NSMutableString alloc] initWithString:@"\n\n"];
  v8 = &stru_2DB58;
  if (behavior == 1)
  {
    v8 = @"_JPEG_XL_LOSSLESS";
  }

  if (behavior == 2)
  {
    v9 = @"_JPEG_XL_LOSSY";
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_13388(@"CAM_SECONDARY_PHOTO_FORMAT_FOOTER_FILE_SIZES_TITLE");
  v22 = v7;
  [v7 appendFormat:@"%@", v10];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = valuesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        v17 = [self _localizationKeyForFormatPreference:integerValue];
        if ((integerValue - 3) <= 1)
        {
          v18 = [NSString stringWithFormat:@"CAM_SECONDARY_PHOTO_FORMAT_FOOTER_%@%@", v17, v9];
          if (v18)
          {
            v19 = v18;
            v20 = sub_13388(v18);
            [v22 appendFormat:@"\n%@", v20];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  return v22;
}

+ (id)_localizationKeyForFormatPreference:(int64_t)preference
{
  if (preference == 4)
  {
    return @"RAW48";
  }

  if (preference == 3)
  {
    return @"RAW12";
  }

  if (preference != 2)
  {
    return &stru_2DB58;
  }

  if ([PFMediaCapabilities newFormatsConfiguration:v3]== &dword_0 + 1)
  {
    return @"JPEG48";
  }

  return @"HEIF48";
}

+ (id)proRawFileFormatPreferenceTitleForValue:(id)value
{
  v3 = [self _localizationKeyForRawEncodingFormatPreference:{objc_msgSend(value, "integerValue")}];
  v4 = [NSString stringWithFormat:@"CAM_PRO_RAW_ENCODING_%@", v3];
  v5 = sub_13388(v4);

  return v5;
}

+ (id)_localizationKeyForRawEncodingFormatPreference:(int64_t)preference
{
  if (preference > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_2CE18 + preference);
  }
}

+ (id)_proRawFileFormatFooterForValues:(id)values selectedProRawFileFormatFormat:(id)format
{
  formatCopy = format;
  valuesCopy = values;
  v7 = sub_13388(@"CAM_PRO_RAW_ENCODING_FOOTER");
  v8 = [NSMutableString stringWithString:v7];

  v9 = objc_opt_class();
  integerValue = [formatCopy integerValue];

  v11 = [v9 _fileEstimatesFooterForValues:valuesCopy rawFileFormatBehavior:integerValue];

  [v8 appendString:v11];

  return v8;
}

@end