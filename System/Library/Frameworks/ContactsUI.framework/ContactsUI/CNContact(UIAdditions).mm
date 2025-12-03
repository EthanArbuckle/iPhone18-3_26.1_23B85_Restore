@interface CNContact(UIAdditions)
+ (id)calendarForBirthdayLabel:()UIAdditions;
+ (id)contactWithStateRestorationCoder:()UIAdditions store:keys:;
+ (id)descriptorForAllUIKeys;
+ (id)multiValuePropertiesSupportingPredicateValidation;
+ (id)stringIdentifierForImageType:()UIAdditions;
+ (uint64_t)downtimeWhitelistUIEnabled;
+ (uint64_t)geminiEnabled;
+ (uint64_t)imageTypeForContactImageSource:()UIAdditions;
+ (uint64_t)imageTypeStringIdentifierForImageSource:()UIAdditions;
+ (uint64_t)nameAndPhotoSharingDebugUIEnabled;
+ (uint64_t)quickActionsEnabled;
+ (uint64_t)rawImageSourceForIdentifier:()UIAdditions;
+ (uint64_t)rawImageTypeForIdentifier:()UIAdditions;
+ (uint64_t)settableMeCardEnabled;
+ (uint64_t)suggestionsEnabled;
+ (uint64_t)suggestionsShownInEditMode;
- (BOOL)overrideSensitiveContent;
- (__CFString)posterFallbackDisplayName;
- (id)birthdays;
- (id)contactImageBackgroundColors;
- (id)contactPosterBackgroundColors;
- (id)copyWithCuratingBirthdaySuggestion;
- (id)personName;
- (id)posterName;
- (id)vCardRepresentation;
- (id)validPropertiesByEvaluatingPredicate:()UIAdditions onMultiValueProperties:;
- (uint64_t)copyWithCuratingAllSuggestionsAndBirthdaySuggestion;
- (uint64_t)hasImageOfType:()UIAdditions;
- (uint64_t)isUnknown;
- (uint64_t)rawImageSource;
- (uint64_t)rawImageType;
@end

@implementation CNContact(UIAdditions)

+ (uint64_t)suggestionsEnabled
{
  if (suggestionsEnabled_onceToken != -1)
  {
    dispatch_once(&suggestionsEnabled_onceToken, &__block_literal_global_31249);
  }

  return suggestionsEnabled_enabled;
}

- (id)copyWithCuratingBirthdaySuggestion
{
  selfCopy = self;
  dates = [selfCopy dates];
  v3 = [dates _cn_firstObjectPassingTest:&__block_literal_global_63_31208];

  if (v3)
  {
    birthday = [selfCopy birthday];
    if (birthday)
    {
    }

    else
    {
      nonGregorianBirthday = [selfCopy nonGregorianBirthday];

      if (!nonGregorianBirthday)
      {
        v8 = [selfCopy mutableCopy];
        value = [v3 value];
        v10 = [objc_opt_class() calendarForBirthdayLabel:@"_systemCalendar"];
        [value setCalendar:v10];

        [v8 setBirthday:value];
        dates2 = [v8 dates];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __60__CNContact_UIAdditions__copyWithCuratingBirthdaySuggestion__block_invoke_2;
        v13[3] = &unk_1E74E3F80;
        v14 = v3;
        v12 = [dates2 _cn_filter:v13];
        [v8 setDates:v12];

        freezeWithSelfAsSnapshot = [v8 freezeWithSelfAsSnapshot];

        goto LABEL_6;
      }
    }
  }

  freezeWithSelfAsSnapshot = selfCopy;
LABEL_6:

  return freezeWithSelfAsSnapshot;
}

- (uint64_t)copyWithCuratingAllSuggestionsAndBirthdaySuggestion
{
  copyWithCuratingBirthdaySuggestion = [self copyWithCuratingBirthdaySuggestion];
  copyWithCuratingAllSuggestions = [copyWithCuratingBirthdaySuggestion copyWithCuratingAllSuggestions];

  return copyWithCuratingAllSuggestions;
}

