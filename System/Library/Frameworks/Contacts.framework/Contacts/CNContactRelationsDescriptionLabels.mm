@interface CNContactRelationsDescriptionLabels
- (CNContactRelationsDescriptionLabels)initWithPreferredLanguages:(id)a3 standardLabels:(id)a4 standardLocaleSpecificLabels:(id)a5 extendedLabels:(id)a6 extendedLocaleSpecificLabels:(id)a7 localizedStringsByLabelKey:(id)a8;
@end

@implementation CNContactRelationsDescriptionLabels

- (CNContactRelationsDescriptionLabels)initWithPreferredLanguages:(id)a3 standardLabels:(id)a4 standardLocaleSpecificLabels:(id)a5 extendedLabels:(id)a6 extendedLocaleSpecificLabels:(id)a7 localizedStringsByLabelKey:(id)a8
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = CNContactRelationsDescriptionLabels;
  v18 = [(CNContactRelationsDescriptionLabels *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_preferredLanguages, a3);
    objc_storeStrong(&v19->_standardLabels, a4);
    objc_storeStrong(&v19->_standardLocaleSpecificLabels, a5);
    objc_storeStrong(&v19->_extendedLabels, a6);
    objc_storeStrong(&v19->_extendedLocaleSpecificLabels, a7);
    objc_storeStrong(&v19->_localizedStringsByLabelKey, a8);
    v20 = v19;
  }

  return v19;
}

@end