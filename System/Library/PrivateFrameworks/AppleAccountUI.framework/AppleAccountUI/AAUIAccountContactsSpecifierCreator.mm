@interface AAUIAccountContactsSpecifierCreator
- (id)createAddTableCellWithTitle:(id)title loadAction:(SEL)action target:(id)target;
- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target;
- (id)createSubtitleTableCellWithName:(id)name title:(id)title subtitle:(id)subtitle image:(id)image;
- (id)createTableCellForContact:(id)contact loadAction:(SEL)action target:(id)target;
- (id)createTableCellWithName:(id)name title:(id)title longSubtitle:(id)subtitle image:(id)image;
@end

@implementation AAUIAccountContactsSpecifierCreator

- (id)createSubtitleTableCellWithName:(id)name title:(id)title subtitle:(id)subtitle image:(id)image
{
  imageCopy = image;
  v11 = MEMORY[0x1E69C5748];
  subtitleCopy = subtitle;
  titleCopy = title;
  v14 = [v11 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v14 setProperty:titleCopy forKey:*MEMORY[0x1E69C59A8]];

  [v14 setProperty:subtitleCopy forKey:*MEMORY[0x1E69C59A0]];
  if (imageCopy)
  {
    [v14 setProperty:imageCopy forKey:*MEMORY[0x1E69C5920]];
  }

  return v14;
}

- (id)createTableCellWithName:(id)name title:(id)title longSubtitle:(id)subtitle image:(id)image
{
  imageCopy = image;
  v11 = MEMORY[0x1E69C5748];
  subtitleCopy = subtitle;
  titleCopy = title;
  v14 = [v11 preferenceSpecifierNamed:name target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v14 setProperty:titleCopy forKey:*MEMORY[0x1E69C59A8]];

  [v14 setProperty:subtitleCopy forKey:*MEMORY[0x1E69C59A0]];
  if (imageCopy)
  {
    [v14 setProperty:imageCopy forKey:*MEMORY[0x1E69C5920]];
  }

  return v14;
}

- (id)createTableCellForContact:(id)contact loadAction:(SEL)action target:(id)target
{
  v7 = MEMORY[0x1E69C5748];
  targetCopy = target;
  contactCopy = contact;
  displayName = [contactCopy displayName];
  v11 = [v7 preferenceSpecifierNamed:displayName target:targetCopy set:0 get:0 detail:0 cell:2 edit:0];

  displayName2 = [contactCopy displayName];
  [v11 setProperty:displayName2 forKey:*MEMORY[0x1E69C59A8]];

  detailsText = [contactCopy detailsText];
  [v11 setProperty:detailsText forKey:*MEMORY[0x1E69C59A0]];

  v14 = [AAUITrustedContactsImageProvider imageForLocalContact:contactCopy];
  [v11 setProperty:v14 forKey:*MEMORY[0x1E69C5920]];

  [v11 setControllerLoadAction:action];
  [v11 setUserInfo:contactCopy];

  return v11;
}

- (id)createAddTableCellWithTitle:(id)title loadAction:(SEL)action target:(id)target
{
  v6 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:title target:target set:0 get:0 detail:0 cell:13 edit:0];
  v7 = +[AAUITrustedContactsImageProvider addContactImage];
  [v6 setProperty:v7 forKey:*MEMORY[0x1E69C5920]];

  [v6 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
  [v6 setIdentifier:@"AddTableCell"];
  [v6 setButtonAction:action];

  return v6;
}

- (id)createGroupSpecifierWithIdentifier:(id)identifier title:(id)title footerText:(id)text linkText:(id)linkText actionMethodName:(id)name target:(id)target
{
  v13 = MEMORY[0x1E696AEC0];
  targetCopy = target;
  nameCopy = name;
  linkTextCopy = linkText;
  titleCopy = title;
  identifierCopy = identifier;
  linkTextCopy = [v13 stringWithFormat:@"%@ %@", text, linkTextCopy];
  v20 = [MEMORY[0x1E69C5748] groupSpecifierWithID:identifierCopy name:titleCopy];

  [v20 setProperty:linkTextCopy forKey:*MEMORY[0x1E69C5900]];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v20 setProperty:v22 forKey:*MEMORY[0x1E69C58D8]];

  [v20 setProperty:linkTextCopy forKey:*MEMORY[0x1E69C58F8]];
  v23 = [linkTextCopy rangeOfString:linkTextCopy];
  v25 = v24;

  v30.location = v23;
  v30.length = v25;
  v26 = NSStringFromRange(v30);
  [v20 setProperty:v26 forKey:*MEMORY[0x1E69C58E8]];

  v27 = [MEMORY[0x1E696B098] valueWithNonretainedObject:targetCopy];

  [v20 setProperty:v27 forKey:*MEMORY[0x1E69C58F0]];
  [v20 setProperty:nameCopy forKey:*MEMORY[0x1E69C58E0]];

  return v20;
}

@end