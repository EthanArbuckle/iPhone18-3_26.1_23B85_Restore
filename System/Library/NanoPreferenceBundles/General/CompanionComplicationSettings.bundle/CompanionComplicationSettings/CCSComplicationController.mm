@interface CCSComplicationController
- (CCSComplicationController)init;
- (id)_iconForSpecifier:(id)specifier;
- (id)_specifiersFromSettingsManager;
- (id)activeStateForSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)findIndexOfComplicationWithIdentifier:(id)identifier;
- (int64_t)findIndexOfNthComplication:(int64_t)complication withActiveState:(BOOL)state;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)setActiveState:(id)state forSpecifier:(id)specifier;
- (void)setActiveState:(id)state forSpecifier:(id)specifier save:(BOOL)save;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CCSComplicationController

- (CCSComplicationController)init
{
  v8.receiver = self;
  v8.super_class = CCSComplicationController;
  v2 = [(CCSComplicationController *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    appIcons = v2->_appIcons;
    v2->_appIcons = v3;

    v5 = +[NCSSettingsManager sharedSettingsManager];
    settingsManager = v2->_settingsManager;
    v2->_settingsManager = v5;

    [(NCSSettingsManager *)v2->_settingsManager setDelegate:v2];
  }

  return v2;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSEditableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _specifiersFromSettingsManager = [(CCSComplicationController *)self _specifiersFromSettingsManager];
    v6 = *&self->PSEditableListController_opaque[v3];
    *&self->PSEditableListController_opaque[v3] = _specifiersFromSettingsManager;

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NANO_COMPLICATION_GROUP_NAME" value:&stru_42F8 table:@"CompanionComplicationSettings"];
    [(CCSComplicationController *)self setTitle:v8];

    v4 = *&self->PSEditableListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CCSComplicationController;
  [(CCSComplicationController *)&v2 viewDidLoad];
}

- (id)_iconForSpecifier:(id)specifier
{
  complication = [specifier complication];
  appIcons = self->_appIcons;
  complicationIdentifier = [complication complicationIdentifier];
  v7 = [(NSMutableDictionary *)appIcons objectForKeyedSubscript:complicationIdentifier];

  return v7;
}

- (void)setActiveState:(id)state forSpecifier:(id)specifier save:(BOOL)save
{
  saveCopy = save;
  specifierCopy = specifier;
  stateCopy = state;
  complication = [specifierCopy complication];
  bOOLValue = [stateCopy BOOLValue];

  [complication setActive:bOOLValue];
  if (saveCopy)
  {
    [(CCSComplicationController *)self removeSpecifier:specifierCopy animated:1];
    if ([complication isActive])
    {
      [(CCSComplicationController *)self insertSpecifier:specifierCopy atEndOfGroup:0 animated:1];
    }

    else
    {
      v11 = [(NSMutableArray *)self->_groupSpecifiers objectAtIndexedSubscript:1];
      [(CCSComplicationController *)self insertSpecifier:specifierCopy afterSpecifier:v11 animated:1];
    }

    identifier = [specifierCopy identifier];
    v13 = [(CCSComplicationController *)self findIndexOfComplicationWithIdentifier:identifier];

    if ([complication isActive])
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 0;
    }

    -[NCSSettingsManager moveComplicationDefinitionFromIndex:toIndex:](self->_settingsManager, "moveComplicationDefinitionFromIndex:toIndex:", v13, -[CCSComplicationController findIndexOfNthComplication:withActiveState:](self, "findIndexOfNthComplication:withActiveState:", v14, [complication isActive]));
  }
}

- (void)setActiveState:(id)state forSpecifier:(id)specifier
{
  [(CCSComplicationController *)self setActiveState:state forSpecifier:specifier save:1];

  [(CCSComplicationController *)self reloadSpecifiers];
}

- (id)activeStateForSpecifier:(id)specifier
{
  complication = [specifier complication];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [complication isActive]);

  return v4;
}