- (uint64_t)hasImageOfType:()UIAdditions
{
  v4 = [objc_opt_class() stringIdentifierForImageType:a3];
  if (v4 && ([self imageType], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    imageType = [self imageType];
    v7 = [imageType isEqualToString:v4];
  }

  else
  {
    imageType = [self imageType];
    v7 = v4 == imageType;
  }

  return v7;
}

- (uint64_t)rawImageSource
{
  v2 = objc_opt_class();
  imageType = [self imageType];
  v4 = [v2 rawImageSourceForIdentifier:imageType];

  return v4;
}

- (uint64_t)rawImageType
{
  v2 = objc_opt_class();
  imageType = [self imageType];
  v4 = [v2 rawImageTypeForIdentifier:imageType];

  return v4;
}

- (id)vCardRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  optionsFromPreferences = [MEMORY[0x1E69E4B40] optionsFromPreferences];
  [optionsFromPreferences setIncludePhotos:1];
  [optionsFromPreferences setIncludeNotes:1];
  v3 = MEMORY[0x1E695CE30];
  v7[0] = self;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 dataWithContacts:v4 options:optionsFromPreferences error:0];

  return v5;
}

- (id)validPropertiesByEvaluatingPredicate:()UIAdditions onMultiValueProperties:
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  array = [MEMORY[0x1E695DF70] array];
  multiValuePropertiesSupportingPredicateValidation = [objc_opt_class() multiValuePropertiesSupportingPredicateValidation];

  if (multiValuePropertiesSupportingPredicateValidation != v7)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __86__CNContact_UIAdditions__validPropertiesByEvaluatingPredicate_onMultiValueProperties___block_invoke;
    v33[3] = &unk_1E74E5A18;
    v33[4] = self;
    v9 = [v7 _cn_filter:v33];

    v7 = v9;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v22)
  {
    v21 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v10;
        v11 = *(*(&v29 + 1) + 8 * v10);
        v12 = [self valueForKey:v11];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              identifier = [*(*(&v25 + 1) + 8 * i) identifier];
              v18 = [MEMORY[0x1E695CE08] contactPropertyWithContact:self propertyKey:v11 identifier:identifier];
              if ([v6 evaluateWithObject:v18])
              {
                [array addObject:v18];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v14);
        }

        v10 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v22);
  }

  return array;
}

- (id)contactPosterBackgroundColors
{
  backgroundColors = [self backgroundColors];
  contactPoster = [backgroundColors contactPoster];

  return contactPoster;
}

- (id)contactImageBackgroundColors
{
  backgroundColors = [self backgroundColors];
  contactImage = [backgroundColors contactImage];

  return contactImage;
}

- (id)birthdays
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  birthday = [self birthday];
  if (birthday)
  {
    v4 = [MEMORY[0x1E695CEE0] entryWithIdentifier:@"_systemCalendar" label:@"_systemCalendar" value:birthday];
    [v2 addObject:v4];
  }

  nonGregorianBirthday = [self nonGregorianBirthday];
  v6 = nonGregorianBirthday;
  if (nonGregorianBirthday)
  {
    calendar = [nonGregorianBirthday calendar];
    calendarIdentifier = [calendar calendarIdentifier];

    v9 = [MEMORY[0x1E695CEE0] entryWithIdentifier:calendarIdentifier label:calendarIdentifier value:v6];
    [v2 addObject:v9];
  }

  if (![v2 count])
  {
    dates = [self dates];
    v11 = [dates _cn_firstObjectPassingTest:&__block_literal_global_51_31211];

    [v2 _cn_addNonNilObject:v11];
  }

  return v2;
}

- (__CFString)posterFallbackDisplayName
{
  phoneNumbers = [self phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];
  formattedStringValue = [value formattedStringValue];

  v6 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], formattedStringValue))
  {
    emailAddresses = [self emailAddresses];
    firstObject2 = [emailAddresses firstObject];
    value2 = [firstObject2 value];

    if ((*(v6 + 16))(v6, value2))
    {
      organizationName = [self organizationName];
      if ((*(v6 + 16))(v6, organizationName))
      {
        v11 = &stru_1F0CE7398;
      }

      else
      {
        v11 = organizationName;
      }
    }

    else
    {
      v11 = value2;
    }
  }

  else
  {
    v11 = formattedStringValue;
  }

  return v11;
}

- (id)posterName
{
  v2 = [MEMORY[0x1E695CD80] posterNameComponentsForContact:self];
  if ([v2 singleNameComponentIndex])
  {
    [v2 secondNameComponent];
  }

  else
  {
    [v2 firstNameComponent];
  }
  v3 = ;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    posterFallbackDisplayName = [self posterFallbackDisplayName];
  }

  else
  {
    posterFallbackDisplayName = v3;
  }

  v5 = posterFallbackDisplayName;

  return v5;
}

- (id)personName
{
  v2 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v2 setIgnoresOrganization:1];
  v3 = [v2 stringFromContact:self];

  return v3;
}

