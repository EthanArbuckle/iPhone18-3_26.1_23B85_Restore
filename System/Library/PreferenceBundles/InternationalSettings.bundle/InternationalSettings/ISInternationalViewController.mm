@interface ISInternationalViewController
+ (id)deviceLanguageFrom:(id)a3;
+ (id)localizedRestartStringForCurrentDevice;
- (BOOL)canEditLanguageAtIndexPath:(id)a3 tableView:(id)a4;
- (BOOL)indexPathIsInPreferredLanguagesGroup:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (ISInternationalViewController)init;
- (id)numberingSystem:(id)a3;
- (id)numberingSystemsShortTitles;
- (id)numberingSystemsTitles;
- (id)numberingSystemsValues;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)topLanguageFromArray:(id)a3;
- (unint64_t)sectionIndexForTableView:(id)a3 fromSuperSectionIndex:(unint64_t)a4;
- (void)addLanguagesToSpecifiers:(id)a3;
- (void)cancelEdits;
- (void)initializeUpdatedAppleLanguagesIfNeeded;
- (void)moveSpecifierAtIndexPath:(id)a3 toIndexPath:(id)a4 moveRow:(BOOL)a5;
- (void)setNumberingSystem:(id)a3 specifier:(id)a4;
- (void)showLanguageSheet:(id)a3;
- (void)showLocaleSheet:(id)a3;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)toggleEdit;
- (void)updateCell:(id)a3 forPreferredLanguageAtIndex:(unint64_t)a4;
- (void)updateSpecifiersForLocaleRegionChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation ISInternationalViewController

- (ISInternationalViewController)init
{
  v8.receiver = self;
  v8.super_class = ISInternationalViewController;
  v2 = [(ISInternationalViewController *)&v8 init];
  v3 = [objc_opt_class() preferredLanguages];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = [(ISInternationalViewController *)v2 editButtonItem];
    v6 = [(ISInternationalViewController *)v2 navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  dispatch_async(&_dispatch_main_q, &stru_35230);
  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ISInternationalViewController;
  [(ISInternationalViewController *)&v4 viewDidLoad];
  v3 = [(ISInternationalViewController *)self table];
  [v3 _setAllowsReorderingWhenNotEditing:1];
}

+ (id)deviceLanguageFrom:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.Foundation"];
  v5 = [v4 localizations];

  v6 = [NSBundle preferredLocalizationsFromArray:v5 forPreferences:v3];

  v7 = [v6 firstObject];

  v8 = [NSLocale canonicalLanguageIdentifierFromString:v7];

  return v8;
}

- (id)topLanguageFromArray:(id)a3
{
  v3 = [a3 firstObject];
  if (v3)
  {
    v4 = +[NSLocale renderableUILanguages];
    v5 = [v4 containsObject:v3];

    if ((v5 & 1) == 0)
    {
      v6 = [NSLocale baseLanguageFromLanguage:v3];

      v3 = v6;
    }
  }

  return v3;
}

- (void)addLanguagesToSpecifiers:(id)a3
{
  v21 = a3;
  v4 = [objc_opt_class() preferredLanguages];
  if ([(ISInternationalViewController *)self isEditing])
  {
    v5 = [(ISInternationalViewController *)self updatedAppleLanguages];

    if (v5)
    {
      v6 = [(ISInternationalViewController *)self updatedAppleLanguages];

      v4 = v6;
    }
  }

  if ([v4 count] >= 2 && (-[ISInternationalViewController isEditing](self, "isEditing") & 1) == 0)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"toggleEdit"];
    v8 = [(ISInternationalViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v7];
  }

  v20 = [v21 indexOfSpecifierWithID:@"PREFERRED_LANGUAGE_GROUP"];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v4 count];
    if (v9 >= 1)
    {
      v10 = v9 + 1;
      v19 = PSCellClassKey;
      do
      {
        v11 = [v4 objectAtIndexedSubscript:v10 - 2];
        v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:4 edit:0];

        v13 = [v4 objectAtIndexedSubscript:v10 - 2];
        v14 = [NSLocale localeWithLocaleIdentifier:v13];
        v15 = [v14 selectableScriptCodes];
        v16 = [v15 count];

        if (v16 >= 2)
        {
          v17 = [v4 objectAtIndexedSubscript:v10 - 2];
          v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          v12 = v18;
        }

        [v12 setProperty:objc_opt_class() forKey:v19];
        [v21 insertObject:v12 atIndex:v20 + 1];

        --v10;
      }

      while (v10 > 1);
    }
  }
}