- (id)_specifiersFromSettingsManager
{
  v3 = +[NSMutableArray array];
  v4 = objc_opt_new();
  groupSpecifiers = self->_groupSpecifiers;
  self->_groupSpecifiers = v4;

  v6 = &__objc_personality_v0_ptr;
  v7 = [PSSpecifier groupSpecifierWithID:@"ActiveGroup"];
  [v3 addObject:v7];
  [(NSMutableArray *)self->_groupSpecifiers addObject:v7];
  if ([(NCSSettingsManager *)self->_settingsManager hasSettings])
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    settingsManager = self->_settingsManager;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1518;
    v26[3] = &unk_4190;
    v11 = v8;
    v27 = v11;
    v12 = v9;
    v28 = v12;
    [(NCSSettingsManager *)settingsManager enumerateComplicationDefinitionsUsingBlock:v26];
    if (v11)
    {
      [v11 sortUsingComparator:&stru_41D0];
    }

    if (v12)
    {
      [v12 sortUsingComparator:&stru_41D0];
    }

    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_16CC;
    v23 = &unk_4248;
    selfCopy = self;
    v13 = v3;
    v25 = v13;
    v14 = objc_retainBlock(&v20);
    [v11 enumerateObjectsUsingBlock:{v14, v20, v21, v22, v23, selfCopy}];
    if ([v11 count] || objc_msgSend(v12, "count"))
    {
      if ([v12 count])
      {
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        v16 = [v15 localizedStringForKey:@"NANO_COMPLICATION_DO_NOT_INCLUDE_HEADER" value:&stru_42F8 table:@"CompanionComplicationSettings"];

        v6 = &__objc_personality_v0_ptr;
      }

      else
      {
        v16 = &stru_42F8;
      }

      v17 = [v6[39] groupSpecifierWithID:@"InactiveGroup" name:v16];
      [v13 addObject:v17];
      [(NSMutableArray *)self->_groupSpecifiers addObject:v17];

      [v12 enumerateObjectsUsingBlock:v14];
      v18 = 0;
      goto LABEL_14;
    }

    [v12 enumerateObjectsUsingBlock:v14];
  }

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"NANO_COMPLICATION_NO_COMPLICATIONS" value:&stru_42F8 table:@"CompanionComplicationSettings"];
  [v7 setProperty:v12 forKey:PSFooterTextGroupKey];
  v18 = 1;
LABEL_14:

  [(CCSComplicationController *)self setEditingButtonHidden:v18 animated:0];

  return v3;
}

- (int64_t)findIndexOfComplicationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  settingsManager = self->_settingsManager;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1B9C;
  v9[3] = &unk_4270;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [(NCSSettingsManager *)settingsManager enumerateComplicationDefinitionsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int64_t)findIndexOfNthComplication:(int64_t)complication withActiveState:(BOOL)state
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  settingsManager = self->_settingsManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1D40;
  v7[3] = &unk_4298;
  stateCopy = state;
  v7[4] = v13;
  v7[5] = &v9;
  v7[6] = &v14;
  v7[7] = complication;
  [(NCSSettingsManager *)settingsManager enumerateComplicationDefinitionsUsingBlock:v7];
  v5 = v15[3];
  if ((v10[3] & 1) == 0)
  {
    v15[3] = --v5;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v14, 8);
  return v5;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(CCSComplicationController *)self specifierAtIndexPath:path];
  complication = [v4 complication];
  v6 = complication;
  if (complication)
  {
    if ([complication isActive])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NANO_COMPLICATION_REMOVE" value:&stru_42F8 table:@"CompanionComplicationSettings"];

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v10 = [(CCSComplicationController *)self specifierAtIndexPath:pathCopy];
  v13.receiver = self;
  v13.super_class = CCSComplicationController;
  [(CCSComplicationController *)&v13 tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:pathCopy];

  complication = [v10 complication];
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [complication isActive] ^ 1);
  [(CCSComplicationController *)self setActiveState:v12 forSpecifier:v10 save:1];

  [(CCSComplicationController *)self reloadSpecifiers];
}

@end