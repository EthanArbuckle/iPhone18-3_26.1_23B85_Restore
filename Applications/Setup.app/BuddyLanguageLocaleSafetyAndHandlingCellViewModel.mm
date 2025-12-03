@interface BuddyLanguageLocaleSafetyAndHandlingCellViewModel
- (BuddyLanguageLocaleSafetyAndHandlingCellViewModel)initWithLocalizationProvider:(id)provider;
@end

@implementation BuddyLanguageLocaleSafetyAndHandlingCellViewModel

- (BuddyLanguageLocaleSafetyAndHandlingCellViewModel)initWithLocalizationProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v20.receiver = v3;
  v20.super_class = BuddyLanguageLocaleSafetyAndHandlingCellViewModel;
  v4 = [(BuddyLanguageLocaleSafetyAndHandlingCellViewModel *)&v20 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    languageCode = [location[0] languageCode];
    v5 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_TITLE"];
    v6 = sub_1001961E0(v5, languageCode);
    v7 = *(selfCopy + 2);
    *(selfCopy + 2) = v6;

    v8 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_SUBTITLE"];
    v9 = sub_1001961E0(v8, languageCode);
    v10 = *(selfCopy + 3);
    *(selfCopy + 3) = v9;

    v11 = +[BYSafetyAndHandlingConstants iconName];
    v12 = *(selfCopy + 4);
    *(selfCopy + 4) = v11;

    v13 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_BUTTON_TEXT"];
    v14 = sub_1001961E0(v13, languageCode);
    v15 = *(selfCopy + 5);
    *(selfCopy + 5) = v14;

    v16 = [NSParagraphStyle defaultWritingDirectionForLanguage:languageCode]== 1;
    *(selfCopy + 8) = v16;
    objc_storeStrong(&languageCode, 0);
  }

  v17 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

@end