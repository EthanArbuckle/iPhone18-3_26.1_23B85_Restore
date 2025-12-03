@interface ISInternationalViewController
+ (id)deviceLanguageFrom:(id)from;
+ (id)localizedRestartStringForCurrentDevice;
- (BOOL)canEditLanguageAtIndexPath:(id)path tableView:(id)view;
- (BOOL)indexPathIsInPreferredLanguagesGroup:(id)group;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (ISInternationalViewController)init;
- (id)numberingSystem:(id)system;
- (id)numberingSystemsShortTitles;
- (id)numberingSystemsTitles;
- (id)numberingSystemsValues;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)topLanguageFromArray:(id)array;
- (unint64_t)sectionIndexForTableView:(id)view fromSuperSectionIndex:(unint64_t)index;
- (void)addLanguagesToSpecifiers:(id)specifiers;
- (void)cancelEdits;
- (void)initializeUpdatedAppleLanguagesIfNeeded;
- (void)moveSpecifierAtIndexPath:(id)path toIndexPath:(id)indexPath moveRow:(BOOL)row;
- (void)setNumberingSystem:(id)system specifier:(id)specifier;
- (void)showLanguageSheet:(id)sheet;
- (void)showLocaleSheet:(id)sheet;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)toggleEdit;
- (void)updateCell:(id)cell forPreferredLanguageAtIndex:(unint64_t)index;
- (void)updateSpecifiersForLocaleRegionChange:(id)change;
- (void)viewDidLoad;
@end

@implementation ISInternationalViewController

- (ISInternationalViewController)init
{
  v8.receiver = self;
  v8.super_class = ISInternationalViewController;
  v2 = [(ISInternationalViewController *)&v8 init];
  preferredLanguages = [objc_opt_class() preferredLanguages];
  v4 = [preferredLanguages count];

  if (v4 >= 2)
  {
    editButtonItem = [(ISInternationalViewController *)v2 editButtonItem];
    navigationItem = [(ISInternationalViewController *)v2 navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  dispatch_async(&_dispatch_main_q, &stru_35230);
  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ISInternationalViewController;
  [(ISInternationalViewController *)&v4 viewDidLoad];
  table = [(ISInternationalViewController *)self table];
  [table _setAllowsReorderingWhenNotEditing:1];
}

+ (id)deviceLanguageFrom:(id)from
{
  fromCopy = from;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.Foundation"];
  localizations = [v4 localizations];

  v6 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:fromCopy];

  firstObject = [v6 firstObject];

  v8 = [NSLocale canonicalLanguageIdentifierFromString:firstObject];

  return v8;
}

- (id)topLanguageFromArray:(id)array
{
  firstObject = [array firstObject];
  if (firstObject)
  {
    v4 = +[NSLocale renderableUILanguages];
    v5 = [v4 containsObject:firstObject];

    if ((v5 & 1) == 0)
    {
      v6 = [NSLocale baseLanguageFromLanguage:firstObject];

      firstObject = v6;
    }
  }

  return firstObject;
}

- (void)addLanguagesToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  preferredLanguages = [objc_opt_class() preferredLanguages];
  if ([(ISInternationalViewController *)self isEditing])
  {
    updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];

    if (updatedAppleLanguages)
    {
      updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];

      preferredLanguages = updatedAppleLanguages2;
    }
  }

  if ([preferredLanguages count] >= 2 && (-[ISInternationalViewController isEditing](self, "isEditing") & 1) == 0)
  {
    v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"toggleEdit"];
    navigationItem = [(ISInternationalViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v7];
  }

  v20 = [specifiersCopy indexOfSpecifierWithID:@"PREFERRED_LANGUAGE_GROUP"];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [preferredLanguages count];
    if (v9 >= 1)
    {
      v10 = v9 + 1;
      v19 = PSCellClassKey;
      do
      {
        v11 = [preferredLanguages objectAtIndexedSubscript:v10 - 2];
        v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:4 edit:0];

        v13 = [preferredLanguages objectAtIndexedSubscript:v10 - 2];
        v14 = [NSLocale localeWithLocaleIdentifier:v13];
        selectableScriptCodes = [v14 selectableScriptCodes];
        v16 = [selectableScriptCodes count];

        if (v16 >= 2)
        {
          v17 = [preferredLanguages objectAtIndexedSubscript:v10 - 2];
          v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          v12 = v18;
        }

        [v12 setProperty:objc_opt_class() forKey:v19];
        [specifiersCopy insertObject:v12 atIndex:v20 + 1];

        --v10;
      }

      while (v10 > 1);
    }
  }
}