- (BOOL)indexPathIsInPreferredLanguagesGroup:(id)a3
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = a3;
  [(ISInternationalViewController *)self getGroup:&v7 row:0 ofSpecifierID:@"PREFERRED_LANGUAGE_GROUP"];
  v5 = [v4 section];

  return v5 == v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v8 = [v7 row];
    v9 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"Cell"];
    [(ISInternationalViewController *)self updateCell:v9 forPreferredLanguageAtIndex:v8];
  }

  else
  {
    v10 = [(ISInternationalViewController *)self indexForIndexPath:v7];
    v11 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v10];
    if ([(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:v7])
    {
      v18.receiver = self;
      v18.super_class = ISInternationalViewController;
      v9 = [(ISInternationalViewController *)&v18 tableView:v6 cellForRowAtIndexPath:v7];
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

      if (v13)
      {
        v14 = [v11 name];
        v15 = [v9 textLabel];
        [v15 setText:v14];
      }

      else
      {
        -[ISInternationalViewController updateCell:forPreferredLanguageAtIndex:](self, "updateCell:forPreferredLanguageAtIndex:", v9, [v7 indexAtPosition:1]);
      }
    }

    else
    {

      v17.receiver = self;
      v17.super_class = ISInternationalViewController;
      v9 = [(ISInternationalViewController *)&v17 tableView:v6 cellForRowAtIndexPath:v7];
    }
  }

  return v9;
}

- (void)updateCell:(id)a3 forPreferredLanguageAtIndex:(unint64_t)a4
{
  v65 = a3;
  v6 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (!v6)
  {
    v6 = [objc_opt_class() preferredLanguages];
  }

  if ([v6 count] > a4)
  {
    v7 = [v6 objectAtIndexedSubscript:a4];
    v8 = [objc_opt_class() currentLocale];
    v9 = [v8 regionCode];

    v10 = [NSLocale localeWithLocaleIdentifier:v7];
    v11 = [v10 regionCode];

    v63 = v10;
    if (v11)
    {
      v12 = [v10 regionCode];
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    v14 = v7;
    v62 = v13;
    v64 = v9;
    v15 = v14;
    if ([v13 isEqualToString:v9])
    {
      v15 = [NSLocale baseLanguageFromLanguage:v14];
    }

    if ([IntlUtility canCapitalizeAutonymForLanguage:v14])
    {
      if (+[IntlUtility forceCapitalizationInLanguageLists])
      {
        v16 = 4;
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      v16 = 3;
    }

    v17 = [NSLocale localeWithLocaleIdentifier:v14];
    v18 = [v17 localizedStringForLanguage:v15 context:v16];

    v19 = [NSMutableDictionary dictionaryWithObject:v14 forKey:kCTLanguageAttributeName];
    v20 = [objc_opt_class() textColor];

    if (v20)
    {
      v21 = [objc_opt_class() textColor];
      [v19 setObject:v21 forKeyedSubscript:NSForegroundColorAttributeName];
    }

    v60 = v19;
    v61 = v18;
    v22 = [[NSAttributedString alloc] initWithString:v18 attributes:v19];
    v23 = [v65 textLabel];
    v59 = v22;
    [v23 setAttributedText:v22];

    v24 = [NSLocale baseLanguageFromLanguage:v15];
    deviceLanguageIndex = self->_deviceLanguageIndex;
    if (deviceLanguageIndex >= a4)
    {
      v26 = +[NSLocale systemLanguages];
      v27 = [v26 containsObject:v15];

      if (!v27)
      {
        if (([v24 isEqualToString:v15] & 1) == 0)
        {
          v34 = [objc_opt_class() deviceLanguageIdentifier];
          if ([v24 isEqualToString:v34])
          {
            v35 = v24;
            v36 = self->_deviceLanguageIndex;

            v37 = v36 >= a4;
            v24 = v35;
            if (v37)
            {
              v38 = [IPLanguage languageWithIdentifier:v35];
              v55 = [v38 localizedStringForName];

              v58 = [NSBundle bundleForClass:objc_opt_class()];
              v56 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"DEVICE_LANGUAGE_%@"];
              v39 = [v58 localizedStringForKey:v56 value:&stru_35798 table:@"InternationalSettings"];
              v40 = [NSString stringWithFormat:v55];
              v41 = [v65 detailTextLabel];
              [v41 setText:v40];

              self->_deviceLanguageIndex = a4;
            }
          }

          else
          {
          }
        }

LABEL_28:
        v42 = [v65 detailTextLabel];
        v43 = [v42 text];
        if (v43)
        {
          v44 = v43;
          v45 = v61;
        }

        else
        {
          v46 = v24;
          v47 = +[NSLocale _deviceLanguage];
          v48 = [NSLocale baseLanguageFromLanguage:v47];
          v49 = [v46 isEqualToString:v48];

          v24 = v46;
          v45 = v61;
          if (v49)
          {
            goto LABEL_32;
          }

          v50 = [IPLanguage languageWithIdentifier:v15];
          v42 = [v50 localizedStringForName];

          if ([v61 isEqualToString:v42])
          {
            v51 = 0;
          }

          else
          {
            v51 = v42;
          }

          v52 = [v65 detailTextLabel];
          [v52 setText:v51];

          v53 = [objc_opt_class() textColor];

          if (!v53)
          {
            v24 = v46;
            goto LABEL_31;
          }

          v44 = [objc_opt_class() textColor];
          v54 = [v65 detailTextLabel];
          [v54 setTextColor:v44];

          v24 = v46;
        }

LABEL_31:
LABEL_32:

        goto LABEL_33;
      }

      deviceLanguageIndex = self->_deviceLanguageIndex;
    }

    if (deviceLanguageIndex >= a4)
    {
      v28 = [objc_opt_class() deviceLanguageIdentifier];
      v29 = [v15 isEqualToString:v28];

      if (v29)
      {
        v57 = [NSBundle bundleForClass:objc_opt_class()];
        v30 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"DEVICE_LANGUAGE"];
        [v57 localizedStringForKey:v30 value:&stru_35798 table:@"InternationalSettings"];
        v32 = v31 = v24;
        v33 = [v65 detailTextLabel];
        [v33 setText:v32];

        v24 = v31;
        self->_deviceLanguageIndex = a4;
      }
    }

    goto LABEL_28;
  }

LABEL_33:
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:v5];
    v8 = [(ISInternationalViewController *)self specifierAtIndexPath:v5];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

    v6 = 0;
    if (v7 && (v10 & 1) == 0)
    {
      v11 = [objc_opt_class() preferredLanguages];
      v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
      v15 = v12;
      v13 = [NSArray arrayWithObjects:&v15 count:1];
      v6 = [IPLanguageListManager canRemoveLanguages:v13 fromPreferredLanguages:v11];
    }
  }

  return v6;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:v5];
    v8 = [(ISInternationalViewController *)self specifierAtIndexPath:v5];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

    v6 = v7 & (v10 ^ 1);
  }

  return v6;
}

