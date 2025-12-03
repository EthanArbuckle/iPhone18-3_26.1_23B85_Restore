@interface CNMeCardSharingSettingsNameCell
- (id)displayNameForGivenName:(id)name familyName:(id)familyName;
- (void)setUpWithGivenName:(id)name familyName:(id)familyName;
@end

@implementation CNMeCardSharingSettingsNameCell

- (id)displayNameForGivenName:(id)name familyName:(id)familyName
{
  v5 = MEMORY[0x1E695CF18];
  familyNameCopy = familyName;
  nameCopy = name;
  v8 = objc_alloc_init(v5);
  [v8 setGivenName:nameCopy];

  [v8 setFamilyName:familyNameCopy];
  v9 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:v8];
  v10 = [CNMeCardSharingNameFormatter formattedNameFromProvider:v9 withFormat:2];

  return v10;
}

- (void)setUpWithGivenName:(id)name familyName:(id)familyName
{
  v6 = MEMORY[0x1E69DCC28];
  familyNameCopy = familyName;
  nameCopy = name;
  valueCellConfiguration = [v6 valueCellConfiguration];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_NAME_CELL_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [valueCellConfiguration setText:v10];

  v11 = [(CNMeCardSharingSettingsNameCell *)self displayNameForGivenName:nameCopy familyName:familyNameCopy];

  [valueCellConfiguration setSecondaryText:v11];
  [(CNMeCardSharingSettingsNameCell *)self setContentConfiguration:valueCellConfiguration];
  [(CNMeCardSharingSettingsNameCell *)self setAccessoryType:1];
}

@end