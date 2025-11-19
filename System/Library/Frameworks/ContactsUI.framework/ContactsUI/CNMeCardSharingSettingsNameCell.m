@interface CNMeCardSharingSettingsNameCell
- (id)displayNameForGivenName:(id)a3 familyName:(id)a4;
- (void)setUpWithGivenName:(id)a3 familyName:(id)a4;
@end

@implementation CNMeCardSharingSettingsNameCell

- (id)displayNameForGivenName:(id)a3 familyName:(id)a4
{
  v5 = MEMORY[0x1E695CF18];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setGivenName:v7];

  [v8 setFamilyName:v6];
  v9 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:v8];
  v10 = [CNMeCardSharingNameFormatter formattedNameFromProvider:v9 withFormat:2];

  return v10;
}

- (void)setUpWithGivenName:(id)a3 familyName:(id)a4
{
  v6 = MEMORY[0x1E69DCC28];
  v7 = a4;
  v8 = a3;
  v12 = [v6 valueCellConfiguration];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_NAME_CELL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v12 setText:v10];

  v11 = [(CNMeCardSharingSettingsNameCell *)self displayNameForGivenName:v8 familyName:v7];

  [v12 setSecondaryText:v11];
  [(CNMeCardSharingSettingsNameCell *)self setContentConfiguration:v12];
  [(CNMeCardSharingSettingsNameCell *)self setAccessoryType:1];
}

@end