- (void)initializeUpdatedAppleLanguagesIfNeeded
{
  v3 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v4 = [v3 count];

  if (!v4)
  {
    v6 = [objc_opt_class() preferredLanguages];
    if (![v6 count])
    {
      sub_20BD8();
    }

    v5 = [v6 mutableCopy];
    [(ISInternationalViewController *)self setUpdatedAppleLanguages:v5];
  }
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a5;
  [(ISInternationalViewController *)self initializeUpdatedAppleLanguagesIfNeeded];
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  [(ISInternationalViewController *)self getGroup:&v19 row:0 ofSpecifierID:@"PREFERRED_LANGUAGE_GROUP"];
  v7 = [v6 section];
  if (v7 == v19)
  {
    v8 = [v6 row];

    v9 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v10 = [v9 count];

    if (v8 >= v10)
    {
      v11 = [(ISInternationalViewController *)self updatedAppleLanguages];
      v8 = [v11 count] - 1;
    }

    v12 = v19;
    v13 = v8;
    goto LABEL_7;
  }

  v14 = [v6 section];

  v12 = v19;
  if (v14 < v19)
  {
    v13 = 0;
LABEL_7:
    v15 = [NSIndexPath indexPathForRow:v13 inSection:v12];
    goto LABEL_9;
  }

  v16 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v17 = [v16 count];
  v15 = [NSIndexPath indexPathForRow:v17 - 1 inSection:v19];

LABEL_9:

  return v15;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(ISInternationalViewController *)self moveSpecifierAtIndexPath:v7 toIndexPath:v8 moveRow:0];
  if ((-[ISInternationalViewController isEditing](self, "isEditing") & 1) == 0 && ([v8 isEqual:v7] & 1) == 0)
  {
    v9 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
    v10 = +[UIDevice currentDevice];
    v11 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v9, 0, [v10 sf_isiPad]);

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10C6C;
    v19[3] = &unk_35258;
    v19[4] = self;
    v20 = v8;
    v21 = v7;
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:v19];

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10CB4;
    v18[3] = &unk_35100;
    v18[4] = self;
    v17 = [UIAlertAction actionWithTitle:v16 style:2 handler:v18];

    [v11 addAction:v14];
    [v11 addAction:v17];
    [(ISInternationalViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)moveSpecifierAtIndexPath:(id)a3 toIndexPath:(id)a4 moveRow:(BOOL)a5
{
  v5 = a5;
  v27 = a3;
  v8 = a4;
  [(ISInternationalViewController *)self initializeUpdatedAppleLanguagesIfNeeded];
  v9 = [v27 row];
  v10 = [v8 row];
  v11 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v9 >= [v13 count])
  {
    sub_20C04();
  }

  v14 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v10 >= [v14 count])
  {
    sub_20C30();
  }

  v15 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v9 < [v15 count])
  {
    v16 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v17 = [v16 count];

    if (v10 >= v17)
    {
      goto LABEL_8;
    }

    v18 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v15 = [v18 objectAtIndexedSubscript:v9];

    v19 = [(ISInternationalViewController *)self updatedAppleLanguages];
    [v19 removeObjectAtIndex:v9];

    v20 = [(ISInternationalViewController *)self updatedAppleLanguages];
    [v20 insertObject:v15 atIndex:v10];
  }

