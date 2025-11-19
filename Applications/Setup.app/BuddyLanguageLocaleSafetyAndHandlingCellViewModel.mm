@interface BuddyLanguageLocaleSafetyAndHandlingCellViewModel
- (BuddyLanguageLocaleSafetyAndHandlingCellViewModel)initWithLocalizationProvider:(id)a3;
@end

@implementation BuddyLanguageLocaleSafetyAndHandlingCellViewModel

- (BuddyLanguageLocaleSafetyAndHandlingCellViewModel)initWithLocalizationProvider:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v22;
  v22 = 0;
  v20.receiver = v3;
  v20.super_class = BuddyLanguageLocaleSafetyAndHandlingCellViewModel;
  v4 = [(BuddyLanguageLocaleSafetyAndHandlingCellViewModel *)&v20 init];
  v22 = v4;
  objc_storeStrong(&v22, v4);
  if (v4)
  {
    v19 = [location[0] languageCode];
    v5 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_TITLE"];
    v6 = sub_1001961E0(v5, v19);
    v7 = *(v22 + 2);
    *(v22 + 2) = v6;

    v8 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_SUBTITLE"];
    v9 = sub_1001961E0(v8, v19);
    v10 = *(v22 + 3);
    *(v22 + 3) = v9;

    v11 = +[BYSafetyAndHandlingConstants iconName];
    v12 = *(v22 + 4);
    *(v22 + 4) = v11;

    v13 = [location[0] localizedStringForKey:@"SAFETY_AND_HANDLING_CARD_BUTTON_TEXT"];
    v14 = sub_1001961E0(v13, v19);
    v15 = *(v22 + 5);
    *(v22 + 5) = v14;

    v16 = [NSParagraphStyle defaultWritingDirectionForLanguage:v19]== 1;
    *(v22 + 8) = v16;
    objc_storeStrong(&v19, 0);
  }

  v17 = v22;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v22, 0);
  return v17;
}

@end