- (BOOL)overrideSensitiveContent
{
  sensitiveContentConfiguration = [self sensitiveContentConfiguration];
  v2 = [sensitiveContentConfiguration override] == 1;

  return v2;
}

- (uint64_t)isUnknown
{
  if ([self isSuggested])
  {
    return [self isSuggestedMe] ^ 1;
  }

  if ([self isCoreRecentsAccepted])
  {
    return [self isSuggestedMe] ^ 1;
  }

  iOSLegacyIdentifier = [self iOSLegacyIdentifier];
  if (iOSLegacyIdentifier == *MEMORY[0x1E695C248])
  {
    return [self isSuggestedMe] ^ 1;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)rawImageSourceForIdentifier:()UIAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C2A8]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C288]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C2A0]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C290]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (uint64_t)rawImageTypeForIdentifier:()UIAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695C2A8]])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C288]])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C2A0]])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C290]])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (uint64_t)imageTypeForContactImageSource:()UIAdditions
{
  if (a3 > 3)
  {
    return 4;
  }

  else
  {
    return qword_199E43E58[a3];
  }
}

+ (uint64_t)imageTypeStringIdentifierForImageSource:()UIAdditions
{
  v3 = [objc_opt_class() imageTypeForContactImageSource:a3];
  v4 = objc_opt_class();

  return [v4 stringIdentifierForImageType:v3];
}

+ (id)stringIdentifierForImageType:()UIAdditions
{
  if ((a3 - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_1E74E3FA0 + a3 - 1);
  }

  return v4;
}

+ (id)contactWithStateRestorationCoder:()UIAdditions store:keys:
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];

  if (v10)
  {
    v11 = [v7 unifiedContactWithIdentifier:v10 keysToFetch:v8 error:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)multiValuePropertiesSupportingPredicateValidation
{
  if (multiValuePropertiesSupportingPredicateValidation_cn_once_token_2 != -1)
  {
    dispatch_once(&multiValuePropertiesSupportingPredicateValidation_cn_once_token_2, &__block_literal_global_54);
  }

  v1 = multiValuePropertiesSupportingPredicateValidation_cn_once_object_2;

  return v1;
}

+ (id)calendarForBirthdayLabel:()UIAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:@"_systemCalendar"])
  {
    v4 = *MEMORY[0x1E695D850];
  }

  else
  {
    v4 = v3;
  }

  v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:v4];

  return v5;
}

+ (id)descriptorForAllUIKeys
{
  if (descriptorForAllUIKeys_cn_once_token_1 != -1)
  {
    dispatch_once(&descriptorForAllUIKeys_cn_once_token_1, &__block_literal_global_39_31219);
  }

  v1 = descriptorForAllUIKeys_cn_once_object_1;

  return v1;
}

+ (uint64_t)nameAndPhotoSharingDebugUIEnabled
{
  if (nameAndPhotoSharingDebugUIEnabled_onceToken != -1)
  {
    dispatch_once(&nameAndPhotoSharingDebugUIEnabled_onceToken, &__block_literal_global_34_31221);
  }

  return nameAndPhotoSharingDebugUIEnabled_enabled;
}

+ (uint64_t)downtimeWhitelistUIEnabled
{
  if (downtimeWhitelistUIEnabled_onceToken != -1)
  {
    dispatch_once(&downtimeWhitelistUIEnabled_onceToken, &__block_literal_global_29_31226);
  }

  return downtimeWhitelistUIEnabled_enabled;
}

+ (uint64_t)settableMeCardEnabled
{
  if (settableMeCardEnabled_onceToken != -1)
  {
    dispatch_once(&settableMeCardEnabled_onceToken, &__block_literal_global_24);
  }

  return settableMeCardEnabled_enabled;
}

+ (uint64_t)geminiEnabled
{
  if (geminiEnabled_onceToken != -1)
  {
    dispatch_once(&geminiEnabled_onceToken, &__block_literal_global_19_31234);
  }

  return geminiEnabled_enabled;
}

+ (uint64_t)quickActionsEnabled
{
  if (quickActionsEnabled_onceToken != -1)
  {
    dispatch_once(&quickActionsEnabled_onceToken, &__block_literal_global_14_31239);
  }

  return quickActionsEnabled_enabled;
}

+ (uint64_t)suggestionsShownInEditMode
{
  if (suggestionsShownInEditMode_onceToken != -1)
  {
    dispatch_once(&suggestionsShownInEditMode_onceToken, &__block_literal_global_9_31244);
  }

  return suggestionsShownInEditMode_enabled;
}

@end