LABEL_8:
  v21 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count])
  {
    v22 = [(ISInternationalViewController *)self indexForIndexPath:v27];
    v23 = [(ISInternationalViewController *)self indexForIndexPath:v8];
    if (v22 >= [*&self->PSListController_opaque[v21] count])
    {
      sub_20C5C();
    }

    if (v22 < [*&self->PSListController_opaque[v21] count])
    {
      v24 = [(ISInternationalViewController *)self specifierAtIndex:v22];
      if (v24)
      {
        v25 = [*&self->PSListController_opaque[v21] mutableCopy];
        if (v23 >= [v25 count])
        {
          sub_20C88();
        }

        v26 = [v25 count];
        if (v5)
        {
          if (v23 < v26)
          {
            [(ISInternationalViewController *)self removeSpecifierAtIndex:v22 animated:1];
            [(ISInternationalViewController *)self insertSpecifier:v24 atIndex:v23 animated:1];
          }
        }

        else
        {
          if (v23 < v26)
          {
            [v25 removeObjectAtIndex:v22];
            [v25 insertObject:v24 atIndex:v23];
          }

          objc_storeStrong(&self->PSListController_opaque[v21], v25);
        }
      }
    }
  }

LABEL_21:
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DELETE" value:&stru_35798 table:@"InternationalSettings"];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_110F8;
  v16 = &unk_352D0;
  v17 = self;
  v18 = v5;
  v8 = v5;
  v9 = [UIContextualAction contextualActionWithStyle:1 title:v7 handler:&v13];

  v19 = v9;
  v10 = [NSArray arrayWithObjects:&v19 count:1, v13, v14, v15, v16, v17];
  v11 = [UISwipeActionsConfiguration configurationWithActions:v10];

  return v11;
}

- (BOOL)canEditLanguageAtIndexPath:(id)a3 tableView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ISInternationalViewController *)self isEditing]&& ([(ISInternationalViewController *)self updatedAppleLanguages], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(ISInternationalViewController *)self updatedAppleLanguages];
  }

  else
  {
    v10 = [objc_opt_class() preferredLanguages];
  }

  v11 = [v6 row];
  if (v11 >= [v10 count])
  {
    sub_20CE0();
  }

  v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [IPLanguageListManager canRemoveLanguages:v13 fromPreferredLanguages:v10];

  return v14;
}