- (BOOL)indexPathIsInPreferredLanguagesGroup:(id)group
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  groupCopy = group;
  [(ISInternationalViewController *)self getGroup:&v7 row:0 ofSpecifierID:@"PREFERRED_LANGUAGE_GROUP"];
  section = [groupCopy section];

  return section == v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v8 = [pathCopy row];
    v9 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"Cell"];
    [(ISInternationalViewController *)self updateCell:v9 forPreferredLanguageAtIndex:v8];
  }

  else
  {
    v10 = [(ISInternationalViewController *)self indexForIndexPath:pathCopy];
    v11 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v10];
    if ([(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:pathCopy])
    {
      v18.receiver = self;
      v18.super_class = ISInternationalViewController;
      v9 = [(ISInternationalViewController *)&v18 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
      identifier = [v11 identifier];
      v13 = [identifier isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

      if (v13)
      {
        name = [v11 name];
        textLabel = [v9 textLabel];
        [textLabel setText:name];
      }

      else
      {
        -[ISInternationalViewController updateCell:forPreferredLanguageAtIndex:](self, "updateCell:forPreferredLanguageAtIndex:", v9, [pathCopy indexAtPosition:1]);
      }
    }

    else
    {

      v17.receiver = self;
      v17.super_class = ISInternationalViewController;
      v9 = [(ISInternationalViewController *)&v17 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    }
  }

  return v9;
}

- (void)updateCell:(id)cell forPreferredLanguageAtIndex:(unint64_t)index
{
  cellCopy = cell;
  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (!updatedAppleLanguages)
  {
    updatedAppleLanguages = [objc_opt_class() preferredLanguages];
  }

  if ([updatedAppleLanguages count] > index)
  {
    v7 = [updatedAppleLanguages objectAtIndexedSubscript:index];
    currentLocale = [objc_opt_class() currentLocale];
    regionCode = [currentLocale regionCode];

    v10 = [NSLocale localeWithLocaleIdentifier:v7];
    regionCode2 = [v10 regionCode];

    v63 = v10;
    if (regionCode2)
    {
      regionCode3 = [v10 regionCode];
    }

    else
    {
      regionCode3 = regionCode;
    }

    v13 = regionCode3;
    v14 = v7;
    v62 = v13;
    v64 = regionCode;
    v15 = v14;
    if ([v13 isEqualToString:regionCode])
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
    textColor = [objc_opt_class() textColor];

    if (textColor)
    {
      textColor2 = [objc_opt_class() textColor];
      [v19 setObject:textColor2 forKeyedSubscript:NSForegroundColorAttributeName];
    }

    v60 = v19;
    v61 = v18;
    v22 = [[NSAttributedString alloc] initWithString:v18 attributes:v19];
    textLabel = [cellCopy textLabel];
    v59 = v22;
    [textLabel setAttributedText:v22];

    v24 = [NSLocale baseLanguageFromLanguage:v15];
    deviceLanguageIndex = self->_deviceLanguageIndex;
    if (deviceLanguageIndex >= index)
    {
      v26 = +[NSLocale systemLanguages];
      v27 = [v26 containsObject:v15];

      if (!v27)
      {
        if (([v24 isEqualToString:v15] & 1) == 0)
        {
          deviceLanguageIdentifier = [objc_opt_class() deviceLanguageIdentifier];
          if ([v24 isEqualToString:deviceLanguageIdentifier])
          {
            v35 = v24;
            v36 = self->_deviceLanguageIndex;

            v37 = v36 >= index;
            v24 = v35;
            if (v37)
            {
              v38 = [IPLanguage languageWithIdentifier:v35];
              localizedStringForName = [v38 localizedStringForName];

              v58 = [NSBundle bundleForClass:objc_opt_class()];
              v56 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"DEVICE_LANGUAGE_%@"];
              v39 = [v58 localizedStringForKey:v56 value:&stru_35798 table:@"InternationalSettings"];
              v40 = [NSString stringWithFormat:localizedStringForName];
              detailTextLabel = [cellCopy detailTextLabel];
              [detailTextLabel setText:v40];

              self->_deviceLanguageIndex = index;
            }
          }

          else
          {
          }
        }

LABEL_28:
        detailTextLabel2 = [cellCopy detailTextLabel];
        text = [detailTextLabel2 text];
        if (text)
        {
          textColor4 = text;
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
          detailTextLabel2 = [v50 localizedStringForName];

          if ([v61 isEqualToString:detailTextLabel2])
          {
            v51 = 0;
          }

          else
          {
            v51 = detailTextLabel2;
          }

          detailTextLabel3 = [cellCopy detailTextLabel];
          [detailTextLabel3 setText:v51];

          textColor3 = [objc_opt_class() textColor];

          if (!textColor3)
          {
            v24 = v46;
            goto LABEL_31;
          }

          textColor4 = [objc_opt_class() textColor];
          detailTextLabel4 = [cellCopy detailTextLabel];
          [detailTextLabel4 setTextColor:textColor4];

          v24 = v46;
        }

LABEL_31:
LABEL_32:

        goto LABEL_33;
      }

      deviceLanguageIndex = self->_deviceLanguageIndex;
    }

    if (deviceLanguageIndex >= index)
    {
      deviceLanguageIdentifier2 = [objc_opt_class() deviceLanguageIdentifier];
      v29 = [v15 isEqualToString:deviceLanguageIdentifier2];

      if (v29)
      {
        v57 = [NSBundle bundleForClass:objc_opt_class()];
        v30 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"DEVICE_LANGUAGE"];
        [v57 localizedStringForKey:v30 value:&stru_35798 table:@"InternationalSettings"];
        v32 = v31 = v24;
        detailTextLabel5 = [cellCopy detailTextLabel];
        [detailTextLabel5 setText:v32];

        v24 = v31;
        self->_deviceLanguageIndex = index;
      }
    }

    goto LABEL_28;
  }

LABEL_33:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:pathCopy];
    v8 = [(ISInternationalViewController *)self specifierAtIndexPath:pathCopy];
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

    v6 = 0;
    if (v7 && (v10 & 1) == 0)
    {
      preferredLanguages = [objc_opt_class() preferredLanguages];
      v12 = [preferredLanguages objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v15 = v12;
      v13 = [NSArray arrayWithObjects:&v15 count:1];
      v6 = [IPLanguageListManager canRemoveLanguages:v13 fromPreferredLanguages:preferredLanguages];
    }
  }

  return v6;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(ISInternationalViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ISInternationalViewController *)self indexPathIsInPreferredLanguagesGroup:pathCopy];
    v8 = [(ISInternationalViewController *)self specifierAtIndexPath:pathCopy];
    identifier = [v8 identifier];
    v10 = [identifier isEqualToString:@"ADD_PREFERRED_LANGUAGE"];

    v6 = v7 & (v10 ^ 1);
  }

  return v6;
}

