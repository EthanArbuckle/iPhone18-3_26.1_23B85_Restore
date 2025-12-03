@interface CNContactRelationsDescriptionLabels
- (CNContactRelationsDescriptionLabels)initWithPreferredLanguages:(id)languages standardLabels:(id)labels standardLocaleSpecificLabels:(id)specificLabels extendedLabels:(id)extendedLabels extendedLocaleSpecificLabels:(id)localeSpecificLabels localizedStringsByLabelKey:(id)key;
@end

@implementation CNContactRelationsDescriptionLabels

- (CNContactRelationsDescriptionLabels)initWithPreferredLanguages:(id)languages standardLabels:(id)labels standardLocaleSpecificLabels:(id)specificLabels extendedLabels:(id)extendedLabels extendedLocaleSpecificLabels:(id)localeSpecificLabels localizedStringsByLabelKey:(id)key
{
  languagesCopy = languages;
  labelsCopy = labels;
  specificLabelsCopy = specificLabels;
  extendedLabelsCopy = extendedLabels;
  localeSpecificLabelsCopy = localeSpecificLabels;
  keyCopy = key;
  v25.receiver = self;
  v25.super_class = CNContactRelationsDescriptionLabels;
  v18 = [(CNContactRelationsDescriptionLabels *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_preferredLanguages, languages);
    objc_storeStrong(&v19->_standardLabels, labels);
    objc_storeStrong(&v19->_standardLocaleSpecificLabels, specificLabels);
    objc_storeStrong(&v19->_extendedLabels, extendedLabels);
    objc_storeStrong(&v19->_extendedLocaleSpecificLabels, localeSpecificLabels);
    objc_storeStrong(&v19->_localizedStringsByLabelKey, key);
    v20 = v19;
  }

  return v19;
}

@end