- (void)toggleEdit
{
  v3 = [(ISInternationalViewController *)self table];
  v4 = [v3 isEditing];

  v5 = self;
  if (!v4)
  {
    v11 = 1;
LABEL_8:
    [(ISInternationalViewController *)v5 setEditing:v11 animated:1];
    goto LABEL_26;
  }

  v6 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v7 = [v6 count];

  v5 = self;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v8 = [objc_opt_class() preferredLanguages];
  if (![v8 count])
  {
    sub_20D0C();
  }

  v9 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v10 = [v8 isEqualToArray:v9];

  if (v10)
  {
    [(ISInternationalViewController *)self setEditing:0 animated:1];
  }

  else
  {
    v12 = [IPLanguageListManager alloc];
    v13 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v14 = [v12 initWithPreferredLanguages:v13];
    v54 = [v14 systemDisplayLanguage];

    v15 = objc_opt_class();
    v16 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v17 = [v15 deviceLanguageFrom:v16];

    v18 = [objc_opt_class() deviceLanguageIdentifier];
    v19 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v20 = [(ISInternationalViewController *)self topLanguageFromArray:v19];

    v21 = [(ISInternationalViewController *)self topLanguageFromArray:v8];
    v22 = v21;
    v23 = &stru_35798;
    if (v21)
    {
      v23 = v21;
    }

    v24 = v23;

    v52 = v18;
    v53 = v17;
    v51 = [v17 isEqualToString:v18];
    v25 = [v20 isEqualToString:v24];

    v26 = +[NSLocale systemLanguages];
    v27 = [v26 containsObject:v20];

    if (v27 & 1) != 0 || (+[NSLocale systemLanguages](NSLocale, "systemLanguages"), v28 = objc_claimAutoreleasedReturnValue(), +[NSLocale baseLanguageFromLanguage:](NSLocale, "baseLanguageFromLanguage:", v20), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v28 containsObject:v29], v29, v28, ((v25 | v30)))
    {
      v31 = +[ISInternationalViewController localizedRestartStringForCurrentDevice];
    }

    else
    {
      v32 = [NSBundle bundleForClass:objc_opt_class()];
      v33 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"%@_IS_UNSUPPORTED_DEVICE_WILL_FALLBACK_TO_%@_WHERE_%@_IS_NOT_SUPPORTED"];
      v34 = [v32 localizedStringForKey:v33 value:&stru_35798 table:@"InternationalSettings"];
      v31 = [NSLocale string:v34 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v20 secondLanguageIdentifier:v54 thirdLanguageIdentifier:v20];
    }

    v35 = [PSConfirmationSpecifier preferenceSpecifierNamed:v31 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v55 = PSConfirmationCancelKey;
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v56 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v39 = [v38 mutableCopy];

    v40 = +[UIDevice currentDevice];
    v41 = [v40 sf_isiPad];

    if (!v31 || (v41 & 1) != 0)
    {
      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"%@_WILL_BE_USED_AS_DEVICE_LANGUAGE"];
      v47 = [v45 localizedStringForKey:v46 value:&stru_35798 table:@"InternationalSettings"];
      v42 = [NSLocale string:v47 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v54 secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

      if (v51)
      {
        v48 = [NSBundle bundleForClass:objc_opt_class()];
        v49 = [v48 localizedStringForKey:@"ASK_CHANGE_LANGUAGE_PREFERENCE_TITLE" value:&stru_35798 table:@"InternationalSettings"];
        [v39 setObject:v49 forKeyedSubscript:PSConfirmationTitleKey];
      }

      else
      {
        [v39 setObject:v42 forKeyedSubscript:PSConfirmationTitleKey];
      }

      v44 = v53;
      if (v31)
      {
        [v39 setObject:v31 forKeyedSubscript:PSConfirmationPromptKey];
      }

      v43 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v43 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
      [v39 setObject:v50 forKeyedSubscript:PSConfirmationOKKey];
    }

    else
    {
      [v39 setObject:v31 forKeyedSubscript:PSConfirmationPromptKey];
      v42 = [NSBundle bundleForClass:objc_opt_class()];
      v43 = [v42 localizedStringForKey:@"CONTINUE_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
      [v39 setObject:v43 forKeyedSubscript:PSConfirmationTitleKey];
      v44 = v53;
    }

    [v35 setupWithDictionary:v39];
    [v35 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    [v35 setConfirmationAction:"changeLanguage:"];
    [v35 setConfirmationCancelAction:"cancelChangeLanguage:"];
    [(ISInternationalViewController *)self showConfirmationViewForSpecifier:v35];
  }

LABEL_26:
  [(ISInternationalViewController *)self beginUpdates];
  [(ISInternationalViewController *)self endUpdates];
}

- (void)updateSpecifiersForLocaleRegionChange:(id)a3
{
  v4 = a3;
  v5 = [(ISInternationalViewController *)self specifierForID:@"LOCALE"];
  [v5 setProperty:v4 forKey:PSValueKey];
  [v5 setProperty:v4 forKey:@"country"];

  v6 = [(ISInternationalViewController *)self specifierForID:@"LOCALE"];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = v5;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(ISInternationalViewController *)self replaceContiguousSpecifiers:v7 withSpecifiers:v8];
}