- (void)initializeUpdatedAppleLanguagesIfNeeded
{
  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  v4 = [updatedAppleLanguages count];

  if (!v4)
  {
    preferredLanguages = [objc_opt_class() preferredLanguages];
    if (![preferredLanguages count])
    {
      sub_20BD8();
    }

    v5 = [preferredLanguages mutableCopy];
    [(ISInternationalViewController *)self setUpdatedAppleLanguages:v5];
  }
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  [(ISInternationalViewController *)self initializeUpdatedAppleLanguagesIfNeeded];
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  [(ISInternationalViewController *)self getGroup:&v19 row:0 ofSpecifierID:@"PREFERRED_LANGUAGE_GROUP"];
  section = [indexPathCopy section];
  if (section == v19)
  {
    v8 = [indexPathCopy row];

    updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
    v10 = [updatedAppleLanguages count];

    if (v8 >= v10)
    {
      updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];
      v8 = [updatedAppleLanguages2 count] - 1;
    }

    v12 = v19;
    v13 = v8;
    goto LABEL_7;
  }

  section2 = [indexPathCopy section];

  v12 = v19;
  if (section2 < v19)
  {
    v13 = 0;
LABEL_7:
    v15 = [NSIndexPath indexPathForRow:v13 inSection:v12];
    goto LABEL_9;
  }

  updatedAppleLanguages3 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v17 = [updatedAppleLanguages3 count];
  v15 = [NSIndexPath indexPathForRow:v17 - 1 inSection:v19];

