@interface AAUIAccountContactsSpecifierCreator
- (id)createAddTableCellWithTitle:(id)a3 loadAction:(SEL)a4 target:(id)a5;
- (id)createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8;
- (id)createSubtitleTableCellWithName:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6;
- (id)createTableCellForContact:(id)a3 loadAction:(SEL)a4 target:(id)a5;
- (id)createTableCellWithName:(id)a3 title:(id)a4 longSubtitle:(id)a5 image:(id)a6;
@end

@implementation AAUIAccountContactsSpecifierCreator

- (id)createSubtitleTableCellWithName:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E69C5748];
  v12 = a5;
  v13 = a4;
  v14 = [v11 preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v14 setProperty:v13 forKey:*MEMORY[0x1E69C59A8]];

  [v14 setProperty:v12 forKey:*MEMORY[0x1E69C59A0]];
  if (v10)
  {
    [v14 setProperty:v10 forKey:*MEMORY[0x1E69C5920]];
  }

  return v14;
}

- (id)createTableCellWithName:(id)a3 title:(id)a4 longSubtitle:(id)a5 image:(id)a6
{
  v10 = a6;
  v11 = MEMORY[0x1E69C5748];
  v12 = a5;
  v13 = a4;
  v14 = [v11 preferenceSpecifierNamed:a3 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v14 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  [v14 setProperty:v13 forKey:*MEMORY[0x1E69C59A8]];

  [v14 setProperty:v12 forKey:*MEMORY[0x1E69C59A0]];
  if (v10)
  {
    [v14 setProperty:v10 forKey:*MEMORY[0x1E69C5920]];
  }

  return v14;
}

- (id)createTableCellForContact:(id)a3 loadAction:(SEL)a4 target:(id)a5
{
  v7 = MEMORY[0x1E69C5748];
  v8 = a5;
  v9 = a3;
  v10 = [v9 displayName];
  v11 = [v7 preferenceSpecifierNamed:v10 target:v8 set:0 get:0 detail:0 cell:2 edit:0];

  v12 = [v9 displayName];
  [v11 setProperty:v12 forKey:*MEMORY[0x1E69C59A8]];

  v13 = [v9 detailsText];
  [v11 setProperty:v13 forKey:*MEMORY[0x1E69C59A0]];

  v14 = [AAUITrustedContactsImageProvider imageForLocalContact:v9];
  [v11 setProperty:v14 forKey:*MEMORY[0x1E69C5920]];

  [v11 setControllerLoadAction:a4];
  [v11 setUserInfo:v9];

  return v11;
}

- (id)createAddTableCellWithTitle:(id)a3 loadAction:(SEL)a4 target:(id)a5
{
  v6 = [MEMORY[0x1E69C5748] preferenceSpecifierNamed:a3 target:a5 set:0 get:0 detail:0 cell:13 edit:0];
  v7 = +[AAUITrustedContactsImageProvider addContactImage];
  [v6 setProperty:v7 forKey:*MEMORY[0x1E69C5920]];

  [v6 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
  [v6 setIdentifier:@"AddTableCell"];
  [v6 setButtonAction:a4];

  return v6;
}

- (id)createGroupSpecifierWithIdentifier:(id)a3 title:(id)a4 footerText:(id)a5 linkText:(id)a6 actionMethodName:(id)a7 target:(id)a8
{
  v13 = MEMORY[0x1E696AEC0];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a4;
  v18 = a3;
  v19 = [v13 stringWithFormat:@"%@ %@", a5, v16];
  v20 = [MEMORY[0x1E69C5748] groupSpecifierWithID:v18 name:v17];

  [v20 setProperty:v19 forKey:*MEMORY[0x1E69C5900]];
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  [v20 setProperty:v22 forKey:*MEMORY[0x1E69C58D8]];

  [v20 setProperty:v19 forKey:*MEMORY[0x1E69C58F8]];
  v23 = [v19 rangeOfString:v16];
  v25 = v24;

  v30.location = v23;
  v30.length = v25;
  v26 = NSStringFromRange(v30);
  [v20 setProperty:v26 forKey:*MEMORY[0x1E69C58E8]];

  v27 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v14];

  [v20 setProperty:v27 forKey:*MEMORY[0x1E69C58F0]];
  [v20 setProperty:v15 forKey:*MEMORY[0x1E69C58E0]];

  return v20;
}

@end