- (unint64_t)sectionIndexForTableView:(id)a3 fromSuperSectionIndex:(unint64_t)a4
{
  v6 = a3;
  if (([(ISInternationalViewController *)self isEditing]& 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = ISInternationalViewController;
    a4 -= [(ISInternationalViewController *)&v8 numberOfSectionsInTableView:v6];
  }

  return a4;
}

- (void)cancelEdits
{
  [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  v3 = [(ISInternationalViewController *)self navigationItem];
  [v3 setHidesBackButton:0 animated:1];

  v6.receiver = self;
  v6.super_class = ISInternationalViewController;
  [(ISInternationalViewController *)&v6 setEditing:0 animated:1];
  v4 = [(ISInternationalViewController *)self table];
  [v4 setEditing:0 animated:1];

  v5 = [(ISInternationalViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:0];

  [(ISInternationalViewController *)self reloadSpecifiers];
}

- (void)showLanguageSheet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISLanguageSetupController);
  [(ISLanguageSetupController *)v5 setParentController:self];
  [(ISLanguageSetupController *)v5 setSpecifier:v4];
  objc_storeWeak(&v4[OBJC_IVAR___PSSpecifier_target], self);

  [(ISInternationalViewController *)self showController:v5];
}

- (void)showLocaleSheet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ISLocaleSetupController);
  [(ISLocaleSetupController *)v5 setParentController:self];
  [(ISLocaleSetupController *)v5 setSpecifier:v4];
  objc_storeWeak(&v4[OBJC_IVAR___PSSpecifier_target], self);

  [(ISInternationalViewController *)self showController:v5];
}

+ (id)localizedRestartStringForCurrentDevice
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [ISInternationalViewController modelSpecificLocalizedStringKeyForKey:@"APPLYING_WILL_RESTART"];
  v4 = [v2 localizedStringForKey:v3 value:&stru_35798 table:@"InternationalSettings"];

  return v4;
}

- (id)numberingSystem:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  if (!v3)
  {
    v4 = [objc_opt_class() currentLocale];
    v5 = [v4 localeIdentifier];

    v6 = [NSLocale componentsFromLocaleIdentifier:v5];
    v3 = [v6 objectForKey:@"numbers"];
    if (!v3)
    {
      v3 = [IntlUtility defaultNumberingSystemForLocaleID:v5];
    }
  }

  return v3;
}

- (void)setNumberingSystem:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() currentLocale];
  v9 = [v8 localeIdentifier];

  v10 = [NSLocale componentsFromLocaleIdentifier:v9];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v10];
  [v12 removeObjectForKey:@"numbers"];
  v13 = [NSLocale localeIdentifierFromComponents:v12];
  v14 = [IntlUtility defaultNumberingSystemForLocaleID:v13];

  if ([v14 isEqual:v6])
  {
    [v11 removeObjectForKey:@"numbers"];
  }

  else
  {
    [v11 setObject:v6 forKey:@"numbers"];
  }

  if (([v10 isEqual:v11] & 1) == 0)
  {
    v15 = [NSLocale canonicalLocaleIdentifierFromComponents:v11];

    [(ISInternationalViewController *)self setLocaleOnly:v15];
    v9 = v15;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v16 = qword_3D060;
  v23 = qword_3D060;
  if (!qword_3D060)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_12F9C;
    v19[3] = &unk_35000;
    v19[4] = &v20;
    sub_12F9C(v19);
    v16 = v21[3];
  }

  v17 = v16;
  _Block_object_dispose(&v20, 8);
  v18 = [v16 sharedCloudSettingsManager];
  [v18 writeToCloudSettings:&off_36E68 forStore:@"com.apple.cloudsettings.international"];
}

- (id)numberingSystemsTitles
{
  v3 = +[NSMutableArray array];
  v4 = [objc_opt_class() currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = [(ISInternationalViewController *)self numberingSystemsValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [IntlUtility displayNameForNumberingSystemWithIdentifier:*(*(&v13 + 1) + 8 * i) localeIdentifier:v5];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)numberingSystemsShortTitles
{
  v2 = +[NSMutableArray array];
  v3 = [objc_opt_class() currentLocale];
  v4 = [v3 localeIdentifier];

  v5 = [IntlUtility numberingSystemsForLocaleID:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [IntlUtility shortDisplayNameForNumberingSystemWithIdentifier:*(*(&v12 + 1) + 8 * i) localeIdentifier:v4];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)numberingSystemsValues
{
  v2 = [objc_opt_class() currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [IntlUtility numberingSystemsForLocaleID:v3];

  return v4;
}

@end