LABEL_9:

  return v15;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  [(ISInternationalViewController *)self moveSpecifierAtIndexPath:pathCopy toIndexPath:indexPathCopy moveRow:0];
  if ((-[ISInternationalViewController isEditing](self, "isEditing") & 1) == 0 && ([indexPathCopy isEqual:pathCopy] & 1) == 0)
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
    v20 = indexPathCopy;
    v21 = pathCopy;
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

- (void)moveSpecifierAtIndexPath:(id)path toIndexPath:(id)indexPath moveRow:(BOOL)row
{
  rowCopy = row;
  pathCopy = path;
  indexPathCopy = indexPath;
  [(ISInternationalViewController *)self initializeUpdatedAppleLanguagesIfNeeded];
  v9 = [pathCopy row];
  v10 = [indexPathCopy row];
  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  v12 = [updatedAppleLanguages count];

  if (!v12)
  {
    goto LABEL_21;
  }

  updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v9 >= [updatedAppleLanguages2 count])
  {
    sub_20C04();
  }

  updatedAppleLanguages3 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v10 >= [updatedAppleLanguages3 count])
  {
    sub_20C30();
  }

  updatedAppleLanguages4 = [(ISInternationalViewController *)self updatedAppleLanguages];
  if (v9 < [updatedAppleLanguages4 count])
  {
    updatedAppleLanguages5 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v17 = [updatedAppleLanguages5 count];

    if (v10 >= v17)
    {
      goto LABEL_8;
    }

    updatedAppleLanguages6 = [(ISInternationalViewController *)self updatedAppleLanguages];
    updatedAppleLanguages4 = [updatedAppleLanguages6 objectAtIndexedSubscript:v9];

    updatedAppleLanguages7 = [(ISInternationalViewController *)self updatedAppleLanguages];
    [updatedAppleLanguages7 removeObjectAtIndex:v9];

    updatedAppleLanguages8 = [(ISInternationalViewController *)self updatedAppleLanguages];
    [updatedAppleLanguages8 insertObject:updatedAppleLanguages4 atIndex:v10];
  }

LABEL_8:
  v21 = OBJC_IVAR___PSListController__specifiers;
  if ([*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count])
  {
    v22 = [(ISInternationalViewController *)self indexForIndexPath:pathCopy];
    v23 = [(ISInternationalViewController *)self indexForIndexPath:indexPathCopy];
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
        if (rowCopy)
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

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DELETE" value:&stru_35798 table:@"InternationalSettings"];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_110F8;
  v16 = &unk_352D0;
  selfCopy = self;
  v18 = pathCopy;
  v8 = pathCopy;
  v9 = [UIContextualAction contextualActionWithStyle:1 title:v7 handler:&v13];

  v19 = v9;
  selfCopy = [NSArray arrayWithObjects:&v19 count:1, v13, v14, v15, v16, selfCopy];
  v11 = [UISwipeActionsConfiguration configurationWithActions:selfCopy];

  return v11;
}

