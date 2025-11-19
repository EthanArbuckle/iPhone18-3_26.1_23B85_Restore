@interface TIAddMultilingualLanguageListController
- (NSArray)multilingualSet;
- (id)newSpecifiers;
- (id)specifiers;
- (void)addLanguage:(id)a3;
- (void)reloadKeyboardSpecifiers;
- (void)viewDidLoad;
@end

@implementation TIAddMultilingualLanguageListController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIAddMultilingualLanguageListController;
  [(TIAddMultilingualLanguageListController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(TIAddMultilingualLanguageListController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v17 = [v4 enabledInputModeIdentifiers];

  v5 = [(TIAddMultilingualLanguageListController *)self multilingualSet];
  v6 = TIUIGetAddableInputModesForMultilingualSet(v5);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = PSIDKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = TIInputModeGetLanguageWithRegion();
        v14 = [TIKeyboardListController keyboardDisplayNameForIdentifier:v13];

        v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v15 setProperty:v12 forKey:v10];
        [v15 setButtonAction:"addLanguage:"];
        [v3 addObject:v15];

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  [v3 sortUsingComparator:&stru_49250];
  return v3;
}

- (NSArray)multilingualSet
{
  multilingualSet = self->_multilingualSet;
  if (!multilingualSet)
  {
    v4 = [(TIAddMultilingualLanguageListController *)self parentController];
    v5 = [v4 multilingualSet];
    v6 = self->_multilingualSet;
    self->_multilingualSet = v5;

    multilingualSet = self->_multilingualSet;
  }

  return multilingualSet;
}

- (void)addLanguage:(id)a3
{
  v4 = [a3 propertyForKey:PSIDKey];
  v5 = [(TIAddMultilingualLanguageListController *)self multilingualSet];
  v6 = TIUICanAddInputModeToMultilingualSet(v4, v5);

  if (v6)
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 enabledInputModeIdentifiers];

    TIUIGetProposedMultilingualSetsForAddingInputMode(v4, v8);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v27 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v25;
      v23 = v8;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = TIUIProposedInputModeGetCurrent(v15, v11);
          v17 = [(TIAddMultilingualLanguageListController *)self multilingualSet];
          v18 = [v16 isEqualToArray:v17];

          if (v18)
          {
            v8 = v23;
            v19 = TIUIGetInputModesByAddingProposedInputMode(v15, v23);
            [TIKeyboardListController setInputModes:v19];
            v20 = TIUIProposedInputModeGetMultilingualSet(v15);
            [(TIAddMultilingualLanguageListController *)self setMultilingualSet:v20];

            goto LABEL_12;
          }
        }

        v12 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v8 = v23;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  [(TIAddMultilingualLanguageListController *)self reloadKeyboardSpecifiers];
  v21 = [(TIAddMultilingualLanguageListController *)self navigationController];
  v22 = [v21 popViewControllerAnimated:1];
}

- (void)reloadKeyboardSpecifiers
{
  v4 = [(TIAddMultilingualLanguageListController *)self parentController];
  v3 = [(TIAddMultilingualLanguageListController *)self multilingualSet];
  [v4 reloadSoftwareLayoutSpecifiersWithMultilingualSet:v3];
}

@end