- (BOOL)canEditLanguageAtIndexPath:(id)path tableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  if ([(ISInternationalViewController *)self isEditing]&& ([(ISInternationalViewController *)self updatedAppleLanguages], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  }

  else
  {
    updatedAppleLanguages = [objc_opt_class() preferredLanguages];
  }

  v11 = [pathCopy row];
  if (v11 >= [updatedAppleLanguages count])
  {
    sub_20CE0();
  }

  v12 = [updatedAppleLanguages objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v16 = v12;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  v14 = [IPLanguageListManager canRemoveLanguages:v13 fromPreferredLanguages:updatedAppleLanguages];

  return v14;
}

- (void)toggleEdit
{
  table = [(ISInternationalViewController *)self table];
  isEditing = [table isEditing];

  selfCopy2 = self;
  if (!isEditing)
  {
    v11 = 1;
LABEL_8:
    [(ISInternationalViewController *)selfCopy2 setEditing:v11 animated:1];
    goto LABEL_26;
  }

  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  v7 = [updatedAppleLanguages count];

  selfCopy2 = self;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_8;
  }

  preferredLanguages = [objc_opt_class() preferredLanguages];
  if (![preferredLanguages count])
  {
    sub_20D0C();
  }

  updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v10 = [preferredLanguages isEqualToArray:updatedAppleLanguages2];

  if (v10)
  {
    [(ISInternationalViewController *)self setEditing:0 animated:1];
  }

  else
  {
    v12 = [IPLanguageListManager alloc];
    updatedAppleLanguages3 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v14 = [v12 initWithPreferredLanguages:updatedAppleLanguages3];
    systemDisplayLanguage = [v14 systemDisplayLanguage];

    v15 = objc_opt_class();
    updatedAppleLanguages4 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v17 = [v15 deviceLanguageFrom:updatedAppleLanguages4];

    deviceLanguageIdentifier = [objc_opt_class() deviceLanguageIdentifier];
    updatedAppleLanguages5 = [(ISInternationalViewController *)self updatedAppleLanguages];
    v20 = [(ISInternationalViewController *)self topLanguageFromArray:updatedAppleLanguages5];

    v21 = [(ISInternationalViewController *)self topLanguageFromArray:preferredLanguages];
    v22 = v21;
    v23 = &stru_35798;
    if (v21)
    {
      v23 = v21;
    }

    v24 = v23;

    v52 = deviceLanguageIdentifier;
    v53 = v17;
    v51 = [v17 isEqualToString:deviceLanguageIdentifier];
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
      v31 = [NSLocale string:v34 withCapitalizedDisplayNamesForFirstLanguageIdentifier:v20 secondLanguageIdentifier:systemDisplayLanguage thirdLanguageIdentifier:v20];
    }

    v35 = [PSConfirmationSpecifier preferenceSpecifierNamed:v31 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v55 = PSConfirmationCancelKey;
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"CANCEL_CHANGE_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
    v56 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v39 = [v38 mutableCopy];

    v40 = +[UIDevice currentDevice];
    sf_isiPad = [v40 sf_isiPad];

    if (!v31 || (sf_isiPad & 1) != 0)
    {
      v45 = [NSBundle bundleForClass:objc_opt_class()];
      v46 = [objc_opt_class() modelSpecificLocalizedStringKeyForKey:@"%@_WILL_BE_USED_AS_DEVICE_LANGUAGE"];
      v47 = [v45 localizedStringForKey:v46 value:&stru_35798 table:@"InternationalSettings"];
      v42 = [NSLocale string:v47 withCapitalizedDisplayNamesForFirstLanguageIdentifier:systemDisplayLanguage secondLanguageIdentifier:0 thirdLanguageIdentifier:0];

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

- (void)updateSpecifiersForLocaleRegionChange:(id)change
{
  changeCopy = change;
  v5 = [(ISInternationalViewController *)self specifierForID:@"LOCALE"];
  [v5 setProperty:changeCopy forKey:PSValueKey];
  [v5 setProperty:changeCopy forKey:@"country"];

  v6 = [(ISInternationalViewController *)self specifierForID:@"LOCALE"];
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = v5;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [(ISInternationalViewController *)self replaceContiguousSpecifiers:v7 withSpecifiers:v8];
}

- (unint64_t)sectionIndexForTableView:(id)view fromSuperSectionIndex:(unint64_t)index
{
  viewCopy = view;
  if (([(ISInternationalViewController *)self isEditing]& 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = ISInternationalViewController;
    index -= [(ISInternationalViewController *)&v8 numberOfSectionsInTableView:viewCopy];
  }

  return index;
}

- (void)cancelEdits
{
  [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  navigationItem = [(ISInternationalViewController *)self navigationItem];
  [navigationItem setHidesBackButton:0 animated:1];

  v6.receiver = self;
  v6.super_class = ISInternationalViewController;
  [(ISInternationalViewController *)&v6 setEditing:0 animated:1];
  table = [(ISInternationalViewController *)self table];
  [table setEditing:0 animated:1];

  navigationItem2 = [(ISInternationalViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:0];

  [(ISInternationalViewController *)self reloadSpecifiers];
}

- (void)showLanguageSheet:(id)sheet
{
  sheetCopy = sheet;
  v5 = objc_alloc_init(ISLanguageSetupController);
  [(ISLanguageSetupController *)v5 setParentController:self];
  [(ISLanguageSetupController *)v5 setSpecifier:sheetCopy];
  objc_storeWeak(&sheetCopy[OBJC_IVAR___PSSpecifier_target], self);

  [(ISInternationalViewController *)self showController:v5];
}

- (void)showLocaleSheet:(id)sheet
{
  sheetCopy = sheet;
  v5 = objc_alloc_init(ISLocaleSetupController);
  [(ISLocaleSetupController *)v5 setParentController:self];
  [(ISLocaleSetupController *)v5 setSpecifier:sheetCopy];
  objc_storeWeak(&sheetCopy[OBJC_IVAR___PSSpecifier_target], self);

  [(ISInternationalViewController *)self showController:v5];
}

+ (id)localizedRestartStringForCurrentDevice
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [ISInternationalViewController modelSpecificLocalizedStringKeyForKey:@"APPLYING_WILL_RESTART"];
  v4 = [v2 localizedStringForKey:v3 value:&stru_35798 table:@"InternationalSettings"];

  return v4;
}

- (id)numberingSystem:(id)system
{
  v3 = [system propertyForKey:PSValueKey];
  if (!v3)
  {
    currentLocale = [objc_opt_class() currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
    v3 = [v6 objectForKey:@"numbers"];
    if (!v3)
    {
      v3 = [IntlUtility defaultNumberingSystemForLocaleID:localeIdentifier];
    }
  }

  return v3;
}

- (void)setNumberingSystem:(id)system specifier:(id)specifier
{
  systemCopy = system;
  specifierCopy = specifier;
  currentLocale = [objc_opt_class() currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v10 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
  v11 = [NSMutableDictionary dictionaryWithDictionary:v10];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v10];
  [v12 removeObjectForKey:@"numbers"];
  v13 = [NSLocale localeIdentifierFromComponents:v12];
  v14 = [IntlUtility defaultNumberingSystemForLocaleID:v13];

  if ([v14 isEqual:systemCopy])
  {
    [v11 removeObjectForKey:@"numbers"];
  }

  else
  {
    [v11 setObject:systemCopy forKey:@"numbers"];
  }

  if (([v10 isEqual:v11] & 1) == 0)
  {
    v15 = [NSLocale canonicalLocaleIdentifierFromComponents:v11];

    [(ISInternationalViewController *)self setLocaleOnly:v15];
    localeIdentifier = v15;
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
  sharedCloudSettingsManager = [v16 sharedCloudSettingsManager];
  [sharedCloudSettingsManager writeToCloudSettings:&off_36E68 forStore:@"com.apple.cloudsettings.international"];
}

- (id)numberingSystemsTitles
{
  v3 = +[NSMutableArray array];
  currentLocale = [objc_opt_class() currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  numberingSystemsValues = [(ISInternationalViewController *)self numberingSystemsValues];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [numberingSystemsValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(numberingSystemsValues);
        }

        v11 = [IntlUtility displayNameForNumberingSystemWithIdentifier:*(*(&v13 + 1) + 8 * i) localeIdentifier:localeIdentifier];
        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [numberingSystemsValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (id)numberingSystemsShortTitles
{
  v2 = +[NSMutableArray array];
  currentLocale = [objc_opt_class() currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  v5 = [IntlUtility numberingSystemsForLocaleID:localeIdentifier];
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

        v10 = [IntlUtility shortDisplayNameForNumberingSystemWithIdentifier:*(*(&v12 + 1) + 8 * i) localeIdentifier:localeIdentifier];
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
  currentLocale = [objc_opt_class() currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [IntlUtility numberingSystemsForLocaleID:localeIdentifier];

  return v4;
}

@end